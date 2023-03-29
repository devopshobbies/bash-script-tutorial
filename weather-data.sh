#!/bin/bash

current_weather=$(curl -s \
"https://api.open-meteo.com/v1/forecast?latitude=35.69&longitude=51.42&hourly=temperature_2m&current_weather=true"\
| jq -r '.current_weather')

city="Tehran"
time=$(awk '/time/ {print $2}' <<< "$current_weather")
temperature=$(awk '/temperature/,/weathercode/ {print $0}' <<< "$current_weather")

echo -e "the current weather in $city $time : \n$temperature" >> current_weather.txt