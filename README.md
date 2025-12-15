## My XTerm Terminal Customization

#### Usage
- Clone it and copy the `.Xresources` file to the `/home/[username]`
- And go to the location of `.Xresources` file then enter this command:
```sh
xrdb -merge .Xresources
```
- Now, close the terminal and open it again, then you can see your changes.
##
#### Add shortcut to open the XTerm terminal
- Open your Linux settings
- Go to keyboard section
- Click On `View and Customize Shortcuts` **Or** `Keyboard Shortcuts -> View and Customize Shortcuts`
- Scroll and click on `Custom Shortcuts`
- Click On `+`
- Name: `XTerm` &emsp; command: `xterm` &emsp; Shortcut: `ctrl + alt + t` 

---

## My ZSH Theme Customization

### Usages
- Close the repository or just copy the `macos_terminal.zsh-theme` file to the `/home/[username]/.oh-my-zsh/themes/` path.

### Notes
I made this in my free time, based on the source code of other themes. I use it now, and I especially like it because *I made it*-it makes me feel cool.

---


## My Alacritty Terminal Emulator Customization

### Usuages
1. Clone the repository or just copy the `alacritty.toml` file to the `/home/[username]/.config/alacritty/` path. But consider that there's other paths you could work with, I'll mention the Alacritty suggestion then with its documentation.
#### Paths For `alacritty.toml`
- `$XDG_CONFIG_HOME/alacritty/alacritty.toml`
- `$XDG_CONFIG_HOME/alacritty.toml`
- `$HOME/.config/alacritty/alacritty.toml`
- `$HOME/.alacritty.toml`
- `/etc/alacritty/alacritty.toml`


### Notes
Again, I made this in my free time, according to what **Alacritty** website and repository suggested.
Nowadays I really work with this terminal emulator and I really like it, it made me read some Rust!

### Links
- [Alacritty GitHub Repository](https://github.com/alacritty/alacritty)
- [Alacritty Configuration Documents](https://alacritty.org/config-alacritty.html)
- [Alacritty Installation Giude](https://github.com/alacritty/alacritty/blob/master/INSTALL.md)
