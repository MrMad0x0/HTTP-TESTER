#!/bin/bash
#use apt-get install curl
#chmod +x script.sh
#.script.sh
#https://www.facebook.com/Mr.Mental30
red='\033[1;31m'
cyan='\033[1;36m'
green='\033[1;32m'
http='http://'
https='https://'
echo -e "${cyan}
  ____  __________________     _________________________________     '
   / / / /_  __/_  __/ __ \   /_  __/ ____/ ___/_  __/ ____/ __ \    '
  / /_/ / / /   / / / /_/ /    / / / __/  \__ \ / / / __/ / /_/ /    '
 / __  / / /   / / / ____/    / / / /___ ___/ // / / /___/ _, _/     '
__/ /_/ /_/   /_/ /_/        /_/ /_____//____//_/ /_____/_/ |_|      '
                      AUTO CHECK HTTP RESPONSE DOMAIN NAME LIST
    ${red}By Mr.Mad               ${cyan} CHANGE http:// or https:// IN CODE
                                              RESULT ${green}output.txt"
domain='ENTER DOMAIN LIST PATH::-'
read -e -p "${domain} " filename
curl='curl -s -o /dev/null -I -w "%{http_code}"'
while read line; do 
echo -e "${cyan}DOMAIN NAME:- ${green}$https$line"
$curl : https://$line
echo -e "${red} HTTP Response :)"
done < $filename | tee output.txt

