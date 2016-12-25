# Yay! High voltage and arrows!

prompt_setup_pygmalion(){
  ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}"
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
  ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}⚡%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_CLEAN=""
 
  base_prompt='' 
  if [ `hostname` = "FOXTROTT" ]; then
    base_prompt='%{$FG[129]%}%n%{$reset_color%}%{$fg[cyan]%}@%{$reset_color%}%{$FG[154]%}%m%{$reset_color%}%{$fg[red]%}:%{$reset_color%}%{$FG[226]%}%0~%{$reset_color%}%{$fg[red]%}|%{$reset_color%}'

  elif [ `hostname` = "juliett" ]; then
    base_prompt='%{$FG[129]%}%n%{$reset_color%}%{$fg[cyan]%}@%{$reset_color%}%{$FG[174]%}%m%{$reset_color%}%{$fg[red]%}:%{$reset_color%}%{$FG[226]%}%0~%{$reset_color%}%{$fg[red]%}|%{$reset_color%}'
  fi
  post_prompt='%{$fg[cyan]%}⇒%{$reset_color%}  '

  base_prompt_nocolor=$(echo "$base_prompt" | perl -pe "s/%\{[^}]+\}//g")
  post_prompt_nocolor=$(echo "$post_prompt" | perl -pe "s/%\{[^}]+\}//g")

  precmd_functions+=(prompt_pygmalion_precmd)
}

prompt_pygmalion_precmd(){
  local gitinfo=$(git_prompt_info)
  local gitinfo_nocolor=$(echo "$gitinfo" | perl -pe "s/%\{[^}]+\}//g")
  local exp_nocolor="$(print -P \"$base_prompt_nocolor$gitinfo_nocolor$post_prompt_nocolor\")"
  local prompt_length=${#exp_nocolor}

  local nl=""

  if [[ $prompt_length -gt 40 ]]; then
    nl=$'\n%{\r%}';
  fi
  PROMPT="$base_prompt$gitinfo$nl$post_prompt"
}

prompt_setup_pygmalion


