alias raspberryExt='ssh -p 1236 pi@`wget http://ipinfo.io/ip -qO -`'
alias semester='/home/gabriel/Dropbox/Semester\ 5/';
alias scanLan='sudo arp-scan -l --interface=wlan0'
alias sublime='/opt/sublime_text/sublime_text '
alias chrome='/usr/bin/google-chrome-stable'
alias osa='ssh csollei13@osa.fiit.stuba.sk'
alias battery="sudo powertop --auto-tune"
alias db="mysql -u root -h localhost -p"
alias agr='sudo apt-get --purge remove'
alias raspberry='ssh pi@192.168.0.139'
alias listenLan='tcpdump -i wlan0'
alias agi='sudo apt-get install'
alias killjava="killall -9 java"
alias agu='sudo apt-get update'
alias pt='/opt/pt/packettracer'
alias acs='apt-cache search'
alias scanPort='nmap -v -sT'
alias pingg="ping 8.8.8.8"
alias sem="cd $semester"
alias extIp="wget http://ipinfo.io/ip -qO -"

## pass options to free ## 
alias meminfo='free -m -l -t'
 
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

## Get server cpu info ##
alias cpuinfo='lscpu'

## get GPU ram on desktop / laptop## 
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

alias h="history"
alias s="service --staus-all"
alias j="jobs -a"
alias onStart="nano ~/.myconf/onTerminalRun"
