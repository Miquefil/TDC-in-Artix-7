@echo off
REM Check if the relative path is passed
if "%1"=="" (
    echo Usage: run_matlab.bat relative_file_path
    exit /b 1
)

REM Get the absolute path of the file
for %%i in (%1) do set FILEPATH=%%~fi

REM Call MATLAB with the file path
matlab -r "process_data('%FILEPATH%'); exit;"
