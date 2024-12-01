#!/system/bin/sh

firmware_path=/vendor/firmware
touch_class_path=/sys/class/touchscreen
touch_path=
firmware_file=

wait_for_poweron()
{
	local wait_nomore
	local readiness
	local count
	echo "wait until driver reports <ready to flash>..."
	wait_nomore=60
	count=0
	while true; do
		readiness=$(cat $touch_path/poweron)
		if [ "$readiness" == "1" ]; then
			echo "ready to flash!!!"
			break;
		fi
		count=$((count+1))
		[ $count -eq $wait_nomore ] && break
		sleep 1
		echo "not ready; keep waiting..."
	done
	if [ $count -eq $wait_nomore ]; then
		return 1
	fi
	return 0
}

load_touch()
{
	panel_supplier=""
	panel_supplier=$(cat /sys/class/touchscreen/*/panel_supplier)
	    echo "panel supplier vendor is: [$panel_supplier]"
	    cd $firmware_path
	    case $panel_supplier in
	        csot)
			    firmware_file="focaltech-csot-ft8756-05-0000-kiev.bin"
	            ;;
	        tm)
			    firmware_file="focaltech-tm-ft8756-07-0000-kiev.bin"
	            ;;
	    esac
	echo "Firmware file for upgrade $firmware_file"
	touch_path=/sys/class/touchscreen/$(ls /sys/class/touchscreen/)
	wait_for_poweron
	wait
	echo "forcing firmware upgrade"
	echo 1 > $touch_path/forcereflash
	wait
	echo "sending reflash command"
	echo $firmware_file > $touch_path/doreflash
	sleep 1.5
	echo "Resetting Touch"
	echo 1 > $touch_path/reset
}

load_touch

exit 0
