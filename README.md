This is my personal windows/linux setup scripts. There is nothing really useful here for anyone but me.

Windows setup
--------------------------------------------------
From CMD prompt:

winget install Cygwin.Cygwin  
winget install Git.Git  

From Cygwin:

git clone git@github.com:sbaker48/setup.git  
./setup/setup_cygwin  

cat "${HOME}/.ssh/id_rsa.pub"  
Copy to https://github.com/settings/keys
