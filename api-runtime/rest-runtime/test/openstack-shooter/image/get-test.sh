source ../setup.env


num=0
for NAME in "${CONNECT_NAMES[@]}"
do
	#echo ConnectionNaem: ${NAME}
	#echo ImageID: ${IMG_IDS[num]}

        curl -sX GET http://$RESTSERVER:1024/vmimage/${IMG_IDS[num]}?connection_name=${NAME} |json_pp &
        num=`expr $num + 1`
done
