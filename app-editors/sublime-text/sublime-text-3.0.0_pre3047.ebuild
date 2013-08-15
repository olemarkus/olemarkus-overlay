# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils

HOMEPAGE="http://www.sublimetext.com"

MY_PN="sublime_text_3"
MY_P="sublime_text_3_build"

MY_PV="${PV/3.0.0_pre/}"

SRC_URI="http://c758482.r82.cf2.rackcdn.com/${MY_P}_${MY_PV}_x64.tar.bz2"

DESCRIPTION="Sublime Text is a sophisticated text editor for code, markup and prose."
HOMEPAGE="http://www.sublimetext.com/"

LICENSE="sublime"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_PN}"

src_install() {
	mkdir -p "${D}"/opt/
	mv "${S}" "${D}"/opt/sublime_text
	domenu sublime_text.desktop
}
