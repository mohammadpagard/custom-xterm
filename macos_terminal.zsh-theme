phrases=(
  "Wake up, Neo..."
  "Access Granted."
  "Hello, World."
  "System online."
  "Hack the planet!"
  "All your base are belong to us."
  ">> Boot sequence complete."
  "Ready."
)

msg=$phrases[2]
echo "$msg"
echo "\n"

export PS1="[$msg]"\n'\h:\W\$ '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

git_prompt() {
   echo "$(git_prompt_info)"
}

PROMPT='%n@%m %1~ %% '
# RPROMPT='%{$FG[012]%} ► %{$fg[cyan]%}$(git_prompt_info)%{$FG[012]%} ◄ %{$reset_color%}';

RPROMPT='$(git_prompt)'
