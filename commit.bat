@echo off
REM Controlla se è stato passato almeno un argomento
if "%~1"=="" (
    echo Errore: Devi specificare un messaggio per il commit!
    exit /b 1
)

REM Aggiunge tutti i file nuovi e modificati
git add .

REM Esegui il commit con il messaggio completo
git commit -m "%*"

REM Controlla se il commit ha avuto successo
if %errorlevel% neq 0 (
    echo Errore durante il commit!
    exit /b %errorlevel%
)

REM Esegui il push
git push
