<img src="https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white" align="left" /><img src="https://img.shields.io/github/stars/is0n/dotfiles.svg?style=for-the-badge&label=Star&maxAge=2592000" align="right"/>
<h1 align='center'>is0n/dotfiles</h1>

![Preview](https://user-images.githubusercontent.com/57725322/173096539-e4542b89-754d-4841-80e9-26f0761a2b71.png)

### Config Info

| Task              | Name                                                                          |
| ----------------- | ------------------------------------------------------------------------------|
| os                | [arch linux](https://archlinux.org/)                                          |
| wm                | [herbstluftwm](https://github.com/herbstluftwm/herbstluftwm)                  |
| shell             | [zsh](https://www.zsh.org/)                                                   |
| theme             | [mountain](https://github.com/mountain-theme/Mountain)                        |
| editor            | [neovim](https://github.com/neovim/neovim)                                    |
| terminal          | [alacritty](https://github.com/alacritty/alacritty)                           |
| compositor        | [picom](https://github.com/yshui/picom)                                       |
| web browser       | [firefox](https://www.mozilla.org/en-US/firefox/new/)                         |
| bar/widgets       | [eww](https://github.com/elkowar/eww)                                         |
| music player      | [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp)                                 |
| app launcher      | [rofi](https://github.com/davatorium/rofi/)                                   |
| file manager      | [lf](https://github.com/gokcehan/lf/)                                         |
| image viewer      | [sxiv](https://github.com/muennich/sxiv)                                      |
| hotel?            | trivago ;)                                                                    |

#### Features
- Dashboard
  - Fetch
  - System monitor
  - System control
  - Quote
- Bar
  - Workspaces
  - Window title
  - System monitor
  - Time
- Powermenu
- Music Player
  - Album Art
- App Launcher
- Window swallowing
- Too many TUI's

#### To Do
- [ ] Notification center
- [ ] Control center
- [ ] Lockscreen
- [ ] Switch wm? 🤔

### Setup

#### Install Dependencies (Arch only)

> Install w/ pacman
```shell
# Not ready ¯\_(ツ)_/¯
$ sudo pacman -Sy picom alacritty rofi ncmpcpp firefox sxiv herbstluftwm lf neovim zsh xdotool ueberzug highlight dunst sxhkd
```
> Install w/ AUR helper (paru)
```shell
# Not ready ¯\_(ツ)_/¯
$ paru -Sy eww-git pidswallow-git alttab-git mopidy mopidy-mpd mopidy-spotify
```

#### Install Dotfiles
```shell
# Not ready ¯\_(ツ)_/¯
$ git clone https://github.com/is0n/dotfiles
$ cd dotfiles
$ cp -r .config/* ~/.config/
```

### Gallery

<h4 align='center'>Floating Mode</h4>

![Floating Mode](https://user-images.githubusercontent.com/57725322/172767436-80df75ab-f1c4-42af-a4ed-cfacb3985220.png)

#### Programs
- [cava](https://github.com/karlstav/cava) - music visualizer
- [rxfetch](https://github.com/Mangeshrex/rxfetch) - fetch tool
- [lf](https://github.com/gokcehan/lf/) - file manager
- [neovim](https://github.com/neovim/neovim) - text editor
- [.local/bin/colorblocks](https://github.com/is0n/dotfiles/blob/master/.local/bin/colorblocks) - rice?

<h4 align='center'>Grid Mode</h4>

![Grid Mode](https://user-images.githubusercontent.com/57725322/172767993-00ad0502-cdef-4dcb-b208-400686a02b2e.png)

#### Programs
- [rxfetch](https://github.com/Mangeshrex/rxfetch) - fetch tool
- [lf](https://github.com/gokcehan/lf/) - file manager
- [neovim](https://github.com/neovim/neovim) - text editor
- [bottom](https://github.com/ClementTsang/bottom) - system monitor

<h4 align='center'>Dwindle Mode</h4>

![Dwindle Mode](https://user-images.githubusercontent.com/57725322/172932638-fbb7067d-7d5c-4ec2-9d2e-fa090d5fb318.png)

#### Programs
- [pfetch](https://github.com/dylanaraps/pfetch) - fetch tool
- [lf](https://github.com/gokcehan/lf/) - file manager
- [neovim](https://github.com/neovim/neovim) - text editor
- [sxiv](https://github.com/muennich/sxiv) - image viewer
- [firefox](https://www.mozilla.org/en-US/firefox/new/) - web browser

<h4 align='center'>Widgets & App Launcher</h4>

![Widgets & App Launcher](https://user-images.githubusercontent.com/57725322/172768666-197f502a-6351-49a4-b871-1cc0fff5dd31.png)

#### Programs
- [rofi](https://github.com/davatorium/rofi/) - app launcher
- [eww](https://github.com/elkowar/eww) - widgets

### Credits

* "resources" (stolen dotfiles)
    * every rice from [r/unixporn](https://www.reddit.com/r/unixporn/)
    * [BrodieRobertson/dotfiles](https://github.com/BrodieRobertson/dotfiles/)
    * [saimoon/eww-widgets](https://github.com/saimoomedits/eww-widgets)
    * [justleoo/dotfiles](https://github.com/justleoo/dotfiles)
    * [N3k0Ch4n/.files](https://github.com/N3k0Ch4n/.files)
