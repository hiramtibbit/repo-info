# `buildpack-deps:sid`

## Docker Metadata

- Image ID: `sha256:07317caa8d7c10ef23d90df516f72da7927f842a3054609c55fc934545cca055`
- Created: `2018-10-16T01:00:21.78647954Z`
- Virtual Size: ~ 763.87 Mb  
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

### `dpkg` source package: `apr=1.6.3-3`

Binary Packages:

- `libapr1:amd64=1.6.3-3`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.6.3-3
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.3-3.dsc' apr_1.6.3-3.dsc 2296 SHA256:3c4d3351d64619ca032268d85e7b14a607f918df41c546c12ee0a594788920b4
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.3.orig.tar.bz2' apr_1.6.3.orig.tar.bz2 854100 SHA256:131f06d16d7aabd097fa992a33eec2b6af3962f93e6d570a9bd4d85e95993172
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.3.orig.tar.bz2.asc' apr_1.6.3.orig.tar.bz2.asc 801 SHA256:33db39162f7ca9acdccaa4f19630a67045542791b262116d3512c8b5d7c3fca1
'http://deb.debian.org/debian/pool/main/a/apr/apr_1.6.3-3.debian.tar.xz' apr_1.6.3-3.debian.tar.xz 213292 SHA256:0966c89da8e186bafcd15aa65c77e153549025a1efbe1005ca9a54b77a0b7315
```

Other potentially useful URLs:

- https://sources.debian.net/src/apr/1.6.3-3/ (for browsing the source)
- https://sources.debian.net/src/apr/1.6.3-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apr/1.6.3-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apt=1.7.0`

Binary Packages:

- `apt=1.7.0`
- `libapt-pkg5.0:amd64=1.7.0`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=1.7.0
'http://deb.debian.org/debian/pool/main/a/apt/apt_1.7.0.dsc' apt_1.7.0.dsc 2759 SHA256:ef8e855b1ba78b54caa6eac0667db417f3bc78c2532f120b12552c820c36a205
'http://deb.debian.org/debian/pool/main/a/apt/apt_1.7.0.tar.xz' apt_1.7.0.tar.xz 2151720 SHA256:47a0f10227c662c55dc8c4154c7124bd467392614c394a7c186112ad1050b4b4
```

Other potentially useful URLs:

- https://sources.debian.net/src/apt/1.7.0/ (for browsing the source)
- https://sources.debian.net/src/apt/1.7.0/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apt/1.7.0/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `automake-1.16=1:1.16.1-1.1`

Binary Packages:

- `automake=1:1.16.1-1.1`

Licenses: (parsed from: `/usr/share/doc/automake/copyright`)

- `GFDL-1.3`
- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `permissive`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/automake-1.16/1:1.16.1-1.1/


### `dpkg` source package: `autotools-dev=20180224.1`

Binary Packages:

- `autotools-dev=20180224.1`

Licenses: (parsed from: `/usr/share/doc/autotools-dev/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris autotools-dev=20180224.1
'http://deb.debian.org/debian/pool/main/a/autotools-dev/autotools-dev_20180224.1.dsc' autotools-dev_20180224.1.dsc 1643 SHA256:795f558377bf6c90280c293b2711afc094cd1bf6ae486a395e1361ffd242cd2f
'http://deb.debian.org/debian/pool/main/a/autotools-dev/autotools-dev_20180224.1.tar.xz' autotools-dev_20180224.1.tar.xz 68256 SHA256:355a4d8461dfedebd2c5194603197712a10f71e20de73a35ab6e90b7acf3e837
```

Other potentially useful URLs:

- https://sources.debian.net/src/autotools-dev/20180224.1/ (for browsing the source)
- https://sources.debian.net/src/autotools-dev/20180224.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/autotools-dev/20180224.1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `binutils=2.31.1-6`

Binary Packages:

- `binutils=2.31.1-6`
- `binutils-common:amd64=2.31.1-6`
- `binutils-x86-64-linux-gnu=2.31.1-6`
- `libbinutils:amd64=2.31.1-6`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/binutils/2.31.1-6/


### `dpkg` source package: `bzip2=1.0.6-9`

Binary Packages:

- `bzip2=1.0.6-9`
- `libbz2-1.0:amd64=1.0.6-9`
- `libbz2-dev:amd64=1.0.6-9`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`, `/usr/share/doc/libbz2-dev/copyright`)

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

### `dpkg` source package: `cairo=1.15.12-1`

Binary Packages:

- `libcairo-gobject2:amd64=1.15.12-1`
- `libcairo-script-interpreter2:amd64=1.15.12-1`
- `libcairo2:amd64=1.15.12-1`
- `libcairo2-dev:amd64=1.15.12-1`

Licenses: (parsed from: `/usr/share/doc/libcairo-gobject2/copyright`, `/usr/share/doc/libcairo-script-interpreter2/copyright`, `/usr/share/doc/libcairo2/copyright`, `/usr/share/doc/libcairo2-dev/copyright`)

- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/cairo/1.15.12-1/


### `dpkg` source package: `cdebconf=0.245`

Binary Packages:

- `libdebconfclient0:amd64=0.245`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.245
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.245.dsc' cdebconf_0.245.dsc 2816 SHA256:8c130e00a065c48cf60c28ab6e86c1340dad7d4fac631c9daf10d22dc70afe7a
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.245.tar.xz' cdebconf_0.245.tar.xz 274484 SHA256:ebf41b28fd9734374ce34e89337cb1bbcf0e28bbc39bb731a4383354f3f3fba8
```

Other potentially useful URLs:

- https://sources.debian.net/src/cdebconf/0.245/ (for browsing the source)
- https://sources.debian.net/src/cdebconf/0.245/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cdebconf/0.245/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `curl=7.61.0-1`

Binary Packages:

- `curl=7.61.0-1`
- `libcurl3-gnutls:amd64=7.61.0-1`
- `libcurl4:amd64=7.61.0-1`
- `libcurl4-openssl-dev:amd64=7.61.0-1`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`, `/usr/share/doc/libcurl4/copyright`, `/usr/share/doc/libcurl4-openssl-dev/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/curl/7.61.0-1/


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

### `dpkg` source package: `dash=0.5.10.2-1`

Binary Packages:

- `dash=0.5.10.2-1`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.10.2-1
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.10.2-1.dsc' dash_0.5.10.2-1.dsc 1708 SHA256:5acbfc1afcb4722f7ff4a5d62c229fa5569cfde900aa6883180b235ba3b6e7fe
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.10.2.orig.tar.gz' dash_0.5.10.2.orig.tar.gz 225196 SHA256:3c663919dc5c66ec991da14c7cf7e0be8ad00f3db73986a987c118862b5f6071
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.10.2-1.debian.tar.xz' dash_0.5.10.2-1.debian.tar.xz 44436 SHA256:107261de1d73cdb137d947de077f840e689bd8881f086177cbbcc13c39cfcc2b
```

Other potentially useful URLs:

- https://sources.debian.net/src/dash/0.5.10.2-1/ (for browsing the source)
- https://sources.debian.net/src/dash/0.5.10.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dash/0.5.10.2-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `db5.3=5.3.28+dfsg1-0.2`

Binary Packages:

- `libdb5.3:amd64=5.3.28+dfsg1-0.2`
- `libdb5.3-dev=5.3.28+dfsg1-0.2`

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

### `dpkg` source package: `djvulibre=3.5.27.1-9`

Binary Packages:

- `libdjvulibre-dev:amd64=3.5.27.1-9`
- `libdjvulibre-text=3.5.27.1-9`
- `libdjvulibre21:amd64=3.5.27.1-9`

Licenses: (parsed from: `/usr/share/doc/libdjvulibre-dev/copyright`, `/usr/share/doc/libdjvulibre-text/copyright`, `/usr/share/doc/libdjvulibre21/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/djvulibre/3.5.27.1-9/


### `dpkg` source package: `dpkg=1.19.2`

Binary Packages:

- `dpkg=1.19.2`
- `dpkg-dev=1.19.2`
- `libdpkg-perl=1.19.2`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

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

### `dpkg` source package: `e2fsprogs=1.44.4-2`

Binary Packages:

- `comerr-dev:amd64=2.1-1.44.4-2`
- `e2fsprogs=1.44.4-2`
- `libcom-err2:amd64=1.44.4-2`
- `libext2fs2:amd64=1.44.4-2`
- `libss2:amd64=1.44.4-2`

Licenses: (parsed from: `/usr/share/doc/comerr-dev/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.44.4-2
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.44.4-2.dsc' e2fsprogs_1.44.4-2.dsc 2494 SHA256:fd92d2d786434c29b07932ca3d4e778345f022aa4221c8c4387744e5723854ac
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.44.4.orig.tar.gz' e2fsprogs_1.44.4.orig.tar.gz 7596925 SHA256:dd707688f0fc353941931c20081f26ec8e54b0bc1ac3f7601f479f9c7675dcb2
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.44.4-2.debian.tar.xz' e2fsprogs_1.44.4-2.debian.tar.xz 80640 SHA256:b72fdfbda6b96338432222d25c9be639e0d800d50533fa345f32789925282d5c
```

Other potentially useful URLs:

- https://sources.debian.net/src/e2fsprogs/1.44.4-2/ (for browsing the source)
- https://sources.debian.net/src/e2fsprogs/1.44.4-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/e2fsprogs/1.44.4-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `elfutils=0.170-0.5`

Binary Packages:

- `libelf1:amd64=0.170-0.5`

Licenses: (parsed from: `/usr/share/doc/libelf1/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-`

Source:

```console
$ apt-get source -qq --print-uris elfutils=0.170-0.5
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.170-0.5.dsc' elfutils_0.170-0.5.dsc 2326 SHA256:cbf2af3a3d8c15152082137c3a7c624358d8a8fc0309075ca35509d7da276158
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.170.orig.tar.bz2' elfutils_0.170.orig.tar.bz2 8358001 SHA256:1f844775576b79bdc9f9c717a50058d08620323c1e935458223a12f249c9e066
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.170-0.5.debian.tar.xz' elfutils_0.170-0.5.debian.tar.xz 45260 SHA256:5e4a997475d568c5bd8bd128d71a277de07e9600fa7437fe2b511ee012e31767
```

Other potentially useful URLs:

- https://sources.debian.net/src/elfutils/0.170-0.5/ (for browsing the source)
- https://sources.debian.net/src/elfutils/0.170-0.5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/elfutils/0.170-0.5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `expat=2.2.6-1`

Binary Packages:

- `libexpat1:amd64=2.2.6-1`
- `libexpat1-dev:amd64=2.2.6-1`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`, `/usr/share/doc/libexpat1-dev/copyright`)

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

### `dpkg` source package: `fftw3=3.3.8-2`

Binary Packages:

- `libfftw3-double3:amd64=3.3.8-2`

Licenses: (parsed from: `/usr/share/doc/libfftw3-double3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris fftw3=3.3.8-2
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.8-2.dsc' fftw3_3.3.8-2.dsc 2978 SHA256:b4367efbcc2bbbc44b62a9416a1c37764f5214628632553070c35893df786f68
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.8.orig.tar.gz' fftw3_3.3.8.orig.tar.gz 4110137 SHA256:6113262f6e92c5bd474f2875fa1b01054c4ad5040f6b0da7c03c98821d9ae303
'http://deb.debian.org/debian/pool/main/f/fftw3/fftw3_3.3.8-2.debian.tar.xz' fftw3_3.3.8-2.debian.tar.xz 13696 SHA256:684dede6b4124f309033d128dc7bdf1eb394984e6e8dd79e1fd5d73b95b12461
```

Other potentially useful URLs:

- https://sources.debian.net/src/fftw3/3.3.8-2/ (for browsing the source)
- https://sources.debian.net/src/fftw3/3.3.8-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fftw3/3.3.8-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `file=1:5.34-2`

Binary Packages:

- `file=1:5.34-2`
- `libmagic-mgc=1:5.34-2`
- `libmagic1:amd64=1:5.34-2`

Licenses: (parsed from: `/usr/share/doc/file/copyright`, `/usr/share/doc/libmagic-mgc/copyright`, `/usr/share/doc/libmagic1/copyright`)

- `BSD-2-Clause-alike`
- `BSD-2-Clause-netbsd`
- `BSD-2-Clause-regents`
- `MIT-Old-Style-with-legal-disclaimer-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris file=1:5.34-2
'http://deb.debian.org/debian/pool/main/f/file/file_5.34-2.dsc' file_5.34-2.dsc 1952 SHA256:b42335616c2aee92f9fb4d57dbb7ad3e14ab7a1d7202991865b804d20f714927
'http://deb.debian.org/debian/pool/main/f/file/file_5.34.orig.tar.xz' file_5.34.orig.tar.xz 645236 SHA256:b83618b2b1e269d65a28b068460add53a690e53fa11c53174df293bb04d231b2
'http://deb.debian.org/debian/pool/main/f/file/file_5.34-2.debian.tar.xz' file_5.34-2.debian.tar.xz 34204 SHA256:6e5df002611521ee541ea62acbfafa7e53384ae5702156205549f98aca8a8df7
```

Other potentially useful URLs:

- https://sources.debian.net/src/file/1:5.34-2/ (for browsing the source)
- https://sources.debian.net/src/file/1:5.34-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/file/1:5.34-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `findutils=4.6.0+git+20180808-2`

Binary Packages:

- `findutils=4.6.0+git+20180808-2`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/findutils/4.6.0+git+20180808-2/


### `dpkg` source package: `fontconfig=2.13.1-1`

Binary Packages:

- `fontconfig=2.13.1-1`
- `fontconfig-config=2.13.1-1`
- `libfontconfig1:amd64=2.13.1-1`
- `libfontconfig1-dev:amd64=2.13.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.13.1-1
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.13.1-1.dsc' fontconfig_2.13.1-1.dsc 2479 SHA256:2657b352e74710fef230764fdd390955d10a55c1208c8228704cbccea92746f7
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.13.1.orig.tar.bz2' fontconfig_2.13.1.orig.tar.bz2 1723639 SHA256:f655dd2a986d7aa97e052261b36aa67b0a64989496361eca8d604e6414006741
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.13.1-1.debian.tar.xz' fontconfig_2.13.1-1.debian.tar.xz 52104 SHA256:36965c7b70f7694453c88cffa5058dd5546dd84097e582532d650bfd046d2291
```

Other potentially useful URLs:

- https://sources.debian.net/src/fontconfig/2.13.1-1/ (for browsing the source)
- https://sources.debian.net/src/fontconfig/2.13.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fontconfig/2.13.1-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `fribidi=1.0.5-3`

Binary Packages:

- `libfribidi0:amd64=1.0.5-3`

Licenses: (parsed from: `/usr/share/doc/libfribidi0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris fribidi=1.0.5-3
'http://deb.debian.org/debian/pool/main/f/fribidi/fribidi_1.0.5-3.dsc' fribidi_1.0.5-3.dsc 1855 SHA256:b98401a1e3560ec38cda49a4f89891016e440c8dded4010108d86cdb12e0d411
'http://deb.debian.org/debian/pool/main/f/fribidi/fribidi_1.0.5.orig.tar.bz2' fribidi_1.0.5.orig.tar.bz2 2082617 SHA256:6a64f2a687f5c4f203a46fa659f43dd43d1f8b845df8d723107e8a7e6158e4ce
'http://deb.debian.org/debian/pool/main/f/fribidi/fribidi_1.0.5-3.debian.tar.xz' fribidi_1.0.5-3.debian.tar.xz 9000 SHA256:85cd449f973fa03bf2984c8e9331b0059e64f049c37496d97b0d6730bd6ad74c
```

Other potentially useful URLs:

- https://sources.debian.net/src/fribidi/1.0.5-3/ (for browsing the source)
- https://sources.debian.net/src/fribidi/1.0.5-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fribidi/1.0.5-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-8=8.2.0-7`

Binary Packages:

- `cpp-8=8.2.0-7`
- `g++-8=8.2.0-7`
- `gcc-8=8.2.0-7`
- `gcc-8-base:amd64=8.2.0-7`
- `libasan5:amd64=8.2.0-7`
- `libatomic1:amd64=8.2.0-7`
- `libcc1-0:amd64=8.2.0-7`
- `libgcc-8-dev:amd64=8.2.0-7`
- `libgcc1:amd64=1:8.2.0-7`
- `libgomp1:amd64=8.2.0-7`
- `libitm1:amd64=8.2.0-7`
- `liblsan0:amd64=8.2.0-7`
- `libmpx2:amd64=8.2.0-7`
- `libquadmath0:amd64=8.2.0-7`
- `libstdc++-8-dev:amd64=8.2.0-7`
- `libstdc++6:amd64=8.2.0-7`
- `libtsan0:amd64=8.2.0-7`
- `libubsan1:amd64=8.2.0-7`

Licenses: (parsed from: `/usr/share/doc/cpp-8/copyright`, `/usr/share/doc/g++-8/copyright`, `/usr/share/doc/gcc-8/copyright`, `/usr/share/doc/gcc-8-base/copyright`, `/usr/share/doc/libasan5/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libgcc-8-dev/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libmpx2/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++-8-dev/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan0/copyright`, `/usr/share/doc/libubsan1/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-8=8.2.0-7
'http://deb.debian.org/debian/pool/main/g/gcc-8/gcc-8_8.2.0-7.dsc' gcc-8_8.2.0-7.dsc 32392 SHA256:4ee6a894a4fc8824d0458828274fddf8797dc970678dbd24fdf92ebd1755ec07
'http://deb.debian.org/debian/pool/main/g/gcc-8/gcc-8_8.2.0.orig.tar.gz' gcc-8_8.2.0.orig.tar.gz 73307233 SHA256:45daff604ad10d15ba59665351c3be169c2ef3f4de93b11d65f646cb2c1ce7e2
'http://deb.debian.org/debian/pool/main/g/gcc-8/gcc-8_8.2.0-7.diff.gz' gcc-8_8.2.0-7.diff.gz 4171346 SHA256:d569c81543292e5866e415ce361dcb1121df5bd68030051b4921cf708dea81b8
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-8/8.2.0-7/ (for browsing the source)
- https://sources.debian.net/src/gcc-8/8.2.0-7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-8/8.2.0-7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-defaults=1.179`

Binary Packages:

- `cpp=4:8.2.0-1`
- `g++=4:8.2.0-1`
- `gcc=4:8.2.0-1`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/gcc/copyright`)

- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/gcc-defaults/1.179/


### `dpkg` source package: `gdbm=1.18-2`

Binary Packages:

- `libgdbm-compat4:amd64=1.18-2`
- `libgdbm-dev:amd64=1.18-2`
- `libgdbm6:amd64=1.18-2`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4/copyright`, `/usr/share/doc/libgdbm-dev/copyright`, `/usr/share/doc/libgdbm6/copyright`)

- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/gdbm/1.18-2/


### `dpkg` source package: `gdk-pixbuf=2.38.0+dfsg-6`

Binary Packages:

- `gir1.2-gdkpixbuf-2.0:amd64=2.38.0+dfsg-6`
- `libgdk-pixbuf2.0-0:amd64=2.38.0+dfsg-6`
- `libgdk-pixbuf2.0-bin=2.38.0+dfsg-6`
- `libgdk-pixbuf2.0-common=2.38.0+dfsg-6`
- `libgdk-pixbuf2.0-dev:amd64=2.38.0+dfsg-6`

Licenses: (parsed from: `/usr/share/doc/gir1.2-gdkpixbuf-2.0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-bin/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-common/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `MPL-1.1-or-LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris gdk-pixbuf=2.38.0+dfsg-6
'http://deb.debian.org/debian/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.38.0+dfsg-6.dsc' gdk-pixbuf_2.38.0+dfsg-6.dsc 2903 SHA256:074a11cdc4ef071c8213a2eca24865e274abb0830e5687e003aac3a01517b499
'http://deb.debian.org/debian/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.38.0+dfsg.orig.tar.xz' gdk-pixbuf_2.38.0+dfsg.orig.tar.xz 5148368 SHA256:08d9cd6e87c147cc01ec2b0b5925490386e012ea8c02a6553573a90933bdfc7d
'http://deb.debian.org/debian/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.38.0+dfsg-6.debian.tar.xz' gdk-pixbuf_2.38.0+dfsg-6.debian.tar.xz 17388 SHA256:e0fadd61649fa33a9df04306d25aa9581c01c568fb2ebc331d90eb8f28fffecb
```

Other potentially useful URLs:

- https://sources.debian.net/src/gdk-pixbuf/2.38.0+dfsg-6/ (for browsing the source)
- https://sources.debian.net/src/gdk-pixbuf/2.38.0+dfsg-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gdk-pixbuf/2.38.0+dfsg-6/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `git=1:2.19.1-1`

Binary Packages:

- `git=1:2.19.1-1`
- `git-man=1:2.19.1-1`

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
$ apt-get source -qq --print-uris git=1:2.19.1-1
'http://deb.debian.org/debian/pool/main/g/git/git_2.19.1-1.dsc' git_2.19.1-1.dsc 2888 SHA256:d932d2ff6eca8d2d0f8eab8f01b0aabc4a6b5f26321e11b48dad4b7d80f7b742
'http://deb.debian.org/debian/pool/main/g/git/git_2.19.1.orig.tar.xz' git_2.19.1.orig.tar.xz 5227908 SHA256:345056aa9b8084280b1b9fe1374d232dec05a34e8849028a20bfdb56e920dbb5
'http://deb.debian.org/debian/pool/main/g/git/git_2.19.1-1.debian.tar.xz' git_2.19.1-1.debian.tar.xz 587320 SHA256:1053cd6bb8d7e1a948e0dfddb122f97be5420bad76dddae13cca557067997857
```

Other potentially useful URLs:

- https://sources.debian.net/src/git/1:2.19.1-1/ (for browsing the source)
- https://sources.debian.net/src/git/1:2.19.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/git/1:2.19.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glib2.0=2.58.1-2`

Binary Packages:

- `libglib2.0-0:amd64=2.58.1-2`
- `libglib2.0-bin=2.58.1-2`
- `libglib2.0-data=2.58.1-2`
- `libglib2.0-dev:amd64=2.58.1-2`
- `libglib2.0-dev-bin=2.58.1-2`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`, `/usr/share/doc/libglib2.0-bin/copyright`, `/usr/share/doc/libglib2.0-data/copyright`, `/usr/share/doc/libglib2.0-dev/copyright`, `/usr/share/doc/libglib2.0-dev-bin/copyright`)

- `Expat`
- `GPL-2+`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.58.1-2
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.58.1-2.dsc' glib2.0_2.58.1-2.dsc 3258 SHA256:ba933c6e8de5d6340ac02ea2a87236c4c30fec13adf1477032ca9ace150b6b6d
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.58.1.orig.tar.xz' glib2.0_2.58.1.orig.tar.xz 4906444 SHA256:97d6a9d926b6aa3dfaadad3077cfb43eec74432ab455dff14250c769d526d7d6
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.58.1-2.debian.tar.xz' glib2.0_2.58.1-2.debian.tar.xz 76728 SHA256:a21d05f9e3b19b325d8f129fcd74ea0c566ceed4b5aabdbc9078e5db13bce944
```

Other potentially useful URLs:

- https://sources.debian.net/src/glib2.0/2.58.1-2/ (for browsing the source)
- https://sources.debian.net/src/glib2.0/2.58.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glib2.0/2.58.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glibc=2.27-6`

Binary Packages:

- `libc-bin=2.27-6`
- `libc-dev-bin=2.27-6`
- `libc6:amd64=2.27-6`
- `libc6-dev:amd64=2.27-6`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.27-6
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.27-6.dsc' glibc_2.27-6.dsc 8914 SHA256:0dc22f6d1f1bb9db3c7773ab55298a5dde557bfba3e46e4f7d44d703bd6cc973
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.27.orig.tar.xz' glibc_2.27.orig.tar.xz 15923832 SHA256:0e9826488e3ffedb4d14a426d741b7b1cf15f6973ab30762af9a188ad47633ed
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.27-6.debian.tar.xz' glibc_2.27-6.debian.tar.xz 1012668 SHA256:9c06278af9be8a477a0073588487fe8ff18b384f46fec9df42d6f36ff4720500
```

Other potentially useful URLs:

- https://sources.debian.net/src/glibc/2.27-6/ (for browsing the source)
- https://sources.debian.net/src/glibc/2.27-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glibc/2.27-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gmp=2:6.1.2+dfsg-3`

Binary Packages:

- `libgmp10:amd64=2:6.1.2+dfsg-3`

Licenses: (parsed from: `/usr/share/doc/libgmp10/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.1.2+dfsg-3
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2+dfsg-3.dsc' gmp_6.1.2+dfsg-3.dsc 2123 SHA256:1c918d2bf8a4fce98fc6bdcd752b36e1cd897114b9b9aeaf5dc661200bbcf9e2
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2+dfsg.orig.tar.xz' gmp_6.1.2+dfsg.orig.tar.xz 1804424 SHA256:18016f718f621e7641ddd4e57f8e140391c5183252e5998263ffff59198a65b7
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2+dfsg-3.debian.tar.xz' gmp_6.1.2+dfsg-3.debian.tar.xz 20824 SHA256:8c61aa9fcc1c90052c53bd723b1391acb4c9032bf90fcce27c6facfd8065bf5a
```

Other potentially useful URLs:

- https://sources.debian.net/src/gmp/2:6.1.2+dfsg-3/ (for browsing the source)
- https://sources.debian.net/src/gmp/2:6.1.2+dfsg-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gmp/2:6.1.2+dfsg-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnupg2=2.2.10-3`

Binary Packages:

- `dirmngr=2.2.10-3`
- `gnupg=2.2.10-3`
- `gnupg-l10n=2.2.10-3`
- `gnupg-utils=2.2.10-3`
- `gpg=2.2.10-3`
- `gpg-agent=2.2.10-3`
- `gpg-wks-client=2.2.10-3`
- `gpg-wks-server=2.2.10-3`
- `gpgconf=2.2.10-3`
- `gpgsm=2.2.10-3`
- `gpgv=2.2.10-3`

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
$ apt-get source -qq --print-uris gnupg2=2.2.10-3
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.10-3.dsc' gnupg2_2.2.10-3.dsc 3136 SHA256:7ad097220da84cc81821f572d8a0655b05a80267a32e95d9ad5005fac8df5346
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.10.orig.tar.bz2' gnupg2_2.2.10.orig.tar.bz2 6659484 SHA256:799dd37a86a1448732e339bd20440f4f5ee6e69755f6fd7a73ee8af30840c915
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.10.orig.tar.bz2.asc' gnupg2_2.2.10.orig.tar.bz2.asc 530 SHA256:85ef54fde7fac6ed5f7de06312d5b6bcfae70cf045ff636d28f75b6225966220
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.10-3.debian.tar.xz' gnupg2_2.2.10-3.debian.tar.xz 65040 SHA256:5a9b507fe577b8930c3d2b2bbd76d3b27a53ea7917d4af6a19ea8d0c6f67ab2d
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnupg2/2.2.10-3/ (for browsing the source)
- https://sources.debian.net/src/gnupg2/2.2.10-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnupg2/2.2.10-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnutls28=3.5.19-1`

Binary Packages:

- `libgnutls30:amd64=3.5.19-1+b1`

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
$ apt-get source -qq --print-uris gnutls28=3.5.19-1
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.5.19-1.dsc' gnutls28_3.5.19-1.dsc 3319 SHA256:2ff29427310d35523198e1c75e24128bf7abb514dd6dbb3e8f90a4b2f2b428d7
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.5.19.orig.tar.xz' gnutls28_3.5.19.orig.tar.xz 7239744 SHA256:1936eb64f03aaefd6eb16cef0567457777618573826b94d03376bb6a4afadc44
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.5.19.orig.tar.xz.asc' gnutls28_3.5.19.orig.tar.xz.asc 534 SHA256:8d46b9f0275f71d9c723523cbd9f59d245576df750cd219bc883455a9fc8cad6
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.5.19-1.debian.tar.xz' gnutls28_3.5.19-1.debian.tar.xz 60732 SHA256:3113ac77e75196fb173214d05510ff8f1dc954bc33d271a36f3cae7f31ce3e87
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnutls28/3.5.19-1/ (for browsing the source)
- https://sources.debian.net/src/gnutls28/3.5.19-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnutls28/3.5.19-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gobject-introspection=1.58.0-1`

Binary Packages:

- `gir1.2-freedesktop:amd64=1.58.0-1`
- `gir1.2-glib-2.0:amd64=1.58.0-1`
- `libgirepository-1.0-1:amd64=1.58.0-1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-freedesktop/copyright`, `/usr/share/doc/gir1.2-glib-2.0/copyright`, `/usr/share/doc/libgirepository-1.0-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris gobject-introspection=1.58.0-1
'http://deb.debian.org/debian/pool/main/g/gobject-introspection/gobject-introspection_1.58.0-1.dsc' gobject-introspection_1.58.0-1.dsc 2844 SHA256:96ffd5f06eba428637b8e7debbd92d0fdcb85f2935be646a8a4c495a11f9a7d4
'http://deb.debian.org/debian/pool/main/g/gobject-introspection/gobject-introspection_1.58.0.orig.tar.xz' gobject-introspection_1.58.0.orig.tar.xz 1370824 SHA256:27c1590a32749de0a5481ce897772547043e94bccba4bc0a7edb3d8513e401ec
'http://deb.debian.org/debian/pool/main/g/gobject-introspection/gobject-introspection_1.58.0-1.debian.tar.xz' gobject-introspection_1.58.0-1.debian.tar.xz 20884 SHA256:e263848fb37673d39000ee20635ad6204b9a8590cd2868baf5e6c96ef739f4ec
```

Other potentially useful URLs:

- https://sources.debian.net/src/gobject-introspection/1.58.0-1/ (for browsing the source)
- https://sources.debian.net/src/gobject-introspection/1.58.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gobject-introspection/1.58.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `graphite2=1.3.12-1`

Binary Packages:

- `libgraphite2-3:amd64=1.3.12-1`
- `libgraphite2-dev:amd64=1.3.12-1`

Licenses: (parsed from: `/usr/share/doc/libgraphite2-3/copyright`, `/usr/share/doc/libgraphite2-dev/copyright`)

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
$ apt-get source -qq --print-uris graphite2=1.3.12-1
'http://deb.debian.org/debian/pool/main/g/graphite2/graphite2_1.3.12-1.dsc' graphite2_1.3.12-1.dsc 2367 SHA256:21e9c60b5a4ff8b7d345bea778ab16d62a639a86e189093b59d7ff321ac6683e
'http://deb.debian.org/debian/pool/main/g/graphite2/graphite2_1.3.12.orig.tar.gz' graphite2_1.3.12.orig.tar.gz 6667278 SHA256:2b90cff3e64a37dd4f6fa4ac46c7634f8707601a8b4478f8501c74d3be774366
'http://deb.debian.org/debian/pool/main/g/graphite2/graphite2_1.3.12-1.debian.tar.xz' graphite2_1.3.12-1.debian.tar.xz 11172 SHA256:9eac98c6f2176580a1779a2463c8650d14e796ee55613f6fdf2a34f45f505a86
```

Other potentially useful URLs:

- https://sources.debian.net/src/graphite2/1.3.12-1/ (for browsing the source)
- https://sources.debian.net/src/graphite2/1.3.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/graphite2/1.3.12-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `harfbuzz=1.9.0-1`

Binary Packages:

- `gir1.2-harfbuzz-0.0:amd64=1.9.0-1`
- `libharfbuzz-dev:amd64=1.9.0-1`
- `libharfbuzz-gobject0:amd64=1.9.0-1`
- `libharfbuzz-icu0:amd64=1.9.0-1`
- `libharfbuzz0b:amd64=1.9.0-1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-harfbuzz-0.0/copyright`, `/usr/share/doc/libharfbuzz-dev/copyright`, `/usr/share/doc/libharfbuzz-gobject0/copyright`, `/usr/share/doc/libharfbuzz-icu0/copyright`, `/usr/share/doc/libharfbuzz0b/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris harfbuzz=1.9.0-1
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_1.9.0-1.dsc' harfbuzz_1.9.0-1.dsc 2295 SHA256:6833ab3c08148cd4343c21f554c985a18bd84d79a7fdd196cbc35cc943fd1a0d
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_1.9.0.orig.tar.bz2' harfbuzz_1.9.0.orig.tar.bz2 3870586 SHA256:11eca62bf0ac549b8d6be55f4e130946399939cdfe7a562fdaee711190248b00
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_1.9.0-1.debian.tar.xz' harfbuzz_1.9.0-1.debian.tar.xz 9300 SHA256:69ad6903aae658f0edd31ff9e446f9292da86b08d977538c50cf134732bcef15
```

Other potentially useful URLs:

- https://sources.debian.net/src/harfbuzz/1.9.0-1/ (for browsing the source)
- https://sources.debian.net/src/harfbuzz/1.9.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/harfbuzz/1.9.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `hicolor-icon-theme=0.17-2`

Binary Packages:

- `hicolor-icon-theme=0.17-2`

Licenses: (parsed from: `/usr/share/doc/hicolor-icon-theme/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris hicolor-icon-theme=0.17-2
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17-2.dsc' hicolor-icon-theme_0.17-2.dsc 2053 SHA256:9df02b466f82cd6fa13930bc197d001ed8ddac1abc7f8dde3db45ed1708336bd
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17.orig.tar.xz' hicolor-icon-theme_0.17.orig.tar.xz 53016 SHA256:317484352271d18cbbcfac3868eab798d67fff1b8402e740baa6ff41d588a9d8
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17-2.debian.tar.xz' hicolor-icon-theme_0.17-2.debian.tar.xz 3536 SHA256:97eec9852a2923b95bd13fc59c30fb1b9063ffd1f8a04748544d4975a84e98f2
```

Other potentially useful URLs:

- https://sources.debian.net/src/hicolor-icon-theme/0.17-2/ (for browsing the source)
- https://sources.debian.net/src/hicolor-icon-theme/0.17-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/hicolor-icon-theme/0.17-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `icu-le-hb=1.0.3+git161113-5`

Binary Packages:

- `libicu-le-hb-dev:amd64=1.0.3+git161113-5`
- `libicu-le-hb0:amd64=1.0.3+git161113-5`

Licenses: (parsed from: `/usr/share/doc/libicu-le-hb-dev/copyright`, `/usr/share/doc/libicu-le-hb0/copyright`)

- `GPL-3`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris icu-le-hb=1.0.3+git161113-5
'http://deb.debian.org/debian/pool/main/i/icu-le-hb/icu-le-hb_1.0.3+git161113-5.dsc' icu-le-hb_1.0.3+git161113-5.dsc 1929 SHA256:fe48ef7cb4253be35b480fc25ec31c10f9e8e1f546ba106c589cde1f20ab9679
'http://deb.debian.org/debian/pool/main/i/icu-le-hb/icu-le-hb_1.0.3+git161113.orig.tar.xz' icu-le-hb_1.0.3+git161113.orig.tar.xz 31460 SHA256:777cdb6fecedb6400cab85894a8407bb70771e38a0e99b837ccf9e4a55f8578c
'http://deb.debian.org/debian/pool/main/i/icu-le-hb/icu-le-hb_1.0.3+git161113-5.debian.tar.xz' icu-le-hb_1.0.3+git161113-5.debian.tar.xz 3212 SHA256:385660d1bd8d331893b00f93bb925fc5488289aa5c8b2eedf0c4ce9732d965e9
```

Other potentially useful URLs:

- https://sources.debian.net/src/icu-le-hb/1.0.3+git161113-5/ (for browsing the source)
- https://sources.debian.net/src/icu-le-hb/1.0.3+git161113-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/icu-le-hb/1.0.3+git161113-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `icu=60.2-6`

Binary Packages:

- `icu-devtools=60.2-6`
- `libicu-dev=60.2-6`
- `libicu60:amd64=60.2-6`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris icu=60.2-6
'http://deb.debian.org/debian/pool/main/i/icu/icu_60.2-6.dsc' icu_60.2-6.dsc 1983 SHA256:3630931a5e153a75ff1e29e202f1c416db9c9e3434b82d91333d6ba66cd6076a
'http://deb.debian.org/debian/pool/main/i/icu/icu_60.2.orig.tar.gz' icu_60.2.orig.tar.gz 23315541 SHA256:a8c2ddbdf2be01c7ddcfded837afe46362e1069ea6093f66816b2d1caa8272ae
'http://deb.debian.org/debian/pool/main/i/icu/icu_60.2-6.debian.tar.xz' icu_60.2-6.debian.tar.xz 27080 SHA256:0ce2a064a592678e7b4887cbd0a2d86d5ff5e0497fbb2c94d57475f737780ce7
```

Other potentially useful URLs:

- https://sources.debian.net/src/icu/60.2-6/ (for browsing the source)
- https://sources.debian.net/src/icu/60.2-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/icu/60.2-6/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `imagemagick=8:6.9.10.8+dfsg-1`

Binary Packages:

- `imagemagick=8:6.9.10.8+dfsg-1`
- `imagemagick-6-common=8:6.9.10.8+dfsg-1`
- `imagemagick-6.q16=8:6.9.10.8+dfsg-1`
- `libmagickcore-6-arch-config:amd64=8:6.9.10.8+dfsg-1`
- `libmagickcore-6-headers=8:6.9.10.8+dfsg-1`
- `libmagickcore-6.q16-6:amd64=8:6.9.10.8+dfsg-1`
- `libmagickcore-6.q16-6-extra:amd64=8:6.9.10.8+dfsg-1`
- `libmagickcore-6.q16-dev:amd64=8:6.9.10.8+dfsg-1`
- `libmagickcore-dev=8:6.9.10.8+dfsg-1`
- `libmagickwand-6-headers=8:6.9.10.8+dfsg-1`
- `libmagickwand-6.q16-6:amd64=8:6.9.10.8+dfsg-1`
- `libmagickwand-6.q16-dev:amd64=8:6.9.10.8+dfsg-1`
- `libmagickwand-dev=8:6.9.10.8+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/imagemagick/copyright`, `/usr/share/doc/imagemagick-6-common/copyright`, `/usr/share/doc/imagemagick-6.q16/copyright`, `/usr/share/doc/libmagickcore-6-arch-config/copyright`, `/usr/share/doc/libmagickcore-6-headers/copyright`, `/usr/share/doc/libmagickcore-6.q16-6/copyright`, `/usr/share/doc/libmagickcore-6.q16-6-extra/copyright`, `/usr/share/doc/libmagickcore-6.q16-dev/copyright`, `/usr/share/doc/libmagickcore-dev/copyright`, `/usr/share/doc/libmagickwand-6-headers/copyright`, `/usr/share/doc/libmagickwand-6.q16-6/copyright`, `/usr/share/doc/libmagickwand-6.q16-dev/copyright`, `/usr/share/doc/libmagickwand-dev/copyright`)

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
- `Imagemagick`
- `LGPL-3`
- `LGPL-3+`
- `Magick++`
- `Makefile-in`
- `Perllikelicence`
- `TatcherUlrichPublicDomain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/imagemagick/8:6.9.10.8+dfsg-1/


### `dpkg` source package: `init-system-helpers=1.54`

Binary Packages:

- `init-system-helpers=1.54`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/init-system-helpers/1.54/


### `dpkg` source package: `iproute2=4.18.0-2`

Binary Packages:

- `iproute2=4.18.0-2`

Licenses: (parsed from: `/usr/share/doc/iproute2/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris iproute2=4.18.0-2
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.18.0-2.dsc' iproute2_4.18.0-2.dsc 1884 SHA256:c91b269cc33330df547351f90483738fd7132830fe0350f2fddf9fd7c9b811b7
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.18.0.orig.tar.xz' iproute2_4.18.0.orig.tar.xz 692868 SHA256:a9e6c70c95f513871c5e1f4e452c04fcb3c4d8a05be651bd794cd994a52daa45
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.18.0-2.debian.tar.xz' iproute2_4.18.0-2.debian.tar.xz 143956 SHA256:aef0ec3a8721f3278113694952634deb1d6465c59f4880a8840a76e7aa17a53f
```

Other potentially useful URLs:

- https://sources.debian.net/src/iproute2/4.18.0-2/ (for browsing the source)
- https://sources.debian.net/src/iproute2/4.18.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/iproute2/4.18.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `iptables=1.6.2-1.1`

Binary Packages:

- `libxtables12:amd64=1.6.2-1.1`

Licenses: (parsed from: `/usr/share/doc/libxtables12/copyright`)

- `Artistic-2`
- `GPL-2`
- `GPL-2+`
- `custom`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/iptables/1.6.2-1.1/


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

### `dpkg` source package: `isl=0.20-2`

Binary Packages:

- `libisl19:amd64=0.20-2`

Licenses: (parsed from: `/usr/share/doc/libisl19/copyright`)

- `BSD-2-clause`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.20-2
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.20-2.dsc' isl_0.20-2.dsc 1842 SHA256:466b881ac0207f9430ae21069e644f17a6e4428544f9802284727381e5d26089
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.20.orig.tar.xz' isl_0.20.orig.tar.xz 1539064 SHA256:a5596a9fb8a5b365cb612e4b9628735d6e67e9178fae134a816ae195017e77aa
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.20-2.debian.tar.xz' isl_0.20-2.debian.tar.xz 23512 SHA256:ea2b467fea2395ca08f236f520fcc37e50a1c91cad471a9ee89443bfae8f50af
```

Other potentially useful URLs:

- https://sources.debian.net/src/isl/0.20-2/ (for browsing the source)
- https://sources.debian.net/src/isl/0.20-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/isl/0.20-2/ (for access to the source package after it no longer exists in the archive)

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

- `krb5-multidev:amd64=1.16.1-1`
- `libgssapi-krb5-2:amd64=1.16.1-1`
- `libgssrpc4:amd64=1.16.1-1`
- `libk5crypto3:amd64=1.16.1-1`
- `libkadm5clnt-mit11:amd64=1.16.1-1`
- `libkadm5srv-mit11:amd64=1.16.1-1`
- `libkdb5-9:amd64=1.16.1-1`
- `libkrb5-3:amd64=1.16.1-1`
- `libkrb5-dev:amd64=1.16.1-1`
- `libkrb5support0:amd64=1.16.1-1`

Licenses: (parsed from: `/usr/share/doc/krb5-multidev/copyright`, `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libgssrpc4/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkadm5clnt-mit11/copyright`, `/usr/share/doc/libkadm5srv-mit11/copyright`, `/usr/share/doc/libkdb5-9/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5-dev/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

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

### `dpkg` source package: `lcms2=2.9-3`

Binary Packages:

- `liblcms2-2:amd64=2.9-3`
- `liblcms2-dev:amd64=2.9-3`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`, `/usr/share/doc/liblcms2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris lcms2=2.9-3
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.9-3.dsc' lcms2_2.9-3.dsc 1956 SHA256:2529e211246393053d2f1567f067f9983facf086185b582a56d10ecf04f9ca80
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.9.orig.tar.gz' lcms2_2.9.orig.tar.gz 10974649 SHA256:48c6fdf98396fa245ed86e622028caf49b96fa22f3e5734f853f806fbc8e7d20
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.9-3.debian.tar.xz' lcms2_2.9-3.debian.tar.xz 10580 SHA256:5916773a94edbfac06c36c95d8c6b7e8dc304cecb91897f84575f51f22663744
```

Other potentially useful URLs:

- https://sources.debian.net/src/lcms2/2.9-3/ (for browsing the source)
- https://sources.debian.net/src/lcms2/2.9-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lcms2/2.9-3/ (for access to the source package after it no longer exists in the archive)

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

- `libcap-ng0:amd64=0.7.9-1`

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

### `dpkg` source package: `libdatrie=0.2.12-1`

Binary Packages:

- `libdatrie1:amd64=0.2.12-1`

Licenses: (parsed from: `/usr/share/doc/libdatrie1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libdatrie=0.2.12-1
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.12-1.dsc' libdatrie_0.2.12-1.dsc 2256 SHA256:e6468419bfe179dd8b810d60c71700b14e72dc30bedde0a69e86c10792bfa842
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.12.orig.tar.xz' libdatrie_0.2.12.orig.tar.xz 310236 SHA256:452dcc4d3a96c01f80f7c291b42be11863cd1554ff78b93e110becce6e00b149
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.12-1.debian.tar.xz' libdatrie_0.2.12-1.debian.tar.xz 8828 SHA256:6554937768ce2f851733791a9d1b8b82463b0e5c070055fcebe5312b9b3fa3b9
```

Other potentially useful URLs:

- https://sources.debian.net/src/libdatrie/0.2.12-1/ (for browsing the source)
- https://sources.debian.net/src/libdatrie/0.2.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libdatrie/0.2.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libedit=3.1-20180525-1`

Binary Packages:

- `libedit2:amd64=3.1-20180525-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20180525-1
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20180525-1.dsc' libedit_3.1-20180525-1.dsc 2219 SHA256:0680d068bbbad63ddbaaded2ea713f6807eec601715f7ddabbe9fb4b7aed5b9b
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20180525.orig.tar.gz' libedit_3.1-20180525.orig.tar.gz 521999 SHA256:c41bea8fd140fb57ba67a98ec1d8ae0b8ffa82f4aba9c35a87e5a9499e653116
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20180525-1.debian.tar.bz2' libedit_3.1-20180525-1.debian.tar.bz2 11444 SHA256:2bd107dbd9aff59d28314a55bbb74edbfd1eb969450223ca87127203ab001454
```

Other potentially useful URLs:

- https://sources.debian.net/src/libedit/3.1-20180525-1/ (for browsing the source)
- https://sources.debian.net/src/libedit/3.1-20180525-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libedit/3.1-20180525-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `liberror-perl=0.17026-1`

Binary Packages:

- `liberror-perl=0.17026-1`

Licenses: (parsed from: `/usr/share/doc/liberror-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`
- `MIT/X11`

Source:

```console
$ apt-get source -qq --print-uris liberror-perl=0.17026-1
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17026-1.dsc' liberror-perl_0.17026-1.dsc 2209 SHA256:6fe4e58ee63353bc35ad95bd7642f3c0ca07248221a69bcedb36a1592a4f285e
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17026.orig.tar.gz' liberror-perl_0.17026.orig.tar.gz 32988 SHA256:37590a962cd73ae03470e1ff16459a6cbc5273fc57626b8981dab9c2433155d9
'http://deb.debian.org/debian/pool/main/libe/liberror-perl/liberror-perl_0.17026-1.debian.tar.xz' liberror-perl_0.17026-1.debian.tar.xz 4216 SHA256:45583961ac80fb63b8766b3c7d4157a9bb424e0cf25bc407b290b06f402324b4
```

Other potentially useful URLs:

- https://sources.debian.net/src/liberror-perl/0.17026-1/ (for browsing the source)
- https://sources.debian.net/src/liberror-perl/0.17026-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/liberror-perl/0.17026-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libexif=0.6.21-5`

Binary Packages:

- `libexif-dev:amd64=0.6.21-5`
- `libexif12:amd64=0.6.21-5`

Licenses: (parsed from: `/usr/share/doc/libexif-dev/copyright`, `/usr/share/doc/libexif12/copyright`)

- `BSD-2-Clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libexif=0.6.21-5
'http://deb.debian.org/debian/pool/main/libe/libexif/libexif_0.6.21-5.dsc' libexif_0.6.21-5.dsc 2109 SHA256:62b058c17bea79ac98be42760a6cbbbfc71fbf38b1ec54e30295be9b9f073208
'http://deb.debian.org/debian/pool/main/libe/libexif/libexif_0.6.21.orig.tar.gz' libexif_0.6.21.orig.tar.gz 2081615 SHA256:edb7eb13664cf950a6edd132b75e99afe61c5effe2f16494e6d27bc404b287bf
'http://deb.debian.org/debian/pool/main/libe/libexif/libexif_0.6.21-5.debian.tar.xz' libexif_0.6.21-5.debian.tar.xz 11268 SHA256:9965a4dc30db0e1643ff5c3b221637901cdf6a0809463489d3680ecfc2614ba5
```

Other potentially useful URLs:

- https://sources.debian.net/src/libexif/0.6.21-5/ (for browsing the source)
- https://sources.debian.net/src/libexif/0.6.21-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libexif/0.6.21-5/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libgcrypt20=1.8.3-1`

Binary Packages:

- `libgcrypt20:amd64=1.8.3-1`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.8.3-1
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.3-1.dsc' libgcrypt20_1.8.3-1.dsc 2863 SHA256:5ee11668e4deca5092c6f853a1ee82e8796415bd394cc63be429496640aa3b58
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.3.orig.tar.bz2' libgcrypt20_1.8.3.orig.tar.bz2 2989166 SHA256:66ec90be036747602f2b48f98312361a9180c97c68a690a5f376fa0f67d0af7c
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.3.orig.tar.bz2.asc' libgcrypt20_1.8.3.orig.tar.bz2.asc 534 SHA256:f3e70e2988f223dc2ac70ff51323fd8a99a5e32b9cc24ef193d347892c559f2c
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.3-1.debian.tar.xz' libgcrypt20_1.8.3-1.debian.tar.xz 28816 SHA256:46d0cf2e42621b8a9eee67d6f2249ea8efea33daa5a2411d15adca5cc4042933
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgcrypt20/1.8.3-1/ (for browsing the source)
- https://sources.debian.net/src/libgcrypt20/1.8.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgcrypt20/1.8.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgpg-error=1.32-1`

Binary Packages:

- `libgpg-error0:amd64=1.32-1`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libgpg-error/1.32-1/


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

### `dpkg` source package: `libpng1.6=1.6.34-2`

Binary Packages:

- `libpng-dev:amd64=1.6.34-2`
- `libpng16-16:amd64=1.6.34-2`

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
$ apt-get source -qq --print-uris libpng1.6=1.6.34-2
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.34-2.dsc' libpng1.6_1.6.34-2.dsc 2194 SHA256:b4d875fa27ce7a682ec0a5b078d71d1353b745e8b12a79af21e7478538ffbb87
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.34.orig.tar.xz' libpng1.6_1.6.34.orig.tar.xz 997968 SHA256:2f1e960d92ce3b3abd03d06dfec9637dfbd22febf107a536b44f7a47c60659f6
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.34-2.debian.tar.xz' libpng1.6_1.6.34-2.debian.tar.xz 24036 SHA256:f722a0cbd93b2a37d9d7471e36a82996a1c86f23bb9f646bb88caac2f87660ec
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpng1.6/1.6.34-2/ (for browsing the source)
- https://sources.debian.net/src/libpng1.6/1.6.34-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpng1.6/1.6.34-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpsl=0.20.2-1`

Binary Packages:

- `libpsl5:amd64=0.20.2-1`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libpsl/0.20.2-1/


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

### `dpkg` source package: `librsvg=2.40.20-3`

Binary Packages:

- `gir1.2-rsvg-2.0:amd64=2.40.20-3`
- `librsvg2-2:amd64=2.40.20-3`
- `librsvg2-common:amd64=2.40.20-3`
- `librsvg2-dev:amd64=2.40.20-3`

Licenses: (parsed from: `/usr/share/doc/gir1.2-rsvg-2.0/copyright`, `/usr/share/doc/librsvg2-2/copyright`, `/usr/share/doc/librsvg2-common/copyright`, `/usr/share/doc/librsvg2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris librsvg=2.40.20-3
'http://deb.debian.org/debian/pool/main/libr/librsvg/librsvg_2.40.20-3.dsc' librsvg_2.40.20-3.dsc 2717 SHA256:642b63082780ceef4a28e995a311cfb3afd61127927e45a0664254904cdb33ba
'http://deb.debian.org/debian/pool/main/libr/librsvg/librsvg_2.40.20.orig.tar.xz' librsvg_2.40.20.orig.tar.xz 1796376 SHA256:cff4dd3c3b78bfe99d8fcfad3b8ba1eee3289a0823c0e118d78106be6b84c92b
'http://deb.debian.org/debian/pool/main/libr/librsvg/librsvg_2.40.20-3.debian.tar.xz' librsvg_2.40.20-3.debian.tar.xz 17080 SHA256:32cfd3fe9c9a67460f986277c5408903cfaf1d506ac1575f237f1227c7336717
```

Other potentially useful URLs:

- https://sources.debian.net/src/librsvg/2.40.20-3/ (for browsing the source)
- https://sources.debian.net/src/librsvg/2.40.20-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/librsvg/2.40.20-3/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libsigsegv=2.12-2`

Binary Packages:

- `libsigsegv2:amd64=2.12-2`

Licenses: (parsed from: `/usr/share/doc/libsigsegv2/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-2+ with Autoconf exception`
- `permissive-fsf`
- `permissive-other`

Source:

```console
$ apt-get source -qq --print-uris libsigsegv=2.12-2
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.12-2.dsc' libsigsegv_2.12-2.dsc 2363 SHA256:b081b244de2f427345838f379405d8438c29db1fa746a4e270167ae7cb10c079
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.12.orig.tar.gz' libsigsegv_2.12.orig.tar.gz 451408 SHA256:3ae1af359eebaa4ffc5896a1aee3568c052c99879316a1ab57f8fe1789c390b6
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.12.orig.tar.gz.asc' libsigsegv_2.12.orig.tar.gz.asc 2442 SHA256:1861a9a182bbb7a24a18f7e43fe0fa3eb6f6fd53780b30e01990677112694dfc
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.12-2.debian.tar.xz' libsigsegv_2.12-2.debian.tar.xz 8340 SHA256:73940fb346f7afd90c93a341164cd175349e0507de8b1c05b0834b598c372260
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsigsegv/2.12-2/ (for browsing the source)
- https://sources.debian.net/src/libsigsegv/2.12-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsigsegv/2.12-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libthai=0.1.28-1`

Binary Packages:

- `libthai-data=0.1.28-1`
- `libthai0:amd64=0.1.28-1`

Licenses: (parsed from: `/usr/share/doc/libthai-data/copyright`, `/usr/share/doc/libthai0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libthai=0.1.28-1
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.28-1.dsc' libthai_0.1.28-1.dsc 2342 SHA256:c6cda401d87299cc9ac11a57306e513615d858ed5d0da535c412c107ebe1620e
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.28.orig.tar.xz' libthai_0.1.28.orig.tar.xz 413592 SHA256:ffe0a17b4b5aa11b153c15986800eca19f6c93a4025ffa5cf2cab2dcdf1ae911
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.28-1.debian.tar.xz' libthai_0.1.28-1.debian.tar.xz 11808 SHA256:05e1105c22e61d35252cfdaeab0ec99df85266b82e8d2610f06a822e533b37e2
```

Other potentially useful URLs:

- https://sources.debian.net/src/libthai/0.1.28-1/ (for browsing the source)
- https://sources.debian.net/src/libthai/0.1.28-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libthai/0.1.28-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtool=2.4.6-6`

Binary Packages:

- `libltdl-dev:amd64=2.4.6-6`
- `libltdl7:amd64=2.4.6-6`
- `libtool=2.4.6-6`

Licenses: (parsed from: `/usr/share/doc/libltdl-dev/copyright`, `/usr/share/doc/libltdl7/copyright`, `/usr/share/doc/libtool/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libtool=2.4.6-6
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6-6.dsc' libtool_2.4.6-6.dsc 2360 SHA256:874d7ae1c2e86b1ed9f535bf5c2bb0b1182f9b00cb954777437b878b29960888
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz' libtool_2.4.6.orig.tar.xz 973080 SHA256:7c87a8c2c8c0fc9cd5019e402bed4292462d00a718a7cd5f11218153bf28b26f
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz.asc' libtool_2.4.6.orig.tar.xz.asc 380 SHA256:ab68ebc45d60128a71fc36167cd29dcf3c3d6d639fd28663905ebaf3e2f43d6a
'http://deb.debian.org/debian/pool/main/libt/libtool/libtool_2.4.6-6.debian.tar.xz' libtool_2.4.6-6.debian.tar.xz 48108 SHA256:082850884a93f7cd84d253eac097164f7bd0e93e10522e5e8e006ddf37af53c1
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtool/2.4.6-6/ (for browsing the source)
- https://sources.debian.net/src/libtool/2.4.6-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtool/2.4.6-6/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libwebp=0.6.1-2`

Binary Packages:

- `libwebp-dev:amd64=0.6.1-2`
- `libwebp6:amd64=0.6.1-2`
- `libwebpdemux2:amd64=0.6.1-2`
- `libwebpmux3:amd64=0.6.1-2`

Licenses: (parsed from: `/usr/share/doc/libwebp-dev/copyright`, `/usr/share/doc/libwebp6/copyright`, `/usr/share/doc/libwebpdemux2/copyright`, `/usr/share/doc/libwebpmux3/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris libwebp=0.6.1-2
'http://deb.debian.org/debian/pool/main/libw/libwebp/libwebp_0.6.1-2.dsc' libwebp_0.6.1-2.dsc 2064 SHA256:321ee69e44f0d037d5fec47692251e35ed22c9ad0bbf0a6bf0fae990a52319f4
'http://deb.debian.org/debian/pool/main/libw/libwebp/libwebp_0.6.1.orig.tar.gz' libwebp_0.6.1.orig.tar.gz 3554290 SHA256:a86045e3ec24704bddbaa369ca30980d6bf4f2625f4cdca03715e91f9c08bbb4
'http://deb.debian.org/debian/pool/main/libw/libwebp/libwebp_0.6.1-2.debian.tar.xz' libwebp_0.6.1-2.debian.tar.xz 9532 SHA256:5af543e277abb97f6b2c72ca0d7ce95de79108d88da383d511ef729683fa7a45
```

Other potentially useful URLs:

- https://sources.debian.net/src/libwebp/0.6.1-2/ (for browsing the source)
- https://sources.debian.net/src/libwebp/0.6.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libwebp/0.6.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libwmf=0.2.8.4-12`

Binary Packages:

- `libwmf-dev=0.2.8.4-12`
- `libwmf0.2-7:amd64=0.2.8.4-12`

Licenses: (parsed from: `/usr/share/doc/libwmf-dev/copyright`, `/usr/share/doc/libwmf0.2-7/copyright`)

- `LGPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libwmf/0.2.8.4-12/


### `dpkg` source package: `libx11=2:1.6.7-1`

Binary Packages:

- `libx11-6:amd64=2:1.6.7-1`
- `libx11-data=2:1.6.7-1`
- `libx11-dev:amd64=2:1.6.7-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.6.7-1
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.7-1.dsc' libx11_1.6.7-1.dsc 2619 SHA256:ca544ccaf4b4bf08b96ca6f3c096d3b189f437cfd5cba8edb72e75cf050f56c6
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.7.orig.tar.gz' libx11_1.6.7.orig.tar.gz 2972354 SHA256:f62ab88c2a87b55e1dc338726a55bb6ed8048084fe6a3294a7ae324ca45159d1
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.7.orig.tar.gz.asc' libx11_1.6.7.orig.tar.gz.asc 404 SHA256:01a06afbe0574a30721d98f1c80b668ebc46410a9e8b2eb81e69b4bd8667c386
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.7-1.diff.gz' libx11_1.6.7-1.diff.gz 49222 SHA256:8215096d47c997b9591daa837fcd7d3970b6a9524dca889d2a1316f9f1dc59ad
```

Other potentially useful URLs:

- https://sources.debian.net/src/libx11/2:1.6.7-1/ (for browsing the source)
- https://sources.debian.net/src/libx11/2:1.6.7-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libx11/2:1.6.7-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libxcb=1.13.1-1`

Binary Packages:

- `libxcb-render0:amd64=1.13.1-1`
- `libxcb-render0-dev:amd64=1.13.1-1`
- `libxcb-shm0:amd64=1.13.1-1`
- `libxcb-shm0-dev:amd64=1.13.1-1`
- `libxcb1:amd64=1.13.1-1`
- `libxcb1-dev:amd64=1.13.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.13.1-1
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.13.1-1.dsc' libxcb_1.13.1-1.dsc 5343 SHA256:b9304d936953bda0b43aacfe750ed42f57445bacb834fcd3c2fbb7991c5baaa2
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.13.1.orig.tar.gz' libxcb_1.13.1.orig.tar.gz 636748 SHA256:f09a76971437780a602303170fd51b5f7474051722bc39d566a272d2c4bde1b5
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.13.1-1.diff.gz' libxcb_1.13.1-1.diff.gz 25316 SHA256:9c7734125a0b42eb861c7664d982bdb63692da80c1f9f1b20c6a66aa657c485d
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxcb/1.13.1-1/ (for browsing the source)
- https://sources.debian.net/src/libxcb/1.13.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcb/1.13.1-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libxml2=2.9.4+dfsg1-7`

Binary Packages:

- `libxml2:amd64=2.9.4+dfsg1-7+b1`
- `libxml2-dev:amd64=2.9.4+dfsg1-7+b1`

Licenses: (parsed from: `/usr/share/doc/libxml2/copyright`, `/usr/share/doc/libxml2-dev/copyright`)

- `ISC`
- `MIT-1`

Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.4+dfsg1-7
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1-7.dsc' libxml2_2.9.4+dfsg1-7.dsc 2976 SHA256:fc4d4be13a37b03f68862afcaccbac997f6044620cbba747bb836d4bd65bed75
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1.orig.tar.xz' libxml2_2.9.4+dfsg1.orig.tar.xz 2446412 SHA256:a74ad55e346aa0b2b41903e66d21f8f3d2a736b3f41e32496376861ab484184e
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1-7.debian.tar.xz' libxml2_2.9.4+dfsg1-7.debian.tar.xz 36168 SHA256:403a560713d0ff32672dce6090193632c92008977dd68d88f42f8b20fb2f5601
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxml2/2.9.4+dfsg1-7/ (for browsing the source)
- https://sources.debian.net/src/libxml2/2.9.4+dfsg1-7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxml2/2.9.4+dfsg1-7/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libxslt=1.1.32-2`

Binary Packages:

- `libxslt1-dev:amd64=1.1.32-2`
- `libxslt1.1:amd64=1.1.32-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxslt=1.1.32-2
'http://deb.debian.org/debian/pool/main/libx/libxslt/libxslt_1.1.32-2.dsc' libxslt_1.1.32-2.dsc 2586 SHA256:a35844605bc638c0912c711f4663775799b3a913a3ef6638da380df6e66ced35
'http://deb.debian.org/debian/pool/main/libx/libxslt/libxslt_1.1.32.orig.tar.gz' libxslt_1.1.32.orig.tar.gz 3440715 SHA256:526ecd0abaf4a7789041622c3950c0e7f2c4c8835471515fd77eec684a355460
'http://deb.debian.org/debian/pool/main/libx/libxslt/libxslt_1.1.32.orig.tar.gz.asc' libxslt_1.1.32.orig.tar.gz.asc 455 SHA256:68b374a73747c57a17d62f0ccc1e9714f68a292e700fe4c88e3c2d9dcba71871
'http://deb.debian.org/debian/pool/main/libx/libxslt/libxslt_1.1.32-2.debian.tar.xz' libxslt_1.1.32-2.debian.tar.xz 31932 SHA256:225b0d740e26813428a2c782a41a83ec47fe9a22ac1afbcacff74ed6dd5539f6
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxslt/1.1.32-2/ (for browsing the source)
- https://sources.debian.net/src/libxslt/1.1.32-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxslt/1.1.32-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libyaml=0.2.1-1`

Binary Packages:

- `libyaml-0-2:amd64=0.2.1-1`
- `libyaml-dev:amd64=0.2.1-1`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`, `/usr/share/doc/libyaml-dev/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.2.1-1
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.2.1-1.dsc' libyaml_0.2.1-1.dsc 1811 SHA256:916c8c0b5cdb7fce89fba618fa6b9ff9050d2647806b892dc8154668f8222361
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.2.1.orig.tar.gz' libyaml_0.2.1.orig.tar.gz 601443 SHA256:3ad5c55ec2cf72770e173d973d4120099ba0dec4d074097a488fa79de08304de
'http://deb.debian.org/debian/pool/main/liby/libyaml/libyaml_0.2.1-1.debian.tar.xz' libyaml_0.2.1-1.debian.tar.xz 4108 SHA256:4d6bedd7703ad9f43b9173fbd822f31b20d4c41f374257d6839b004f9742f152
```

Other potentially useful URLs:

- https://sources.debian.net/src/libyaml/0.2.1-1/ (for browsing the source)
- https://sources.debian.net/src/libyaml/0.2.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libyaml/0.2.1-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `linux=4.18.10-2`

Binary Packages:

- `linux-libc-dev:amd64=4.18.10-2`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `CRYPTOGAMS`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `Unicode-data`
- `X11`
- `Xen-interface`

Source:

```console
$ apt-get source -qq --print-uris linux=4.18.10-2
'http://deb.debian.org/debian/pool/main/l/linux/linux_4.18.10-2.dsc' linux_4.18.10-2.dsc 150947 SHA256:40a31cbca6308ee89114d3a3f33e1102f8a2d6e94350c5c39e41bff5bec8d0c9
'http://deb.debian.org/debian/pool/main/l/linux/linux_4.18.10.orig.tar.xz' linux_4.18.10.orig.tar.xz 105940724 SHA256:b1f8f559d3432a6045154b5e451e1b0fd4d0ddb0d95305f45e80d015f19dbe38
'http://deb.debian.org/debian/pool/main/l/linux/linux_4.18.10-2.debian.tar.xz' linux_4.18.10-2.debian.tar.xz 2660960 SHA256:a6ff2c03a092087a723dcc930dbfe8c34ee82af78385e293454fb255b434d8d7
```

Other potentially useful URLs:

- https://sources.debian.net/src/linux/4.18.10-2/ (for browsing the source)
- https://sources.debian.net/src/linux/4.18.10-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/linux/4.18.10-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `lzo2=2.10-0.1`

Binary Packages:

- `liblzo2-2:amd64=2.10-0.1`

Licenses: (parsed from: `/usr/share/doc/liblzo2-2/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lzo2=2.10-0.1
'http://deb.debian.org/debian/pool/main/l/lzo2/lzo2_2.10-0.1.dsc' lzo2_2.10-0.1.dsc 1869 SHA256:49cdf2efab29d7dd8a907730a37c2c5ca312d9c2150f8e37663838b122856aff
'http://deb.debian.org/debian/pool/main/l/lzo2/lzo2_2.10.orig.tar.gz' lzo2_2.10.orig.tar.gz 600622 SHA256:c0f892943208266f9b6543b3ae308fab6284c5c90e627931446fb49b4221a072
'http://deb.debian.org/debian/pool/main/l/lzo2/lzo2_2.10-0.1.debian.tar.xz' lzo2_2.10-0.1.debian.tar.xz 6032 SHA256:0d57d800afc09a44180cb323f4c5d77e9a5f29c1ba53a3ebdd5ec225b2d44723
```

Other potentially useful URLs:

- https://sources.debian.net/src/lzo2/2.10-0.1/ (for browsing the source)
- https://sources.debian.net/src/lzo2/2.10-0.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lzo2/2.10-0.1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `make-dfsg=4.2.1-1.2`

Binary Packages:

- `make=4.2.1-1.2`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.2.1-1.2
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.2.1-1.2.dsc' make-dfsg_4.2.1-1.2.dsc 2019 SHA256:0c8a2da5d51e03bf43e2929322d5a8406f08e5ee2d81a71ed6e5a8734f1b05cb
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.2.1.orig.tar.gz' make-dfsg_4.2.1.orig.tar.gz 1485018 SHA256:480405e8995796ea47cc54b281b7855280f0d815d296a1af1993eeeb72074e39
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.2.1-1.2.diff.gz' make-dfsg_4.2.1-1.2.diff.gz 53108 SHA256:80e0b96cee381391a5d3322317075e23d8474c92c5fa4fecd334bc2e0920887b
```

Other potentially useful URLs:

- https://sources.debian.net/src/make-dfsg/4.2.1-1.2/ (for browsing the source)
- https://sources.debian.net/src/make-dfsg/4.2.1-1.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/make-dfsg/4.2.1-1.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mariadb-10.1=1:10.1.35-1`

Binary Packages:

- `libmariadbclient-dev=1:10.1.35-1`
- `libmariadbclient-dev-compat:amd64=1:10.1.35-1`
- `libmariadbclient18:amd64=1:10.1.35-1`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/mariadb-10.1/1:10.1.35-1/


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

### `dpkg` source package: `mercurial=4.7.2-1`

Binary Packages:

- `mercurial=4.7.2-1`
- `mercurial-common=4.7.2-1`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris mercurial=4.7.2-1
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_4.7.2-1.dsc' mercurial_4.7.2-1.dsc 2625 SHA256:40b5c365c82aeb86b0cdbfdd30838311224e590bac21f6aa191d5b7b01617a31
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_4.7.2.orig.tar.gz' mercurial_4.7.2.orig.tar.gz 6481684 SHA256:97f0594216f2348a2e37b2ad8a56eade044e741153fee8c584487e9934ca09fb
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_4.7.2.orig.tar.gz.asc' mercurial_4.7.2.orig.tar.gz.asc 833 SHA256:9d67c6d9b5006a5073078c16e4d424e26b3d08db86ec2f58759d21db50412861
'http://deb.debian.org/debian/pool/main/m/mercurial/mercurial_4.7.2-1.debian.tar.xz' mercurial_4.7.2-1.debian.tar.xz 61764 SHA256:17040960e304cebd6905c7afc847c4d3b444543cf9256f375c7ea8b64c77f775
```

Other potentially useful URLs:

- https://sources.debian.net/src/mercurial/4.7.2-1/ (for browsing the source)
- https://sources.debian.net/src/mercurial/4.7.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mercurial/4.7.2-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `mpdecimal=2.4.2-2`

Binary Packages:

- `libmpdec2:amd64=2.4.2-2`

Licenses: (parsed from: `/usr/share/doc/libmpdec2/copyright`)

- `BSD`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mpdecimal=2.4.2-2
'http://deb.debian.org/debian/pool/main/m/mpdecimal/mpdecimal_2.4.2-2.dsc' mpdecimal_2.4.2-2.dsc 1932 SHA256:716e61fc8315a22804adf8403e4d332c1883235b5c3801b6769e6040dc962fe3
'http://deb.debian.org/debian/pool/main/m/mpdecimal/mpdecimal_2.4.2.orig.tar.gz' mpdecimal_2.4.2.orig.tar.gz 2271529 SHA256:83c628b90f009470981cf084c5418329c88b19835d8af3691b930afccb7d79c7
'http://deb.debian.org/debian/pool/main/m/mpdecimal/mpdecimal_2.4.2-2.debian.tar.xz' mpdecimal_2.4.2-2.debian.tar.xz 5256 SHA256:159113f11169afc675a431840792e1ed8c2d00438bf3e1c5a3eb2c17d9e8da3d
```

Other potentially useful URLs:

- https://sources.debian.net/src/mpdecimal/2.4.2-2/ (for browsing the source)
- https://sources.debian.net/src/mpdecimal/2.4.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpdecimal/2.4.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mpfr4=4.0.1-1`

Binary Packages:

- `libmpfr6:amd64=4.0.1-1`

Licenses: (parsed from: `/usr/share/doc/libmpfr6/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=4.0.1-1
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_4.0.1-1.dsc' mpfr4_4.0.1-1.dsc 1972 SHA256:85d8dad92d3f9ace96ac78b2f4ec00eafef228fa53e0344ae4255fc4d3f75626
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_4.0.1.orig.tar.xz' mpfr4_4.0.1.orig.tar.xz 1412692 SHA256:67874a60826303ee2fb6affc6dc0ddd3e749e9bfcb4c8655e3953d0458a6e16e
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_4.0.1-1.debian.tar.xz' mpfr4_4.0.1-1.debian.tar.xz 10460 SHA256:9e0d582dea7e88958b8bc1f3782ada59b9c7175f01b4e06e8487fc6cbfc5a2d7
```

Other potentially useful URLs:

- https://sources.debian.net/src/mpfr4/4.0.1-1/ (for browsing the source)
- https://sources.debian.net/src/mpfr4/4.0.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpfr4/4.0.1-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `ncurses=6.1+20180714-1`

Binary Packages:

- `libncurses-dev:amd64=6.1+20180714-1`
- `libncurses5-dev:amd64=6.1+20180714-1`
- `libncurses6:amd64=6.1+20180714-1`
- `libncursesw5-dev:amd64=6.1+20180714-1`
- `libncursesw6:amd64=6.1+20180714-1`
- `libtinfo6:amd64=6.1+20180714-1`
- `ncurses-base=6.1+20180714-1`
- `ncurses-bin=6.1+20180714-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=6.1+20180714-1
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.1+20180714-1.dsc' ncurses_6.1+20180714-1.dsc 4147 SHA256:d4ee01fcada6e29bba632598e517fff5c48329c4191712f07311e3a21d36d4b9
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.1+20180714.orig.tar.gz' ncurses_6.1+20180714.orig.tar.gz 3400860 SHA256:8e2d9ab51c54d5a5b78ca6d8e63200646202e91b152d9ea8ddbce86e6a32796d
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.1+20180714.orig.tar.gz.asc' ncurses_6.1+20180714.orig.tar.gz.asc 251 SHA256:682fbba42d188d489b1cd457cce1285f0d9356fe8c45fdcd6e1c45e81e22d352
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.1+20180714-1.debian.tar.xz' ncurses_6.1+20180714-1.debian.tar.xz 59968 SHA256:4160bcdae8e616c584317ae46ec8053709a4e640f9620621644f986c1b7e402f
```

Other potentially useful URLs:

- https://sources.debian.net/src/ncurses/6.1+20180714-1/ (for browsing the source)
- https://sources.debian.net/src/ncurses/6.1+20180714-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ncurses/6.1+20180714-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `nghttp2=1.34.0-1`

Binary Packages:

- `libnghttp2-14:amd64=1.34.0-1`

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
$ apt-get source -qq --print-uris nghttp2=1.34.0-1
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.34.0-1.dsc' nghttp2_1.34.0-1.dsc 2560 SHA256:db032bc0289f23395ed0051e7d6bb6cf10936107114830653a3b301a0dc556be
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.34.0.orig.tar.bz2' nghttp2_1.34.0.orig.tar.bz2 1890648 SHA256:7475e5f2686ce5ea8e58f6de689b123531c9154394f470c73da98fd3508eb9d0
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.34.0-1.debian.tar.xz' nghttp2_1.34.0-1.debian.tar.xz 12480 SHA256:32d10e40f647eccce3976d78aa81e6b8afa0b2e0fd6394daa4f58089b1218fed
```

Other potentially useful URLs:

- https://sources.debian.net/src/nghttp2/1.34.0-1/ (for browsing the source)
- https://sources.debian.net/src/nghttp2/1.34.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nghttp2/1.34.0-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `openexr=2.2.1-4`

Binary Packages:

- `libopenexr-dev=2.2.1-4`
- `libopenexr23:amd64=2.2.1-4`

Licenses: (parsed from: `/usr/share/doc/libopenexr-dev/copyright`, `/usr/share/doc/libopenexr23/copyright`)

- `openexr`

Source:

```console
$ apt-get source -qq --print-uris openexr=2.2.1-4
'http://deb.debian.org/debian/pool/main/o/openexr/openexr_2.2.1-4.dsc' openexr_2.2.1-4.dsc 2417 SHA256:f79326d6896273dbf652ade6c400f3b427b9b6b04df10f5a94206af7a3b63433
'http://deb.debian.org/debian/pool/main/o/openexr/openexr_2.2.1.orig.tar.gz' openexr_2.2.1.orig.tar.gz 18176639 SHA256:8f9a5af6131583404261931d9a5c83de0a425cb4b8b25ddab2b169fbf113aecd
'http://deb.debian.org/debian/pool/main/o/openexr/openexr_2.2.1-4.debian.tar.xz' openexr_2.2.1-4.debian.tar.xz 17692 SHA256:e7e68ee637c245b33eb873836cf0726d6d4a004ab00c2eb436a57c522e13ab39
```

Other potentially useful URLs:

- https://sources.debian.net/src/openexr/2.2.1-4/ (for browsing the source)
- https://sources.debian.net/src/openexr/2.2.1-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openexr/2.2.1-4/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `openldap=2.4.46+dfsg-5`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.46+dfsg-5`
- `libldap-common=2.4.46+dfsg-5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.46+dfsg-5
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.46+dfsg-5.dsc' openldap_2.4.46+dfsg-5.dsc 2711 SHA256:61354bc5ee694d39ad1046deb2aa3145cb52945ad6a0b26ce2837a0e2096a2af
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.46+dfsg.orig.tar.gz' openldap_2.4.46+dfsg.orig.tar.gz 4873832 SHA256:e93cb511f6bce162c27502d0d240e6410a8f14e72c47ddddb4e69b25b7c538e4
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.46+dfsg-5.debian.tar.xz' openldap_2.4.46+dfsg-5.debian.tar.xz 163000 SHA256:f07814e83627de02011f175d698e104bdd369b070d0a65f5db2a007c35a58232
```

Other potentially useful URLs:

- https://sources.debian.net/src/openldap/2.4.46+dfsg-5/ (for browsing the source)
- https://sources.debian.net/src/openldap/2.4.46+dfsg-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openldap/2.4.46+dfsg-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openssh=1:7.8p1-1`

Binary Packages:

- `openssh-client=1:7.8p1-1`

Licenses: (parsed from: `/usr/share/doc/openssh-client/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Beer-ware`
- `Expat-with-advertising-restriction`
- `Mazieres-BSD-style`
- `OpenSSH`
- `Powell-BSD-style`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/openssh/1:7.8p1-1/


### `dpkg` source package: `openssl1.0=1.0.2o-1`

Binary Packages:

- `libssl1.0.2:amd64=1.0.2o-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl1.0=1.0.2o-1
'http://deb.debian.org/debian/pool/main/o/openssl1.0/openssl1.0_1.0.2o-1.dsc' openssl1.0_1.0.2o-1.dsc 2529 SHA256:2539e065ea0c6eb9e8c0c5e6f0464c9cc0c45c6e4d565297564463ab37a5f978
'http://deb.debian.org/debian/pool/main/o/openssl1.0/openssl1.0_1.0.2o.orig.tar.gz' openssl1.0_1.0.2o.orig.tar.gz 5329472 SHA256:ec3f5c9714ba0fd45cb4e087301eb1336c317e0d20b575a125050470e8089e4d
'http://deb.debian.org/debian/pool/main/o/openssl1.0/openssl1.0_1.0.2o.orig.tar.gz.asc' openssl1.0_1.0.2o.orig.tar.gz.asc 455 SHA256:81321834f1809ecd52a624e68c4021b74aa453474ad8c7aaa56c58c1d4f20223
'http://deb.debian.org/debian/pool/main/o/openssl1.0/openssl1.0_1.0.2o-1.debian.tar.xz' openssl1.0_1.0.2o-1.debian.tar.xz 76764 SHA256:b4e0cc0186febfedd06859a71bf3ac24151fed0c8506d3e71634658b82b4948e
```

Other potentially useful URLs:

- https://sources.debian.net/src/openssl1.0/1.0.2o-1/ (for browsing the source)
- https://sources.debian.net/src/openssl1.0/1.0.2o-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openssl1.0/1.0.2o-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openssl=1.1.1-1`

Binary Packages:

- `libssl-dev:amd64=1.1.1-1`
- `libssl1.1:amd64=1.1.1-1`
- `openssl=1.1.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/openssl/1.1.1-1/


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

### `dpkg` source package: `pango1.0=1.42.4-3`

Binary Packages:

- `libpango-1.0-0:amd64=1.42.4-3`
- `libpangocairo-1.0-0:amd64=1.42.4-3`
- `libpangoft2-1.0-0:amd64=1.42.4-3`

Licenses: (parsed from: `/usr/share/doc/libpango-1.0-0/copyright`, `/usr/share/doc/libpangocairo-1.0-0/copyright`, `/usr/share/doc/libpangoft2-1.0-0/copyright`)

- `Example`
- `ICU`
- `LGPL-2`
- `LGPL-2+`
- `TCL`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris pango1.0=1.42.4-3
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.42.4-3.dsc' pango1.0_1.42.4-3.dsc 3253 SHA256:b78be9f1e8c6bd3e1f5d1955a51af8b3867abba863b0534bd6a9594c3faf4a87
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.42.4.orig.tar.xz' pango1.0_1.42.4.orig.tar.xz 833876 SHA256:1d2b74cd63e8bd41961f2f8d952355aa0f9be6002b52c8aa7699d9f5da597c9d
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.42.4-3.debian.tar.xz' pango1.0_1.42.4-3.debian.tar.xz 29748 SHA256:886833ac2f266d4384f02319cb517500739119842d59cbfbfd63f9ee1b3430ff
```

Other potentially useful URLs:

- https://sources.debian.net/src/pango1.0/1.42.4-3/ (for browsing the source)
- https://sources.debian.net/src/pango1.0/1.42.4-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pango1.0/1.42.4-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `patch=2.7.6-3`

Binary Packages:

- `patch=2.7.6-3`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris patch=2.7.6-3
'http://deb.debian.org/debian/pool/main/p/patch/patch_2.7.6-3.dsc' patch_2.7.6-3.dsc 1699 SHA256:c84154893834d07a13a760f9be4e7c8fbced41bdb1157db1140c880a90a7c72a
'http://deb.debian.org/debian/pool/main/p/patch/patch_2.7.6.orig.tar.xz' patch_2.7.6.orig.tar.xz 783756 SHA256:ac610bda97abe0d9f6b7c963255a11dcb196c25e337c61f94e4778d632f1d8fd
'http://deb.debian.org/debian/pool/main/p/patch/patch_2.7.6-3.debian.tar.xz' patch_2.7.6-3.debian.tar.xz 10608 SHA256:f48c3001906a954b3ea0ff1a6ad347172f1e3453620377d7f1427b62474b047b
```

Other potentially useful URLs:

- https://sources.debian.net/src/patch/2.7.6-3/ (for browsing the source)
- https://sources.debian.net/src/patch/2.7.6-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/patch/2.7.6-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pcre2=10.31-3`

Binary Packages:

- `libpcre2-8-0:amd64=10.31-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/pcre2/10.31-3/


### `dpkg` source package: `pcre3=2:8.39-11`

Binary Packages:

- `libpcre16-3:amd64=2:8.39-11`
- `libpcre3:amd64=2:8.39-11`
- `libpcre3-dev:amd64=2:8.39-11`
- `libpcre32-3:amd64=2:8.39-11`
- `libpcrecpp0v5:amd64=2:8.39-11`

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

### `dpkg` source package: `perl=5.26.2-7`

Binary Packages:

- `libperl5.26:amd64=5.26.2-7+b1`
- `perl=5.26.2-7+b1`
- `perl-base=5.26.2-7+b1`
- `perl-modules-5.26=5.26.2-7`

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
$ apt-get source -qq --print-uris perl=5.26.2-7
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.26.2-7.dsc' perl_5.26.2-7.dsc 2780 SHA256:5c385bc8c8d6ad08e1ed2942ba4e71dd684b81b744a219d0843b3d60dd50657d
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.26.2.orig-regen-configure.tar.gz' perl_5.26.2.orig-regen-configure.tar.gz 712883 SHA256:918f054a64b2835bc1c6ed79c1e082e7dcdb76735a95b54ee39c25ea9e245ca4
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.26.2.orig.tar.xz' perl_5.26.2.orig.tar.xz 11931624 SHA256:0f8c0fb1b0db4681adb75c3ba0dd77a0472b1b359b9e80efd79fc27b4352132c
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.26.2-7.debian.tar.xz' perl_5.26.2-7.debian.tar.xz 167472 SHA256:84223fbd68d617a2bf3734ebe622b381c74d435aec67c5e17cf60ecb5af6ecb1
```

Other potentially useful URLs:

- https://sources.debian.net/src/perl/5.26.2-7/ (for browsing the source)
- https://sources.debian.net/src/perl/5.26.2-7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/perl/5.26.2-7/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `postgresql-11=11~rc1-1`

Binary Packages:

- `libpq-dev=11~rc1-1`
- `libpq5:amd64=11~rc1-1`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/postgresql-11/11~rc1-1/


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

### `dpkg` source package: `python2.7=2.7.15-4`

Binary Packages:

- `libpython2.7-minimal:amd64=2.7.15-4`
- `libpython2.7-stdlib:amd64=2.7.15-4`
- `python2.7=2.7.15-4`
- `python2.7-minimal=2.7.15-4`

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
$ apt-get source -qq --print-uris python2.7=2.7.15-4
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.15-4.dsc' python2.7_2.7.15-4.dsc 3357 SHA256:86c6621118d37dcb4a9e10b98ea9a26d91309247dac6e356ad4a847bfc3a8975
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.15.orig.tar.gz' python2.7_2.7.15.orig.tar.gz 17496336 SHA256:18617d1f15a380a919d517630a9cd85ce17ea602f9bbdc58ddc672df4b0239db
'http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.15-4.diff.gz' python2.7_2.7.15-4.diff.gz 483036 SHA256:05ca1a74c8172f890e7dcfe920212b125b345b1d60c97ad5cbf0fd4ac28d0d7b
```

Other potentially useful URLs:

- https://sources.debian.net/src/python2.7/2.7.15-4/ (for browsing the source)
- https://sources.debian.net/src/python2.7/2.7.15-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/python2.7/2.7.15-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `python3-defaults=3.6.6-1`

Binary Packages:

- `libpython3-stdlib:amd64=3.6.6-1`
- `python3=3.6.6-1`
- `python3-minimal=3.6.6-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/python3-defaults/3.6.6-1/


### `dpkg` source package: `python3-stdlib-extensions=3.6.6-1`

Binary Packages:

- `python3-distutils=3.6.6-1`
- `python3-lib2to3=3.6.6-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/python3-stdlib-extensions/3.6.6-1/


### `dpkg` source package: `python3.6=3.6.7~rc2-1`

Binary Packages:

- `libpython3.6-minimal:amd64=3.6.7~rc2-1`
- `libpython3.6-stdlib:amd64=3.6.7~rc2-1`
- `python3.6=3.6.7~rc2-1`
- `python3.6-minimal=3.6.7~rc2-1`

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

- http://snapshot.debian.org/package/python3.6/3.6.7~rc2-1/


### `dpkg` source package: `readline=7.0-5`

Binary Packages:

- `libreadline-dev:amd64=7.0-5`
- `libreadline7:amd64=7.0-5`
- `readline-common=7.0-5`

Licenses: (parsed from: `/usr/share/doc/libreadline-dev/copyright`, `/usr/share/doc/libreadline7/copyright`, `/usr/share/doc/readline-common/copyright`)

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

### `dpkg` source package: `sed=4.5-1`

Binary Packages:

- `sed=4.5-1`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/sed/4.5-1/


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

### `dpkg` source package: `serf=1.3.9-6`

Binary Packages:

- `libserf-1-1:amd64=1.3.9-6`

Licenses: (parsed from: `/usr/share/doc/libserf-1-1/copyright`)

- `Apache`
- `Apache-2.0`
- `Zlib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/serf/1.3.9-6/


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

### `dpkg` source package: `shared-mime-info=1.10-1`

Binary Packages:

- `shared-mime-info=1.10-1`

Licenses: (parsed from: `/usr/share/doc/shared-mime-info/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris shared-mime-info=1.10-1
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_1.10-1.dsc' shared-mime-info_1.10-1.dsc 2197 SHA256:49efdf90a3b97a58fbe8a5b241f721d89d43f03ad52dc8254a4642f12a20d641
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_1.10.orig.tar.xz' shared-mime-info_1.10.orig.tar.xz 616800 SHA256:c625a83b4838befc8cafcd54e3619946515d9e44d63d61c4adf7f5513ddfbebf
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_1.10-1.debian.tar.xz' shared-mime-info_1.10-1.debian.tar.xz 10020 SHA256:7b78639aeac9ba261bcccd572739c2cac813541a7ae7799e8e56de0df693295d
```

Other potentially useful URLs:

- https://sources.debian.net/src/shared-mime-info/1.10-1/ (for browsing the source)
- https://sources.debian.net/src/shared-mime-info/1.10-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/shared-mime-info/1.10-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sqlite3=3.25.2-1`

Binary Packages:

- `libsqlite3-0:amd64=3.25.2-1`
- `libsqlite3-dev:amd64=3.25.2-1`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`, `/usr/share/doc/libsqlite3-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.25.2-1
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.25.2-1.dsc' sqlite3_3.25.2-1.dsc 2397 SHA256:45eef7df971bce359b667486fd69cbd0e568bc202e45efb1a25c837367b70095
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.25.2.orig-www.tar.xz' sqlite3_3.25.2.orig-www.tar.xz 5510212 SHA256:08631c80a2598f35f1598703b0e7df7610dd4d7e592473cf9cdc39218dda48a3
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.25.2.orig.tar.xz' sqlite3_3.25.2.orig.tar.xz 6314420 SHA256:fa690863e75d2ba5db7f1c70108e33d351ea5d62899bf7b9ee43ba478933d7ef
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.25.2-1.debian.tar.xz' sqlite3_3.25.2-1.debian.tar.xz 17608 SHA256:e63a55f3432cc98e6d92a21becc8dabb2df77e0d3fccb51ce23b995d916caafc
```

Other potentially useful URLs:

- https://sources.debian.net/src/sqlite3/3.25.2-1/ (for browsing the source)
- https://sources.debian.net/src/sqlite3/3.25.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sqlite3/3.25.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `subversion=1.10.2-1`

Binary Packages:

- `libsvn1:amd64=1.10.2-1`
- `subversion=1.10.2-1`

Licenses: (parsed from: `/usr/share/doc/libsvn1/copyright`, `/usr/share/doc/subversion/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/subversion/1.10.2-1/


### `dpkg` source package: `systemd=239-10`

Binary Packages:

- `libsystemd0:amd64=239-10`
- `libudev1:amd64=239-10`

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

- http://snapshot.debian.org/package/systemd/239-10/


### `dpkg` source package: `sysvinit=2.88dsf-59.10`

Binary Packages:

- `sysvinit-utils=2.88dsf-59.10`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/sysvinit/2.88dsf-59.10/


### `dpkg` source package: `tar=1.30+dfsg-2`

Binary Packages:

- `tar=1.30+dfsg-2`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.30+dfsg-2
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.30+dfsg-2.dsc' tar_1.30+dfsg-2.dsc 1951 SHA256:e06cc08da7db7e8a546a946c23d89042cf86c9e8ae3a5c2c4e0d585ad6f2039f
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.30+dfsg.orig.tar.xz' tar_1.30+dfsg.orig.tar.xz 1883220 SHA256:c02f3747ffe02017878303dde8b78e79cd220364c5e8048cf92320232e38912d
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.30+dfsg-2.debian.tar.xz' tar_1.30+dfsg-2.debian.tar.xz 17384 SHA256:7799136a18d6735463d421f5b48df900cd51ee7e89e3e6acc6c401bd903e4231
```

Other potentially useful URLs:

- https://sources.debian.net/src/tar/1.30+dfsg-2/ (for browsing the source)
- https://sources.debian.net/src/tar/1.30+dfsg-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tar/1.30+dfsg-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tiff=4.0.9-6`

Binary Packages:

- `libtiff-dev=4.0.9-6`
- `libtiff5:amd64=4.0.9-6`
- `libtiff5-dev:amd64=4.0.9-6`
- `libtiffxx5:amd64=4.0.9-6`

Licenses: (parsed from: `/usr/share/doc/libtiff-dev/copyright`, `/usr/share/doc/libtiff5/copyright`, `/usr/share/doc/libtiff5-dev/copyright`, `/usr/share/doc/libtiffxx5/copyright`)

- `Hylafax`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/tiff/4.0.9-6/


### `dpkg` source package: `tzdata=2018e-1`

Binary Packages:

- `tzdata=2018e-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/tzdata/2018e-1/


### `dpkg` source package: `ucf=3.0038`

Binary Packages:

- `ucf=3.0038`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0038
'http://deb.debian.org/debian/pool/main/u/ucf/ucf_3.0038.dsc' ucf_3.0038.dsc 1445 SHA256:5fab6d0af664eac92b3404c6bb62d0a3ceb88cd21a1462b9a262d1292c77328f
'http://deb.debian.org/debian/pool/main/u/ucf/ucf_3.0038.tar.xz' ucf_3.0038.tar.xz 65416 SHA256:262ccd52637c869ac851838a176d76e90db8d3f12373e3b62eb89e217f93fe7e
```

Other potentially useful URLs:

- https://sources.debian.net/src/ucf/3.0038/ (for browsing the source)
- https://sources.debian.net/src/ucf/3.0038/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ucf/3.0038/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `util-linux=2.32.1-0.1`

Binary Packages:

- `bsdutils=1:2.32.1-0.1`
- `fdisk=2.32.1-0.1`
- `libblkid1:amd64=2.32.1-0.1`
- `libfdisk1:amd64=2.32.1-0.1`
- `libmount1:amd64=2.32.1-0.1`
- `libsmartcols1:amd64=2.32.1-0.1`
- `libuuid1:amd64=2.32.1-0.1`
- `mount=2.32.1-0.1`
- `util-linux=2.32.1-0.1`
- `uuid-dev:amd64=2.32.1-0.1`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/fdisk/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libfdisk1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`, `/usr/share/doc/uuid-dev/copyright`)

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
$ apt-get source -qq --print-uris util-linux=2.32.1-0.1
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.32.1-0.1.dsc' util-linux_2.32.1-0.1.dsc 4056 SHA256:a8a5e6b6e299ccdf262bc8966e8f7bc943194900aef5495b038d987458bd27d4
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.32.1.orig.tar.xz' util-linux_2.32.1.orig.tar.xz 4561088 SHA256:86e6707a379c7ff5489c218cfaf1e3464b0b95acf7817db0bc5f179e356a67b2
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.32.1-0.1.debian.tar.xz' util-linux_2.32.1-0.1.debian.tar.xz 82140 SHA256:dc787b94bbbef1ea0c8c1f647754312818d8b6b80cbc6ecad7b97ffedfb79804
```

Other potentially useful URLs:

- https://sources.debian.net/src/util-linux/2.32.1-0.1/ (for browsing the source)
- https://sources.debian.net/src/util-linux/2.32.1-0.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/util-linux/2.32.1-0.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `wget=1.19.5-2`

Binary Packages:

- `wget=1.19.5-2`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.19.5-2
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.19.5-2.dsc' wget_1.19.5-2.dsc 2167 SHA256:950a051129ef0a62bb4ec25cca6f501a64a135a08d5b9846ff42e44f3a98560e
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.19.5.orig.tar.gz' wget_1.19.5.orig.tar.gz 4455797 SHA256:b39212abe1a73f2b28f4c6cb223c738559caac91d6e416a6d91d4b9d55c9faee
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.19.5.orig.tar.gz.asc' wget_1.19.5.orig.tar.gz.asc 879 SHA256:f2058db1f155fc5564de797d11dc40f5fa721f35e36e02bf06332771db150ef7
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.19.5-2.debian.tar.xz' wget_1.19.5-2.debian.tar.xz 61220 SHA256:fd73848daf25da5306c6269c5dee9939a2daabe1aba959b3699297c182fb5385
```

Other potentially useful URLs:

- https://sources.debian.net/src/wget/1.19.5-2/ (for browsing the source)
- https://sources.debian.net/src/wget/1.19.5-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/wget/1.19.5-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `xorgproto=2018.4-4`

Binary Packages:

- `x11proto-core-dev=2018.4-4`
- `x11proto-dev=2018.4-4`
- `x11proto-xext-dev=2018.4-4`

Licenses: (parsed from: `/usr/share/doc/x11proto-core-dev/copyright`, `/usr/share/doc/x11proto-dev/copyright`, `/usr/share/doc/x11proto-xext-dev/copyright`)

- `MIT`
- `SGI`

Source:

```console
$ apt-get source -qq --print-uris xorgproto=2018.4-4
'http://deb.debian.org/debian/pool/main/x/xorgproto/xorgproto_2018.4-4.dsc' xorgproto_2018.4-4.dsc 4059 SHA256:6279a145ce040d9301a0e2efdf203dd7d2822bc9a90e94de08d545c4b724d8e3
'http://deb.debian.org/debian/pool/main/x/xorgproto/xorgproto_2018.4.orig.tar.gz' xorgproto_2018.4.orig.tar.gz 493597 SHA256:8e48d851efea0e951bcb6cf0d537f84ba3803de95e488bd039fe59fc75ec8f7d
'http://deb.debian.org/debian/pool/main/x/xorgproto/xorgproto_2018.4.orig.tar.gz.asc' xorgproto_2018.4.orig.tar.gz.asc 241 SHA256:3ab131cf8f497d315043b2c791912c22045da557e6894f1e5db533a0b0baed2f
'http://deb.debian.org/debian/pool/main/x/xorgproto/xorgproto_2018.4-4.diff.gz' xorgproto_2018.4-4.diff.gz 20976 SHA256:a9b27658c7c9e53372679bbb26099abed6cb9215355a99995858164de3fa5048
```

Other potentially useful URLs:

- https://sources.debian.net/src/xorgproto/2018.4-4/ (for browsing the source)
- https://sources.debian.net/src/xorgproto/2018.4-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xorgproto/2018.4-4/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `zlib=1:1.2.11.dfsg-1`

Binary Packages:

- `zlib1g:amd64=1:1.2.11.dfsg-1`
- `zlib1g-dev:amd64=1:1.2.11.dfsg-1`

Licenses: (parsed from: `/usr/share/doc/zlib1g/copyright`, `/usr/share/doc/zlib1g-dev/copyright`)

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
