#!/bin/bash
docker rmi $(docker images -q)
sudo -E apt-get remove -y --purge azure-cli ghc zulu* hhvm llvm* firefox google* dotnet* powershell mysql* php* mssql-tools msodbcsql17 android*
sudo -E apt-get update -y
sudo -E apt-get full-upgrade -y
sudo -E apt-get install -y build-essential asciidoc binutils bzip2 coreutils gawk gettext git libncurses5-dev libz-dev patch unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-8 gcc++-8 gcc-8-multilib g++-8-multilib p7zip p7zip-full msmtp libssl-dev texinfo libreadline-dev libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint ccache curl wget vim nano python python3 python-pip python3-pip python3-setuptools python-ply python3-ply haveged lrzsz device-tree-compiler scons antlr3 gperf ecj fastjar re2c xz-utils tar zip
sudo -EH pip3 install -U pyrogram tgCrypto
for i in $(ls /usr/bin/*-8); do sudo -E ln -sf $i ${i%%-8*}; done
sudo -E ln -sf /usr/include/asm-generic /usr/include/asm
sudo -E apt-get autoremove -y --purge
sudo -E apt-get clean -y
sudo -E swapoff -a
sudo -E rm -rf /usr/share/dotnet /etc/mysql /etc/php /usr/local/lib/android /opt/ghc /swapfile
