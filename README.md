# Configs followed by ThePrimeagen on youtube.
git clone to $USER folder, and then change name to .config.

# To Update Your Neovim
1. Download app image,
2. Move to /opt folder (accessible anywhere)
3. Create a symbolic link with lh -s (filename) (destination)
4. Move it to /usr/bin/nvim (nvim being the symbolic link alias)
5. You are done!

# Installs --->
**More to be added when remembered**

sudo apt install zsh
install powerlevel10k alongside zsh

# Display problems?
try updating linux subsystem
wsl.exe --upgrade or something like that

sudo apt install git
sudo apt install xorg
sudo apt install xclip (copying and pasting to system clipboard)

# Misc --->
Font: Jetbrains Mono Regular
FontSize: 10 on terminal(s)
To remove the annoying "^M"s in certain files, you can do 
":%s/\r//g" This removes all the carriage returns :). Also the "^M"s 
are supposedly mismatched endings.

# PowerLevel10k Guide
1. Install with ohmyzsh clone
2. move to .zshrc
3. change theme to powerlevel10k/powerlevel10k before if loop
4. source .zshrc
5. exec zshrc
6. p10k configure
7. configure to your will.


