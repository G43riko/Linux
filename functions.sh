
setVolume(){
   amixer -D pulse sset Master $1%
}
clean_all(){
    sudo apt-get autoremove
    sudo apt-get autoclean
    #sudo apt-get clean
    sudo find ~ -type f \( -name '*.swp' -o -name '*~' -o -name '*.bak' -o $
}

#vyhladá rekurzívne v príečinku $1 súbory s výskytom reťazca $2
search(){
    grep -rlnw "$1" -e "$2"
}

update_all(){
    sudo apt-get update
    sudo apt-get upgrade
}

extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1    ;;
            *.tar.gz)    tar xvzf $1    ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar x $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xvf $1     ;;
            *.tbz2)      tar xvjf $1    ;;
            *.tgz)       tar xvzf $1    ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)           echo "don't know how to extract '$1'..." ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

backup() {
    # Files to backup
    backup_files="/home/gabriel/.myconf"
    
    if [ -z $1 ]; then #TODO a zároven je to súbor
        backup_files="$1"
    fi
    
    # Backup destination
    destination="/tmp/backup/"
    
    if [ -z $2 ]; then
        if ![ -d $2 ]; then
            mkdir -p "$2"
        fi
        destination="$1"
    fi
    
    # Archive filename
    day=$(date +%d.%m.%Y)
    hostname=$(hostname -s)
    archive_file="$hostname-$day.tar.gz"
    
    # Print start message
    echo "Backing up $backup_files to $dest/$archive_file"
    date
    echo
    
    # Backup The Files using tar
    `tar -czf $destination/$archive_file $backup_files`

    # Print end status message.
    echo
    echo "Backup finished"
    date
    
    # Check all backups
    ls -lh $dest

}
