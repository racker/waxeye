#
# Regular cron jobs for the waxeye package
#
0 4	* * *	root	[ -x /usr/bin/waxeye_maintenance ] && /usr/bin/waxeye_maintenance
