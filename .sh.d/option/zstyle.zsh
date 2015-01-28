# Separator
autoload -Uz select-word-style
select-word-style default
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

# 補完
# 補完の有効化
autoload -Uz compinit
compinit
# 補完で大文字小文字に関係なく
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# sudoで補完
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
# ../をから今いるディレクトリを補完させない
zstyle ':completion:*' ignore-parents parent pwd ..