@echo off
REM Controlla se è stato passato un argomento
if "%~1"=="" (
    echo Errore: Devi specificare il nome di un file .cpp!
    exit /b 1
)

REM Ottieni il nome del file senza estensione
set "filename=%~n1"

REM Compila il file .cpp con g++
g++ "%~1" -o "%filename%.exe"

REM Controlla se la compilazione ha avuto successo
if %errorlevel% neq 0 (
    echo Errore durante la compilazione!
    exit /b %errorlevel%
)

REM Esegue il programma compilato
echo Eseguendo %filename%.exe...
"%filename%.exe"

rm "%filename%.exe"