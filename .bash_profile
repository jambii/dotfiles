# global shell options
shopt -s histappend
export PROMPT_COMMAND='history -a'
export HISTIGNORE='ls:ll:cd:history:key:clear:history'
export HISTTIMEFORMAT="[%F %T] "
# Do not use with bash versions prior to 4.3
# TODO add logic to dynamically adjust
export HISTSIZE=-1
export HISTFILESIZE=-1
export EDITOR=vim

# User specific aliases and functions
alias ll='ls -Glahrt'
alias key='eval $(ssh-agent) && ssh-add -t 12h'
alias edit='~/scripts/edit.sh'
alias gledit='~/scripts/edit.sh'
alias gitpulls='find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree={} pull origin master  \;'
alias grep='grep --color=auto'
alias fixpip='curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py'
alias ks='~/scripts/ks.sh'

# python
export VIRTUALENVWRAPPER_HOOK_DIR=$HOME/.virtualenvs/
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export PIP_REQUIRE_VIRTUALENV=true
source /Users/heimc007/Library/Python/2.7/bin/virtualenvwrapper.sh

# perl
export PATH="$PATH:$HOME/perl5/bin"
export PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"
export PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
export PERL_MB_OPT="--install_base \"$HOME/perl5\""
export PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"

# ruby
source "$HOME/.rvm/scripts/rvm"
export PATH="$PATH:$HOME/.chefdk/gem/ruby/2.4.0/bin:$HOME/.rvm/bin"

# git prompt
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_EDITOR=vim
source /usr/local/etc/bash_completion.d/git-prompt.sh

# prompt customization
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
