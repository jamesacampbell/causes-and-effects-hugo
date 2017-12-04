#set -x

stdin=$(whois $1 | grep OrgName -a | awk '{print$2}')
echo "$stdin"
#whois $1 | grep OrgName -a

geoiplookup $1
