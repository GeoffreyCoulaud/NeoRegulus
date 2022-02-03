# NeoRegulus
A Conky theme based on Leonis/Regulus by [closebox73](https://github.com/closebox73/Leonis)

<img src="preview.png">

# Changes from Regulus 
* Made for Gnome
* Made for a 1920x1080 screen
* Date format changed to YYYY-MM-DD
* Support for UTF-8 music metadata
* Music status from Rhythmbox by default, but any `mpris` compliant player can work
* Bigger network graph
* French language by default

## Dependencies
* `feh`
* `jq`
* `conky` built with cairo support

```sh
$ yay -Syu feh jq conky-lua-nv
```