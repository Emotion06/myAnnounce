# 📣 Announce
Documentation relating to the [myAnnounce](https://github.com/Emotion06/myAnnounce).

## 1. Installation
myAnnounce works only with VORP. 

To install myAnnounce:
- Drag and drop the resource into your resources folder
  - `myAnnounce`
- Add this ensure in your server.cfg
  ```
    ensure myAnnounce
  ```
- Now you can configure and translate the script as you like
  - `config.lua`
  - `translation.lua`
- At the end
  - Restart the server

## 2. Usage
...

## 3. For developers
```lua
Config = {}

Config.DevMode = true -- only for testing, not for the live server
Config.Locale = 'en' -- select your language (en, de)

Config.AnnouncetDuration = 10000 -- in ms}
```