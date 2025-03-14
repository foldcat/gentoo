# Copyright 2023-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_EXT=1
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1 pypi

DESCRIPTION="OMEMO Crypto Library"
HOMEPAGE="
	https://pypi.org/project/omemo-dr/
	https://dev.gajim.org/gajim/omemo-dr
"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 ~arm64 ~loong ~riscv x86"

RDEPEND="
	dev-python/cryptography[${PYTHON_USEDEP}]
	dev-python/protobuf[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest
