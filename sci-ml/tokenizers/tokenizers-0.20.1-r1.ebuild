# Copyright 2023-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.3

EAPI=8

DISTUTILS_USE_PEP517=maturin
PYTHON_COMPAT=( python3_{10..12} )
DISTUTILS_EXT=1
DISTUTILS_SINGLE_IMPL=1

CRATES="
	adler2@2.0.0
	aho-corasick@1.1.3
	anes@0.1.6
	anstream@0.6.15
	anstyle-parse@0.2.5
	anstyle-query@1.1.1
	anstyle-wincon@3.0.4
	anstyle@1.0.8
	assert_approx_eq@1.1.0
	autocfg@1.4.0
	autocfg@1.3.0
	base64@0.13.1
	base64@0.22.1
	bit-set@0.5.3
	bit-vec@0.6.3
	bitflags@1.3.2
	bitflags@2.6.0
	bumpalo@3.16.0
	byteorder@1.5.0
	cast@0.3.0
	cc@1.1.22
	cfg-if@1.0.0
	ciborium-io@0.2.2
	ciborium-ll@0.2.2
	ciborium@0.2.2
	clap@4.5.19
	clap_builder@4.5.19
	clap_lex@0.7.2
	colorchoice@1.0.2
	console@0.15.8
	core-foundation-sys@0.8.7
	core-foundation@0.9.4
	crc32fast@1.4.2
	criterion-plot@0.5.0
	criterion@0.5.1
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.20
	crunchy@0.2.2
	darling@0.20.10
	darling_core@0.20.10
	darling_macro@0.20.10
	derive_builder@0.20.1
	derive_builder_core@0.20.1
	derive_builder_macro@0.20.1
	derive_builder@0.20.0
	derive_builder_core@0.20.0
	derive_builder_macro@0.20.0
	dirs-sys@0.4.1
	dirs@5.0.1
	either@1.13.0
	encode_unicode@0.3.6
	env_filter@0.1.2
	env_logger@0.11.5
	errno@0.3.9
	esaxx-rs@0.1.10
	fancy-regex@0.13.0
	fastrand@2.1.1
	fastrand@2.1.0
	flate2@1.0.34
	fnv@1.0.7
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	form_urlencoded@1.2.1
	getrandom@0.2.15
	half@2.4.1
	hermit-abi@0.4.0
	hf-hub@0.3.2
	heck@0.4.1
	humantime@2.1.0
	ident_case@1.0.1
	idna@0.5.0
	indicatif@0.17.8
	indoc@2.0.5
	instant@0.1.13
	is-terminal@0.4.13
	is_terminal_polyfill@1.70.1
	itertools@0.10.5
	itertools@0.11.0
	itertools@0.12.1
	itoa@1.0.11
	js-sys@0.3.70
	lazy_static@1.5.0
	libc@0.2.155
	libc@0.2.159
	libredox@0.1.3
	linux-raw-sys@0.4.14
	lock_api@0.4.12
	log@0.4.22
	macro_rules_attribute-proc_macro@0.2.0
	macro_rules_attribute@0.2.0
	matrixmultiply@0.3.9
	memchr@2.7.4
	memoffset@0.9.1
	minimal-lexical@0.2.1
	miniz_oxide@0.8.0
	monostate-impl@0.1.13
	monostate@0.1.13
	native-tls@0.2.12
	ndarray@0.15.6
	nom@7.1.3
	nu-ansi-term@0.46.0
	num-complex@0.4.6
	num-integer@0.1.46
	num-traits@0.2.19
	number_prefix@0.4.0
	numpy@0.21.0
	once_cell@1.20.1
	onig@6.4.0
	onig_sys@69.8.1
	oorandom@11.1.4
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.103
	openssl@0.10.66
	option-ext@0.2.0
	overload@0.1.1
	parking_lot@0.12.3
	parking_lot_core@0.9.10
	paste@1.0.15
	percent-encoding@2.3.1
	pin-project-lite@0.2.14
	pkg-config@0.3.30
	portable-atomic@1.7.0
	pkg-config@0.3.31
	plotters-backend@0.3.7
	plotters-svg@0.3.7
	plotters@0.3.7
	portable-atomic@1.9.0
	ppv-lite86@0.2.20
	proc-macro2@1.0.86
	pyo3-build-config@0.21.2
	pyo3-ffi@0.21.2
	pyo3-macros-backend@0.21.2
	pyo3-macros@0.21.2
	pyo3@0.21.2
	quote@1.0.36
	quote@1.0.37
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rawpointer@0.2.1
	rayon-cond@0.3.0
	rayon-core@1.12.1
	rayon@1.10.0
	redox_users@0.4.6
	regex-automata@0.4.8
	regex-syntax@0.8.5
	redox_syscall@0.5.7
	regex-automata@0.4.7
	regex-syntax@0.8.4
	regex@1.10.6
	regex@1.11.0
	ring@0.17.8
	rustc-hash@1.1.0
	rustix@0.38.34
	rustix@0.38.37
	rustls-pki-types@1.9.0
	rustls-webpki@0.102.8
	rustls@0.23.14
	ryu@1.0.18
	same-file@1.0.6
	schannel@0.1.24
	security-framework-sys@2.12.0
	security-framework@2.11.1
	scopeguard@1.2.0
	serde@1.0.205
	serde@1.0.210
	serde_derive@1.0.205
	serde_derive@1.0.210
	serde_json@1.0.122
	serde_json@1.0.128
	sharded-slab@0.1.7
	shlex@1.3.0
	smallvec@1.13.2
	spin@0.9.8
	spm_precompiled@0.1.4
	strsim@0.11.1
	subtle@2.6.1
	syn@2.0.72
	syn@2.0.79
	target-lexicon@0.12.16
	tempfile@3.12.0
	tempfile@3.13.0
	thiserror-impl@1.0.63
	thiserror-impl@1.0.64
	thiserror@1.0.63
	thiserror@1.0.64
	thread_local@1.1.8
	tinytemplate@1.2.1
	tinyvec@1.8.0
	tinyvec_macros@0.1.1
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-subscriber@0.3.18
	tracing@0.1.40
	unicode-bidi@0.3.17
	unicode-ident@1.0.12
	unicode-ident@1.0.13
	unicode-normalization-alignments@0.1.12
	unicode-normalization@0.1.24
	unicode-segmentation@1.11.0
	unicode-segmentation@1.12.0
	unicode-width@0.1.13
	unicode-width@0.1.14
	unicode_categories@0.1.1
	unindent@0.2.3
	untrusted@0.9.0
	ureq@2.10.1
	url@2.5.2
	utf8parse@0.2.2
	valuable@0.1.0
	vcpkg@0.2.15
	walkdir@2.5.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.93
	wasm-bindgen-macro-support@0.2.93
	wasm-bindgen-macro@0.2.93
	wasm-bindgen-shared@0.2.93
	wasm-bindgen@0.2.93
	web-sys@0.3.70
	webpki-roots@0.26.6
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.9
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-sys@0.59.0
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
	zeroize@1.8.1
"

inherit cargo distutils-r1

DESCRIPTION="Implementation of today's most used tokenizers"
HOMEPAGE="https://github.com/huggingface/tokenizers"
SRC_URI="
	https://github.com/huggingface/${PN}/archive/refs/tags/v${PV}.tar.gz
	-> ${P}.gh.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="Apache-2.0"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD-2 BSD ISC MIT MPL-2.0
	Unicode-DFS-2016
"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="
	test? ( sci-ml/datasets[${PYTHON_SINGLE_USEDEP}] )
	$(python_gen_cond_dep '
		dev-python/setuptools-rust[${PYTHON_USEDEP}]
	')
"

distutils_enable_tests pytest

QA_FLAGS_IGNORED=".*/site-packages/tokenizers/.*so"

src_unpack() {
	cargo_src_unpack
}

pkg_setup() {
	python-single-r1_pkg_setup
	rust_pkg_setup
}

src_prepare() {
	default
	cd bindings/python
	eapply "${FILESDIR}"/${PN}-0.15.2-test.patch
	distutils-r1_src_prepare
}

src_configure() {
	cd tokenizers
	cargo_src_configure
	cd ../bindings/python
	distutils-r1_src_configure
}

src_compile() {
	cd tokenizers
	cargo_src_compile
	cd ../bindings/python
	distutils-r1_src_compile
}

src_test() {
	cd tokenizers
	# Tests do not work
	#cargo_src_test
	cd ../bindings/python
	local EPYTEST_DESELECT=(
		"tests/bindings/test_tokenizer.py::TestTokenizer::test_encode_formats"
		"tests/bindings/test_encoding.py::TestEncoding::test_sequence_ids"
		"tests/bindings/test_encoding.py::TestEncoding::test_n_sequences"
		"tests/bindings/test_encoding.py::TestEncoding::test_word_to_tokens"
		"tests/bindings/test_encoding.py::TestEncoding::test_word_to_chars"
		"tests/bindings/test_encoding.py::TestEncoding::test_token_to_sequence"
		"tests/bindings/test_encoding.py::TestEncoding::test_token_to_chars"
		"tests/bindings/test_encoding.py::TestEncoding::test_token_to_word"
		"tests/bindings/test_encoding.py::TestEncoding::test_char_to_token"
		"tests/bindings/test_encoding.py::TestEncoding::test_char_to_word"
		"tests/bindings/test_encoding.py::TestEncoding::test_truncation"
		"tests/bindings/test_encoding.py::TestEncoding::test_invalid_truncate_direction"
		"tests/bindings/test_models.py::TestBPE::test_instantiate"
		"tests/bindings/test_models.py::TestWordLevel::test_instantiate"
		"tests/bindings/test_models.py::TestWordPiece::test_instantiate"
		"tests/bindings/test_processors.py::TestByteLevelProcessing::test_processing"
		"tests/bindings/test_tokenizer.py::TestTokenizer::test_encode_add_special_tokens"
		"tests/bindings/test_tokenizer.py::TestTokenizer::test_from_pretrained"
		"tests/bindings/test_tokenizer.py::TestTokenizer::test_from_pretrained_revision"
		"tests/bindings/test_tokenizer.py::TestTokenizer::test_encode_special_tokens"
		"tests/bindings/test_tokenizer.py::TestTokenizer::test_splitting"
		"tests/bindings/test_trainers.py::TestUnigram::test_continuing_prefix_trainer_mistmatch"
		"tests/bindings/test_trainers.py::TestUnigram::test_train"
		"tests/documentation/test_pipeline.py::TestPipeline::test_pipeline"
		"tests/documentation/test_pipeline.py::TestPipeline::test_bert_example"
		"tests/documentation/test_quicktour.py::TestQuicktour::test_quicktour"
		"tests/documentation/test_tutorial_train_from_iterators.py::TestTrainFromIterators::test_datasets"
		"tests/documentation/test_tutorial_train_from_iterators.py::TestTrainFromIterators::test_gzip"
		"tests/implementations/test_bert_wordpiece.py::TestBertWordPieceTokenizer::test_basic_encode"
		"tests/implementations/test_bert_wordpiece.py::TestBertWordPieceTokenizer::test_multiprocessing_with_parallelism"
		"tests/implementations/test_byte_level_bpe.py::TestByteLevelBPE::test_basic_encode"
		"tests/implementations/test_byte_level_bpe.py::TestByteLevelBPE::test_add_prefix_space"
		"tests/implementations/test_byte_level_bpe.py::TestByteLevelBPE::test_lowerspace"
		"tests/implementations/test_byte_level_bpe.py::TestByteLevelBPE::test_multiprocessing_with_parallelism"
		"tests/implementations/test_char_bpe.py::TestCharBPETokenizer::test_basic_encode"
		"tests/implementations/test_char_bpe.py::TestCharBPETokenizer::test_lowercase"
		"tests/implementations/test_char_bpe.py::TestCharBPETokenizer::test_decoding"
		"tests/implementations/test_char_bpe.py::TestCharBPETokenizer::test_multiprocessing_with_parallelism"
		"tests/test_serialization.py::TestSerialization::test_full_serialization_albert"
		"tests/test_serialization.py::TestSerialization::test_str_big"
	)
	local -x EPYTEST_IGNORE=(benches/)
	distutils-r1_src_test
}

src_install() {
	cd tokenizers
	cd ../bindings/python
	distutils-r1_src_install
}
