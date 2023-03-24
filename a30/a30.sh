#/bin/bash
echo "Before locking"
ls -alh $1
chmod -R 600 $1
echo "After locking"
ls -alh $1
