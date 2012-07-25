# Rails 3 aliases, backwards-compatible with Rails 2.

function _rails_command () {
  bundle exec rails $@
}

alias r='_rails_command'
alias rc='_rails_command console'
alias rd='_rails_command destroy'
alias rdb='_rails_command dbconsole'
alias rdbm='rake db:migrate db:test:clone'
alias rg='_rails_command generate'
alias rgm='_rails_command generate migration'
alias rp='_rails_command plugin'
alias ru='_rails_command runner'
alias rs='_rails_command server'
alias rdm='rake db:migrate'
alias rdr='rake db:rollback'
