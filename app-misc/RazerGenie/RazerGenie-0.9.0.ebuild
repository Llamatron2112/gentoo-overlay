# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="Qt application for configuring your Razer devices under GNU/Linux."
HOMEPAGE="https://github.com/z3ntu/RazerGenie"
SRC_URI="https://github.com/z3ntu/${PN}/releases/download/v${PV}/${P}.tar.xz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="sys-apps/openrazer"
RDEPEND="${DEPEND}"
BDEPEND=""
