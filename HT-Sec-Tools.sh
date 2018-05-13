#!/bin/bash
resize -s 15 95
#stty rows 33
#stty cols 100
declare -r BOLD='\e[1m'
declare -r NC='\e[0m'
clear
echo -e "\n$BOLD"
echo -e "\t#-------------------------------------------------------------------------------#"
echo -e "\t#		$(tput bold )$(tput setaf 1 )Club $NC: Securinets                                    \t\t#"
echo -e "\t#		$(tput bold )$(tput setaf 1 )Nom $NC: HT-Sec-Tools.sh                                \t\t#"
echo -e "\t#		$(tput bold )$(tput setaf 1 )Role$NC: fixer kali et installer les outils du workshop \t\t#"
echo -e "\t#		$(tput bold )$(tput setaf 1 )Auteur:$NC Hatem ben tayeb                              \t\t#"
echo -e "\t#		$(tput bold )$(tput setaf 1 )E-mail$NC: hatemtayeb2@gmail.com                        \t\t#"
echo -e "\t#		$(tput bold )$(tput setaf 1 )Poste$NC: Responsable technique                         \t\t#"
echo -e "\t#		$(tput bold )$(tput setaf 1 )Tel $NC: 21685034                                       \t\t#"
echo -e "\t#-------------------------------------------------------------------------------#"
echo -e "$NC"
sleep 7

if  ping -q -c 1 -W 1 8.8.8.8  >/dev/null  ; then

  echo -e $(tput bold )"$(tput setaf 3)========> $NC $(tput bold )\tYou Are connected  :D \n ""$NC"

sleep 2

clear
echo -e $(tput bold )"\n:: Choose what you want to install  ::\n""$NC"

sleep 1
while

echo -e "\n\n1) Phantom-Evasion    2) Shelter    3) Hercules    4) Winpayload    5) Fix Kali    6) QUIT\n" 
#|boxes -d stone  -p h8 -i box -s $(tput cols) 
#echo -e $(tput setaf 3) "\n\n1) phantom evasion "
#echo -e "2) shelter "
#echo -e "3) quit \n"

choix=(1,2,3,4,5,6)

echo -e $(tput setaf 3) "(make a choise)> " $(tput setaf 2)"$NC"
tput cup 9 19
do
read choix
case $choix in

	1)          echo -e "\n"


		if [ -d /opt/Phantom-Evasion ]; then
			echo -e " dir is already exists .. we will delete it 3:)\n\n"
            rm -r /opt/Phantom-Evasion
        fi
         

          cd /opt
          git clone https://github.com/oddcod3/Phantom-Evasion.git
          cd Phantom-Evasion 
          python phantom-evasion.py
          clear


        ;;
        2) sudo apt-get install shellter 
           sudo dpkg --add-architecture i386 && sudo apt update && apt-get -y install wine32
            clear;;


       3)

         #echo -e "HERCULES is a customizable payload generator that can bypass antivirus software."| boxes -d stone  -p h8 -i box -s $(tput cols)
         echo -e "\n"
         
	    if [ -d /opt/HERCULES ]; then
			echo -e " dir is already exists .. we will delete it 3:)\n\n"
            rm -r /opt/HERCULES
        fi
        cp go1.9.3.linux-amd64.tar.gz /opt
		cd /opt
		git clone https://github.com/EgeBalci/HERCULES.git

		tar -C /usr/local -xzf go1.9.3.linux-amd64.tar.gz
		export PATH=$PATH:/usr/local/go/bin
		cd /opt/HERCULES
		go get github.com/fatih/color
		go run Setup.go
		clear
;;      
       4)          echo -e"\n"

        if [ -d /opt/Winpayloads ]; then
			echo -e " dir is already exists .. we will delete it 3:)\n\n"
            rm -r /opt/Winpayloads
        fi
		cd  /opt
		git clone https://github.com/nccgroup/Winpayloads.git
		cd Winpayloads
        ./setup.sh
        cd /root/ 
        Wget https://pypi.python.org/packages/5e/5d/4e4364bb8b2a3e8d6c41ec21095aae3ac3396a6fa6983ea7f5551e929661/pyasn1-0.4.2-py2.4.egg#md5=84cf09817d8eb3b8955c5c558abd7ba7
        easy_install pyasn1-0.4.2-py2.4.egg
        clear
;;
	5)
#----------------------------------------------------------------------------------------------------
clear
#ping -q -w 1 -c 1 `ip r | grep default | cut -d ' ' -f 3` > /dev/null && echo -e $(tput bold )"You Are connected\n " || (echo -e $(tput bold )$(tput setaf 1 )"Please provide an internet Connection\n\n""$NC" && exit)




i="0"
while [ $i -lt $(tput cols) ]
do
echo -en "="
echo -en "="
i=$[$i+1]
done
echo -e "\n\n"
sleep 2s


echo -e $(tput bold )"\n:: Securinets install tools ::\n""$NC"
sleep 1s
echo -e $(tput setaf 4 )"::> " $(tput setaf 7 )"$BOLD""We will fix your kali linux : \n" "$NC" && read -t 3 ENTER
sleep 1s



echo -e -n $(tput setaf 4 )"\t::> " $(tput setaf 5 )"Adding links to source.list ..."
sleep 1s
#------------------------------------------------------------------------------------------------------------------
  echo "" >/etc/apt/sources.list
  echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
  echo "deb http://old.kali.org/kali sana main non-free contrib" >> /etc/apt/sources.list
#------------------------------------------------------------------------------------------------------------------
echo -e "$NC""$BOLD""OK""$NC"
echo -e -n $(tput setaf 4 )"\t::> " $(tput setaf 5 )"Fix GPG keys ..."
sleep 1s
#------------------------------------------------------------------------------------------------------------------
 xterm -fg green -e  apt-key adv --keyserver hkp://keys.gnupg.net --recv-key 7D8D0BF6
#------------------------------------------------------------------------------------------------------------------

echo -e "$NC""$BOLD""OK""$NC"

echo -e -n $(tput setaf 4 )"\t::> " $(tput setaf 5 )"Updating kali repo ..."
#------------------------------------------------------------------------------------------------------------------
 xterm -fg green  -e  apt-get update
#------------------------------------------------------------------------------------------------------------------
echo -e "$NC""$BOLD""OK""$NC"
echo -e "\n"
sleep 2s

echo -e $(tput setaf 4 )"::> " $(tput setaf 7 )"$BOLD""ALL thing was Done :D \n" "$NC" && read -t 3 ENTER
sleep 2s


i="0"

while [ $i -lt $(tput cols) ]
do
echo -en "="
echo -en "="
i=$[$i+1]
done
echo -e "\n\n"
sleep 2s
clear
sudo apt-get clean
sudo apt-get install -y  boxes 
clear
;;
#----------------------------------------------------------------------------------------------------





	6) break  
clear;;
	*) echo -e $(tput setaf 3) $(tput bold )"    Bjeh rabbi mnin jebtha ???"$(tput setaf 2)"$NC"
           
esac
done

else
  echo -e $(tput bold )$(tput setaf 1 )"Please provide an internet Connection\n\n""$NC"
fi
