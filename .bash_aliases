# command shortcuts
alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias l='ls'
alias s='ls'
alias la='ls -la'

# software shortcuts
alias g='git'

# backup
alias mybackup='tar cfJ - ${mybackup_files[*]} | gpg2 --symmetric --s2k-cipher-algo AES256 --s2k-digest-algo SHA512 --s2k-count 65011712 -o $(date +"%Y-%m-%d").tar.xz.gpg'
alias mybackuprestore='gpg2 --decrypt $mybackup_restore | tar xfJ - -C $mybackup_restore_destination'

# misc
alias newpost='cp /srv/http/html/src/blog/year/month/day/post.php .'
