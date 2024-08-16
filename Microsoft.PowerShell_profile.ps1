# USER INTERFACE -------------------------------------------------------------#

# Oh My Posh
oh-my-posh --init --shell pwsh --config "${HOME}\.config\oh-my-posh\theme.json" | Invoke-Expression


# LAZYVIM --------------------------------------------------------------------#

# Update XDG config and data base directories to point to ~/.config
$XDG_CONFIG_HOME = "${HOME}/.config"
$XDG_DATA_HOME = "${HOME}/.config"


# AUTOCOMPLETE & SUGGESTIONS -------------------------------------------------#

# thefuck
$env:PYTHONIOENCODING="utf-8"
Invoke-Expression "$(thefuck --alias heck)"

# PSReadLine
Set-PSReadLineOption -Colors @{ "InlinePrediction"="#007e3f" }
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -PredictionSource HistoryAndPlugin


# HISTORY & SEARCH -----------------------------------------------------------#

# PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }

# Zoxide
Invoke-Expression (& { (zoxide init powershell --cmd cd | Out-String) })


# FUNCTIONS & ALIASES --------------------------------------------------------#

# Zsh Git Aliases
Import-Module git-aliases -DisableNameChecking

# Functions
function batcat {
  bat --style=plain --pager=never @args
}

function ezals {
  eza --color=always --git --group --group-directories-first --icons=always @args
}

function ezall {
  eza --color=always --git --group --group-directories-first --icons=always --long @args
}

function source {
  . @args
}

# Aliases
Set-Alias -Name cat -Value batcat
Set-Alias -Name g -Value git
Set-Alias -Name k -Value kubectl
Set-Alias -Name ls -Value ezals
Set-Alias -Name ll -Value ezall
Set-Alias -Name lzg -Value lazygit
Set-Alias -Name vim -Value nvim
