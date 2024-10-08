#!/usr/bin/env bash

echo install clangd

#apt -y install afl-clang

apt -y install wget gnupg

# debian
echo 'deb http://apt.llvm.org/bullseye/ llvm-toolchain-bullseye-16 main' >> /etc/apt/sources.list
echo 'deb-src http://apt.llvm.org/bullseye/ llvm-toolchain-bullseye-16 main' >> /etc/apt/sources.list

wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -

apt -y update

apt -y install clang-16

update-alternatives --install /usr/bin/clang clang /usr/bin/clang-16 1
update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-16 1
