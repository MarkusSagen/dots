# Custom Aliases
alias -s txt=nvim
alias -s vim=nvim
alias -s zsh=nvim
alias -s zshrc=nvim
alias -s {c,h}=nvim
alias -s {js,json}=nvim
alias -s {md,MD}=nvim
alias -s {rs,toml}=nvim
alias -s {yml}=nvim
alias arec='asciinema rec'
alias c='cargo'
alias cfg='cd ~/.config'
alias cfg='cd ~/.config'
alias cnv='cd ~/.config/nvim'
alias cov='open coverage/index.html'
alias cpnotes='cp -R  ~/notes/ ~/Dropbox/notes'
alias cprs='rsync -a ~/rusty ~/Dropbox/tech --exclude rust-sources'
alias cpwd='pwd|pbcopy'
alias dots='zsh ~/dotfiles/index.txt'
alias dud='du -d 1 -h'
alias esl='node_modules/.bin/eslint .'
alias exaf='exa -allFI "node_modules|.git|coverage"'
alias eg='exa -a --long --git --group-directories-first --no-permissions --no-user --icons -FI "node_modules|.git|coverage|.DS_Store|.vscode"'
alias exg='exa -a --long --git --group-directories-first --no-permissions --no-user --icons -FI "node_modules|.git|coverage|.DS_Store|.vscode"'
alias exag='exa -a --long --git --group-directories-first --no-permissions --no-user --icons -FI "node_modules|.git|coverage|.DS_Store|.vscode"'
alias exal='exa -allI "node_modules|.git|coverage"'
alias exat='exa -aTI "node_modules|.git|coverage"'
alias gCal='cd ~/oss/gCal'
alias gdotc='git -C ~/dotfiles commit -a -m'
alias gdots='git -C ~/dotfiles status'
alias ghil='gh issue list'
alias gijs='git init && echo "node_modules" >> .gitignore'
alias glprs='git log -p --reverse --stat'
alias glps='git log -p --stat'
alias gt='git difftool --no-prompt' #delta
alias gwtl='git worktree list'
alias gyhc='git rev-parse HEAD | pbcopy'
alias h='cd $HOME'
alias hack='history -75 | rg'
alias jlc='jest --config=jest.local.js'
alias ldot='exa -ld .*'
alias lg='lazygit'
alias mp='multipass'
alias mpl='multipass list'
# not using multipass much, using `mps` in work-related alias
# alias mps='multipass shell'
alias ng='npm init -y && git init && echo "node_modules" >> .gitignore'
alias nij='node inspect node_modules/.bin/jest --runInBand'
# alias note='nvim -c "lcd ~/notes/" -c NvimTreeToggle'
alias note='nvim -c "lcd ~/notes/" -c "lua require\"joel.telescope\".browse_notes()"'
alias nvc='cd ~/.config/nvim && nvim ~/.config/nvim/init.lua'
alias ppwd='pbpaste'
alias rdb='rust-lldb'
alias rdc='rustup doc --core'
alias rds='rustup doc --std'
alias ru='rustup'
alias rud='rustup doc'
alias rus='rustup show'
alias ruu='rustup update'
alias ta='todoist add'
alias tl1='tree -L 1'
alias triage='nvim ~/notes/rust/triage-template'
alias v='nvim'
alias vac='nvim ~/.config/alacritty/alacritty.yml'
alias vc='nvim ~/.config/nvim/init.lua'
alias vd='nvim -d'
alias vdp='cd ~/vim-dev/plugins'
alias vdro='nvim -d -R'
alias vft='floaterm'
alias vp='pbpaste | nvim'
alias vsl='nvim -S ~/vim-sessions/latest.vim'
alias vt='nvim +terminal'
alias yp='pwd|pbcopy'
