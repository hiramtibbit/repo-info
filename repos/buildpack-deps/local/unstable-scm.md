# `buildpack-deps:sid-scm`

## Docker Metadata

- Image ID: `sha256:5485eb6d1d187a4bcd9d243875a12ae765fec3b14f7fb8350db74699943efc02`
- Created: `2018-12-29T00:03:06.247588589Z`
- Virtual Size: ~ 292.53 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.2.52-3`

Binary Packages:

- `libacl1:amd64=2.2.52-3+b1`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.2.52-3
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.52-3.dsc' acl_2.2.52-3.dsc 2025 SHA256:82e344b9ab176559a85630b74ee5a68d678d7f24b6fe8139f2fd9fcf38a48095
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.52.orig.tar.bz2' acl_2.2.52.orig.tar.bz2 312128 SHA256:59d05b38af76baf2eddccbf08c7968a17451cc785ffecc657fcb46ce32b2631d
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.52-3.debian.tar.xz' acl_2.2.52-3.debian.tar.xz 8740 SHA256:fc3f1178d18288993fc4ce4853b7f9dcdf0bd1fd26e4f69349a4e4e5916d1fa8
```

Other potentially useful URLs:

- https://sources.debian.net/src/acl/2.2.52-3/ (for browsing the source)
- https://sources.debian.net/src/acl/2.2.52-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/acl/2.2.52-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `adduser=3.118`

Binary Packages:

- `adduser=3.118`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.118
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.118.dsc' adduser_3.118.dsc 1670 SHA256:fc79bc37fcf5e5700546c78a80670bb7b34836d012595b343fe2304cac82917d
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.118.tar.xz' adduser_3.118.tar.xz 212280 SHA256:3e9eea661c9aac6b2c791bfcc1de3a9c6a422d45c8f3d38ed417737ed3166ffc
```

Other potentially useful URLs:

- https://sources.debian.net/src/adduser/3.118/ (for browsing the source)
- https://sources.debian.net/src/adduser/3.118/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/adduser/3.118/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apr-util=1.6.1-3`

Binary Packages:

- `libaprutil1:amd64=1.6.1-3+b1`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.6.1-3
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.1-3.dsc' apr-util_1.6.1-3.dsc 2828 SHA256:50fbb80da646559429587e4d22c161239a95e6a739d5ccf483256bc12713ce42
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2' apr-util_1.6.1.orig.tar.bz2 428595 SHA256:d3e12f7b6ad12687572a3a39475545a072608f4ba03a6ce8a3778f607dd0035b
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2.asc' apr-util_1.6.1.orig.tar.bz2.asc 801 SHA256:47837b605290c0d7659b73734e4a9d5e6c0c24c13185cd4d91837afe63c07ca4
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.1-3.debian.tar.xz' apr-util_1.6.1-3.debian.tar.xz 211876 SHA256:ede9bb0599066e0e00469cad8f44ac4b5eda05a6f0e279a9ed304b9560c69de9
```

Other potentially useful URLs:

- https://sources.debian.net/src/apr-util/1.6.1-3/ (for browsing the source)
- https://sources.debian.net/src/apr-util/1.6.1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apr-util/1.6.1-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apr=1.6.5-1`

Binary Packages:

- `libapr1:amd64=1.6.5-1+b1`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.6.5-1
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.5-1.dsc' apr_1.6.5-1.dsc 2296 SHA256:80c471107d7f90ab5de012e4211559f4f6852ca2b7fd6911f06420aa66d27ec0
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.5.orig.tar.bz2' apr_1.6.5.orig.tar.bz2 855393 SHA256:a67ca9fcf9c4ff59bce7f428a323c8b5e18667fdea7b0ebad47d194371b0a105
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.5.orig.tar.bz2.asc' apr_1.6.5.orig.tar.bz2.asc 801 SHA256:9beff0bb06f4cbbb006176af93258d946d33b7fb54aac13a4c90cfba1cfd0c88
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.5-1.debian.tar.xz' apr_1.6.5-1.debian.tar.xz 213168 SHA256:cb03a6ad0b8c525c67744e7d3f7c52af446e73bd6d4eeb6fd4622677df60db2b
```

Other potentially useful URLs:

- https://sources.debian.net/src/apr/1.6.5-1/ (for browsing the source)
- https://sources.debian.net/src/apr/1.6.5-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apr/1.6.5-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apt=1.8.0~alpha3`

Binary Packages:

- `apt=1.8.0~alpha3`
- `libapt-pkg5.0:amd64=1.8.0~alpha3`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=1.8.0~alpha3
'http://deb.debian.org/debian/pool/main/a/apt/apt_1.8.0~alpha3.dsc' apt_1.8.0~alpha3.dsc 2787 SHA256:e18e18ec98d18a781699800c42c8a90a7c5b80cdf837f497b85a5f2e7243604c
'http://deb.debian.org/debian/pool/main/a/apt/apt_1.8.0~alpha3.tar.xz' apt_1.8.0~alpha3.tar.xz 2161776 SHA256:8f8ef052793207a915261edf73d2342eb9b05d7ac0f00f20c0ed8a5ef8e1bd29
```

Other potentially useful URLs:

- https://sources.debian.net/src/apt/1.8.0~alpha3/ (for browsing the source)
- https://sources.debian.net/src/apt/1.8.0~alpha3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apt/1.8.0~alpha3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `attr=1:2.4.47-2`

Binary Packages:

- `libattr1:amd64=1:2.4.47-2+b2`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.4.47-2
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.47-2.dsc' attr_2.4.47-2.dsc 2027 SHA256:ee842d6d62d473acf02b494c432cf33128fa46455a09d3172c77c252449fa1a6
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.47.orig.tar.bz2' attr_2.4.47.orig.tar.bz2 281877 SHA256:6c1208035757f5ce9b516402dd45b8299a53ae4d69ad2c352116f9cb8d7bc274
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.47-2.debian.tar.xz' attr_2.4.47-2.debian.tar.xz 8096 SHA256:f65909562def601b1556393f5656032c058dc574ba622414ad3eb80c7b05a42a
```

Other potentially useful URLs:

- https://sources.debian.net/src/attr/1:2.4.47-2/ (for browsing the source)
- https://sources.debian.net/src/attr/1:2.4.47-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/attr/1:2.4.47-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `audit=1:2.8.4-2`

Binary Packages:

- `libaudit-common=1:2.8.4-2`
- `libaudit1:amd64=1:2.8.4-2`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.8.4-2
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.8.4-2.dsc' audit_2.8.4-2.dsc 2483 SHA256:0706c1bc20cb5577a354a5f7e48d498082d73cff4b61160fbc097596d32321b3
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.8.4.orig.tar.gz' audit_2.8.4.orig.tar.gz 1123889 SHA256:a410694d09fc5708d980a61a5abcb9633a591364f1ecc7e97ad5daef9c898c38
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.8.4-2.debian.tar.xz' audit_2.8.4-2.debian.tar.xz 15972 SHA256:9a8fd93c7a7db9a664b06bcf3c3deda1d3b71833300df0f5116b843947bc5849
```

Other potentially useful URLs:

- https://sources.debian.net/src/audit/1:2.8.4-2/ (for browsing the source)
- https://sources.debian.net/src/audit/1:2.8.4-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/audit/1:2.8.4-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-files=10.1`

Binary Packages:

- `base-files=10.1`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=10.1
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_10.1.dsc' base-files_10.1.dsc 1071 SHA256:993f58ec810722bf0210e06e351d58f1a316827b0995ffd03edbd2c3dc406130
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_10.1.tar.xz' base-files_10.1.tar.xz 65064 SHA256:368d2c32572802838de1151be45e8964669d3901429856bee06d219f125801d3
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-files/10.1/ (for browsing the source)
- https://sources.debian.net/src/base-files/10.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-files/10.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-passwd=3.5.45`

Binary Packages:

- `base-passwd=3.5.45`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.45
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.45.dsc' base-passwd_3.5.45.dsc 1651 SHA256:c5702c8c0fd5f2240d0fad07f1c03cdff86ea9370e80129c7258c40fa12015b9
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.45.tar.xz' base-passwd_3.5.45.tar.xz 52748 SHA256:8cd6a713c400cf52f437e5cb14fcec59b0c77d4003a9a4f56526ef27f28ce1fe
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-passwd/3.5.45/ (for browsing the source)
- https://sources.debian.net/src/base-passwd/3.5.45/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-passwd/3.5.45/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bash=4.4.18-3.1`

Binary Packages:

- `bash=4.4.18-3.1`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=4.4.18-3.1
'http://deb.debian.org/debian/pool/main/b/bash/bash_4.4.18-3.1.dsc' bash_4.4.18-3.1.dsc 2309 SHA256:67fc85e76d8901fa44342aa0c61722dbf0667eea8de240ba6067636ab07236f8
'http://deb.debian.org/debian/pool/main/b/bash/bash_4.4.18.orig.tar.xz' bash_4.4.18.orig.tar.xz 5036272 SHA256:704143a7170041ac9f1025455d6d23ff0f353711a3dc557b47d6e6322f24cd02
'http://deb.debian.org/debian/pool/main/b/bash/bash_4.4.18-3.1.debian.tar.xz' bash_4.4.18-3.1.debian.tar.xz 60632 SHA256:68a6aaaa16c0b975176d421f38e7c5fb746f7a3a262cb699bf5a92e4fbcfba39
```

Other potentially useful URLs:

- https://sources.debian.net/src/bash/4.4.18-3.1/ (for browsing the source)
- https://sources.debian.net/src/bash/4.4.18-3.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bash/4.4.18-3.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bzip2=1.0.6-9`

Binary Packages:

- `libbz2-1.0:amd64=1.0.6-9`

Licenses: (parsed from: `/usr/share/doc/libbz2-1.0/copyright`)

- `BSD-variant`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.6-9
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6-9.dsc' bzip2_1.0.6-9.dsc 2185 SHA256:f27d7febca8dbc1519bdacac3ee0b5a2d9cf9845e50dbb7b13c0e6daa17ab28e
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA256:d70a9ccd8bdf47e302d96c69fecd54925f45d9c7b966bb4ef5f56b770960afa7
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6-9.debian.tar.bz2' bzip2_1.0.6-9.debian.tar.bz2 25873 SHA256:d1a91bf31bc60384f56fa2dd55cfdc07e27dbbbf295db2248b65afed0ca141a2
```

Other potentially useful URLs:

- https://sources.debian.net/src/bzip2/1.0.6-9/ (for browsing the source)
- https://sources.debian.net/src/bzip2/1.0.6-9/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bzip2/1.0.6-9/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ca-certificates=20180409`

Binary Packages:

- `ca-certificates=20180409`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20180409
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20180409.dsc' ca-certificates_20180409.dsc 1420 SHA256:cd1f6540d0dab28f897e0e0cb2191130cdbf897f8ce3f52c8e483b2ed1555d30
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20180409.tar.xz' ca-certificates_20180409.tar.xz 246908 SHA256:7af6f5bfc619fd29cbf0258c1d95107c38ce840ad6274e343e1e0d971fc72b51
```

Other potentially useful URLs:

- https://sources.debian.net/src/ca-certificates/20180409/ (for browsing the source)
- https://sources.debian.net/src/ca-certificates/20180409/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ca-certificates/20180409/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cdebconf=0.246`

Binary Packages:

- `libdebconfclient0:amd64=0.246`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.246
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.246.dsc' cdebconf_0.246.dsc 2816 SHA256:0c15611ef1244c0568614be572618de50f4cf3fe73b070b182c13e9e63416bbb
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.246.tar.xz' cdebconf_0.246.tar.xz 274856 SHA256:60cf27a15d7b9870dc4cc481b082751e061b1ae9a62f2da64e62fb1dd6265ede
```

Other potentially useful URLs:

- https://sources.debian.net/src/cdebconf/0.246/ (for browsing the source)
- https://sources.debian.net/src/cdebconf/0.246/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cdebconf/0.246/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `coreutils=8.30-1`

Binary Packages:

- `coreutils=8.30-1`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.30-1
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.30-1.dsc' coreutils_8.30-1.dsc 1886 SHA256:b23403d9382c9e91a9f63947352dfc9c06d3da9bf97173923026f9abb355446d
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.30.orig.tar.xz' coreutils_8.30.orig.tar.xz 5359532 SHA256:e831b3a86091496cdba720411f9748de81507798f6130adeaef872d206e1b057
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.30-1.debian.tar.xz' coreutils_8.30-1.debian.tar.xz 31436 SHA256:7e397b558de9c9bc49cbabb2707c4902afd0fca97b7eedcb73f94f8421dfe2ca
```

Other potentially useful URLs:

- https://sources.debian.net/src/coreutils/8.30-1/ (for browsing the source)
- https://sources.debian.net/src/coreutils/8.30-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/coreutils/8.30-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `curl=7.62.0-1`

Binary Packages:

- `curl=7.62.0-1`
- `libcurl3-gnutls:amd64=7.62.0-1`
- `libcurl4:amd64=7.62.0-1`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`, `/usr/share/doc/libcurl4/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.62.0-1
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.62.0-1.dsc' curl_7.62.0-1.dsc 2687 SHA256:9a95b882b900fa8c0f25b03befd8af3a2c6d4cdfe0ea72e3accfe9b1153f2aec
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.62.0.orig.tar.gz' curl_7.62.0.orig.tar.gz 4045208 SHA256:55ccd5b5209f8cc53d4250e2a9fd87e6f67dd323ae8bd7d06b072cfcbb7836cb
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.62.0-1.debian.tar.xz' curl_7.62.0-1.debian.tar.xz 28764 SHA256:6c3574ad00b4d5811339d02275a75420263698b03d5d5bc39bfc7eece1c219bd
```

Other potentially useful URLs:

- https://sources.debian.net/src/curl/7.62.0-1/ (for browsing the source)
- https://sources.debian.net/src/curl/7.62.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/curl/7.62.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cyrus-sasl2=2.1.27~rc8-1`

Binary Packages:

- `libsasl2-2:amd64=2.1.27~rc8-1`
- `libsasl2-modules-db:amd64=2.1.27~rc8-1`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.27~rc8-1
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~rc8-1.dsc' cyrus-sasl2_2.1.27~rc8-1.dsc 3179 SHA256:b2fb73e666cb9389e2fd7a2a495a05078a646a694e6e5dd6976924212d721af8
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~rc8.orig.tar.gz' cyrus-sasl2_2.1.27~rc8.orig.tar.gz 4096413 SHA256:8d95201b4f2c2ec4c0ebafd01c00d7d1e0f2513352b3f850ae2723a90c6c6789
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~rc8-1.debian.tar.xz' cyrus-sasl2_2.1.27~rc8-1.debian.tar.xz 89788 SHA256:cf41160901c1d99590880512b9bb4f721c41996d10b40d6c99bd7de1f079ee72
```

Other potentially useful URLs:

- https://sources.debian.net/src/cyrus-sasl2/2.1.27~rc8-1/ (for browsing the source)
- https://sources.debian.net/src/cyrus-sasl2/2.1.27~rc8-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cyrus-sasl2/2.1.27~rc8-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dash=0.5.10.2-4`

Binary Packages:

- `dash=0.5.10.2-4`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.10.2-4
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.10.2-4.dsc' dash_0.5.10.2-4.dsc 1756 SHA256:b1936dc22283488866219d71593973e7c85997205d44262c8c5a286c30c7f5fa
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.10.2.orig.tar.gz' dash_0.5.10.2.orig.tar.gz 225196 SHA256:3c663919dc5c66ec991da14c7cf7e0be8ad00f3db73986a987c118862b5f6071
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.10.2-4.debian.tar.xz' dash_0.5.10.2-4.debian.tar.xz 41808 SHA256:e3875cf8817a60fe794041aa4f19e180cda6a02197c05cfd3c8a4340ea966c41
```

Other potentially useful URLs:

- https://sources.debian.net/src/dash/0.5.10.2-4/ (for browsing the source)
- https://sources.debian.net/src/dash/0.5.10.2-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dash/0.5.10.2-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `db5.3=5.3.28+dfsg1-0.2`

Binary Packages:

- `libdb5.3:amd64=5.3.28+dfsg1-0.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28+dfsg1-0.2
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28+dfsg1-0.2.dsc' db5.3_5.3.28+dfsg1-0.2.dsc 2991 SHA256:f83cb4a68948870bb8ea6cf75c4ce254e7e7618609360f3ba61ee0a710048ff2
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28+dfsg1.orig.tar.xz' db5.3_5.3.28+dfsg1.orig.tar.xz 19723860 SHA256:b19bf3dd8ce74b95a7b215be9a7c8489e8e8f18da60d64d6340a06e75f497749
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28+dfsg1-0.2.debian.tar.xz' db5.3_5.3.28+dfsg1-0.2.debian.tar.xz 29120 SHA256:d94443c370c8a6ef97c0ec01734063bfea3edf6ddf64de43fd9160fffa6eb290
```

Other potentially useful URLs:

- https://sources.debian.net/src/db5.3/5.3.28+dfsg1-0.2/ (for browsing the source)
- https://sources.debian.net/src/db5.3/5.3.28+dfsg1-0.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/db5.3/5.3.28+dfsg1-0.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debconf=1.5.69`

Binary Packages:

- `debconf=1.5.69`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.69
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.69.dsc' debconf_1.5.69.dsc 2047 SHA256:d1d83db20bac5c611fa9c74091d193f8d0e30cdf6afec9395354e6cc8ff8aac4
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.69.tar.xz' debconf_1.5.69.tar.xz 570688 SHA256:728b0df9ba36ee2e090b5be9a79ebb9ff55605e38bd6780b26462a8c8bd0f646
```

Other potentially useful URLs:

- https://sources.debian.net/src/debconf/1.5.69/ (for browsing the source)
- https://sources.debian.net/src/debconf/1.5.69/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debconf/1.5.69/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debian-archive-keyring=2018.1`

Binary Packages:

- `debian-archive-keyring=2018.1`

Licenses: (parsed from: `/usr/share/doc/debian-archive-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debian-archive-keyring=2018.1
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2018.1.dsc' debian-archive-keyring_2018.1.dsc 1785 SHA256:6eaa621bab104d8ea9962f212425876969a9c4fe8ed8dfe202343a3d267e7aca
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2018.1.tar.xz' debian-archive-keyring_2018.1.tar.xz 80512 SHA256:521bc76f9323119375aa9d7ecfba19fe15270c388d9495f26b013b55014b302d
```

Other potentially useful URLs:

- https://sources.debian.net/src/debian-archive-keyring/2018.1/ (for browsing the source)
- https://sources.debian.net/src/debian-archive-keyring/2018.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debian-archive-keyring/2018.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debianutils=4.8.6`

Binary Packages:

- `debianutils=4.8.6`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.8.6
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.8.6.dsc' debianutils_4.8.6.dsc 1739 SHA256:1b82e438469d8ffe18a2fc4747f24b8f0475ced12f23d952279579ce6b27b108
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.8.6.tar.xz' debianutils_4.8.6.tar.xz 156532 SHA256:db09047144dadf6a35d0f28977fbef83b0dd60ca32e6c8512cce2444a6423f73
```

Other potentially useful URLs:

- https://sources.debian.net/src/debianutils/4.8.6/ (for browsing the source)
- https://sources.debian.net/src/debianutils/4.8.6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debianutils/4.8.6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `diffutils=1:3.6-1`

Binary Packages:

- `diffutils=1:3.6-1`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.6-1
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.6-1.dsc' diffutils_3.6-1.dsc 1453 SHA256:26fe7690b45748dc92cee6af224192e78db2ac574e16ae0aeb8ed6a472c883cd
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.6.orig.tar.xz' diffutils_3.6.orig.tar.xz 1398296 SHA256:d621e8bdd4b573918c8145f7ae61817d1be9deb4c8d2328a65cea8e11d783bd6
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.6-1.debian.tar.xz' diffutils_3.6-1.debian.tar.xz 10808 SHA256:f6ab546a134bde18a87ca8e3c98919680e79d81a65a24801ae06ef69b33f24d8
```

Other potentially useful URLs:

- https://sources.debian.net/src/diffutils/1:3.6-1/ (for browsing the source)
- https://sources.debian.net/src/diffutils/1:3.6-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/diffutils/1:3.6-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dpkg=1.19.2`

Binary Packages:

- `dpkg=1.19.2`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.19.2
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.19.2.dsc' dpkg_1.19.2.dsc 2031 SHA256:3fdd8d1030f5e7c3499ebebca7d9effd68110cbc44cf796ea4dfa60ddcdfb2e0
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.19.2.tar.xz' dpkg_1.19.2.tar.xz 4607868 SHA256:f8f2ae2cf8065b81239db960b3794099ec607c94a125cec61c986f68f9861b71
```

Other potentially useful URLs:

- https://sources.debian.net/src/dpkg/1.19.2/ (for browsing the source)
- https://sources.debian.net/src/dpkg/1.19.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dpkg/1.19.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `e2fsprogs=1.44.5-1`

Binary Packages:

- `e2fsprogs=1.44.5-1`
- `libcom-err2:amd64=1.44.5-1`
- `libext2fs2:amd64=1.44.5-1`
- `libss2:amd64=1.44.5-1`

Licenses: (parsed from: `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.44.5-1
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.44.5-1.dsc' e2fsprogs_1.44.5-1.dsc 2747 SHA256:119cb2a7901e48bb282b6335121388f7e5849b40664dae0c05c03491236db5bb
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.44.5.orig.tar.gz' e2fsprogs_1.44.5.orig.tar.gz 7619237 SHA256:2e211fae27ef74d5af4a4e40b10b8df7f87c655933bd171aab4889bfc4e6d1cc
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.44.5.orig.tar.gz.asc' e2fsprogs_1.44.5.orig.tar.gz.asc 488 SHA256:c0e3e4e51f46c005890963b005015b784b2f19e291a16a15681b9906528f557e
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.44.5-1.debian.tar.xz' e2fsprogs_1.44.5-1.debian.tar.xz 78056 SHA256:287dd7f311a98c99e984500d7cfd2860aa0c5409672f35515f0a31412799d0dc
```

Other potentially useful URLs:

- https://sources.debian.net/src/e2fsprogs/1.44.5-1/ (for browsing the source)
- https://sources.debian.net/src/e2fsprogs/1.44.5-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/e2fsprogs/1.44.5-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `elfutils=0.175-1`

Binary Packages:

- `libelf1:amd64=0.175-1`

Licenses: (parsed from: `/usr/share/doc/libelf1/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/elfutils/0.175-1/


### `dpkg` source package: `expat=2.2.6-1`

Binary Packages:

- `libexpat1:amd64=2.2.6-1`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.2.6-1
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.2.6-1.dsc' expat_2.2.6-1.dsc 1949 SHA256:e14d5e6658592b65821e52371f5036f6a2bdac525ea95014ac99183106917395
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.2.6.orig.tar.gz' expat_2.2.6.orig.tar.gz 8275473 SHA256:574499cba22a599393e28d99ecfa1e7fc85be7d6651d543045244d5b561cb7ff
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.2.6-1.debian.tar.xz' expat_2.2.6-1.debian.tar.xz 10688 SHA256:f0bc55f93042b6f517c39b2757021e8f505e19583b1a9d5f11b224825be62037
```

Other potentially useful URLs:

- https://sources.debian.net/src/expat/2.2.6-1/ (for browsing the source)
- https://sources.debian.net/src/expat/2.2.6-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/expat/2.2.6-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `findutils=4.6.0+git+20181018-1`

Binary Packages:

- `findutils=4.6.0+git+20181018-1`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.6.0+git+20181018-1
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0+git+20181018-1.dsc' findutils_4.6.0+git+20181018-1.dsc 2137 SHA256:687ced1bbbf612798e52a7beb80c8a15b055b2dc7e1149b5fcc4bdf1031f34bf
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0+git+20181018.orig.tar.xz' findutils_4.6.0+git+20181018.orig.tar.xz 1876992 SHA256:0bb3cb95867959350455ccba6e448305cd1adf44d0faf51fe7e9729abbc19c9e
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0+git+20181018-1.debian.tar.xz' findutils_4.6.0+git+20181018-1.debian.tar.xz 26316 SHA256:f180b3d887565e1da084635f130a0495b7e168d6592d3a5a11ceb1c3f23e17f1
```

Other potentially useful URLs:

- https://sources.debian.net/src/findutils/4.6.0+git+20181018-1/ (for browsing the source)
- https://sources.debian.net/src/findutils/4.6.0+git+20181018-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/findutils/4.6.0+git+20181018-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-8=8.2.0-13`

Binary Packages:

- `gcc-8-base:amd64=8.2.0-13`
- `libgcc1:amd64=1:8.2.0-13`
- `libstdc++6:amd64=8.2.0-13`

Licenses: (parsed from: `/usr/share/doc/gcc-8-base/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libstdc++6/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-8=8.2.0-13
'http://deb.debian.org/debian/pool/main/g/gcc-8/gcc-8_8.2.0-13.dsc' gcc-8_8.2.0-13.dsc 32425 SHA256:c8770ae507e5f2b0b0714d7b1c13153b4429fc66b3e932f6b6cca697307cc5a3
'http://deb.debian.org/debian/pool/main/g/gcc-8/gcc-8_8.2.0.orig.tar.gz' gcc-8_8.2.0.orig.tar.gz 73307233 SHA256:45daff604ad10d15ba59665351c3be169c2ef3f4de93b11d65f646cb2c1ce7e2
'http://deb.debian.org/debian/pool/main/g/gcc-8/gcc-8_8.2.0-13.diff.gz' gcc-8_8.2.0-13.diff.gz 4612461 SHA256:1fd26177b02b91c18f65f257fd7b48fe34c40c84326200bbbc8df179f07a61b2
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-8/8.2.0-13/ (for browsing the source)
- https://sources.debian.net/src/gcc-8/8.2.0-13/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-8/8.2.0-13/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gdbm=1.18.1-2`

Binary Packages:

- `libgdbm-compat4:amd64=1.18.1-2`
- `libgdbm6:amd64=1.18.1-2`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4/copyright`, `/usr/share/doc/libgdbm6/copyright`)

- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.18.1-2
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.18.1-2.dsc' gdbm_1.18.1-2.dsc 2714 SHA256:b90f42975f7f8e1cfc117cd895334c7ea2e044294e9f7095dfdcd956d897b9cf
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.18.1.orig.tar.gz' gdbm_1.18.1.orig.tar.gz 941863 SHA256:86e613527e5dba544e73208f42b78b7c022d4fa5a6d5498bf18c8d6f745b91dc
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.18.1.orig.tar.gz.asc' gdbm_1.18.1.orig.tar.gz.asc 412 SHA256:3254738e7689e44ac65e78a766806828b8282e6bb1c0e5bb6156a99e567889a5
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.18.1-2.debian.tar.xz' gdbm_1.18.1-2.debian.tar.xz 28032 SHA256:e208756f7b1c57d51303c1b36cd5bc161b67db20544c6e73401df022d3f74b57
```

Other potentially useful URLs:

- https://sources.debian.net/src/gdbm/1.18.1-2/ (for browsing the source)
- https://sources.debian.net/src/gdbm/1.18.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gdbm/1.18.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `git=1:2.20.1-1`

Binary Packages:

- `git=1:2.20.1-1`
- `git-man=1:2.20.1-1`

Licenses: (parsed from: `/usr/share/doc/git/copyright`, `/usr/share/doc/git-man/copyright`)

- `Apache-2.0`
- `Artistic`
- `Artistic-1`
- `BSD-2-clause`
- `Boost`
- `EDL-1.0`
- `Expat`
- `GPL`
- `GPL-1+`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `dlmalloc`
- `mingw-runtime`

Source:

```console
$ apt-get source -qq --print-uris git=1:2.20.1-1
'http://deb.debian.org/debian/pool/main/g/git/git_2.20.1-1.dsc' git_2.20.1-1.dsc 2888 SHA256:d3aebc21afd1ddb51695ae2105092f3fb9885c5fe13b93dc28908ad159d17d71
'http://deb.debian.org/debian/pool/main/g/git/git_2.20.1.orig.tar.xz' git_2.20.1.orig.tar.xz 5359872 SHA256:9d2e91e2faa2ea61ba0a70201d023b36f54d846314591a002c610ea2ab81c3e9
'http://deb.debian.org/debian/pool/main/g/git/git_2.20.1-1.debian.tar.xz' git_2.20.1-1.debian.tar.xz 599344 SHA256:92963a6eb825b83d716ce6cdecdd9442ed1e7be72c7941ce4a3a82a51bbec3dd
```

Other potentially useful URLs:

- https://sources.debian.net/src/git/1:2.20.1-1/ (for browsing the source)
- https://sources.debian.net/src/git/1:2.20.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/git/1:2.20.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glibc=2.28-3`

Binary Packages:

- `libc-bin=2.28-3`
- `libc6:amd64=2.28-3`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc6/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.28-3
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.28-3.dsc' glibc_2.28-3.dsc 8887 SHA256:492c9779f61900e14b50adcb2fa02b22faf1f2056caffc0cfb94e7ef9db77461
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.28.orig.tar.xz' glibc_2.28.orig.tar.xz 17061292 SHA256:53d3c1c7bff0fb25d4c7874bf13435dc44a71fd7dd5ffc9bfdcb513cdfc36854
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.28-3.debian.tar.xz' glibc_2.28-3.debian.tar.xz 865520 SHA256:bfceb2b2e707aca82a8571a3a328c61c298e3ab09b95769c9e004dd771848b23
```

Other potentially useful URLs:

- https://sources.debian.net/src/glibc/2.28-3/ (for browsing the source)
- https://sources.debian.net/src/glibc/2.28-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glibc/2.28-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gmp=2:6.1.2+dfsg-4`

Binary Packages:

- `libgmp10:amd64=2:6.1.2+dfsg-4`

Licenses: (parsed from: `/usr/share/doc/libgmp10/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.1.2+dfsg-4
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2+dfsg-4.dsc' gmp_6.1.2+dfsg-4.dsc 2123 SHA256:5e9c98e1636344bf0c84710ee564ee6032d6a9db26aa5d29857d65b2a979877c
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2+dfsg.orig.tar.xz' gmp_6.1.2+dfsg.orig.tar.xz 1804424 SHA256:18016f718f621e7641ddd4e57f8e140391c5183252e5998263ffff59198a65b7
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2+dfsg-4.debian.tar.xz' gmp_6.1.2+dfsg-4.debian.tar.xz 21416 SHA256:cb25b080d915d9e5a641920f0471b4deb5368af739c7675d887cf290c2cffbe2
```

Other potentially useful URLs:

- https://sources.debian.net/src/gmp/2:6.1.2+dfsg-4/ (for browsing the source)
- https://sources.debian.net/src/gmp/2:6.1.2+dfsg-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gmp/2:6.1.2+dfsg-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnupg2=2.2.12-1`

Binary Packages:

- `dirmngr=2.2.12-1`
- `gnupg=2.2.12-1`
- `gnupg-l10n=2.2.12-1`
- `gnupg-utils=2.2.12-1`
- `gpg=2.2.12-1`
- `gpg-agent=2.2.12-1`
- `gpg-wks-client=2.2.12-1`
- `gpg-wks-server=2.2.12-1`
- `gpgconf=2.2.12-1`
- `gpgsm=2.2.12-1`
- `gpgv=2.2.12-1`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gnupg-l10n/copyright`, `/usr/share/doc/gnupg-utils/copyright`, `/usr/share/doc/gpg/copyright`, `/usr/share/doc/gpg-agent/copyright`, `/usr/share/doc/gpg-wks-client/copyright`, `/usr/share/doc/gpg-wks-server/copyright`, `/usr/share/doc/gpgconf/copyright`, `/usr/share/doc/gpgsm/copyright`, `/usr/share/doc/gpgv/copyright`)

- `BSD-3-clause`
- `CC0-1.0`
- `Expat`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `RFC-Reference`
- `TinySCHEME`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris gnupg2=2.2.12-1
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.12-1.dsc' gnupg2_2.2.12-1.dsc 3139 SHA256:480cba4feb4466b29e5d69f15ad49361722a11bb59ce311c091f6d86004a7b22
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.12.orig.tar.bz2' gnupg2_2.2.12.orig.tar.bz2 6682303 SHA256:db030f8b4c98640e91300d36d516f1f4f8fe09514a94ea9fc7411ee1a34082cb
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.12.orig.tar.bz2.asc' gnupg2_2.2.12.orig.tar.bz2.asc 3204 SHA256:97c8dc25c4c2fe9a39b2ffd81b65b6f3dc4ad359c9a81ca4bb9b4bdeb6167c60
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.12-1.debian.tar.xz' gnupg2_2.2.12-1.debian.tar.xz 63368 SHA256:a48bbabcb393459fecd2128304c147d093143784913b302cff1181718e4a82dc
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnupg2/2.2.12-1/ (for browsing the source)
- https://sources.debian.net/src/gnupg2/2.2.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnupg2/2.2.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnutls28=3.6.5-2`

Binary Packages:

- `libgnutls30:amd64=3.6.5-2`

Licenses: (parsed from: `/usr/share/doc/libgnutls30/copyright`)

- `Apache-2.0`
- `CC0 license`
- `GFDL-1.3`
- `GPL`
- `GPL-3`
- `GPLv3+`
- `LGPL`
- `LGPL-3`
- `LGPL2.1`
- `LGPLv3+_or_GPLv2+`
- `The MIT License (MIT)`
- `The main library is licensed under GNU Lesser`

Source:

```console
$ apt-get source -qq --print-uris gnutls28=3.6.5-2
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.6.5-2.dsc' gnutls28_3.6.5-2.dsc 3322 SHA256:9aab02a920f032a25f3edc340c6b4472a2405d8a9e7f37bf189cf79f82a49904
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.6.5.orig.tar.xz' gnutls28_3.6.5.orig.tar.xz 8192888 SHA256:073eced3acef49a3883e69ffd5f0f0b5f46e2760ad86eddc6c0866df4e7abb35
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.6.5.orig.tar.xz.asc' gnutls28_3.6.5.orig.tar.xz.asc 534 SHA256:b7bcc0c18759d5e09b0792dd9f2d46d797e0898b1bf492e44acd9656a762101d
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.6.5-2.debian.tar.xz' gnutls28_3.6.5-2.debian.tar.xz 66192 SHA256:9af7a623034ee1d63365018b54b8acd712143782ad7a3059f3f1656cd0a5d36a
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnutls28/3.6.5-2/ (for browsing the source)
- https://sources.debian.net/src/gnutls28/3.6.5-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnutls28/3.6.5-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `grep=3.1-3`

Binary Packages:

- `grep=3.1-3`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=3.1-3
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.1-3.dsc' grep_3.1-3.dsc 2038 SHA256:6595e7c7a09e762480c9fc6e7f45534de903396f17f71862e939154ec51afbd0
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.1.orig.tar.xz' grep_3.1.orig.tar.xz 1370880 SHA256:db625c7ab3bb3ee757b3926a5cfa8d9e1c3991ad24707a83dde8a5ef2bf7a07e
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.1-3.debian.tar.xz' grep_3.1-3.debian.tar.xz 105700 SHA256:0e549e73f47d007eee51cd49a28eeaee74d9698703b958a5fe0bdab291ddfbaa
```

Other potentially useful URLs:

- https://sources.debian.net/src/grep/3.1-3/ (for browsing the source)
- https://sources.debian.net/src/grep/3.1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/grep/3.1-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gzip=1.9-2.1`

Binary Packages:

- `gzip=1.9-2.1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.9-2.1
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.9-2.1.dsc' gzip_1.9-2.1.dsc 1912 SHA256:ace3096bd2c9d47dc347dc08f9089f55389bf830587db7a21278d6a7c474f50b
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.9.orig.tar.gz' gzip_1.9.orig.tar.gz 1181937 SHA256:5d2d3a3432ef32f24cdb060d278834507b481a75adeca18850c73592f778f6ad
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.9-2.1.debian.tar.xz' gzip_1.9-2.1.debian.tar.xz 11920 SHA256:29993b7057b60729cf3fa929815a3483d63ae4ccfff01554e74099a6d0bec28c
```

Other potentially useful URLs:

- https://sources.debian.net/src/gzip/1.9-2.1/ (for browsing the source)
- https://sources.debian.net/src/gzip/1.9-2.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gzip/1.9-2.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `hostname=3.21`

Binary Packages:

- `hostname=3.21`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.21
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.21.dsc' hostname_3.21.dsc 1398 SHA256:8e61f35d7b3e57833d6110ee22a95af6b12e159bf41a5b659e63b21d01e83121
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.21.tar.gz' hostname_3.21.tar.gz 13467 SHA256:566193a99f97a58f80b1537efe207c798bb88436c31c7dfc6dd4471d888a4a4f
```

Other potentially useful URLs:

- https://sources.debian.net/src/hostname/3.21/ (for browsing the source)
- https://sources.debian.net/src/hostname/3.21/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/hostname/3.21/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `init-system-helpers=1.56+nmu1`

Binary Packages:

- `init-system-helpers=1.56+nmu1`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.56+nmu1
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.56+nmu1.dsc' init-system-helpers_1.56+nmu1.dsc 1945 SHA256:96f7d1c696faf801eb5990223b2782dedaf4092efb9b0dcc13d038b91dbb1a51
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.56+nmu1.tar.xz' init-system-helpers_1.56+nmu1.tar.xz 40488 SHA256:ecb5b9a0dbf0b7e83ef41bfc15bf9d41868642d4d5f817a0962aa1b980a56368
```

Other potentially useful URLs:

- https://sources.debian.net/src/init-system-helpers/1.56+nmu1/ (for browsing the source)
- https://sources.debian.net/src/init-system-helpers/1.56+nmu1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/init-system-helpers/1.56+nmu1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `iproute2=4.19.0-2`

Binary Packages:

- `iproute2=4.19.0-2`

Licenses: (parsed from: `/usr/share/doc/iproute2/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris iproute2=4.19.0-2
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.19.0-2.dsc' iproute2_4.19.0-2.dsc 1884 SHA256:b3c3278e066a44572a9954dd0b61df5bce6ccd1f94d19c7b61a6bd2a75ef738b
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.19.0.orig.tar.xz' iproute2_4.19.0.orig.tar.xz 720408 SHA256:d9ec5ca1f47d8a85416fa26e7dc1cbf5d067640eb60e90bdc1c7e5bdc6a29984
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.19.0-2.debian.tar.xz' iproute2_4.19.0-2.debian.tar.xz 147536 SHA256:df75bf0f47456c4be871310c31317bba1c77fd61551b5c55b5ed8aa36b995de6
```

Other potentially useful URLs:

- https://sources.debian.net/src/iproute2/4.19.0-2/ (for browsing the source)
- https://sources.debian.net/src/iproute2/4.19.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/iproute2/4.19.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `iptables=1.8.2-2`

Binary Packages:

- `libxtables12:amd64=1.8.2-2+b1`

Licenses: (parsed from: `/usr/share/doc/libxtables12/copyright`)

- `Artistic-2`
- `GPL-2`
- `GPL-2+`
- `custom`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/iptables/1.8.2-2/


### `dpkg` source package: `iputils=3:20180629-2`

Binary Packages:

- `iputils-ping=3:20180629-2`

Licenses: (parsed from: `/usr/share/doc/iputils-ping/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris iputils=3:20180629-2
'http://deb.debian.org/debian/pool/main/i/iputils/iputils_20180629-2.dsc' iputils_20180629-2.dsc 2093 SHA256:c377186ea16ebeb404316f562857e2564e3346b7b0cfd9ef72d88498db6bf3b0
'http://deb.debian.org/debian/pool/main/i/iputils/iputils_20180629.orig.tar.bz2' iputils_20180629.orig.tar.bz2 157943 SHA256:1a54fe72d67ac00dae328ddb1952110ee5310ccecbfcb97cbb26d4dedc73fe6d
'http://deb.debian.org/debian/pool/main/i/iputils/iputils_20180629-2.debian.tar.xz' iputils_20180629-2.debian.tar.xz 10212 SHA256:bccf6d3819bbcea59ecade34872fb44f30495baa4878cc32b2ec32b973a7ac58
```

Other potentially useful URLs:

- https://sources.debian.net/src/iputils/3:20180629-2/ (for browsing the source)
- https://sources.debian.net/src/iputils/3:20180629-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/iputils/3:20180629-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `keyutils=1.5.9-9.3`

Binary Packages:

- `libkeyutils1:amd64=1.5.9-9.3`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.5.9-9.3
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.9-9.3.dsc' keyutils_1.5.9-9.3.dsc 2093 SHA256:65c003c2e0796a14f7dac94a3f3c8676e8a00a0c393136ae29a1e563a1aa5f42
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.9.orig.tar.bz2' keyutils_1.5.9.orig.tar.bz2 74683 SHA256:4da2c5552c688b65ab14d4fd40fbdf720c8b396d8ece643e040cf6e707e083ae
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.9-9.3.debian.tar.xz' keyutils_1.5.9-9.3.debian.tar.xz 18236 SHA256:2d4d01cb07ac113341b33190a1eba6524768f575ea0c7309daa656a1f1305ac2
```

Other potentially useful URLs:

- https://sources.debian.net/src/keyutils/1.5.9-9.3/ (for browsing the source)
- https://sources.debian.net/src/keyutils/1.5.9-9.3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/keyutils/1.5.9-9.3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `krb5=1.16.1-1`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.16.1-1`
- `libk5crypto3:amd64=1.16.1-1`
- `libkrb5-3:amd64=1.16.1-1`
- `libkrb5support0:amd64=1.16.1-1`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.16.1-1
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.16.1-1.dsc' krb5_1.16.1-1.dsc 3318 SHA256:1f8cc61d7b29ba4887de0c17504aa64206207da6e46af50eecaef6d0e50a3dfd
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.16.1.orig.tar.gz' krb5_1.16.1.orig.tar.gz 9477480 SHA256:214ffe394e3ad0c730564074ec44f1da119159d94281bbec541dc29168d21117
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.16.1-1.debian.tar.xz' krb5_1.16.1-1.debian.tar.xz 97608 SHA256:3881aefff33f5bfb54c96b1ccd5b20ded07d9890d8dc253acfc260e48d985236
```

Other potentially useful URLs:

- https://sources.debian.net/src/krb5/1.16.1-1/ (for browsing the source)
- https://sources.debian.net/src/krb5/1.16.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/krb5/1.16.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libassuan=2.5.2-1`

Binary Packages:

- `libassuan0:amd64=2.5.2-1`

Licenses: (parsed from: `/usr/share/doc/libassuan0/copyright`)

- `GAP`
- `GAP~FSF`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with libtool exception`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libassuan=2.5.2-1
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_2.5.2-1.dsc' libassuan_2.5.2-1.dsc 1925 SHA256:534810315ca014673a3cc55a63e393ac02c434a4c51d0aff85c7edbcd60fb6e2
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_2.5.2.orig.tar.bz2' libassuan_2.5.2.orig.tar.bz2 570676 SHA256:986b1bf277e375f7a960450fbb8ffbd45294d06598916ad4ebf79aee0cb788e7
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_2.5.2.orig.tar.bz2.asc' libassuan_2.5.2.orig.tar.bz2.asc 1602 SHA256:b518440a68e4a1177f48c75637d9b4016f1a7c4bc46b820dda120a2d63af77ed
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_2.5.2-1.debian.tar.xz' libassuan_2.5.2-1.debian.tar.xz 11168 SHA256:69c1a189a718b289150cd194b9f558d8b2d190e371c6451e26a89b213f4b54f2
```

Other potentially useful URLs:

- https://sources.debian.net/src/libassuan/2.5.2-1/ (for browsing the source)
- https://sources.debian.net/src/libassuan/2.5.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libassuan/2.5.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libbsd=0.9.1-1`

Binary Packages:

- `libbsd0:amd64=0.9.1-1`

Licenses: (parsed from: `/usr/share/doc/libbsd0/copyright`)

- `BSD-2-clause`
- `BSD-2-clause-NetBSD`
- `BSD-2-clause-author`
- `BSD-2-clause-verbatim`
- `BSD-3-clause`
- `BSD-3-clause-John-Birrell`
- `BSD-3-clause-Regents`
- `BSD-3-clause-author`
- `BSD-4-clause-Christopher-G-Demetriou`
- `BSD-4-clause-Niels-Provos`
- `BSD-5-clause-Peter-Wemm`
- `Beerware`
- `Expat`
- `ISC`
- `ISC-Original`
- `public-domain`
- `public-domain-Colin-Plumb`

Source:

```console
$ apt-get source -qq --print-uris libbsd=0.9.1-1
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.9.1-1.dsc' libbsd_0.9.1-1.dsc 2181 SHA256:3082adfec10879cc623b8f714d16ba4b4533705f015bf96c971134c7896bd558
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.9.1.orig.tar.xz' libbsd_0.9.1.orig.tar.xz 387180 SHA256:56d835742327d69faccd16955a60b6dcf30684a8da518c4eca0ac713b9e0a7a4
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.9.1.orig.tar.xz.asc' libbsd_0.9.1.orig.tar.xz.asc 833 SHA256:a34a81f40bfef37242943cb1c4c446e75d57f31be3317c887d8a5f2cbfb5577d
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.9.1-1.debian.tar.xz' libbsd_0.9.1-1.debian.tar.xz 16372 SHA256:f71467eada3bca5bd3ba517dc69372ebc76df224b0e7ebc1761a856637c48c44
```

Other potentially useful URLs:

- https://sources.debian.net/src/libbsd/0.9.1-1/ (for browsing the source)
- https://sources.debian.net/src/libbsd/0.9.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libbsd/0.9.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcap-ng=0.7.9-1`

Binary Packages:

- `libcap-ng0:amd64=0.7.9-1+b1`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.7.9-1
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.9-1.dsc' libcap-ng_0.7.9-1.dsc 1912 SHA256:99dbd0e464b4a8b60ba2afc03b5a8f96827ef51b334afffbfa96a9845c2e8346
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.9.orig.tar.gz' libcap-ng_0.7.9.orig.tar.gz 449038 SHA256:4a1532bcf3731aade40936f6d6a586ed5a66ca4c7455e1338d1f6c3e09221328
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.9-1.debian.tar.xz' libcap-ng_0.7.9-1.debian.tar.xz 5636 SHA256:fb67bc2baaa37e72767d5719917ac8087c6418a3469310b0f1f19d4d9a1a253c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcap-ng/0.7.9-1/ (for browsing the source)
- https://sources.debian.net/src/libcap-ng/0.7.9-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcap-ng/0.7.9-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcap2=1:2.25-1.2`

Binary Packages:

- `libcap2:amd64=1:2.25-1.2`
- `libcap2-bin=1:2.25-1.2`

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`, `/usr/share/doc/libcap2-bin/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libcap2=1:2.25-1.2
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.25-1.2.dsc' libcap2_2.25-1.2.dsc 2230 SHA256:a492c5c61703dcd80e19ff408d8562671fbfe0a03dd93c3570ddf214ac06752b
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.25.orig.tar.xz' libcap2_2.25.orig.tar.xz 63672 SHA256:693c8ac51e983ee678205571ef272439d83afe62dd8e424ea14ad9790bc35162
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.25-1.2.debian.tar.xz' libcap2_2.25-1.2.debian.tar.xz 20912 SHA256:0088bcf76d6cdf1c242431b3b97e91e50120cc2fc2b938dbeb3606dece7d9870
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcap2/1:2.25-1.2/ (for browsing the source)
- https://sources.debian.net/src/libcap2/1:2.25-1.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcap2/1:2.25-1.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libedit=3.1-20181209-1`

Binary Packages:

- `libedit2:amd64=3.1-20181209-1`

Licenses: (parsed from: `/usr/share/doc/libedit2/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20181209-1
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20181209-1.dsc' libedit_3.1-20181209-1.dsc 2129 SHA256:147972bfbdd01d2e34f498327be6964b7c836d23eb6a13c1ab2becf756db5217
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20181209.orig.tar.gz' libedit_3.1-20181209.orig.tar.gz 521931 SHA256:2811d70c0b000f2ca91b7cb1a37203134441743c4fcc9c37b0b687f328611064
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20181209-1.debian.tar.xz' libedit_3.1-20181209-1.debian.tar.xz 14044 SHA256:605baee35b231f631d4ca046a8b7de4c34403ddf7c1bf418cec8cd7e027d9f8c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libedit/3.1-20181209-1/ (for browsing the source)
- https://sources.debian.net/src/libedit/3.1-20181209-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libedit/3.1-20181209-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `liberror-perl=0.17027-1`

Binary Packages:

- `liberror-perl=0.17027-1`

Licenses: (parsed from: `/usr/share/doc/liberror-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`
- `MIT/X11`

Source:

```console
$ apt-get source -qq --print-uris liberror-perl=0.17027-1
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17027-1.dsc' liberror-perl_0.17027-1.dsc 2209 SHA256:28bccf9e1439f16406eeb72c77d53664d05759da712614abac8d499c037c9197
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17027.orig.tar.gz' liberror-perl_0.17027.orig.tar.gz 33260 SHA256:07b2ac8275dfa04144745a6c1900a596280f862b97d22bab0c5ce02682ebd3be
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17027-1.debian.tar.xz' liberror-perl_0.17027-1.debian.tar.xz 4788 SHA256:a183e0f2d015ebc97691773f52253786ee085af457a8f96004e59e7c2821982c
```

Other potentially useful URLs:

- https://sources.debian.net/src/liberror-perl/0.17027-1/ (for browsing the source)
- https://sources.debian.net/src/liberror-perl/0.17027-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/liberror-perl/0.17027-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libffi=3.2.1-9`

Binary Packages:

- `libffi6:amd64=3.2.1-9`

Licenses: (parsed from: `/usr/share/doc/libffi6/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.2.1-9
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.2.1-9.dsc' libffi_3.2.1-9.dsc 2000 SHA256:28beaed76f2ce4c6a3ce1527eb07534c8ef4bf624a42c803fea045c416f8faa5
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.2.1.orig.tar.gz' libffi_3.2.1.orig.tar.gz 940837 SHA256:d06ebb8e1d9a22d19e38d63fdb83954253f39bedc5d46232a05645685722ca37
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.2.1-9.debian.tar.xz' libffi_3.2.1-9.debian.tar.xz 17148 SHA256:26e3cfd358733832da251778bc615a42b908d7779cf8b8d7fc2bdee4660bbbce
```

Other potentially useful URLs:

- https://sources.debian.net/src/libffi/3.2.1-9/ (for browsing the source)
- https://sources.debian.net/src/libffi/3.2.1-9/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libffi/3.2.1-9/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgcrypt20=1.8.4-4`

Binary Packages:

- `libgcrypt20:amd64=1.8.4-4`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.8.4-4
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.4-4.dsc' libgcrypt20_1.8.4-4.dsc 2800 SHA256:1bc22e3eca054626a9d225284173c17ade26e142a716cd0b268a0b6e5706ee25
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.4.orig.tar.bz2' libgcrypt20_1.8.4.orig.tar.bz2 2990108 SHA256:f638143a0672628fde0cad745e9b14deb85dffb175709cacc1f4fe24b93f2227
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.4.orig.tar.bz2.asc' libgcrypt20_1.8.4.orig.tar.bz2.asc 534 SHA256:97df94317ad273cffce4e78ad34ad0664819b44496f6528818a4298a691209a3
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.4-4.debian.tar.xz' libgcrypt20_1.8.4-4.debian.tar.xz 29180 SHA256:5585ee83f9add40562f55b59fbc4261f64bbfafe6f6db99449c5d3dbe3354b60
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgcrypt20/1.8.4-4/ (for browsing the source)
- https://sources.debian.net/src/libgcrypt20/1.8.4-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgcrypt20/1.8.4-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgpg-error=1.33-3`

Binary Packages:

- `libgpg-error0:amd64=1.33-3`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.33-3
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.33-3.dsc' libgpg-error_1.33-3.dsc 2153 SHA256:7b28dcae8db5c93c979a0291d765fa3bca6c84184273ead7ea14c601dfac6758
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.33.orig.tar.bz2' libgpg-error_1.33.orig.tar.bz2 918344 SHA256:5d38826656e746c936e7742d9cde072b50baa3c4c49daa168a56813612bf03ff
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.33.orig.tar.bz2.asc' libgpg-error_1.33.orig.tar.bz2.asc 1068 SHA256:b51bff374fa1df06dd9ddd1bc3529b96f4445af852b4d84becc6ea9fdf65cb93
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.33-3.debian.tar.xz' libgpg-error_1.33-3.debian.tar.xz 15996 SHA256:9e5dd6848849e64ceb53d4846888c35495ad74c3e64ee6c32c12019a94496be2
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgpg-error/1.33-3/ (for browsing the source)
- https://sources.debian.net/src/libgpg-error/1.33-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgpg-error/1.33-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libidn2=2.0.5-1`

Binary Packages:

- `libidn2-0:amd64=2.0.5-1`

Licenses: (parsed from: `/usr/share/doc/libidn2-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-3`
- `LGPL-3+`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris libidn2=2.0.5-1
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.0.5-1.dsc' libidn2_2.0.5-1.dsc 2444 SHA256:e35fbdf3b14d0a46e62ebde16345d6e70700972791cfc59df5d9d9b7088f7284
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.0.5.orig.tar.gz' libidn2_2.0.5.orig.tar.gz 2091929 SHA256:53f69170886f1fa6fa5b332439c7a77a7d22626a82ef17e2c1224858bb4ca2b8
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.0.5-1.debian.tar.xz' libidn2_2.0.5-1.debian.tar.xz 10285396 SHA256:e86f9ef6dfa45a35008851a688e020cbe0a2772437cdaa6381ed2704bf1e774d
```

Other potentially useful URLs:

- https://sources.debian.net/src/libidn2/2.0.5-1/ (for browsing the source)
- https://sources.debian.net/src/libidn2/2.0.5-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libidn2/2.0.5-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libksba=1.3.5-2`

Binary Packages:

- `libksba8:amd64=1.3.5-2`

Licenses: (parsed from: `/usr/share/doc/libksba8/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris libksba=1.3.5-2
'http://deb.debian.org/debian/pool/main/libk/libksba/libksba_1.3.5-2.dsc' libksba_1.3.5-2.dsc 2526 SHA256:4fd08fd129f97ab1df86c220b88b7b2c6e4e04aa90bfd3ae364d18022256bef8
'http://deb.debian.org/debian/pool/main/libk/libksba/libksba_1.3.5.orig.tar.bz2' libksba_1.3.5.orig.tar.bz2 620649 SHA256:41444fd7a6ff73a79ad9728f985e71c9ba8cd3e5e53358e70d5f066d35c1a340
'http://deb.debian.org/debian/pool/main/libk/libksba/libksba_1.3.5.orig.tar.bz2.asc' libksba_1.3.5.orig.tar.bz2.asc 287 SHA256:a954b03144ee882c838853da24fd7b6868b78df72a18c71079217d968698a76f
'http://deb.debian.org/debian/pool/main/libk/libksba/libksba_1.3.5-2.debian.tar.xz' libksba_1.3.5-2.debian.tar.xz 13852 SHA256:98c985bff973be1aecc702fa15887ff1e5b8de481d1dc3e99423a587754eaabd
```

Other potentially useful URLs:

- https://sources.debian.net/src/libksba/1.3.5-2/ (for browsing the source)
- https://sources.debian.net/src/libksba/1.3.5-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libksba/1.3.5-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libmnl=1.0.4-2`

Binary Packages:

- `libmnl0:amd64=1.0.4-2`

Licenses: (parsed from: `/usr/share/doc/libmnl0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libmnl=1.0.4-2
'http://deb.debian.org/debian/pool/main/libm/libmnl/libmnl_1.0.4-2.dsc' libmnl_1.0.4-2.dsc 1994 SHA256:131106bb7eb4a94fa8e8c135f92c38068d0b42681f166eb159137f171c568630
'http://deb.debian.org/debian/pool/main/libm/libmnl/libmnl_1.0.4.orig.tar.bz2' libmnl_1.0.4.orig.tar.bz2 301270 SHA256:171f89699f286a5854b72b91d06e8f8e3683064c5901fb09d954a9ab6f551f81
'http://deb.debian.org/debian/pool/main/libm/libmnl/libmnl_1.0.4-2.debian.tar.xz' libmnl_1.0.4-2.debian.tar.xz 7512 SHA256:208d62777081ffe6d7dffde0d7370cefb03fe0a6a0486a1b50f6b7b8e9a5b068
```

Other potentially useful URLs:

- https://sources.debian.net/src/libmnl/1.0.4-2/ (for browsing the source)
- https://sources.debian.net/src/libmnl/1.0.4-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libmnl/1.0.4-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpsl=0.20.2-2`

Binary Packages:

- `libpsl5:amd64=0.20.2-2`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.20.2-2
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.20.2-2.dsc' libpsl_0.20.2-2.dsc 1637 SHA256:ae401852522d748f1222b91734bc5bd7c6db0de843dd675adc180f2a1884c94d
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.20.2.orig.tar.gz' libpsl_0.20.2.orig.tar.gz 8590430 SHA256:94d2b5e00e9aa761ae7efbaa67edc00d5298487ed9706eb4789e349012993c31
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.20.2-2.debian.tar.xz' libpsl_0.20.2-2.debian.tar.xz 9920 SHA256:1f008454fdb973964202020fb700d5028e001b7eaa4e77eeab8ebc99b749ea51
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpsl/0.20.2-2/ (for browsing the source)
- https://sources.debian.net/src/libpsl/0.20.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpsl/0.20.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libseccomp=2.3.3-3`

Binary Packages:

- `libseccomp2:amd64=2.3.3-3`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.3.3-3
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.3.3-3.dsc' libseccomp_2.3.3-3.dsc 2415 SHA256:2627e4d5c7386d839e7310d6aaf57292fedae5a9b123592a2550d6b88f884f8f
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.3.3.orig.tar.gz' libseccomp_2.3.3.orig.tar.gz 564546 SHA256:7fc28f4294cc72e61c529bedf97e705c3acf9c479a8f1a3028d4cd2ca9f3b155
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.3.3-3.debian.tar.xz' libseccomp_2.3.3-3.debian.tar.xz 11860 SHA256:46f218c83627571e7c28edcc351b15ad4a783f0cf92ca8a85f28e7dccaed6c22
```

Other potentially useful URLs:

- https://sources.debian.net/src/libseccomp/2.3.3-3/ (for browsing the source)
- https://sources.debian.net/src/libseccomp/2.3.3-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libseccomp/2.3.3-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libselinux=2.8-1`

Binary Packages:

- `libselinux1:amd64=2.8-1+b1`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.8-1
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.8-1.dsc' libselinux_2.8-1.dsc 2347 SHA256:0f08d64f4488312a8e8b7ffb12771cd385560752473a2e585449edc27223c129
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.8.orig.tar.gz' libselinux_2.8.orig.tar.gz 187759 SHA256:31db96ec7643ce10912b3c3f98506a08a9116dcfe151855fd349c3fda96187e1
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.8-1.debian.tar.xz' libselinux_2.8-1.debian.tar.xz 23052 SHA256:a0b150e870a3da7e1d7b0fec7c1a5ae6988a0985e545c69cfe8fe05363c5bf64
```

Other potentially useful URLs:

- https://sources.debian.net/src/libselinux/2.8-1/ (for browsing the source)
- https://sources.debian.net/src/libselinux/2.8-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libselinux/2.8-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsemanage=2.8-1`

Binary Packages:

- `libsemanage-common=2.8-1`
- `libsemanage1:amd64=2.8-1+b1`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.8-1
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.8-1.dsc' libsemanage_2.8-1.dsc 2434 SHA256:2e32bce21b51dd850ab11b10d59af5b781afdd4932b85c55b9fc27a3a3143757
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.8.orig.tar.gz' libsemanage_2.8.orig.tar.gz 154200 SHA256:1c0de8d2c51e5460926c21e371105c84a39087dfd8f8e9f0cc1d017e4cbea8e2
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.8-1.debian.tar.xz' libsemanage_2.8-1.debian.tar.xz 16964 SHA256:981fc945171e61c18af2e57a501cb1f26886b25a21daf3d8f9e1e25ddf07b722
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsemanage/2.8-1/ (for browsing the source)
- https://sources.debian.net/src/libsemanage/2.8-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsemanage/2.8-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsepol=2.8-1`

Binary Packages:

- `libsepol1:amd64=2.8-1`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.8-1
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.8-1.dsc' libsepol_2.8-1.dsc 1792 SHA256:37b0b79ab0f7533c194272809ccb3f3c5ff788536f66254c0d405e2e8b2b270e
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.8.orig.tar.gz' libsepol_2.8.orig.tar.gz 473384 SHA256:3ad6916a8352bef0bad49acc8037a5f5b48c56f94e4cb4e1959ca475fa9d24d6
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.8-1.debian.tar.xz' libsepol_2.8-1.debian.tar.xz 14076 SHA256:7b8d0b47396c96830754db2e5b679d294486aeffd93cfd21ac68202031374a00
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsepol/2.8-1/ (for browsing the source)
- https://sources.debian.net/src/libsepol/2.8-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsepol/2.8-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libssh2=1.8.0-2`

Binary Packages:

- `libssh2-1:amd64=1.8.0-2`

Licenses: (parsed from: `/usr/share/doc/libssh2-1/copyright`)

- `BSD3`

Source:

```console
$ apt-get source -qq --print-uris libssh2=1.8.0-2
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.8.0-2.dsc' libssh2_1.8.0-2.dsc 1447 SHA256:a3ab2120a472d0a886114ca62b44186550c060c82124616326ca8da11b2e8c7d
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.8.0.orig.tar.gz' libssh2_1.8.0.orig.tar.gz 846989 SHA256:4382d33de790b28f862e53ed59ffbd65f3def7a06e8b6e9ca1b6f70453b4d5e0
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.8.0-2.debian.tar.xz' libssh2_1.8.0-2.debian.tar.xz 7460 SHA256:2c9c438e77ed1bc84f4fc130a8018e935862a251b01749c8b79d89df655b5480
```

Other potentially useful URLs:

- https://sources.debian.net/src/libssh2/1.8.0-2/ (for browsing the source)
- https://sources.debian.net/src/libssh2/1.8.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libssh2/1.8.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtasn1-6=4.13-3`

Binary Packages:

- `libtasn1-6:amd64=4.13-3`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.13-3
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.13-3.dsc' libtasn1-6_4.13-3.dsc 2574 SHA256:15a984daba0bc64819a1203cd28a1e869a30e0edde227237e4cdcfbc86131227
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.13.orig.tar.gz' libtasn1-6_4.13.orig.tar.gz 1891703 SHA256:7e528e8c317ddd156230c4e31d082cd13e7ddeb7a54824be82632209550c8cca
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.13.orig.tar.gz.asc' libtasn1-6_4.13.orig.tar.gz.asc 774 SHA256:90261376528edf44831d1369847088cc2fb48669860d343961daca42e674b226
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.13-3.debian.tar.xz' libtasn1-6_4.13-3.debian.tar.xz 63384 SHA256:1428c31d3d900d8fa1946fc29d9d2839c73c7a4c0ebff7a2571c134aef53c310
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtasn1-6/4.13-3/ (for browsing the source)
- https://sources.debian.net/src/libtasn1-6/4.13-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtasn1-6/4.13-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libunistring=0.9.10-1`

Binary Packages:

- `libunistring2:amd64=0.9.10-1`

Licenses: (parsed from: `/usr/share/doc/libunistring2/copyright`)

- `FreeSoftware`
- `GFDL-1.2`
- `GFDL-1.2+`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with distribution exception`
- `GPL-3`
- `GPL-3+`
- `LGPL-3`
- `LGPL-3+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libunistring=0.9.10-1
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.10-1.dsc' libunistring_0.9.10-1.dsc 2206 SHA256:2118b96b1125399556bd95b8917cd559c4e9afe8d85861b01435f9635cefcdf2
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.10.orig.tar.xz' libunistring_0.9.10.orig.tar.xz 2051320 SHA256:eb8fb2c3e4b6e2d336608377050892b54c3c983b646c561836550863003c05d7
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.10.orig.tar.xz.asc' libunistring_0.9.10.orig.tar.xz.asc 1310 SHA256:e1606f691034fa21b00e08269622743547c16d21cca6c8a64156b4774a49e78e
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.10-1.debian.tar.xz' libunistring_0.9.10-1.debian.tar.xz 40328 SHA256:dd4d07437e6332003e702aa2f56911a21091ac6f10d0cdc17aaaaa8e29ad63b7
```

Other potentially useful URLs:

- https://sources.debian.net/src/libunistring/0.9.10-1/ (for browsing the source)
- https://sources.debian.net/src/libunistring/0.9.10-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libunistring/0.9.10-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libzstd=1.3.5+dfsg-1`

Binary Packages:

- `libzstd1:amd64=1.3.5+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.3.5+dfsg-1
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.3.5+dfsg-1.dsc' libzstd_1.3.5+dfsg-1.dsc 2155 SHA256:a53d833a1b5c8412e30575452dbfc7c5e9ea85934557413f24d5ac9842c2f1db
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.3.5+dfsg.orig.tar.xz' libzstd_1.3.5+dfsg.orig.tar.xz 1185104 SHA256:c7517111ed4d4f1a6982ef8064dc311d9ff62a2f58059cae1a8ffa9743fafccd
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.3.5+dfsg-1.debian.tar.xz' libzstd_1.3.5+dfsg-1.debian.tar.xz 9940 SHA256:5217f4e433b5786363874a8c871373f761860fac04cf3a9cbbde0671fc5d603c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libzstd/1.3.5+dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/libzstd/1.3.5+dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libzstd/1.3.5+dfsg-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lsb=10.2018112800`

Binary Packages:

- `lsb-base=10.2018112800`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=10.2018112800
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_10.2018112800.dsc' lsb_10.2018112800.dsc 1695 SHA256:8b280e3fbf938eead60d64c92d23425968b44edd91fcbed8c9206c25229616c9
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_10.2018112800.tar.xz' lsb_10.2018112800.tar.xz 42076 SHA256:5a3469feef00979bdc00f85607c35df9f45ff312a44c91179400d63300184c08
```

Other potentially useful URLs:

- https://sources.debian.net/src/lsb/10.2018112800/ (for browsing the source)
- https://sources.debian.net/src/lsb/10.2018112800/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lsb/10.2018112800/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lz4=1.8.2-1`

Binary Packages:

- `liblz4-1:amd64=1.8.2-1`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=1.8.2-1
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.8.2-1.dsc' lz4_1.8.2-1.dsc 1932 SHA256:6a1c72b10315b91bf0a7ccd48097feb621f04a5c795b66d7d35fe05fc9d0b908
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.8.2.orig.tar.gz' lz4_1.8.2.orig.tar.gz 320742 SHA256:0963fbe9ee90acd1d15e9f09e826eaaf8ea0312e854803caf2db0a6dd40f4464
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.8.2-1.debian.tar.xz' lz4_1.8.2-1.debian.tar.xz 10948 SHA256:c3635bbb067b8544b29057dfc39d9f884ce06fd95afcf579d9b9f912a2765be4
```

Other potentially useful URLs:

- https://sources.debian.net/src/lz4/1.8.2-1/ (for browsing the source)
- https://sources.debian.net/src/lz4/1.8.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lz4/1.8.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mawk=1.3.3-17`

Binary Packages:

- `mawk=1.3.3-17+b3`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.3-17
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.3-17.dsc' mawk_1.3.3-17.dsc 1801 SHA256:f98ce6e153e8ac1faf8165bbf77447a4279313f1c18f6bfeec0c5ce35e4b9c03
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.3.orig.tar.gz' mawk_1.3.3.orig.tar.gz 209942 SHA256:32649c46063d4ef0777a12ae6e9a26bcc920833d54e1abca7edb8d37481e7485
'http://deb.debian.org/debian/pool/main/m/mawk/mawk_1.3.3-17.diff.gz' mawk_1.3.3-17.diff.gz 63506 SHA256:13cb66b6eb5ee654d5626621d5ef476ede6b0bebac18ce765516de810e58490c
```

Other potentially useful URLs:

- https://sources.debian.net/src/mawk/1.3.3-17/ (for browsing the source)
- https://sources.debian.net/src/mawk/1.3.3-17/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mawk/1.3.3-17/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mercurial=4.8.1-2`

Binary Packages:

- `mercurial=4.8.1-2`
- `mercurial-common=4.8.1-2`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris mercurial=4.8.1-2
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_4.8.1-2.dsc' mercurial_4.8.1-2.dsc 2642 SHA256:76b5a10386e28f441a9851db687b068ff3a625f623f5a0053efd392ee6a62589
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_4.8.1.orig.tar.gz' mercurial_4.8.1.orig.tar.gz 6869733 SHA256:48a45f5cde9104fbc2daf310d710d4ebf286d879b89fa327d24b005434b0fa21
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_4.8.1.orig.tar.gz.asc' mercurial_4.8.1.orig.tar.gz.asc 833 SHA256:c5e9b57d3d64a918a465cff202861680ccb3fe25b0a17d4dc33b37371a2e0407
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_4.8.1-2.debian.tar.xz' mercurial_4.8.1-2.debian.tar.xz 62760 SHA256:95a73c7c8db020a509ac9bd4481ea030cbaedf21cfad6fde2fd86bf478a32912
```

Other potentially useful URLs:

- https://sources.debian.net/src/mercurial/4.8.1-2/ (for browsing the source)
- https://sources.debian.net/src/mercurial/4.8.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mercurial/4.8.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mime-support=3.61`

Binary Packages:

- `mime-support=3.61`

Licenses: (parsed from: `/usr/share/doc/mime-support/copyright`)

- `Bellcore`
- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris mime-support=3.61
'http://deb.debian.org/debian/pool/main/m/mime-support/mime-support_3.61.dsc' mime-support_3.61.dsc 1588 SHA256:a96dc8d9e5ac4e7b58b666606373b6fa9dde9c07eb049bb141d9c185dac50b80
'http://deb.debian.org/debian/pool/main/m/mime-support/mime-support_3.61.tar.gz' mime-support_3.61.tar.gz 36436 SHA256:027fa5b709b3dabfb8dcdf68ab8c59e1f534a37eb1d1b5160ee1fd788103131d
```

Other potentially useful URLs:

- https://sources.debian.net/src/mime-support/3.61/ (for browsing the source)
- https://sources.debian.net/src/mime-support/3.61/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mime-support/3.61/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ncurses=6.1+20181013-1`

Binary Packages:

- `libncurses6:amd64=6.1+20181013-1`
- `libncursesw6:amd64=6.1+20181013-1`
- `libtinfo6:amd64=6.1+20181013-1`
- `ncurses-base=6.1+20181013-1`
- `ncurses-bin=6.1+20181013-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=6.1+20181013-1
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.1+20181013-1.dsc' ncurses_6.1+20181013-1.dsc 4147 SHA256:76a68c5955b24cbd1a0b4c68c7013ef912afccdd1f4d031291ea8457e5e69858
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.1+20181013.orig.tar.gz' ncurses_6.1+20181013.orig.tar.gz 3411288 SHA256:aeb1d098ee90b39a763b57b00da19ff5bbb573dea077f98fbd85d59444bb3b59
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.1+20181013.orig.tar.gz.asc' ncurses_6.1+20181013.orig.tar.gz.asc 251 SHA256:865931406e519909a4d0ab87b14d0c6d3ebccb7b3e0dac5c6095f0dfce5e14cf
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.1+20181013-1.debian.tar.xz' ncurses_6.1+20181013-1.debian.tar.xz 60112 SHA256:df50810d9de6f973adc409aa07b03ee280f53784b8fdc2d5f5ca0d55ab0e7eba
```

Other potentially useful URLs:

- https://sources.debian.net/src/ncurses/6.1+20181013-1/ (for browsing the source)
- https://sources.debian.net/src/ncurses/6.1+20181013-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ncurses/6.1+20181013-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `netbase=5.5`

Binary Packages:

- `netbase=5.5`

Licenses: (parsed from: `/usr/share/doc/netbase/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris netbase=5.5
'http://deb.debian.org/debian/pool/main/n/netbase/netbase_5.5.dsc' netbase_5.5.dsc 1297 SHA256:eba0f70b861291aadffc990b4fa39cd59d9cdb0a0ed63399eac2af217b9fc0cd
'http://deb.debian.org/debian/pool/main/n/netbase/netbase_5.5.tar.xz' netbase_5.5.tar.xz 31668 SHA256:309bddc69a43b98e5a450992b70cdfc0e3d1afb9107bc631d04b0714be98f88b
```

Other potentially useful URLs:

- https://sources.debian.net/src/netbase/5.5/ (for browsing the source)
- https://sources.debian.net/src/netbase/5.5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/netbase/5.5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nettle=3.4.1~rc1-1`

Binary Packages:

- `libhogweed4:amd64=3.4.1~rc1-1`
- `libnettle6:amd64=3.4.1~rc1-1`

Licenses: (parsed from: `/usr/share/doc/libhogweed4/copyright`, `/usr/share/doc/libnettle6/copyright`)

- `GAP`
- `GPL`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `LGPL`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1+`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris nettle=3.4.1~rc1-1
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.4.1~rc1-1.dsc' nettle_3.4.1~rc1-1.dsc 2295 SHA256:ab711e28d9020027e0ceb30f050011b9b8143a5fb2576651aa05cc2d42c730fe
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.4.1~rc1.orig.tar.gz' nettle_3.4.1~rc1.orig.tar.gz 1946834 SHA256:5a380e9a7b5e4dde2c1aff4de090ed365500046c7c24c2de06933ed09262c1b5
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.4.1~rc1.orig.tar.gz.asc' nettle_3.4.1~rc1.orig.tar.gz.asc 619 SHA256:330e8930e9dd4f45a4088ab040efa25d10a9b2cb59063ca633bf577c60f3ac5a
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.4.1~rc1-1.debian.tar.xz' nettle_3.4.1~rc1-1.debian.tar.xz 19944 SHA256:1a1ff44d507291aa6df8a61b1666312fba4b563f94fd44f66d9d5f41583bfe60
```

Other potentially useful URLs:

- https://sources.debian.net/src/nettle/3.4.1~rc1-1/ (for browsing the source)
- https://sources.debian.net/src/nettle/3.4.1~rc1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nettle/3.4.1~rc1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nghttp2=1.35.1-1`

Binary Packages:

- `libnghttp2-14:amd64=1.35.1-1`

Licenses: (parsed from: `/usr/share/doc/libnghttp2-14/copyright`)

- `BSD-2-clause`
- `Expat`
- `GPL-3`
- `GPL-3+ with autoconf exception`
- `MIT`
- `SIL-OFL-1.1`
- `all-permissive`

Source:

```console
$ apt-get source -qq --print-uris nghttp2=1.35.1-1
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.35.1-1.dsc' nghttp2_1.35.1-1.dsc 2560 SHA256:94fcfae8c2260d727cce48821d4d3b8e84e2049554b6f66a34f72f78becd66f5
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.35.1.orig.tar.bz2' nghttp2_1.35.1.orig.tar.bz2 1896676 SHA256:55edce494fa2e50a730f1c2377f13694b8813a59d7ff43b4f3060dc5664f1308
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.35.1-1.debian.tar.xz' nghttp2_1.35.1-1.debian.tar.xz 12516 SHA256:a8d6bd0c5bde6046430db9dc8087fb3e4683b708d5ca049758c19ca6d7f8f9f4
```

Other potentially useful URLs:

- https://sources.debian.net/src/nghttp2/1.35.1-1/ (for browsing the source)
- https://sources.debian.net/src/nghttp2/1.35.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nghttp2/1.35.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `npth=1.6-1`

Binary Packages:

- `libnpth0:amd64=1.6-1`

Licenses: (parsed from: `/usr/share/doc/libnpth0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris npth=1.6-1
'http://deb.debian.org/debian/pool/main/n/npth/npth_1.6-1.dsc' npth_1.6-1.dsc 1925 SHA256:2c327ce494f702482e79ed620445cba303c4449dd0768fecee3ee7d5ade2544a
'http://deb.debian.org/debian/pool/main/n/npth/npth_1.6.orig.tar.bz2' npth_1.6.orig.tar.bz2 300486 SHA256:1393abd9adcf0762d34798dc34fdcf4d0d22a8410721e76f1e3afcd1daa4e2d1
'http://deb.debian.org/debian/pool/main/n/npth/npth_1.6-1.debian.tar.xz' npth_1.6-1.debian.tar.xz 10532 SHA256:d312d4a3cf1d082e2f2cf3ea752c41d34f7e120f77a941c6c1680e6093834353
```

Other potentially useful URLs:

- https://sources.debian.net/src/npth/1.6-1/ (for browsing the source)
- https://sources.debian.net/src/npth/1.6-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/npth/1.6-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openldap=2.4.47+dfsg-1`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.47+dfsg-1`
- `libldap-common=2.4.47+dfsg-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.47+dfsg-1
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.47+dfsg-1.dsc' openldap_2.4.47+dfsg-1.dsc 2711 SHA256:788f52ae27f4f17e08dd8f2dceeca105de2429a6614403a661e69d24fcdba911
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.47+dfsg.orig.tar.gz' openldap_2.4.47+dfsg.orig.tar.gz 4872293 SHA256:8f1ac7a4be7dd8ef158361efbfe16509756d3d9b396f5f378c3cf5c727807651
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.47+dfsg-1.debian.tar.xz' openldap_2.4.47+dfsg-1.debian.tar.xz 163088 SHA256:28b6ed38dafb4e4c50e63e0c8698f394b41ef172020f7c154cce213d8c5616bc
```

Other potentially useful URLs:

- https://sources.debian.net/src/openldap/2.4.47+dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/openldap/2.4.47+dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openldap/2.4.47+dfsg-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openssh=1:7.9p1-4`

Binary Packages:

- `openssh-client=1:7.9p1-4`

Licenses: (parsed from: `/usr/share/doc/openssh-client/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Beer-ware`
- `Expat-with-advertising-restriction`
- `Mazieres-BSD-style`
- `OpenSSH`
- `Powell-BSD-style`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris openssh=1:7.9p1-4
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.9p1-4.dsc' openssh_7.9p1-4.dsc 3177 SHA256:7b9711203267e94b6af7ee58422c77540f708271d6b6baa1d42f925b1bb1e7d8
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.9p1.orig.tar.gz' openssh_7.9p1.orig.tar.gz 1565384 SHA256:6b4b3ba2253d84ed3771c8050728d597c91cfce898713beb7b64a305b6f11aad
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.9p1.orig.tar.gz.asc' openssh_7.9p1.orig.tar.gz.asc 683 SHA256:4fd584498595450d68f5514b3d79eb14425a3d6aa9e9021d9e928fdd7b4469eb
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.9p1-4.debian.tar.xz' openssh_7.9p1-4.debian.tar.xz 163620 SHA256:2e563309ffaf4dac9ef915008bd5f0a501bb4f606e363daae0bee51d8622e022
```

Other potentially useful URLs:

- https://sources.debian.net/src/openssh/1:7.9p1-4/ (for browsing the source)
- https://sources.debian.net/src/openssh/1:7.9p1-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openssh/1:7.9p1-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openssl=1.1.1a-1`

Binary Packages:

- `libssl1.1:amd64=1.1.1a-1`
- `openssl=1.1.1a-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.1.1a-1
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1a-1.dsc' openssl_1.1.1a-1.dsc 2614 SHA256:eac8539af9649140a1bdfb6b01e13bcda48de293c2f71130ac3db2f31d77d64d
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1a.orig.tar.gz' openssl_1.1.1a.orig.tar.gz 8350547 SHA256:fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1a.orig.tar.gz.asc' openssl_1.1.1a.orig.tar.gz.asc 488 SHA256:2e8bbc4766a3d72857538e99074433eae16bf32530b08625d65312bfc569dd7b
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1a-1.debian.tar.xz' openssl_1.1.1a-1.debian.tar.xz 83672 SHA256:30e1d3c9ca2ccba55df25622a0b48df702cd3339a25f1b3e9b6b601d126be00d
```

Other potentially useful URLs:

- https://sources.debian.net/src/openssl/1.1.1a-1/ (for browsing the source)
- https://sources.debian.net/src/openssl/1.1.1a-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openssl/1.1.1a-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `p11-kit=0.23.14-2`

Binary Packages:

- `libp11-kit0:amd64=0.23.14-2`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `ISC`
- `ISC+IBM`
- `permissive-like-automake-output`
- `same-as-rest-of-p11kit`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.23.14-2
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.14-2.dsc' p11-kit_0.23.14-2.dsc 2434 SHA256:2ea1f051714e892ee7a25d90c7f99185a2e33e15e0f7a5dce662eadb7428b66c
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.14.orig.tar.gz' p11-kit_0.23.14.orig.tar.gz 1266595 SHA256:1cb9fa6d237539f25f62f4c3d4ec71a1c8e0772957ec45ec5af92134129e0d70
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.14.orig.tar.gz.asc' p11-kit_0.23.14.orig.tar.gz.asc 900 SHA256:4ddc9b86cfed20c5456eb19ba3bc229ec9e0292a6b556c5727f94872b6039d97
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.14-2.debian.tar.xz' p11-kit_0.23.14-2.debian.tar.xz 22068 SHA256:da76f34e8deb921a4efac16ef2f0ddfcfc8c0faecb1293ef70ea364f28e21fe0
```

Other potentially useful URLs:

- https://sources.debian.net/src/p11-kit/0.23.14-2/ (for browsing the source)
- https://sources.debian.net/src/p11-kit/0.23.14-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/p11-kit/0.23.14-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pam=1.1.8-3.8`

Binary Packages:

- `libpam-modules:amd64=1.1.8-3.8`
- `libpam-modules-bin=1.1.8-3.8`
- `libpam-runtime=1.1.8-3.8`
- `libpam0g:amd64=1.1.8-3.8`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.1.8-3.8
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.8-3.8.dsc' pam_1.1.8-3.8.dsc 2572 SHA256:1c53c38c71bdba71a5d1e5767cbae505e176b9220e0c07e078309493055c753f
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.8.orig.tar.gz' pam_1.1.8.orig.tar.gz 1892765 SHA256:4183409a450708a976eca5af561dbf4f0490141a08e86e4a1e649c7c1b094876
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.8-3.8.diff.gz' pam_1.1.8-3.8.diff.gz 138822 SHA256:10e5623f5433460ea05da9cdcb604494a847b4b759102b83dc11e4cf43d59e48
```

Other potentially useful URLs:

- https://sources.debian.net/src/pam/1.1.8-3.8/ (for browsing the source)
- https://sources.debian.net/src/pam/1.1.8-3.8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pam/1.1.8-3.8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pcre2=10.32-3`

Binary Packages:

- `libpcre2-8-0:amd64=10.32-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre2=10.32-3
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.32-3.dsc' pcre2_10.32-3.dsc 2342 SHA256:f6f132d2b46dffaa28d0a1a7c50784436643b5785817ae0d9d260061f8bfd35c
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.32.orig.tar.gz' pcre2_10.32.orig.tar.gz 2169349 SHA256:9ca9be72e1a04f22be308323caa8c06ebd0c51efe99ee11278186cafbc4fe3af
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.32-3.diff.gz' pcre2_10.32-3.diff.gz 4783 SHA256:13bd373a46ce706aa70fb7cb880041f74061636377ea96bdfecda0378eb8936c
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcre2/10.32-3/ (for browsing the source)
- https://sources.debian.net/src/pcre2/10.32-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcre2/10.32-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pcre3=2:8.39-11`

Binary Packages:

- `libpcre3:amd64=2:8.39-11`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-11
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-11.dsc' pcre3_8.39-11.dsc 2226 SHA256:50738a8e55d4bdc10fd6eecc623170d0657bd15805e630d82bc90d722fcbc435
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA256:b858099f82483031ee02092711689e7245586ada49e534a06e678b8ea9549e8b
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-11.debian.tar.gz' pcre3_8.39-11.debian.tar.gz 26414 SHA256:de1f66246fe7b4e85fba0f9e3bac69bdf3271a9c5c6b7ac0661b20051c012883
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcre3/2:8.39-11/ (for browsing the source)
- https://sources.debian.net/src/pcre3/2:8.39-11/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcre3/2:8.39-11/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `perl=5.28.1-3`

Binary Packages:

- `libperl5.28:amd64=5.28.1-3`
- `perl=5.28.1-3`
- `perl-base=5.28.1-3`
- `perl-modules-5.28=5.28.1-3`

Licenses: (parsed from: `/usr/share/doc/libperl5.28/copyright`, `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules-5.28/copyright`)

- `Artistic`
- `Artistic,`
- `Artistic-2`
- `Artistic-dist`
- `BSD-3-clause`
- `BSD-3-clause-GENERIC`
- `BSD-3-clause-with-weird-numbering`
- `BSD-4-clause-POWERDOG`
- `BZIP`
- `CC0-1.0`
- `DONT-CHANGE-THE-GPL`
- `Expat`
- `GPL-1`
- `GPL-1+`
- `GPL-2`
- `GPL-2+`
- `GPL-3+-WITH-BISON-EXCEPTION`
- `HSIEH-BSD`
- `HSIEH-DERIVATIVE`
- `LGPL-2.1`
- `REGCOMP`
- `REGCOMP,`
- `RRA-KEEP-THIS-NOTICE`
- `S2P`
- `SDBM-PUBLIC-DOMAIN`
- `TEXT-TABS`
- `Unicode`
- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris perl=5.28.1-3
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.28.1-3.dsc' perl_5.28.1-3.dsc 2823 SHA256:f58dbac4eb5cf2bf112dc750a92a8bf4499c2d65ab18df465f068cc5f0e38be3
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.28.1.orig-regen-configure.tar.xz' perl_5.28.1.orig-regen-configure.tar.xz 411944 SHA256:5873b81af4514d3910ab1a8267b15ff8c0e2100dbae4edfd10b65ef72cd31ef8
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.28.1.orig.tar.xz' perl_5.28.1.orig.tar.xz 12372080 SHA256:fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.28.1-3.debian.tar.xz' perl_5.28.1-3.debian.tar.xz 171304 SHA256:3d002ef47e9d6e5b978e96b109e2f1a25e2133a6ce30e58c33493633e655cf45
```

Other potentially useful URLs:

- https://sources.debian.net/src/perl/5.28.1-3/ (for browsing the source)
- https://sources.debian.net/src/perl/5.28.1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/perl/5.28.1-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pinentry=1.1.0-1`

Binary Packages:

- `pinentry-curses=1.1.0-1+b1`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pinentry=1.1.0-1
'http://deb.debian.org/debian/pool/main/p/pinentry/pinentry_1.1.0-1.dsc' pinentry_1.1.0-1.dsc 2910 SHA256:8cda3442923c0e18f9c3d5a2817a97a54db7447046b9c469e890abd19c680247
'http://deb.debian.org/debian/pool/main/p/pinentry/pinentry_1.1.0.orig.tar.bz2' pinentry_1.1.0.orig.tar.bz2 467702 SHA256:68076686fa724a290ea49cdf0d1c0c1500907d1b759a3bcbfbec0293e8f56570
'http://deb.debian.org/debian/pool/main/p/pinentry/pinentry_1.1.0.orig.tar.bz2.asc' pinentry_1.1.0.orig.tar.bz2.asc 534 SHA256:0e3a7633b9fddf9c01c3dcf74aeb94888cc6d5d233f0b8357b0b9c1a1fed9a73
'http://deb.debian.org/debian/pool/main/p/pinentry/pinentry_1.1.0-1.debian.tar.xz' pinentry_1.1.0-1.debian.tar.xz 15408 SHA256:ddee92638e762f125ac09b86b4f3b31e2d240e8d2dcce940302293bb2ea0873e
```

Other potentially useful URLs:

- https://sources.debian.net/src/pinentry/1.1.0-1/ (for browsing the source)
- https://sources.debian.net/src/pinentry/1.1.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pinentry/1.1.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `procps=2:3.3.15-2`

Binary Packages:

- `libprocps7:amd64=2:3.3.15-2`
- `procps=2:3.3.15-2`

Licenses: (parsed from: `/usr/share/doc/libprocps7/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.15-2
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.15-2.dsc' procps_3.3.15-2.dsc 2104 SHA256:c7f695ddba2fdf0c3b9de5c38de22713a7046dd9e4a141d59155f4dd62008b32
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.15.orig.tar.xz' procps_3.3.15.orig.tar.xz 903372 SHA256:82e8aa55b65eac116eee05f00d2a884a6374760d57100edd429d6e9b4953458d
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.15-2.debian.tar.xz' procps_3.3.15-2.debian.tar.xz 28060 SHA256:4e90c4129744b726929990239139fde29ab4e438d65d75f5d4c479ead2001aed
```

Other potentially useful URLs:

- https://sources.debian.net/src/procps/2:3.3.15-2/ (for browsing the source)
- https://sources.debian.net/src/procps/2:3.3.15-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/procps/2:3.3.15-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python-defaults=2.7.15-3`

Binary Packages:

- `libpython-stdlib:amd64=2.7.15-3`
- `libpython2-stdlib:amd64=2.7.15-3`
- `python=2.7.15-3`
- `python-minimal=2.7.15-3`
- `python2=2.7.15-3`
- `python2-minimal=2.7.15-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-defaults=2.7.15-3
'http://deb.debian.org/debian/pool/main/p/python-defaults/python-defaults_2.7.15-3.dsc' python-defaults_2.7.15-3.dsc 2961 SHA256:a4072c1b0eb94df5516edf2de5faebcc15b8465dc42ed70ea810bddf28a6bb11
'http://deb.debian.org/debian/pool/main/p/python-defaults/python-defaults_2.7.15-3.tar.gz' python-defaults_2.7.15-3.tar.gz 1398803 SHA256:beb52f958d2a17056e145083715fdb9ed4b3422051d9692243cdbb26798a0c8a
```

Other potentially useful URLs:

- https://sources.debian.net/src/python-defaults/2.7.15-3/ (for browsing the source)
- https://sources.debian.net/src/python-defaults/2.7.15-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python-defaults/2.7.15-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python2.7=2.7.15-5`

Binary Packages:

- `libpython2.7-minimal:amd64=2.7.15-5`
- `libpython2.7-stdlib:amd64=2.7.15-5`
- `python2.7=2.7.15-5`
- `python2.7-minimal=2.7.15-5`

Licenses: (parsed from: `/usr/share/doc/libpython2.7-minimal/copyright`, `/usr/share/doc/libpython2.7-stdlib/copyright`, `/usr/share/doc/python2.7/copyright`, `/usr/share/doc/python2.7-minimal/copyright`)

- `# Licensed to PSF under a Contributor Agreement`
- `* Permission to use this software in any way is granted without`
- `Apache`
- `Apache-2`
- `Apache-2.0`
- `Expat`
- `GPL-2`
- `ISC`
- `LGPL-2.1+`
- `PSF-2`
- `Permission is hereby granted, free of charge, to any person obtaining`
- `Python`
- `This software is provided 'as-is', without any express`
- `This software is provided as-is, without express`
- `implied`
- `see above, some license as Python`

Source:

```console
$ apt-get source -qq --print-uris python2.7=2.7.15-5
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.15-5.dsc' python2.7_2.7.15-5.dsc 3344 SHA256:1e74da7fb9677381eed583dc7110773ec1065127ab7440ee0598346d065ca78f
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.15.orig.tar.gz' python2.7_2.7.15.orig.tar.gz 17496336 SHA256:18617d1f15a380a919d517630a9cd85ce17ea602f9bbdc58ddc672df4b0239db
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.15-5.diff.gz' python2.7_2.7.15-5.diff.gz 565412 SHA256:87adee4eb59bff1b74806a870a55a8a09345a29c12a1499b10428152f1dff095
```

Other potentially useful URLs:

- https://sources.debian.net/src/python2.7/2.7.15-5/ (for browsing the source)
- https://sources.debian.net/src/python2.7/2.7.15-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python2.7/2.7.15-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `readline=7.0-5`

Binary Packages:

- `libreadline7:amd64=7.0-5`
- `readline-common=7.0-5`

Licenses: (parsed from: `/usr/share/doc/libreadline7/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline=7.0-5
'http://deb.debian.org/debian/pool/main/r/readline/readline_7.0-5.dsc' readline_7.0-5.dsc 2419 SHA256:4a804235e91ced3b957b0772101ca3992f5ad051e6540b8c41a1f98a06e84033
'http://deb.debian.org/debian/pool/main/r/readline/readline_7.0.orig.tar.gz' readline_7.0.orig.tar.gz 2910016 SHA256:750d437185286f40a369e1e4f4764eda932b9459b5ec9a731628393dd3d32334
'http://deb.debian.org/debian/pool/main/r/readline/readline_7.0-5.debian.tar.xz' readline_7.0-5.debian.tar.xz 29992 SHA256:5c1cc7396a670ce7e6e4c0bc36e8d3067b7642bea5b30fc3ff22bf8e65d2ee80
```

Other potentially useful URLs:

- https://sources.debian.net/src/readline/7.0-5/ (for browsing the source)
- https://sources.debian.net/src/readline/7.0-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/readline/7.0-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d.1-2`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d.1-2`

Licenses: (parsed from: `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20151223.gitfa8646d.1-2
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1-2.dsc' rtmpdump_2.4+20151223.gitfa8646d.1-2.dsc 2299 SHA256:a296819cd2ab5880b67ad963ef0867cb10e462f4403e52565aa863eb05bb1370
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz' rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz 142213 SHA256:5c032f5c8cc2937eb55a81a94effdfed3b0a0304b6376147b86f951e225e3ab5
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1-2.debian.tar.xz' rtmpdump_2.4+20151223.gitfa8646d.1-2.debian.tar.xz 8096 SHA256:26d47de07d16285e4ca55b0828cbbf1ba35e671f9b3500a87e301fe755d26882
```

Other potentially useful URLs:

- https://sources.debian.net/src/rtmpdump/2.4+20151223.gitfa8646d.1-2/ (for browsing the source)
- https://sources.debian.net/src/rtmpdump/2.4+20151223.gitfa8646d.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/rtmpdump/2.4+20151223.gitfa8646d.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sed=4.7-1`

Binary Packages:

- `sed=4.7-1`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris sed=4.7-1
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.7-1.dsc' sed_4.7-1.dsc 1880 SHA256:dd0e8daed987929920f7729771f9c7a5b48d094923aaf686efd2ab19db776108
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.7.orig.tar.xz' sed_4.7.orig.tar.xz 1298316 SHA256:2885768cd0a29ff8d58a6280a270ff161f6a3deb5690b2be6c49f46d4c67bd6a
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.7-1.debian.tar.xz' sed_4.7-1.debian.tar.xz 59824 SHA256:a2ab8d50807fd2242f86d6c6257399e790445ab6f8932f7f487d34361b4fc483
```

Other potentially useful URLs:

- https://sources.debian.net/src/sed/4.7-1/ (for browsing the source)
- https://sources.debian.net/src/sed/4.7-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sed/4.7-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sensible-utils=0.0.12`

Binary Packages:

- `sensible-utils=0.0.12`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `All-permissive`
- `GPL-2`
- `GPL-2+`
- `configure`
- `installsh`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.12
'http://deb.debian.org/debian/pool/main/s/sensible-utils/sensible-utils_0.0.12.dsc' sensible-utils_0.0.12.dsc 1732 SHA256:1b62cc5f7561b3f5692a6edaec942e2e97e8368dabff8c865867d428eecb1221
'http://deb.debian.org/debian/pool/main/s/sensible-utils/sensible-utils_0.0.12.tar.xz' sensible-utils_0.0.12.tar.xz 62152 SHA256:99ba2ebf8c57447c69d426b99b84ff9dc817be0bc4988ec6890a14558c529e2e
```

Other potentially useful URLs:

- https://sources.debian.net/src/sensible-utils/0.0.12/ (for browsing the source)
- https://sources.debian.net/src/sensible-utils/0.0.12/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sensible-utils/0.0.12/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `serf=1.3.9-7`

Binary Packages:

- `libserf-1-1:amd64=1.3.9-7`

Licenses: (parsed from: `/usr/share/doc/libserf-1-1/copyright`)

- `Apache`
- `Apache-2.0`
- `Zlib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/serf/1.3.9-7/


### `dpkg` source package: `shadow=1:4.5-1.1`

Binary Packages:

- `login=1:4.5-1.1`
- `passwd=1:4.5-1.1`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.5-1.1
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.5-1.1.dsc' shadow_4.5-1.1.dsc 2319 SHA256:75993dc19ccc4d5c404831d2dab021a03eaa39216b518d596b639d8f2ea4e98b
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.5.orig.tar.xz' shadow_4.5.orig.tar.xz 1344524 SHA256:22b0952dc944b163e2370bb911b11ca275fc80ad024267cf21e496b28c23d500
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.5-1.1.debian.tar.xz' shadow_4.5-1.1.debian.tar.xz 462960 SHA256:3bb16bbf5d9a255d7333932ae99815d65c1c8e86127e5016809d4ba55c499538
```

Other potentially useful URLs:

- https://sources.debian.net/src/shadow/1:4.5-1.1/ (for browsing the source)
- https://sources.debian.net/src/shadow/1:4.5-1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/shadow/1:4.5-1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sqlite3=3.26.0+fossilbc891ac6b-1`

Binary Packages:

- `libsqlite3-0:amd64=3.26.0+fossilbc891ac6b-1`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.26.0+fossilbc891ac6b-1
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.26.0+fossilbc891ac6b-1.dsc' sqlite3_3.26.0+fossilbc891ac6b-1.dsc 2557 SHA256:d9e3f805fa8190e6e934b4417f1aa22633a11d7f47c19a1cf574ea6b71b2750c
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.26.0+fossilbc891ac6b.orig-www.tar.xz' sqlite3_3.26.0+fossilbc891ac6b.orig-www.tar.xz 5572636 SHA256:11c2813fafaae6efbb6a6c62fc4c63425c0de626fb0893bfa90431f295da84bd
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.26.0+fossilbc891ac6b.orig.tar.xz' sqlite3_3.26.0+fossilbc891ac6b.orig.tar.xz 8297284 SHA256:3b047b3e4986c5a8889e430153e9f084990671a363e8e8780080f08a2f03c37d
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.26.0+fossilbc891ac6b-1.debian.tar.xz' sqlite3_3.26.0+fossilbc891ac6b-1.debian.tar.xz 18784 SHA256:6ff53b02700303491f3064c980a3be9c1cd9e01fd42fef2c232b2582ae6fb3d9
```

Other potentially useful URLs:

- https://sources.debian.net/src/sqlite3/3.26.0+fossilbc891ac6b-1/ (for browsing the source)
- https://sources.debian.net/src/sqlite3/3.26.0+fossilbc891ac6b-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sqlite3/3.26.0+fossilbc891ac6b-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `subversion=1.10.3-1`

Binary Packages:

- `libsvn1:amd64=1.10.3-1+b1`
- `subversion=1.10.3-1+b1`

Licenses: (parsed from: `/usr/share/doc/libsvn1/copyright`, `/usr/share/doc/subversion/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris subversion=1.10.3-1
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.10.3-1.dsc' subversion_1.10.3-1.dsc 3516 SHA256:79fb744f871e7ebb0ea5cee55727d77561b191fcf685100da2a06828cc415117
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.10.3.orig.tar.gz' subversion_1.10.3.orig.tar.gz 11343430 SHA256:001ed5498a9e43e370756a0bc804c417ebee6df022ff291c0bb64dc6ba63fda0
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.10.3.orig.tar.gz.asc' subversion_1.10.3.orig.tar.gz.asc 2093 SHA256:b2127023d245b1c6c09fb59897d6f5ee3442b6dc7959517a6818a8aa83668b63
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.10.3-1.debian.tar.xz' subversion_1.10.3-1.debian.tar.xz 2404068 SHA256:ec45a8b3c09a5144b19914a848ade0d3d95ee9bc0cd12fcf30347d3b1f1cbee1
```

Other potentially useful URLs:

- https://sources.debian.net/src/subversion/1.10.3-1/ (for browsing the source)
- https://sources.debian.net/src/subversion/1.10.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/subversion/1.10.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `systemd=240-1`

Binary Packages:

- `libsystemd0:amd64=240-1`
- `libudev1:amd64=240-1`

Licenses: (parsed from: `/usr/share/doc/libsystemd0/copyright`, `/usr/share/doc/libudev1/copyright`)

- `CC0-1.0`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/systemd/240-1/


### `dpkg` source package: `sysvinit=2.93-1`

Binary Packages:

- `sysvinit-utils=2.93-1`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`
- `GPL-2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/sysvinit/2.93-1/


### `dpkg` source package: `tar=1.30+dfsg-3`

Binary Packages:

- `tar=1.30+dfsg-3`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.30+dfsg-3
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.30+dfsg-3.dsc' tar_1.30+dfsg-3.dsc 1951 SHA256:27e99fe95519540cb486898b96be3b7c403cecdd3d104545130e3c668ce67af8
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.30+dfsg.orig.tar.xz' tar_1.30+dfsg.orig.tar.xz 1883220 SHA256:c02f3747ffe02017878303dde8b78e79cd220364c5e8048cf92320232e38912d
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.30+dfsg-3.debian.tar.xz' tar_1.30+dfsg-3.debian.tar.xz 19128 SHA256:ca5cd0290b368ecf60023d14228d3030370bbf689c4aa5b4374c8d4ef3818abc
```

Other potentially useful URLs:

- https://sources.debian.net/src/tar/1.30+dfsg-3/ (for browsing the source)
- https://sources.debian.net/src/tar/1.30+dfsg-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tar/1.30+dfsg-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tzdata=2018g-1`

Binary Packages:

- `tzdata=2018g-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/tzdata/2018g-1/


### `dpkg` source package: `ucf=3.0038+nmu1`

Binary Packages:

- `ucf=3.0038+nmu1`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0038+nmu1
'http://deb.debian.org/debian/pool/main/u/ucf/ucf_3.0038+nmu1.dsc' ucf_3.0038+nmu1.dsc 1420 SHA256:89b6f921a30e04a946f62e6996be7c16f2f7c383d20783cd4704b502c6d5b125
'http://deb.debian.org/debian/pool/main/u/ucf/ucf_3.0038+nmu1.tar.xz' ucf_3.0038+nmu1.tar.xz 65860 SHA256:d00bc3dd8d2f91317f52b5352fe129023c72babad55bc0dd4ece7b34183c7436
```

Other potentially useful URLs:

- https://sources.debian.net/src/ucf/3.0038+nmu1/ (for browsing the source)
- https://sources.debian.net/src/ucf/3.0038+nmu1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ucf/3.0038+nmu1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `utf8proc=2.2.0-1`

Binary Packages:

- `libutf8proc2:amd64=2.2.0-1`

Licenses: (parsed from: `/usr/share/doc/libutf8proc2/copyright`)

- `Expat`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris utf8proc=2.2.0-1
'http://deb.debian.org/debian/pool/main/u/utf8proc/utf8proc_2.2.0-1.dsc' utf8proc_2.2.0-1.dsc 2094 SHA256:e410b68eeb6c16e7b9db86d654b1d96f561d94ecd0b72b3da615e2e1c0b7d611
'http://deb.debian.org/debian/pool/main/u/utf8proc/utf8proc_2.2.0.orig.tar.gz' utf8proc_2.2.0.orig.tar.gz 156334 SHA256:3f8fd1dbdb057ee5ba584a539d5cd1b3952141c0338557cb0bdf8cb9cfed5dbf
'http://deb.debian.org/debian/pool/main/u/utf8proc/utf8proc_2.2.0-1.debian.tar.xz' utf8proc_2.2.0-1.debian.tar.xz 4992 SHA256:7e4478c75cb1f04b23346d4485a64bd65d7ba8d52387d5fef55c4c4066a8eba0
```

Other potentially useful URLs:

- https://sources.debian.net/src/utf8proc/2.2.0-1/ (for browsing the source)
- https://sources.debian.net/src/utf8proc/2.2.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/utf8proc/2.2.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `util-linux=2.33-0.2`

Binary Packages:

- `bsdutils=1:2.33-0.2`
- `fdisk=2.33-0.2`
- `libblkid1:amd64=2.33-0.2`
- `libfdisk1:amd64=2.33-0.2`
- `libmount1:amd64=2.33-0.2`
- `libsmartcols1:amd64=2.33-0.2`
- `libuuid1:amd64=2.33-0.2`
- `mount=2.33-0.2`
- `util-linux=2.33-0.2`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/fdisk/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libfdisk1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-4-clause`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `MIT`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris util-linux=2.33-0.2
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.33-0.2.dsc' util-linux_2.33-0.2.dsc 3974 SHA256:7497067a25187d8bd266ddf57e8cc555e48b34a74ce6313279d33ba2c3b90a28
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.33.orig.tar.xz' util-linux_2.33.orig.tar.xz 4663072 SHA256:f261b9d73c35bfeeea04d26941ac47ee1df937bd3b0583e748217c1ea423658a
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.33-0.2.debian.tar.xz' util-linux_2.33-0.2.debian.tar.xz 83560 SHA256:4d64aabc45d2a3f3f8df53e5e4f768a04ebd604835716a19dbf7574d472043ed
```

Other potentially useful URLs:

- https://sources.debian.net/src/util-linux/2.33-0.2/ (for browsing the source)
- https://sources.debian.net/src/util-linux/2.33-0.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/util-linux/2.33-0.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `wget=1.20.1-1`

Binary Packages:

- `wget=1.20.1-1`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.20.1-1
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.20.1-1.dsc' wget_1.20.1-1.dsc 2170 SHA256:3b2e8f276796eeaa7deb267f132aa7e03b0ac9e9afff1b900a2a3688496528a3
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.20.1.orig.tar.gz' wget_1.20.1.orig.tar.gz 4392853 SHA256:b783b390cb571c837b392857945f5a1f00ec6b043177cc42abb8ee1b542ee1b3
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.20.1.orig.tar.gz.asc' wget_1.20.1.orig.tar.gz.asc 1241 SHA256:c3591a4e5602d15c43fa693c791732c1c087399ac11bda8a90975cc887a37bc8
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.20.1-1.debian.tar.xz' wget_1.20.1-1.debian.tar.xz 60384 SHA256:2750c9c8d29ec8c1c7b1e9721a3e82647ea059418f6bb9fb35539464a867c110
```

Other potentially useful URLs:

- https://sources.debian.net/src/wget/1.20.1-1/ (for browsing the source)
- https://sources.debian.net/src/wget/1.20.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/wget/1.20.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xz-utils=5.2.2-1.3`

Binary Packages:

- `liblzma5:amd64=5.2.2-1.3`

Licenses: (parsed from: `/usr/share/doc/liblzma5/copyright`)

- `Autoconf`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `LGPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`
- `PD`
- `PD-debian`
- `config-h`
- `noderivs`
- `none`
- `permissive-fsf`
- `permissive-nowarranty`
- `probably-PD`

Source:

```console
$ apt-get source -qq --print-uris xz-utils=5.2.2-1.3
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2-1.3.dsc' xz-utils_5.2.2-1.3.dsc 2575 SHA256:3ea4e6a32f6265b152f89ceafe78c8839e5f4bb1cad137b159fe2013817f9342
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz' xz-utils_5.2.2.orig.tar.xz 1016404 SHA256:f341b1906ebcdde291dd619399ae944600edc9193619dd0c0110a5f05bfcc89e
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz.asc' xz-utils_5.2.2.orig.tar.xz.asc 543 SHA256:2cc0575556e1331b3f468e6e7dca5969ce86efcc315d62672279b4e68b2e449f
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2-1.3.debian.tar.xz' xz-utils_5.2.2-1.3.debian.tar.xz 108680 SHA256:d76c3acf39d0999c14384695394970e8f98853fd6736ba91972d3e67106bc6f6
```

Other potentially useful URLs:

- https://sources.debian.net/src/xz-utils/5.2.2-1.3/ (for browsing the source)
- https://sources.debian.net/src/xz-utils/5.2.2-1.3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xz-utils/5.2.2-1.3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `zlib=1:1.2.11.dfsg-1`

Binary Packages:

- `zlib1g:amd64=1:1.2.11.dfsg-1`

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`)

- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.11.dfsg-1
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.11.dfsg-1.dsc' zlib_1.2.11.dfsg-1.dsc 2266 SHA256:bf21ab4d60cb836725162f5072884596e781a2f4974182af1868f546306eb8c8
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.11.dfsg.orig.tar.gz' zlib_1.2.11.dfsg.orig.tar.gz 370248 SHA256:80c481411a4fe8463aeb8270149a0e80bb9eaf7da44132b6e16f2b5af01bc899
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.11.dfsg-1.debian.tar.xz' zlib_1.2.11.dfsg-1.debian.tar.xz 18956 SHA256:00b95b629fbe9a5181f8ba1ceddedf627aba1ab42e47f5916be8a41deb54098a
```

Other potentially useful URLs:

- https://sources.debian.net/src/zlib/1:1.2.11.dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/zlib/1:1.2.11.dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/zlib/1:1.2.11.dfsg-1/ (for access to the source package after it no longer exists in the archive)
