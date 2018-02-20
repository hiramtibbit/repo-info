# `buildpack-deps:buster`

## Docker Metadata

- Image ID: `sha256:8b9afd1e5e325c8248f5bcbf695e3d41715c6083379b6f76a17060d581224433`
- Created: `2018-02-15T03:24:33.617203645Z`
- Virtual Size: ~ 855.30 Mb  
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

### `dpkg` source package: `adduser=3.117`

Binary Packages:

- `adduser=3.117`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.117
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.117.dsc' adduser_3.117.dsc 1679 SHA256:c36045e4d82a72ec11fab353104603875dca660561724eb762fba52a9678a01f
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.117.tar.xz' adduser_3.117.tar.xz 211944 SHA256:be01881356e40c4d7dd2ce209fb4a94c0589056ac3ebe7debbbf09a6383c1411
```

Other potentially useful URLs:

- https://sources.debian.net/src/adduser/3.117/ (for browsing the source)
- https://sources.debian.net/src/adduser/3.117/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/adduser/3.117/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apr-util=1.6.1-1`

Binary Packages:

- `libaprutil1:amd64=1.6.1-1`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.6.1-1
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.1-1.dsc' apr-util_1.6.1-1.dsc 2865 SHA256:4c9f454e9750b5acda7e8959700b725a0f6256d7da0cb54ae6d5a4b61aac8deb
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2' apr-util_1.6.1.orig.tar.bz2 428595 SHA256:d3e12f7b6ad12687572a3a39475545a072608f4ba03a6ce8a3778f607dd0035b
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2.asc' apr-util_1.6.1.orig.tar.bz2.asc 801 SHA256:47837b605290c0d7659b73734e4a9d5e6c0c24c13185cd4d91837afe63c07ca4
'http://deb.debian.org/debian/pool/main/a/apr-util/apr-util_1.6.1-1.debian.tar.xz' apr-util_1.6.1-1.debian.tar.xz 210872 SHA256:5d0446d5832a62d6428ff408c571ff693f2aba604b2606c8f2463b2a6d8ae217
```

Other potentially useful URLs:

- https://sources.debian.net/src/apr-util/1.6.1-1/ (for browsing the source)
- https://sources.debian.net/src/apr-util/1.6.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apr-util/1.6.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apr=1.6.3-1`

Binary Packages:

- `libapr1:amd64=1.6.3-1`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.6.3-1
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.3-1.dsc' apr_1.6.3-1.dsc 2319 SHA256:4053fe879e73b58b85b9faef47f88f3f2f5b416ea57df2eb9617e6313e16b33d
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.3.orig.tar.bz2' apr_1.6.3.orig.tar.bz2 854100 SHA256:131f06d16d7aabd097fa992a33eec2b6af3962f93e6d570a9bd4d85e95993172
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.3.orig.tar.bz2.asc' apr_1.6.3.orig.tar.bz2.asc 801 SHA256:33db39162f7ca9acdccaa4f19630a67045542791b262116d3512c8b5d7c3fca1
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.3-1.debian.tar.xz' apr_1.6.3-1.debian.tar.xz 212956 SHA256:81c13e7277db373f6b72279caa576c9cd91a9902c8798d628e2c2d504962eb8e
```

Other potentially useful URLs:

- https://sources.debian.net/src/apr/1.6.3-1/ (for browsing the source)
- https://sources.debian.net/src/apr/1.6.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apr/1.6.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apt=1.6~alpha7`

Binary Packages:

- `apt=1.6~alpha7`
- `libapt-pkg5.0:amd64=1.6~alpha7`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=1.6~alpha7
'http://deb.debian.org/debian/pool/main/a/apt/apt_1.6~alpha7.dsc' apt_1.6~alpha7.dsc 2733 SHA256:4263057a9cb1379191da24ac1bf888e2a5569fd066e4250deacfd4f46b462d75
'http://deb.debian.org/debian/pool/main/a/apt/apt_1.6~alpha7.tar.xz' apt_1.6~alpha7.tar.xz 2116452 SHA256:5db7bffbbb454211bb8ffa011ba8502a2f0d5e16dd7dc5933aab838831bcd166
```

Other potentially useful URLs:

- https://sources.debian.net/src/apt/1.6~alpha7/ (for browsing the source)
- https://sources.debian.net/src/apt/1.6~alpha7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apt/1.6~alpha7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `atk1.0=2.26.1-3`

Binary Packages:

- `libatk1.0-0:amd64=2.26.1-3`
- `libatk1.0-data=2.26.1-3`

Licenses: (parsed from: `/usr/share/doc/libatk1.0-0/copyright`, `/usr/share/doc/libatk1.0-data/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris atk1.0=2.26.1-3
'http://deb.debian.org/debian/pool/main/a/atk1.0/atk1.0_2.26.1-3.dsc' atk1.0_2.26.1-3.dsc 2687 SHA256:fee7db0505b1e3742f722b7a2b3da7ec39359d9f06c158b58eb4b0f499afe184
'http://deb.debian.org/debian/pool/main/a/atk1.0/atk1.0_2.26.1.orig.tar.xz' atk1.0_2.26.1.orig.tar.xz 711960 SHA256:ef00ff6b83851dddc8db38b4d9faeffb99572ba150b0664ee02e46f015ea97cb
'http://deb.debian.org/debian/pool/main/a/atk1.0/atk1.0_2.26.1-3.debian.tar.xz' atk1.0_2.26.1-3.debian.tar.xz 11324 SHA256:f3b032ed976f24eedb15b71dde2ded175f44cebc85821d2782edf30c72ba90f1
```

Other potentially useful URLs:

- https://sources.debian.net/src/atk1.0/2.26.1-3/ (for browsing the source)
- https://sources.debian.net/src/atk1.0/2.26.1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/atk1.0/2.26.1-3/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `audit=1:2.8.2-1`

Binary Packages:

- `libaudit-common=1:2.8.2-1`
- `libaudit1:amd64=1:2.8.2-1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.8.2-1
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.8.2-1.dsc' audit_2.8.2-1.dsc 2471 SHA256:061583580646737f68b6c31c73b5299191a565c92c2ff1f4eb60429b74fca6dd
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.8.2.orig.tar.gz' audit_2.8.2.orig.tar.gz 1121970 SHA256:67b59b2b77afee9ed87afa4d80ffc8e6f3a1f4bbedd5f2871f387c952147bcba
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.8.2-1.debian.tar.xz' audit_2.8.2-1.debian.tar.xz 19208 SHA256:ca925325b56ce5a37cadb3f967a4291b2df3046f3cc3c84b464fc25cf1c8e700
```

Other potentially useful URLs:

- https://sources.debian.net/src/audit/1:2.8.2-1/ (for browsing the source)
- https://sources.debian.net/src/audit/1:2.8.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/audit/1:2.8.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `autoconf=2.69-11`

Binary Packages:

- `autoconf=2.69-11`

Licenses: (parsed from: `/usr/share/doc/autoconf/copyright`)

- `GFDL-1.3`
- `GFDL-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `GPL-3`
- `GPL-3+`
- `GPL-3+ with Autoconf exception`
- `GPL-3+ with Texinfo exception`
- `MIT-X-Consortium`
- `no-modification`
- `other`
- `permissive`
- `permissive-long-disclaimer`
- `permissive-short-disclaimer`
- `permissive-without-disclaimer`
- `permissive-without-notices-or-disclaimer`

Source:

```console
$ apt-get source -qq --print-uris autoconf=2.69-11
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.69-11.dsc' autoconf_2.69-11.dsc 1948 SHA256:249d25370d4f4d1d0cf7b37bfd178bb6fa87011566dd82230991f64814a39dde
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.69.orig.tar.xz' autoconf_2.69.orig.tar.xz 1214744 SHA256:64ebcec9f8ac5b2487125a86a7760d2591ac9e1d3dbd59489633f9de62a57684
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.69-11.debian.tar.xz' autoconf_2.69-11.debian.tar.xz 23540 SHA256:885b3947fdead5b737f6437b80a90a41c5d611791573c5d0cfef50a59c943c1b
```

Other potentially useful URLs:

- https://sources.debian.net/src/autoconf/2.69-11/ (for browsing the source)
- https://sources.debian.net/src/autoconf/2.69-11/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/autoconf/2.69-11/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `automake-1.15=1:1.15.1-3`

Binary Packages:

- `automake=1:1.15.1-3`

Licenses: (parsed from: `/usr/share/doc/automake/copyright`)

- `GFDL-1.3`
- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris automake-1.15=1:1.15.1-3
'http://deb.debian.org/debian/pool/main/a/automake-1.15/automake-1.15_1.15.1-3.dsc' automake-1.15_1.15.1-3.dsc 2264 SHA256:f19b0bbcf91ff11908730d64d6377d0d223dd70e32ac7946a8e745c0ed82dac8
'http://deb.debian.org/debian/pool/main/a/automake-1.15/automake-1.15_1.15.1.orig.tar.xz' automake-1.15_1.15.1.orig.tar.xz 1509496 SHA256:af6ba39142220687c500f79b4aa2f181d9b24e4f8d8ec497cea4ba26c64bedaf
'http://deb.debian.org/debian/pool/main/a/automake-1.15/automake-1.15_1.15.1-3.debian.tar.xz' automake-1.15_1.15.1-3.debian.tar.xz 13748 SHA256:029739edc3fee410b74af5df2de2f9742bf10720230f8cbac76fab100b6e7b2a
```

Other potentially useful URLs:

- https://sources.debian.net/src/automake-1.15/1:1.15.1-3/ (for browsing the source)
- https://sources.debian.net/src/automake-1.15/1:1.15.1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/automake-1.15/1:1.15.1-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `autotools-dev=20171216.1`

Binary Packages:

- `autotools-dev=20171216.1`

Licenses: (parsed from: `/usr/share/doc/autotools-dev/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris autotools-dev=20171216.1
'http://deb.debian.org/debian/pool/main/a/autotools-dev/autotools-dev_20171216.1.dsc' autotools-dev_20171216.1.dsc 1655 SHA256:79c644f3d06efd476083f8c68b2b23f4fd1c12b85d8816d6d029683e12ed93d3
'http://deb.debian.org/debian/pool/main/a/autotools-dev/autotools-dev_20171216.1.tar.xz' autotools-dev_20171216.1.tar.xz 67188 SHA256:c5327639b386eceeb84709b826e625d80c0a7255f9344ff39104297f21d6ecd3
```

Other potentially useful URLs:

- https://sources.debian.net/src/autotools-dev/20171216.1/ (for browsing the source)
- https://sources.debian.net/src/autotools-dev/20171216.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/autotools-dev/20171216.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `avahi=0.7-3`

Binary Packages:

- `libavahi-client3:amd64=0.7-3`
- `libavahi-common-data:amd64=0.7-3`
- `libavahi-common3:amd64=0.7-3`

Licenses: (parsed from: `/usr/share/doc/libavahi-client3/copyright`, `/usr/share/doc/libavahi-common-data/copyright`, `/usr/share/doc/libavahi-common3/copyright`)

- `GPL`
- `GPL-2`
- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/avahi/0.7-3/


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

### `dpkg` source package: `base-passwd=3.5.44`

Binary Packages:

- `base-passwd=3.5.44`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.44
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.44.dsc' base-passwd_3.5.44.dsc 1685 SHA256:22a5db1e9bb71fa8a4d682b3f9c01470a61b8041eb6212471181c6808b268c13
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.44.tar.xz' base-passwd_3.5.44.tar.xz 52644 SHA256:f17a0746024572e86e60e4614cf226a81ffe682ceaf1a1fce9dc1a8002683e90
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-passwd/3.5.44/ (for browsing the source)
- https://sources.debian.net/src/base-passwd/3.5.44/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-passwd/3.5.44/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bash=4.4.18-1`

Binary Packages:

- `bash=4.4.18-1`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/bash/4.4.18-1/


### `dpkg` source package: `binutils=2.30-4`

Binary Packages:

- `binutils=2.30-4`
- `binutils-common:amd64=2.30-4`
- `binutils-x86-64-linux-gnu=2.30-4`
- `libbinutils:amd64=2.30-4`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/binutils/2.30-4/


### `dpkg` source package: `bzip2=1.0.6-8.1`

Binary Packages:

- `bzip2=1.0.6-8.1`
- `libbz2-1.0:amd64=1.0.6-8.1`
- `libbz2-dev:amd64=1.0.6-8.1`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`, `/usr/share/doc/libbz2-dev/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.6-8.1
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6-8.1.dsc' bzip2_1.0.6-8.1.dsc 2082 SHA256:d80deed11a1419ad090cb486dd2335850fd8719b809c32002dea04b485f55dbd
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA256:d70a9ccd8bdf47e302d96c69fecd54925f45d9c7b966bb4ef5f56b770960afa7
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6-8.1.debian.tar.bz2' bzip2_1.0.6-8.1.debian.tar.bz2 59875 SHA256:bdbe7bf29e014e44d79bb7c733fe63cae990ab50882a4a07867cf69c61ad72b7
```

Other potentially useful URLs:

- https://sources.debian.net/src/bzip2/1.0.6-8.1/ (for browsing the source)
- https://sources.debian.net/src/bzip2/1.0.6-8.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bzip2/1.0.6-8.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ca-certificates=20170717`

Binary Packages:

- `ca-certificates=20170717`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20170717
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20170717.dsc' ca-certificates_20170717.dsc 1506 SHA256:da6268ff88e05c85c23c62add13d3d127087467d0c7e83974ca28db5543a252a
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20170717.tar.xz' ca-certificates_20170717.tar.xz 293028 SHA256:e487639b641fa75445174734dd6e9d600373e3248b3d86a7e3c6d0f6977decd2
```

Other potentially useful URLs:

- https://sources.debian.net/src/ca-certificates/20170717/ (for browsing the source)
- https://sources.debian.net/src/ca-certificates/20170717/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ca-certificates/20170717/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cairo=1.15.10-1`

Binary Packages:

- `libcairo-gobject2:amd64=1.15.10-1`
- `libcairo-script-interpreter2:amd64=1.15.10-1`
- `libcairo2:amd64=1.15.10-1`
- `libcairo2-dev=1.15.10-1`

Licenses: (parsed from: `/usr/share/doc/libcairo-gobject2/copyright`, `/usr/share/doc/libcairo-script-interpreter2/copyright`, `/usr/share/doc/libcairo2/copyright`, `/usr/share/doc/libcairo2-dev/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cairo=1.15.10-1
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.15.10-1.dsc' cairo_1.15.10-1.dsc 2845 SHA256:3d81749bd7bd4e0fa195aa4b34ba358a28982cecdc3450c5e03a0ba9e2eab9e8
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.15.10.orig.tar.xz' cairo_1.15.10.orig.tar.xz 41881364 SHA256:62ca226134cf2f1fd114bea06f8b374eb37f35d8e22487eaa54d5e9428958392
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.15.10-1.debian.tar.xz' cairo_1.15.10-1.debian.tar.xz 28644 SHA256:53aee27e05de5c6caac1549c6878282ee519695f5d31d228929f15a862b86b72
```

Other potentially useful URLs:

- https://sources.debian.net/src/cairo/1.15.10-1/ (for browsing the source)
- https://sources.debian.net/src/cairo/1.15.10-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cairo/1.15.10-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cdebconf=0.240`

Binary Packages:

- `libdebconfclient0:amd64=0.240`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/cdebconf/0.240/


### `dpkg` source package: `coreutils=8.28-1`

Binary Packages:

- `coreutils=8.28-1`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.28-1
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.28-1.dsc' coreutils_8.28-1.dsc 2111 SHA256:e9221d4c6f9d93474239beac1f8033d7215e3023d7d68d2effad8ed2fb71bd2c
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.28.orig.tar.xz' coreutils_8.28.orig.tar.xz 5252336 SHA256:1117b1a16039ddd84d51a9923948307cfa28c2cea03d1a2438742253df0a0c65
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.28.orig.tar.xz.asc' coreutils_8.28.orig.tar.xz.asc 1196 SHA256:505b1a530a55732a9ed659d419ff4973d1b15059078d2060675927058db9607d
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.28-1.debian.tar.xz' coreutils_8.28-1.debian.tar.xz 31332 SHA256:103ed661baf57ea9015418ff9e2d4afd35c17c35f10224c340cfe317c1d81215
```

Other potentially useful URLs:

- https://sources.debian.net/src/coreutils/8.28-1/ (for browsing the source)
- https://sources.debian.net/src/coreutils/8.28-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/coreutils/8.28-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cups=2.2.6-5`

Binary Packages:

- `libcups2:amd64=2.2.6-5`

Licenses: (parsed from: `/usr/share/doc/libcups2/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2.0 with AOSDL exception`
- `LGPL-2`
- `LGPL-2.0 with AOSDL exception`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris cups=2.2.6-5
'http://deb.debian.org/debian/pool/main/c/cups/cups_2.2.6-5.dsc' cups_2.2.6-5.dsc 3467 SHA256:280fab9babf344fcab487875c5bc3bee7ae8cfabb84d079078000e7cce8bfb66
'http://deb.debian.org/debian/pool/main/c/cups/cups_2.2.6.orig.tar.gz' cups_2.2.6.orig.tar.gz 10315433 SHA256:40385778c2b3bdf55030d1c999734e22774c79e3425d91339ce677825620169b
'http://deb.debian.org/debian/pool/main/c/cups/cups_2.2.6.orig.tar.gz.asc' cups_2.2.6.orig.tar.gz.asc 850 SHA256:1f6cccf87c20951f4181efab9d3767c4747cf5127744aa918156afb9cd0b8ca7
'http://deb.debian.org/debian/pool/main/c/cups/cups_2.2.6-5.debian.tar.xz' cups_2.2.6-5.debian.tar.xz 350276 SHA256:344bba53c0ae45cec8648fd10d775ab14b319ddeffcf0a3399760fcab89abd79
```

Other potentially useful URLs:

- https://sources.debian.net/src/cups/2.2.6-5/ (for browsing the source)
- https://sources.debian.net/src/cups/2.2.6-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cups/2.2.6-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `curl=7.58.0-2`

Binary Packages:

- `curl=7.58.0-2`
- `libcurl3:amd64=7.58.0-2`
- `libcurl3-gnutls:amd64=7.58.0-2`
- `libcurl4-openssl-dev:amd64=7.58.0-2`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`, `/usr/share/doc/libcurl4-openssl-dev/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.58.0-2
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.58.0-2.dsc' curl_7.58.0-2.dsc 2678 SHA256:484467db967bcc9a18069b6e756fd516cc85786152d26377bf1bf54cec4c4b06
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.58.0.orig.tar.gz' curl_7.58.0.orig.tar.gz 3879728 SHA256:cc245bf9a1a42a45df491501d97d5593392a03f7b4f07b952793518d97666115
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.58.0-2.debian.tar.xz' curl_7.58.0-2.debian.tar.xz 27876 SHA256:c8fd77f1589801f468aae9add3358a4d8c246cf21b9e141dee85cb5b73fee7c6
```

Other potentially useful URLs:

- https://sources.debian.net/src/curl/7.58.0-2/ (for browsing the source)
- https://sources.debian.net/src/curl/7.58.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/curl/7.58.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cyrus-sasl2=2.1.27~101-g0780600+dfsg-3`

Binary Packages:

- `libsasl2-2:amd64=2.1.27~101-g0780600+dfsg-3`
- `libsasl2-modules-db:amd64=2.1.27~101-g0780600+dfsg-3`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.27~101-g0780600+dfsg-3
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~101-g0780600+dfsg-3.dsc' cyrus-sasl2_2.1.27~101-g0780600+dfsg-3.dsc 3176 SHA256:abc0b2b0e8757195689821a724037c2017f8d06d63d357e1663d679226ef71d4
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~101-g0780600+dfsg.orig.tar.xz' cyrus-sasl2_2.1.27~101-g0780600+dfsg.orig.tar.xz 1143888 SHA256:69f34971f768e7ee6a6b647ec2d16a5a72a854ecd4602b019d5f79ba61063fdc
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~101-g0780600+dfsg-3.debian.tar.xz' cyrus-sasl2_2.1.27~101-g0780600+dfsg-3.debian.tar.xz 94664 SHA256:5094c002044588381e417c112f0f85d33242651f2739783b4dbd673321e7a386
```

Other potentially useful URLs:

- https://sources.debian.net/src/cyrus-sasl2/2.1.27~101-g0780600+dfsg-3/ (for browsing the source)
- https://sources.debian.net/src/cyrus-sasl2/2.1.27~101-g0780600+dfsg-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cyrus-sasl2/2.1.27~101-g0780600+dfsg-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dash=0.5.8-2.10`

Binary Packages:

- `dash=0.5.8-2.10`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.8-2.10
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.8-2.10.dsc' dash_0.5.8-2.10.dsc 1618 SHA256:1e8fdac0880d57d8ed5eb11f9f1750a67c71a7200180cf3ed5aa3e74dab3e4c5
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.8.orig.tar.gz' dash_0.5.8.orig.tar.gz 223028 SHA256:c6db3a237747b02d20382a761397563d813b306c020ae28ce25a1c3915fac60f
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.8-2.10.debian.tar.xz' dash_0.5.8-2.10.debian.tar.xz 43920 SHA256:0d870b0cf9b3ad40e4d4f1e3d4d9097f4d62151693a48f34cb1d49865fd4abdb
```

Other potentially useful URLs:

- https://sources.debian.net/src/dash/0.5.8-2.10/ (for browsing the source)
- https://sources.debian.net/src/dash/0.5.8-2.10/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dash/0.5.8-2.10/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `db-defaults=5.3.1`

Binary Packages:

- `libdb-dev:amd64=5.3.1`

Licenses: (parsed from: `/usr/share/doc/libdb-dev/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris db-defaults=5.3.1
'http://deb.debian.org/debian/pool/main/d/db-defaults/db-defaults_5.3.1.dsc' db-defaults_5.3.1.dsc 2049 SHA256:4097a2745b51c6a380b917dfa5f10f468dc2ed76c9d93ce4b5bf1bf081e42d33
'http://deb.debian.org/debian/pool/main/d/db-defaults/db-defaults_5.3.1.tar.xz' db-defaults_5.3.1.tar.xz 2788 SHA256:c35e2a597b3539b3b8e12f0dd5ee72af18a88b680a5bfb29871813ce4b793d30
```

Other potentially useful URLs:

- https://sources.debian.net/src/db-defaults/5.3.1/ (for browsing the source)
- https://sources.debian.net/src/db-defaults/5.3.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/db-defaults/5.3.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `db5.3=5.3.28-13.1`

Binary Packages:

- `libdb5.3:amd64=5.3.28-13.1+b1`
- `libdb5.3-dev=5.3.28-13.1+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28-13.1
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28-13.1.dsc' db5.3_5.3.28-13.1.dsc 3124 SHA256:8941edcad8e16fe6bc76ffcbe86dbdaadc654b5ed994654689cf5408602a84f3
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz' db5.3_5.3.28.orig.tar.xz 24154920 SHA256:e1f85c8b6ebd0ed3ca72fa0ae97b65006f6d0bd0cd6f4ac24bed103cb5497bf5
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28-13.1.debian.tar.xz' db5.3_5.3.28-13.1.debian.tar.xz 28180 SHA256:9e04b9269be51de4e73536584addc61e19b29e34f769e263c180228064c72ec9
```

Other potentially useful URLs:

- https://sources.debian.net/src/db5.3/5.3.28-13.1/ (for browsing the source)
- https://sources.debian.net/src/db5.3/5.3.28-13.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/db5.3/5.3.28-13.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dbus=1.12.4-1`

Binary Packages:

- `libdbus-1-3:amd64=1.12.4-1`

Licenses: (parsed from: `/usr/share/doc/libdbus-1-3/copyright`)

- `AFL-2.1`
- `AFL-2.1,`
- `BSD-3-clause`
- `BSD-3-clause-generic`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `Tcl-BSDish`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris dbus=1.12.4-1
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.12.4-1.dsc' dbus_1.12.4-1.dsc 3669 SHA256:0d1d346301cac23f26ba5fe6d733fcbd97f7afbd162418be5f4f9fe850677afd
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.12.4.orig.tar.gz' dbus_1.12.4.orig.tar.gz 2067402 SHA256:f9756b68ec68065ae2dafcf1191ee40b4cb06e9534a01f6a74d5a4d7894221c7
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.12.4.orig.tar.gz.asc' dbus_1.12.4.orig.tar.gz.asc 833 SHA256:d777b1f1dff2963562bcd192535d356a97c245e188bb3984cb6dea69d046b86b
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.12.4-1.debian.tar.xz' dbus_1.12.4-1.debian.tar.xz 59908 SHA256:62b7027790c6a3dfa4909f677b7dc503e1fb9016dee2d8a2238d7fd04520a96a
```

Other potentially useful URLs:

- https://sources.debian.net/src/dbus/1.12.4-1/ (for browsing the source)
- https://sources.debian.net/src/dbus/1.12.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dbus/1.12.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debconf=1.5.65`

Binary Packages:

- `debconf=1.5.65`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.65
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.65.dsc' debconf_1.5.65.dsc 2072 SHA256:22264a2eac5f08278151db18270ab9d62e81c0a5517799f9934f34bc3a7f7162
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.65.tar.xz' debconf_1.5.65.tar.xz 571760 SHA256:4e20e7469819e399629811b7fcc9b867f9ee7ea4d8a2a04d18b30e3a1a7cf8df
```

Other potentially useful URLs:

- https://sources.debian.net/src/debconf/1.5.65/ (for browsing the source)
- https://sources.debian.net/src/debconf/1.5.65/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debconf/1.5.65/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debian-archive-keyring=2017.7`

Binary Packages:

- `debian-archive-keyring=2017.7`

Licenses: (parsed from: `/usr/share/doc/debian-archive-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debian-archive-keyring=2017.7
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2017.7.dsc' debian-archive-keyring_2017.7.dsc 1781 SHA256:58dfdb7c93c72804e43f40fa081e2ab4f895e9ea0a4c2df8f59a1cf26d5fd0e4
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2017.7.tar.xz' debian-archive-keyring_2017.7.tar.xz 79760 SHA256:8a91b68b51faf81fe15599f04af778c1897430cc0a71dae1d6c483e86e7cbcdd
```

Other potentially useful URLs:

- https://sources.debian.net/src/debian-archive-keyring/2017.7/ (for browsing the source)
- https://sources.debian.net/src/debian-archive-keyring/2017.7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debian-archive-keyring/2017.7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debianutils=4.8.4`

Binary Packages:

- `debianutils=4.8.4`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.8.4
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.8.4.dsc' debianutils_4.8.4.dsc 1764 SHA256:8b12921fe6e4f51d295bfd4213706d588a6c9b8bab659b0ee1fe525f37e9fbcc
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.8.4.tar.xz' debianutils_4.8.4.tar.xz 156344 SHA256:c061ab99aea61f892043b7624b021ab5b193e9c6bbfd474da0fbcdd506be1eb2
```

Other potentially useful URLs:

- https://sources.debian.net/src/debianutils/4.8.4/ (for browsing the source)
- https://sources.debian.net/src/debianutils/4.8.4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debianutils/4.8.4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dh-python=2.20170125`

Binary Packages:

- `dh-python=2.20170125`

Licenses: (parsed from: `/usr/share/doc/dh-python/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris dh-python=2.20170125
'http://deb.debian.org/debian/pool/main/d/dh-python/dh-python_2.20170125.dsc' dh-python_2.20170125.dsc 1908 SHA256:ef4f2951cea36ae4aac29126a1017505f98b595432fb5bdac0f21b4b4d72c1b4
'http://deb.debian.org/debian/pool/main/d/dh-python/dh-python_2.20170125.tar.xz' dh-python_2.20170125.tar.xz 91332 SHA256:2e09c162ee2442a03511b7ebe83896e1e3c1df79ce97a22d2f8a8b4cfec9f1e3
```

Other potentially useful URLs:

- https://sources.debian.net/src/dh-python/2.20170125/ (for browsing the source)
- https://sources.debian.net/src/dh-python/2.20170125/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dh-python/2.20170125/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `djvulibre=3.5.27.1-8`

Binary Packages:

- `libdjvulibre-dev:amd64=3.5.27.1-8`
- `libdjvulibre-text=3.5.27.1-8`
- `libdjvulibre21:amd64=3.5.27.1-8`

Licenses: (parsed from: `/usr/share/doc/libdjvulibre-dev/copyright`, `/usr/share/doc/libdjvulibre-text/copyright`, `/usr/share/doc/libdjvulibre21/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris djvulibre=3.5.27.1-8
'http://deb.debian.org/debian/pool/main/d/djvulibre/djvulibre_3.5.27.1-8.dsc' djvulibre_3.5.27.1-8.dsc 2409 SHA256:5738076776f1f197bbed13160315c9c84fe8bac7c6e175138b87ca8319f12e68
'http://deb.debian.org/debian/pool/main/d/djvulibre/djvulibre_3.5.27.1.orig.tar.gz' djvulibre_3.5.27.1.orig.tar.gz 3231662 SHA256:77f07de3f1039aa19eba2eb3170d9ce9a0918ba7b704a59cfaf08f42fcc52144
'http://deb.debian.org/debian/pool/main/d/djvulibre/djvulibre_3.5.27.1-8.debian.tar.xz' djvulibre_3.5.27.1-8.debian.tar.xz 56112 SHA256:d0b0af368b8e410b0015fd7d618daa545c76d381de17f9a500830a1141cb9742
```

Other potentially useful URLs:

- https://sources.debian.net/src/djvulibre/3.5.27.1-8/ (for browsing the source)
- https://sources.debian.net/src/djvulibre/3.5.27.1-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/djvulibre/3.5.27.1-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dpkg=1.19.0.5`

Binary Packages:

- `dpkg=1.19.0.5`
- `dpkg-dev=1.19.0.5`
- `libdpkg-perl=1.19.0.5`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.19.0.5
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.19.0.5.dsc' dpkg_1.19.0.5.dsc 1977 SHA256:e9b38875c17766fd6b55436233dc6c72658d0cd0c2e63b5ec1f1dc3afd8058bb
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.19.0.5.tar.xz' dpkg_1.19.0.5.tar.xz 4557428 SHA256:818046927a7f77c1bcbbad7d8dbc04cdf0f3e6ec4e1a4f9d313378ecc69d85b5
```

Other potentially useful URLs:

- https://sources.debian.net/src/dpkg/1.19.0.5/ (for browsing the source)
- https://sources.debian.net/src/dpkg/1.19.0.5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dpkg/1.19.0.5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `e2fsprogs=1.43.8-2`

Binary Packages:

- `e2fslibs:amd64=1.43.8-2`
- `e2fsprogs=1.43.8-2`
- `libss2:amd64=1.43.8-2`

Licenses: (parsed from: `/usr/share/doc/e2fslibs/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.43.8-2
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.8-2.dsc' e2fsprogs_1.43.8-2.dsc 2446 SHA256:178ed6ff5771d9ecc6c4b5c4aa4e1a00638795082b50a1a8be34263778709432
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.8.orig.tar.gz' e2fsprogs_1.43.8.orig.tar.gz 7485488 SHA256:3f32f481f408b7f248acf00ea3e423c348d2a17ff51ed0dfa892d171551ec3de
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.8.orig.tar.gz.asc' e2fsprogs_1.43.8.orig.tar.gz.asc 488 SHA256:1c03d09e39dc31f878246d24fff17e93c57e7fec4f79f40e7b2f786c2357dac1
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.8-2.debian.tar.xz' e2fsprogs_1.43.8-2.debian.tar.xz 75956 SHA256:896d8cbe157155d468eea5ffb69eddb825c7b9751cb89b8dd5ba34fe0a423f56
```

Other potentially useful URLs:

- https://sources.debian.net/src/e2fsprogs/1.43.8-2/ (for browsing the source)
- https://sources.debian.net/src/e2fsprogs/1.43.8-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/e2fsprogs/1.43.8-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `e2fsprogs=1.43.9-1`

Binary Packages:

- `comerr-dev:amd64=2.1-1.43.9-1`
- `libcom-err2:amd64=1.43.9-1`
- `libcomerr2=1.43.9-1`

Licenses: (parsed from: `/usr/share/doc/comerr-dev/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libcomerr2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.43.9-1
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.9-1.dsc' e2fsprogs_1.43.9-1.dsc 2616 SHA256:a4601c5bfcc9604a868e4d88ba3a47ed9dc64d7aa8753a47610144e3f5f252aa
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.9.orig.tar.gz' e2fsprogs_1.43.9.orig.tar.gz 7485521 SHA256:5be0ffc01b9720a3f3ccfc86396016baf1334b98751fefa09e0c63eaffdc3897
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.9.orig.tar.gz.asc' e2fsprogs_1.43.9.orig.tar.gz.asc 488 SHA256:b600c45ad079d3fa91fbfff4af7b8bfe35d7d57e384d6e2741877fb82ae60672
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.9-1.debian.tar.xz' e2fsprogs_1.43.9-1.debian.tar.xz 76060 SHA256:d110cda310b3574287443e63648901e1cd281b21464a76d3869a416c80e2c7ba
```

Other potentially useful URLs:

- https://sources.debian.net/src/e2fsprogs/1.43.9-1/ (for browsing the source)
- https://sources.debian.net/src/e2fsprogs/1.43.9-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/e2fsprogs/1.43.9-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `elfutils=0.170-0.3`

Binary Packages:

- `libelf1:amd64=0.170-0.3`

Licenses: (parsed from: `/usr/share/doc/libelf1/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-`

Source:

```console
$ apt-get source -qq --print-uris elfutils=0.170-0.3
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.170-0.3.dsc' elfutils_0.170-0.3.dsc 2307 SHA256:4c2da1f50e8b64366d790fe80accc455f1dab073e9e4fef23efd29b1ad724a0e
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.170.orig.tar.bz2' elfutils_0.170.orig.tar.bz2 8358001 SHA256:1f844775576b79bdc9f9c717a50058d08620323c1e935458223a12f249c9e066
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.170-0.3.debian.tar.xz' elfutils_0.170-0.3.debian.tar.xz 37904 SHA256:9b93f7a034d7441b654d44c5bdb4c3dfa83210d605c90cf021a9c75e30ef8ad3
```

Other potentially useful URLs:

- https://sources.debian.net/src/elfutils/0.170-0.3/ (for browsing the source)
- https://sources.debian.net/src/elfutils/0.170-0.3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/elfutils/0.170-0.3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `expat=2.2.5-3`

Binary Packages:

- `libexpat1:amd64=2.2.5-3`
- `libexpat1-dev:amd64=2.2.5-3`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`, `/usr/share/doc/libexpat1-dev/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.2.5-3
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.2.5-3.dsc' expat_2.2.5-3.dsc 2099 SHA256:21c9f507f332a388a8224ebe19e030bd04a9627d255138acc3efef467604c55f
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.2.5.orig.tar.gz' expat_2.2.5.orig.tar.gz 8273003 SHA256:b3781742738611eaa737543ee94264dd511c52a3ba7e53111f7d705f6bff65a8
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.2.5-3.debian.tar.xz' expat_2.2.5-3.debian.tar.xz 10640 SHA256:497d14ac905cb70fc4cacc1e4d92bcccf792237b31fc506a5ea7c4d3aa6c8235
```

Other potentially useful URLs:

- https://sources.debian.net/src/expat/2.2.5-3/ (for browsing the source)
- https://sources.debian.net/src/expat/2.2.5-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/expat/2.2.5-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `explorercanvas=0.r3-4`

Binary Packages:

- `libjs-excanvas=0.r3-4`

Licenses: (parsed from: `/usr/share/doc/libjs-excanvas/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris explorercanvas=0.r3-4
'http://deb.debian.org/debian/pool/main/e/explorercanvas/explorercanvas_0.r3-4.dsc' explorercanvas_0.r3-4.dsc 2000 SHA256:d168011ed1f110f82b5039a6b070167f1f262d2a35d7fa25a6b5462f73761637
'http://deb.debian.org/debian/pool/main/e/explorercanvas/explorercanvas_0.r3.orig.tar.gz' explorercanvas_0.r3.orig.tar.gz 50748 SHA256:687af8084781b8eb3451fc55c88f6dfddc2b84428d197daf2c4c33fd5c55fed8
'http://deb.debian.org/debian/pool/main/e/explorercanvas/explorercanvas_0.r3-4.debian.tar.xz' explorercanvas_0.r3-4.debian.tar.xz 2040 SHA256:afcaa3e229d9b423988fc30439aeee1599c9dac8ad94430309404f9cf9f0c11f
```

Other potentially useful URLs:

- https://sources.debian.net/src/explorercanvas/0.r3-4/ (for browsing the source)
- https://sources.debian.net/src/explorercanvas/0.r3-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/explorercanvas/0.r3-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `fftw3=3.3.7-1`

Binary Packages:

- `libfftw3-double3:amd64=3.3.7-1`

Licenses: (parsed from: `/usr/share/doc/libfftw3-double3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris fftw3=3.3.7-1
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.7-1.dsc' fftw3_3.3.7-1.dsc 2941 SHA256:65568aacf8b55d87392aeb640ca9bcd37b0d9f1fe2312b298c43c18764e8470a
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.7.orig.tar.xz' fftw3_3.3.7.orig.tar.xz 2354860 SHA256:1eb677807ec114a3b1dbbae5d866683b71de2977101cb116063a753365465498
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.7-1.debian.tar.xz' fftw3_3.3.7-1.debian.tar.xz 13628 SHA256:5b3763ecfa0177e7c43bf330038b4b2c4d71a5b8c9c33b3e89ccfa4e59f2011b
```

Other potentially useful URLs:

- https://sources.debian.net/src/fftw3/3.3.7-1/ (for browsing the source)
- https://sources.debian.net/src/fftw3/3.3.7-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fftw3/3.3.7-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `file=1:5.32-1`

Binary Packages:

- `file=1:5.32-1`
- `libmagic-mgc=1:5.32-1`
- `libmagic1:amd64=1:5.32-1`

Licenses: (parsed from: `/usr/share/doc/file/copyright`, `/usr/share/doc/libmagic-mgc/copyright`, `/usr/share/doc/libmagic1/copyright`)

- `BSD-2-Clause-alike`
- `BSD-2-Clause-netbsd`
- `BSD-2-Clause-regents`
- `MIT-Old-Style-with-legal-disclaimer-2`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/file/1:5.32-1/


### `dpkg` source package: `findutils=4.6.0+git+20170828-2`

Binary Packages:

- `findutils=4.6.0+git+20170828-2`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.6.0+git+20170828-2
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0+git+20170828-2.dsc' findutils_4.6.0+git+20170828-2.dsc 2221 SHA256:6997072de2f1b24457073275f7b8f15ad2f0569389dcb277ebe99dd1846e2ee9
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0+git+20170828.orig.tar.xz' findutils_4.6.0+git+20170828.orig.tar.xz 1865192 SHA256:8d6571ffd5105307bcb1b20c4b7d5c2d0b5152e463b082801268bd3ec9e2bbfd
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0+git+20170828-2.debian.tar.xz' findutils_4.6.0+git+20170828-2.debian.tar.xz 26532 SHA256:5b13792a14edec982fddcf74fe01b4380b909703d76aaba2860da51c6248de73
```

Other potentially useful URLs:

- https://sources.debian.net/src/findutils/4.6.0+git+20170828-2/ (for browsing the source)
- https://sources.debian.net/src/findutils/4.6.0+git+20170828-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/findutils/4.6.0+git+20170828-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `fontconfig=2.12.6-0.1`

Binary Packages:

- `fontconfig=2.12.6-0.1`
- `fontconfig-config=2.12.6-0.1`
- `libfontconfig1:amd64=2.12.6-0.1`
- `libfontconfig1-dev:amd64=2.12.6-0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.12.6-0.1
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.12.6-0.1.dsc' fontconfig_2.12.6-0.1.dsc 1884 SHA256:90e466b5836daad14883941573be73dc607840b41af0e30fff0a6fa20e52de84
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.12.6.orig.tar.bz2' fontconfig_2.12.6.orig.tar.bz2 1624683 SHA256:cf0c30807d08f6a28ab46c61b8dbd55c97d2f292cf88f3a07d3384687f31f017
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.12.6-0.1.debian.tar.xz' fontconfig_2.12.6-0.1.debian.tar.xz 49736 SHA256:2dc50142680342e592ec4a52c6481f9b70308a76f9bd5356dfa7ed2f99436eeb
```

Other potentially useful URLs:

- https://sources.debian.net/src/fontconfig/2.12.6-0.1/ (for browsing the source)
- https://sources.debian.net/src/fontconfig/2.12.6-0.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fontconfig/2.12.6-0.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `fonts-dejavu=2.37-1`

Binary Packages:

- `fonts-dejavu-core=2.37-1`

Licenses: (parsed from: `/usr/share/doc/fonts-dejavu-core/copyright`)

- `GPL-2`
- `GPL-2+`
- `bitstream-vera`

Source:

```console
$ apt-get source -qq --print-uris fonts-dejavu=2.37-1
'http://deb.debian.org/debian/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-1.dsc' fonts-dejavu_2.37-1.dsc 2575 SHA256:f35ff7b2c8dbfda6564c9dedf088ba06cc6d279fdd8e7cccbd1ae08ded1bb71c
'http://deb.debian.org/debian/pool/main/f/fonts-dejavu/fonts-dejavu_2.37.orig.tar.bz2' fonts-dejavu_2.37.orig.tar.bz2 12050109 SHA256:4b21c5203f792343d5e90ab1cb0cf07e99887218abe3d83cd9a98cea9085e799
'http://deb.debian.org/debian/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-1.debian.tar.xz' fonts-dejavu_2.37-1.debian.tar.xz 10424 SHA256:5105cdbfc086f4a83ab6871eb39cc904bf02aa52762402b7cacf33d0938122f7
```

Other potentially useful URLs:

- https://sources.debian.net/src/fonts-dejavu/2.37-1/ (for browsing the source)
- https://sources.debian.net/src/fonts-dejavu/2.37-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fonts-dejavu/2.37-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `freetype=2.8.1-2`

Binary Packages:

- `libfreetype6:amd64=2.8.1-2`
- `libfreetype6-dev:amd64=2.8.1-2`

Licenses: (parsed from: `/usr/share/doc/libfreetype6/copyright`, `/usr/share/doc/libfreetype6-dev/copyright`)

- `BSD-2-Clause`
- `BSD-3-Clause`
- `Catharon-OSL`
- `FTL`
- `GPL-2`
- `GPL-2+`
- `GZip`
- `OpenGroup-BSD-like`

Source:

```console
$ apt-get source -qq --print-uris freetype=2.8.1-2
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.8.1-2.dsc' freetype_2.8.1-2.dsc 2169 SHA256:a557f67d2849d327cfc63ac76d395aab746a27b866588a58f9af6fcbc4c23019
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.8.1.orig.tar.gz' freetype_2.8.1.orig.tar.gz 4242784 SHA256:a7531cb8c2f6b709896f018380ad97e677e243847ff8a098d1b8b5d23e9d74d7
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.8.1-2.diff.gz' freetype_2.8.1-2.diff.gz 37741 SHA256:9a33ce04ea099336d6a79d06b60ba46f73a660f674b9def9a29323d525e1b6d6
```

Other potentially useful URLs:

- https://sources.debian.net/src/freetype/2.8.1-2/ (for browsing the source)
- https://sources.debian.net/src/freetype/2.8.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/freetype/2.8.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-7=7.3.0-3`

Binary Packages:

- `cpp-7=7.3.0-3`
- `g++-7=7.3.0-3`
- `gcc-7=7.3.0-3`
- `gcc-7-base:amd64=7.3.0-3`
- `libasan4:amd64=7.3.0-3`
- `libcilkrts5:amd64=7.3.0-3`
- `libgcc-7-dev:amd64=7.3.0-3`
- `libstdc++-7-dev:amd64=7.3.0-3`
- `libubsan0:amd64=7.3.0-3`

Licenses: (parsed from: `/usr/share/doc/cpp-7/copyright`, `/usr/share/doc/g++-7/copyright`, `/usr/share/doc/gcc-7/copyright`, `/usr/share/doc/gcc-7-base/copyright`, `/usr/share/doc/libasan4/copyright`, `/usr/share/doc/libcilkrts5/copyright`, `/usr/share/doc/libgcc-7-dev/copyright`, `/usr/share/doc/libstdc++-7-dev/copyright`, `/usr/share/doc/libubsan0/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-7=7.3.0-3
'http://deb.debian.org/debian/pool/main/g/gcc-7/gcc-7_7.3.0-3.dsc' gcc-7_7.3.0-3.dsc 25540 SHA256:90bb1e4c740b740b5e600258408919a3e8a9beed1b92fbee27c5eb0d6a173e86
'http://deb.debian.org/debian/pool/main/g/gcc-7/gcc-7_7.3.0.orig.tar.gz' gcc-7_7.3.0.orig.tar.gz 70153891 SHA256:6238c453fce162d3fdcd937bdfab4898c26ed0d2c16cd8c0d980e245ed2051d3
'http://deb.debian.org/debian/pool/main/g/gcc-7/gcc-7_7.3.0-3.diff.gz' gcc-7_7.3.0-3.diff.gz 701162 SHA256:5890c67594798fb1a842e7461a6d1b80b439f71369d21f5d6ca26ff72712757e
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-7/7.3.0-3/ (for browsing the source)
- https://sources.debian.net/src/gcc-7/7.3.0-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-7/7.3.0-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-8=8-20180207-2`

Binary Packages:

- `gcc-8-base:amd64=8-20180207-2`
- `libatomic1:amd64=8-20180207-2`
- `libcc1-0:amd64=8-20180207-2`
- `libgcc1:amd64=1:8-20180207-2`
- `libgomp1:amd64=8-20180207-2`
- `libitm1:amd64=8-20180207-2`
- `liblsan0:amd64=8-20180207-2`
- `libmpx2:amd64=8-20180207-2`
- `libquadmath0:amd64=8-20180207-2`
- `libstdc++6:amd64=8-20180207-2`
- `libtsan0:amd64=8-20180207-2`

Licenses: (parsed from: `/usr/share/doc/gcc-8-base/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libmpx2/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan0/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-8=8-20180207-2
'http://deb.debian.org/debian/pool/main/g/gcc-8/gcc-8_8-20180207-2.dsc' gcc-8_8-20180207-2.dsc 32286 SHA256:01cec1c9c93eb9bee7e95abb898819c4ea73282ff476d8ad50135d492039cfbd
'http://deb.debian.org/debian/pool/main/g/gcc-8/gcc-8_8-20180207.orig.tar.gz' gcc-8_8-20180207.orig.tar.gz 68861430 SHA256:76ba2cbcb59b47bbd8f99be165c1c277ad4b17710a3ad7e05b1fb0862e65d4bb
'http://deb.debian.org/debian/pool/main/g/gcc-8/gcc-8_8-20180207-2.diff.gz' gcc-8_8-20180207-2.diff.gz 600053 SHA256:13db91cc266dfb20e4833311fdf8ff37b190d895cc12f242b82abf2f0e0a978d
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-8/8-20180207-2/ (for browsing the source)
- https://sources.debian.net/src/gcc-8/8-20180207-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-8/8-20180207-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-defaults=1.173d1`

Binary Packages:

- `cpp=4:7.2.0-1d1`
- `g++=4:7.2.0-1d1`
- `gcc=4:7.2.0-1d1`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/gcc/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.173d1
'http://deb.debian.org/debian/pool/main/g/gcc-defaults/gcc-defaults_1.173d1.dsc' gcc-defaults_1.173d1.dsc 13267 SHA256:e6a297225d1a7fec8efa9469d5494f1eef5a97a1f367e01d00c9fa8c9ceb4032
'http://deb.debian.org/debian/pool/main/g/gcc-defaults/gcc-defaults_1.173d1.tar.gz' gcc-defaults_1.173d1.tar.gz 70353 SHA256:932237a594dff911306502d7ba0fb9e84f3e0a658930ef28d8aaedfeeeb46449
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-defaults/1.173d1/ (for browsing the source)
- https://sources.debian.net/src/gcc-defaults/1.173d1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-defaults/1.173d1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gdbm=1.8.3-14`

Binary Packages:

- `libgdbm-dev:amd64=1.8.3-14`
- `libgdbm3:amd64=1.8.3-14`

Licenses: (parsed from: `/usr/share/doc/libgdbm-dev/copyright`, `/usr/share/doc/libgdbm3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.8.3-14
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.8.3-14.dsc' gdbm_1.8.3-14.dsc 1841 SHA256:312d3d28e287d287ee66e8ae3f25769676b1680ec1adc8c0815b5e9808405b13
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.8.3.orig.tar.bz2' gdbm_1.8.3.orig.tar.bz2 172796 SHA256:1d5995b6e9e6be4ff62c8126d019f184a083dd8e6f75f6c74b9fe023b5b9440e
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.8.3-14.debian.tar.xz' gdbm_1.8.3-14.debian.tar.xz 15308 SHA256:1c0570dd53947ea5980111f51b67356d647c4f21c502443b02397041dde0bf31
```

Other potentially useful URLs:

- https://sources.debian.net/src/gdbm/1.8.3-14/ (for browsing the source)
- https://sources.debian.net/src/gdbm/1.8.3-14/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gdbm/1.8.3-14/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gdk-pixbuf=2.36.11-1`

Binary Packages:

- `gir1.2-gdkpixbuf-2.0:amd64=2.36.11-1`
- `libgdk-pixbuf2.0-0:amd64=2.36.11-1`
- `libgdk-pixbuf2.0-common=2.36.11-1`
- `libgdk-pixbuf2.0-dev=2.36.11-1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-gdkpixbuf-2.0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-common/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `MPL-1.1-or-LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris gdk-pixbuf=2.36.11-1
'http://deb.debian.org/debian/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.11-1.dsc' gdk-pixbuf_2.36.11-1.dsc 2893 SHA256:51c30d563a34fedf4b3a4ad32ab9147598a2f7b266186bc9e625566779432b95
'http://deb.debian.org/debian/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.11.orig.tar.xz' gdk-pixbuf_2.36.11.orig.tar.xz 5675908 SHA256:ae62ab87250413156ed72ef756347b10208c00e76b222d82d9ed361ed9dde2f3
'http://deb.debian.org/debian/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.11-1.debian.tar.xz' gdk-pixbuf_2.36.11-1.debian.tar.xz 13540 SHA256:0af4f3d5d41e051327e516492f197ca56a03b64c462cc8ca0bea66df3d75d8d5
```

Other potentially useful URLs:

- https://sources.debian.net/src/gdk-pixbuf/2.36.11-1/ (for browsing the source)
- https://sources.debian.net/src/gdk-pixbuf/2.36.11-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gdk-pixbuf/2.36.11-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `geoip=1.6.12-1`

Binary Packages:

- `geoip-bin=1.6.12-1`
- `libgeoip-dev=1.6.12-1`
- `libgeoip1:amd64=1.6.12-1`

Licenses: (parsed from: `/usr/share/doc/geoip-bin/copyright`, `/usr/share/doc/libgeoip-dev/copyright`, `/usr/share/doc/libgeoip1/copyright`)

- `ISC`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris geoip=1.6.12-1
'http://deb.debian.org/debian/pool/main/g/geoip/geoip_1.6.12-1.dsc' geoip_1.6.12-1.dsc 1831 SHA256:8052da52e8683208613ccda90c84b877efbe22d9dd9cba20602e4a606b0157e0
'http://deb.debian.org/debian/pool/main/g/geoip/geoip_1.6.12.orig.tar.gz' geoip_1.6.12.orig.tar.gz 160826 SHA256:99b119f8e21e94f1dfd6d49fbeed29a70df1544896e76cd456f25e397b07d476
'http://deb.debian.org/debian/pool/main/g/geoip/geoip_1.6.12-1.debian.tar.xz' geoip_1.6.12-1.debian.tar.xz 22308 SHA256:57e8c35fc909a32c624a26f75489adf20be886b663c49a926e328595d286ea6f
```

Other potentially useful URLs:

- https://sources.debian.net/src/geoip/1.6.12-1/ (for browsing the source)
- https://sources.debian.net/src/geoip/1.6.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/geoip/1.6.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `git=1:2.15.1-3`

Binary Packages:

- `git=1:2.15.1-3`
- `git-man=1:2.15.1-3`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/git/1:2.15.1-3/


### `dpkg` source package: `glib2.0=2.54.3-2`

Binary Packages:

- `libglib2.0-0:amd64=2.54.3-2`
- `libglib2.0-bin=2.54.3-2`
- `libglib2.0-data=2.54.3-2`
- `libglib2.0-dev:amd64=2.54.3-2`
- `libglib2.0-dev-bin=2.54.3-2`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`, `/usr/share/doc/libglib2.0-bin/copyright`, `/usr/share/doc/libglib2.0-data/copyright`, `/usr/share/doc/libglib2.0-dev/copyright`, `/usr/share/doc/libglib2.0-dev-bin/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.54.3-2
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.54.3-2.dsc' glib2.0_2.54.3-2.dsc 3254 SHA256:bb1268cc26c541c354acd89319983fad6c35e137463cb01a7ce1f8dca7a25580
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.54.3.orig.tar.xz' glib2.0_2.54.3.orig.tar.xz 7836536 SHA256:963fdc6685dc3da8e5381dfb9f15ca4b5709b28be84d9d05a9bb8e446abac0a8
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.54.3-2.debian.tar.xz' glib2.0_2.54.3-2.debian.tar.xz 74640 SHA256:1f7e90ae1541628d5cec3c18865ef6d26c6610e94e2f8962f42d2e44b04efe96
```

Other potentially useful URLs:

- https://sources.debian.net/src/glib2.0/2.54.3-2/ (for browsing the source)
- https://sources.debian.net/src/glib2.0/2.54.3-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glib2.0/2.54.3-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glibc=2.26-4`

Binary Packages:

- `libc-bin=2.26-4`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.26-4
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.26-4.dsc' glibc_2.26-4.dsc 8799 SHA256:4b551de8b7ecc553a6464e022c63b8118d8879a16305ba562dc5153dad2f148c
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.26.orig.tar.xz' glibc_2.26.orig.tar.xz 15270760 SHA256:38afc835050aa0850fbe15b10a7b18b7c1c70dc5a2fdf980762f3ad49e771870
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.26-4.debian.tar.xz' glibc_2.26-4.debian.tar.xz 1085352 SHA256:3e3385262c977489a5bd4f141233afb5d8bd06b9efcf07bb5547b7ffb5350b2d
```

Other potentially useful URLs:

- https://sources.debian.net/src/glibc/2.26-4/ (for browsing the source)
- https://sources.debian.net/src/glibc/2.26-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glibc/2.26-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glibc=2.26-6`

Binary Packages:

- `libc-dev-bin=2.26-6`
- `libc6:amd64=2.26-6`
- `libc6-dev:amd64=2.26-6`

Licenses: (parsed from: `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.26-6
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.26-6.dsc' glibc_2.26-6.dsc 8837 SHA256:c6030c9c664ae69f5919db52d138f334b6b876eccb2dc8ae564658ab4839ed2a
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.26.orig.tar.xz' glibc_2.26.orig.tar.xz 15270760 SHA256:38afc835050aa0850fbe15b10a7b18b7c1c70dc5a2fdf980762f3ad49e771870
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.26-6.debian.tar.xz' glibc_2.26-6.debian.tar.xz 1095568 SHA256:8a0dfd5f6a1e25ecd143c74abecb4604c089f1ca4aac7efaf2988d7945eef9ec
```

Other potentially useful URLs:

- https://sources.debian.net/src/glibc/2.26-6/ (for browsing the source)
- https://sources.debian.net/src/glibc/2.26-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glibc/2.26-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gmp=2:6.1.2+dfsg-2`

Binary Packages:

- `libgmp10:amd64=2:6.1.2+dfsg-2`

Licenses: (parsed from: `/usr/share/doc/libgmp10/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.1.2+dfsg-2
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2+dfsg-2.dsc' gmp_6.1.2+dfsg-2.dsc 2152 SHA256:d1e7b69c619c2d07b3eaf9f051159cde1884cf9c68109f1dee278bf7a59b632b
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2+dfsg.orig.tar.xz' gmp_6.1.2+dfsg.orig.tar.xz 1804424 SHA256:18016f718f621e7641ddd4e57f8e140391c5183252e5998263ffff59198a65b7
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2+dfsg-2.debian.tar.xz' gmp_6.1.2+dfsg-2.debian.tar.xz 20744 SHA256:33cf6cc65827c9df744e4e07b216ca2d02eb57327a949f80a7b7dddd0485ee85
```

Other potentially useful URLs:

- https://sources.debian.net/src/gmp/2:6.1.2+dfsg-2/ (for browsing the source)
- https://sources.debian.net/src/gmp/2:6.1.2+dfsg-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gmp/2:6.1.2+dfsg-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnome-icon-theme=3.12.0-2`

Binary Packages:

- `gnome-icon-theme=3.12.0-2`

Licenses: (parsed from: `/usr/share/doc/gnome-icon-theme/copyright`)

- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gnome-icon-theme=3.12.0-2
'http://deb.debian.org/debian/pool/main/g/gnome-icon-theme/gnome-icon-theme_3.12.0-2.dsc' gnome-icon-theme_3.12.0-2.dsc 1954 SHA256:2f86d5d7724a7728c482920fa5406c23f644b1d7b5769282989f0ce926dfc42a
'http://deb.debian.org/debian/pool/main/g/gnome-icon-theme/gnome-icon-theme_3.12.0.orig.tar.xz' gnome-icon-theme_3.12.0.orig.tar.xz 17742624 SHA256:359e720b9202d3aba8d477752c4cd11eced368182281d51ffd64c8572b4e503a
'http://deb.debian.org/debian/pool/main/g/gnome-icon-theme/gnome-icon-theme_3.12.0-2.debian.tar.xz' gnome-icon-theme_3.12.0-2.debian.tar.xz 17824 SHA256:a9e2504cb933329efe2604e46aa81f16099e9774fc37e56c34f854442bc44627
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnome-icon-theme/3.12.0-2/ (for browsing the source)
- https://sources.debian.net/src/gnome-icon-theme/3.12.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnome-icon-theme/3.12.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnupg2=2.2.4-3`

Binary Packages:

- `dirmngr=2.2.4-3`
- `gnupg=2.2.4-3`
- `gnupg-l10n=2.2.4-3`
- `gnupg-utils=2.2.4-3`
- `gpg=2.2.4-3`
- `gpg-agent=2.2.4-3`
- `gpg-wks-client=2.2.4-3`
- `gpg-wks-server=2.2.4-3`
- `gpgconf=2.2.4-3`
- `gpgsm=2.2.4-3`
- `gpgv=2.2.4-3`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gnupg-l10n/copyright`, `/usr/share/doc/gnupg-utils/copyright`, `/usr/share/doc/gpg/copyright`, `/usr/share/doc/gpg-agent/copyright`, `/usr/share/doc/gpg-wks-client/copyright`, `/usr/share/doc/gpg-wks-server/copyright`, `/usr/share/doc/gpgconf/copyright`, `/usr/share/doc/gpgsm/copyright`, `/usr/share/doc/gpgv/copyright`)

- `BSD-3-clause`
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
$ apt-get source -qq --print-uris gnupg2=2.2.4-3
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.4-3.dsc' gnupg2_2.2.4-3.dsc 2885 SHA256:e8fb508a526d1c0ba88c29975ec09fd7b28708f1af93def38bf3caba21b7589c
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.4.orig.tar.bz2' gnupg2_2.2.4.orig.tar.bz2 6571487 SHA256:401a3e64780fdfa6d7670de0880aa5c9d589b3db7a7098979d7606cec546f2ec
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.4-3.debian.tar.bz2' gnupg2_2.2.4-3.debian.tar.bz2 71771 SHA256:aff6757f4ebd3dcb5d18d1762818af0ad101b8ed1e4ffcb694de627d830ae90a
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnupg2/2.2.4-3/ (for browsing the source)
- https://sources.debian.net/src/gnupg2/2.2.4-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnupg2/2.2.4-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnutls28=3.5.17-1`

Binary Packages:

- `libgnutls30:amd64=3.5.17-1`

Licenses: (parsed from: `/usr/share/doc/libgnutls30/copyright`)

- `CC0 license`
- `GFDL-1.3`
- `GPL`
- `GPL-3`
- `LGPL`
- `LGPL-3`
- `LGPL2.1`
- `The MIT License (MIT)`
- `The main library is licensed under GNU Lesser`

Source:

```console
$ apt-get source -qq --print-uris gnutls28=3.5.17-1
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.5.17-1.dsc' gnutls28_3.5.17-1.dsc 3322 SHA256:c9e4b785f2c9fbf5f234148e5ba69928e40d72dcfbac0150206d7f6593ee864b
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.5.17.orig.tar.xz' gnutls28_3.5.17.orig.tar.xz 7261864 SHA256:86b142afef587c118d63f72ccf307f3321dbc40357aae528202b65d913d20919
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.5.17.orig.tar.xz.asc' gnutls28_3.5.17.orig.tar.xz.asc 534 SHA256:9c1bc205776f8d26d6b60a7fe85ef8b83467712ccc52c3a8b8bc2184f9869736
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.5.17-1.debian.tar.xz' gnutls28_3.5.17-1.debian.tar.xz 105808 SHA256:269855505067a3fd669a6a36234bcff1fac0574d11cfb19c4e7457c9a8d7947f
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnutls28/3.5.17-1/ (for browsing the source)
- https://sources.debian.net/src/gnutls28/3.5.17-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnutls28/3.5.17-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gobject-introspection=1.54.1-4`

Binary Packages:

- `gir1.2-freedesktop:amd64=1.54.1-4`
- `gir1.2-glib-2.0:amd64=1.54.1-4`
- `libgirepository-1.0-1:amd64=1.54.1-4`

Licenses: (parsed from: `/usr/share/doc/gir1.2-freedesktop/copyright`, `/usr/share/doc/gir1.2-glib-2.0/copyright`, `/usr/share/doc/libgirepository-1.0-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris gobject-introspection=1.54.1-4
'http://deb.debian.org/debian/pool/main/g/gobject-introspection/gobject-introspection_1.54.1-4.dsc' gobject-introspection_1.54.1-4.dsc 2878 SHA256:ec5a80c2aa20211d8f8a5f01d8a9e7f31a889502d44b8bb00aa1482e11bcc05d
'http://deb.debian.org/debian/pool/main/g/gobject-introspection/gobject-introspection_1.54.1.orig.tar.xz' gobject-introspection_1.54.1.orig.tar.xz 1392504 SHA256:b88ded5e5f064ab58a93aadecd6d58db2ec9d970648534c63807d4f9a7bb877e
'http://deb.debian.org/debian/pool/main/g/gobject-introspection/gobject-introspection_1.54.1-4.debian.tar.xz' gobject-introspection_1.54.1-4.debian.tar.xz 20256 SHA256:02558637c7c2c6271e58b39c85d1aa51da2d01c7d01e217715e3bd5b3c92b146
```

Other potentially useful URLs:

- https://sources.debian.net/src/gobject-introspection/1.54.1-4/ (for browsing the source)
- https://sources.debian.net/src/gobject-introspection/1.54.1-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gobject-introspection/1.54.1-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `graphite2=1.3.10-8`

Binary Packages:

- `libgraphite2-3:amd64=1.3.10-8`

Licenses: (parsed from: `/usr/share/doc/libgraphite2-3/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-2.1+ `
- `MPL-1.1`
- `custom-sil-open-font-license`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris graphite2=1.3.10-8
'http://deb.debian.org/debian/pool/main/g/graphite2/graphite2_1.3.10-8.dsc' graphite2_1.3.10-8.dsc 2379 SHA256:4fdc372bd74965337a7fd3db9081caf8a349ad41317d95f8f04c257aa71918ad
'http://deb.debian.org/debian/pool/main/g/graphite2/graphite2_1.3.10.orig.tar.gz' graphite2_1.3.10.orig.tar.gz 3889647 SHA256:90fde3b2f9ea95d68ffb19278d07d9b8a7efa5ba0e413bebcea802ce05cda1ae
'http://deb.debian.org/debian/pool/main/g/graphite2/graphite2_1.3.10-8.debian.tar.xz' graphite2_1.3.10-8.debian.tar.xz 11792 SHA256:53ec37195cd657535514da04f2067fed0bed9bab47f4f9101c2d1eb6e3cd5277
```

Other potentially useful URLs:

- https://sources.debian.net/src/graphite2/1.3.10-8/ (for browsing the source)
- https://sources.debian.net/src/graphite2/1.3.10-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/graphite2/1.3.10-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `graphviz=2.38.0-18`

Binary Packages:

- `libcdt5=2.38.0-18`
- `libcgraph6=2.38.0-18`
- `libgraphviz-dev=2.38.0-18`
- `libgvc6=2.38.0-18`
- `libgvc6-plugins-gtk=2.38.0-18`
- `libgvpr2=2.38.0-18`
- `libpathplan4=2.38.0-18`
- `libxdot4=2.38.0-18`

Licenses: (parsed from: `/usr/share/doc/libcdt5/copyright`, `/usr/share/doc/libcgraph6/copyright`, `/usr/share/doc/libgraphviz-dev/copyright`, `/usr/share/doc/libgvc6/copyright`, `/usr/share/doc/libgvc6-plugins-gtk/copyright`, `/usr/share/doc/libgvpr2/copyright`, `/usr/share/doc/libpathplan4/copyright`, `/usr/share/doc/libxdot4/copyright`)

- `EPL-1.0`
- `MIT`
- `X/MIT`
- `zlib-style`

Source:

```console
$ apt-get source -qq --print-uris graphviz=2.38.0-18
'http://deb.debian.org/debian/pool/main/g/graphviz/graphviz_2.38.0-18.dsc' graphviz_2.38.0-18.dsc 3254 SHA256:5edef7a53ef60b4476a62f07c9dd9e4de42653e17464927aacdf1a93c98c7126
'http://deb.debian.org/debian/pool/main/g/graphviz/graphviz_2.38.0.orig.tar.gz' graphviz_2.38.0.orig.tar.gz 25848858 SHA256:81aa238d9d4a010afa73a9d2a704fc3221c731e1e06577c2ab3496bdef67859e
'http://deb.debian.org/debian/pool/main/g/graphviz/graphviz_2.38.0-18.debian.tar.xz' graphviz_2.38.0-18.debian.tar.xz 43448 SHA256:ea65f4aa6b661e1026a18118bc2fa517af398629699b17fccccc7e685b2ec619
```

Other potentially useful URLs:

- https://sources.debian.net/src/graphviz/2.38.0-18/ (for browsing the source)
- https://sources.debian.net/src/graphviz/2.38.0-18/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/graphviz/2.38.0-18/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `grep=3.1-2`

Binary Packages:

- `grep=3.1-2`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=3.1-2
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.1-2.dsc' grep_3.1-2.dsc 2046 SHA256:b75ef8eb1399a49274bafe972679680b7add1500a4ee82eedaa0372f8ed744a0
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.1.orig.tar.xz' grep_3.1.orig.tar.xz 1370880 SHA256:db625c7ab3bb3ee757b3926a5cfa8d9e1c3991ad24707a83dde8a5ef2bf7a07e
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.1-2.debian.tar.bz2' grep_3.1-2.debian.tar.bz2 110067 SHA256:f09ce7a3c860a5de8939ebceb5fcd85d00d1537ad9f998dae5f623d9bcfe4e40
```

Other potentially useful URLs:

- https://sources.debian.net/src/grep/3.1-2/ (for browsing the source)
- https://sources.debian.net/src/grep/3.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/grep/3.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gtk+2.0=2.24.32-1`

Binary Packages:

- `libgtk2.0-0:amd64=2.24.32-1`
- `libgtk2.0-common=2.24.32-1`

Licenses: (parsed from: `/usr/share/doc/libgtk2.0-0/copyright`, `/usr/share/doc/libgtk2.0-common/copyright`)

- `LGPL-2`
- `other`

Source:

```console
$ apt-get source -qq --print-uris gtk+2.0=2.24.32-1
'http://deb.debian.org/debian/pool/main/g/gtk+2.0/gtk+2.0_2.24.32-1.dsc' gtk+2.0_2.24.32-1.dsc 3630 SHA256:cd5084bb9abc19fa9ff2f193da08dfd9b57de1a4e8e4d458dd708a9211a088cb
'http://deb.debian.org/debian/pool/main/g/gtk+2.0/gtk+2.0_2.24.32.orig.tar.xz' gtk+2.0_2.24.32.orig.tar.xz 12620860 SHA256:b6c8a93ddda5eabe3bfee1eb39636c9a03d2a56c7b62828b359bf197943c582e
'http://deb.debian.org/debian/pool/main/g/gtk+2.0/gtk+2.0_2.24.32-1.debian.tar.xz' gtk+2.0_2.24.32-1.debian.tar.xz 86628 SHA256:3ea93f156f537df893d953a81669cbde8e46bf4e57c6fc5a4538028ab5e2dc15
```

Other potentially useful URLs:

- https://sources.debian.net/src/gtk+2.0/2.24.32-1/ (for browsing the source)
- https://sources.debian.net/src/gtk+2.0/2.24.32-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gtk+2.0/2.24.32-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gtk+3.0=3.22.26-2`

Binary Packages:

- `gtk-update-icon-cache=3.22.26-2`

Licenses: (parsed from: `/usr/share/doc/gtk-update-icon-cache/copyright`)

- `Apache-2.0`
- `Expat`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `SWL`
- `other`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/gtk+3.0/3.22.26-2/


### `dpkg` source package: `gts=0.7.6+darcs121130-4`

Binary Packages:

- `libgts-0.7-5:amd64=0.7.6+darcs121130-4`

Licenses: (parsed from: `/usr/share/doc/libgts-0.7-5/copyright`)

- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris gts=0.7.6+darcs121130-4
'http://deb.debian.org/debian/pool/main/g/gts/gts_0.7.6+darcs121130-4.dsc' gts_0.7.6+darcs121130-4.dsc 2170 SHA256:3d7dbf72a2194891a485d03f8a002e8d149dc59a915a7bbf36b42c53408ef733
'http://deb.debian.org/debian/pool/main/g/gts/gts_0.7.6+darcs121130.orig.tar.gz' gts_0.7.6+darcs121130.orig.tar.gz 880569 SHA256:c23f72ab74bbf65599f8c0b599d6336fabe1ec2a09c19b70544eeefdc069b73b
'http://deb.debian.org/debian/pool/main/g/gts/gts_0.7.6+darcs121130-4.debian.tar.bz2' gts_0.7.6+darcs121130-4.debian.tar.bz2 13837 SHA256:1fcf9c79ca0b4fc3662de645ba4e65564ea974566a3ecd730e9908f1adc425cd
```

Other potentially useful URLs:

- https://sources.debian.net/src/gts/0.7.6+darcs121130-4/ (for browsing the source)
- https://sources.debian.net/src/gts/0.7.6+darcs121130-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gts/0.7.6+darcs121130-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gzip=1.6-5`

Binary Packages:

- `gzip=1.6-5+b1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.6-5
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.6-5.dsc' gzip_1.6-5.dsc 1867 SHA256:922751ee5fc426d623e824c55f7822fa60f26f35b5389b37c8b15feff639608c
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.6.orig.tar.gz' gzip_1.6.orig.tar.gz 1074924 SHA256:97eb83b763d9e5ad35f351fe5517e6b71521d7aac7acf3e3cacdb6b1496d8f7e
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.6-5.debian.tar.xz' gzip_1.6-5.debian.tar.xz 14684 SHA256:ac5282c32083ff58fc01317ee402b687b3806555aa1d4e80a62bb0f2ad93167e
```

Other potentially useful URLs:

- https://sources.debian.net/src/gzip/1.6-5/ (for browsing the source)
- https://sources.debian.net/src/gzip/1.6-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gzip/1.6-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `harfbuzz=1.7.2-1`

Binary Packages:

- `libharfbuzz0b:amd64=1.7.2-1`

Licenses: (parsed from: `/usr/share/doc/libharfbuzz0b/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris harfbuzz=1.7.2-1
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_1.7.2-1.dsc' harfbuzz_1.7.2-1.dsc 2280 SHA256:edc57d3aae36501ec509aa20df686539dcb2bf82f25ed43e86f6f9f380d947c4
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_1.7.2.orig.tar.bz2' harfbuzz_1.7.2.orig.tar.bz2 1708416 SHA256:a790585e35c1a87f0dcc23580c84b7cc2324e6f67a2946178d278c2a36c790cb
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_1.7.2-1.debian.tar.xz' harfbuzz_1.7.2-1.debian.tar.xz 8912 SHA256:b7fe86314450d2989e63c3d48d40316d062ef4eedba634431379e5e2d28ffa98
```

Other potentially useful URLs:

- https://sources.debian.net/src/harfbuzz/1.7.2-1/ (for browsing the source)
- https://sources.debian.net/src/harfbuzz/1.7.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/harfbuzz/1.7.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `hicolor-icon-theme=0.17-1`

Binary Packages:

- `hicolor-icon-theme=0.17-1`

Licenses: (parsed from: `/usr/share/doc/hicolor-icon-theme/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris hicolor-icon-theme=0.17-1
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17-1.dsc' hicolor-icon-theme_0.17-1.dsc 1592 SHA256:c60867c2937f943439da5b567bf7344dbef4834ed5af85ead84c091a17f1312c
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17.orig.tar.xz' hicolor-icon-theme_0.17.orig.tar.xz 53016 SHA256:317484352271d18cbbcfac3868eab798d67fff1b8402e740baa6ff41d588a9d8
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17-1.debian.tar.xz' hicolor-icon-theme_0.17-1.debian.tar.xz 3408 SHA256:3318c99b4a7dda3bc7b6a912c951ce5366cc46773c41dddd2ea0599f47357c56
```

Other potentially useful URLs:

- https://sources.debian.net/src/hicolor-icon-theme/0.17-1/ (for browsing the source)
- https://sources.debian.net/src/hicolor-icon-theme/0.17-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/hicolor-icon-theme/0.17-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `hostname=3.20`

Binary Packages:

- `hostname=3.20`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.20
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.20.dsc' hostname_3.20.dsc 1429 SHA256:1fd7b0b2b61e58aa0e50de4d375072c938cb3cc4b722bc73e085e3a3691d9114
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.20.tar.gz' hostname_3.20.tar.gz 13336 SHA256:e7ed56f8c532573ff34d9bd6e7a10d04fbbb2c7fae187898805868e5fed24ab0
```

Other potentially useful URLs:

- https://sources.debian.net/src/hostname/3.20/ (for browsing the source)
- https://sources.debian.net/src/hostname/3.20/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/hostname/3.20/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `icu=57.1-8`

Binary Packages:

- `icu-devtools=57.1-8`
- `libicu-dev=57.1-8`
- `libicu57:amd64=57.1-8`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris icu=57.1-8
'http://deb.debian.org/debian/pool/main/i/icu/icu_57.1-8.dsc' icu_57.1-8.dsc 2085 SHA256:1c2b2f330ef095ad875a56b453c1f00bf560a04e8e9c9dce093024ee81908598
'http://deb.debian.org/debian/pool/main/i/icu/icu_57.1.orig.tar.gz' icu_57.1.orig.tar.gz 22360664 SHA256:ff8c67cb65949b1e7808f2359f2b80f722697048e90e7cfc382ec1fe229e9581
'http://deb.debian.org/debian/pool/main/i/icu/icu_57.1-8.debian.tar.xz' icu_57.1-8.debian.tar.xz 33076 SHA256:ec594621cea01f69457cea01b4c19715f9952778bd217ea6cd0099975031fb4f
```

Other potentially useful URLs:

- https://sources.debian.net/src/icu/57.1-8/ (for browsing the source)
- https://sources.debian.net/src/icu/57.1-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/icu/57.1-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ilmbase=2.2.1-2`

Binary Packages:

- `libilmbase-dev=2.2.1-2`
- `libilmbase23:amd64=2.2.1-2`

Licenses: (parsed from: `/usr/share/doc/libilmbase-dev/copyright`, `/usr/share/doc/libilmbase23/copyright`)

- `boost`
- `ilmbase`

Source:

```console
$ apt-get source -qq --print-uris ilmbase=2.2.1-2
'http://deb.debian.org/debian/pool/main/i/ilmbase/ilmbase_2.2.1-2.dsc' ilmbase_2.2.1-2.dsc 2294 SHA256:fd974ee3708b26c66e2016b39f232faaf213799e50fffdb1b898ef1d6e7826e1
'http://deb.debian.org/debian/pool/main/i/ilmbase/ilmbase_2.2.1.orig.tar.gz' ilmbase_2.2.1.orig.tar.gz 573073 SHA256:cac206e63be68136ef556c2b555df659f45098c159ce24804e9d5e9e0286609e
'http://deb.debian.org/debian/pool/main/i/ilmbase/ilmbase_2.2.1.orig.tar.gz.asc' ilmbase_2.2.1.orig.tar.gz.asc 566 SHA256:81f3e8947b240ffcae9178574ca7ebadeffa6071f9d03f7810e624e9d0060df0
'http://deb.debian.org/debian/pool/main/i/ilmbase/ilmbase_2.2.1-2.debian.tar.xz' ilmbase_2.2.1-2.debian.tar.xz 10456 SHA256:722aeae93fe97e1cb8cf57bf2fc5b55c010a6d5a0ede18975866bfcd7dca07cb
```

Other potentially useful URLs:

- https://sources.debian.net/src/ilmbase/2.2.1-2/ (for browsing the source)
- https://sources.debian.net/src/ilmbase/2.2.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ilmbase/2.2.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `imagemagick=8:6.9.7.4+dfsg-16`

Binary Packages:

- `imagemagick=8:6.9.7.4+dfsg-16`
- `imagemagick-6-common=8:6.9.7.4+dfsg-16`
- `imagemagick-6.q16=8:6.9.7.4+dfsg-16`
- `libmagickcore-6-arch-config:amd64=8:6.9.7.4+dfsg-16`
- `libmagickcore-6-headers=8:6.9.7.4+dfsg-16`
- `libmagickcore-6.q16-3:amd64=8:6.9.7.4+dfsg-16`
- `libmagickcore-6.q16-3-extra:amd64=8:6.9.7.4+dfsg-16`
- `libmagickcore-6.q16-dev:amd64=8:6.9.7.4+dfsg-16`
- `libmagickcore-dev=8:6.9.7.4+dfsg-16`
- `libmagickwand-6-headers=8:6.9.7.4+dfsg-16`
- `libmagickwand-6.q16-3:amd64=8:6.9.7.4+dfsg-16`
- `libmagickwand-6.q16-dev:amd64=8:6.9.7.4+dfsg-16`
- `libmagickwand-dev=8:6.9.7.4+dfsg-16`

Licenses: (parsed from: `/usr/share/doc/imagemagick/copyright`, `/usr/share/doc/imagemagick-6-common/copyright`, `/usr/share/doc/imagemagick-6.q16/copyright`, `/usr/share/doc/libmagickcore-6-arch-config/copyright`, `/usr/share/doc/libmagickcore-6-headers/copyright`, `/usr/share/doc/libmagickcore-6.q16-3/copyright`, `/usr/share/doc/libmagickcore-6.q16-3-extra/copyright`, `/usr/share/doc/libmagickcore-6.q16-dev/copyright`, `/usr/share/doc/libmagickcore-dev/copyright`, `/usr/share/doc/libmagickwand-6-headers/copyright`, `/usr/share/doc/libmagickwand-6.q16-3/copyright`, `/usr/share/doc/libmagickwand-6.q16-dev/copyright`, `/usr/share/doc/libmagickwand-dev/copyright`)

- `Artistic`
- `BSD-with-FSF-change-public-domain`
- `GNU-All-Permissive-License`
- `GPL-1`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL2+-with-Autoconf-Macros-exception`
- `GPL3+-with-Autoconf-Macros-exception`
- `GPL3+-with-Autoconf-Macros-exception-GNU`
- `ImageMagick`
- `ImageMagickLicensePartEZXML`
- `ImageMagickLicensePartFIG`
- `ImageMagickLicensePartGsview`
- `ImageMagickLicensePartOpenSSH`
- `ImageMagickPartGraphicsMagick`
- `ImageMagickPartlibjpeg`
- `ImageMagickPartlibsquish`
- `LGPL-3`
- `LGPL-3+`
- `Magick++`
- `Perllikelicence`
- `TatcherUlrichPublicDomain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/imagemagick/8:6.9.7.4+dfsg-16/


### `dpkg` source package: `inetutils=2:1.9.4-3`

Binary Packages:

- `inetutils-ping=2:1.9.4-3`

Licenses: (parsed from: `/usr/share/doc/inetutils-ping/copyright`)

- `BSD-3-clause`
- `GFDL-1.3`
- `GFDL-1.3+`
- `GPL-3`
- `GPL-3+`
- `MIT`
- `Wietse`

Source:

```console
$ apt-get source -qq --print-uris inetutils=2:1.9.4-3
'http://deb.debian.org/debian/pool/main/i/inetutils/inetutils_1.9.4-3.dsc' inetutils_1.9.4-3.dsc 2695 SHA256:17a390dcdd399a21e51611eadf4f7bcfc8b5371f6294ef61d6d3bcc4501cea91
'http://deb.debian.org/debian/pool/main/i/inetutils/inetutils_1.9.4.orig.tar.xz' inetutils_1.9.4.orig.tar.xz 1364408 SHA256:849d96f136effdef69548a940e3e0ec0624fc0c81265296987986a0dd36ded37
'http://deb.debian.org/debian/pool/main/i/inetutils/inetutils_1.9.4-3.debian.tar.xz' inetutils_1.9.4-3.debian.tar.xz 76840 SHA256:206f868fac2ebc51faa6cd20420bdba4ea539712cfe9e96604b726738cc4157a
```

Other potentially useful URLs:

- https://sources.debian.net/src/inetutils/2:1.9.4-3/ (for browsing the source)
- https://sources.debian.net/src/inetutils/2:1.9.4-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/inetutils/2:1.9.4-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `init-system-helpers=1.51`

Binary Packages:

- `init-system-helpers=1.51`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.51
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.51.dsc' init-system-helpers_1.51.dsc 1963 SHA256:82f0e30fef2ad14c65f9c7d8ccafd43549451041fdf661dca28b963a6cef02e4
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.51.tar.xz' init-system-helpers_1.51.tar.xz 37468 SHA256:e18b28efe8df087146d9c1e4e9c25386ee1b7312f518d48a2a38469a6c661be0
```

Other potentially useful URLs:

- https://sources.debian.net/src/init-system-helpers/1.51/ (for browsing the source)
- https://sources.debian.net/src/init-system-helpers/1.51/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/init-system-helpers/1.51/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `iproute2=4.14.1-2`

Binary Packages:

- `iproute2=4.14.1-2`

Licenses: (parsed from: `/usr/share/doc/iproute2/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris iproute2=4.14.1-2
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.14.1-2.dsc' iproute2_4.14.1-2.dsc 1846 SHA256:a1e27c0d7b9ff23e17cb39594dadbdd3f1babcfbdc884dfeae8369ddbbda1c66
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.14.1.orig.tar.xz' iproute2_4.14.1.orig.tar.xz 636876 SHA256:d43ac068afcc350a448f4581b6e292331ef7e4e7aa746e34981582d5fdb10067
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.14.1-2.debian.tar.xz' iproute2_4.14.1-2.debian.tar.xz 137800 SHA256:305bd36c84298fbfe65e903f11267a637551f50d3022e7ccd4f92bf23ff44678
```

Other potentially useful URLs:

- https://sources.debian.net/src/iproute2/4.14.1-2/ (for browsing the source)
- https://sources.debian.net/src/iproute2/4.14.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/iproute2/4.14.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `isl=0.18-1`

Binary Packages:

- `libisl15:amd64=0.18-1`

Licenses: (parsed from: `/usr/share/doc/libisl15/copyright`)

- `BSD-2-clause`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.18-1
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.18-1.dsc' isl_0.18-1.dsc 1882 SHA256:aed8295d019805686fd795652d930b1440bc0ae3be4373332d97784645d7c583
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.18.orig.tar.xz' isl_0.18.orig.tar.xz 1475708 SHA256:0f35051cc030b87c673ac1f187de40e386a1482a0cfdf2c552dd6031b307ddc4
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.18-1.debian.tar.xz' isl_0.18-1.debian.tar.xz 21860 SHA256:eac951311a871bb6d7886c98068290f771aaf78616516855b472d2500b84f53c
```

Other potentially useful URLs:

- https://sources.debian.net/src/isl/0.18-1/ (for browsing the source)
- https://sources.debian.net/src/isl/0.18-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/isl/0.18-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `jbigkit=2.1-3.1`

Binary Packages:

- `libjbig-dev:amd64=2.1-3.1+b2`
- `libjbig0:amd64=2.1-3.1+b2`

Licenses: (parsed from: `/usr/share/doc/libjbig-dev/copyright`, `/usr/share/doc/libjbig0/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris jbigkit=2.1-3.1
'http://deb.debian.org/debian/pool/main/j/jbigkit/jbigkit_2.1-3.1.dsc' jbigkit_2.1-3.1.dsc 1299 SHA256:62c8812d508958c5d35f2b1579dc3052fb5bd8d2e77d023fad064c4b48c8c3f8
'http://deb.debian.org/debian/pool/main/j/jbigkit/jbigkit_2.1.orig.tar.gz' jbigkit_2.1.orig.tar.gz 438710 SHA256:de7106b6bfaf495d6865c7dd7ac6ca1381bd12e0d81405ea81e7f2167263d932
'http://deb.debian.org/debian/pool/main/j/jbigkit/jbigkit_2.1-3.1.debian.tar.xz' jbigkit_2.1-3.1.debian.tar.xz 7600 SHA256:ebc3c52deaf37d52baea54d648a713640dc262926abda7bf05cd08e7db5dd1ee
```

Other potentially useful URLs:

- https://sources.debian.net/src/jbigkit/2.1-3.1/ (for browsing the source)
- https://sources.debian.net/src/jbigkit/2.1-3.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/jbigkit/2.1-3.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `keyutils=1.5.9-9.2`

Binary Packages:

- `libkeyutils1:amd64=1.5.9-9.2`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.5.9-9.2
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.9-9.2.dsc' keyutils_1.5.9-9.2.dsc 2093 SHA256:41496f40742131ecb8ff0bb51df26989f58dc1c0698b85e04e9e30938e583709
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.9.orig.tar.bz2' keyutils_1.5.9.orig.tar.bz2 74683 SHA256:4da2c5552c688b65ab14d4fd40fbdf720c8b396d8ece643e040cf6e707e083ae
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.9-9.2.debian.tar.xz' keyutils_1.5.9-9.2.debian.tar.xz 17848 SHA256:c137f4a426819253a9416177ffb1cf943691210b6910239779b82aa4c4714337
```

Other potentially useful URLs:

- https://sources.debian.net/src/keyutils/1.5.9-9.2/ (for browsing the source)
- https://sources.debian.net/src/keyutils/1.5.9-9.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/keyutils/1.5.9-9.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `krb5=1.16-2`

Binary Packages:

- `krb5-multidev:amd64=1.16-2`
- `libgssapi-krb5-2:amd64=1.16-2`
- `libgssrpc4:amd64=1.16-2`
- `libk5crypto3:amd64=1.16-2`
- `libkadm5clnt-mit11:amd64=1.16-2`
- `libkadm5srv-mit11:amd64=1.16-2`
- `libkdb5-9:amd64=1.16-2`
- `libkrb5-3:amd64=1.16-2`
- `libkrb5-dev:amd64=1.16-2`
- `libkrb5support0:amd64=1.16-2`

Licenses: (parsed from: `/usr/share/doc/krb5-multidev/copyright`, `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libgssrpc4/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkadm5clnt-mit11/copyright`, `/usr/share/doc/libkadm5srv-mit11/copyright`, `/usr/share/doc/libkdb5-9/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5-dev/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.16-2
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.16-2.dsc' krb5_1.16-2.dsc 3358 SHA256:b854c4994e9f45b4e99498e5b8fbdda6ec4f5c06f697a7cfce3ab2a89cc8e60f
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.16.orig.tar.gz' krb5_1.16.orig.tar.gz 9474479 SHA256:faeb125f83b0fb4cdb2f99f088140631bb47d975982de0956d18c85842969e08
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.16-2.debian.tar.xz' krb5_1.16-2.debian.tar.xz 96272 SHA256:96c43881a8503b01c5025a4855de9261d0633200e15627d74f9717a0f971ac6c
```

Other potentially useful URLs:

- https://sources.debian.net/src/krb5/1.16-2/ (for browsing the source)
- https://sources.debian.net/src/krb5/1.16-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/krb5/1.16-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lcms2=2.9-1`

Binary Packages:

- `liblcms2-2:amd64=2.9-1`
- `liblcms2-dev:amd64=2.9-1`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`, `/usr/share/doc/liblcms2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris lcms2=2.9-1
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.9-1.dsc' lcms2_2.9-1.dsc 1985 SHA256:6c47df15d0a6434d33a48a2232ed9b59dac8840fac106ae7570fabcfef44380f
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.9.orig.tar.gz' lcms2_2.9.orig.tar.gz 10974649 SHA256:48c6fdf98396fa245ed86e622028caf49b96fa22f3e5734f853f806fbc8e7d20
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.9-1.debian.tar.xz' lcms2_2.9-1.debian.tar.xz 10040 SHA256:e2a48d8d302fc85f14439b67c9f66f341453558a16cef1991096b3acfe618b13
```

Other potentially useful URLs:

- https://sources.debian.net/src/lcms2/2.9-1/ (for browsing the source)
- https://sources.debian.net/src/lcms2/2.9-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lcms2/2.9-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libassuan=2.5.1-2`

Binary Packages:

- `libassuan0:amd64=2.5.1-2`

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
$ apt-get source -qq --print-uris libassuan=2.5.1-2
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_2.5.1-2.dsc' libassuan_2.5.1-2.dsc 2215 SHA256:e954a7ef30815e62832ca4a1d2959142e264795e7ec78ba369752353135beb68
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_2.5.1.orig.tar.bz2' libassuan_2.5.1.orig.tar.bz2 564857 SHA256:47f96c37b4f2aac289f0bc1bacfa8bd8b4b209a488d3d15e2229cb6cc9b26449
'http://deb.debian.org/debian/pool/main/liba/libassuan/libassuan_2.5.1-2.debian.tar.xz' libassuan_2.5.1-2.debian.tar.xz 15236 SHA256:4a67901dcb0e92cd40e0d5d7148ebe6f929378671df373eb68b48acb560d641f
```

Other potentially useful URLs:

- https://sources.debian.net/src/libassuan/2.5.1-2/ (for browsing the source)
- https://sources.debian.net/src/libassuan/2.5.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libassuan/2.5.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libbsd=0.8.7-1`

Binary Packages:

- `libbsd0:amd64=0.8.7-1`

Licenses: (parsed from: `/usr/share/doc/libbsd0/copyright`)

- `BSD-2-clause`
- `BSD-2-clause-NetBSD`
- `BSD-2-clause-author`
- `BSD-2-clause-verbatim`
- `BSD-3-clause`
- `BSD-3-clause-John-Birrell`
- `BSD-3-clause-Peter-Wemm`
- `BSD-3-clause-Regents`
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
$ apt-get source -qq --print-uris libbsd=0.8.7-1
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.7-1.dsc' libbsd_0.8.7-1.dsc 2181 SHA256:4354dc5d963ba909589b3a26a5e135c5a552710cdaa96fc0e76d88e9f78fe72e
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.7.orig.tar.xz' libbsd_0.8.7.orig.tar.xz 371772 SHA256:f548f10e5af5a08b1e22889ce84315b1ebe41505b015c9596bad03fd13a12b31
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.7.orig.tar.xz.asc' libbsd_0.8.7.orig.tar.xz.asc 833 SHA256:93ae025cc6430971572ce3c52af30a9ea8d8ae760e8759afe41fa955528617b4
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.7-1.debian.tar.xz' libbsd_0.8.7-1.debian.tar.xz 15800 SHA256:137b8bedc3dfed65a318e12642759b61bd1a469f0f02bc551fc352d889792d89
```

Other potentially useful URLs:

- https://sources.debian.net/src/libbsd/0.8.7-1/ (for browsing the source)
- https://sources.debian.net/src/libbsd/0.8.7-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libbsd/0.8.7-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcap-ng=0.7.7-3.1`

Binary Packages:

- `libcap-ng0:amd64=0.7.7-3.1+b1`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.7.7-3.1
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.7-3.1.dsc' libcap-ng_0.7.7-3.1.dsc 2266 SHA256:f545d107ed3e6160b16aac09e242d1ccc054bfca76f6d70731a83c031b416f53
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.7.orig.tar.gz' libcap-ng_0.7.7.orig.tar.gz 420178 SHA256:615549ce39b333f6b78baee0c0b4ef18bc726c6bf1cca123dfd89dd963f6d06b
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.7-3.1.debian.tar.xz' libcap-ng_0.7.7-3.1.debian.tar.xz 5432 SHA256:074bf729c3081af729e7e0fbbe3354ddecc16e045245e7d4f44003b9f1f1adc6
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcap-ng/0.7.7-3.1/ (for browsing the source)
- https://sources.debian.net/src/libcap-ng/0.7.7-3.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcap-ng/0.7.7-3.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcroco=0.6.12-2`

Binary Packages:

- `libcroco3:amd64=0.6.12-2`

Licenses: (parsed from: `/usr/share/doc/libcroco3/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libcroco=0.6.12-2
'http://deb.debian.org/debian/pool/main/libc/libcroco/libcroco_0.6.12-2.dsc' libcroco_0.6.12-2.dsc 2204 SHA256:46e81715670968edd1d71cd878a5426ea2b28513bc4975f0b1975185adb69c9e
'http://deb.debian.org/debian/pool/main/libc/libcroco/libcroco_0.6.12.orig.tar.xz' libcroco_0.6.12.orig.tar.xz 482028 SHA256:ddc4b5546c9fb4280a5017e2707fbd4839034ed1aba5b7d4372212f34f84f860
'http://deb.debian.org/debian/pool/main/libc/libcroco/libcroco_0.6.12-2.debian.tar.xz' libcroco_0.6.12-2.debian.tar.xz 8076 SHA256:038c42873794d314fb40c9d0a78c49b841b9ac8f3a947f3fee5f7928e7d155b0
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcroco/0.6.12-2/ (for browsing the source)
- https://sources.debian.net/src/libcroco/0.6.12-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcroco/0.6.12-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libdatrie=0.2.10-6`

Binary Packages:

- `libdatrie1:amd64=0.2.10-6`

Licenses: (parsed from: `/usr/share/doc/libdatrie1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libdatrie/0.2.10-6/


### `dpkg` source package: `libedit=3.1-20170329-1`

Binary Packages:

- `libedit2:amd64=3.1-20170329-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20170329-1
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20170329-1.dsc' libedit_3.1-20170329-1.dsc 2269 SHA256:1e657cfcfbbe5c550b844f17cfeb1d8591136fa57300e6cff2b56e5a3e25ad3f
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20170329.orig.tar.gz' libedit_3.1-20170329.orig.tar.gz 508504 SHA256:91f2d90fbd2a048ff6dad7131d9a39e690fd8a8fd982a353f1333dd4017dd4be
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20170329-1.debian.tar.bz2' libedit_3.1-20170329-1.debian.tar.bz2 11267 SHA256:7dd7a23b07b082d058b7fb741d3b750b80699472e7c8efd1935a9e7c59a49a39
```

Other potentially useful URLs:

- https://sources.debian.net/src/libedit/3.1-20170329-1/ (for browsing the source)
- https://sources.debian.net/src/libedit/3.1-20170329-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libedit/3.1-20170329-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `liberror-perl=0.17025-1`

Binary Packages:

- `liberror-perl=0.17025-1`

Licenses: (parsed from: `/usr/share/doc/liberror-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`
- `MIT/X11`

Source:

```console
$ apt-get source -qq --print-uris liberror-perl=0.17025-1
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17025-1.dsc' liberror-perl_0.17025-1.dsc 2077 SHA256:994800c0123fe452ca1f1019e5bf71755c3200231d84999a31dd19be16ada41b
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17025.orig.tar.gz' liberror-perl_0.17025.orig.tar.gz 32013 SHA256:6c9f474ad3d4fe0cabff6b6be532cb1dd348245986d4a6b600ad921d5cfdefaf
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17025-1.debian.tar.xz' liberror-perl_0.17025-1.debian.tar.xz 4108 SHA256:0288dcf7eeff5cddfaf8c6bdfbe9fc170a1d333bb6d88489ca8158c929a44f76
```

Other potentially useful URLs:

- https://sources.debian.net/src/liberror-perl/0.17025-1/ (for browsing the source)
- https://sources.debian.net/src/liberror-perl/0.17025-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/liberror-perl/0.17025-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libevent=2.1.8-stable-4`

Binary Packages:

- `libevent-2.1-6:amd64=2.1.8-stable-4`
- `libevent-core-2.1-6:amd64=2.1.8-stable-4`
- `libevent-dev=2.1.8-stable-4`
- `libevent-extra-2.1-6:amd64=2.1.8-stable-4`
- `libevent-openssl-2.1-6:amd64=2.1.8-stable-4`
- `libevent-pthreads-2.1-6:amd64=2.1.8-stable-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libevent=2.1.8-stable-4
'http://deb.debian.org/debian/pool/main/libe/libevent/libevent_2.1.8-stable-4.dsc' libevent_2.1.8-stable-4.dsc 2328 SHA256:4d2c3f7943219dd13ae711c6d3e8589c6211d2cec15c18ccfd1d1426542519b0
'http://deb.debian.org/debian/pool/main/libe/libevent/libevent_2.1.8-stable.orig.tar.gz' libevent_2.1.8-stable.orig.tar.gz 1026485 SHA256:965cc5a8bb46ce4199a47e9b2c9e1cae3b137e8356ffdad6d94d3b9069b71dc2
'http://deb.debian.org/debian/pool/main/libe/libevent/libevent_2.1.8-stable-4.debian.tar.xz' libevent_2.1.8-stable-4.debian.tar.xz 12060 SHA256:c1334029455256b62e201ba333a8616a1709e0f3caada753d35376b88aca2d5e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libevent/2.1.8-stable-4/ (for browsing the source)
- https://sources.debian.net/src/libevent/2.1.8-stable-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libevent/2.1.8-stable-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libexif=0.6.21-4`

Binary Packages:

- `libexif-dev:amd64=0.6.21-4`
- `libexif12:amd64=0.6.21-4`

Licenses: (parsed from: `/usr/share/doc/libexif-dev/copyright`, `/usr/share/doc/libexif12/copyright`)

- `BSD-2-Clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libexif=0.6.21-4
'http://deb.debian.org/debian/pool/main/libe/libexif/libexif_0.6.21-4.dsc' libexif_0.6.21-4.dsc 2127 SHA256:4f655b8f217e5f906b236c9b054ef192c2691cab6c532893dc713a128450eac4
'http://deb.debian.org/debian/pool/main/libe/libexif/libexif_0.6.21.orig.tar.gz' libexif_0.6.21.orig.tar.gz 2081615 SHA256:edb7eb13664cf950a6edd132b75e99afe61c5effe2f16494e6d27bc404b287bf
'http://deb.debian.org/debian/pool/main/libe/libexif/libexif_0.6.21-4.debian.tar.xz' libexif_0.6.21-4.debian.tar.xz 10020 SHA256:cb770f6df2805bad039cb5f768412ebde916804d3e3ebda5d3959106812109c5
```

Other potentially useful URLs:

- https://sources.debian.net/src/libexif/0.6.21-4/ (for browsing the source)
- https://sources.debian.net/src/libexif/0.6.21-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libexif/0.6.21-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libffi=3.2.1-8`

Binary Packages:

- `libffi-dev:amd64=3.2.1-8`
- `libffi6:amd64=3.2.1-8`

Licenses: (parsed from: `/usr/share/doc/libffi-dev/copyright`, `/usr/share/doc/libffi6/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.2.1-8
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.2.1-8.dsc' libffi_3.2.1-8.dsc 1959 SHA256:a07201eb5374cfab35703a6f4c88a494bb23ece91da5481497bc25404c57eaf4
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.2.1.orig.tar.gz' libffi_3.2.1.orig.tar.gz 940837 SHA256:d06ebb8e1d9a22d19e38d63fdb83954253f39bedc5d46232a05645685722ca37
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.2.1-8.debian.tar.xz' libffi_3.2.1-8.debian.tar.xz 11660 SHA256:1eb0b13e0c0fc989ed98011d18dcddf8a05af17380fe1258883761a8d16586b4
```

Other potentially useful URLs:

- https://sources.debian.net/src/libffi/3.2.1-8/ (for browsing the source)
- https://sources.debian.net/src/libffi/3.2.1-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libffi/3.2.1-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgcrypt20=1.8.1-4`

Binary Packages:

- `libgcrypt20:amd64=1.8.1-4`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.8.1-4
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1-4.dsc' libgcrypt20_1.8.1-4.dsc 2920 SHA256:8dfd2d17b969a6c5d4b7ffdf4bdcd330f643f483d2c1fc20b5fca493db195d9c
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1.orig.tar.bz2' libgcrypt20_1.8.1.orig.tar.bz2 2967344 SHA256:7a2875f8b1ae0301732e878c0cca2c9664ff09ef71408f085c50e332656a78b3
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1.orig.tar.bz2.asc' libgcrypt20_1.8.1.orig.tar.bz2.asc 310 SHA256:9e08f467824855084594a14c4a0455963dac9a359d543e8c2a91ca3498ad031b
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1-4.debian.tar.xz' libgcrypt20_1.8.1-4.debian.tar.xz 30072 SHA256:c653e5742b3975c6b3a8572a40f433826895ed2c1ab24a2f09172cb6dab4a470
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgcrypt20/1.8.1-4/ (for browsing the source)
- https://sources.debian.net/src/libgcrypt20/1.8.1-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgcrypt20/1.8.1-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgd2=2.2.5-4`

Binary Packages:

- `libgd3:amd64=2.2.5-4`

Licenses: (parsed from: `/usr/share/doc/libgd3/copyright`)

- `BSD-3-clause`
- `GAP~Makefile.in`
- `GAP~configure`
- `GD`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `HPND`
- `MIT`
- `WEBP`
- `XFIG`

Source:

```console
$ apt-get source -qq --print-uris libgd2=2.2.5-4
'http://deb.debian.org/debian/pool/main/libg/libgd2/libgd2_2.2.5-4.dsc' libgd2_2.2.5-4.dsc 2364 SHA256:b76b58ce9eb596198a36eed9538d421ae7828c2f9f9bb063307f945e8c2ba40b
'http://deb.debian.org/debian/pool/main/libg/libgd2/libgd2_2.2.5.orig.tar.gz' libgd2_2.2.5.orig.tar.gz 3326856 SHA256:150e6952af874bbccb33cf0f87288b41a8fd54f0ce4cff914ef90a80ef9d0162
'http://deb.debian.org/debian/pool/main/libg/libgd2/libgd2_2.2.5-4.debian.tar.xz' libgd2_2.2.5-4.debian.tar.xz 31848 SHA256:7bccfea19f47ecfb095f3f11343e3f607e60c0731fd28d4cc23d63c177e06119
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgd2/2.2.5-4/ (for browsing the source)
- https://sources.debian.net/src/libgd2/2.2.5-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgd2/2.2.5-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgpg-error=1.27-6`

Binary Packages:

- `libgpg-error0:amd64=1.27-6`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.27-6
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.27-6.dsc' libgpg-error_1.27-6.dsc 2343 SHA256:d4cc2c1691b295f558d5b347df8a8ad2f0260cf57146180bed223b94ffacafbb
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.27.orig.tar.bz2' libgpg-error_1.27.orig.tar.bz2 813060 SHA256:4f93aac6fecb7da2b92871bb9ee33032be6a87b174f54abf8ddf0911a22d29d2
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.27-6.debian.tar.xz' libgpg-error_1.27-6.debian.tar.xz 20556 SHA256:89bc57dc3df449febf037226daf1aee830455c4efa493c0e3bdeab2a48971479
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgpg-error/1.27-6/ (for browsing the source)
- https://sources.debian.net/src/libgpg-error/1.27-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgpg-error/1.27-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libice=2:1.0.9-2`

Binary Packages:

- `libice-dev:amd64=2:1.0.9-2`
- `libice6:amd64=2:1.0.9-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libice=2:1.0.9-2
'http://deb.debian.org/debian/pool/main/libi/libice/libice_1.0.9-2.dsc' libice_1.0.9-2.dsc 2130 SHA256:116595cd54be23edad0b55e1cd4bc1929f277fa5c2d00d8f187b0bc5dd39ad6c
'http://deb.debian.org/debian/pool/main/libi/libice/libice_1.0.9.orig.tar.gz' libice_1.0.9.orig.tar.gz 455871 SHA256:7812a824a66dd654c830d21982749b3b563d9c2dfe0b88b203cefc14a891edc0
'http://deb.debian.org/debian/pool/main/libi/libice/libice_1.0.9-2.diff.gz' libice_1.0.9-2.diff.gz 6384 SHA256:777f13e08aada3103c32a0b93a26782ca959027bcd98c2c1ddaade8f944fa40a
```

Other potentially useful URLs:

- https://sources.debian.net/src/libice/2:1.0.9-2/ (for browsing the source)
- https://sources.debian.net/src/libice/2:1.0.9-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libice/2:1.0.9-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libidn2=2.0.4-1.1`

Binary Packages:

- `libidn2-0:amd64=2.0.4-1.1`

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
$ apt-get source -qq --print-uris libidn2=2.0.4-1.1
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.0.4-1.1.dsc' libidn2_2.0.4-1.1.dsc 2292 SHA256:501fe84ff95ad94d7ef8a4a7225c0d3da9969333aeceb7c46b61e7c7b970c240
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.0.4.orig.tar.gz' libidn2_2.0.4.orig.tar.gz 2008524 SHA256:644b6b03b285fb0ace02d241d59483d98bc462729d8bb3608d5cad5532f3d2f0
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.0.4-1.1.debian.tar.xz' libidn2_2.0.4-1.1.debian.tar.xz 10285032 SHA256:434c590d238e7fd86ead3c9e201ade52d1b415d453824817747ed77179e6793b
```

Other potentially useful URLs:

- https://sources.debian.net/src/libidn2/2.0.4-1.1/ (for browsing the source)
- https://sources.debian.net/src/libidn2/2.0.4-1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libidn2/2.0.4-1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libjpeg-turbo=1:1.5.2-2`

Binary Packages:

- `libjpeg-dev=1:1.5.2-2`
- `libjpeg62-turbo:amd64=1:1.5.2-2+b1`
- `libjpeg62-turbo-dev:amd64=1:1.5.2-2+b1`

Licenses: (parsed from: `/usr/share/doc/libjpeg-dev/copyright`, `/usr/share/doc/libjpeg62-turbo/copyright`, `/usr/share/doc/libjpeg62-turbo-dev/copyright`)

- `BSD-3`
- `BSD-BY-LC-NE`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=1:1.5.2-2
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.5.2-2.dsc' libjpeg-turbo_1.5.2-2.dsc 2434 SHA256:f975bd4b2192e3f1aeacef7f0de33035f386225035aea6157b413b1c500d46a1
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.5.2.orig.tar.gz' libjpeg-turbo_1.5.2.orig.tar.gz 1657235 SHA256:9098943b270388727ae61de82adec73cf9f0dbb240b3bc8b172595ebf405b528
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.5.2-2.debian.tar.xz' libjpeg-turbo_1.5.2-2.debian.tar.xz 78360 SHA256:964a2d747f8e74cbd558f343afd11b7dfe37212a611eeca863f1908eba66f728
```

Other potentially useful URLs:

- https://sources.debian.net/src/libjpeg-turbo/1:1.5.2-2/ (for browsing the source)
- https://sources.debian.net/src/libjpeg-turbo/1:1.5.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libjpeg-turbo/1:1.5.2-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `liblqr=0.4.2-2.1`

Binary Packages:

- `liblqr-1-0:amd64=0.4.2-2.1`
- `liblqr-1-0-dev:amd64=0.4.2-2.1`

Licenses: (parsed from: `/usr/share/doc/liblqr-1-0/copyright`, `/usr/share/doc/liblqr-1-0-dev/copyright`)

- `GPL-3`
- `GPLv3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris liblqr=0.4.2-2.1
'http://deb.debian.org/debian/pool/main/libl/liblqr/liblqr_0.4.2-2.1.dsc' liblqr_0.4.2-2.1.dsc 2095 SHA256:c54c34cd2f7470a29366eeacde2ca4859a97d684a406fb81a918b970c01d617c
'http://deb.debian.org/debian/pool/main/libl/liblqr/liblqr_0.4.2.orig.tar.gz' liblqr_0.4.2.orig.tar.gz 439884 SHA256:d4c22373432cca749e4326cd41fce365e6ff857c0bfd7a5302b8eb34b69f0336
'http://deb.debian.org/debian/pool/main/libl/liblqr/liblqr_0.4.2-2.1.debian.tar.xz' liblqr_0.4.2-2.1.debian.tar.xz 5300 SHA256:284a002f1ecac63ac17b1aafbb230da9ce7bd9efe2d5b94e8cad49b607eb2564
```

Other potentially useful URLs:

- https://sources.debian.net/src/liblqr/0.4.2-2.1/ (for browsing the source)
- https://sources.debian.net/src/liblqr/0.4.2-2.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/liblqr/0.4.2-2.1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libpng1.6=1.6.34-1`

Binary Packages:

- `libpng-dev:amd64=1.6.34-1`
- `libpng16-16:amd64=1.6.34-1`

Licenses: (parsed from: `/usr/share/doc/libpng-dev/copyright`, `/usr/share/doc/libpng16-16/copyright`)

- `Apache-2.0`
- `BSD-3-clause`
- `BSD-like-with-advertising-clause`
- `GPL-2`
- `GPL-2+`
- `expat`
- `libpng`
- `libpng OR Apache-2.0 OR BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris libpng1.6=1.6.34-1
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.34-1.dsc' libpng1.6_1.6.34-1.dsc 2191 SHA256:e491569d9015036d43c7a9dfcf2d835abde8c9817b057d55d929cb78501d5a30
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.34.orig.tar.xz' libpng1.6_1.6.34.orig.tar.xz 997968 SHA256:2f1e960d92ce3b3abd03d06dfec9637dfbd22febf107a536b44f7a47c60659f6
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.34-1.debian.tar.xz' libpng1.6_1.6.34-1.debian.tar.xz 23568 SHA256:8ca33d2930b340412f04d76cac3159f6b3b823cff33b35b72426a75f3f02a8a0
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpng1.6/1.6.34-1/ (for browsing the source)
- https://sources.debian.net/src/libpng1.6/1.6.34-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpng1.6/1.6.34-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpsl=0.19.1-4`

Binary Packages:

- `libpsl5:amd64=0.19.1-4`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.19.1-4
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.19.1-4.dsc' libpsl_0.19.1-4.dsc 2205 SHA256:c782695b32092fbe38f5e11228e0efcd41c0260ac5b5a503fe0b59ba40b86e7e
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.19.1.orig.tar.gz' libpsl_0.19.1.orig.tar.gz 8578385 SHA256:e370181114b8ef9daf2bb6db49b1edb842335839c15a088e7ec0a35e04e9a227
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.19.1-4.debian.tar.xz' libpsl_0.19.1-4.debian.tar.xz 9444 SHA256:f289b1ef5e33dc96c64edb384f597f7ddd74f1f0e7e8091155c62bd451ea1fc2
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpsl/0.19.1-4/ (for browsing the source)
- https://sources.debian.net/src/libpsl/0.19.1-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpsl/0.19.1-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpthread-stubs=0.3-4`

Binary Packages:

- `libpthread-stubs0-dev:amd64=0.3-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libpthread-stubs=0.3-4
'http://deb.debian.org/debian/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3-4.dsc' libpthread-stubs_0.3-4.dsc 1925 SHA256:e72310a5492e641076c199561977703947174c6acc3633073d909f6f5ab3c676
'http://deb.debian.org/debian/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3.orig.tar.gz' libpthread-stubs_0.3.orig.tar.gz 272939 SHA256:3031f466cf0b06de6b3ccbf2019d15c4fcf75229b7d226a711bc1885b3a82cde
'http://deb.debian.org/debian/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3-4.diff.gz' libpthread-stubs_0.3-4.diff.gz 2413 SHA256:ce3eb8bdc0f1a4347d42c5736d056973fae46908b764a9f2be83e1bd210f2024
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpthread-stubs/0.3-4/ (for browsing the source)
- https://sources.debian.net/src/libpthread-stubs/0.3-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpthread-stubs/0.3-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `librsvg=2.40.20-2`

Binary Packages:

- `gir1.2-rsvg-2.0:amd64=2.40.20-2`
- `librsvg2-2:amd64=2.40.20-2`
- `librsvg2-common:amd64=2.40.20-2`
- `librsvg2-dev:amd64=2.40.20-2`

Licenses: (parsed from: `/usr/share/doc/gir1.2-rsvg-2.0/copyright`, `/usr/share/doc/librsvg2-2/copyright`, `/usr/share/doc/librsvg2-common/copyright`, `/usr/share/doc/librsvg2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris librsvg=2.40.20-2
'http://deb.debian.org/debian/pool/main/libr/librsvg/librsvg_2.40.20-2.dsc' librsvg_2.40.20-2.dsc 2731 SHA256:35b78a72b57dc406ce641efbca357476e2b67b8681951c9f0e7a6ec2f6808b37
'http://deb.debian.org/debian/pool/main/libr/librsvg/librsvg_2.40.20.orig.tar.xz' librsvg_2.40.20.orig.tar.xz 1796376 SHA256:cff4dd3c3b78bfe99d8fcfad3b8ba1eee3289a0823c0e118d78106be6b84c92b
'http://deb.debian.org/debian/pool/main/libr/librsvg/librsvg_2.40.20-2.debian.tar.xz' librsvg_2.40.20-2.debian.tar.xz 16544 SHA256:40f1ff3c70b3bb3d107f5d9e37c4ee023c8cffd33bd2d65cebb0ebc245adda28
```

Other potentially useful URLs:

- https://sources.debian.net/src/librsvg/2.40.20-2/ (for browsing the source)
- https://sources.debian.net/src/librsvg/2.40.20-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/librsvg/2.40.20-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libseccomp=2.3.1-2.1`

Binary Packages:

- `libseccomp2:amd64=2.3.1-2.1`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2`
- `LGPL-2.0+`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.3.1-2.1
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.3.1-2.1.dsc' libseccomp_2.3.1-2.1.dsc 2048 SHA256:99cefa142517653fd580330f0b0aa2aa83b8d14b8d67e8ccbf53989e512600bc
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.3.1.orig.tar.gz' libseccomp_2.3.1.orig.tar.gz 552299 SHA256:ff5bdd2168790f1979e24eaa498f8606c2f2d96f08a8dc4006a2e88affa4562b
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.3.1-2.1.debian.tar.xz' libseccomp_2.3.1-2.1.debian.tar.xz 10572 SHA256:7343368b61c76e4f275c8de51415f466fd6f46ec53d50729b40b962386cbf6ca
```

Other potentially useful URLs:

- https://sources.debian.net/src/libseccomp/2.3.1-2.1/ (for browsing the source)
- https://sources.debian.net/src/libseccomp/2.3.1-2.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libseccomp/2.3.1-2.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libselinux=2.7-2`

Binary Packages:

- `libselinux1:amd64=2.7-2+b1`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.7-2
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.7-2.dsc' libselinux_2.7-2.dsc 2369 SHA256:09e23dce37d309751db1b5a411a330c6fac9f392a67e56ce943bad88757af1df
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.7.orig.tar.gz' libselinux_2.7.orig.tar.gz 187574 SHA256:d0fec0769b3ad60aa7baf9b9a4b7a056827769dc2dadda0dc0eb59b3d1c18c57
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.7-2.debian.tar.xz' libselinux_2.7-2.debian.tar.xz 23044 SHA256:acd5c8f6607a5b10aeaa705214ea4924939cbe2de7cce174eccf5973c6f92771
```

Other potentially useful URLs:

- https://sources.debian.net/src/libselinux/2.7-2/ (for browsing the source)
- https://sources.debian.net/src/libselinux/2.7-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libselinux/2.7-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsemanage=2.7-2`

Binary Packages:

- `libsemanage-common=2.7-2`
- `libsemanage1:amd64=2.7-2+b1`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.7-2
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.7-2.dsc' libsemanage_2.7-2.dsc 2456 SHA256:7054ef9c206cac2e698627040df04dd159ff7aa982348e25c315dd817fb8926b
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.7.orig.tar.gz' libsemanage_2.7.orig.tar.gz 153465 SHA256:07e9477714ce6a4557a1fe924ea4cb06501b62d0fa0e3c0dc32a2cf47cb8d476
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.7-2.debian.tar.xz' libsemanage_2.7-2.debian.tar.xz 16968 SHA256:6679667dc2ceafbe214eddfe84c3f6a18d457a4c78d6ae63165bc65e71b174e7
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsemanage/2.7-2/ (for browsing the source)
- https://sources.debian.net/src/libsemanage/2.7-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsemanage/2.7-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsepol=2.7-1`

Binary Packages:

- `libsepol1:amd64=2.7-1`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.7-1
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.7-1.dsc' libsepol_2.7-1.dsc 1814 SHA256:7de809477acd60d256eca160d5fc6986e5e65227706b1cdb23f8139bb49d2782
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.7.orig.tar.gz' libsepol_2.7.orig.tar.gz 471147 SHA256:d69d3bd8ec901a3bd5adf2be2fb47fb1a685ed73066ab482e7e505371a48f9e7
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.7-1.debian.tar.xz' libsepol_2.7-1.debian.tar.xz 13944 SHA256:56b1c2b0e492b2089f23a0d7a95a260377a0e3adefc60e90c0ff6eff6be08450
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsepol/2.7-1/ (for browsing the source)
- https://sources.debian.net/src/libsepol/2.7-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsepol/2.7-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsigsegv=2.12-1`

Binary Packages:

- `libsigsegv2:amd64=2.12-1`

Licenses: (parsed from: `/usr/share/doc/libsigsegv2/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `permissive-fsf`
- `permissive-other`

Source:

```console
$ apt-get source -qq --print-uris libsigsegv=2.12-1
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.12-1.dsc' libsigsegv_2.12-1.dsc 2372 SHA256:f1a17e8431a3c1f5d8f69745dcaea78c4007bf463b19c6497fd9672e9e07e438
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.12.orig.tar.gz' libsigsegv_2.12.orig.tar.gz 451408 SHA256:3ae1af359eebaa4ffc5896a1aee3568c052c99879316a1ab57f8fe1789c390b6
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.12.orig.tar.gz.asc' libsigsegv_2.12.orig.tar.gz.asc 2442 SHA256:1861a9a182bbb7a24a18f7e43fe0fa3eb6f6fd53780b30e01990677112694dfc
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.12-1.debian.tar.xz' libsigsegv_2.12-1.debian.tar.xz 8548 SHA256:b72c81bfae92575211ceeb2eb4e90453ca4393806efc7f2804df28e7641bc810
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsigsegv/2.12-1/ (for browsing the source)
- https://sources.debian.net/src/libsigsegv/2.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsigsegv/2.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsm=2:1.2.2-1`

Binary Packages:

- `libsm-dev:amd64=2:1.2.2-1+b3`
- `libsm6:amd64=2:1.2.2-1+b3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libsm=2:1.2.2-1
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.2-1.dsc' libsm_1.2.2-1.dsc 2107 SHA256:1347efa550751179c0a3f1042a9f8ae43ee0c22cf0c2283921fa83e52a68433f
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.2.orig.tar.gz' libsm_1.2.2.orig.tar.gz 415990 SHA256:14bb7c669ce2b8ff712fbdbf48120e3742a77edcd5e025d6b3325ed30cf120f4
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.2-1.diff.gz' libsm_1.2.2-1.diff.gz 6183 SHA256:9848714292ead15fcc48ab2d337f2cc5fc08910abbdfaf69d3ef1b89d3fdb2d5
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsm/2:1.2.2-1/ (for browsing the source)
- https://sources.debian.net/src/libsm/2:1.2.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsm/2:1.2.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libssh2=1.8.0-1`

Binary Packages:

- `libssh2-1:amd64=1.8.0-1`

Licenses: (parsed from: `/usr/share/doc/libssh2-1/copyright`)

- `BSD3`

Source:

```console
$ apt-get source -qq --print-uris libssh2=1.8.0-1
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.8.0-1.dsc' libssh2_1.8.0-1.dsc 1860 SHA256:14837d645e77d08fbf00333dee60129be3aeb40c956294cb7bd0b79f456a3fb0
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.8.0.orig.tar.gz' libssh2_1.8.0.orig.tar.gz 846989 SHA256:4382d33de790b28f862e53ed59ffbd65f3def7a06e8b6e9ca1b6f70453b4d5e0
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.8.0-1.debian.tar.xz' libssh2_1.8.0-1.debian.tar.xz 7320 SHA256:79a68889d8102922b92b1757b1d5993cb70faa9a259aca21c2db2e5e55d30b62
```

Other potentially useful URLs:

- https://sources.debian.net/src/libssh2/1.8.0-1/ (for browsing the source)
- https://sources.debian.net/src/libssh2/1.8.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libssh2/1.8.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtasn1-6=4.13-2`

Binary Packages:

- `libtasn1-6:amd64=4.13-2`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.13-2
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.13-2.dsc' libtasn1-6_4.13-2.dsc 2574 SHA256:8f583c0ae8568ccf7fcf66c387963ef949d644cfca56d66512a17cb91c3a44fd
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.13.orig.tar.gz' libtasn1-6_4.13.orig.tar.gz 1891703 SHA256:7e528e8c317ddd156230c4e31d082cd13e7ddeb7a54824be82632209550c8cca
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.13.orig.tar.gz.asc' libtasn1-6_4.13.orig.tar.gz.asc 774 SHA256:90261376528edf44831d1369847088cc2fb48669860d343961daca42e674b226
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.13-2.debian.tar.xz' libtasn1-6_4.13-2.debian.tar.xz 63332 SHA256:f36a43fb898c031b6b1a5f43b35af1aea95ac164bb2b57c7f07d1c098ed9f7eb
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtasn1-6/4.13-2/ (for browsing the source)
- https://sources.debian.net/src/libtasn1-6/4.13-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtasn1-6/4.13-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libthai=0.1.27-1`

Binary Packages:

- `libthai-data=0.1.27-1`
- `libthai0:amd64=0.1.27-1`

Licenses: (parsed from: `/usr/share/doc/libthai-data/copyright`, `/usr/share/doc/libthai0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libthai=0.1.27-1
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.27-1.dsc' libthai_0.1.27-1.dsc 2371 SHA256:df7d639eab614ebb04ee4c9ca3df400e43e04d419f77fe268b33ba4dc02b80b0
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.27.orig.tar.xz' libthai_0.1.27.orig.tar.xz 410360 SHA256:1659fa1b7b1d6562102d7feb8c8c3fd94bb2dc5761ed7dbaae4f300e1c03eff6
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.27-1.debian.tar.xz' libthai_0.1.27-1.debian.tar.xz 11572 SHA256:cef56b2a4c7dad215de0ce222dfab1b723a5a2becc630d58c21763861a7a8289
```

Other potentially useful URLs:

- https://sources.debian.net/src/libthai/0.1.27-1/ (for browsing the source)
- https://sources.debian.net/src/libthai/0.1.27-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libthai/0.1.27-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtool=2.4.6-2`

Binary Packages:

- `libltdl-dev:amd64=2.4.6-2`
- `libltdl7:amd64=2.4.6-2`
- `libtool=2.4.6-2`

Licenses: (parsed from: `/usr/share/doc/libltdl-dev/copyright`, `/usr/share/doc/libltdl7/copyright`, `/usr/share/doc/libtool/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libtool=2.4.6-2
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6-2.dsc' libtool_2.4.6-2.dsc 2324 SHA256:caa2b9d5c32e491388d0627e2f808b6cb2f260dd1b0b9fdafc9bff957f05bb29
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz' libtool_2.4.6.orig.tar.xz 973080 SHA256:7c87a8c2c8c0fc9cd5019e402bed4292462d00a718a7cd5f11218153bf28b26f
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz.asc' libtool_2.4.6.orig.tar.xz.asc 380 SHA256:ab68ebc45d60128a71fc36167cd29dcf3c3d6d639fd28663905ebaf3e2f43d6a
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6-2.debian.tar.xz' libtool_2.4.6-2.debian.tar.xz 36024 SHA256:6227fb1240a90ef06855567e71ee96e4950dd53c4399348f36c1ec39367cd8ea
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtool/2.4.6-2/ (for browsing the source)
- https://sources.debian.net/src/libtool/2.4.6-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtool/2.4.6-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libunistring=0.9.8-1`

Binary Packages:

- `libunistring2:amd64=0.9.8-1`

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
$ apt-get source -qq --print-uris libunistring=0.9.8-1
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.8-1.dsc' libunistring_0.9.8-1.dsc 2240 SHA256:9511879fc285637224302b95aed0a61f2f7356e26565257112e7ac34ed46360b
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.8.orig.tar.xz' libunistring_0.9.8.orig.tar.xz 2029068 SHA256:7b9338cf52706facb2e18587dceda2fbc4a2a3519efa1e15a3f2a68193942f80
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.8.orig.tar.xz.asc' libunistring_0.9.8.orig.tar.xz.asc 1355 SHA256:49a11d0261689b3fd03f3582e0b51e058e3a67c63aa6398f78cb4518dd0b0c21
'http://deb.debian.org/debian/pool/main/libu/libunistring/libunistring_0.9.8-1.debian.tar.xz' libunistring_0.9.8-1.debian.tar.xz 39968 SHA256:4dcecb5e7f604ff9a81cca935c63f8d7f4e17f1c76cde1e7c9e0a2cc0cd23be6
```

Other potentially useful URLs:

- https://sources.debian.net/src/libunistring/0.9.8-1/ (for browsing the source)
- https://sources.debian.net/src/libunistring/0.9.8-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libunistring/0.9.8-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libwebp=0.6.0-4`

Binary Packages:

- `libwebp-dev:amd64=0.6.0-4`
- `libwebp6:amd64=0.6.0-4`
- `libwebpdemux2:amd64=0.6.0-4`
- `libwebpmux3:amd64=0.6.0-4`

Licenses: (parsed from: `/usr/share/doc/libwebp-dev/copyright`, `/usr/share/doc/libwebp6/copyright`, `/usr/share/doc/libwebpdemux2/copyright`, `/usr/share/doc/libwebpmux3/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris libwebp=0.6.0-4
'http://deb.debian.org/debian/pool/main/libw/libwebp/libwebp_0.6.0-4.dsc' libwebp_0.6.0-4.dsc 2014 SHA256:74a2c81782e16ffbe7ce4656bc2af013c44aff62d752f154e1cc35e5d3ae3234
'http://deb.debian.org/debian/pool/main/libw/libwebp/libwebp_0.6.0.orig.tar.gz' libwebp_0.6.0.orig.tar.gz 1302881 SHA256:c928119229d4f8f35e20113ffb61f281eda267634a8dc2285af4b0ee27cf2b40
'http://deb.debian.org/debian/pool/main/libw/libwebp/libwebp_0.6.0-4.debian.tar.xz' libwebp_0.6.0-4.debian.tar.xz 6228 SHA256:13e9434d5f83df4440b451422e2b0c8b3e94c7935be49ead4d71462fa64d961e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libwebp/0.6.0-4/ (for browsing the source)
- https://sources.debian.net/src/libwebp/0.6.0-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libwebp/0.6.0-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libwmf=0.2.8.4-12`

Binary Packages:

- `libwmf-dev=0.2.8.4-12`
- `libwmf0.2-7:amd64=0.2.8.4-12`

Licenses: (parsed from: `/usr/share/doc/libwmf-dev/copyright`, `/usr/share/doc/libwmf0.2-7/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris libwmf=0.2.8.4-12
'http://deb.debian.org/debian/pool/main/libw/libwmf/libwmf_0.2.8.4-12.dsc' libwmf_0.2.8.4-12.dsc 2134 SHA256:cc438ea4b9f9b93d06428989e3920f6e9f1fb317e451aeecbd2b3f608dd82826
'http://deb.debian.org/debian/pool/main/libw/libwmf/libwmf_0.2.8.4.orig.tar.gz' libwmf_0.2.8.4.orig.tar.gz 2169375 SHA256:5b345c69220545d003ad52bfd035d5d6f4f075e65204114a9e875e84895a7cf8
'http://deb.debian.org/debian/pool/main/libw/libwmf/libwmf_0.2.8.4-12.debian.tar.xz' libwmf_0.2.8.4-12.debian.tar.xz 11952 SHA256:579cc19e9199e30b1097559f031a9814f4990206487cb4c402defb68f55be1cd
```

Other potentially useful URLs:

- https://sources.debian.net/src/libwmf/0.2.8.4-12/ (for browsing the source)
- https://sources.debian.net/src/libwmf/0.2.8.4-12/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libwmf/0.2.8.4-12/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libx11=2:1.6.4-3`

Binary Packages:

- `libx11-6:amd64=2:1.6.4-3`
- `libx11-data=2:1.6.4-3`
- `libx11-dev:amd64=2:1.6.4-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.6.4-3
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.4-3.dsc' libx11_1.6.4-3.dsc 2397 SHA256:4c5d6add2ba969067ca111c827ae94264e4c22776e22f318d264545dc1c6a300
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.4.orig.tar.gz' libx11_1.6.4.orig.tar.gz 3095115 SHA256:5d7fbb9e15c27900ea8963218a59750b674a8d7c94161b66e96fcfbdaa1c6263
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.4-3.diff.gz' libx11_1.6.4-3.diff.gz 41366 SHA256:2c936827bca63eaf5b66683bdcd0ecf013d152c35439f792475db85c5c2338fd
```

Other potentially useful URLs:

- https://sources.debian.net/src/libx11/2:1.6.4-3/ (for browsing the source)
- https://sources.debian.net/src/libx11/2:1.6.4-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libx11/2:1.6.4-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxau=1:1.0.8-1`

Binary Packages:

- `libxau-dev:amd64=1:1.0.8-1+b2`
- `libxau6:amd64=1:1.0.8-1+b2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxau=1:1.0.8-1
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.8-1.dsc' libxau_1.0.8-1.dsc 2040 SHA256:3ddb5f2c7a49ef7507b8d1e63e891238db877b4d1bb1c5486a3e3242c8523602
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.8.orig.tar.gz' libxau_1.0.8.orig.tar.gz 362044 SHA256:c343b4ef66d66a6b3e0e27aa46b37ad5cab0f11a5c565eafb4a1c7590bc71d7b
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.8-1.diff.gz' libxau_1.0.8-1.diff.gz 15287 SHA256:b493479d6a52a0e753dd357ad8a4bc5c4296015f3f7b96cf546f7c5c5843cbb0
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxau/1:1.0.8-1/ (for browsing the source)
- https://sources.debian.net/src/libxau/1:1.0.8-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxau/1:1.0.8-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxcb=1.12-1`

Binary Packages:

- `libxcb-render0:amd64=1.12-1`
- `libxcb-render0-dev:amd64=1.12-1`
- `libxcb-shm0:amd64=1.12-1`
- `libxcb-shm0-dev:amd64=1.12-1`
- `libxcb1:amd64=1.12-1`
- `libxcb1-dev:amd64=1.12-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.12-1
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.12-1.dsc' libxcb_1.12-1.dsc 6558 SHA256:d6ed3f5ef255a692c9654d954da4421c535e02f21e56a657383ea9d52389080d
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.12.orig.tar.gz' libxcb_1.12.orig.tar.gz 745984 SHA256:092f147149d8a6410647a848378aaae749304d5b73e028ccb8306aa8a9e26f06
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.12-1.diff.gz' libxcb_1.12-1.diff.gz 25044 SHA256:e2af982573638874bca1f4159139e2bffa0ee51148544b4c3b09bad84622648c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxcb/1.12-1/ (for browsing the source)
- https://sources.debian.net/src/libxcb/1.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcb/1.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxcomposite=1:0.4.4-2`

Binary Packages:

- `libxcomposite1:amd64=1:0.4.4-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcomposite=1:0.4.4-2
'http://deb.debian.org/debian/pool/main/libx/libxcomposite/libxcomposite_0.4.4-2.dsc' libxcomposite_0.4.4-2.dsc 2178 SHA256:4124027ad4b4598a61c45cbc345988010a2a5ba6e7c80259917f59414be69861
'http://deb.debian.org/debian/pool/main/libx/libxcomposite/libxcomposite_0.4.4.orig.tar.gz' libxcomposite_0.4.4.orig.tar.gz 354584 SHA256:83c04649819c6f52cda1b0ce8bcdcc48ad8618428ad803fb07f20b802f1bdad1
'http://deb.debian.org/debian/pool/main/libx/libxcomposite/libxcomposite_0.4.4-2.diff.gz' libxcomposite_0.4.4-2.diff.gz 15755 SHA256:9689ae3fcc76054fe09909692e71a1a4fe356e84f3adfa2be668e173d0369ebc
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxcomposite/1:0.4.4-2/ (for browsing the source)
- https://sources.debian.net/src/libxcomposite/1:0.4.4-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcomposite/1:0.4.4-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxcursor=1:1.1.15-1`

Binary Packages:

- `libxcursor1:amd64=1:1.1.15-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcursor=1:1.1.15-1
'http://deb.debian.org/debian/pool/main/libx/libxcursor/libxcursor_1.1.15-1.dsc' libxcursor_1.1.15-1.dsc 2288 SHA256:0e204ad2040f088b9a06d28576148970c107f13f3951b95d7536b5bb6fa7e4c4
'http://deb.debian.org/debian/pool/main/libx/libxcursor/libxcursor_1.1.15.orig.tar.gz' libxcursor_1.1.15.orig.tar.gz 406960 SHA256:449befea2b11dde58ba3323b2c1ec30550013bd84d80501eb56d0048e62251a1
'http://deb.debian.org/debian/pool/main/libx/libxcursor/libxcursor_1.1.15-1.debian.tar.xz' libxcursor_1.1.15-1.debian.tar.xz 8796 SHA256:67728eb5f3ad07f61390793c060b4b6b56806af5b60f0057db04762bc804650f
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxcursor/1:1.1.15-1/ (for browsing the source)
- https://sources.debian.net/src/libxcursor/1:1.1.15-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcursor/1:1.1.15-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxdamage=1:1.1.4-3`

Binary Packages:

- `libxdamage1:amd64=1:1.1.4-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdamage=1:1.1.4-3
'http://deb.debian.org/debian/pool/main/libx/libxdamage/libxdamage_1.1.4-3.dsc' libxdamage_1.1.4-3.dsc 2161 SHA256:f1207d4fca942d2cddfe40abc818046e282ceeb0e0b565a44c2908fd03c41368
'http://deb.debian.org/debian/pool/main/libx/libxdamage/libxdamage_1.1.4.orig.tar.gz' libxdamage_1.1.4.orig.tar.gz 339060 SHA256:4bb3e9d917f5f593df2277d452926ee6ad96de7b7cd1017cbcf4579fe5d3442b
'http://deb.debian.org/debian/pool/main/libx/libxdamage/libxdamage_1.1.4-3.debian.tar.xz' libxdamage_1.1.4-3.debian.tar.xz 5904 SHA256:94dcf3997a92f5e1b4681dcbe555af4469607ae7af2d0dc643a7a1be7b94e64a
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxdamage/1:1.1.4-3/ (for browsing the source)
- https://sources.debian.net/src/libxdamage/1:1.1.4-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxdamage/1:1.1.4-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxdmcp=1:1.1.2-3`

Binary Packages:

- `libxdmcp-dev:amd64=1:1.1.2-3`
- `libxdmcp6:amd64=1:1.1.2-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.2-3
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.2-3.dsc' libxdmcp_1.1.2-3.dsc 2145 SHA256:f9697dca6a275aeee9a3eee9fb2d55e0f77485481e8b84efc6950fc9b1988460
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.2.orig.tar.gz' libxdmcp_1.1.2.orig.tar.gz 404115 SHA256:6f7c7e491a23035a26284d247779174dedc67e34e93cc3548b648ffdb6fc57c0
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.2-3.diff.gz' libxdmcp_1.1.2-3.diff.gz 18017 SHA256:5844df115c17e5ba40ac116f80373304d821c607e763ef6f40562421f5cc0cf3
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxdmcp/1:1.1.2-3/ (for browsing the source)
- https://sources.debian.net/src/libxdmcp/1:1.1.2-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxdmcp/1:1.1.2-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxext=2:1.3.3-1`

Binary Packages:

- `libxext-dev:amd64=2:1.3.3-1+b2`
- `libxext6:amd64=2:1.3.3-1+b2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxext=2:1.3.3-1
'http://deb.debian.org/debian/pool/main/libx/libxext/libxext_1.3.3-1.dsc' libxext_1.3.3-1.dsc 2221 SHA256:47106df75b8f3db1e43803e8e94a2e966cd23f7daa8cfc393af739a9e33ef955
'http://deb.debian.org/debian/pool/main/libx/libxext/libxext_1.3.3.orig.tar.gz' libxext_1.3.3.orig.tar.gz 468441 SHA256:eb0b88050491fef4716da4b06a4d92b4fc9e76f880d6310b2157df604342cfe5
'http://deb.debian.org/debian/pool/main/libx/libxext/libxext_1.3.3-1.diff.gz' libxext_1.3.3-1.diff.gz 20763 SHA256:e294a4884eb68acbd151312cb0c973aad63268b637b15ccf1911864b7197557e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxext/2:1.3.3-1/ (for browsing the source)
- https://sources.debian.net/src/libxext/2:1.3.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxext/2:1.3.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxfixes=1:5.0.3-1`

Binary Packages:

- `libxfixes3:amd64=1:5.0.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxfixes=1:5.0.3-1
'http://deb.debian.org/debian/pool/main/libx/libxfixes/libxfixes_5.0.3-1.dsc' libxfixes_5.0.3-1.dsc 2040 SHA256:87c1c491d8ff261b5a723c6c6aa974f315ff6f25f47425285a62065cbf944025
'http://deb.debian.org/debian/pool/main/libx/libxfixes/libxfixes_5.0.3.orig.tar.gz' libxfixes_5.0.3.orig.tar.gz 360412 SHA256:9ab6c13590658501ce4bd965a8a5d32ba4d8b3bb39a5a5bc9901edffc5666570
'http://deb.debian.org/debian/pool/main/libx/libxfixes/libxfixes_5.0.3-1.diff.gz' libxfixes_5.0.3-1.diff.gz 15140 SHA256:95b9688465531c60ff372bf8a2eb5fdd456970cbbb679ba13e54d24af44fb904
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxfixes/1:5.0.3-1/ (for browsing the source)
- https://sources.debian.net/src/libxfixes/1:5.0.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxfixes/1:5.0.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxi=2:1.7.9-1`

Binary Packages:

- `libxi6:amd64=2:1.7.9-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxi=2:1.7.9-1
'http://deb.debian.org/debian/pool/main/libx/libxi/libxi_1.7.9-1.dsc' libxi_1.7.9-1.dsc 2202 SHA256:fb19b7e8b9ad6306c3e8a6728f29576f956f07a7980e7b4d727259714d6ca686
'http://deb.debian.org/debian/pool/main/libx/libxi/libxi_1.7.9.orig.tar.gz' libxi_1.7.9.orig.tar.gz 604214 SHA256:463cc5370191404bc0f8a450fdbf6d9159efbbf274e5e0f427a60191fed9cf4b
'http://deb.debian.org/debian/pool/main/libx/libxi/libxi_1.7.9-1.diff.gz' libxi_1.7.9-1.diff.gz 15892 SHA256:8c9c221faecc97a7ba7ff1a1a14fad580c49b72e270dc3aae40b72b2d7f4dc5e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxi/2:1.7.9-1/ (for browsing the source)
- https://sources.debian.net/src/libxi/2:1.7.9-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxi/2:1.7.9-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxinerama=2:1.1.3-1`

Binary Packages:

- `libxinerama1:amd64=2:1.1.3-1+b3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxinerama=2:1.1.3-1
'http://deb.debian.org/debian/pool/main/libx/libxinerama/libxinerama_1.1.3-1.dsc' libxinerama_1.1.3-1.dsc 2198 SHA256:4cf9a3558bd7ce1b4f55a581175c05e4b4a172364458a21ff4b657b714688fbb
'http://deb.debian.org/debian/pool/main/libx/libxinerama/libxinerama_1.1.3.orig.tar.gz' libxinerama_1.1.3.orig.tar.gz 350141 SHA256:0ba243222ae5aba4c6a3d7a394c32c8b69220a6872dbb00b7abae8753aca9a44
'http://deb.debian.org/debian/pool/main/libx/libxinerama/libxinerama_1.1.3-1.diff.gz' libxinerama_1.1.3-1.diff.gz 15738 SHA256:2b1487e3511ddabfec666a62f6e5e8ac4f97536b0d53c51f7bf4cbe07508a130
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxinerama/2:1.1.3-1/ (for browsing the source)
- https://sources.debian.net/src/libxinerama/2:1.1.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxinerama/2:1.1.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxml2=2.9.4+dfsg1-6.1`

Binary Packages:

- `libxml2:amd64=2.9.4+dfsg1-6.1`
- `libxml2-dev:amd64=2.9.4+dfsg1-6.1`

Licenses: (parsed from: `/usr/share/doc/libxml2/copyright`, `/usr/share/doc/libxml2-dev/copyright`)

- `ISC`
- `MIT-1`

Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.4+dfsg1-6.1
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1-6.1.dsc' libxml2_2.9.4+dfsg1-6.1.dsc 3139 SHA256:80781c59c3fe24ed81efe58d2512c20a3cdbc9c862bee87cbd17f8241c2efab2
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1.orig.tar.xz' libxml2_2.9.4+dfsg1.orig.tar.xz 2446412 SHA256:a74ad55e346aa0b2b41903e66d21f8f3d2a736b3f41e32496376861ab484184e
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1-6.1.debian.tar.xz' libxml2_2.9.4+dfsg1-6.1.debian.tar.xz 36064 SHA256:bd4ee9a9e0c5c3c78902e4c12482fdbbcd4da0b0d1c3c41680bb8b5304116ca2
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxml2/2.9.4+dfsg1-6.1/ (for browsing the source)
- https://sources.debian.net/src/libxml2/2.9.4+dfsg1-6.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxml2/2.9.4+dfsg1-6.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxpm=1:3.5.12-1`

Binary Packages:

- `libxpm4:amd64=1:3.5.12-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxpm=1:3.5.12-1
'http://deb.debian.org/debian/pool/main/libx/libxpm/libxpm_3.5.12-1.dsc' libxpm_3.5.12-1.dsc 2061 SHA256:1b5d07d820d656030d0f79a15a0652f258c9d2be0cd6064ec37c40853906f7e8
'http://deb.debian.org/debian/pool/main/libx/libxpm/libxpm_3.5.12.orig.tar.gz' libxpm_3.5.12.orig.tar.gz 529302 SHA256:2523acc780eac01db5163267b36f5b94374bfb0de26fc0b5a7bee76649fd8501
'http://deb.debian.org/debian/pool/main/libx/libxpm/libxpm_3.5.12-1.diff.gz' libxpm_3.5.12-1.diff.gz 9458 SHA256:4103400f8d73d0ec567f87e8aa9824c4a07d068e81da6efe54fb535ec897e326
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxpm/1:3.5.12-1/ (for browsing the source)
- https://sources.debian.net/src/libxpm/1:3.5.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxpm/1:3.5.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxrandr=2:1.5.1-1`

Binary Packages:

- `libxrandr2:amd64=2:1.5.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrandr=2:1.5.1-1
'http://deb.debian.org/debian/pool/main/libx/libxrandr/libxrandr_1.5.1-1.dsc' libxrandr_1.5.1-1.dsc 2046 SHA256:0d7102ab75fdfe06534e842d5dcac8430614c61a061ab12794e2285712b0b103
'http://deb.debian.org/debian/pool/main/libx/libxrandr/libxrandr_1.5.1.orig.tar.gz' libxrandr_1.5.1.orig.tar.gz 388607 SHA256:2baa7fb3eca78fe7e11a09b373ba898b717f7eeba4a4bfd68187e04b4789b0d3
'http://deb.debian.org/debian/pool/main/libx/libxrandr/libxrandr_1.5.1-1.diff.gz' libxrandr_1.5.1-1.diff.gz 16386 SHA256:42262cbc2117ea559a4e16a02c6ea6478554aa2128d9fe1e141da07006612a1d
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxrandr/2:1.5.1-1/ (for browsing the source)
- https://sources.debian.net/src/libxrandr/2:1.5.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxrandr/2:1.5.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxrender=1:0.9.10-1`

Binary Packages:

- `libxrender-dev:amd64=1:0.9.10-1`
- `libxrender1:amd64=1:0.9.10-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrender=1:0.9.10-1
'http://deb.debian.org/debian/pool/main/libx/libxrender/libxrender_0.9.10-1.dsc' libxrender_0.9.10-1.dsc 2064 SHA256:95d6471218b44f4e60c48cea60cfb4865bbe861530add23f6c859515bee92dbd
'http://deb.debian.org/debian/pool/main/libx/libxrender/libxrender_0.9.10.orig.tar.gz' libxrender_0.9.10.orig.tar.gz 373717 SHA256:770527cce42500790433df84ec3521e8bf095dfe5079454a92236494ab296adf
'http://deb.debian.org/debian/pool/main/libx/libxrender/libxrender_0.9.10-1.diff.gz' libxrender_0.9.10-1.diff.gz 15399 SHA256:ff56a0a00119383adc5f1731e86155ae5c2de069e1d059a9da1d777917430588
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxrender/1:0.9.10-1/ (for browsing the source)
- https://sources.debian.net/src/libxrender/1:0.9.10-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxrender/1:0.9.10-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxslt=1.1.29-5`

Binary Packages:

- `libxslt1-dev:amd64=1.1.29-5`
- `libxslt1.1:amd64=1.1.29-5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxslt=1.1.29-5
'http://deb.debian.org/debian/pool/main/libx/libxslt/libxslt_1.1.29-5.dsc' libxslt_1.1.29-5.dsc 2403 SHA256:bdf606db536cce4bb3318f12379220b6af65fb8837cea58780ce20a4163a157e
'http://deb.debian.org/debian/pool/main/libx/libxslt/libxslt_1.1.29.orig.tar.gz' libxslt_1.1.29.orig.tar.gz 3428524 SHA256:b5976e3857837e7617b29f2249ebb5eeac34e249208d31f1fbf7a6ba7a4090ce
'http://deb.debian.org/debian/pool/main/libx/libxslt/libxslt_1.1.29-5.debian.tar.xz' libxslt_1.1.29-5.debian.tar.xz 34484 SHA256:1d6d404ed3b045a5f833ec824768270db1dfd1822e3ddaa6f4d69adf1abbfffa
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxslt/1.1.29-5/ (for browsing the source)
- https://sources.debian.net/src/libxslt/1.1.29-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxslt/1.1.29-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxt=1:1.1.5-1`

Binary Packages:

- `libxt-dev:amd64=1:1.1.5-1`
- `libxt6:amd64=1:1.1.5-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxt=1:1.1.5-1
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.1.5-1.dsc' libxt_1.1.5-1.dsc 2109 SHA256:f44ae1393c9fd02c0b3dd03576c7b26e6c7b09de3271a87e018efadeed311639
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.1.5.orig.tar.gz' libxt_1.1.5.orig.tar.gz 962169 SHA256:b59bee38a9935565fa49dc1bfe84cb30173e2e07e1dcdf801430d4b54eb0caa3
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.1.5-1.diff.gz' libxt_1.1.5-1.diff.gz 14462 SHA256:822fe813d1ea9213e6fde91cbb607c0b6874341dc19b77b0f6649b8be8472d82
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxt/1:1.1.5-1/ (for browsing the source)
- https://sources.debian.net/src/libxt/1:1.1.5-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxt/1:1.1.5-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libyaml=0.1.7-2`

Binary Packages:

- `libyaml-0-2:amd64=0.1.7-2`
- `libyaml-dev:amd64=0.1.7-2`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`, `/usr/share/doc/libyaml-dev/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.1.7-2
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.1.7-2.dsc' libyaml_0.1.7-2.dsc 1820 SHA256:f2e599adcf8336c4be374987112a0c823b4609dc0f5a944e5827651241d91645
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.1.7.orig.tar.gz' libyaml_0.1.7.orig.tar.gz 527518 SHA256:8088e457264a98ba451a90b8661fcb4f9d6f478f7265d48322a196cec2480729
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.1.7-2.debian.tar.xz' libyaml_0.1.7-2.debian.tar.xz 4016 SHA256:6fc7065491dd6f86b46e6f231ae8ab60f8aafbef2dcf4721598644024485b801
```

Other potentially useful URLs:

- https://sources.debian.net/src/libyaml/0.1.7-2/ (for browsing the source)
- https://sources.debian.net/src/libyaml/0.1.7-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libyaml/0.1.7-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `linux=4.14.13-1`

Binary Packages:

- `linux-libc-dev:amd64=4.14.13-1`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `CRYPTOGAMS`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `Unicode-data`
- `X11 Dual License`
- `Xen-interface`

Source:

```console
$ apt-get source -qq --print-uris linux=4.14.13-1
'http://deb.debian.org/debian/pool/main/l/linux/linux_4.14.13-1.dsc' linux_4.14.13-1.dsc 134798 SHA256:975e2239b81db6aae77ae77aa8eb3b7da576bc85018a3131adb9dcbc589600e5
'http://deb.debian.org/debian/pool/main/l/linux/linux_4.14.13.orig.tar.xz' linux_4.14.13.orig.tar.xz 103701732 SHA256:bb3847c953112ae417f43ebb7bf5344ae959d26a979b54e842906562408f62c1
'http://deb.debian.org/debian/pool/main/l/linux/linux_4.14.13-1.debian.tar.xz' linux_4.14.13-1.debian.tar.xz 2911712 SHA256:27e2cfd5ea135df3f162f59e2321497731f5a4a213e5f2c11bdd6cd5fc462c7e
```

Other potentially useful URLs:

- https://sources.debian.net/src/linux/4.14.13-1/ (for browsing the source)
- https://sources.debian.net/src/linux/4.14.13-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/linux/4.14.13-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lsb=9.20170808`

Binary Packages:

- `lsb-base=9.20170808`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=9.20170808
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_9.20170808.dsc' lsb_9.20170808.dsc 1597 SHA256:d767e622530f73df4f041f7bace54412a6da3d66ddcc73df7913cdebdbf258a9
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_9.20170808.tar.xz' lsb_9.20170808.tar.xz 42120 SHA256:ec9cb022cedcdf34c5b8dc2dca530777ce3f491ad364222557691e87807729b1
```

Other potentially useful URLs:

- https://sources.debian.net/src/lsb/9.20170808/ (for browsing the source)
- https://sources.debian.net/src/lsb/9.20170808/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lsb/9.20170808/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lz4=0.0~r131-2`

Binary Packages:

- `liblz4-1:amd64=0.0~r131-2+b1`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=0.0~r131-2
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_0.0~r131-2.dsc' lz4_0.0~r131-2.dsc 1973 SHA256:304cf9dddee387377929adf3f2cef0ae19fb2e56b6cc9eab05798845b58bd9b6
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_0.0~r131.orig.tar.gz' lz4_0.0~r131.orig.tar.gz 133784 SHA256:9d4d00614d6b9dec3114b33d1224b6262b99ace24434c53487a0c8fd0b18cfed
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_0.0~r131-2.debian.tar.xz' lz4_0.0~r131-2.debian.tar.xz 4936 SHA256:966df055dd8fa7f292c283452b43a5d2d2047d542fe49e97025006e69525e224
```

Other potentially useful URLs:

- https://sources.debian.net/src/lz4/0.0~r131-2/ (for browsing the source)
- https://sources.debian.net/src/lz4/0.0~r131-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lz4/0.0~r131-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lzo2=2.08-1.2`

Binary Packages:

- `liblzo2-2:amd64=2.08-1.2+b2`

Licenses: (parsed from: `/usr/share/doc/liblzo2-2/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lzo2=2.08-1.2
'http://deb.debian.org/debian/pool/main/l/lzo2/lzo2_2.08-1.2.dsc' lzo2_2.08-1.2.dsc 1804 SHA256:09eabe81d6f631a29cc603843b27ab914704726a1400a2219cf83b1da4e72892
'http://deb.debian.org/debian/pool/main/l/lzo2/lzo2_2.08.orig.tar.gz' lzo2_2.08.orig.tar.gz 589045 SHA256:ac1b3e4dee46febe9fd28737eb7f5692d3232ef1a01da10444394c3d47536614
'http://deb.debian.org/debian/pool/main/l/lzo2/lzo2_2.08-1.2.debian.tar.xz' lzo2_2.08-1.2.debian.tar.xz 5996 SHA256:5a9aa3a2432f5d4f689b24c64ea3daec7646e736da37721388ae88b670dd99bc
```

Other potentially useful URLs:

- https://sources.debian.net/src/lzo2/2.08-1.2/ (for browsing the source)
- https://sources.debian.net/src/lzo2/2.08-1.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lzo2/2.08-1.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `m4=1.4.18-1`

Binary Packages:

- `m4=1.4.18-1`

Licenses: (parsed from: `/usr/share/doc/m4/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris m4=1.4.18-1
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.18-1.dsc' m4_1.4.18-1.dsc 1426 SHA256:83a6c5e4b94aa47634b7c988fa485155c01120c17682865e6f032de9adf1090c
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.18.orig.tar.xz' m4_1.4.18.orig.tar.xz 1207688 SHA256:f2c1e86ca0a404ff281631bdc8377638992744b175afb806e25871a24a934e07
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.18-1.debian.tar.xz' m4_1.4.18-1.debian.tar.xz 15784 SHA256:55de78acb0272fd6e2637ab933114e64eefa58ba1e97b063629453ae1e163fff
```

Other potentially useful URLs:

- https://sources.debian.net/src/m4/1.4.18-1/ (for browsing the source)
- https://sources.debian.net/src/m4/1.4.18-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/m4/1.4.18-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `make-dfsg=4.1-9.1`

Binary Packages:

- `make=4.1-9.1`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.1-9.1
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.1-9.1.dsc' make-dfsg_4.1-9.1.dsc 2037 SHA256:3527e91633b0d2830a52f3b85229b2f8bdec5e1e5b77bbff95b20317757ab3a3
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.1.orig.tar.gz' make-dfsg_4.1.orig.tar.gz 1350231 SHA256:b3ed04fb6718289e4a430afbe2df6ecba9177aad9f6d09aaf38e5409262ca8a3
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.1-9.1.diff.gz' make-dfsg_4.1-9.1.diff.gz 45452 SHA256:ec9d39ed253808378aeb91bb2c34bbd177637ed197682e093c3aadfb97b338a3
```

Other potentially useful URLs:

- https://sources.debian.net/src/make-dfsg/4.1-9.1/ (for browsing the source)
- https://sources.debian.net/src/make-dfsg/4.1-9.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/make-dfsg/4.1-9.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mariadb-10.1=1:10.1.29-6`

Binary Packages:

- `libmariadbclient-dev=1:10.1.29-6`
- `libmariadbclient-dev-compat:amd64=1:10.1.29-6`
- `libmariadbclient18:amd64=1:10.1.29-6`

Licenses: (parsed from: `/usr/share/doc/libmariadbclient-dev/copyright`, `/usr/share/doc/libmariadbclient-dev-compat/copyright`, `/usr/share/doc/libmariadbclient18/copyright`)

- `Artistic`
- `BSD-2-clause`
- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `GPL-2+-with-bison-exception`
- `GPL-3`
- `GPL-3+`
- `GPL-3+-with-bison-exception`
- `GPL-verbatim`
- `LGPL`
- `LGPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`
- `MIT/X11`
- `SWsoft`
- `public-domain`
- `unlimited-free-doc`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris mariadb-10.1=1:10.1.29-6
'http://deb.debian.org/debian/pool/main/m/mariadb-10.1/mariadb-10.1_10.1.29-6.dsc' mariadb-10.1_10.1.29-6.dsc 4355 SHA256:bb0a0b1af1ae90ed1b435a027c966cc8cf2e7dfae4761768e284b00a7cdf68cd
'http://deb.debian.org/debian/pool/main/m/mariadb-10.1/mariadb-10.1_10.1.29.orig.tar.gz' mariadb-10.1_10.1.29.orig.tar.gz 67885370 SHA256:73bbd5602f52ab5aa4d83f465134871b6c87bda25371d098f6da5a3d98517ed4
'http://deb.debian.org/debian/pool/main/m/mariadb-10.1/mariadb-10.1_10.1.29-6.debian.tar.xz' mariadb-10.1_10.1.29-6.debian.tar.xz 224788 SHA256:85773bb28469c93461467650e74d7ada752bb05bea3d0366422548f25e4e56bf
```

Other potentially useful URLs:

- https://sources.debian.net/src/mariadb-10.1/1:10.1.29-6/ (for browsing the source)
- https://sources.debian.net/src/mariadb-10.1/1:10.1.29-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mariadb-10.1/1:10.1.29-6/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `mercurial=4.4.1-1`

Binary Packages:

- `mercurial=4.4.1-1`
- `mercurial-common=4.4.1-1`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mercurial=4.4.1-1
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_4.4.1-1.dsc' mercurial_4.4.1-1.dsc 2233 SHA256:3b7767d1d20c5f3e43b950e7be56978dcaa02cb1daa109809e93f7d210b87ac5
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_4.4.1.orig.tar.gz' mercurial_4.4.1.orig.tar.gz 5636532 SHA256:8f2a5512d6cc2ffb08988aef639330a2f0378e4ac3ee0e1fbbdb64d9fff56246
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_4.4.1-1.debian.tar.xz' mercurial_4.4.1-1.debian.tar.xz 54184 SHA256:83d64cd2fe2e6eb1510e9a7dc4613e7ea9d865a315e2a8cde42c47e1f13dd595
```

Other potentially useful URLs:

- https://sources.debian.net/src/mercurial/4.4.1-1/ (for browsing the source)
- https://sources.debian.net/src/mercurial/4.4.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mercurial/4.4.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mime-support=3.60`

Binary Packages:

- `mime-support=3.60`

Licenses: (parsed from: `/usr/share/doc/mime-support/copyright`)

- `Bellcore`
- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris mime-support=3.60
'http://deb.debian.org/debian/pool/main/m/mime-support/mime-support_3.60.dsc' mime-support_3.60.dsc 1605 SHA256:1c3c61f6943b130ee6518facac394b733661975955b84af640b78fa354d7595d
'http://deb.debian.org/debian/pool/main/m/mime-support/mime-support_3.60.tar.gz' mime-support_3.60.tar.gz 36840 SHA256:f31d81f68dc007f56567cc14fb3b2effbd42d1dd087e414508e14e33d1a6a3a4
```

Other potentially useful URLs:

- https://sources.debian.net/src/mime-support/3.60/ (for browsing the source)
- https://sources.debian.net/src/mime-support/3.60/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mime-support/3.60/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mpclib3=1.1.0-1`

Binary Packages:

- `libmpc3:amd64=1.1.0-1`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris mpclib3=1.1.0-1
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.1.0-1.dsc' mpclib3_1.1.0-1.dsc 1990 SHA256:bb57824015b735bf72399a53f8c6a241e6a8bd402753b0fdcdaa5b99d0aef790
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.1.0.orig.tar.gz' mpclib3_1.1.0.orig.tar.gz 701263 SHA256:6985c538143c1208dcb1ac42cedad6ff52e267b47e5f970183a3e75125b43c2e
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.1.0-1.diff.gz' mpclib3_1.1.0-1.diff.gz 3794 SHA256:84b10a4ae958b3015e136b75be5fee22961255d19be655f7d0adae8d4f3bc977
```

Other potentially useful URLs:

- https://sources.debian.net/src/mpclib3/1.1.0-1/ (for browsing the source)
- https://sources.debian.net/src/mpclib3/1.1.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpclib3/1.1.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mpdecimal=2.4.2-1`

Binary Packages:

- `libmpdec2:amd64=2.4.2-1`

Licenses: (parsed from: `/usr/share/doc/libmpdec2/copyright`)

- `BSD`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mpdecimal=2.4.2-1
'http://deb.debian.org/debian/pool/main/m/mpdecimal/mpdecimal_2.4.2-1.dsc' mpdecimal_2.4.2-1.dsc 1893 SHA256:5bc782829357ebc9f0c12084642319e5ac89784a119433f8bfba7a11008d7c13
'http://deb.debian.org/debian/pool/main/m/mpdecimal/mpdecimal_2.4.2.orig.tar.gz' mpdecimal_2.4.2.orig.tar.gz 2271529 SHA256:83c628b90f009470981cf084c5418329c88b19835d8af3691b930afccb7d79c7
'http://deb.debian.org/debian/pool/main/m/mpdecimal/mpdecimal_2.4.2-1.debian.tar.xz' mpdecimal_2.4.2-1.debian.tar.xz 5172 SHA256:b95fb775fd04a7ad34fa5bd2c222b49ee2dfd7f0e15295dbd3f7fb86a9b0194b
```

Other potentially useful URLs:

- https://sources.debian.net/src/mpdecimal/2.4.2-1/ (for browsing the source)
- https://sources.debian.net/src/mpdecimal/2.4.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpdecimal/2.4.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mpfr4=4.0.0-7`

Binary Packages:

- `libmpfr6:amd64=4.0.0-7`

Licenses: (parsed from: `/usr/share/doc/libmpfr6/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=4.0.0-7
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_4.0.0-7.dsc' mpfr4_4.0.0-7.dsc 1972 SHA256:9eff8171ce9a7949ccfbc7b3d4c830aa169152749d2427e4ce57182a7ad1b03b
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_4.0.0.orig.tar.xz' mpfr4_4.0.0.orig.tar.xz 1406244 SHA256:fbe2cd1418b321f5c899ce4f0f0f4e73f5ecc7d02145b0e1fd096f5c3afb8a1d
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_4.0.0-7.debian.tar.xz' mpfr4_4.0.0-7.debian.tar.xz 28084 SHA256:d76c73e8d7a4d326a9faafc0ef50f9df7ea7be02d1e692252bb153c0d9a9e24e
```

Other potentially useful URLs:

- https://sources.debian.net/src/mpfr4/4.0.0-7/ (for browsing the source)
- https://sources.debian.net/src/mpfr4/4.0.0-7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpfr4/4.0.0-7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mysql-defaults=1.0.4`

Binary Packages:

- `default-libmysqlclient-dev:amd64=1.0.4`
- `mysql-common=5.8+1.0.4`

Licenses: (parsed from: `/usr/share/doc/default-libmysqlclient-dev/copyright`, `/usr/share/doc/mysql-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mysql-defaults=1.0.4
'http://deb.debian.org/debian/pool/main/m/mysql-defaults/mysql-defaults_1.0.4.dsc' mysql-defaults_1.0.4.dsc 2213 SHA256:c0cb0ba90874c858c30cfc71ccbd078c1fb1b45fbfdc6414af75811101d6f01f
'http://deb.debian.org/debian/pool/main/m/mysql-defaults/mysql-defaults_1.0.4.tar.xz' mysql-defaults_1.0.4.tar.xz 7084 SHA256:01b92a09aaa08fd589610c0d7cbe55e05dce64db57ff2dfa6f794bcf857e002a
```

Other potentially useful URLs:

- https://sources.debian.net/src/mysql-defaults/1.0.4/ (for browsing the source)
- https://sources.debian.net/src/mysql-defaults/1.0.4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mysql-defaults/1.0.4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ncurses=6.0+20171125-1`

Binary Packages:

- `libncurses5:amd64=6.0+20171125-1`
- `libncurses5-dev:amd64=6.0+20171125-1`
- `libncursesw5:amd64=6.0+20171125-1`
- `libncursesw5-dev:amd64=6.0+20171125-1`
- `libtinfo-dev:amd64=6.0+20171125-1`
- `libtinfo5:amd64=6.0+20171125-1`
- `ncurses-base=6.0+20171125-1`
- `ncurses-bin=6.0+20171125-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=6.0+20171125-1
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.0+20171125-1.dsc' ncurses_6.0+20171125-1.dsc 3987 SHA256:b9666ab885c0dabf316a5e0ff840834bc20814db4cec458592bc5a09458e0ca7
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.0+20171125.orig.tar.gz' ncurses_6.0+20171125.orig.tar.gz 3352201 SHA256:22adbdd3c2ddfaabea8ea75de3c585d59d2a2cde4b5197dd7dd40a3481fc4d85
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.0+20171125.orig.tar.gz.asc' ncurses_6.0+20171125.orig.tar.gz.asc 267 SHA256:5140b404d8c4ac29241d2461a5cbadcd0a821aa61c1ce6ef5fb07030c8e491c3
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.0+20171125-1.debian.tar.xz' ncurses_6.0+20171125-1.debian.tar.xz 53708 SHA256:e238bf01871ca0a738268cfcc01f63e5c2cdab045a5eb4e4e75219ab821f65f9
```

Other potentially useful URLs:

- https://sources.debian.net/src/ncurses/6.0+20171125-1/ (for browsing the source)
- https://sources.debian.net/src/ncurses/6.0+20171125-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ncurses/6.0+20171125-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `netbase=5.4`

Binary Packages:

- `netbase=5.4`

Licenses: (parsed from: `/usr/share/doc/netbase/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris netbase=5.4
'http://deb.debian.org/debian/pool/main/n/netbase/netbase_5.4.dsc' netbase_5.4.dsc 1326 SHA256:ebe29d45e65b661d64636cbce3840997d8079cf338efbfa347b4c73ed2831b7b
'http://deb.debian.org/debian/pool/main/n/netbase/netbase_5.4.tar.xz' netbase_5.4.tar.xz 31524 SHA256:66ff73d2d162e2d49db43988d8b8cd328cf7fffca042db73397f14c71825e80d
```

Other potentially useful URLs:

- https://sources.debian.net/src/netbase/5.4/ (for browsing the source)
- https://sources.debian.net/src/netbase/5.4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/netbase/5.4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nettle=3.4-1`

Binary Packages:

- `libhogweed4:amd64=3.4-1`
- `libnettle6:amd64=3.4-1`

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
$ apt-get source -qq --print-uris nettle=3.4-1
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.4-1.dsc' nettle_3.4-1.dsc 2238 SHA256:0ceb4600fdedf43916e95fb6b354ebb4038f00f5814433582d0481b510310e86
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.4.orig.tar.gz' nettle_3.4.orig.tar.gz 1935069 SHA256:ae7a42df026550b85daca8389b6a60ba6313b0567f374392e54918588a411e94
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.4.orig.tar.gz.asc' nettle_3.4.orig.tar.gz.asc 1238 SHA256:86d7441c7334dd95d16b1ca488fd94ec45ed6406714d4ed9887c7212e337eb2a
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.4-1.debian.tar.xz' nettle_3.4-1.debian.tar.xz 19884 SHA256:9bfc25562ed36449e75741b0473e0e558bc9ef5c20ca24e7c650fea87d631c03
```

Other potentially useful URLs:

- https://sources.debian.net/src/nettle/3.4-1/ (for browsing the source)
- https://sources.debian.net/src/nettle/3.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nettle/3.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nghttp2=1.29.0-1`

Binary Packages:

- `libnghttp2-14:amd64=1.29.0-1`

Licenses: (parsed from: `/usr/share/doc/libnghttp2-14/copyright`)

- `BSD-2-clause`
- `Expat`
- `GPL-3`
- `GPL-3+ with autoconf exception`
- `MIT`
- `SIL-OFL-1.1`
- `all-permissive`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/nghttp2/1.29.0-1/


### `dpkg` source package: `npth=1.5-3`

Binary Packages:

- `libnpth0:amd64=1.5-3`

Licenses: (parsed from: `/usr/share/doc/libnpth0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris npth=1.5-3
'http://deb.debian.org/debian/pool/main/n/npth/npth_1.5-3.dsc' npth_1.5-3.dsc 1954 SHA256:98e02623d39451685321ab638e12cd0b85f7829f6b174d03dbb806b8d899ae3f
'http://deb.debian.org/debian/pool/main/n/npth/npth_1.5.orig.tar.bz2' npth_1.5.orig.tar.bz2 299308 SHA256:294a690c1f537b92ed829d867bee537e46be93fbd60b16c04630fbbfcd9db3c2
'http://deb.debian.org/debian/pool/main/n/npth/npth_1.5-3.debian.tar.xz' npth_1.5-3.debian.tar.xz 10480 SHA256:5cbaf91c95c90ab82053110eeec5ac72f5a3cab36829edb0579f1fb759ec5fec
```

Other potentially useful URLs:

- https://sources.debian.net/src/npth/1.5-3/ (for browsing the source)
- https://sources.debian.net/src/npth/1.5-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/npth/1.5-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openexr=2.2.0-11.1`

Binary Packages:

- `libopenexr-dev=2.2.0-11.1+b1`
- `libopenexr22:amd64=2.2.0-11.1+b1`

Licenses: (parsed from: `/usr/share/doc/libopenexr-dev/copyright`, `/usr/share/doc/libopenexr22/copyright`)

- `openexr`

Source:

```console
$ apt-get source -qq --print-uris openexr=2.2.0-11.1
'http://deb.debian.org/debian/pool/main/o/openexr/openexr_2.2.0-11.1.dsc' openexr_2.2.0-11.1.dsc 2439 SHA256:8d987878d616cf3c089042b2becedeb06b5d599936194ab92e5a5b44d663bf0f
'http://deb.debian.org/debian/pool/main/o/openexr/openexr_2.2.0.orig.tar.gz' openexr_2.2.0.orig.tar.gz 14489661 SHA256:36a012f6c43213f840ce29a8b182700f6cf6b214bea0d5735594136b44914231
'http://deb.debian.org/debian/pool/main/o/openexr/openexr_2.2.0-11.1.debian.tar.xz' openexr_2.2.0-11.1.debian.tar.xz 17344 SHA256:d0499a25e6307dea5f985cb11a00045b7f22b71f4b86bca00b133be4acfa8a4e
```

Other potentially useful URLs:

- https://sources.debian.net/src/openexr/2.2.0-11.1/ (for browsing the source)
- https://sources.debian.net/src/openexr/2.2.0-11.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openexr/2.2.0-11.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openjpeg2=2.3.0-1`

Binary Packages:

- `libopenjp2-7:amd64=2.3.0-1`
- `libopenjp2-7-dev=2.3.0-1`

Licenses: (parsed from: `/usr/share/doc/libopenjp2-7/copyright`, `/usr/share/doc/libopenjp2-7-dev/copyright`)

- `BSD-2`
- `BSD-3`
- `LIBPNG`
- `LIBTIFF`
- `LIBTIFF-GLARSON`
- `LIBTIFF-PIXAR`
- `MIT`
- `ZLIB`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris openjpeg2=2.3.0-1
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.3.0-1.dsc' openjpeg2_2.3.0-1.dsc 2725 SHA256:bd59d04084ca51ac063d1920b2615879c7eba172d7eecea61765a0cc2c2fe7cb
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.3.0.orig.tar.gz' openjpeg2_2.3.0.orig.tar.gz 2074456 SHA256:fd5ca8cf3f195b0a54c56193c5897bb423c00db577afda4033318006769a5833
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.3.0-1.debian.tar.xz' openjpeg2_2.3.0-1.debian.tar.xz 17744 SHA256:a7036deea45045b7bf46acbe50ba0dc648d56058534f673bc6d4add1f052184a
```

Other potentially useful URLs:

- https://sources.debian.net/src/openjpeg2/2.3.0-1/ (for browsing the source)
- https://sources.debian.net/src/openjpeg2/2.3.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openjpeg2/2.3.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openldap=2.4.45+dfsg-1`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.45+dfsg-1`
- `libldap-common=2.4.45+dfsg-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.45+dfsg-1
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.45+dfsg-1.dsc' openldap_2.4.45+dfsg-1.dsc 2769 SHA256:a9544b9d02dec7eb101b0eb4a71d9feaa402c9f3e12ab2398c6408c84bd93212
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.45+dfsg.orig.tar.gz' openldap_2.4.45+dfsg.orig.tar.gz 4846458 SHA256:d51c70423aa0554d454fd3d43e7f2e940523b4ef07979305b48c233ae44b2b32
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.45+dfsg-1.debian.tar.xz' openldap_2.4.45+dfsg-1.debian.tar.xz 162956 SHA256:7edec92185c74081a1fcbe934ccba951fb4a43075061aac40168a489f7989f5e
```

Other potentially useful URLs:

- https://sources.debian.net/src/openldap/2.4.45+dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/openldap/2.4.45+dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openldap/2.4.45+dfsg-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openssh=1:7.6p1-4`

Binary Packages:

- `openssh-client=1:7.6p1-4`

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
$ apt-get source -qq --print-uris openssh=1:7.6p1-4
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.6p1-4.dsc' openssh_7.6p1-4.dsc 3105 SHA256:3b8a02d664fab7b7d757adf4d5885697e8723a4fc8b71072787af50384d442b7
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.6p1.orig.tar.gz' openssh_7.6p1.orig.tar.gz 1489788 SHA256:a323caeeddfe145baaa0db16e98d784b1fbc7dd436a6bf1f479dfd5cd1d21723
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.6p1.orig.tar.gz.asc' openssh_7.6p1.orig.tar.gz.asc 683 SHA256:14e5097d68c73d42afe6314a510e7056b1748ac1d1e19518057b270d19656ad6
'http://deb.debian.org/debian/pool/main/o/openssh/openssh_7.6p1-4.debian.tar.xz' openssh_7.6p1-4.debian.tar.xz 159732 SHA256:c54489a7eec51a79581ad69eabfe6f9f0d8ddbe08d841157509e38631f8c0e0d
```

Other potentially useful URLs:

- https://sources.debian.net/src/openssh/1:7.6p1-4/ (for browsing the source)
- https://sources.debian.net/src/openssh/1:7.6p1-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openssh/1:7.6p1-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openssl1.0=1.0.2n-1`

Binary Packages:

- `libssl1.0.2:amd64=1.0.2n-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl1.0=1.0.2n-1
'http://deb.debian.org/debian/pool/main/o/openssl1.0/openssl1.0_1.0.2n-1.dsc' openssl1.0_1.0.2n-1.dsc 2529 SHA256:5ea37de4f70ff3e187d946b9e0a7deaa5aa3b004c7c6bf94703583c228329ac0
'http://deb.debian.org/debian/pool/main/o/openssl1.0/openssl1.0_1.0.2n.orig.tar.gz' openssl1.0_1.0.2n.orig.tar.gz 5375802 SHA256:370babb75f278c39e0c50e8c4e7493bc0f18db6867478341a832a982fd15a8fe
'http://deb.debian.org/debian/pool/main/o/openssl1.0/openssl1.0_1.0.2n.orig.tar.gz.asc' openssl1.0_1.0.2n.orig.tar.gz.asc 455 SHA256:70ef16ae7776de3e69b28b47754d0a1fbed262e2a028c1fc866ad22201449c0a
'http://deb.debian.org/debian/pool/main/o/openssl1.0/openssl1.0_1.0.2n-1.debian.tar.xz' openssl1.0_1.0.2n-1.debian.tar.xz 76640 SHA256:29545f35331746294d4606b299aa7635b5ace255737a8e27162538d1f5389cda
```

Other potentially useful URLs:

- https://sources.debian.net/src/openssl1.0/1.0.2n-1/ (for browsing the source)
- https://sources.debian.net/src/openssl1.0/1.0.2n-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openssl1.0/1.0.2n-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openssl=1.1.0g-2`

Binary Packages:

- `libssl-dev:amd64=1.1.0g-2`
- `libssl1.1:amd64=1.1.0g-2`
- `openssl=1.1.0g-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.1.0g-2
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.0g-2.dsc' openssl_1.1.0g-2.dsc 2583 SHA256:c247e6c03142617909613ceec367b0e8deda47745dc34196b0c7925805df238b
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.0g.orig.tar.gz' openssl_1.1.0g.orig.tar.gz 5404748 SHA256:de4d501267da39310905cb6dc8c6121f7a2cad45a7707f76df828fe1b85073af
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.0g.orig.tar.gz.asc' openssl_1.1.0g.orig.tar.gz.asc 455 SHA256:2a7532e6722aab8989644049ba5c1d3a5fce417aa4b18235eec901224098bbed
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.0g-2.debian.tar.xz' openssl_1.1.0g-2.debian.tar.xz 59272 SHA256:35d134692f170cd4625453e09edbcd23bb9147717d6274efe2647b9b320df390
```

Other potentially useful URLs:

- https://sources.debian.net/src/openssl/1.1.0g-2/ (for browsing the source)
- https://sources.debian.net/src/openssl/1.1.0g-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openssl/1.1.0g-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `p11-kit=0.23.9-2`

Binary Packages:

- `libp11-kit0:amd64=0.23.9-2`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `ISC`
- `ISC+IBM`
- `permissive-like-automake-output`
- `same-as-rest-of-p11kit`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.23.9-2
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.9-2.dsc' p11-kit_0.23.9-2.dsc 2458 SHA256:e4c271a89abf52a95d23cca02bd6fb6ea5d5611b139ac63b0db728e7d9895449
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.9.orig.tar.gz' p11-kit_0.23.9.orig.tar.gz 1091561 SHA256:e1c1649c335107a8d33cf3762eb7f57b2d0681f0c7d8353627293a58d6b4db63
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.9.orig.tar.gz.asc' p11-kit_0.23.9.orig.tar.gz.asc 900 SHA256:334562f6a37f96339173a33a90b246466e0b2673e03658b205d75ebbb63bad10
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.9-2.debian.tar.xz' p11-kit_0.23.9-2.debian.tar.xz 21704 SHA256:fa6af69f96f6ccdce95d61e39662a38768b05f8872b2b2008d56cc4fff0ed3fd
```

Other potentially useful URLs:

- https://sources.debian.net/src/p11-kit/0.23.9-2/ (for browsing the source)
- https://sources.debian.net/src/p11-kit/0.23.9-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/p11-kit/0.23.9-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pam=1.1.8-3.6`

Binary Packages:

- `libpam-modules:amd64=1.1.8-3.6`
- `libpam-modules-bin=1.1.8-3.6`
- `libpam-runtime=1.1.8-3.6`
- `libpam0g:amd64=1.1.8-3.6`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/pam/1.1.8-3.6/


### `dpkg` source package: `pango1.0=1.40.14-1`

Binary Packages:

- `libpango-1.0-0:amd64=1.40.14-1`
- `libpangocairo-1.0-0:amd64=1.40.14-1`
- `libpangoft2-1.0-0:amd64=1.40.14-1`

Licenses: (parsed from: `/usr/share/doc/libpango-1.0-0/copyright`, `/usr/share/doc/libpangocairo-1.0-0/copyright`, `/usr/share/doc/libpangoft2-1.0-0/copyright`)

- `LGPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris pango1.0=1.40.14-1
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.40.14-1.dsc' pango1.0_1.40.14-1.dsc 3227 SHA256:196da02884c501954773967c932bc31a26c215ad7f5be745153506d57c0c00fc
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.40.14.orig.tar.xz' pango1.0_1.40.14.orig.tar.xz 858388 SHA256:90af1beaa7bf9e4c52db29ec251ec4fd0a8f2cc185d521ad1f88d01b3a6a17e3
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.40.14-1.debian.tar.xz' pango1.0_1.40.14-1.debian.tar.xz 27748 SHA256:5cf2778fbafeac5a12bfed90a0154ab002bffe338873f39cb391b91c773e40c6
```

Other potentially useful URLs:

- https://sources.debian.net/src/pango1.0/1.40.14-1/ (for browsing the source)
- https://sources.debian.net/src/pango1.0/1.40.14-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pango1.0/1.40.14-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `patch=2.7.5-1`

Binary Packages:

- `patch=2.7.5-1+b2`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/patch/2.7.5-1/


### `dpkg` source package: `pcre2=10.22-6`

Binary Packages:

- `libpcre2-8-0:amd64=10.22-6`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre2=10.22-6
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.22-6.dsc' pcre2_10.22-6.dsc 2307 SHA256:f4a9eda6eb648de417a538e8623ce76d8551d3a5af0e0a3dfdec0934edb7ed8b
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.22.orig.tar.gz' pcre2_10.22.orig.tar.gz 1985688 SHA256:e44d8a6f31bb33cce01ed43743f464290f1d96f60b5fd838786e632d3624a7bd
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.22-6.diff.gz' pcre2_10.22-6.diff.gz 5490 SHA256:f5ff709a3a8ebc1c147980b7204f942444c3857ade9e642941362639049c9884
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcre2/10.22-6/ (for browsing the source)
- https://sources.debian.net/src/pcre2/10.22-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcre2/10.22-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pcre3=2:8.39-9`

Binary Packages:

- `libpcre16-3:amd64=2:8.39-9`
- `libpcre3:amd64=2:8.39-9`
- `libpcre3-dev:amd64=2:8.39-9`
- `libpcre32-3:amd64=2:8.39-9`
- `libpcrecpp0v5:amd64=2:8.39-9`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-9
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-9.dsc' pcre3_8.39-9.dsc 2224 SHA256:cfbe37b2022027f62f236d74bb6af90befd2964161d77b2fd459c75ae7c36e36
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA256:b858099f82483031ee02092711689e7245586ada49e534a06e678b8ea9549e8b
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-9.debian.tar.gz' pcre3_8.39-9.debian.tar.gz 26333 SHA256:68be90799b722a8d5a075c3d2f48718cb21e2e736e0edf1e7e46a87c51215f55
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcre3/2:8.39-9/ (for browsing the source)
- https://sources.debian.net/src/pcre3/2:8.39-9/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcre3/2:8.39-9/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `perl=5.26.1-4`

Binary Packages:

- `libperl5.26:amd64=5.26.1-4`
- `perl=5.26.1-4`
- `perl-base=5.26.1-4`
- `perl-modules-5.26=5.26.1-4`

Licenses: (parsed from: `/usr/share/doc/libperl5.26/copyright`, `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules-5.26/copyright`)

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
$ apt-get source -qq --print-uris perl=5.26.1-4
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.26.1-4.dsc' perl_5.26.1-4.dsc 2658 SHA256:5fdc9194b269fae0a6bc83c96eb903c9dca0b963c3fda64d34af62b3b9c3e2d3
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.26.1.orig-regen-configure.tar.gz' perl_5.26.1.orig-regen-configure.tar.gz 712883 SHA256:918f054a64b2835bc1c6ed79c1e082e7dcdb76735a95b54ee39c25ea9e245ca4
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.26.1.orig.tar.xz' perl_5.26.1.orig.tar.xz 11922848 SHA256:fe8208133e73e47afc3251c08d2c21c5a60160165a8ab8b669c43a420e4ec680
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.26.1-4.debian.tar.xz' perl_5.26.1-4.debian.tar.xz 160776 SHA256:f255b1870616cd98e726dabc4aadc830f4b42cbccb1403139718b2f54d5fac04
```

Other potentially useful URLs:

- https://sources.debian.net/src/perl/5.26.1-4/ (for browsing the source)
- https://sources.debian.net/src/perl/5.26.1-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/perl/5.26.1-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pinentry=1.1.0-1`

Binary Packages:

- `pinentry-curses=1.1.0-1`

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

### `dpkg` source package: `pixman=0.34.0-2`

Binary Packages:

- `libpixman-1-0:amd64=0.34.0-2`
- `libpixman-1-dev:amd64=0.34.0-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pixman=0.34.0-2
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.34.0-2.dsc' pixman_0.34.0-2.dsc 2091 SHA256:a2d9b02ea4b0255813197c2266cee166578b083815e255530aec390bbc43d15c
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.34.0.orig.tar.gz' pixman_0.34.0.orig.tar.gz 878784 SHA256:21b6b249b51c6800dc9553b65106e1e37d0e25df942c90531d4c3997aa20a88e
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.34.0-2.diff.gz' pixman_0.34.0-2.diff.gz 315460 SHA256:e81ec91d58776d804a2c56cbebb8c80fa3318a45a6a7246005bc96985f7dd805
```

Other potentially useful URLs:

- https://sources.debian.net/src/pixman/0.34.0-2/ (for browsing the source)
- https://sources.debian.net/src/pixman/0.34.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pixman/0.34.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pkg-config=0.29-4`

Binary Packages:

- `pkg-config=0.29-4+b1`

Licenses: (parsed from: `/usr/share/doc/pkg-config/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pkg-config=0.29-4
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.29-4.dsc' pkg-config_0.29-4.dsc 1718 SHA256:6a00ca4f4813c9d531b7f99072e1b6b443a8eea045c97e7d2b9d34f9a960deb5
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.29.orig.tar.gz' pkg-config_0.29.orig.tar.gz 1973875 SHA256:c8507705d2a10c67f385d66ca2aae31e81770cc0734b4191eb8c489e864a006b
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.29-4.diff.gz' pkg-config_0.29-4.diff.gz 7560 SHA256:0c1253e3755942d3bf407d5c6465568e97ee960c8d9829c53cbae8ff26dc3762
```

Other potentially useful URLs:

- https://sources.debian.net/src/pkg-config/0.29-4/ (for browsing the source)
- https://sources.debian.net/src/pkg-config/0.29-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pkg-config/0.29-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `postgresql-10=10.2-1`

Binary Packages:

- `libpq-dev=10.2-1`
- `libpq5:amd64=10.2-1`

Licenses: (parsed from: `/usr/share/doc/libpq-dev/copyright`, `/usr/share/doc/libpq5/copyright`)

- `Artistic`
- `BSD-2-clause`
- `BSD-3-clause`
- `Custom-Unicode`
- `Custom-pg_dump`
- `Custom-regex`
- `GPL-1`
- `PostgreSQL`
- `Tcl`
- `blf`
- `double-metaphone`
- `imath`
- `nagaysau-ishii`
- `rijndael`

Source:

```console
$ apt-get source -qq --print-uris postgresql-10=10.2-1
'http://deb.debian.org/debian/pool/main/p/postgresql-10/postgresql-10_10.2-1.dsc' postgresql-10_10.2-1.dsc 3474 SHA256:b91226ffd94639ba013cf46fa7d205b1d30c103066da8100c9db8018bf10227f
'http://deb.debian.org/debian/pool/main/p/postgresql-10/postgresql-10_10.2.orig.tar.bz2' postgresql-10_10.2.orig.tar.bz2 19901836 SHA256:fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
'http://deb.debian.org/debian/pool/main/p/postgresql-10/postgresql-10_10.2-1.debian.tar.xz' postgresql-10_10.2-1.debian.tar.xz 21944 SHA256:ea39edbbdc16ec8053f6a378b56e7137ebdd332bd6575d009323ed498991d48d
```

Other potentially useful URLs:

- https://sources.debian.net/src/postgresql-10/10.2-1/ (for browsing the source)
- https://sources.debian.net/src/postgresql-10/10.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/postgresql-10/10.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `procps=2:3.3.12-4`

Binary Packages:

- `libprocps6:amd64=2:3.3.12-4`
- `procps=2:3.3.12-4`

Licenses: (parsed from: `/usr/share/doc/libprocps6/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.12-4
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.12-4.dsc' procps_3.3.12-4.dsc 2127 SHA256:0e643e0ef86d77bd0465cebb0c8f66ffaf9ade1f7a34603242bacc2a25c8b359
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.12.orig.tar.xz' procps_3.3.12.orig.tar.xz 840540 SHA256:042fcc93e1850aee4c193c51c03f369293fb64fe47e37b38852be6693d12a3af
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.12-4.debian.tar.xz' procps_3.3.12-4.debian.tar.xz 27988 SHA256:1fc7c5bb257f9123e759b751d400f761b6d248bfe9be6623f01d9afd6c328440
```

Other potentially useful URLs:

- https://sources.debian.net/src/procps/2:3.3.12-4/ (for browsing the source)
- https://sources.debian.net/src/procps/2:3.3.12-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/procps/2:3.3.12-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python-defaults=2.7.14-4`

Binary Packages:

- `libpython-stdlib:amd64=2.7.14-4`
- `python=2.7.14-4`
- `python-minimal=2.7.14-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-defaults=2.7.14-4
'http://deb.debian.org/debian/pool/main/p/python-defaults/python-defaults_2.7.14-4.dsc' python-defaults_2.7.14-4.dsc 2610 SHA256:c84fba720932be2e1d69e3c0cc1ad430f94f9869fabcada78092eb576bec6ea1
'http://deb.debian.org/debian/pool/main/p/python-defaults/python-defaults_2.7.14-4.tar.gz' python-defaults_2.7.14-4.tar.gz 275123 SHA256:7ac13aab5f8bb33206f832481f747e325abc03fd25661ee29117be87f3e3ec29
```

Other potentially useful URLs:

- https://sources.debian.net/src/python-defaults/2.7.14-4/ (for browsing the source)
- https://sources.debian.net/src/python-defaults/2.7.14-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python-defaults/2.7.14-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python2.7=2.7.14-6`

Binary Packages:

- `libpython2.7-minimal:amd64=2.7.14-6`
- `libpython2.7-stdlib:amd64=2.7.14-6`
- `python2.7=2.7.14-6`
- `python2.7-minimal=2.7.14-6`

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
$ apt-get source -qq --print-uris python2.7=2.7.14-6
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.14-6.dsc' python2.7_2.7.14-6.dsc 3357 SHA256:55e52b6c7c7a2f3771f3515644337ccf8c76f058b4cb867a16776927513c5242
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.14.orig.tar.gz' python2.7_2.7.14.orig.tar.gz 17176758 SHA256:304c9b202ea6fbd0a4a8e0ad3733715fbd4749f2204a9173a58ec53c32ea73e8
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.14-6.diff.gz' python2.7_2.7.14-6.diff.gz 436517 SHA256:ee92259f95450be349509f0d2b11a6997d430bfe47c26395f7c16f2e8d2cb011
```

Other potentially useful URLs:

- https://sources.debian.net/src/python2.7/2.7.14-6/ (for browsing the source)
- https://sources.debian.net/src/python2.7/2.7.14-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python2.7/2.7.14-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python3-defaults=3.6.4-1`

Binary Packages:

- `libpython3-stdlib:amd64=3.6.4-1`
- `python3=3.6.4-1`
- `python3-minimal=3.6.4-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.6.4-1
'http://deb.debian.org/debian/pool/main/p/python3-defaults/python3-defaults_3.6.4-1.dsc' python3-defaults_3.6.4-1.dsc 2870 SHA256:81fb876f7b761dc99e4c5190992083359385c009f50db61542cd2c7c2fee8da4
'http://deb.debian.org/debian/pool/main/p/python3-defaults/python3-defaults_3.6.4-1.tar.gz' python3-defaults_3.6.4-1.tar.gz 131999 SHA256:68f7f5648771471c2aa6f188b2e23716ff6f53d86e61776c5612d4e19ed77725
```

Other potentially useful URLs:

- https://sources.debian.net/src/python3-defaults/3.6.4-1/ (for browsing the source)
- https://sources.debian.net/src/python3-defaults/3.6.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python3-defaults/3.6.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python3-stdlib-extensions=3.6.4-2`

Binary Packages:

- `python3-distutils=3.6.4-2`
- `python3-lib2to3=3.6.4-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/python3-stdlib-extensions/3.6.4-2/


### `dpkg` source package: `python3.6=3.6.4-3`

Binary Packages:

- `libpython3.6-minimal:amd64=3.6.4-3`
- `libpython3.6-stdlib:amd64=3.6.4-3`
- `python3.6=3.6.4-3`
- `python3.6-minimal=3.6.4-3`

Licenses: (parsed from: `/usr/share/doc/libpython3.6-minimal/copyright`, `/usr/share/doc/libpython3.6-stdlib/copyright`, `/usr/share/doc/python3.6/copyright`, `/usr/share/doc/python3.6-minimal/copyright`)

- `* Permission to use this software in any way is granted without`
- `By obtaining, using, and/or copying this software and/or its`
- `GPL-2`
- `Permission  is  hereby granted,  free  of charge,  to  any person`
- `Permission is hereby granted, free of charge, to any person obtaining`
- `Permission to use, copy, modify,`
- `Redistribution`
- `This software is provided 'as-is', without any express`
- `This software is provided as-is, without express`
- `binary forms, with`
- `distribute this software`
- `distribute this software and`
- `distribute this software for any`
- `implied`
- `its`
- `use in source`
- `without`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/python3.6/3.6.4-3/


### `dpkg` source package: `readline=7.0-3`

Binary Packages:

- `libreadline-dev:amd64=7.0-3`
- `libreadline7:amd64=7.0-3`
- `readline-common=7.0-3`

Licenses: (parsed from: `/usr/share/doc/libreadline-dev/copyright`, `/usr/share/doc/libreadline7/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline=7.0-3
'http://deb.debian.org/debian/pool/main/r/readline/readline_7.0-3.dsc' readline_7.0-3.dsc 2538 SHA256:f27a5dc9053b88641e3effc6c03b7840cbbbd887e8dcaf05d9e336c7bc7c6a53
'http://deb.debian.org/debian/pool/main/r/readline/readline_7.0.orig.tar.gz' readline_7.0.orig.tar.gz 2910016 SHA256:750d437185286f40a369e1e4f4764eda932b9459b5ec9a731628393dd3d32334
'http://deb.debian.org/debian/pool/main/r/readline/readline_7.0-3.debian.tar.xz' readline_7.0-3.debian.tar.xz 30012 SHA256:bf166310d6ca7716f2bd0e9e06cee2458b0157f7989d028730fc305643560175
```

Other potentially useful URLs:

- https://sources.debian.net/src/readline/7.0-3/ (for browsing the source)
- https://sources.debian.net/src/readline/7.0-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/readline/7.0-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d.1-1`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d.1-1+b1`

Licenses: (parsed from: `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20151223.gitfa8646d.1-1
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1-1.dsc' rtmpdump_2.4+20151223.gitfa8646d.1-1.dsc 2315 SHA256:e56822b88625bf6a51f06652fc36fa2a1348b4325ac76541800cd078192aa3d2
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz' rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz 142213 SHA256:5c032f5c8cc2937eb55a81a94effdfed3b0a0304b6376147b86f951e225e3ab5
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1-1.debian.tar.xz' rtmpdump_2.4+20151223.gitfa8646d.1-1.debian.tar.xz 8044 SHA256:675847f5cddb860256cbf2e7d5b85918aa53b59b0fd97a466b39a5c77a399537
```

Other potentially useful URLs:

- https://sources.debian.net/src/rtmpdump/2.4+20151223.gitfa8646d.1-1/ (for browsing the source)
- https://sources.debian.net/src/rtmpdump/2.4+20151223.gitfa8646d.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/rtmpdump/2.4+20151223.gitfa8646d.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sed=4.4-2`

Binary Packages:

- `sed=4.4-2`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris sed=4.4-2
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.4-2.dsc' sed_4.4-2.dsc 2006 SHA256:0e025a69a04c867048f918778771e2ba79d6ddfd62cb5ce6c3a6e255c005706c
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.4.orig.tar.xz' sed_4.4.orig.tar.xz 1181664 SHA256:cbd6ebc5aaf080ed60d0162d7f6aeae58211a1ee9ba9bb25623daa6cd942683b
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.4-2.debian.tar.xz' sed_4.4-2.debian.tar.xz 59600 SHA256:9f9b8bec0438ea0d0bd4315548de519543385c8196bcfcc61362f38f4cc6e7ed
```

Other potentially useful URLs:

- https://sources.debian.net/src/sed/4.4-2/ (for browsing the source)
- https://sources.debian.net/src/sed/4.4-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sed/4.4-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `serf=1.3.9-4`

Binary Packages:

- `libserf-1-1:amd64=1.3.9-4`

Licenses: (parsed from: `/usr/share/doc/libserf-1-1/copyright`)

- `Apache`
- `Apache-2.0`
- `Zlib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/serf/1.3.9-4/


### `dpkg` source package: `shadow=1:4.5-1`

Binary Packages:

- `login=1:4.5-1`
- `passwd=1:4.5-1`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.5-1
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.5-1.dsc' shadow_4.5-1.dsc 2282 SHA256:1e93b2e4cb3f0f14a52dd9603bf8153f31a3117c580c0b46fd94822437516ff6
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.5.orig.tar.xz' shadow_4.5.orig.tar.xz 1344524 SHA256:22b0952dc944b163e2370bb911b11ca275fc80ad024267cf21e496b28c23d500
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.5-1.debian.tar.xz' shadow_4.5-1.debian.tar.xz 462752 SHA256:0aa8980eddef9159ee6532d40bda92237ad2163dcc2bb6601aecc415ab9662ee
```

Other potentially useful URLs:

- https://sources.debian.net/src/shadow/1:4.5-1/ (for browsing the source)
- https://sources.debian.net/src/shadow/1:4.5-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/shadow/1:4.5-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `shared-mime-info=1.9-2`

Binary Packages:

- `shared-mime-info=1.9-2`

Licenses: (parsed from: `/usr/share/doc/shared-mime-info/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris shared-mime-info=1.9-2
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_1.9-2.dsc' shared-mime-info_1.9-2.dsc 2203 SHA256:0592a6550b9bee8895d4a4fe577a15a28a5a911135765ae74b310abaea5c5b66
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_1.9.orig.tar.xz' shared-mime-info_1.9.orig.tar.xz 607648 SHA256:5c0133ec4e228e41bdf52f726d271a2d821499c2ab97afd3aa3d6cf43efcdc83
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_1.9-2.debian.tar.xz' shared-mime-info_1.9-2.debian.tar.xz 9992 SHA256:18cb7e2c0f2a3daa2d55abc87c4619d68f537f268a3bad8510e1fcf0d6b0cd76
```

Other potentially useful URLs:

- https://sources.debian.net/src/shared-mime-info/1.9-2/ (for browsing the source)
- https://sources.debian.net/src/shared-mime-info/1.9-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/shared-mime-info/1.9-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sqlite3=3.22.0-1`

Binary Packages:

- `libsqlite3-0:amd64=3.22.0-1`
- `libsqlite3-dev:amd64=3.22.0-1`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`, `/usr/share/doc/libsqlite3-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.22.0-1
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.22.0-1.dsc' sqlite3_3.22.0-1.dsc 2397 SHA256:6a5c95a5062c19abcfb0492b32b4e4f20634a59fb077da2415ab16e1afdc4ff6
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.22.0.orig-www.tar.xz' sqlite3_3.22.0.orig-www.tar.xz 3564688 SHA256:a61a14d6f457bb31ca32f4844398140050597fe4403dc0ee19576111f407e231
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.22.0.orig.tar.xz' sqlite3_3.22.0.orig.tar.xz 6019648 SHA256:f973ba63b5a1ea1d72e80c585bfb945e71d3f8b74fbecccdf345a84f8c91e5d1
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.22.0-1.debian.tar.xz' sqlite3_3.22.0-1.debian.tar.xz 17312 SHA256:7fcce88ce9c8fe517fb9fc5b9d67daf14e48da678496fede4b27cbd3ddcbd453
```

Other potentially useful URLs:

- https://sources.debian.net/src/sqlite3/3.22.0-1/ (for browsing the source)
- https://sources.debian.net/src/sqlite3/3.22.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sqlite3/3.22.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `subversion=1.9.7-3`

Binary Packages:

- `libsvn1:amd64=1.9.7-3`
- `subversion=1.9.7-3`

Licenses: (parsed from: `/usr/share/doc/libsvn1/copyright`, `/usr/share/doc/subversion/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris subversion=1.9.7-3
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.9.7-3.dsc' subversion_1.9.7-3.dsc 3037 SHA256:e9aea254aab1cfc8eec2156f5a3b37e47c90606e6b02f7d896faed6004d08f86
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.9.7.orig.tar.gz' subversion_1.9.7.orig.tar.gz 10643686 SHA256:c72a209c883e20245f14c4e644803f50ae83ae24652e385ff5e82300a0d06c3c
'http://deb.debian.org/debian/pool/main/s/subversion/subversion_1.9.7-3.debian.tar.xz' subversion_1.9.7-3.debian.tar.xz 2264408 SHA256:eee444a4701d8d5538c5b49584e1671e5a9930f1fa54714ade1b0798c83c8faa
```

Other potentially useful URLs:

- https://sources.debian.net/src/subversion/1.9.7-3/ (for browsing the source)
- https://sources.debian.net/src/subversion/1.9.7-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/subversion/1.9.7-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `systemd=236-3`

Binary Packages:

- `libsystemd0:amd64=236-3`
- `libudev1:amd64=236-3`

Licenses: (parsed from: `/usr/share/doc/libsystemd0/copyright`, `/usr/share/doc/libudev1/copyright`)

- `CC0`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris systemd=236-3
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_236-3.dsc' systemd_236-3.dsc 4835 SHA256:a6f4b547c618a8a8f0ee0e2136c42e13ffd2dc31caf0ff380073e5a9fe492aa4
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_236.orig.tar.gz' systemd_236.orig.tar.gz 6759035 SHA256:0cadccfa7109232ec2a469d41ca595d5595b83b648b534ea669c15dbca904c43
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_236-3.debian.tar.xz' systemd_236-3.debian.tar.xz 134772 SHA256:b9274d74bf81465747e54752242ea3d7256cb2ba90c8a61be214038ee22fdb0b
```

Other potentially useful URLs:

- https://sources.debian.net/src/systemd/236-3/ (for browsing the source)
- https://sources.debian.net/src/systemd/236-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/systemd/236-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sysvinit=2.88dsf-59.10`

Binary Packages:

- `sysvinit-utils=2.88dsf-59.10`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.88dsf-59.10
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf-59.10.dsc' sysvinit_2.88dsf-59.10.dsc 2353 SHA256:b25f6800b2c0f1cfd978979f25371a79493c81c6ad0815b541d12deaae75e319
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf.orig.tar.gz' sysvinit_2.88dsf.orig.tar.gz 125330 SHA256:b016f937958d2809a020d407e1287bdc09abf1d44efaa96530e2ea57f544f4e8
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf-59.10.debian.tar.xz' sysvinit_2.88dsf-59.10.debian.tar.xz 132504 SHA256:3dd24f403de4565abe55181fbde15ac013e520bf65f159b875637f6c41972519
```

Other potentially useful URLs:

- https://sources.debian.net/src/sysvinit/2.88dsf-59.10/ (for browsing the source)
- https://sources.debian.net/src/sysvinit/2.88dsf-59.10/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sysvinit/2.88dsf-59.10/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tar=1.29b-2`

Binary Packages:

- `tar=1.29b-2`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.29b-2
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.29b-2.dsc' tar_1.29b-2.dsc 1965 SHA256:cae92504d2622b0a3d353df387c44beb1e9040ed2d527272a226f0ba247a17f1
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.29b.orig.tar.xz' tar_1.29b.orig.tar.xz 1822008 SHA256:6a59706ebee384a6cd2fb3ee1dbfbfc20c5c66c7efd7cedb28edc054fca8ba00
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.29b-2.debian.tar.xz' tar_1.29b-2.debian.tar.xz 28552 SHA256:caa4e76e821b87e842d0bfc8285abd47103d47d56e93dae0a8df4b787f7c8d72
```

Other potentially useful URLs:

- https://sources.debian.net/src/tar/1.29b-2/ (for browsing the source)
- https://sources.debian.net/src/tar/1.29b-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tar/1.29b-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tiff=4.0.9-3`

Binary Packages:

- `libtiff-dev=4.0.9-3`
- `libtiff5:amd64=4.0.9-3`
- `libtiff5-dev:amd64=4.0.9-3`
- `libtiffxx5:amd64=4.0.9-3`

Licenses: (parsed from: `/usr/share/doc/libtiff-dev/copyright`, `/usr/share/doc/libtiff5/copyright`, `/usr/share/doc/libtiff5-dev/copyright`, `/usr/share/doc/libtiffxx5/copyright`)

- `Hylafax`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/tiff/4.0.9-3/


### `dpkg` source package: `tzdata=2018c-1`

Binary Packages:

- `tzdata=2018c-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tzdata=2018c-1
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2018c-1.dsc' tzdata_2018c-1.dsc 2247 SHA256:0dca32c982ebdd2d5a029d42b7914a84bcca70e77eecf5928bb006e1c27b69f5
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2018c.orig.tar.gz' tzdata_2018c.orig.tar.gz 341074 SHA256:2825c3e4b7ef520f24d393bcc02942f9762ffd3e7fc9b23850789ed8f22933f6
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2018c.orig.tar.gz.asc' tzdata_2018c.orig.tar.gz.asc 819 SHA256:caa609d2c8141a6ab50285457348cde54155813c17028f319bfc8b4d6a9bb818
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2018c-1.debian.tar.xz' tzdata_2018c-1.debian.tar.xz 104152 SHA256:87f0a637baa58f80db2aee626c7213d8ce58402f2e181c96450daaa96a20b6ea
```

Other potentially useful URLs:

- https://sources.debian.net/src/tzdata/2018c-1/ (for browsing the source)
- https://sources.debian.net/src/tzdata/2018c-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tzdata/2018c-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ucf=3.0036`

Binary Packages:

- `ucf=3.0036`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0036
'http://deb.debian.org/debian/pool/main/u/ucf/ucf_3.0036.dsc' ucf_3.0036.dsc 1343 SHA256:e67a8a3012ac357c7759dabd93d258422b1003bad8c3f17f25fc2a289eeda3bb
'http://deb.debian.org/debian/pool/main/u/ucf/ucf_3.0036.tar.xz' ucf_3.0036.tar.xz 65020 SHA256:34aa44416106f1205376918386b2896edf21dd42b633133b5f8fedecae17fca8
```

Other potentially useful URLs:

- https://sources.debian.net/src/ucf/3.0036/ (for browsing the source)
- https://sources.debian.net/src/ucf/3.0036/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ucf/3.0036/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `util-linux=2.30.2-0.3`

Binary Packages:

- `bsdutils=1:2.30.2-0.3`
- `fdisk=2.30.2-0.3`
- `libblkid1:amd64=2.30.2-0.3`
- `libfdisk1:amd64=2.30.2-0.3`
- `libmount1:amd64=2.30.2-0.3`
- `libsmartcols1:amd64=2.30.2-0.3`
- `libuuid1:amd64=2.30.2-0.3`
- `mount=2.30.2-0.3`
- `util-linux=2.30.2-0.3`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/util-linux/2.30.2-0.3/


### `dpkg` source package: `wget=1.19.4-1`

Binary Packages:

- `wget=1.19.4-1`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.19.4-1
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.19.4-1.dsc' wget_1.19.4-1.dsc 2158 SHA256:14616d5aeaf1d8262b56edb6aa4541b0f0d85cf0de708d777f049adf4ad844a5
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.19.4.orig.tar.gz' wget_1.19.4.orig.tar.gz 4310657 SHA256:93fb96b0f48a20ff5be0d9d9d3c4a986b469cb853131f9d5fe4cc9cecbc8b5b5
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.19.4.orig.tar.gz.asc' wget_1.19.4.orig.tar.gz.asc 1241 SHA256:ee273f3a27adb2d2dc02ba346759ce95cb74ded959853a8a9c9be5ae44d10fcb
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.19.4-1.debian.tar.xz' wget_1.19.4-1.debian.tar.xz 60172 SHA256:829c85dc5cd545e5f260c1715bffd9999f420dd8bb5b00def30acc068c1bf00a
```

Other potentially useful URLs:

- https://sources.debian.net/src/wget/1.19.4-1/ (for browsing the source)
- https://sources.debian.net/src/wget/1.19.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/wget/1.19.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `x11proto-core=7.0.31-1`

Binary Packages:

- `x11proto-core-dev=7.0.31-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-core=7.0.31-1
'http://deb.debian.org/debian/pool/main/x/x11proto-core/x11proto-core_7.0.31-1.dsc' x11proto-core_7.0.31-1.dsc 1949 SHA256:9810fabbded85927d800058431a9168308aeec4bdd4e4fa6dc7f877855c35028
'http://deb.debian.org/debian/pool/main/x/x11proto-core/x11proto-core_7.0.31.orig.tar.gz' x11proto-core_7.0.31.orig.tar.gz 367979 SHA256:6d755eaae27b45c5cc75529a12855fed5de5969b367ed05003944cf901ed43c7
'http://deb.debian.org/debian/pool/main/x/x11proto-core/x11proto-core_7.0.31-1.diff.gz' x11proto-core_7.0.31-1.diff.gz 30387 SHA256:68f5f4e0df06f5fa5ed4a88e1b3899bd9d80313a51b6f314230132f560bcf94e
```

Other potentially useful URLs:

- https://sources.debian.net/src/x11proto-core/7.0.31-1/ (for browsing the source)
- https://sources.debian.net/src/x11proto-core/7.0.31-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/x11proto-core/7.0.31-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `x11proto-input=2.3.2-1`

Binary Packages:

- `x11proto-input-dev=2.3.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-input=2.3.2-1
'http://deb.debian.org/debian/pool/main/x/x11proto-input/x11proto-input_2.3.2-1.dsc' x11proto-input_2.3.2-1.dsc 1908 SHA256:6c4fc45a57d001782369ffcdbe29f5ff889d426a1053c67678c3a710dd9d03d2
'http://deb.debian.org/debian/pool/main/x/x11proto-input/x11proto-input_2.3.2.orig.tar.gz' x11proto-input_2.3.2.orig.tar.gz 244334 SHA256:10eaadd531f38f7c92ab59ef0708ca195caf3164a75c4ed99f0c04f2913f6ef3
'http://deb.debian.org/debian/pool/main/x/x11proto-input/x11proto-input_2.3.2-1.diff.gz' x11proto-input_2.3.2-1.diff.gz 6898 SHA256:21f09fce8acfb20e01bd2c90775eb8ae8f43d67dea690874625d1a0bd5a1bff2
```

Other potentially useful URLs:

- https://sources.debian.net/src/x11proto-input/2.3.2-1/ (for browsing the source)
- https://sources.debian.net/src/x11proto-input/2.3.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/x11proto-input/2.3.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `x11proto-kb=1.0.7-1`

Binary Packages:

- `x11proto-kb-dev=1.0.7-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-kb=1.0.7-1
'http://deb.debian.org/debian/pool/main/x/x11proto-kb/x11proto-kb_1.0.7-1.dsc' x11proto-kb_1.0.7-1.dsc 1929 SHA256:279f1e446457ba50e8950ebbe44446f960362f2247dece08ed276f5181596480
'http://deb.debian.org/debian/pool/main/x/x11proto-kb/x11proto-kb_1.0.7.orig.tar.gz' x11proto-kb_1.0.7.orig.tar.gz 325858 SHA256:828cb275b91268b1a3ea950d5c0c5eb076c678fdf005d517411f89cc8c3bb416
'http://deb.debian.org/debian/pool/main/x/x11proto-kb/x11proto-kb_1.0.7-1.diff.gz' x11proto-kb_1.0.7-1.diff.gz 7467 SHA256:c868adc57853c6633e0379ce25f23e4cd8847f1d67c651ed1d7e63c98574064c
```

Other potentially useful URLs:

- https://sources.debian.net/src/x11proto-kb/1.0.7-1/ (for browsing the source)
- https://sources.debian.net/src/x11proto-kb/1.0.7-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/x11proto-kb/1.0.7-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `x11proto-render=2:0.11.1-2`

Binary Packages:

- `x11proto-render-dev=2:0.11.1-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-render=2:0.11.1-2
'http://deb.debian.org/debian/pool/main/x/x11proto-render/x11proto-render_0.11.1-2.dsc' x11proto-render_0.11.1-2.dsc 1979 SHA256:5cebbcce7928bd468b0eb447d9da403e5228af1691549a529a9012d2f7d18948
'http://deb.debian.org/debian/pool/main/x/x11proto-render/x11proto-render_0.11.1.orig.tar.gz' x11proto-render_0.11.1.orig.tar.gz 124436 SHA256:a0a4be3cad9381ae28279ba5582e679491fc2bec9aab8a65993108bf8dbce5fe
'http://deb.debian.org/debian/pool/main/x/x11proto-render/x11proto-render_0.11.1-2.diff.gz' x11proto-render_0.11.1-2.diff.gz 14527 SHA256:614b7adf6f08bdf25bc7fb565f048e2f94e290c3bd056fa2485e093eb887c54f
```

Other potentially useful URLs:

- https://sources.debian.net/src/x11proto-render/2:0.11.1-2/ (for browsing the source)
- https://sources.debian.net/src/x11proto-render/2:0.11.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/x11proto-render/2:0.11.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `x11proto-xext=7.3.0-1`

Binary Packages:

- `x11proto-xext-dev=7.3.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-xext=7.3.0-1
'http://deb.debian.org/debian/pool/main/x/x11proto-xext/x11proto-xext_7.3.0-1.dsc' x11proto-xext_7.3.0-1.dsc 1997 SHA256:4b806c7f17f7dd466901111ce0862117541098025470601c251499d76affe9fc
'http://deb.debian.org/debian/pool/main/x/x11proto-xext/x11proto-xext_7.3.0.orig.tar.gz' x11proto-xext_7.3.0.orig.tar.gz 290814 SHA256:1b1bcdf91221e78c6c33738667a57bd9aaa63d5953174ad8ed9929296741c9f5
'http://deb.debian.org/debian/pool/main/x/x11proto-xext/x11proto-xext_7.3.0-1.diff.gz' x11proto-xext_7.3.0-1.diff.gz 16644 SHA256:68eec9363c7f8bcfbbaba68d6661284eb78fffccbddb293b95a6c85647cfcf6c
```

Other potentially useful URLs:

- https://sources.debian.net/src/x11proto-xext/7.3.0-1/ (for browsing the source)
- https://sources.debian.net/src/x11proto-xext/7.3.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/x11proto-xext/7.3.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xorg-sgml-doctools=1:1.11-1`

Binary Packages:

- `xorg-sgml-doctools=1:1.11-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xorg-sgml-doctools=1:1.11-1
'http://deb.debian.org/debian/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.dsc' xorg-sgml-doctools_1.11-1.dsc 1975 SHA256:1f4a12a38420b0ddab35553b9588fdf43ab39577958aed70fca435c9a747141a
'http://deb.debian.org/debian/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11.orig.tar.gz' xorg-sgml-doctools_1.11.orig.tar.gz 150367 SHA256:986326d7b4dd2ad298f61d8d41fe3929ac6191c6000d6d7e47a8ffc0c34e7426
'http://deb.debian.org/debian/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.diff.gz' xorg-sgml-doctools_1.11-1.diff.gz 3194 SHA256:18eeb355cb0efff9f47f8ed8e852eee322d9733a427419f4b39f43bc4df630c1
```

Other potentially useful URLs:

- https://sources.debian.net/src/xorg-sgml-doctools/1:1.11-1/ (for browsing the source)
- https://sources.debian.net/src/xorg-sgml-doctools/1:1.11-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xorg-sgml-doctools/1:1.11-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xorg=1:7.7+19`

Binary Packages:

- `x11-common=1:7.7+19`

Licenses: (parsed from: `/usr/share/doc/x11-common/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris xorg=1:7.7+19
'http://deb.debian.org/debian/pool/main/x/xorg/xorg_7.7+19.dsc' xorg_7.7+19.dsc 2016 SHA256:fc4a577eee67f3604c56701e21b28dccd3858da0f110b708ca3359e2718e3d46
'http://deb.debian.org/debian/pool/main/x/xorg/xorg_7.7+19.tar.gz' xorg_7.7+19.tar.gz 288723 SHA256:5de6df9e19009450b94f4f5307049bc2c7dc1114222f6f2f6fc60d737a33a537
```

Other potentially useful URLs:

- https://sources.debian.net/src/xorg/1:7.7+19/ (for browsing the source)
- https://sources.debian.net/src/xorg/1:7.7+19/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xorg/1:7.7+19/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xtrans=1.3.5-1`

Binary Packages:

- `xtrans-dev=1.3.5-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xtrans=1.3.5-1
'http://deb.debian.org/debian/pool/main/x/xtrans/xtrans_1.3.5-1.dsc' xtrans_1.3.5-1.dsc 1901 SHA256:64750bc2dd993ac93b9e0a8d6109ce72963ab22296479145eb3f392d238c2280
'http://deb.debian.org/debian/pool/main/x/xtrans/xtrans_1.3.5.orig.tar.gz' xtrans_1.3.5.orig.tar.gz 227536 SHA256:b7a577c1b6c75030145e53b4793db9c88f9359ac49e7d771d4385d21b3e5945d
'http://deb.debian.org/debian/pool/main/x/xtrans/xtrans_1.3.5-1.diff.gz' xtrans_1.3.5-1.diff.gz 16122 SHA256:2acb2c4f5958ef1bbae74ca64007d0465261a4f62bfad6ed22f1f144c0e445e1
```

Other potentially useful URLs:

- https://sources.debian.net/src/xtrans/1.3.5-1/ (for browsing the source)
- https://sources.debian.net/src/xtrans/1.3.5-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xtrans/1.3.5-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xz-utils=5.2.2-1.3`

Binary Packages:

- `liblzma-dev:amd64=5.2.2-1.3`
- `liblzma5:amd64=5.2.2-1.3`
- `xz-utils=5.2.2-1.3`

Licenses: (parsed from: `/usr/share/doc/liblzma-dev/copyright`, `/usr/share/doc/liblzma5/copyright`, `/usr/share/doc/xz-utils/copyright`)

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

### `dpkg` source package: `zlib=1:1.2.8.dfsg-5`

Binary Packages:

- `zlib1g:amd64=1:1.2.8.dfsg-5`
- `zlib1g-dev:amd64=1:1.2.8.dfsg-5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.8.dfsg-5
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.8.dfsg-5.dsc' zlib_1.2.8.dfsg-5.dsc 2259 SHA256:35ebfdbb74b3563d344b2bb946909f5d3221cdf971876549ea7ccec01fabcbec
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.8.dfsg.orig.tar.gz' zlib_1.2.8.dfsg.orig.tar.gz 361943 SHA256:2caecc2c3f1ef8b87b8f72b128a03e61c307e8c14f5ec9b422ef7914ba75cf9f
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.8.dfsg-5.debian.tar.xz' zlib_1.2.8.dfsg-5.debian.tar.xz 18500 SHA256:7b88f58d1bfe8e873b8362ede3d0bc569793decc60094189fad1a110599cdd95
```

Other potentially useful URLs:

- https://sources.debian.net/src/zlib/1:1.2.8.dfsg-5/ (for browsing the source)
- https://sources.debian.net/src/zlib/1:1.2.8.dfsg-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/zlib/1:1.2.8.dfsg-5/ (for access to the source package after it no longer exists in the archive)
