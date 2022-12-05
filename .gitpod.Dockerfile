FROM ubuntu:latest

# Install:
# - git (and git-lfs), for git operations (to e.g. push your work).
#   Also required for setting up your configured dotfiles in the workspace.
# - sudo, while not required, is recommended to be installed, since the
#   workspace user (`gitpod`) is non-root and won't be able to install
#   and use `sudo` to install any other tools in a live workspace.
RUN apt-get upgrade && apt-get install -yq \
	libncurses5 \
	libncurses5-dev \
	m4 \
	bison \
	gawk \
	flex \
	libstdc++6-4.4-dev \
	g++-4.4 \
	g++ \
	gengetopt \
	git \
	gitk \
	zlib1g-dev \
	autoconf \
	autopoint \
	libtool \
	shtool \
	autogen \
	mtd-utils \
	intltool \
	sharutils \
	docbook-xsl-* \
	libstdc++5 \
	texinfo \
	dos2unix\
	xsltproc \
	uboot-mkimage \
	device-tree-compiler \
	python \
	qemu \
	gperf \
	liblzo2-dev \
	uuid-dev \
	build-essential \
	lzma-dev \
	liblzma-dev \
	lzma \
	binutils-dev \
	patch \
	cmake \
	intltool \
	libglib2.0-dev \
	gtk-doc-tools \
    libc6-i386 \
	lib32stdc++6 \
	lib32z1 \
	libelf1:i386 \
	libncurses5:i386 \
	libstdc++6:i386 \
	ia32-libs \
	libc6-dev-i386 \
    sudo \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/*

# Create the gitpod user. UID must be 33333.
RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod

USER gitpod