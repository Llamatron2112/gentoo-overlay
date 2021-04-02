# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8} )
inherit distutils-r1

DESCRIPTION="Python wrapper for the HIDAPI"
HOMEPAGE="https://github.com/trezor/cython-hidapi"
SRC_URI="https://github.com/trezor/cython-hidapi/archive/refs/tags/$PV.tar.gz"

LICENSE="GPL-3,BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="virtual/libudev
	dev-libs/hidapi"
RDEPEND="${DEPEND}"
BDEPEND=""

python_configure_all() {
        mydistutilsargs=(--without-libusb --with-system-hidapi)
}
