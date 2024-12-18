# USER INTERFACE ------------------------------------------------------------- #

# Oh My Posh
oh-my-posh --init --shell pwsh --config "${HOME}\.config\oh-my-posh\theme.json" | Invoke-Expression


# AUTOCOMPLETE & SUGGESTIONS ------------------------------------------------- #

# PSReadLine
Set-PSReadLineOption -Colors @{ "InlinePrediction"="#007e3f" }
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -PredictionSource HistoryAndPlugin

# CommandNotFound
Import-Module -Name Microsoft.WinGet.CommandNotFound


# HISTORY & SEARCH ----------------------------------------------------------- #

# PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }

# Zoxide
$global:__zoxide_hooked = 0
$env:_ZO_DATA_DIR = "${HOME}\.config\zoxide"
$env:_ZO_RESOLVE_SYMLINKS = 1
Invoke-Expression (& { (zoxide init powershell --cmd cd | Out-String) })


# FUNCTIONS & ALIASES -------------------------------------------------------- #

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

function lf {
  $tmp = [System.IO.Path]::GetTempFileName()
  yazi $args --cwd-file="$tmp"
  $cwd = Get-Content -Path $tmp
  if (-not [String]::IsNullOrEmpty($cwd) -and $cwd -ne $PWD.Path) {
    cd $cwd
  }
  Remove-Item -Path $tmp
}

function symlink {
  New-Item -ItemType SymbolicLink -Path $args[0] -Target $args[1]
}

function source {
  . @args
}

# Aliases
Set-Alias -Name cat -Value batcat
Set-Alias -Name e -Value explorer
Set-Alias -Name g -Value git
Set-Alias -Name htop -Value ntop
Set-Alias -Name k -Value kubectl
Set-Alias -Name ls -Value ezals
Set-Alias -Name ll -Value ezall
Set-Alias -Name lzg -Value lazygit
Set-Alias -Name mklink -Value symlink
Set-Alias -Name vim -Value nvim

