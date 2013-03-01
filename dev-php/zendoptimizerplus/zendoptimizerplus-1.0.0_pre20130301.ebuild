# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PHP_EXT_NAME="ZendOptimizerPlus"
PHP_EXT_INI="yes"
PHP_EXT_ZENDEXT="yes"

USE_PHP="php5-3 php5-4"

S="${WORKDIR}/${PN}"

inherit php-ext-source-r2

KEYWORDS="~amd64"

DESCRIPTION="The Zend Optimizer+ provides faster PHP execution through opcode caching and optimization."
HOMEPAGE="http://www.zend.com/"
SRC_URI="http://olemarkus.org/~olemarkus/zop/${PN}-${PV}.tar.bz2"
LICENSE="PHP-3"
SLOT="0"
IUSE=""

DEPEND="!dev-php/xdebug"
RDEPEND="${DEPEND}"

