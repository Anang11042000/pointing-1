#!/bin/bash
#By SAMVPN
clear

echo ""
echo "-----------------------------------------"
echo "              VPS POINTING               "
echo "-----------------------------------------"
echo ""
echo " ðŸ”¥SCRIPT BY SAMVPNðŸ”¥"
echo ""
PS3="$(printf -- "------------------------------------------------------------------")""
PILIH FEATURE YANG INGIN ANDA GUNAKAN : "
printf -- "\n------------------------------------------------------------------\n"
select opt in "Create" "Cek" "Delete" "Exit" ; do

  case $opt in
      "Create")
read -p "PORT YANG HENDAK DI BUKA : " scr ;
read -p "MASUKKAN IP VPS ANDA : " desth ;
read -p "PORT EXTERNAL IP VPS : " destp ;
sudo iptables -t nat -A PREROUTING -p tcp --dport "$scr" -j DNAT --to-destination "$desth":"$destp"
sudo iptables -t nat -A POSTROUTING -j MASQUERADE
echo "Done!"
      ;;
      "Cek")
sudo iptables -t nat -v -L PREROUTING -n
      ;;
      "Exit")
exit
printf -- "Done!\n\n"
      ;;
      "Delete")
sudo iptables -t nat -v -L PREROUTING -n --line-number
read -p "Select Number : " num ;
sudo iptables -t nat -D PREROUTING "$num"
printf -- "Done\n\n"
      ;;
   "A")
      exit
      ;;
     *)
echo
      ;;
  esac
done
