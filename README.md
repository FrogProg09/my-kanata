</div>
<div align="center">
    <h1> Frogprog Kanata Config</h1>
    <h4> A simple Kanata home row mods Configuration.</h4>
</div>
</div>

This is my simple configuration of [Kanata](https://github.com/jtroo/kanata) (awesome program btw).
Here are some things that I've changed:
| Key | Behavior|
|---|---|
| S and L | Left Control [tap-hold] |
| D and K | Left Super (winodws/cmd) [tap-hold] | 
| Capslock | Escape |

As you can see, there is not many changes.
In the future maybe I'll consider adding more.

I've decided to try Kanata out because recetly I've implemented home row mods on my [ergonaut one](https://ergonautkb.com/docs/keyboards/ergonaut-one/intro/). And it is too awesome to not use it on regular keyboard, it helps with ergonomics by reducing range of your pinkie's motion (it is actually a big problem with today's populars keyboards). 

**Let's see how I've changed key behaviors:**

- Now, to press control, you need to hold S or L keys (mirrored), and to press S or L just tap it. If you want to type ssssssss without killing your keyboard just tap the letter first and hold just after.
- Super (windows/cmd) key is located at D and K keys. I've decided to place it there because I use tiling window manager (Hyprland) so super is one of my most freqently used keys. Behavior is the same as with S and L keys. 
- Also, escape is now located at capslock key, it is actually way more convinient then doing acrabatics with your hand, trust me. Nobody uses capslock anyway (you can achieve more with shift) so I basically disabled it.

## Installation
To install it you could just copy keyboard.kdb file wherever you want and rewrite your kanata.service (linux) here is how to do it:
[ticket](https://github.com/jtroo/kanata/discussions/130#discussioncomment-10227272)  

Or you could install it with my install script and still rewrite kanata.service file by yourself. enjoy!:D

## License
This repo is under BSD-3 license, you can do whatever you want with at as long as it follows BSD-3's rules.
