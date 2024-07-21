#!/data/data/com.termux/files/usr/bin/bash
pkg upgrade -y
pkg install termux-services -y
homelocalbin="${HOME}/.local/bin"
runit_dir="${HOME}/.config/sv"

# if ${homelocaldir} does NOT exist
# then create ${homelocaldir}
# else do nothing

# if ${runit_dir} does NOT exist
# then create ${runit_dir}
# else do nothing

# cp bin/darkirc -t ${runit_dir}
# you need to make the runit scripts executable as well

# cp bin/darkirc.aarch64-android -t ${homelocalbin}
# chmod u+x ${homelocalbin}/darkirc.aarch64-android
