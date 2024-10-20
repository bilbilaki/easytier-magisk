#shellcheck disable=SC2034
#shellcheck disable=SC2148
SKIPUNZIP=0
set_perm_recursive "$MODPATH"/bin 0 0 0755 0777 u:object_r:system_file:s0

if [ ! -e "/sdcard/Android/easytier-config.toml" ]; then
  ls -s "$MODPATH"/misc/config.toml /sdcard/Android/easytier-config.toml
  ui_print "Configuration file linked to storage"
  ui_print "/sdcard/Android/easytier-config.toml"
else
  ui_print "Already exists /sdcard/Android/easytier-config.toml"
  ui_print "Nothing to do."
fi
