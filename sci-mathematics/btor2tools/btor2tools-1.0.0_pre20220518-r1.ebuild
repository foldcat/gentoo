# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Generic parser and tools for the BTOR2 format"
HOMEPAGE="https://github.com/Boolector/btor2tools/"

if [[ "${PV}" == *9999* ]] ; then
	inherit git-r3

	EGIT_REPO_URI="https://github.com/Boolector/${PN}.git"
else
	[[ "${PV}" == *_pre20220518 ]] && COMMIT=b8456dda4780789e882f5791eb486f295ade4da4

	SRC_URI="https://github.com/Boolector/${PN}/archive/${COMMIT}.tar.gz
		-> ${P}.tar.gz"
	S="${WORKDIR}/${PN}-${COMMIT}"

	KEYWORDS="~amd64 ~x86"
fi

LICENSE="MIT"
SLOT="0"
IUSE="examples"

PATCHES=(
	"${FILESDIR}/${PN}-1.0.0_pre20220518-btorsplit-cstdint.patch"
	"${FILESDIR}/${PN}-1.0.0_pre20220518-cmake-clfags.patch"
	"${FILESDIR}/${PN}-1.0.0_pre20220518-cmake_minimum.patch"
)

src_install() {
	cmake_src_install

	if use examples ; then
		insinto "/usr/share/${PN}"
		dodoc -r examples
	fi
}
