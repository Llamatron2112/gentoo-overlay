# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7,8,9} )
inherit xdg

DESCRIPTION="Wallpaper downloader and manager for Linux systems"
HOMEPAGE="http://peterlevi.com/variety"
SRC_URI="https://github.com/varietywalls/${PN}/archive/refs/tags/${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="x11-libs/gtk+
	media-libs/gexiv2
	x11-libs/libnotify
	dev-python/beautifulsoup
	dev-python/dbus-python
	dev-python/lxml
	dev-python/pycairo
	dev-python/pygobject
	dev-python/configobj
	dev-python/pillow
	dev-python/setuptools
	dev-python/requests
	media-gfx/imagemagick
	dev-python/httplib2"
RDEPEND="${DEPEND}"
BDEPEND="dev-python/python-distutils-extra"

src_install() {
	export XDG_RUNTIME_DIR="/tmp/${PN}"
	python setup.py install --root="${D}" --optimize=1
}
