@echo off
goto check_Permissions

:check_Permissions
    echo Administrative permissions required. Checking....

    net session >nul 2>&1
    if %errorLevel% == 0 (
       goto :runtheftype
    ) else (
        echo Please run as Admin to continue.
        pause
        exit
    )

    pause >nul
    :runtheftype
    FTYPE loscript="%cd%\reader.bat"
    ASSOC .lsf=loscript
    
