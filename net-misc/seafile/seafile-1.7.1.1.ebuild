# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit flag-o-matic

DESCRIPTION="A file syncing and collaboration platform for teams"
HOMEPAGE="http://seafile.com"
SRC_URI="https://seafile.googlecode.com/files/seafile-${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="=net-misc/ccnet-${PV}"
RDEPEND="${DEPEND}"

src_configure() {
	append-cppflags "-I/usr/include/json-glib-1.0"
	default
}
