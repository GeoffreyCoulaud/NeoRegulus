#!/bin/bash

#Closebox73
# This script is to get weather data from openweathermap.com in the form of a json file
# so that conky will still display the weather when offline even though it doesn't up to date

# you can use this or replace with yours
api_key=de47903402eda1d940b807e9c8a9e913
# get your city id at https://openweathermap.org/find and replace
city_id=3032469

url="api.openweathermap.org/data/2.5/weather?id=${city_id}&appid=${api_key}&cnt=5&units=metric&lang=fr"
curl ${url} -s -o ~/.cache/weather.json
