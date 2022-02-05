# NeoRegulus
A Conky theme based on Leonis/Regulus by [closebox73](https://github.com/closebox73/Leonis)

<img src="preview.png">

## Changes from Regulus 
* Made for Gnome
* Made for a 1920x1080 screen
* Date format changed to YYYY-MM-DD
* Support for UTF-8 music metadata
* Music status from Rhythmbox by default, but any `mpris` compliant player can work
* Bigger network graph

## Supported languages
* `en_US` (default)
* `fr_FR`

## Weather
You'll have to get your own OpenWeatherMap API key [here](https://home.openweathermap.org/api_keys) and your city code [here](https://openweathermap.org/find) to get weather info. Paste these into `scripts/weather.sh`.

## Dependencies
* `feh`
* `jq`
* `conky` built with cairo support

```sh
$ yay -Syu feh jq conky-lua-nv
```