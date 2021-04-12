# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit git-r3 desktop xdg

DESCRIPTION="an ugly hack to be able to select default applications in linux in a better way"
HOMEPAGE="https://github.com/sandsmark/selectdefaultapplication"
EGIT_REPO_URI="https://github.com/sandsmark/selectdefaultapplication.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
	qmake
}

src_compile() {
	emake
}

src_install() {
	dobin selectdefaultapplication
	domenu selectdefaultapplication.desktop
	doicon -s 48 selectdefaultapplication.png
}
