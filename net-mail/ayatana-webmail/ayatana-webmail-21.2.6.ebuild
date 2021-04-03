# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Webmail notifications and actions for any desktop"
HOMEPAGE="https://github.com/AyatanaIndicators/ayatana-webmail"
SRC_URI="https://github.com/AyatanaIndicators/ayatana-webmail/archive/refs/tags/${PV}.tar.gz"

PYTHON_COMPAT=( python3_{6,7,8} pypy3  )
inherit distutils-r1 xdg-utils

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/pygobject
	gnome-base/dconf
	x11-libs/libnotify
	media-libs/libcanberra
	dev-python/Babel
	dev-python/psutil
	dev-python/secretstorage
	dev-python/urllib3"
RDEPEND="${DEPEND}"
BDEPEND="dev-python/polib"

pkg_postinst() {
	xdg_icon_cache_update
	glib-compile-schemas /usr/share/glib-2.0/schemas/
}

pkg_postrm() {
	xdg_icon_cache_update
	glib-compile-schemas /usr/share/glib-2.0/schemas/
}
