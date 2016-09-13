##########################
########SPECIFIED#########
##########################

alias pgStart="sudo -u postgres /usr/lib/postgresql/9.4/bin/postgres -D /home/pi/DB/ > /tmp/pg_logfile 2>&1 &"
alias raspberryExt='ssh -p 1236 pi@`wget http://ipinfo.io/ip -qO -`'
alias semester='/home/gabriel/Dropbox/Semester\ 5/';
alias sublime='/opt/sublime_text/sublime_text '
alias chrome='/usr/bin/google-chrome-stable'
alias onStart="nano ~/.myconf/onTerminalRun"
alias osa='ssh csollei13@osa.fiit.stuba.sk'
alias db="mysql -u root -h localhost -p"
alias raspberry='ssh pi@192.168.0.139'
alias killjava="killall -9 java"
alias pt='/opt/pt/packettracer'
alias sem="cd $semester"

##########################
########UNIVERSAL#########
##########################

alias h="history"
alias s="service --status-all"
alias j="jobs -a"

alias agr='sudo apt-get --purge remove'
alias agi='sudo apt-get install'
alias agu='sudo apt-get update'
alias acs='apt-cache search'

#vypíše zariadenia v sieti
alias showLan='sudo arp -a'

#vypíše pripojené zariadenia v sieti
alias scanLan='sudo arp-scan -l --interface=wlan0'

#vypíše externú IP
alias extIp="wget http://ipinfo.io/ip -qO -"

#zapne šetrenie batérie
alias battery="sudo powertop --auto-tune"

#počúva dáta v sieti
alias listenLan='tcpdump -i wlan0'

#vypíše pripojené zariadenie
alias cmount="mount | column -t"

#preskenuje a vypíše otvorené porty na danom zariadení
alias scanPort='nmap -v -sT'

#ping google
alias pingg="ping 8.8.8.8"

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

#Displays the current sound volume
alias volume="amixer get Master | sed '1,4 d' | cut -d [ -f 2 | cut -d ] -f 1"

#Show which applications are connecting to the network
alias listen="lsof -P -i -n" 

#Show the active ports
alias port='netstat -tulanp'

#MySQL
alias stopMysql="sudo service mysql stop"
alias startMysql="sudo service mysql start"
#PostgreSQL
alias stopPostgresql="sudo service postgresql stop"
alias startPostgresql="sudo service postgresql start"
#transmission-daemon
alias stopTransmission="sudo service transmission-daemon stop"
alias startTransmission="sudo service transmission-daemon start"
#Apache2
alias stopApache="sudo service apache2 stop"
alias startApache="sudo service apache2 start"

