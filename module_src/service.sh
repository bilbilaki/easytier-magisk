#shellcheck disable=SC2148
MODDIR=${0%/*}

RAWCONTENT="A simple, decentralized mesh VPN with WireGuard support."
CONFIG=$MODDIR/misc/config.toml

sed -i "6cdescription=[worked]${RAWCONTENT}" "$MODDIR"/module.prop

nohup "$MODDIR"/bin/easytier-core -c "$CONFIG"
