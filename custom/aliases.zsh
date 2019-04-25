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

alias acc='list_dsnet.sh -a'
alias ss='list_dsnet.sh -s'
alias init='list_dsnet.sh -i'

alias git-remove-untracked='git fetch --prune && git branch -r | awk "{print \$1}" | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk "{print \$1}" | xargs git branch -d'

if [ "$(hostname)" = "raven.local" ]; then
  # raven only
  alias tlch='todo.sh lsgc @work | less'
  alias tlph='todo.sh lsgp @work | less'
elif [ "$(hostname)" = "lenore" ]; then
  # lenore only
  alias tlch='todo.sh lsgc @home | less'
  alias tlph='todo.sh lsgp @home | less'
fi

# todo
alias t=todo.sh
alias ta='todo.sh add'
alias td='todo.sh do'
alias tl='todo.sh list'
alias tlc='todo.sh lsgc'
alias tlp='todo.sh lsgp'
alias ts='todo.sh pom start'
alias tpr='todo.sh pom_report'
alias tmtg='ts $(tl +ongoing meetings | head -1 | cut -d" " -f1)'
alias tslk='ts $(tl +ongoing slack | head -1 | cut -d" " -f1)'
alias tqst='ts $(tl +ongoing questions | head -1 | cut -d" " -f1)'
