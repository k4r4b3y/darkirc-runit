#!/data/data/com.termux/files/usr/bin/bash
runit_dir="${HOME}/.config/sv"
pkg upgrade -y
pkg install termux-services -y

# if ${runit_dir} does NOT exist
# then create ${runit_dir}
# else do nothing

# mv bin/darkirc -t ${runit_dir}
