# Path to your oh-my-zsh installation.
export ZSH="/home/giosef/.oh-my-zsh"

# Tema
#ZSH_THEME="agnoster"

autoload -U colors && colors	# Load colors
# Prompt is now defined at the bottom
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[cyan]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Plugin
plugins=(
	git
	vscode
	colored-man-pages
	gitignore
	archlinux
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Questo file si ricarica ad ogni istanza di terminale grafico, pertanto deve contenere configurazioni grafiche, plugin ed alias

# PLUGINS
# Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/gitstatus/gitstatus.prompt.zsh


# ALIAS
source .config/shell/aliasrc



# export ARCHFLAGS="-arch x86_64"

PROMPT="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[cyan]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
RPROMPT='$GITSTATUS_PROMPT'
