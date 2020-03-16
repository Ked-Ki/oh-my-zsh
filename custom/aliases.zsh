alias rezsh='. ~/.zshrc'
alias cdgit='cd $(git rev-parse --show-toplevel)'

findjava_impl() {
  find "${1}" -name "*${2}*.java" -and -not -name "*.class" -and -not -name "*.orig"
}
alias findjava=findjava_impl
alias fj='findjava .'

jqless_impl() {
  if [ -z ${1+x} ]; 
  then jq . - ; 
  else jq . "${1}" ; 
  fi |
    less
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
alias dsnum='list_dsnet.sh -d'

alias git-remove-untracked='git fetch --prune && git branch -r | awk "{print \$1}" | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk "{print \$1}" | xargs git branch -d'

alias lab_notes='vim ~/lab_notes.md'
alias pom='noti pomodoro'
