# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

DESCRIPTION="Spotify desktop client"
HOMEPAGE="http://www.spotify.com/"

LICENSE="Spotify"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="gnome pulseaudio"

MY_PV="${PV}.g9cb177b.260-1"
MY_P="${PN}-client_${MY_PV}"

SRC_BASE="http://repository.spotify.com/pool/non-free/${PN:0:1}/${PN}/"
SRC_URI="
    x86?   ( ${SRC_BASE}${MY_P}_i386.deb )
    amd64? ( ${SRC_BASE}${MY_P}_amd64.deb )
    "

RDEPEND="
    >=media-libs/alsa-lib-1.0.14
    pulseaudio? ( >=media-sound/pulseaudio-0.9.21 )
    >=sys-devel/gcc-4.0
    >=sys-libs/glibc-2.6
    >=x11-libs/qt-core-4.5
    >=x11-libs/qt-dbus-4.5
    >=x11-libs/qt-gui-4.5
    >=x11-libs/qt-webkit-4.5
    dev-libs/openssl:0.9.8
    "

	RESTRICT="mirror strip"

src_unpack() {
	for MY_A in ${A}; do
		unpack ${MY_A}
		unpack ./data.tar.gz
	done
}

src_install() {
	mv "${WORKDIR}"/usr "${D}" || die "Install failed"
}
