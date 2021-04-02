# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8} pypy3  )
inherit distutils-r1

DESCRIPTION="CLI tool and Python library to configure SteelSeries gaming mice"
HOMEPAGE="https://flozz.github.io/rivalcfg/"
SRC_URI="https://github.com/flozz/rivalcfg/archive/refs/tags/v$PV.tar.gz"

LICENSE="WTFPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/cython-hidapi"
RDEPEND="${DEPEND}"
BDEPEND=""

pkg_postinst() {
	rivalcfg --update-udev
}
