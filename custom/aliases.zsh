alias rezsh='. ~/.zshrc'
alias cdgit='cd $(git rev-parse --show-toplevel)'

findjava_impl() {
  find "${1}" -name "*${2}*.java" -and -not -name "*.class" -and -not -name "*.orig"
}
alias findjava=findjava_impl
alias fj='findjava .'

jqless_impl() {
  jq . "${1}" | less
}
alias jqless=jqless_impl
alias jsonhead='sed '\''/^}$/q'\'

alias isodate='date -u +"%Y-%m-%dT%H:%M:%SZ"'
alias less='less -S'
alias zless='zless -S'
alias sl=ls

if [ "$(hostname)" = "raven.local" ]; then
  # raven only
  alias pip-anaconda2='/opt/anaconda2/anaconda2/bin/pip'
  alias pip-brew2='/usr/local/bin/pip2'
  alias pip-brew3='/usr/local/bin/pip3'
  alias python-anaconda2='/opt/anaconda2/anaconda2/bin/python'
  alias python-brew2='/usr/local/bin/python2'
  alias python-brew3='/usr/local/bin/python3'
  alias python-mac2='/usr/bin/python'

  alias tlch='todo.sh lsgc @work'
  alias tlph='todo.sh lsgp @work'
elif [ "$(hostname)" = "lenore" ]; then
  # lenore only
  alias tlch='todo.sh lsgc @home'
  alias tlph='todo.sh lsgp @home'
fi

# todo
alias t=todo.sh
alias ta='todo.sh add'
alias td='todo.sh do'
alias tl='todo.sh list'
alias tlc='todo.sh lsgc'
alias tlp='todo.sh lsgp'
alias ts='todo.sh pom start'
