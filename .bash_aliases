# command shortcuts
alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias l='ls'
alias s='ls'
alias la='ls -la'

# software shortcuts
alias g='git'

# backup
alias mybackup='XZ_OPT="-9 -T 0" tar cfJh - ${mybackup_files[*]} | gpg2 --symmetric --s2k-cipher-algo AES256 --s2k-digest-algo SHA512 --s2k-count 65011712 -o $(date +"%Y-%m-%d").tar.xz.gpg'
alias mybackuprestore='gpg2 --decrypt $mybackup_restore | tar xfJ - -C $mybackup_restore_destination'
alias projectsnap='XZ_OPT="-9 -T 0" tar cfJh projects-$(date +"%Y-%m-%d").tar.xz Projects/'

# rsync
alias rsc='rsync -avhu --protect-args --progress'

# ffmpeg
alias ripaudio='ffmpeg -i "$source_video" -ss "$start_time" -to "$end_time" -vn -sn -c:a libopus -b:a 128k -map_metadata -1 -map_chapters -1 -metadata title="$title" -metadata comment="$comment" -metadata artist="$artist" "$title.ogg"'
alias normalisemusic='ffmpeg -i "$source" -vn -sn -c:a libopus -b:a 128k -map_metadata -1 -map_chapters -1 -metadata title="$title" -metadata artist="$artist" -metadata album="$album" "$title.ogg"'

# misc
alias hoard='wget -e robots=off --recursive --level=inf --no-clobber --no-parent --random-wait 2'
alias mirror='wget -e robots=off --mirror --no-parent --adjust-extension --convert-links --random-wait 2 --page-requisites'
alias snapshottext='wget -e robots=off'
