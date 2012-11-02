# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'
alias up='cd ..'

# Super user
alias _='sudo'

alias gr='grep -in'

# Show history
alias history='fc -l 1'

# List direcory contents
alias l='ls -lh'
alias ll='ls -lFa'
alias lh='ls -lFah'

alias afind='ack-grep -il'

alias pselF='sudo ps -elF'
alias psgrep='sudo ps -elF | egrep -i'

alias disk-space='df -h | sort -k 4 -h'

alias Projects='cd ~/Projects'
alias cd-sj='cd /home/ryan/Projects/social-jobs/'
alias cd-tm='cd /home/ryan/Projects/Trustmaster/'
alias cd-lisa='cd /home/ryan/Projects/Dolan/lisa'

alias take-own='chown -Rc ryan:ryan '

alias make-executable='sudo chmod -Rc a+x'


