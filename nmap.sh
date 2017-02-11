cd ~/Desktop
arp-scan -l --retry=1 | grep -o '^\S*' | grep -v -e '^$' | awk '{if(NR>2)print}' | sed '$d' | sed '$d' > ips.txt
sudo nmap -iL ips.txt -v -A -F -T4 --max-scan-delay 10 -oN nmap.txt
rm ips.txt