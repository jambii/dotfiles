# .bashrc
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true

export VIRTUALENVWRAPPER_HOOK_DIR='/home/jambii/.virtualenvs/'
export VIRTUALENVWRAPPER_PYTHON='/usr/bin/python2'
export PIP_REQUIRE_VIRTUALENV=true
source /usr/bin/virtualenvwrapper.sh
source /usr/share/git-core/git-prompt.sh
RESULT=\($?\)
exitstatus()
{
        if [ $? = 0 ]; then
                echo '🌈'
        else
                echo '🔥'
        fi
}
export PS1="\[\033[44m\]\[\033[0;37m\]\u\[\033[0;33m\]@\[\033[0;37m\]\h \[\033[0;96m\]\w\[\033[0m\]\$(__git_ps1) \n \$(exitstatus)\[\033[0;92m\]⤳ \[\033[0m\]\[$(tput sgr1)\]"
alias ll='ls -Glahrt'
alias key='eval $(ssh-agent) && ssh-add -t 12h'
alias gitpulls='~/scripts/gitpulls.sh'

export HISTTIMEFORMAT="[%F %T] "
export HISTFILESIZE=

# User specific aliases and functions
alias grep='grep --color=auto'
alias stracer='echo -n "User? " && read -e user; x=1;  while (( $x == 1 )); do pid=$(for p in $(pgrep -u ${user}); do echo -ne "-p ${p} "; done); [[ ${pid} ]] && x=0; done; echo strace -s1000 -o ${pid}-strace -ftv ${pid} | bash'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
