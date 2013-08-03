# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="A simple and easy-to-use C language RPC framework"
HOMEPAGE="http://seafile.com"
SRC_URI="https://seafile.googlecode.com/files/seafile-${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="=net-misc/libsearpc-${PV}"
RDEPEND="${DEPEND}"

S="${WORKDIR}/seafile-${PV}/${PN}"
