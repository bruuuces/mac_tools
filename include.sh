export TOOLS_DIR="$HOME/.tools"
export TOOLS_ENV_DIR="$HOME/.toolsInfo"

source $TOOLS_ENV_DIR/env.sh
sh $TOOLS_DIR/script/gen_toolsrc.sh
source "$TOOLS_ENV_DIR/.toolsrc"
source $TOOLS_DIR/script/alias.sh