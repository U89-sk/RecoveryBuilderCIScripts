echo "============================"
echo "Starting the Build..."
echo "============================"
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
export LC_ALL=C   
. build/envsetup.sh
export CONFIG_STATE_NOTIFIER=y
export SELINUX_IGNORE_NEVERALLOWS=true
export ALLOW_MISSING_DEPENDENCIES=true
lunch $LUNCH_COMBO
make -j31 bacon
