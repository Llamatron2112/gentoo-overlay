# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7,8} pypy3  )
inherit distutils-r1

DESCRIPTION="An extensible mail notification daemon"
HOMEPAGE="https://github.com/pulb/mailnag"
SRC_URI="https://github.com/pulb/${PN}/archive/refs/tags/v${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-lang/python-3.5
	dev-python/pygobject
	x11-libs/libnotify
	dev-python/dbus-python
	dev-python/pyxdg
	sys-devel/gettext
	app-crypt/libsecret"

