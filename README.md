This is my personal windows/linux setup scripts. There is nothing really useful here for anyone but me.

Windows setup
--------------------------------------------------
From CMD prompt:

    winget install Cygwin.Cygwin
    winget install Git.Git  

From Cygwin:

    git clone git@github.com:sbaker48/sbaker48_setup.git
    ./sbaker48_setup/setup_cygwin  

From CMD prompt:

    move C:\cygwin64\home\%USERNAME%\.ssh %USERPROFILE%\.ssh
    mklink /d C:\cygwin64\home\%USERNAME%\.ssh %USERPROFILE%\.ssh
