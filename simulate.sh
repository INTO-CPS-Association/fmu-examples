#!/bin/bash

function clean_up {
		if [ -f "COE.pid" ]; then
				echo Clean up
				kill -9 `cat coe.pid`
				rm coe.pid
		fi
}

trap clean_up EXIT


function launchCoe
{
		#		echo Listing existing COEs
		#		ps aux | grep COE.jar
		echo Checking of running COEs

		coePid=`ps aux | grep 'java -jar COE.jar' | grep -v grep| awk {'print$2'}`

		if [ -z "$coePid" ]; then


				# Launching the COE
				if [ ! -f "COE.jar" ]; then
						wget  http://overture.au.dk/into-cps/development/latest/coe-0.0.1-SNAPSHOT-jar-with-dependencies.jar -O COE.jar
				fi

echo Remove old log files
rm coe.log*
				java -jar COE.jar > coe.console 2>&1 &
				echo $! > coe.pid


				echo Started the COE as process `cat coe.pid` use 'trap -f coe.console' to follow

				
		else
				echo "COE already running with PID=${coePid} , please close it and retry."
				exit 1
		fi



}

if [ "$#" -ne 2 ]; then
		echo "Wrong number of arguments"
		echo
		echo "Usage: ./simulate.sh [config file path] [total simulation time]"
		echo
		echo "Example: ./simulate.sh config.json 10"
		echo "    this will simulate config.json for 10 seconds"
		exit 1
fi


launchCoe

sleep 1




#echo Downloading api protocol
#curl --silent --show-error -o api.pdf http://localhost:8082/api/pdf

# call initialize
echo initializing
initResult=$(curl -s -H "Content-Type: application/json" --data @$1 http://localhost:8082/initialize)

echo Got response $initResult

sessionId=`echo $initResult | cut -d ":" -f 3- | cut -d "," -f 1`


echo sessionid = $sessionId
# find the session id

# start simulation
echo simulating


simResult=$(curl -s -H "Content-Type: application/json" --data '{"startTime":0.0, "endTime":'$2'}' http://localhost:8082/simulate/$sessionId)

echo Got response $simResult


echo Fetching result

resResult=$(curl -s http://localhost:8082/result/$sessionId)

#echo Got result: $resResult


echo "$resResult" > "$sessionId.log"

#python plot-session.py "$sessionId.log" $2 &

#python plot-session-check.py "$sessionId.log" $2 &


curl -s http://localhost:8082/destroy/$sessionId
echo
