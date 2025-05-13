set -euxo pipefail
sed -i 's|@import "latte.css";|@import "mocha.css";|' ~/.config/wlogout/style.css
