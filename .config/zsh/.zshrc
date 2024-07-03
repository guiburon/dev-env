# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
plugins=(git fast-syntax-highlighting zsh-autosuggestions)
# plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ======================================================
# ======================== user ========================
# ======================================================
# see .zshenv for PATH

# ---------------------------------
# ------------ aliases ------------
# ---------------------------------
# --- Misc ---
# alias brave="brave --password-store=basic"	# disable wallet popup
alias cat="batcat"
alias ls="exa -la --group-directories-first --color=always"
alias resource="source $ZDOTDIR/.zshrc"

# ---------------------------------
# ------------ startup ------------
# ---------------------------------
# --- keybindings ---
bindkey -v	# vi mode

