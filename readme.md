![CI](https://github.com/bucanero/ps3toolchain/workflows/CI/badge.svg) [![License](https://img.shields.io/github/license/bucanero/ps3toolchain.svg)](./LICENSE)

   O que isso faz?
  ======================

   Este programa criará e instalará automaticamente um compilador e outros
   ferramentas utilizadas na criação do software homebrew para o Sony Playstation 3.

   Como eu uso isso?
  ==================
 

1) Configure seu ambiente instalando o seguinte software:

   autoconf, automake, bison, flex, gcc, libelf, make, makeinfo,
   ncurses, patch, python, subversion, wget, zlib, libtool, python,
   bzip2, gmp, pkg-config, g++, libssl-dev, clang

## Linux

  Especificamente em sistemas baseados em Debian, a seguinte linha de comando deve
  ser suficiente para instalar tudo o que for necessário:

```bash
  apt-get install autoconf automake bison flex gcc libelf-dev make \
    texinfo libncurses5-dev patch python subversion wget zlib1g-dev \
    libtool libtool-bin python-dev bzip2 libgmp3-dev pkg-config g++ libssl-dev clang
```

## macOS

  Em sistemas macOS, se você tiver o gerenciador de pacotes [Homebrew](http://brew.sh), a seguinte linha de comando deve
  ser suficiente para instalar tudo o que for necessário:

```bash
brew install autoconf automake openssl libelf ncurses zlib gmp wget pkg-config
```

 2) Adicione o seguinte ao seu script de login:
    
```bash
  export PS3DEV=/usr/local/ps3dev
  export PSL1GHT=$PS3DEV

  export PATH=$PATH:$PS3DEV/bin
  export PATH=$PATH:$PS3DEV/ppu/bin
  export PATH=$PATH:$PS3DEV/spu/bin
```

 3) Execute o script toolchain:
```bash
  ./toolchain.sh
```
