CARGO_PATH="$HOME/.cargo"
PYTHON_PATH='/usr/local/opt/python'
RUBY_PATH='/usr/local/opt/ruby'

export JAVA_HOME='/usr/lib/jvm/java-11-amazon-corretto'
export GEM_HOME="$HOME/.gem"
export GOPATH="$HOME/.go"


export SBT_OPTS='-Xms512M -Xmx1024M -Xss2M -XX:MaxMetaspaceSize=512m -XX:ReservedCodeCacheSize=256M -Dfile.encoding=UTF8'
export SBT_CREDENTIALS="$HOME/.sbt/.credentials"

export FZF_DEFAULT_OPTS='
  --color=pointer:#ebdbb2,bg+:#3c3836,fg:#ebdbb2,fg+:#fbf1c7,hl:#8ec07c,info:#928374,header:#fb4934
  --reverse
'

export NAVI_PATH="$DOTFILES_PATH/doc/navi"

paths=(
  "$HOME/bin"
  "$DOTFILES_PATH/bin"
  "$CARGO_PATH/bin"
  "$PHP_PATH/sbin"
  "$RUBY_PATH/bin"
  "$JAVA_HOME/bin"
  "$GOPATH/bin"
  "$GEM_HOME/bin"
  "$PYTHON_PATH/libexec/bin"
  "/bin"
  "/usr/local/bin" # This contains Brew ZSH. If it's below `/bin` it won't be executed.
  "/usr/local/opt/make/libexec/gnubin"
  "/usr/bin"
  "/usr/local/sbin"
  "/usr/sbin"
  "/sbin"
)

PATH=$(
  IFS=":"
  echo "${paths[*]}"
)

export PATH
