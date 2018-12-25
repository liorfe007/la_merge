#!/usr/bin/env bash

echo "Enter script name:"
read script_name
if [ -e $script_name ]; then
   echo "File $script_name already exists!"
   exit 0
fi
echo "Enter your name:"
read dev_name
echo "Enter description:"
read script_desc

touch $script_name
chmod 755 $script_name
mydate=`date +'%d/%m/%Y'`

cat >$script_name  <<EOF
#!/usr/bin/env bash
#####################
#Author : $dev_name   #
#Date : $mydate       #
#Description: $script_desc   #
######################"
EOF

printf "%sScript $script_name created successfully\n"

exit 0
