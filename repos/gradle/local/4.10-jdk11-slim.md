# `gradle:4.10.2-jdk11-slim`

## Docker Metadata

- Image ID: `sha256:05e3f76638a931498cec0e1c50ee23cf68d3524d4b8bb80be340a78796f9f816`
- Created: `2018-10-04T20:46:09.835586696Z`
- Virtual Size: ~ 599.62 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["gradle"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `LANG=C.UTF-8`
  - `JAVA_HOME=/docker-java-home`
  - `JAVA_VERSION=11`
  - `JAVA_DEBIAN_VERSION=11~28-3`
  - `GRADLE_HOME=/opt/gradle`
  - `GRADLE_VERSION=4.10.2`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/adduser/3.117/


### `dpkg` source package: `alsa-lib=1.1.6-1`

Binary Packages:

- `libasound2:amd64=1.1.6-1`
- `libasound2-data=1.1.6-1`

Licenses: (parsed from: `/usr/share/doc/libasound2/copyright`, `/usr/share/doc/libasound2-data/copyright`)

- `LGPL-2.1`
- `LPGL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris alsa-lib=1.1.6-1
'http://deb.debian.org/debian/pool/main/a/alsa-lib/alsa-lib_1.1.6-1.dsc' alsa-lib_1.1.6-1.dsc 2460 SHA256:4a79043a56d9191188e87cc331469a3529bfe8d5cfb582fe0eee4b9950ecc883
'http://deb.debian.org/debian/pool/main/a/alsa-lib/alsa-lib_1.1.6.orig.tar.bz2' alsa-lib_1.1.6.orig.tar.bz2 989316 SHA256:5f2cd274b272cae0d0d111e8a9e363f08783329157e8dd68b3de0c096de6d724
'http://deb.debian.org/debian/pool/main/a/alsa-lib/alsa-lib_1.1.6-1.debian.tar.xz' alsa-lib_1.1.6-1.debian.tar.xz 133160 SHA256:e0bf56438f8eb3fe8e39d7e23b947786aed7e0dd56f983b93adcb97404b39b3b
```

Other potentially useful URLs:

- https://sources.debian.net/src/alsa-lib/1.1.6-1/ (for browsing the source)
- https://sources.debian.net/src/alsa-lib/1.1.6-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/alsa-lib/1.1.6-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apt=1.6.4`

Binary Packages:

- `apt=1.6.4`
- `libapt-pkg5.0:amd64=1.6.4`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/apt/1.6.4/


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

### `dpkg` source package: `audit=1:2.8.4-1`

Binary Packages:

- `libaudit-common=1:2.8.4-1`
- `libaudit1:amd64=1:2.8.4-1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/audit/1:2.8.4-1/


### `dpkg` source package: `avahi=0.7-4`

Binary Packages:

- `libavahi-client3:amd64=0.7-4`
- `libavahi-common-data:amd64=0.7-4`
- `libavahi-common3:amd64=0.7-4`

Licenses: (parsed from: `/usr/share/doc/libavahi-client3/copyright`, `/usr/share/doc/libavahi-common-data/copyright`, `/usr/share/doc/libavahi-common3/copyright`)

- `GPL`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris avahi=0.7-4
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.7-4.dsc' avahi_0.7-4.dsc 3888 SHA256:22b467d4f5872b744eb62d7e6b022429672c6fa64488dc0af8bc5a19188732cd
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.7.orig.tar.gz' avahi_0.7.orig.tar.gz 1333400 SHA256:57a99b5dfe7fdae794e3d1ee7a62973a368e91e414bd0dfa5d84434de5b14804
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.7-4.debian.tar.xz' avahi_0.7-4.debian.tar.xz 31756 SHA256:46414437ef2cbdb7d9a02f8b49da5e61980dec1c838a6bf62acd0d6e762b838e
```

Other potentially useful URLs:

- https://sources.debian.net/src/avahi/0.7-4/ (for browsing the source)
- https://sources.debian.net/src/avahi/0.7-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/avahi/0.7-4/ (for access to the source package after it no longer exists in the archive)

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

- `bzip2=1.0.6-9`
- `libbz2-1.0:amd64=1.0.6-9`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`)

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

### `dpkg` source package: `ca-certificates-java=20180516`

Binary Packages:

- `ca-certificates-java=20180516`

Licenses: (parsed from: `/usr/share/doc/ca-certificates-java/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates-java=20180516
'http://deb.debian.org/debian/pool/main/c/ca-certificates-java/ca-certificates-java_20180516.dsc' ca-certificates-java_20180516.dsc 1790 SHA256:df3919ee1a7bc7429ac8161a19744dfd003a838166fd2c26db459359ae8846af
'http://deb.debian.org/debian/pool/main/c/ca-certificates-java/ca-certificates-java_20180516.tar.xz' ca-certificates-java_20180516.tar.xz 16736 SHA256:32f43156ca40f8eca693895224c9effe74b251f2ce371a6de2e5eb097db1308e
```

Other potentially useful URLs:

- https://sources.debian.net/src/ca-certificates-java/20180516/ (for browsing the source)
- https://sources.debian.net/src/ca-certificates-java/20180516/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ca-certificates-java/20180516/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `cdebconf=0.244`

Binary Packages:

- `libdebconfclient0:amd64=0.244`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/cdebconf/0.244/


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

### `dpkg` source package: `cups=2.2.8-5`

Binary Packages:

- `libcups2:amd64=2.2.8-5`

Licenses: (parsed from: `/usr/share/doc/libcups2/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2.0 with AOSDL exception`
- `LGPL-2`
- `LGPL-2.0 with AOSDL exception`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris cups=2.2.8-5
'http://deb.debian.org/debian/pool/main/c/cups/cups_2.2.8-5.dsc' cups_2.2.8-5.dsc 3467 SHA256:2f27b624cd965f100906ea5bba0abea9cc9daadbfef42bbeab021b8ffd184ce6
'http://deb.debian.org/debian/pool/main/c/cups/cups_2.2.8.orig.tar.gz' cups_2.2.8.orig.tar.gz 10374921 SHA256:3968fc1d26fc48727508db1c1380e36c6694ab90177fd6920aec5f6cc73af9e4
'http://deb.debian.org/debian/pool/main/c/cups/cups_2.2.8.orig.tar.gz.asc' cups_2.2.8.orig.tar.gz.asc 872 SHA256:2f86f5ae127169cc070da00f4460a7faf8fb4ac66b04a34adeecf451a0086781
'http://deb.debian.org/debian/pool/main/c/cups/cups_2.2.8-5.debian.tar.xz' cups_2.2.8-5.debian.tar.xz 351624 SHA256:4f1e27226659d44d6b3409d7509d53ebd64976b85a0bb7331efd50d4e362d547
```

Other potentially useful URLs:

- https://sources.debian.net/src/cups/2.2.8-5/ (for browsing the source)
- https://sources.debian.net/src/cups/2.2.8-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cups/2.2.8-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dash=0.5.8-2.10`

Binary Packages:

- `dash=0.5.8-2.10`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/dash/0.5.8-2.10/


### `dpkg` source package: `db5.3=5.3.28+dfsg1-0.1`

Binary Packages:

- `libdb5.3:amd64=5.3.28+dfsg1-0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/db5.3/5.3.28+dfsg1-0.1/


### `dpkg` source package: `dbus=1.12.10-1`

Binary Packages:

- `libdbus-1-3:amd64=1.12.10-1`

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
$ apt-get source -qq --print-uris dbus=1.12.10-1
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.12.10-1.dsc' dbus_1.12.10-1.dsc 3746 SHA256:b60aacccc5047100248814873212007bde67c9e2053e18bd964d4aff60d76a47
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.12.10.orig.tar.gz' dbus_1.12.10.orig.tar.gz 2073510 SHA256:4b693d24976258c3f2fa9cc33ad9288c5fbfa7a16481dbd9a8a429f7aa8cdcf7
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.12.10.orig.tar.gz.asc' dbus_1.12.10.orig.tar.gz.asc 833 SHA256:37d53f044deeca6f47b646135fe5457b977eac8cf8aced9f5032469f45f94f37
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.12.10-1.debian.tar.xz' dbus_1.12.10-1.debian.tar.xz 61568 SHA256:6649134db32ed659cd6d0d4e7280693c2e31832f7e4fa98951f7572eb058081d
```

Other potentially useful URLs:

- https://sources.debian.net/src/dbus/1.12.10-1/ (for browsing the source)
- https://sources.debian.net/src/dbus/1.12.10-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dbus/1.12.10-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `dpkg=1.19.0.5`

Binary Packages:

- `dpkg=1.19.0.5+b1`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

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

### `dpkg` source package: `e2fsprogs=1.44.4-2`

Binary Packages:

- `e2fsprogs=1.44.4-2`
- `libcom-err2:amd64=1.44.4-2`
- `libext2fs2:amd64=1.44.4-2`
- `libss2:amd64=1.44.4-2`

Licenses: (parsed from: `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2/copyright`, `/usr/share/doc/libss2/copyright`)

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

### `dpkg` source package: `findutils=4.6.0+git+20180808-2`

Binary Packages:

- `findutils=4.6.0+git+20180808-2`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.6.0+git+20180808-2
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0+git+20180808-2.dsc' findutils_4.6.0+git+20180808-2.dsc 2137 SHA256:82c5bdd7618af85ec161a0b22297e9b486abf85282abe7e1acf255a254691009
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0+git+20180808.orig.tar.xz' findutils_4.6.0+git+20180808.orig.tar.xz 1875160 SHA256:daa434e95aef62a79d6e03cdea901564f01791cff24394285c86f4962b50a979
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0+git+20180808-2.debian.tar.xz' findutils_4.6.0+git+20180808-2.debian.tar.xz 26224 SHA256:6dfede94f210c40c46900262a0174c7fecaa79f675b738096543a054802cffdd
```

Other potentially useful URLs:

- https://sources.debian.net/src/findutils/4.6.0+git+20180808-2/ (for browsing the source)
- https://sources.debian.net/src/findutils/4.6.0+git+20180808-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/findutils/4.6.0+git+20180808-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `fontconfig=2.13.1-1`

Binary Packages:

- `fontconfig-config=2.13.1-1`
- `libfontconfig1:amd64=2.13.1-1`

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

Licenses: (parsed from: `/usr/share/doc/libfreetype6/copyright`)

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

### `dpkg` source package: `gcc-8=8.2.0-4`

Binary Packages:

- `gcc-8-base:amd64=8.2.0-4`
- `libgcc1:amd64=1:8.2.0-4`
- `libstdc++6:amd64=8.2.0-4`

Licenses: (parsed from: `/usr/share/doc/gcc-8-base/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libstdc++6/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/gcc-8/8.2.0-4/


### `dpkg` source package: `glibc=2.27-5`

Binary Packages:

- `libc-bin=2.27-5`
- `libc6:amd64=2.27-5`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc6/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.27-5
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.27-5.dsc' glibc_2.27-5.dsc 8914 SHA256:7a2c8ed68349983a426a225b2ffb99e6ff609d97e441396c548ec1011b5a8827
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.27.orig.tar.xz' glibc_2.27.orig.tar.xz 15923832 SHA256:0e9826488e3ffedb4d14a426d741b7b1cf15f6973ab30762af9a188ad47633ed
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.27-5.debian.tar.xz' glibc_2.27-5.debian.tar.xz 1011540 SHA256:581372782407c4b138b9bf8c45d29f7513802b3a2e6bf544ea6aa8786081bca2
```

Other potentially useful URLs:

- https://sources.debian.net/src/glibc/2.27-5/ (for browsing the source)
- https://sources.debian.net/src/glibc/2.27-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glibc/2.27-5/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `gnupg2=2.2.10-1`

Binary Packages:

- `gpgv=2.2.10-1`

Licenses: (parsed from: `/usr/share/doc/gpgv/copyright`)

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/gnupg2/2.2.10-1/


### `dpkg` source package: `gnutls28=3.5.19-1`

Binary Packages:

- `libgnutls30:amd64=3.5.19-1`

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

### `dpkg` source package: `gzip=1.9-2`

Binary Packages:

- `gzip=1.9-2`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/gzip/1.9-2/


### `dpkg` source package: `hostname=3.20`

Binary Packages:

- `hostname=3.20`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/hostname/3.20/


### `dpkg` source package: `init-system-helpers=1.54`

Binary Packages:

- `init-system-helpers=1.54`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.54
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.54.dsc' init-system-helpers_1.54.dsc 2047 SHA256:5a648b6e85b64f4d353fc9f66a00bf31a2aa926f91ed6eecdb11a5e4ea464e5e
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.54.tar.xz' init-system-helpers_1.54.tar.xz 39848 SHA256:cce29b4889393ce9b614898bb423b2fd6fca79784c103990681947260cdc357a
```

Other potentially useful URLs:

- https://sources.debian.net/src/init-system-helpers/1.54/ (for browsing the source)
- https://sources.debian.net/src/init-system-helpers/1.54/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/init-system-helpers/1.54/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `java-common=0.68`

Binary Packages:

- `java-common=0.68`

Licenses: (parsed from: `/usr/share/doc/java-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris java-common=0.68
'http://deb.debian.org/debian/pool/main/j/java-common/java-common_0.68.dsc' java-common_0.68.dsc 1985 SHA256:f738ae4584a93674646485415b9531410165463ebdc0ffbf88853077ddf4bc67
'http://deb.debian.org/debian/pool/main/j/java-common/java-common_0.68.tar.xz' java-common_0.68.tar.xz 13032 SHA256:86bac85c87e6e4fb918b57d66945e786150c1a1e482d1755b41338e903dd8f45
```

Other potentially useful URLs:

- https://sources.debian.net/src/java-common/0.68/ (for browsing the source)
- https://sources.debian.net/src/java-common/0.68/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/java-common/0.68/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `lcms2=2.9-3`

Binary Packages:

- `liblcms2-2:amd64=2.9-3`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`)

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

### `dpkg` source package: `libffi=3.2.1-8`

Binary Packages:

- `libffi6:amd64=3.2.1-8`

Licenses: (parsed from: `/usr/share/doc/libffi6/copyright`)

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

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.32-1
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.32-1.dsc' libgpg-error_1.32-1.dsc 2060 SHA256:9f37f813495743bd528080ac9a4182ba36873bd1efbb4944bbe187637f02978e
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.32.orig.tar.bz2' libgpg-error_1.32.orig.tar.bz2 904382 SHA256:c345c5e73cc2332f8d50db84a2280abfb1d8f6d4f1858b9daa30404db44540ca
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.32.orig.tar.bz2.asc' libgpg-error_1.32.orig.tar.bz2.asc 534 SHA256:dbf20a0c4bbc4fccfe070c55959739e5bf4d1bec01f3c3cd46e262003685b466
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.32-1.debian.tar.xz' libgpg-error_1.32-1.debian.tar.xz 15296 SHA256:9c326726a4d979f6249d68c9a2b1cc1157eefd7c95b4d49c011e66dcd54ee3b0
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgpg-error/1.32-1/ (for browsing the source)
- https://sources.debian.net/src/libgpg-error/1.32-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgpg-error/1.32-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libidn2=2.0.4-2.2`

Binary Packages:

- `libidn2-0:amd64=2.0.4-2.2`

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
$ apt-get source -qq --print-uris libidn2=2.0.4-2.2
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.0.4-2.2.dsc' libidn2_2.0.4-2.2.dsc 2347 SHA256:ca5c21aa21667fd4c27a3277b89c90f7d6911f6eb1131f384145d2ad5b3219da
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.0.4.orig.tar.gz' libidn2_2.0.4.orig.tar.gz 2008524 SHA256:644b6b03b285fb0ace02d241d59483d98bc462729d8bb3608d5cad5532f3d2f0
'http://deb.debian.org/debian/pool/main/libi/libidn2/libidn2_2.0.4-2.2.debian.tar.xz' libidn2_2.0.4-2.2.debian.tar.xz 10285652 SHA256:d4e767a6aad3599654bef9a25f03d66c706bdfbe67d28a26f6cbe7cbd7451d5b
```

Other potentially useful URLs:

- https://sources.debian.net/src/libidn2/2.0.4-2.2/ (for browsing the source)
- https://sources.debian.net/src/libidn2/2.0.4-2.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libidn2/2.0.4-2.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libjpeg-turbo=1:1.5.2-2`

Binary Packages:

- `libjpeg62-turbo:amd64=1:1.5.2-2+b1`

Licenses: (parsed from: `/usr/share/doc/libjpeg62-turbo/copyright`)

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

### `dpkg` source package: `libpng1.6=1.6.34-2`

Binary Packages:

- `libpng16-16:amd64=1.6.34-2`

Licenses: (parsed from: `/usr/share/doc/libpng16-16/copyright`)

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

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.20.2-1
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.20.2-1.dsc' libpsl_0.20.2-1.dsc 1632 SHA256:6476accfce8dbaa9bbc1f4a8a8e2dcfc6c5f79b8e5f49f05678bdd541d087718
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.20.2.orig.tar.gz' libpsl_0.20.2.orig.tar.gz 8590430 SHA256:94d2b5e00e9aa761ae7efbaa67edc00d5298487ed9706eb4789e349012993c31
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.20.2-1.debian.tar.xz' libpsl_0.20.2-1.debian.tar.xz 9852 SHA256:e271054b304ea1b6f00bff46d4be75809a5b1427d99f2797d8aa856c8e12d91c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpsl/0.20.2-1/ (for browsing the source)
- https://sources.debian.net/src/libpsl/0.20.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpsl/0.20.2-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libx11=2:1.6.6-1`

Binary Packages:

- `libx11-6:amd64=2:1.6.6-1`
- `libx11-data=2:1.6.6-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.6.6-1
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.6-1.dsc' libx11_1.6.6-1.dsc 2403 SHA256:b0eec25fd7a52cac7aa7a905be1308404569dd2bd3df7bf79f9726a071022312
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.6.orig.tar.gz' libx11_1.6.6.orig.tar.gz 3140721 SHA256:c7fb5b1069d700737e02766aaf800d87e87d443af76657fff7a969edfcf49da0
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.6-1.diff.gz' libx11_1.6.6-1.diff.gz 49283 SHA256:dc4e32f79b1745cfabcb20fda00cac160aa1196b78cfa0b9b1c43afa61cc1657
```

Other potentially useful URLs:

- https://sources.debian.net/src/libx11/2:1.6.6-1/ (for browsing the source)
- https://sources.debian.net/src/libx11/2:1.6.6-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libx11/2:1.6.6-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxau=1:1.0.8-1`

Binary Packages:

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

### `dpkg` source package: `libxcb=1.13-3`

Binary Packages:

- `libxcb1:amd64=1.13-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.13-3
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.13-3.dsc' libxcb_1.13-3.dsc 5329 SHA256:4fcb496b790ba27d7bd2ad8c4027769d8f12eaf63cdab7263b3d7fbbef51baac
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.13.orig.tar.gz' libxcb_1.13.orig.tar.gz 632493 SHA256:0bb3cfd46dbd90066bf4d7de3cad73ec1024c7325a4a0cbf5f4a0d4fa91155fb
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.13-3.diff.gz' libxcb_1.13-3.diff.gz 25263 SHA256:ba6561e0e32f6bc5ea8f0b2536d10d45362033f35d76325cb2065a2b28ea7e9b
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxcb/1.13-3/ (for browsing the source)
- https://sources.debian.net/src/libxcb/1.13-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcb/1.13-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxdmcp=1:1.1.2-3`

Binary Packages:

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

### `dpkg` source package: `libxrender=1:0.9.10-1`

Binary Packages:

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

### `dpkg` source package: `libxtst=2:1.2.3-1`

Binary Packages:

- `libxtst6:amd64=2:1.2.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxtst=2:1.2.3-1
'http://deb.debian.org/debian/pool/main/libx/libxtst/libxtst_1.2.3-1.dsc' libxtst_1.2.3-1.dsc 2243 SHA256:979f05e505ea319c3f75955e10345338f77a512f5a6a0a887d6f4633d6bd4633
'http://deb.debian.org/debian/pool/main/libx/libxtst/libxtst_1.2.3.orig.tar.gz' libxtst_1.2.3.orig.tar.gz 400197 SHA256:a0c83acce02d4923018c744662cb28eb0dbbc33b4adc027726879ccf68fbc2c2
'http://deb.debian.org/debian/pool/main/libx/libxtst/libxtst_1.2.3-1.diff.gz' libxtst_1.2.3-1.diff.gz 10177 SHA256:c4739fc7ccda7caaffcf36f934b7c33463390e71d567c7d62f635db1946b74ed
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxtst/2:1.2.3-1/ (for browsing the source)
- https://sources.debian.net/src/libxtst/2:1.2.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxtst/2:1.2.3-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `ncurses=6.1+20180714-1`

Binary Packages:

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

### `dpkg` source package: `nspr=2:4.20-1`

Binary Packages:

- `libnspr4:amd64=2:4.20-1`

Licenses: (parsed from: `/usr/share/doc/libnspr4/copyright`)

- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris nspr=2:4.20-1
'http://deb.debian.org/debian/pool/main/n/nspr/nspr_4.20-1.dsc' nspr_4.20-1.dsc 1988 SHA256:ab98e6f90a634ca5aaafb0e10ae4672da2f5b3b29176831d5b9ced7bd339422e
'http://deb.debian.org/debian/pool/main/n/nspr/nspr_4.20.orig.tar.gz' nspr_4.20.orig.tar.gz 1140892 SHA256:2c8964913da89ffbaf464d49ce44d79e8804e1794ef9a8c52a7bff7224d1556e
'http://deb.debian.org/debian/pool/main/n/nspr/nspr_4.20-1.debian.tar.xz' nspr_4.20-1.debian.tar.xz 10568 SHA256:5b06cb375a8ca203a52b68dd8dd1e57f91d27fc407f88bf2c013f45291aa99df
```

Other potentially useful URLs:

- https://sources.debian.net/src/nspr/2:4.20-1/ (for browsing the source)
- https://sources.debian.net/src/nspr/2:4.20-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nspr/2:4.20-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nss=2:3.39-1`

Binary Packages:

- `libnss3:amd64=2:3.39-1`

Licenses: (parsed from: `/usr/share/doc/libnss3/copyright`)

- `BSD-3`
- `MIT`
- `MPL-2.0`
- `Zlib`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris nss=2:3.39-1
'http://deb.debian.org/debian/pool/main/n/nss/nss_3.39-1.dsc' nss_3.39-1.dsc 2146 SHA256:4f897b66d1c29e13b0ef42e01501b3bc8a4926d3884f5d4a7581dc620899e820
'http://deb.debian.org/debian/pool/main/n/nss/nss_3.39.orig.tar.gz' nss_3.39.orig.tar.gz 23048561 SHA256:6be64dd76f212415cc8bc34343ac1e7389048db4db9a023a84873c411dc5864b
'http://deb.debian.org/debian/pool/main/n/nss/nss_3.39-1.debian.tar.xz' nss_3.39-1.debian.tar.xz 19968 SHA256:b4eba0767491697cda2d9d36a3ad25056dbc57b9001b149df75c59c73a07a6d1
```

Other potentially useful URLs:

- https://sources.debian.net/src/nss/2:3.39-1/ (for browsing the source)
- https://sources.debian.net/src/nss/2:3.39-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nss/2:3.39-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openjdk-11=11~28-3`

Binary Packages:

- `openjdk-11-jdk-headless:amd64=11~28-3`
- `openjdk-11-jre-headless:amd64=11~28-3`

Licenses: (parsed from: `/usr/share/doc/openjdk-11-jdk-headless/copyright`, `/usr/share/doc/openjdk-11-jre-headless/copyright`)

- `Apache-2.0`
- `GPL-2`
- `LGPL-2`
- `LGPL-2-1`

Source:

```console
$ apt-get source -qq --print-uris openjdk-11=11~28-3
'http://deb.debian.org/debian/pool/main/o/openjdk-11/openjdk-11_11~28-3.dsc' openjdk-11_11~28-3.dsc 4539 SHA256:9cbd1ca2d9ffd04946a384c86ea6a73fdee0d4036a1395c3948a8a7799c16467
'http://deb.debian.org/debian/pool/main/o/openjdk-11/openjdk-11_11~28.orig.tar.xz' openjdk-11_11~28.orig.tar.xz 75178272 SHA256:95556aa3253a4d2d95a61e673da1dc721123a9bd0b7f14611542f41556877a47
'http://deb.debian.org/debian/pool/main/o/openjdk-11/openjdk-11_11~28-3.debian.tar.xz' openjdk-11_11~28-3.debian.tar.xz 162992 SHA256:3f95d31f562146a7bbfb6da3873427064e98804da4c9fdc6af2ff25271203967
```

Other potentially useful URLs:

- https://sources.debian.net/src/openjdk-11/11~28-3/ (for browsing the source)
- https://sources.debian.net/src/openjdk-11/11~28-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openjdk-11/11~28-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openssl=1.1.1-1`

Binary Packages:

- `libssl1.1:amd64=1.1.1-1`
- `openssl=1.1.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.1.1-1
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1-1.dsc' openssl_1.1.1-1.dsc 2604 SHA256:bb36f5416905aaeb424a89556101ffad372287cfc21a64180141fde446d705e3
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1.orig.tar.gz' openssl_1.1.1.orig.tar.gz 8337920 SHA256:2836875a0f89c03d0fdf483941512613a50cfb421d6fd94b9f41d7279d586a3d
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1.orig.tar.gz.asc' openssl_1.1.1.orig.tar.gz.asc 488 SHA256:f3296150114069ea73a72eafbfdcbb295b770e7cbf3266f9590f3d0932498b3e
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1-1.debian.tar.xz' openssl_1.1.1-1.debian.tar.xz 83052 SHA256:858f59d320b7fdbd127493a33809deeaad9d70dece56536b8814dc8d7ca188bd
```

Other potentially useful URLs:

- https://sources.debian.net/src/openssl/1.1.1-1/ (for browsing the source)
- https://sources.debian.net/src/openssl/1.1.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openssl/1.1.1-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `pcsc-lite=1.8.23-3`

Binary Packages:

- `libpcsclite1:amd64=1.8.23-3`

Licenses: (parsed from: `/usr/share/doc/libpcsclite1/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-3`
- `GPL-3+`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris pcsc-lite=1.8.23-3
'http://deb.debian.org/debian/pool/main/p/pcsc-lite/pcsc-lite_1.8.23-3.dsc' pcsc-lite_1.8.23-3.dsc 2150 SHA256:a2fb998a5162b1d9715cc1baf637caba369448945fb970495650817aa71dc0c7
'http://deb.debian.org/debian/pool/main/p/pcsc-lite/pcsc-lite_1.8.23.orig.tar.bz2' pcsc-lite_1.8.23.orig.tar.bz2 749922 SHA256:5a27262586eff39cfd5c19aadc8891dd71c0818d3d629539bd631b958be689c9
'http://deb.debian.org/debian/pool/main/p/pcsc-lite/pcsc-lite_1.8.23-3.debian.tar.xz' pcsc-lite_1.8.23-3.debian.tar.xz 30076 SHA256:442efead4cb232267763e2d13c63fd0dda98437223b3667cc666e632596ed5c9
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcsc-lite/1.8.23-3/ (for browsing the source)
- https://sources.debian.net/src/pcsc-lite/1.8.23-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcsc-lite/1.8.23-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `perl=5.26.2-7`

Binary Packages:

- `perl-base=5.26.2-7`

Licenses: (parsed from: `/usr/share/doc/perl-base/copyright`)

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

### `dpkg` source package: `sed=4.5-1`

Binary Packages:

- `sed=4.5-1`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris sed=4.5-1
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.5-1.dsc' sed_4.5-1.dsc 2218 SHA256:9fba9d65b814cfbd7045fa5c4a3d2c33256542db8669cb3d9db63efd0ef24c66
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.5.orig.tar.xz' sed_4.5.orig.tar.xz 1274252 SHA256:7aad73c8839c2bdadca9476f884d2953cdace9567ecd0d90f9959f229d146b40
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.5.orig.tar.xz.asc' sed_4.5.orig.tar.xz.asc 1258 SHA256:d6a7f0df70447358fdc1eaea4bad77250b43c53df4938dae256006b7c6356141
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.5-1.debian.tar.xz' sed_4.5-1.debian.tar.xz 59764 SHA256:cb8e5d77782b088aca6b0205dee1ce86ffa97bf4bfcb01fee5e6affe8d08fc4c
```

Other potentially useful URLs:

- https://sources.debian.net/src/sed/4.5-1/ (for browsing the source)
- https://sources.debian.net/src/sed/4.5-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sed/4.5-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `sqlite3=3.25.2-1`

Binary Packages:

- `libsqlite3-0:amd64=3.25.2-1`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

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

### `dpkg` source package: `systemd=239-7`

Binary Packages:

- `libsystemd0:amd64=239-7`
- `libudev1:amd64=239-7`

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

- http://snapshot.debian.org/package/systemd/239-7/


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

### `dpkg` source package: `tzdata=2018e-1`

Binary Packages:

- `tzdata=2018e-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tzdata=2018e-1
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2018e-1.dsc' tzdata_2018e-1.dsc 2232 SHA256:68552c028c1c8f2bec8ac786acf1afb9b38ba1f821a3f39da5ae6e3aee744f63
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2018e.orig.tar.gz' tzdata_2018e.orig.tar.gz 353953 SHA256:6b288e5926841a4cb490909fe822d85c36ae75538ad69baf20da9628b63b692e
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2018e.orig.tar.gz.asc' tzdata_2018e.orig.tar.gz.asc 819 SHA256:46812e7b7761bf4cbee7449a500cb0fba46912f99f6725b9437ab2f226e64753
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2018e-1.debian.tar.xz' tzdata_2018e-1.debian.tar.xz 104188 SHA256:2c8999456a1529a1e4abe42d5d97bbafe2eba0fa00f2a1a4140c0af74ed94750
```

Other potentially useful URLs:

- https://sources.debian.net/src/tzdata/2018e-1/ (for browsing the source)
- https://sources.debian.net/src/tzdata/2018e-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tzdata/2018e-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `unzip=6.0-21`

Binary Packages:

- `unzip=6.0-21`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris unzip=6.0-21
'http://deb.debian.org/debian/pool/main/u/unzip/unzip_6.0-21.dsc' unzip_6.0-21.dsc 1344 SHA256:c51fca0f9d8af19ead119addf4b56ea25443b64951b85eceb873f0ca76b378d4
'http://deb.debian.org/debian/pool/main/u/unzip/unzip_6.0.orig.tar.gz' unzip_6.0.orig.tar.gz 1376845 SHA256:036d96991646d0449ed0aa952e4fbe21b476ce994abc276e49d30e686708bd37
'http://deb.debian.org/debian/pool/main/u/unzip/unzip_6.0-21.debian.tar.xz' unzip_6.0-21.debian.tar.xz 17740 SHA256:8accd9d214630a366476437a3ec1842f2e057fdce16042a7b19ee569c33490a3
```

Other potentially useful URLs:

- https://sources.debian.net/src/unzip/6.0-21/ (for browsing the source)
- https://sources.debian.net/src/unzip/6.0-21/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/unzip/6.0-21/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `xz-utils=5.2.2-1.3`

Binary Packages:

- `liblzma5:amd64=5.2.2-1.3`
- `xz-utils=5.2.2-1.3`

Licenses: (parsed from: `/usr/share/doc/liblzma5/copyright`, `/usr/share/doc/xz-utils/copyright`)

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
