# base-files version 3.6-1

#echo ".bash_profile"

# To pick up the latest recommended .bash_profile content,
# look in /etc/defaults/etc/skel/.bash_profile

# Modifying /etc/skel/.bash_profile directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bash_profile) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# ~/.bash_profile: executed by bash for login shells.

# source the system wide bashrc if it exists
if [ -e /etc/bash.bashrc ] ; then
  source /etc/bash.bashrc
fi

# source the users bashrc if it exists
if [ -e "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

if [ -e "${HOME}/.bash_path" ] ; then
  source "${HOME}/.bash_path"
fi


# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH=${HOME}/man:${MANPATH}
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH=${HOME}/info:${INFOPATH}
# fi

if [ -e "${HOME}/.bash_aliases" ] ; then
  source "${HOME}/.bash_aliases"
fi

if [ -e "${HOME}/.color" ] ; then
  source "${HOME}/.color"
fi


#PKG_CONFIG_PATH=/cygdrive/c/GTK/lib/pkgconfig
#PKG_CONFIG_PATH=c:/GTK/lib/pkgconfig
#export PKG_CONFIG_PATH


#export SVN_EDITOR=c:\\windows\\system32\\notepad
export SVN_EDITOR=${HOME}/bin/notepad



# Set the prompt

#PS1='\! \[\e[32m\]\w\[\e[0m\] >\$ '
#PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ '
PS1='\[\e]0;\w\a\]\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\] >\$ '


export PS1

umask 022


#export set PRJ_TOOLROOT=c:/devapps/tools
#export set PRJ_UTILROOT=c:/devapps/util
#export set CYGWIN_PATH=/usr

