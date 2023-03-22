#! /usr/bin/bash

repmgr node check --role 2> /dev/null | grep primary


# MASTERSTATUS=$(repmgr node status 2> /dev/null | sed -n 's/  *Role: //p')
# MASTERSTATUS=$(repmgr node check --role 2> /dev/null | sed -n 's/  *Role: //p')

# if [ "X${MASTERSTATUS}" == "Xprimary" ]; then
#         exit 0
# else
#         exit 1
# fi
