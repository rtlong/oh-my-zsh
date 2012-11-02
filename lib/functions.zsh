function zsh_stats() {
  history | awk '{print $2}' | sort | uniq -c | sort -rn | head
}

function uninstall_oh_my_zsh() {
  /usr/bin/env ZSH=$ZSH /bin/sh $ZSH/tools/uninstall.sh
}

function upgrade_oh_my_zsh() {
  /usr/bin/env ZSH=$ZSH /bin/sh $ZSH/tools/upgrade.sh
}

function take() {
  mkdir -p $1
  cd $1
}

function watch-logs () {
  files=$( sudo find /var/log -type f \! \( -iregex '.*\.\(gz\|[0-9]+\)\|.*\(redis\|samba\|installer\|dist-upgrade\).*' -or -name 'messages' -or -name 'daemon.log' -or -name 'ufw.log' -or -name 'peerstats' \))
  sudo tail --follow=name --retry --bytes=0 ${=files}
}

function search-logs () {
  sudo zgrep $* /var/log/* /var/log/*/* /var/log/*/*/*
}

function reset-perms () {
  find $1 -type d -exec chmod -c ug+rwx,o+rx
  find $1 -type f -exec chmod -c ug+rw,o+r
}

function wait-for-dropbox() {
  dropbox_status=`dropbox status | grep -v Idle`
  while [[ -n $dropbox_status ]]; do
    dropbox_status=`dropbox status | grep -v Idle`
    echo $dropbox_status
    sleep 2
  done
  unset dropbox_status
}

function dropbox-size() {
  ruby -e "
    used = \`du -s -l --apparent-size -L --exclude='.dropbox*' /home/ryan/Dropbox\`.to_f
    total = \`cat /home/ryan/Dropbox/.config/DROPBOX_SIZE\`.to_f
    percent = (used / total * 10000).round / 100.0
    remaining = ((total - used) / 1024.0 * 100).round / 100.0
    puts \"Your Dropbox is #{percent}% full. #{remaining} MB remain.\"
  "
}

function cola(){
  git-cola . > /dev/null 2>&1 &
}
