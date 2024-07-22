#!/data/data/com.termux/files/usr/bin/bash
pkg upgrade -y
pkg install termux-services -y

homelocalbin_dir="${HOME}/.local/bin"
runit_dir="${HOME}/.config/sv"
darkirc_bin="darkirc.aarch64-android"
darkirc_conf="${HOME}/.config/darkfi/darkirc_config.toml"
svdir="${PREFIX}/var/service"

if [ ! -d "${homelocalbin_dir}" ]; then
  mkdir -p "${homelocalbin_dir}"
fi

if [ ! -d "${runit_dir}" ]; then
  mkdir "${runit_dir}"
fi

cp bin/darkirc -t ${runit_dir}
chmod u+x ${runit_dir}/darkirc/run ${runit_dir}/darkirc/log/run

cp bin/${darkirc_bin} -t ${homelocalbin_dir}
chmod u+x ${homelocalbin_dir}/${darkirc_bin}

if [ ! -f "${darkirc_conf}" ]; then
  ${homelocalbin_dir}/${darkirc_bin}
fi

ln -sf ${runit_dir} ${svdir}/
