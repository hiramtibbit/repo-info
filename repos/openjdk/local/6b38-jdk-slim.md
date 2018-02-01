# `openjdk:6b38-jdk-slim-wheezy`

## Docker Metadata

- Image ID: `sha256:1b55adf5c5f6ba3bb127c4f87a57052a06e9f21ab708c6a83059ad40b705e0e4`
- Created: `2017-12-12T05:22:53.011852034Z`
- Virtual Size: ~ 247.19 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `LANG=C.UTF-8`
  - `JAVA_HOME=/docker-java-home`
  - `JAVA_VERSION=6b38`
  - `JAVA_DEBIAN_VERSION=6b38-1.13.10-1~deb7u1`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.2.51-8`

Binary Packages:

- `libacl1:amd64=2.2.51-8`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.2.51-8
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.51-8.dsc' acl_2.2.51-8.dsc 2035 SHA256:44a454da52afb34b342b58958f0a171d5de1f8eb527be341037d2af32892696d
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.51.orig.tar.bz2' acl_2.2.51.orig.tar.bz2 310798 SHA256:06a040f7950ed94b791362301fb0ce0d6a2a2d868e4ef1f2a69f62fc83a5a73c
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.51-8.debian.tar.bz2' acl_2.2.51-8.debian.tar.bz2 7936 SHA256:082d863c576315480370bb485fd0dd4c0c043bc1f46a8fe01f5badce296975dc
```

Other potentially useful URLs:

- https://sources.debian.net/src/acl/2.2.51-8/ (for browsing the source)
- https://sources.debian.net/src/acl/2.2.51-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/acl/2.2.51-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `adduser=3.113+nmu3`

Binary Packages:

- `adduser=3.113+nmu3`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.113+nmu3
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.113+nmu3.dsc' adduser_3.113+nmu3.dsc 1733 SHA256:7f9fa8841080591834389fd56352e2d05ca3d86eb4df15d2f13bea9faf4a6f2d
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.113+nmu3.tar.gz' adduser_3.113+nmu3.tar.gz 342554 SHA256:02682be3f51f3e732121f20a3e4922bb8bef15cfacb8767fc250a01d09502122
```

Other potentially useful URLs:

- https://sources.debian.net/src/adduser/3.113+nmu3/ (for browsing the source)
- https://sources.debian.net/src/adduser/3.113+nmu3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/adduser/3.113+nmu3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `alsa-lib=1.0.25-4`

Binary Packages:

- `libasound2:amd64=1.0.25-4`

Licenses: (parsed from: `/usr/share/doc/libasound2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris alsa-lib=1.0.25-4
'http://deb.debian.org/debian/pool/main/a/alsa-lib/alsa-lib_1.0.25-4.dsc' alsa-lib_1.0.25-4.dsc 1790 SHA256:3ab6b427407c385c48f9eaaf834e27ebd527bc27edb2c47fb02ed0db842dd7df
'http://deb.debian.org/debian/pool/main/a/alsa-lib/alsa-lib_1.0.25.orig.tar.bz2' alsa-lib_1.0.25.orig.tar.bz2 838403 SHA256:5a1a805cf04106316d549ec650116ce6711a162e107ba8b3c551866680e286e6
'http://deb.debian.org/debian/pool/main/a/alsa-lib/alsa-lib_1.0.25-4.debian.tar.bz2' alsa-lib_1.0.25-4.debian.tar.bz2 42056 SHA256:148e7f5ce31b28df30d57f3b5d87d4ded0634930889bf015fa9121c596c362df
```

Other potentially useful URLs:

- https://sources.debian.net/src/alsa-lib/1.0.25-4/ (for browsing the source)
- https://sources.debian.net/src/alsa-lib/1.0.25-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/alsa-lib/1.0.25-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apt=0.9.7.9+deb7u7`

Binary Packages:

- `apt=0.9.7.9+deb7u7`
- `libapt-pkg4.12:amd64=0.9.7.9+deb7u7`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg4.12/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=0.9.7.9+deb7u7
'http://deb.debian.org/debian/pool/main/a/apt/apt_0.9.7.9+deb7u7.dsc' apt_0.9.7.9+deb7u7.dsc 2347 SHA256:7835d9f97acf8adcad7eee0eca2990eaef72ffe21272302d3c36d8053d6baf82
'http://deb.debian.org/debian/pool/main/a/apt/apt_0.9.7.9+deb7u7.tar.gz' apt_0.9.7.9+deb7u7.tar.gz 3239065 SHA256:16816387711ee428d94a940bd3223fb7149c39666dd1cdc9633fbfbbe8933cb8
```

Other potentially useful URLs:

- https://sources.debian.net/src/apt/0.9.7.9+deb7u7/ (for browsing the source)
- https://sources.debian.net/src/apt/0.9.7.9+deb7u7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apt/0.9.7.9+deb7u7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `atk1.0=2.4.0-2`

Binary Packages:

- `libatk1.0-0:amd64=2.4.0-2`
- `libatk1.0-data=2.4.0-2`

Licenses: (parsed from: `/usr/share/doc/libatk1.0-0/copyright`, `/usr/share/doc/libatk1.0-data/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris atk1.0=2.4.0-2
'http://deb.debian.org/debian/pool/main/a/atk1.0/atk1.0_2.4.0-2.dsc' atk1.0_2.4.0-2.dsc 2657 SHA256:5d4f1f507b6d73ff4f2b166144ac75df630a34eed48a1b63cd47b1cc167a772e
'http://deb.debian.org/debian/pool/main/a/atk1.0/atk1.0_2.4.0.orig.tar.xz' atk1.0_2.4.0.orig.tar.xz 607156 SHA256:091e9ce975a9fbbc7cd8fa64c9c389ffb7fa6cdde58b6d5c01b2c267093d888d
'http://deb.debian.org/debian/pool/main/a/atk1.0/atk1.0_2.4.0-2.debian.tar.gz' atk1.0_2.4.0-2.debian.tar.gz 10127 SHA256:34868897c403c68881ec0f3a7d6db4393dbfc76b9cd782044a99a8cdd2f73336
```

Other potentially useful URLs:

- https://sources.debian.net/src/atk1.0/2.4.0-2/ (for browsing the source)
- https://sources.debian.net/src/atk1.0/2.4.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/atk1.0/2.4.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `attr=1:2.4.46-8`

Binary Packages:

- `libattr1:amd64=1:2.4.46-8`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.4.46-8
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.46-8.dsc' attr_2.4.46-8.dsc 2023 SHA256:e39d7e62df4b02415343950dc252d81f5c4c82a66c338eb4c298a3c20cb4bb60
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.46.orig.tar.bz2' attr_2.4.46.orig.tar.bz2 275543 SHA256:1d74b0251d5a069377cf1996269b4d64d81b8529b12cc95e18a9a7074096ca6b
'http://deb.debian.org/debian/pool/main/a/attr/attr_2.4.46-8.debian.tar.bz2' attr_2.4.46-8.debian.tar.bz2 7280 SHA256:099dfae5b30cfe74ea5018ef701e567de876880a6b8ce2ca2576f11bdfe2826c
```

Other potentially useful URLs:

- https://sources.debian.net/src/attr/1:2.4.46-8/ (for browsing the source)
- https://sources.debian.net/src/attr/1:2.4.46-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/attr/1:2.4.46-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `avahi=0.6.31-2`

Binary Packages:

- `libavahi-client3:amd64=0.6.31-2`
- `libavahi-common-data:amd64=0.6.31-2`
- `libavahi-common3:amd64=0.6.31-2`

Licenses: (parsed from: `/usr/share/doc/libavahi-client3/copyright`, `/usr/share/doc/libavahi-common-data/copyright`, `/usr/share/doc/libavahi-common3/copyright`)

- `GPL`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris avahi=0.6.31-2
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.6.31-2.dsc' avahi_0.6.31-2.dsc 3779 SHA256:d80d8e832f34732816c5068666922f9e0b57ee74293943a4c62179efa89b5618
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.6.31.orig.tar.gz' avahi_0.6.31.orig.tar.gz 1268686 SHA256:8372719b24e2dd75de6f59bb1315e600db4fd092805bd1201ed0cb651a2dab48
'http://deb.debian.org/debian/pool/main/a/avahi/avahi_0.6.31-2.debian.tar.gz' avahi_0.6.31-2.debian.tar.gz 32448 SHA256:56893eb777aaa4f00f7d8893b61120e7558885d1d9ced20642204e530705ded9
```

Other potentially useful URLs:

- https://sources.debian.net/src/avahi/0.6.31-2/ (for browsing the source)
- https://sources.debian.net/src/avahi/0.6.31-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/avahi/0.6.31-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-files=7.1wheezy11`

Binary Packages:

- `base-files=7.1wheezy11`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=7.1wheezy11
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_7.1wheezy11.dsc' base-files_7.1wheezy11.dsc 1052 SHA256:ba118ad474131bde52382a0e6dae05959ef83ea34febcbbf702c68a363dd8b54
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_7.1wheezy11.tar.xz' base-files_7.1wheezy11.tar.xz 51488 SHA256:03dd7ec60789c9838f2697cf20e9faa2863372e972d5aa5a98150c71a3eabaed
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-files/7.1wheezy11/ (for browsing the source)
- https://sources.debian.net/src/base-files/7.1wheezy11/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-files/7.1wheezy11/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-passwd=3.5.26`

Binary Packages:

- `base-passwd=3.5.26`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.26
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.26.dsc' base-passwd_3.5.26.dsc 1619 SHA256:14a1e096c3aa3fe9e996f1c25cd66953d62580251392f7d9cf0abffa628b0d10
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.26.tar.gz' base-passwd_3.5.26.tar.gz 77858 SHA256:258a78317aa563143d10375c6e1e63a60898e503887f00fffd70b6b297c1b429
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-passwd/3.5.26/ (for browsing the source)
- https://sources.debian.net/src/base-passwd/3.5.26/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-passwd/3.5.26/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bash=4.2+dfsg-0.1+deb7u4`

Binary Packages:

- `bash=4.2+dfsg-0.1+deb7u4`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=4.2+dfsg-0.1+deb7u4
'http://security.debian.org/pool/updates/main/b/bash/bash_4.2+dfsg-0.1+deb7u4.dsc' bash_4.2+dfsg-0.1+deb7u4.dsc 2186 SHA256:3b353fe62c0931101eb11cd9263eac5d08e9d324bfada342fdd8a95373b6257f
'http://security.debian.org/pool/updates/main/b/bash/bash_4.2+dfsg.orig.tar.gz' bash_4.2+dfsg.orig.tar.gz 2749569 SHA256:a8cdf3d4e526d626ae42c11fde79f9f8ba323ec3b3745510410fc5f50463ccff
'http://security.debian.org/pool/updates/main/b/bash/bash_4.2+dfsg-0.1+deb7u4.diff.gz' bash_4.2+dfsg-0.1+deb7u4.diff.gz 92229 SHA256:935bfaf7f9542de61fd97328006f0d59b729292bd453e36e8c9d302dc5129e11
```

Other potentially useful URLs:

- https://sources.debian.net/src/bash/4.2+dfsg-0.1+deb7u4/ (for browsing the source)
- https://sources.debian.net/src/bash/4.2+dfsg-0.1+deb7u4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bash/4.2+dfsg-0.1+deb7u4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bzip2=1.0.6-4`

Binary Packages:

- `bzip2=1.0.6-4`
- `libbz2-1.0:amd64=1.0.6-4`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.6-4
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6-4.dsc' bzip2_1.0.6-4.dsc 1751 SHA256:c8899f7143588b46652d603b66b2f51e39b75d7dc4a0a5d0f546c7b15c74280a
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA256:d70a9ccd8bdf47e302d96c69fecd54925f45d9c7b966bb4ef5f56b770960afa7
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6-4.debian.tar.bz2' bzip2_1.0.6-4.debian.tar.bz2 60821 SHA256:87cf84fbef058d13c32f065e63caa9c705c9e029e29babb9f8266674ba6814b2
```

Other potentially useful URLs:

- https://sources.debian.net/src/bzip2/1.0.6-4/ (for browsing the source)
- https://sources.debian.net/src/bzip2/1.0.6-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bzip2/1.0.6-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ca-certificates-java=20121112+nmu2`

Binary Packages:

- `ca-certificates-java=20121112+nmu2`

Licenses: (parsed from: `/usr/share/doc/ca-certificates-java/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates-java=20121112+nmu2
'http://deb.debian.org/debian/pool/main/c/ca-certificates-java/ca-certificates-java_20121112+nmu2.dsc' ca-certificates-java_20121112+nmu2.dsc 1893 SHA256:85c6de9f5fca789292c01885b73b2c18229d56b641d2075f04edd4ed3ca4c392
'http://deb.debian.org/debian/pool/main/c/ca-certificates-java/ca-certificates-java_20121112+nmu2.tar.gz' ca-certificates-java_20121112+nmu2.tar.gz 10981 SHA256:2665261dd43365bf3238f4d83d9b3a33552f0b6d7a66b06e1247772c85484e0a
```

Other potentially useful URLs:

- https://sources.debian.net/src/ca-certificates-java/20121112+nmu2/ (for browsing the source)
- https://sources.debian.net/src/ca-certificates-java/20121112+nmu2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ca-certificates-java/20121112+nmu2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ca-certificates=20130119+deb7u1`

Binary Packages:

- `ca-certificates=20130119+deb7u1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20130119+deb7u1
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20130119+deb7u1.dsc' ca-certificates_20130119+deb7u1.dsc 1420 SHA256:da324d3fee3498ce3af95fae0631db8ef7a4da3cc6b8e383cb4294cbcc68c09f
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20130119+deb7u1.tar.gz' ca-certificates_20130119+deb7u1.tar.gz 366422 SHA256:58c8269f7fb7fce80fbabffc6fa636430580cffc7e2fd19df4e235ac3e6c34b6
```

Other potentially useful URLs:

- https://sources.debian.net/src/ca-certificates/20130119+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/ca-certificates/20130119+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ca-certificates/20130119+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cairo=1.12.2-3+deb7u1`

Binary Packages:

- `libcairo2:amd64=1.12.2-3+deb7u1`

Licenses: (parsed from: `/usr/share/doc/libcairo2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cairo=1.12.2-3+deb7u1
'http://security.debian.org/pool/updates/main/c/cairo/cairo_1.12.2-3+deb7u1.dsc' cairo_1.12.2-3+deb7u1.dsc 2649 SHA256:9bea0482d932c5e791e01785d67e82a9ac2210d470a7fb23ce4a4e22896c596a
'http://security.debian.org/pool/updates/main/c/cairo/cairo_1.12.2.orig.tar.xz' cairo_1.12.2.orig.tar.xz 42051584 SHA256:b786bc4a70542bcb09f2d9d13e5e6a0c86408cbf6d1edde5f0de807eecf93f96
'http://security.debian.org/pool/updates/main/c/cairo/cairo_1.12.2-3+deb7u1.debian.tar.gz' cairo_1.12.2-3+deb7u1.debian.tar.gz 36579 SHA256:cc84faa0d160ec8d00dd42d90b1998c72f12dace179ee40c1beff4948fbe98e7
```

Other potentially useful URLs:

- https://sources.debian.net/src/cairo/1.12.2-3+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/cairo/1.12.2-3+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cairo/1.12.2-3+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `coreutils=8.13-3.5`

Binary Packages:

- `coreutils=8.13-3.5`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.13-3.5
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.13-3.5.dsc' coreutils_8.13-3.5.dsc 1876 SHA256:c23616e36ed4a58fe735010bfdc7f411dde0313b81832c41b9194f597324f80a
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.13.orig.tar.gz' coreutils_8.13.orig.tar.gz 11660808 SHA256:06180e0116b8106b2e75d8eb43d11cd0f365418a61d946bce109944902de63b3
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.13-3.5.diff.gz' coreutils_8.13-3.5.diff.gz 1228098 SHA256:f5c1ab9b8be1364cfad3a422f8f351c016412a691c9a30117bc265654acfaf8e
```

Other potentially useful URLs:

- https://sources.debian.net/src/coreutils/8.13-3.5/ (for browsing the source)
- https://sources.debian.net/src/coreutils/8.13-3.5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/coreutils/8.13-3.5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cups=1.5.3-5+deb7u6`

Binary Packages:

- `libcups2:amd64=1.5.3-5+deb7u6`

Licenses: (parsed from: `/usr/share/doc/libcups2/copyright`)

- `GPL-2`
- `GPL-2 with exceptions`
- `LGPL-2 with exceptions`

Source:

```console
$ apt-get source -qq --print-uris cups=1.5.3-5+deb7u6
'http://deb.debian.org/debian/pool/main/c/cups/cups_1.5.3-5+deb7u6.dsc' cups_1.5.3-5+deb7u6.dsc 3260 SHA256:f8a821746044ec09eaa7dd10724bc5d8fec53ccdd8e10101edb5b9fa85a15642
'http://deb.debian.org/debian/pool/main/c/cups/cups_1.5.3.orig.tar.bz2' cups_1.5.3.orig.tar.bz2 9580485 SHA256:9d716a8ffcefdaff1c37f4a4b590f1d74ff9ff72383a18f3c883c9235907f93d
'http://deb.debian.org/debian/pool/main/c/cups/cups_1.5.3-5+deb7u6.debian.tar.gz' cups_1.5.3-5+deb7u6.debian.tar.gz 379647 SHA256:757b3fe68a9056d2cbf74f6dba33d613674f004ddc37415c37a419459889ff13
```

Other potentially useful URLs:

- https://sources.debian.net/src/cups/1.5.3-5+deb7u6/ (for browsing the source)
- https://sources.debian.net/src/cups/1.5.3-5+deb7u6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cups/1.5.3-5+deb7u6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dash=0.5.7-3`

Binary Packages:

- `dash=0.5.7-3`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.7-3
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.7-3.dsc' dash_0.5.7-3.dsc 1083 SHA256:3b0c3726784271842eecec2eecc81c4d02f7525f7832cc60e4fcbc1fc1433b4f
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.7.orig.tar.gz' dash_0.5.7.orig.tar.gz 223794 SHA256:ae89fa9f1145b7748cf0740e1df04cd52fdf8a285da4911dd0f04983efba4e39
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.7-3.diff.gz' dash_0.5.7-3.diff.gz 41631 SHA256:ee6aa93c49487e699286347ee5709efdfd7e040b02c85b467e629bb457cdfee7
```

Other potentially useful URLs:

- https://sources.debian.net/src/dash/0.5.7-3/ (for browsing the source)
- https://sources.debian.net/src/dash/0.5.7-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dash/0.5.7-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `db=5.1.29-5+deb7u1`

Binary Packages:

- `libdb5.1:amd64=5.1.29-5+deb7u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db=5.1.29-5+deb7u1
'http://security.debian.org/pool/updates/main/d/db/db_5.1.29-5+deb7u1.dsc' db_5.1.29-5+deb7u1.dsc 2778 SHA256:3670e531aca8676efcb3ae41ab0256ba25855b460a371ae343964399cc59ac4b
'http://security.debian.org/pool/updates/main/d/db/db_5.1.29.orig.tar.gz' db_5.1.29.orig.tar.gz 32188074 SHA256:a943cb4920e62df71de1069ddca486d408f6d7a09ddbbb5637afe7a229389182
'http://security.debian.org/pool/updates/main/d/db/db_5.1.29-5+deb7u1.debian.tar.gz' db_5.1.29-5+deb7u1.debian.tar.gz 29235 SHA256:ae4330a3ee4d253252686c8f56100c434bda137a0f2272f5f36acc81f536227a
```

Other potentially useful URLs:

- https://sources.debian.net/src/db/5.1.29-5+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/db/5.1.29-5+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/db/5.1.29-5+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dbus=1.6.8-1+deb7u6`

Binary Packages:

- `dbus=1.6.8-1+deb7u6`
- `libdbus-1-3:amd64=1.6.8-1+deb7u6`

Licenses: (parsed from: `/usr/share/doc/dbus/copyright`, `/usr/share/doc/libdbus-1-3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris dbus=1.6.8-1+deb7u6
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.6.8-1+deb7u6.dsc' dbus_1.6.8-1+deb7u6.dsc 2585 SHA256:5542196824588b18d81a1e6431e4ee0ded975404d344dd9548c7f9d4bb11aabe
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.6.8.orig.tar.gz' dbus_1.6.8.orig.tar.gz 1929630 SHA256:fc1370ef38abeeb13f55c905ec002e60705fb0bfde3b8d21c8d6eb8056c11bac
'http://deb.debian.org/debian/pool/main/d/dbus/dbus_1.6.8-1+deb7u6.debian.tar.xz' dbus_1.6.8-1+deb7u6.debian.tar.xz 50124 SHA256:50fe614aa01f750af2c9848ed62dc22576c8203f8750b167fdb1698ce7a6eed9
```

Other potentially useful URLs:

- https://sources.debian.net/src/dbus/1.6.8-1+deb7u6/ (for browsing the source)
- https://sources.debian.net/src/dbus/1.6.8-1+deb7u6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dbus/1.6.8-1+deb7u6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debconf=1.5.49`

Binary Packages:

- `debconf=1.5.49`
- `debconf-i18n=1.5.49`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`, `/usr/share/doc/debconf-i18n/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.49
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.49.dsc' debconf_1.5.49.dsc 1285 SHA256:453f0618e1ea64deaa13455cee85a9e833628ddc4859b94c491683194ec45e21
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.49.tar.gz' debconf_1.5.49.tar.gz 1003721 SHA256:1e8d900c90b99390ea738fb4ce85ae0d0c2e45c1936b0979e34563c6baffc8aa
```

Other potentially useful URLs:

- https://sources.debian.net/src/debconf/1.5.49/ (for browsing the source)
- https://sources.debian.net/src/debconf/1.5.49/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debconf/1.5.49/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debian-archive-keyring=2014.3~deb7u1`

Binary Packages:

- `debian-archive-keyring=2014.3~deb7u1`

Licenses: (parsed from: `/usr/share/doc/debian-archive-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debian-archive-keyring=2014.3~deb7u1
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2014.3~deb7u1.dsc' debian-archive-keyring_2014.3~deb7u1.dsc 1611 SHA256:c20a580a73e10c1edc6ac1c24045ea9e449806783a94eb815a248b52ac54e75d
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2014.3~deb7u1.tar.gz' debian-archive-keyring_2014.3~deb7u1.tar.gz 64165 SHA256:d92f5a8d6d891bc109c48c1f777974eaaa372b2e760fd3006e4c5a96f5f01a01
```

Other potentially useful URLs:

- https://sources.debian.net/src/debian-archive-keyring/2014.3~deb7u1/ (for browsing the source)
- https://sources.debian.net/src/debian-archive-keyring/2014.3~deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debian-archive-keyring/2014.3~deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debianutils=4.3.2`

Binary Packages:

- `debianutils=4.3.2`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.3.2
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.3.2.dsc' debianutils_4.3.2.dsc 1568 SHA256:3eb2599b63f603b310c4adb52cef4b42f5460dc576a33683b38a4ce47537ec62
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.3.2.tar.gz' debianutils_4.3.2.tar.gz 201772 SHA256:0062d774306a6acc34d3b855a5c4eeb845653b0cd34dbb5c13aa00b4ecb8af22
```

Other potentially useful URLs:

- https://sources.debian.net/src/debianutils/4.3.2/ (for browsing the source)
- https://sources.debian.net/src/debianutils/4.3.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debianutils/4.3.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `diffutils=1:3.2-6`

Binary Packages:

- `diffutils=1:3.2-6`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.2-6
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.2-6.dsc' diffutils_3.2-6.dsc 1436 SHA256:d4f7e8ed950df583b66c288780ff75bef2487d6ea9825fd3e72fb60f12ac9196
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.2.orig.tar.gz' diffutils_3.2.orig.tar.gz 2023539 SHA256:2aaaebef615be7dc365306a14caa5d273a4fc174f9f10abca8b60e082c054ed3
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.2-6.debian.tar.gz' diffutils_3.2-6.debian.tar.gz 8485 SHA256:42bd0f09a9de4472574a96af946157f23425cc156b9dc515627a5263757ac9cf
```

Other potentially useful URLs:

- https://sources.debian.net/src/diffutils/1:3.2-6/ (for browsing the source)
- https://sources.debian.net/src/diffutils/1:3.2-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/diffutils/1:3.2-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dpkg=1.16.18`

Binary Packages:

- `dpkg=1.16.18`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.16.18
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.16.18.dsc' dpkg_1.16.18.dsc 1960 SHA256:f01e95253883db2185b70f2545390966de9dc3be19f6fc1b9258cbda9c4ec58c
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.16.18.tar.xz' dpkg_1.16.18.tar.xz 3806456 SHA256:fac74a25615d60eab5d4a324c0edbbb2af3e603f6095ae5aae0ab2a99955e808
```

Other potentially useful URLs:

- https://sources.debian.net/src/dpkg/1.16.18/ (for browsing the source)
- https://sources.debian.net/src/dpkg/1.16.18/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dpkg/1.16.18/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `e2fsprogs=1.42.5-1.1+deb7u1`

Binary Packages:

- `e2fslibs:amd64=1.42.5-1.1+deb7u1`
- `e2fsprogs=1.42.5-1.1+deb7u1`
- `libcomerr2:amd64=1.42.5-1.1+deb7u1`
- `libss2:amd64=1.42.5-1.1+deb7u1`

Licenses: (parsed from: `/usr/share/doc/e2fslibs/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcomerr2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.42.5-1.1+deb7u1
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.42.5-1.1+deb7u1.dsc' e2fsprogs_1.42.5-1.1+deb7u1.dsc 3181 SHA256:2fd855d71357ef3e43d8030a6070463c534d9f3ee60b62ffbf1e756e53c3e636
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.42.5.orig.tar.gz' e2fsprogs_1.42.5.orig.tar.gz 5918892 SHA256:76edaad8eb7464356e1317d60eb19952728091dad358f1f939239874cc1871ce
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.42.5-1.1+deb7u1.debian.tar.gz' e2fsprogs_1.42.5-1.1+deb7u1.debian.tar.gz 73764 SHA256:2d4acd9945effdf9649c69405fadea8c1a89bee04e1c4ff3745acffb9aa74412
```

Other potentially useful URLs:

- https://sources.debian.net/src/e2fsprogs/1.42.5-1.1+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/e2fsprogs/1.42.5-1.1+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/e2fsprogs/1.42.5-1.1+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `eglibc=2.13-38+deb7u12`

Binary Packages:

- `libc-bin=2.13-38+deb7u12`
- `libc6:amd64=2.13-38+deb7u12`
- `multiarch-support=2.13-38+deb7u12`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/multiarch-support/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris eglibc=2.13-38+deb7u12
'http://security.debian.org/pool/updates/main/e/eglibc/eglibc_2.13-38+deb7u12.dsc' eglibc_2.13-38+deb7u12.dsc 5390 SHA256:2727c6e9d238477f40ed5259d85ee028b20a69e1068188b0d5ec6879a7101819
'http://security.debian.org/pool/updates/main/e/eglibc/eglibc_2.13.orig.tar.gz' eglibc_2.13.orig.tar.gz 23004247 SHA256:5e6dce233f0d0f89453b369efbc1ff360956b5d2de45c03c9bc8c52eef98868f
'http://security.debian.org/pool/updates/main/e/eglibc/eglibc_2.13-38+deb7u12.diff.gz' eglibc_2.13-38+deb7u12.diff.gz 2054928 SHA256:e791980fd3e69d904b847daa159bd52f1ecfeecc482bd4f7d5257893c9954fa8
```

Other potentially useful URLs:

- https://sources.debian.net/src/eglibc/2.13-38+deb7u12/ (for browsing the source)
- https://sources.debian.net/src/eglibc/2.13-38+deb7u12/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/eglibc/2.13-38+deb7u12/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `expat=2.1.0-1+deb7u5`

Binary Packages:

- `libexpat1:amd64=2.1.0-1+deb7u5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris expat=2.1.0-1+deb7u5
'http://security.debian.org/pool/updates/main/e/expat/expat_2.1.0-1+deb7u5.dsc' expat_2.1.0-1+deb7u5.dsc 2191 SHA256:440c97224d3e4f9ca10575b3562a80e2e6b7547363a4f2d30e4b0e70579d3344
'http://security.debian.org/pool/updates/main/e/expat/expat_2.1.0.orig.tar.gz' expat_2.1.0.orig.tar.gz 562616 SHA256:823705472f816df21c8f6aa026dd162b280806838bb55b3432b0fb1fcca7eb86
'http://security.debian.org/pool/updates/main/e/expat/expat_2.1.0-1+deb7u5.debian.tar.gz' expat_2.1.0-1+deb7u5.debian.tar.gz 20362 SHA256:e809d6fc1fc250d716f610541c30ae2669ada9fb943f4243f15eac85185ee661
```

Other potentially useful URLs:

- https://sources.debian.net/src/expat/2.1.0-1+deb7u5/ (for browsing the source)
- https://sources.debian.net/src/expat/2.1.0-1+deb7u5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/expat/2.1.0-1+deb7u5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `findutils=4.4.2-4`

Binary Packages:

- `findutils=4.4.2-4`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.2`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.4.2-4
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.4.2-4.dsc' findutils_4.4.2-4.dsc 1330 SHA256:3f5b523686d3b5ac48cca6728c2cd60de5b4be853a243a9d447480bd14fbff58
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.4.2.orig.tar.gz' findutils_4.4.2.orig.tar.gz 2149838 SHA256:434f32d171cbc0a5e72cfc5372c6fc4cb0e681f8dce566a0de5b6fccd702b62a
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.4.2-4.debian.tar.gz' findutils_4.4.2-4.debian.tar.gz 21825 SHA256:3f947a07efa663af4eb7ab46f30562552ed17cf63d2fb2a67b90770dcf459b93
```

Other potentially useful URLs:

- https://sources.debian.net/src/findutils/4.4.2-4/ (for browsing the source)
- https://sources.debian.net/src/findutils/4.4.2-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/findutils/4.4.2-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `flac=1.2.1-6+deb7u1`

Binary Packages:

- `libflac8:amd64=1.2.1-6+deb7u1`

Licenses: (parsed from: `/usr/share/doc/libflac8/copyright`)

- `GFDL-1.2`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris flac=1.2.1-6+deb7u1
'http://deb.debian.org/debian/pool/main/f/flac/flac_1.2.1-6+deb7u1.dsc' flac_1.2.1-6+deb7u1.dsc 1918 SHA256:4eb0e9064be47a1af602ece230940e9efe91e038a86f42de48ef841598b0615d
'http://deb.debian.org/debian/pool/main/f/flac/flac_1.2.1.orig.tar.gz' flac_1.2.1.orig.tar.gz 2009217 SHA256:9635a44bceb478bbf2ee8a785cf6986fba525afb5fad1fd4bba73cf71f2d3edf
'http://deb.debian.org/debian/pool/main/f/flac/flac_1.2.1-6+deb7u1.diff.gz' flac_1.2.1-6+deb7u1.diff.gz 17154 SHA256:f3675442023ef698369e0f164b6b1ba7ea0674c5ba2490e9ea530178297ad6ee
```

Other potentially useful URLs:

- https://sources.debian.net/src/flac/1.2.1-6+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/flac/1.2.1-6+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/flac/1.2.1-6+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `fontconfig=2.9.0-7.1+deb7u1`

Binary Packages:

- `fontconfig=2.9.0-7.1+deb7u1`
- `fontconfig-config=2.9.0-7.1+deb7u1`
- `libfontconfig1:amd64=2.9.0-7.1+deb7u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.9.0-7.1+deb7u1
'http://security.debian.org/pool/updates/main/f/fontconfig/fontconfig_2.9.0-7.1+deb7u1.dsc' fontconfig_2.9.0-7.1+deb7u1.dsc 2141 SHA256:456cb212d45760f0be87a287a312291fdf687559f2fc5fd9a05fba0ad3e49e10
'http://security.debian.org/pool/updates/main/f/fontconfig/fontconfig_2.9.0.orig.tar.gz' fontconfig_2.9.0.orig.tar.gz 1631768 SHA256:43245d1fb1c1679038aec9271ced5d5f7613935ed21c7c39489f2fc7c7cce531
'http://security.debian.org/pool/updates/main/f/fontconfig/fontconfig_2.9.0-7.1+deb7u1.debian.tar.gz' fontconfig_2.9.0-7.1+deb7u1.debian.tar.gz 54842 SHA256:24ad281e5003ca7575a561e209ecb27a703de956d10dcf00038b558569032c88
```

Other potentially useful URLs:

- https://sources.debian.net/src/fontconfig/2.9.0-7.1+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/fontconfig/2.9.0-7.1+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fontconfig/2.9.0-7.1+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `freetype=2.4.9-1.1+deb7u7`

Binary Packages:

- `libfreetype6:amd64=2.4.9-1.1+deb7u7`

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
$ apt-get source -qq --print-uris freetype=2.4.9-1.1+deb7u7
'http://security.debian.org/pool/updates/main/f/freetype/freetype_2.4.9-1.1+deb7u7.dsc' freetype_2.4.9-1.1+deb7u7.dsc 1823 SHA256:e08860f372af2358d611bd6e6d74b31d1f0fb84f10bb686a0129f668c9a79f91
'http://security.debian.org/pool/updates/main/f/freetype/freetype_2.4.9-1.1+deb7u7.tar.gz' freetype_2.4.9-1.1+deb7u7.tar.gz 1832352 SHA256:23eb1cb785aaea8f9469205141cdd99ed85c682cd6460c0303bb961774edfea3
```

Other potentially useful URLs:

- https://sources.debian.net/src/freetype/2.4.9-1.1+deb7u7/ (for browsing the source)
- https://sources.debian.net/src/freetype/2.4.9-1.1+deb7u7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/freetype/2.4.9-1.1+deb7u7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-4.7=4.7.2-5`

Binary Packages:

- `gcc-4.7-base:amd64=4.7.2-5`
- `libgcc1:amd64=1:4.7.2-5`
- `libstdc++6:amd64=4.7.2-5`

Licenses: (parsed from: `/usr/share/doc/gcc-4.7-base/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libstdc++6/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gcc-4.7=4.7.2-5
'http://deb.debian.org/debian/pool/main/g/gcc-4.7/gcc-4.7_4.7.2-5.dsc' gcc-4.7_4.7.2-5.dsc 7661 SHA256:8f755a0a57a3111473f859816c48f695fc2b0be0b4f0587731fa053452029caf
'http://deb.debian.org/debian/pool/main/g/gcc-4.7/gcc-4.7_4.7.2.orig.tar.gz' gcc-4.7_4.7.2.orig.tar.gz 63335342 SHA256:226cc88e397a3f833400ceddd9b9af9f6093b53c2afece7dfc5b0313634c4760
'http://deb.debian.org/debian/pool/main/g/gcc-4.7/gcc-4.7_4.7.2-5.diff.gz' gcc-4.7_4.7.2-5.diff.gz 988683 SHA256:94beefe23dbcf9a6797cb91108c3bc12b5c43e9ee3cede94b070bb565248fe1f
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-4.7/4.7.2-5/ (for browsing the source)
- https://sources.debian.net/src/gcc-4.7/4.7.2-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-4.7/4.7.2-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gdbm=1.8.3-11`

Binary Packages:

- `libgdbm3:amd64=1.8.3-11`

Licenses: (parsed from: `/usr/share/doc/libgdbm3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.8.3-11
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.8.3-11.dsc' gdbm_1.8.3-11.dsc 1810 SHA256:ea0f696409bda2253ff150ed72e4153c6772cc4d2a6204e7cee3af6786086ea0
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.8.3.orig.tar.bz2' gdbm_1.8.3.orig.tar.bz2 172796 SHA256:1d5995b6e9e6be4ff62c8126d019f184a083dd8e6f75f6c74b9fe023b5b9440e
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.8.3-11.debian.tar.bz2' gdbm_1.8.3-11.debian.tar.bz2 14501 SHA256:f673ffdfc6f6b46a5018d0c076cd4a8393b5715796f96ba3efbf997f44312058
```

Other potentially useful URLs:

- https://sources.debian.net/src/gdbm/1.8.3-11/ (for browsing the source)
- https://sources.debian.net/src/gdbm/1.8.3-11/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gdbm/1.8.3-11/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gdk-pixbuf=2.26.1-1+deb7u6`

Binary Packages:

- `libgdk-pixbuf2.0-0:amd64=2.26.1-1+deb7u6`
- `libgdk-pixbuf2.0-common=2.26.1-1+deb7u6`

Licenses: (parsed from: `/usr/share/doc/libgdk-pixbuf2.0-0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-common/copyright`)

- `GPL-2`
- `LGPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/gdk-pixbuf/2.26.1-1+deb7u6/


### `dpkg` source package: `giflib=4.1.6-10+deb7u1`

Binary Packages:

- `libgif4=4.1.6-10+deb7u1`

Licenses: (parsed from: `/usr/share/doc/libgif4/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris giflib=4.1.6-10+deb7u1
'http://deb.debian.org/debian/pool/main/g/giflib/giflib_4.1.6-10+deb7u1.dsc' giflib_4.1.6-10+deb7u1.dsc 1995 SHA256:69550041e9a0d513ae3443f7e2c0b9cf73513c832c77c711b2443569ce668f6e
'http://deb.debian.org/debian/pool/main/g/giflib/giflib_4.1.6.orig.tar.gz' giflib_4.1.6.orig.tar.gz 636030 SHA256:ceca77dcd29eb6f6d0336414dfecc9094413f71c3b589afcf96bb72fbfb08ce0
'http://deb.debian.org/debian/pool/main/g/giflib/giflib_4.1.6-10+deb7u1.debian.tar.gz' giflib_4.1.6-10+deb7u1.debian.tar.gz 10208 SHA256:91b58127e01784db83cccda2775dab40e7e1db5d1df4088f21f5890869b5a746
```

Other potentially useful URLs:

- https://sources.debian.net/src/giflib/4.1.6-10+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/giflib/4.1.6-10+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/giflib/4.1.6-10+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glib2.0=2.33.12+really2.32.4-5`

Binary Packages:

- `libglib2.0-0:amd64=2.33.12+really2.32.4-5`
- `libglib2.0-data=2.33.12+really2.32.4-5`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`, `/usr/share/doc/libglib2.0-data/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.33.12+really2.32.4-5
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.33.12+really2.32.4-5.dsc' glib2.0_2.33.12+really2.32.4-5.dsc 2949 SHA256:f85e4917a20764b433aecd9da805bd52b34df88ba297e9f09c8205a336cffd93
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.33.12+really2.32.4.orig.tar.xz' glib2.0_2.33.12+really2.32.4.orig.tar.xz 6178556 SHA256:a5d742a4fda22fb6975a8c0cfcd2499dd1c809b8afd4ef709bda4d11b167fae2
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.33.12+really2.32.4-5.debian.tar.gz' glib2.0_2.33.12+really2.32.4-5.debian.tar.gz 64063 SHA256:7324768bc60453dfe84e4a3bb7473ac4bc001965b01645496e6759cf77339159
```

Other potentially useful URLs:

- https://sources.debian.net/src/glib2.0/2.33.12+really2.32.4-5/ (for browsing the source)
- https://sources.debian.net/src/glib2.0/2.33.12+really2.32.4-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glib2.0/2.33.12+really2.32.4-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnupg=1.4.12-7+deb7u9`

Binary Packages:

- `gnupg=1.4.12-7+deb7u9`
- `gpgv=1.4.12-7+deb7u9`

Licenses: (parsed from: `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gpgv/copyright`)

- `GPL-3`
- `GPL-3+ with OpenSSL exception`

Source:

```console
$ apt-get source -qq --print-uris gnupg=1.4.12-7+deb7u9
'http://security.debian.org/pool/updates/main/g/gnupg/gnupg_1.4.12-7+deb7u9.dsc' gnupg_1.4.12-7+deb7u9.dsc 2338 SHA256:8613c9a227b3181870c4573a321787638153cb95cea2e031b908df4d5d0149f8
'http://security.debian.org/pool/updates/main/g/gnupg/gnupg_1.4.12.orig.tar.gz' gnupg_1.4.12.orig.tar.gz 4939171 SHA256:bb94222fa263e55a5096fdc1c6cd60e9992602ce5067bc453a4ada77bb31e367
'http://security.debian.org/pool/updates/main/g/gnupg/gnupg_1.4.12-7+deb7u9.debian.tar.gz' gnupg_1.4.12-7+deb7u9.debian.tar.gz 125126 SHA256:c1727f6f4f96c1f970ed3bf9be29c8f0f81cc428c4e0132a69889fa9c87bc38c
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnupg/1.4.12-7+deb7u9/ (for browsing the source)
- https://sources.debian.net/src/gnupg/1.4.12-7+deb7u9/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnupg/1.4.12-7+deb7u9/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnutls26=2.12.20-8+deb7u5`

Binary Packages:

- `libgnutls26:amd64=2.12.20-8+deb7u5`

Licenses: (parsed from: `/usr/share/doc/libgnutls26/copyright`)

- `GFDL-1.3`
- `GPL`
- `LGPL`
- `LGPL-2.1`
- `The main library is licensed under GNU Lesser General Public`

Source:

```console
$ apt-get source -qq --print-uris gnutls26=2.12.20-8+deb7u5
'http://deb.debian.org/debian/pool/main/g/gnutls26/gnutls26_2.12.20-8+deb7u5.dsc' gnutls26_2.12.20-8+deb7u5.dsc 2684 SHA256:fd27cdddfd90906247ba0cb8ac6396fde627a20270f17f7894482df6e1b23f52
'http://deb.debian.org/debian/pool/main/g/gnutls26/gnutls26_2.12.20.orig.tar.bz2' gnutls26_2.12.20.orig.tar.bz2 7231438 SHA256:4884eafcc8383ed23209199bbc72ad04f4eb94955a50a594125ff34c6889c564
'http://deb.debian.org/debian/pool/main/g/gnutls26/gnutls26_2.12.20-8+deb7u5.debian.tar.gz' gnutls26_2.12.20-8+deb7u5.debian.tar.gz 36298 SHA256:ea529b5cbc3db553eea0bf80905e5e2e02a9a27b8675fa9e13fed0f3296e499b
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnutls26/2.12.20-8+deb7u5/ (for browsing the source)
- https://sources.debian.net/src/gnutls26/2.12.20-8+deb7u5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnutls26/2.12.20-8+deb7u5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `grep=2.12-2`

Binary Packages:

- `grep=2.12-2`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris grep=2.12-2
'http://deb.debian.org/debian/pool/main/g/grep/grep_2.12-2.dsc' grep_2.12-2.dsc 1262 SHA256:a6a63fd21da40d11ce6ae2bc6f633bd27cd206c2348b2ef306e1b68120f7e58e
'http://deb.debian.org/debian/pool/main/g/grep/grep_2.12.orig.tar.bz2' grep_2.12.orig.tar.bz2 1566084 SHA256:0119987171cd60b87c89557524fc6636bdad770dae71917adcaef6abffb1be67
'http://deb.debian.org/debian/pool/main/g/grep/grep_2.12-2.debian.tar.bz2' grep_2.12-2.debian.tar.bz2 13641 SHA256:37887d8aecec66e75365abd8c41be94f75e7a3acf1d6b27fc121584f47281525
```

Other potentially useful URLs:

- https://sources.debian.net/src/grep/2.12-2/ (for browsing the source)
- https://sources.debian.net/src/grep/2.12-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/grep/2.12-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gtk+2.0=2.24.10-2`

Binary Packages:

- `libgtk2.0-0:amd64=2.24.10-2`
- `libgtk2.0-bin=2.24.10-2`
- `libgtk2.0-common=2.24.10-2`

Licenses: (parsed from: `/usr/share/doc/libgtk2.0-0/copyright`, `/usr/share/doc/libgtk2.0-bin/copyright`, `/usr/share/doc/libgtk2.0-common/copyright`)

- `LGPL-2`
- `other`

Source:

```console
$ apt-get source -qq --print-uris gtk+2.0=2.24.10-2
'http://deb.debian.org/debian/pool/main/g/gtk+2.0/gtk+2.0_2.24.10-2.dsc' gtk+2.0_2.24.10-2.dsc 3649 SHA256:d8d8e7c3445b927178216d24f65119f7301513f3fe84bd36c907ab34daadafeb
'http://deb.debian.org/debian/pool/main/g/gtk+2.0/gtk+2.0_2.24.10.orig.tar.xz' gtk+2.0_2.24.10.orig.tar.xz 13261132 SHA256:ea56e31bb9d6e19ed2e8911f4c7ac493cb804431caa21cdcadae625d375a0e89
'http://deb.debian.org/debian/pool/main/g/gtk+2.0/gtk+2.0_2.24.10-2.debian.tar.gz' gtk+2.0_2.24.10-2.debian.tar.gz 105682 SHA256:d320a33f9b76f999e5f8603ce21bb49edb47acddd987c3a5469e0d8766be4c78
```

Other potentially useful URLs:

- https://sources.debian.net/src/gtk+2.0/2.24.10-2/ (for browsing the source)
- https://sources.debian.net/src/gtk+2.0/2.24.10-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gtk+2.0/2.24.10-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gzip=1.5-1.1`

Binary Packages:

- `gzip=1.5-1.1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.5-1.1
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.5-1.1.dsc' gzip_1.5-1.1.dsc 1868 SHA256:789edb086c0c685f11eca98a54128c0d13e5d98f8b73c1088e94e2f9828fc603
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.5.orig.tar.gz' gzip_1.5.orig.tar.gz 1114684 SHA256:b5d56e8ffc9918e8c941fab56e04121194f9870adeeb859e09c09eac264035a3
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.5-1.1.debian.tar.gz' gzip_1.5-1.1.debian.tar.gz 15080 SHA256:33cd6c5c3290aaad5050917e443c943299e6a216631775db097a8a1175667ae9
```

Other potentially useful URLs:

- https://sources.debian.net/src/gzip/1.5-1.1/ (for browsing the source)
- https://sources.debian.net/src/gzip/1.5-1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gzip/1.5-1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `hicolor-icon-theme=0.12-1`

Binary Packages:

- `hicolor-icon-theme=0.12-1`

Licenses: (parsed from: `/usr/share/doc/hicolor-icon-theme/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris hicolor-icon-theme=0.12-1
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.12-1.dsc' hicolor-icon-theme_0.12-1.dsc 1206 SHA256:277c1333bea5ae99c6ef7693818e0cb52f191da568711c9ad2c33028283c4b2b
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.12.orig.tar.gz' hicolor-icon-theme_0.12.orig.tar.gz 38008 SHA256:9edca690617eaa19054951ca53501c802180262be8880ed84754ac46c93bec73
'http://deb.debian.org/debian/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.12-1.debian.tar.gz' hicolor-icon-theme_0.12-1.debian.tar.gz 3511 SHA256:b5db57ff0f540c569079d00405fbdd0685bf54bcc3c0749aa7bf20bc4698a6f0
```

Other potentially useful URLs:

- https://sources.debian.net/src/hicolor-icon-theme/0.12-1/ (for browsing the source)
- https://sources.debian.net/src/hicolor-icon-theme/0.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/hicolor-icon-theme/0.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `hostname=3.11`

Binary Packages:

- `hostname=3.11`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.11
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.11.dsc' hostname_3.11.dsc 804 SHA256:961ef1eba56cfdf4e4a6888c8d8e0e255a336fcfbe3b5705b0f3b6f6e6560c75
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.11.tar.gz' hostname_3.11.tar.gz 13539 SHA256:8492e822e25f7f8af225a00dfe9c4aa8113e927fe21194a39e2f81c17ce85ee1
```

Other potentially useful URLs:

- https://sources.debian.net/src/hostname/3.11/ (for browsing the source)
- https://sources.debian.net/src/hostname/3.11/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/hostname/3.11/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `icedtea-web=1.4-3~deb7u3`

Binary Packages:

- `icedtea-netx:amd64=1.4-3~deb7u3`
- `icedtea-netx-common=1.4-3~deb7u3`

Licenses: (parsed from: `/usr/share/doc/icedtea-netx/copyright`, `/usr/share/doc/icedtea-netx-common/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris icedtea-web=1.4-3~deb7u3
'http://security.debian.org/pool/updates/main/i/icedtea-web/icedtea-web_1.4-3~deb7u3.dsc' icedtea-web_1.4-3~deb7u3.dsc 2447 SHA256:0e1fe25f6bc05648ee110e642d2238746b78375236411e65d9dae6d7897f8e24
'http://security.debian.org/pool/updates/main/i/icedtea-web/icedtea-web_1.4.orig.tar.gz' icedtea-web_1.4.orig.tar.gz 1364883 SHA256:e53a41fa132e086fa8d17cadf1e7e38cb3ab99577277949fbcae4ab8705245fb
'http://security.debian.org/pool/updates/main/i/icedtea-web/icedtea-web_1.4-3~deb7u3.debian.tar.gz' icedtea-web_1.4-3~deb7u3.debian.tar.gz 32198 SHA256:a4bf4d41e3e8506af3d1e72c2c3570552fff0fb54e8126afc2f13c7ba5c43c59
```

Other potentially useful URLs:

- https://sources.debian.net/src/icedtea-web/1.4-3~deb7u3/ (for browsing the source)
- https://sources.debian.net/src/icedtea-web/1.4-3~deb7u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/icedtea-web/1.4-3~deb7u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ifupdown=0.7.8`

Binary Packages:

- `ifupdown=0.7.8`

Licenses: (parsed from: `/usr/share/doc/ifupdown/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ifupdown=0.7.8
'http://deb.debian.org/debian/pool/main/i/ifupdown/ifupdown_0.7.8.dsc' ifupdown_0.7.8.dsc 1589 SHA256:50ba1c2856333ca463166bfb8281349a1ae18570b720609b79e51150d36a185b
'http://deb.debian.org/debian/pool/main/i/ifupdown/ifupdown_0.7.8.tar.gz' ifupdown_0.7.8.tar.gz 107183 SHA256:6486e41660a75e1293a2fc92a8a278baf67843a263ced68767a50fa5b74c55c8
```

Other potentially useful URLs:

- https://sources.debian.net/src/ifupdown/0.7.8/ (for browsing the source)
- https://sources.debian.net/src/ifupdown/0.7.8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ifupdown/0.7.8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `insserv=1.14.0-5`

Binary Packages:

- `insserv=1.14.0-5`

Licenses: (parsed from: `/usr/share/doc/insserv/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris insserv=1.14.0-5
'http://deb.debian.org/debian/pool/main/i/insserv/insserv_1.14.0-5.dsc' insserv_1.14.0-5.dsc 1947 SHA256:183dbcd57db6061d61e781197231275fe49c321f6600ec147546d5c24a8ba021
'http://deb.debian.org/debian/pool/main/i/insserv/insserv_1.14.0.orig.tar.gz' insserv_1.14.0.orig.tar.gz 53851 SHA256:da74dcf5225a00aa8aef4d5afc6a20e009b2ed9af328dabd55fef1cb3a32140e
'http://deb.debian.org/debian/pool/main/i/insserv/insserv_1.14.0-5.debian.tar.gz' insserv_1.14.0-5.debian.tar.gz 53943 SHA256:496a3ece3cf4b53ff19f45eeffab6b5a7714785d1db524087c9cbe9cbdd88b2a
```

Other potentially useful URLs:

- https://sources.debian.net/src/insserv/1.14.0-5/ (for browsing the source)
- https://sources.debian.net/src/insserv/1.14.0-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/insserv/1.14.0-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `iproute=20120521-3`

Binary Packages:

- `iproute=20120521-3+b3`

Licenses: (parsed from: `/usr/share/doc/iproute/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris iproute=20120521-3
'http://deb.debian.org/debian/pool/main/i/iproute/iproute_20120521-3.dsc' iproute_20120521-3.dsc 1580 SHA256:53cb5b2c105ba9fe59a0aa3d9b2f63b4da029b6110beb10812f933743a0c0deb
'http://deb.debian.org/debian/pool/main/i/iproute/iproute_20120521.orig.tar.xz' iproute_20120521.orig.tar.xz 382092 SHA256:38e846e412b2fa235a447b50c20ad1e9770d1b3ed4d3ab18ca0b18c6e8b79ba4
'http://deb.debian.org/debian/pool/main/i/iproute/iproute_20120521-3.debian.tar.gz' iproute_20120521-3.debian.tar.gz 26344 SHA256:96ed32bf753ebb8734ff02b411507253ae376f04e7a4772ec098246ff5fafa8c
```

Other potentially useful URLs:

- https://sources.debian.net/src/iproute/20120521-3/ (for browsing the source)
- https://sources.debian.net/src/iproute/20120521-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/iproute/20120521-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `jasper=1.900.1-13+deb7u6`

Binary Packages:

- `libjasper1:amd64=1.900.1-13+deb7u6`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris jasper=1.900.1-13+deb7u6
'http://security.debian.org/pool/updates/main/j/jasper/jasper_1.900.1-13+deb7u6.dsc' jasper_1.900.1-13+deb7u6.dsc 2051 SHA256:5557e601b45d56b4e9a378de8ed0dbf20238a3ca6be50d410e10b537b0b7c61e
'http://security.debian.org/pool/updates/main/j/jasper/jasper_1.900.1.orig.tar.gz' jasper_1.900.1.orig.tar.gz 1143400 SHA256:6cf104e2811f6088ca1dc76d87dd27c55178d3ccced20db8858d28ae22911a94
'http://security.debian.org/pool/updates/main/j/jasper/jasper_1.900.1-13+deb7u6.debian.tar.gz' jasper_1.900.1-13+deb7u6.debian.tar.gz 40166 SHA256:66218e510c7cef7b4744b66c8eed10e4842ca95119401df4109d4fbc61eb1595
```

Other potentially useful URLs:

- https://sources.debian.net/src/jasper/1.900.1-13+deb7u6/ (for browsing the source)
- https://sources.debian.net/src/jasper/1.900.1-13+deb7u6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/jasper/1.900.1-13+deb7u6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `java-atk-wrapper=0.30.4-3`

Binary Packages:

- `libatk-wrapper-java=0.30.4-3`
- `libatk-wrapper-java-jni:amd64=0.30.4-3`

Licenses: (parsed from: `/usr/share/doc/libatk-wrapper-java/copyright`, `/usr/share/doc/libatk-wrapper-java-jni/copyright`)

- `GPL-3`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris java-atk-wrapper=0.30.4-3
'http://deb.debian.org/debian/pool/main/j/java-atk-wrapper/java-atk-wrapper_0.30.4-3.dsc' java-atk-wrapper_0.30.4-3.dsc 2228 SHA256:025fc975b93774ecaaf128f786eb334f03ae928ffbda0271e2fd496611ac88b6
'http://deb.debian.org/debian/pool/main/j/java-atk-wrapper/java-atk-wrapper_0.30.4.orig.tar.bz2' java-atk-wrapper_0.30.4.orig.tar.bz2 272549 SHA256:24518862452a09448a6db22a40a2a533596e88fc66fcadc25d581c716b40a2d8
'http://deb.debian.org/debian/pool/main/j/java-atk-wrapper/java-atk-wrapper_0.30.4-3.debian.tar.bz2' java-atk-wrapper_0.30.4-3.debian.tar.bz2 2603 SHA256:ba1d8f8c30b7331829fcabbd52abdc4b64cea24674e833c5097d18847d5997a4
```

Other potentially useful URLs:

- https://sources.debian.net/src/java-atk-wrapper/0.30.4-3/ (for browsing the source)
- https://sources.debian.net/src/java-atk-wrapper/0.30.4-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/java-atk-wrapper/0.30.4-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `java-common=0.47+deb7u2`

Binary Packages:

- `java-common=0.47+deb7u2`

Licenses: (parsed from: `/usr/share/doc/java-common/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris java-common=0.47+deb7u2
'http://security.debian.org/pool/updates/main/j/java-common/java-common_0.47+deb7u2.dsc' java-common_0.47+deb7u2.dsc 2176 SHA256:44d2499989edba7b747c7eb1a56db962f7b99ed750490ce5f631e503edfc399d
'http://security.debian.org/pool/updates/main/j/java-common/java-common_0.47+deb7u2.tar.gz' java-common_0.47+deb7u2.tar.gz 53746 SHA256:95bf99e22e505b877c053b9c9b024282c29fae9a6b3dfda4cc9a54bb195402fb
```

Other potentially useful URLs:

- https://sources.debian.net/src/java-common/0.47+deb7u2/ (for browsing the source)
- https://sources.debian.net/src/java-common/0.47+deb7u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/java-common/0.47+deb7u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `jbigkit=2.0-2+deb7u1`

Binary Packages:

- `libjbig0:amd64=2.0-2+deb7u1`

Licenses: (parsed from: `/usr/share/doc/libjbig0/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris jbigkit=2.0-2+deb7u1
'http://deb.debian.org/debian/pool/main/j/jbigkit/jbigkit_2.0-2+deb7u1.dsc' jbigkit_2.0-2+deb7u1.dsc 1934 SHA256:685c1d61d4c430cfc744519ce464d88cdabe5b7206d2f26b2e573084c67428ca
'http://deb.debian.org/debian/pool/main/j/jbigkit/jbigkit_2.0.orig.tar.gz' jbigkit_2.0.orig.tar.gz 435027 SHA256:f6be61695d18d6315961e473eda92252fdecf9636903bfbf4766a2eeff1f17ee
'http://deb.debian.org/debian/pool/main/j/jbigkit/jbigkit_2.0-2+deb7u1.debian.tar.gz' jbigkit_2.0-2+deb7u1.debian.tar.gz 6261 SHA256:3e1540a394620ea870d5c6ec61e4b92c23ea47f0cf263aa18f908096df64db89
```

Other potentially useful URLs:

- https://sources.debian.net/src/jbigkit/2.0-2+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/jbigkit/2.0-2+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/jbigkit/2.0-2+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `json-c=0.10-1.2`

Binary Packages:

- `libjson0:amd64=0.10-1.2`

Licenses: (parsed from: `/usr/share/doc/libjson0/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris json-c=0.10-1.2
'http://deb.debian.org/debian/pool/main/j/json-c/json-c_0.10-1.2.dsc' json-c_0.10-1.2.dsc 1803 SHA256:0e43bda97e03663600088b0cbc0ed2aaa5179283a4f481a8881b836f418b9867
'http://deb.debian.org/debian/pool/main/j/json-c/json-c_0.10.orig.tar.gz' json-c_0.10.orig.tar.gz 389230 SHA256:6601f2882a9f69644591d1edd3832c90169e0bc45dff18494a892ad4efe82f59
'http://deb.debian.org/debian/pool/main/j/json-c/json-c_0.10-1.2.debian.tar.gz' json-c_0.10-1.2.debian.tar.gz 3930 SHA256:b2154dc98e7913a2574f70d36b51b513640fc19961fcf54e5d8826872738d650
```

Other potentially useful URLs:

- https://sources.debian.net/src/json-c/0.10-1.2/ (for browsing the source)
- https://sources.debian.net/src/json-c/0.10-1.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/json-c/0.10-1.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `keyutils=1.5.5-3+deb7u1`

Binary Packages:

- `libkeyutils1:amd64=1.5.5-3+deb7u1`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.5.5-3+deb7u1
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.5-3+deb7u1.dsc' keyutils_1.5.5-3+deb7u1.dsc 1888 SHA256:e76a8b97fea9d7a7659ec50540660419c1f2ab03a91310ae4aa2077401b71d07
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.5.orig.tar.xz' keyutils_1.5.5.orig.tar.xz 62712 SHA256:30dc8e0020a10103ff0f9611204f9fab68b6366f5c084c5552070a2eac494457
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.5-3+deb7u1.debian.tar.xz' keyutils_1.5.5-3+deb7u1.debian.tar.xz 6040 SHA256:ed9422d02b5e8d4d5a42cf7c68e1996f3ac1acd8c032128baf6267443338c5a2
```

Other potentially useful URLs:

- https://sources.debian.net/src/keyutils/1.5.5-3+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/keyutils/1.5.5-3+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/keyutils/1.5.5-3+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `krb5=1.10.1+dfsg-5+deb7u8`

Binary Packages:

- `krb5-locales=1.10.1+dfsg-5+deb7u8`
- `libgssapi-krb5-2:amd64=1.10.1+dfsg-5+deb7u8`
- `libk5crypto3:amd64=1.10.1+dfsg-5+deb7u8`
- `libkrb5-3:amd64=1.10.1+dfsg-5+deb7u8`
- `libkrb5support0:amd64=1.10.1+dfsg-5+deb7u8`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/krb5/1.10.1+dfsg-5+deb7u8/


### `dpkg` source package: `lcms2=2.2+git20110628-2.2+deb7u2`

Binary Packages:

- `liblcms2-2:amd64=2.2+git20110628-2.2+deb7u2`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris lcms2=2.2+git20110628-2.2+deb7u2
'http://security.debian.org/pool/updates/main/l/lcms2/lcms2_2.2+git20110628-2.2+deb7u2.dsc' lcms2_2.2+git20110628-2.2+deb7u2.dsc 2018 SHA256:00d0fc32c074e6de8903195ee5b8d3fe6d1b402c88e991e7ff76254740bf8636
'http://security.debian.org/pool/updates/main/l/lcms2/lcms2_2.2+git20110628.orig.tar.gz' lcms2_2.2+git20110628.orig.tar.gz 4201101 SHA256:3b91fe90ef858d43524a513275af1fb43a6ea9f44221a20a00cf6818d8a60833
'http://security.debian.org/pool/updates/main/l/lcms2/lcms2_2.2+git20110628-2.2+deb7u2.debian.tar.gz' lcms2_2.2+git20110628-2.2+deb7u2.debian.tar.gz 7039 SHA256:bf2f7d979fb4dfb07f357e6d2ed0489107d502e5de72161a76ebe1897398b55f
```

Other potentially useful URLs:

- https://sources.debian.net/src/lcms2/2.2+git20110628-2.2+deb7u2/ (for browsing the source)
- https://sources.debian.net/src/lcms2/2.2+git20110628-2.2+deb7u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lcms2/2.2+git20110628-2.2+deb7u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libasyncns=0.8-4`

Binary Packages:

- `libasyncns0:amd64=0.8-4`

Licenses: (parsed from: `/usr/share/doc/libasyncns0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libasyncns=0.8-4
'http://deb.debian.org/debian/pool/main/liba/libasyncns/libasyncns_0.8-4.dsc' libasyncns_0.8-4.dsc 1497 SHA256:496049b76e7eeea103b4172a70d5c331c84eee0cbcd21d9854becd0b33336c04
'http://deb.debian.org/debian/pool/main/liba/libasyncns/libasyncns_0.8.orig.tar.gz' libasyncns_0.8.orig.tar.gz 341591 SHA256:4f1a66e746cbe54ff3c2fbada5843df4fbbbe7481d80be003e8d11161935ab74
'http://deb.debian.org/debian/pool/main/liba/libasyncns/libasyncns_0.8-4.debian.tar.gz' libasyncns_0.8-4.debian.tar.gz 4265 SHA256:29fdd065ecdfa7a9cbf4d9c858231e28568e1cdac864a20cbde408b218905809
```

Other potentially useful URLs:

- https://sources.debian.net/src/libasyncns/0.8-4/ (for browsing the source)
- https://sources.debian.net/src/libasyncns/0.8-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libasyncns/0.8-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcap2=1:2.22-1.2`

Binary Packages:

- `libcap2:amd64=1:2.22-1.2`

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libcap2=1:2.22-1.2
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.22-1.2.dsc' libcap2_2.22-1.2.dsc 2008 SHA256:4d33b75f8df1653e9663c0c4d8cae96e708c359591eef32b0669081bf9fc8b49
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.22.orig.tar.gz' libcap2_2.22.orig.tar.gz 67432 SHA256:e1cae65d8febf2579be37c255d2e058715785ead481a4e6a4357a06aff84721f
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.22-1.2.debian.tar.gz' libcap2_2.22-1.2.debian.tar.gz 8617 SHA256:b70ace8971afaeeee88594426c4c2c4d02033dfeea5e3ed657c9f95c885bd050
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcap2/1:2.22-1.2/ (for browsing the source)
- https://sources.debian.net/src/libcap2/1:2.22-1.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcap2/1:2.22-1.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libclass-isa-perl=0.36-3`

Binary Packages:

- `libclass-isa-perl=0.36-3`

Licenses: (parsed from: `/usr/share/doc/libclass-isa-perl/copyright`)

- `Artistic`
- `GPL`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libclass-isa-perl=0.36-3
'http://deb.debian.org/debian/pool/main/libc/libclass-isa-perl/libclass-isa-perl_0.36-3.dsc' libclass-isa-perl_0.36-3.dsc 1389 SHA256:dd68579924318e49118eb71f81ac7ab88ddeed7f350b4d773360781fbc633da8
'http://deb.debian.org/debian/pool/main/libc/libclass-isa-perl/libclass-isa-perl_0.36.orig.tar.gz' libclass-isa-perl_0.36.orig.tar.gz 6056 SHA256:8816f34e9a38e849a10df756030dccf9fe061a196c11ac3faafd7113c929b964
'http://deb.debian.org/debian/pool/main/libc/libclass-isa-perl/libclass-isa-perl_0.36-3.debian.tar.gz' libclass-isa-perl_0.36-3.debian.tar.gz 2354 SHA256:9d7b698160f735ba50e5e25bbabab6a6ec57cb65c15738600fd6cea1d1947df6
```

Other potentially useful URLs:

- https://sources.debian.net/src/libclass-isa-perl/0.36-3/ (for browsing the source)
- https://sources.debian.net/src/libclass-isa-perl/0.36-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libclass-isa-perl/0.36-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libdatrie=0.2.5-3`

Binary Packages:

- `libdatrie1:amd64=0.2.5-3`

Licenses: (parsed from: `/usr/share/doc/libdatrie1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libdatrie=0.2.5-3
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.5-3.dsc' libdatrie_0.2.5-3.dsc 2088 SHA256:d38666c275d8690cbcfcef90d50860d220670dad28c5f453283befc273963d38
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.5.orig.tar.gz' libdatrie_0.2.5.orig.tar.gz 381307 SHA256:e9f3c82e2f157341e88836dbc048da61c320bcc43c42781d7f7944a18f2415b8
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.5-3.debian.tar.gz' libdatrie_0.2.5-3.debian.tar.gz 7006 SHA256:5c04454b22b08f0adffdf7e02acbab66d7ac050235bf8803a865d8fd86e57356
```

Other potentially useful URLs:

- https://sources.debian.net/src/libdatrie/0.2.5-3/ (for browsing the source)
- https://sources.debian.net/src/libdatrie/0.2.5-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libdatrie/0.2.5-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libffi=3.0.10-3+deb7u2`

Binary Packages:

- `libffi5:amd64=3.0.10-3+deb7u2`

Licenses: (parsed from: `/usr/share/doc/libffi5/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.0.10-3+deb7u2
'http://security.debian.org/pool/updates/main/libf/libffi/libffi_3.0.10-3+deb7u2.dsc' libffi_3.0.10-3+deb7u2.dsc 2258 SHA256:39b6a4d9995bb25d7df49766db41550f25b8caef49e6c45ec2b8ccf97802f89b
'http://security.debian.org/pool/updates/main/libf/libffi/libffi_3.0.10.orig.tar.gz' libffi_3.0.10.orig.tar.gz 753346 SHA256:f01eb9027e9eb56aeaeef636649877756d475d714ef8b47f627f65bc5f3b492f
'http://security.debian.org/pool/updates/main/libf/libffi/libffi_3.0.10-3+deb7u2.diff.gz' libffi_3.0.10-3+deb7u2.diff.gz 21140 SHA256:67d25925a375e7b8a54616801abd440d6bd42e82298932652c66aa4c3d01bfbc
```

Other potentially useful URLs:

- https://sources.debian.net/src/libffi/3.0.10-3+deb7u2/ (for browsing the source)
- https://sources.debian.net/src/libffi/3.0.10-3+deb7u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libffi/3.0.10-3+deb7u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgcrypt11=1.5.0-5+deb7u6`

Binary Packages:

- `libgcrypt11:amd64=1.5.0-5+deb7u6`

Licenses: (parsed from: `/usr/share/doc/libgcrypt11/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt11=1.5.0-5+deb7u6
'http://security.debian.org/pool/updates/main/libg/libgcrypt11/libgcrypt11_1.5.0-5+deb7u6.dsc' libgcrypt11_1.5.0-5+deb7u6.dsc 2488 SHA256:42d5191ac23cb81c2958f6e89f706c80786dfbce5e53827b979a5aa578d60f4c
'http://security.debian.org/pool/updates/main/libg/libgcrypt11/libgcrypt11_1.5.0.orig.tar.bz2' libgcrypt11_1.5.0.orig.tar.bz2 1433506 SHA256:4b62fc516004940a0571025401a0581d49199f1a76dfb5ce6fd63f50db8173fa
'http://security.debian.org/pool/updates/main/libg/libgcrypt11/libgcrypt11_1.5.0-5+deb7u6.debian.tar.gz' libgcrypt11_1.5.0-5+deb7u6.debian.tar.gz 38896 SHA256:112613559143ec5f35f809c31e8fb3ae7f64d944df5111d172fb72fe6b159bd3
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgcrypt11/1.5.0-5+deb7u6/ (for browsing the source)
- https://sources.debian.net/src/libgcrypt11/1.5.0-5+deb7u6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgcrypt11/1.5.0-5+deb7u6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgpg-error=1.10-3.1`

Binary Packages:

- `libgpg-error0:amd64=1.10-3.1`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.10-3.1
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.10-3.1.dsc' libgpg-error_1.10-3.1.dsc 1958 SHA256:9627c6fbb0ddcccc7300c6d57e798562efd8e226ab877a28006249f240ba497f
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.10.orig.tar.bz2' libgpg-error_1.10.orig.tar.bz2 439213 SHA256:520629b4568b5c29b1991c8ffc267c8bdee5f223c7333c42a651b56f9b1c5431
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.10-3.1.debian.tar.gz' libgpg-error_1.10-3.1.debian.tar.gz 309719 SHA256:712f5ef6d358c5c8d74f029bf8fde3b7f15afc15d59f5700398e314197c317fd
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgpg-error/1.10-3.1/ (for browsing the source)
- https://sources.debian.net/src/libgpg-error/1.10-3.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgpg-error/1.10-3.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libice=2:1.0.8-2`

Binary Packages:

- `libice-dev:amd64=2:1.0.8-2`
- `libice6:amd64=2:1.0.8-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libice=2:1.0.8-2
'http://deb.debian.org/debian/pool/main/libi/libice/libice_1.0.8-2.dsc' libice_1.0.8-2.dsc 2132 SHA256:296c379df1524f3435b9fc43e9eb28f274c0ebff7a5b17c605c2214a8916eae8
'http://deb.debian.org/debian/pool/main/libi/libice/libice_1.0.8.orig.tar.gz' libice_1.0.8.orig.tar.gz 438947 SHA256:8332018b07ec38a4a35a360b39f7391c58d053ce5f676aa457b1a686b0277cc0
'http://deb.debian.org/debian/pool/main/libi/libice/libice_1.0.8-2.diff.gz' libice_1.0.8-2.diff.gz 15480 SHA256:1c0d0174a668ced313c2478d733318ba0769892bbf12def235e2261277916a8a
```

Other potentially useful URLs:

- https://sources.debian.net/src/libice/2:1.0.8-2/ (for browsing the source)
- https://sources.debian.net/src/libice/2:1.0.8-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libice/2:1.0.8-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libjpeg8=8d-1+deb7u1`

Binary Packages:

- `libjpeg8:amd64=8d-1+deb7u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libjpeg8=8d-1+deb7u1
'http://deb.debian.org/debian/pool/main/libj/libjpeg8/libjpeg8_8d-1+deb7u1.dsc' libjpeg8_8d-1+deb7u1.dsc 1831 SHA256:72f107690b0fe07cc9b155ec1cfef3f20be0b3a45478b65084849ecd11859066
'http://deb.debian.org/debian/pool/main/libj/libjpeg8/libjpeg8_8d.orig.tar.gz' libjpeg8_8d.orig.tar.gz 991456 SHA256:00029b1473f0f0ea72fbca3230e8cb25797fbb27e58ae2e46bb8bf5a806fe0b3
'http://deb.debian.org/debian/pool/main/libj/libjpeg8/libjpeg8_8d-1+deb7u1.debian.tar.gz' libjpeg8_8d-1+deb7u1.debian.tar.gz 14766 SHA256:d9d56f9f88017d6390578c440f38e156969b9ceaf87e065914e5197973bb21e2
```

Other potentially useful URLs:

- https://sources.debian.net/src/libjpeg8/8d-1+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/libjpeg8/8d-1+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libjpeg8/8d-1+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `liblocale-gettext-perl=1.05-7`

Binary Packages:

- `liblocale-gettext-perl=1.05-7+b1`

Licenses: (parsed from: `/usr/share/doc/liblocale-gettext-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris liblocale-gettext-perl=1.05-7
'http://deb.debian.org/debian/pool/main/libl/liblocale-gettext-perl/liblocale-gettext-perl_1.05-7.dsc' liblocale-gettext-perl_1.05-7.dsc 2070 SHA256:998b02978df2f071ce70d49f61cfc1459662c0fc67ad20f0d50508b2be351f93
'http://deb.debian.org/debian/pool/main/libl/liblocale-gettext-perl/liblocale-gettext-perl_1.05.orig.tar.gz' liblocale-gettext-perl_1.05.orig.tar.gz 7693 SHA256:27367f3dc1be79c9ed178732756e37e4cfce45f9e2a27ebf26e1f40d80124694
'http://deb.debian.org/debian/pool/main/libl/liblocale-gettext-perl/liblocale-gettext-perl_1.05-7.debian.tar.gz' liblocale-gettext-perl_1.05-7.debian.tar.gz 5552 SHA256:c9faecf09dcae346cedea54988f72be203f21b16227a0879bac9816ef100c560
```

Other potentially useful URLs:

- https://sources.debian.net/src/liblocale-gettext-perl/1.05-7/ (for browsing the source)
- https://sources.debian.net/src/liblocale-gettext-perl/1.05-7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/liblocale-gettext-perl/1.05-7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libogg=1.3.0-4`

Binary Packages:

- `libogg0:amd64=1.3.0-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libogg=1.3.0-4
'http://deb.debian.org/debian/pool/main/libo/libogg/libogg_1.3.0-4.dsc' libogg_1.3.0-4.dsc 1203 SHA256:a660c62e6cd6384309a4c2a88a8ecb2f90c6d80ef1e44e0b296be15da59abfa4
'http://deb.debian.org/debian/pool/main/libo/libogg/libogg_1.3.0.orig.tar.gz' libogg_1.3.0.orig.tar.gz 422210 SHA256:fc7bbc7f08238e816b0e6544e35ad2624a02d9d65ad551797e9b5b66d2b8233c
'http://deb.debian.org/debian/pool/main/libo/libogg/libogg_1.3.0-4.diff.gz' libogg_1.3.0-4.diff.gz 6852 SHA256:925f61581a0c57dafdda5525a837140492f7bb49c3f2daedcd1ba319e1e03e74
```

Other potentially useful URLs:

- https://sources.debian.net/src/libogg/1.3.0-4/ (for browsing the source)
- https://sources.debian.net/src/libogg/1.3.0-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libogg/1.3.0-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpng=1.2.49-1+deb7u2`

Binary Packages:

- `libpng12-0:amd64=1.2.49-1+deb7u2`

Licenses: (parsed from: `/usr/share/doc/libpng12-0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libpng=1.2.49-1+deb7u2
'http://deb.debian.org/debian/pool/main/libp/libpng/libpng_1.2.49-1+deb7u2.dsc' libpng_1.2.49-1+deb7u2.dsc 1987 SHA256:9386a11848d1913d4e091e29d069693ba0a232b85d2fb32112d3b0c000a09f5d
'http://deb.debian.org/debian/pool/main/libp/libpng/libpng_1.2.49.orig.tar.bz2' libpng_1.2.49.orig.tar.bz2 669011 SHA256:fbf8faa70ebca2ed2ee6df6f2249f4722517b581af5b6c3c71bbdaf925d5954e
'http://deb.debian.org/debian/pool/main/libp/libpng/libpng_1.2.49-1+deb7u2.debian.tar.bz2' libpng_1.2.49-1+deb7u2.debian.tar.bz2 19640 SHA256:76b2cf0247a62cb41eabc1a5ba4b6599ad73c56654700040bf23e7c6d8c627a7
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpng/1.2.49-1+deb7u2/ (for browsing the source)
- https://sources.debian.net/src/libpng/1.2.49-1+deb7u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpng/1.2.49-1+deb7u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpthread-stubs=0.3-3`

Binary Packages:

- `libpthread-stubs0:amd64=0.3-3`
- `libpthread-stubs0-dev:amd64=0.3-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libpthread-stubs=0.3-3
'http://deb.debian.org/debian/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3-3.dsc' libpthread-stubs_0.3-3.dsc 2062 SHA256:55e98ef5317eccbc3dacdbb03f43a8c6ea53a576b53b9f1e1490ecfb798cf31a
'http://deb.debian.org/debian/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3.orig.tar.gz' libpthread-stubs_0.3.orig.tar.gz 272939 SHA256:3031f466cf0b06de6b3ccbf2019d15c4fcf75229b7d226a711bc1885b3a82cde
'http://deb.debian.org/debian/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3-3.diff.gz' libpthread-stubs_0.3-3.diff.gz 2747 SHA256:a743fb67637d5bb12a4331fa1ea4a443664873a7cf2e4f00e3f9977320d12cbd
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpthread-stubs/0.3-3/ (for browsing the source)
- https://sources.debian.net/src/libpthread-stubs/0.3-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpthread-stubs/0.3-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libselinux=2.1.9-5`

Binary Packages:

- `libselinux1:amd64=2.1.9-5`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.1.9-5
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.1.9-5.dsc' libselinux_2.1.9-5.dsc 1993 SHA256:55b89f7c09daaba0f43010004c61b07517bf3c367742475c43f11509714c3a3d
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.1.9.orig.tar.gz' libselinux_2.1.9.orig.tar.gz 155840 SHA256:749d4b39c80aa9df8247b8b3187ab72442c0dbad6e70bf312e25052bd4e7063f
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.1.9-5.debian.tar.gz' libselinux_2.1.9-5.debian.tar.gz 26754 SHA256:ad2e76959abd6e8063b947faa79062405ca60124b3cdb6a190e2490dabd50a66
```

Other potentially useful URLs:

- https://sources.debian.net/src/libselinux/2.1.9-5/ (for browsing the source)
- https://sources.debian.net/src/libselinux/2.1.9-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libselinux/2.1.9-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsemanage=2.1.6-6`

Binary Packages:

- `libsemanage-common=2.1.6-6`
- `libsemanage1:amd64=2.1.6-6`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.1.6-6
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.1.6-6.dsc' libsemanage_2.1.6-6.dsc 2136 SHA256:b09a31acd149eba73feab8f8402460d4c2a132cbb413ad97c6d1e28059ce1c93
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.1.6.orig.tar.gz' libsemanage_2.1.6.orig.tar.gz 135818 SHA256:64e6849fe50fb463ec0ba24653a26e3452fa4aaa7d7e192213d5c5a7c525aebb
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.1.6-6.debian.tar.gz' libsemanage_2.1.6-6.debian.tar.gz 17952 SHA256:91330dd7917160dafb2776c06851a1c1b7e44bc8d5cfd562a96903dab48e91e9
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsemanage/2.1.6-6/ (for browsing the source)
- https://sources.debian.net/src/libsemanage/2.1.6-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsemanage/2.1.6-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsepol=2.1.4-3`

Binary Packages:

- `libsepol1:amd64=2.1.4-3`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.1.4-3
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.1.4-3.dsc' libsepol_2.1.4-3.dsc 1756 SHA256:d1ac73af1853e4a9f847c10a1a71dc81b1084e4581d60c1217dea4725b4522f2
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.1.4.orig.tar.gz' libsepol_2.1.4.orig.tar.gz 201713 SHA256:8f5ea42ae6cc00b21f0e5f31f354d19fcce3edfe9328971d266245718714b1e8
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.1.4-3.debian.tar.gz' libsepol_2.1.4-3.debian.tar.gz 14245 SHA256:258d33ffe3cca87bb987c40df621d8e61d412baa3f3dc4f5a2eeb5ab1c97cb61
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsepol/2.1.4-3/ (for browsing the source)
- https://sources.debian.net/src/libsepol/2.1.4-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsepol/2.1.4-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsm=2:1.2.1-2`

Binary Packages:

- `libsm-dev:amd64=2:1.2.1-2`
- `libsm6:amd64=2:1.2.1-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libsm=2:1.2.1-2
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.1-2.dsc' libsm_1.2.1-2.dsc 2131 SHA256:ceb0ece00e8343a555a0eaffc712c926c43b2fbf363f6d92589cdd54d2479945
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.1.orig.tar.gz' libsm_1.2.1.orig.tar.gz 405702 SHA256:c7f3660fd5c0ea80ef311e46261eca7c3025ad02c17e545d690a73d70deec7d5
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.1-2.diff.gz' libsm_1.2.1-2.diff.gz 15411 SHA256:cc8cc250f80ffefd644d3619a148bc8cc14c1bc6a5e3331266de356236950153
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsm/2:1.2.1-2/ (for browsing the source)
- https://sources.debian.net/src/libsm/2:1.2.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsm/2:1.2.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsndfile=1.0.25-9.1+deb7u4`

Binary Packages:

- `libsndfile1:amd64=1.0.25-9.1+deb7u4`

Licenses: (parsed from: `/usr/share/doc/libsndfile1/copyright`)

- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libsndfile=1.0.25-9.1+deb7u4
'http://security.debian.org/pool/updates/main/libs/libsndfile/libsndfile_1.0.25-9.1+deb7u4.dsc' libsndfile_1.0.25-9.1+deb7u4.dsc 2010 SHA256:15cfa8de662876634ce86fc2e2c9dde72e9e6b17eba974921218cb913b68c875
'http://security.debian.org/pool/updates/main/libs/libsndfile/libsndfile_1.0.25.orig.tar.gz' libsndfile_1.0.25.orig.tar.gz 1060692 SHA256:59016dbd326abe7e2366ded5c344c853829bebfd1702ef26a07ef662d6aa4882
'http://security.debian.org/pool/updates/main/libs/libsndfile/libsndfile_1.0.25-9.1+deb7u4.debian.tar.gz' libsndfile_1.0.25-9.1+deb7u4.debian.tar.gz 20181 SHA256:e96902aff51fb58616153b29a52ea2ad3f863a2cf553ca4e1bf10b417305da9f
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsndfile/1.0.25-9.1+deb7u4/ (for browsing the source)
- https://sources.debian.net/src/libsndfile/1.0.25-9.1+deb7u4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsndfile/1.0.25-9.1+deb7u4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libswitch-perl=2.16-2`

Binary Packages:

- `libswitch-perl=2.16-2`

Licenses: (parsed from: `/usr/share/doc/libswitch-perl/copyright`)

- `Artistic`
- `GPL`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libswitch-perl=2.16-2
'http://deb.debian.org/debian/pool/main/libs/libswitch-perl/libswitch-perl_2.16-2.dsc' libswitch-perl_2.16-2.dsc 1307 SHA256:dd3de49a4506b21c99befda89fb7441613e1bcea9e5b41762e0814429968f3a7
'http://deb.debian.org/debian/pool/main/libs/libswitch-perl/libswitch-perl_2.16.orig.tar.gz' libswitch-perl_2.16.orig.tar.gz 13185 SHA256:308c8f27f295906778186f14c6291923905730b46ba879c3a68fff81c37df9d8
'http://deb.debian.org/debian/pool/main/libs/libswitch-perl/libswitch-perl_2.16-2.debian.tar.gz' libswitch-perl_2.16-2.debian.tar.gz 2280 SHA256:0c5e069cd4683b7fafcfb348e2c22a2d4d28432b32e82eabcb4315b668530067
```

Other potentially useful URLs:

- https://sources.debian.net/src/libswitch-perl/2.16-2/ (for browsing the source)
- https://sources.debian.net/src/libswitch-perl/2.16-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libswitch-perl/2.16-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtasn1-3=2.13-2+deb7u5`

Binary Packages:

- `libtasn1-3:amd64=2.13-2+deb7u5`

Licenses: (parsed from: `/usr/share/doc/libtasn1-3/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-3=2.13-2+deb7u5
'http://security.debian.org/pool/updates/main/libt/libtasn1-3/libtasn1-3_2.13-2+deb7u5.dsc' libtasn1-3_2.13-2+deb7u5.dsc 2492 SHA256:818f02ba2b4bd3278c2819df1918af3a274ef50dc76f9f4e19f5c04aebb74da8
'http://security.debian.org/pool/updates/main/libt/libtasn1-3/libtasn1-3_2.13.orig.tar.gz' libtasn1-3_2.13.orig.tar.gz 1964659 SHA256:a56e46483d1d42fe44ba58c9758620844042468d7c2d75f6318cdf3222745a91
'http://security.debian.org/pool/updates/main/libt/libtasn1-3/libtasn1-3_2.13-2+deb7u5.debian.tar.gz' libtasn1-3_2.13-2+deb7u5.debian.tar.gz 14449 SHA256:a73cfde650ddc086a7681cae367d082b48a9454e225753cb0893180091d2c70c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtasn1-3/2.13-2+deb7u5/ (for browsing the source)
- https://sources.debian.net/src/libtasn1-3/2.13-2+deb7u5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtasn1-3/2.13-2+deb7u5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtext-charwidth-perl=0.04-7`

Binary Packages:

- `libtext-charwidth-perl=0.04-7+b1`

Licenses: (parsed from: `/usr/share/doc/libtext-charwidth-perl/copyright`)

- `Artistic`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libtext-charwidth-perl=0.04-7
'http://deb.debian.org/debian/pool/main/libt/libtext-charwidth-perl/libtext-charwidth-perl_0.04-7.dsc' libtext-charwidth-perl_0.04-7.dsc 1810 SHA256:482493991d54786bc12b38f26b90d2bbc9234ac87c3e54e0474ac00cd979dd68
'http://deb.debian.org/debian/pool/main/libt/libtext-charwidth-perl/libtext-charwidth-perl_0.04.orig.tar.bz2' libtext-charwidth-perl_0.04.orig.tar.bz2 8327 SHA256:2990c13c3f4a5479d7dbc5a94b86c23798cf0dc7df54ffe54e065f072558b6ed
'http://deb.debian.org/debian/pool/main/libt/libtext-charwidth-perl/libtext-charwidth-perl_0.04-7.debian.tar.bz2' libtext-charwidth-perl_0.04-7.debian.tar.bz2 3220 SHA256:4aa60af66136cad15d3c9ed73696b822c9f944a3b8484b03c388393302fa6038
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtext-charwidth-perl/0.04-7/ (for browsing the source)
- https://sources.debian.net/src/libtext-charwidth-perl/0.04-7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtext-charwidth-perl/0.04-7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtext-iconv-perl=1.7-5`

Binary Packages:

- `libtext-iconv-perl=1.7-5`

Licenses: (parsed from: `/usr/share/doc/libtext-iconv-perl/copyright`)

- `Artistic`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libtext-iconv-perl=1.7-5
'http://deb.debian.org/debian/pool/main/libt/libtext-iconv-perl/libtext-iconv-perl_1.7-5.dsc' libtext-iconv-perl_1.7-5.dsc 1828 SHA256:6f049f3ed556a9c429f00c88a28ce595446f26996f2f5173e02f51f51277749d
'http://deb.debian.org/debian/pool/main/libt/libtext-iconv-perl/libtext-iconv-perl_1.7.orig.tar.bz2' libtext-iconv-perl_1.7.orig.tar.bz2 9977 SHA256:815c5169b7afc40bc6f681b4c615ff8fb0e073d87422280c8c759a4666567490
'http://deb.debian.org/debian/pool/main/libt/libtext-iconv-perl/libtext-iconv-perl_1.7-5.debian.tar.bz2' libtext-iconv-perl_1.7-5.debian.tar.bz2 3157 SHA256:e0ee2ae3908bbde6d43098a6491284fdc7a0a117229053d1e9c539eb66127092
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtext-iconv-perl/1.7-5/ (for browsing the source)
- https://sources.debian.net/src/libtext-iconv-perl/1.7-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtext-iconv-perl/1.7-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtext-wrapi18n-perl=0.06-7`

Binary Packages:

- `libtext-wrapi18n-perl=0.06-7`

Licenses: (parsed from: `/usr/share/doc/libtext-wrapi18n-perl/copyright`)

- `Artistic`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libtext-wrapi18n-perl=0.06-7
'http://deb.debian.org/debian/pool/main/libt/libtext-wrapi18n-perl/libtext-wrapi18n-perl_0.06-7.dsc' libtext-wrapi18n-perl_0.06-7.dsc 1156 SHA256:777dd5309172c3fa6ccea73b3c821cf6533ddb72b4adbe4def9d45fd8902b544
'http://deb.debian.org/debian/pool/main/libt/libtext-wrapi18n-perl/libtext-wrapi18n-perl_0.06.orig.tar.gz' libtext-wrapi18n-perl_0.06.orig.tar.gz 3797 SHA256:432c2a801efe9f12d631124c1163439eac4c99449ba13d80133c45ecacc627f5
'http://deb.debian.org/debian/pool/main/libt/libtext-wrapi18n-perl/libtext-wrapi18n-perl_0.06-7.diff.gz' libtext-wrapi18n-perl_0.06-7.diff.gz 3031 SHA256:fae1a435e8b2604bf78666e58e4603728990495db302a9799d63cb099e3b4001
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtext-wrapi18n-perl/0.06-7/ (for browsing the source)
- https://sources.debian.net/src/libtext-wrapi18n-perl/0.06-7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtext-wrapi18n-perl/0.06-7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libthai=0.1.18-2`

Binary Packages:

- `libthai-data=0.1.18-2`
- `libthai0:amd64=0.1.18-2`

Licenses: (parsed from: `/usr/share/doc/libthai-data/copyright`, `/usr/share/doc/libthai0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libthai=0.1.18-2
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.18-2.dsc' libthai_0.1.18-2.dsc 2157 SHA256:881a11c84a5bf57205a50d0b691326873e10259a0167c537601a50c79075cb1e
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.18.orig.tar.gz' libthai_0.1.18.orig.tar.gz 537508 SHA256:c26073c9862aac566e58f95964df5a33c55596ddde6f181437013855e36456c6
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.18-2.debian.tar.gz' libthai_0.1.18-2.debian.tar.gz 10121 SHA256:d8de122d398e0bc50b86af90732ac4010a10c4eb9479107ba4416211f25c555e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libthai/0.1.18-2/ (for browsing the source)
- https://sources.debian.net/src/libthai/0.1.18-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libthai/0.1.18-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libusb=2:0.1.12-20+nmu1`

Binary Packages:

- `libusb-0.1-4:amd64=2:0.1.12-20+nmu1`

Licenses: (parsed from: `/usr/share/doc/libusb-0.1-4/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libusb=2:0.1.12-20+nmu1
'http://deb.debian.org/debian/pool/main/libu/libusb/libusb_0.1.12-20+nmu1.dsc' libusb_0.1.12-20+nmu1.dsc 1965 SHA256:c6c079a02c93be3772dec58c796f0f52e86d1b5b594565dffa9f53c6fe68b44b
'http://deb.debian.org/debian/pool/main/libu/libusb/libusb_0.1.12.orig.tar.gz' libusb_0.1.12.orig.tar.gz 389343 SHA256:37f6f7d9de74196eb5fc0bbe0aea9b5c939de7f500acba3af6fd643f3b538b44
'http://deb.debian.org/debian/pool/main/libu/libusb/libusb_0.1.12-20+nmu1.debian.tar.gz' libusb_0.1.12-20+nmu1.debian.tar.gz 263472 SHA256:dbdda962bf196d4c98c7d71dffddcc679acbf8ea8c843fc5e1ba0141d57cf729
```

Other potentially useful URLs:

- https://sources.debian.net/src/libusb/2:0.1.12-20+nmu1/ (for browsing the source)
- https://sources.debian.net/src/libusb/2:0.1.12-20+nmu1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libusb/2:0.1.12-20+nmu1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libvorbis=1.3.2-1.3`

Binary Packages:

- `libvorbis0a:amd64=1.3.2-1.3`
- `libvorbisenc2:amd64=1.3.2-1.3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libvorbis=1.3.2-1.3
'http://deb.debian.org/debian/pool/main/libv/libvorbis/libvorbis_1.3.2-1.3.dsc' libvorbis_1.3.2-1.3.dsc 1412 SHA256:19621bac28a47e9589b69a128c207c6712ab4aed653d2be9ad39a705c47ae04a
'http://deb.debian.org/debian/pool/main/libv/libvorbis/libvorbis_1.3.2.orig.tar.gz' libvorbis_1.3.2.orig.tar.gz 1483719 SHA256:eeb4dcada143846dfba760d982954a02f82e08845cbc33871f5dac547b8b6124
'http://deb.debian.org/debian/pool/main/libv/libvorbis/libvorbis_1.3.2-1.3.diff.gz' libvorbis_1.3.2-1.3.diff.gz 8152 SHA256:4c592f9f2fe312d22946fe77beadf7b273a8cc88d0b10d7717081766e5f23c21
```

Other potentially useful URLs:

- https://sources.debian.net/src/libvorbis/1.3.2-1.3/ (for browsing the source)
- https://sources.debian.net/src/libvorbis/1.3.2-1.3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libvorbis/1.3.2-1.3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libx11=2:1.5.0-1+deb7u4`

Binary Packages:

- `libx11-6:amd64=2:1.5.0-1+deb7u4`
- `libx11-data=2:1.5.0-1+deb7u4`
- `libx11-dev:amd64=2:1.5.0-1+deb7u4`
- `libx11-doc=2:1.5.0-1+deb7u4`
- `libx11-xcb1:amd64=2:1.5.0-1+deb7u4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.5.0-1+deb7u4
'http://security.debian.org/pool/updates/main/libx/libx11/libx11_1.5.0-1+deb7u4.dsc' libx11_1.5.0-1+deb7u4.dsc 2271 SHA256:52168e2788e9eeca165f74ba9378d6efcec8c354f57530863ed97c6dca478d92
'http://security.debian.org/pool/updates/main/libx/libx11/libx11_1.5.0-1+deb7u4.tar.gz' libx11_1.5.0-1+deb7u4.tar.gz 2682419 SHA256:17eb00a4ce660891caa15d5b6cec99aef6cd69cb456dc4696d96125b13a69454
```

Other potentially useful URLs:

- https://sources.debian.net/src/libx11/2:1.5.0-1+deb7u4/ (for browsing the source)
- https://sources.debian.net/src/libx11/2:1.5.0-1+deb7u4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libx11/2:1.5.0-1+deb7u4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxau=1:1.0.7-1`

Binary Packages:

- `libxau-dev:amd64=1:1.0.7-1`
- `libxau6:amd64=1:1.0.7-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxau=1:1.0.7-1
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.7-1.dsc' libxau_1.0.7-1.dsc 2042 SHA256:da255ae159ff1bba6c117725bce8fd7a69b2e03f2f1fc8bcd0f8cb7244e2a4d8
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.7.orig.tar.gz' libxau_1.0.7.orig.tar.gz 349278 SHA256:cbb81b4ba0f585faac8b9914b0bdbef6e0ef886a30c70d6584e2b30efeda9ac4
'http://deb.debian.org/debian/pool/main/libx/libxau/libxau_1.0.7-1.diff.gz' libxau_1.0.7-1.diff.gz 14982 SHA256:0dd842eb448f2ed419f0d4803165b7d0982fbd48cfc14311f0cec5e9fd999db4
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxau/1:1.0.7-1/ (for browsing the source)
- https://sources.debian.net/src/libxau/1:1.0.7-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxau/1:1.0.7-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxcb=1.8.1-2+deb7u1`

Binary Packages:

- `libxcb-render0:amd64=1.8.1-2+deb7u1`
- `libxcb-shm0:amd64=1.8.1-2+deb7u1`
- `libxcb1:amd64=1.8.1-2+deb7u1`
- `libxcb1-dev:amd64=1.8.1-2+deb7u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.8.1-2+deb7u1
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.8.1-2+deb7u1.dsc' libxcb_1.8.1-2+deb7u1.dsc 5853 SHA256:1d191c3807c4102d7216ff5b248aa8d837729933f78cb5ca7508887dfefb73a8
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.8.1.orig.tar.gz' libxcb_1.8.1.orig.tar.gz 458799 SHA256:a171c660155dedf1fda9802a37abd04097820486525f4b6618a6203e9ce368a9
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.8.1-2+deb7u1.diff.gz' libxcb_1.8.1-2+deb7u1.diff.gz 20444 SHA256:be4afeff29eba38f3957ddb9c0575f071f3d889ff52488385c402a1609e0f6fe
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxcb/1.8.1-2+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/libxcb/1.8.1-2+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcb/1.8.1-2+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxcomposite=1:0.4.3-2`

Binary Packages:

- `libxcomposite1:amd64=1:0.4.3-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcomposite=1:0.4.3-2
'http://deb.debian.org/debian/pool/main/libx/libxcomposite/libxcomposite_0.4.3-2.dsc' libxcomposite_0.4.3-2.dsc 2031 SHA256:506b0daed620e730c2ed8ecd613a97ef258571f5a3d8731ea8bf5fb010c1d05f
'http://deb.debian.org/debian/pool/main/libx/libxcomposite/libxcomposite_0.4.3.orig.tar.gz' libxcomposite_0.4.3.orig.tar.gz 324906 SHA256:25853e4da06ddfd3ae0384b4d3621293850b41645697f3de659bc640ea3268b7
'http://deb.debian.org/debian/pool/main/libx/libxcomposite/libxcomposite_0.4.3-2.diff.gz' libxcomposite_0.4.3-2.diff.gz 15615 SHA256:0249d0390714fa276538364e2e4aa29799ec5478419b65bef186e1c5e9450d3f
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxcomposite/1:0.4.3-2/ (for browsing the source)
- https://sources.debian.net/src/libxcomposite/1:0.4.3-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcomposite/1:0.4.3-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxcursor=1:1.1.13-1+deb7u2`

Binary Packages:

- `libxcursor1:amd64=1:1.1.13-1+deb7u2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcursor=1:1.1.13-1+deb7u2
'http://security.debian.org/pool/updates/main/libx/libxcursor/libxcursor_1.1.13-1+deb7u2.dsc' libxcursor_1.1.13-1+deb7u2.dsc 2280 SHA256:871166db7939440100819a85a077ba3f90df0a0460baf959eb259c3e0ec15361
'http://security.debian.org/pool/updates/main/libx/libxcursor/libxcursor_1.1.13.orig.tar.gz' libxcursor_1.1.13.orig.tar.gz 365362 SHA256:df4475096192ad60c1300df7b5e2509019ad1a733a0cadcad13b5d3f4b7d615b
'http://security.debian.org/pool/updates/main/libx/libxcursor/libxcursor_1.1.13-1+deb7u2.diff.gz' libxcursor_1.1.13-1+deb7u2.diff.gz 19179 SHA256:8c285f6493bbccc9f0d0d18ec36245f32ff0779e61800904ef9222ce7dff9f39
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxcursor/1:1.1.13-1+deb7u2/ (for browsing the source)
- https://sources.debian.net/src/libxcursor/1:1.1.13-1+deb7u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcursor/1:1.1.13-1+deb7u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxdamage=1:1.1.3-2`

Binary Packages:

- `libxdamage1:amd64=1:1.1.3-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdamage=1:1.1.3-2
'http://deb.debian.org/debian/pool/main/libx/libxdamage/libxdamage_1.1.3-2.dsc' libxdamage_1.1.3-2.dsc 1984 SHA256:7a558462e3b84b9f08d3c142708032033107e3135175774dcb7c72ee0c3024ca
'http://deb.debian.org/debian/pool/main/libx/libxdamage/libxdamage_1.1.3.orig.tar.gz' libxdamage_1.1.3.orig.tar.gz 307613 SHA256:fda20802ccccaac8807c3bf58e427a37be9579cc2ea6162b0b956644fa65e806
'http://deb.debian.org/debian/pool/main/libx/libxdamage/libxdamage_1.1.3-2.diff.gz' libxdamage_1.1.3-2.diff.gz 14984 SHA256:02335f95740c1b094d8717b6c0b295b0f77483169b25a30a1559993911d8725e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxdamage/1:1.1.3-2/ (for browsing the source)
- https://sources.debian.net/src/libxdamage/1:1.1.3-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxdamage/1:1.1.3-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxdmcp=1:1.1.1-1`

Binary Packages:

- `libxdmcp-dev:amd64=1:1.1.1-1`
- `libxdmcp6:amd64=1:1.1.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.1-1
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.1-1.dsc' libxdmcp_1.1.1-1.dsc 2102 SHA256:1713ac047ad1d235fe51476f2224d0dc0f170e9623c0735d1941c474942b24d3
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.1.orig.tar.gz' libxdmcp_1.1.1.orig.tar.gz 376525 SHA256:ae6e677911e2696a2976b2f565f116ba9ce99e89cc7e140c4a791270c3aff96f
'http://deb.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp_1.1.1-1.diff.gz' libxdmcp_1.1.1-1.diff.gz 14891 SHA256:bb79bc8439d63d5bed6bf7544f1ed14b4606c246f724523da2fa921cc9929f19
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxdmcp/1:1.1.1-1/ (for browsing the source)
- https://sources.debian.net/src/libxdmcp/1:1.1.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxdmcp/1:1.1.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxext=2:1.3.1-2+deb7u1`

Binary Packages:

- `libxext6:amd64=2:1.3.1-2+deb7u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxext=2:1.3.1-2+deb7u1
'http://deb.debian.org/debian/pool/main/libx/libxext/libxext_1.3.1-2+deb7u1.dsc' libxext_1.3.1-2+deb7u1.dsc 2252 SHA256:31fb859b355608bae6ef9db93c9cb0abaf729dee40c71dc08f72311c813ad296
'http://deb.debian.org/debian/pool/main/libx/libxext/libxext_1.3.1.orig.tar.gz' libxext_1.3.1.orig.tar.gz 453050 SHA256:fa0d5ed2fa7dc7be3b2e0b95a1bb8f0cbaabfaff124904f7e5bc70d3159980d1
'http://deb.debian.org/debian/pool/main/libx/libxext/libxext_1.3.1-2+deb7u1.diff.gz' libxext_1.3.1-2+deb7u1.diff.gz 23167 SHA256:a9535d7f34b685862502636a7bea6db7765dc491d1b68ccf19887556fad43ec4
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxext/2:1.3.1-2+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/libxext/2:1.3.1-2+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxext/2:1.3.1-2+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxfixes=1:5.0-4+deb7u2`

Binary Packages:

- `libxfixes3:amd64=1:5.0-4+deb7u2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxfixes=1:5.0-4+deb7u2
'http://security.debian.org/pool/updates/main/libx/libxfixes/libxfixes_5.0-4+deb7u2.dsc' libxfixes_5.0-4+deb7u2.dsc 2130 SHA256:9b16359ca4a97f286d3f8a61cdca99dbeb74cb5c8ae8228b56fad408ac163b55
'http://security.debian.org/pool/updates/main/libx/libxfixes/libxfixes_5.0.orig.tar.gz' libxfixes_5.0.orig.tar.gz 314994 SHA256:3c25f2fcf2983834b932756399cb538e69beb0d739f992f9719073fcedaa4405
'http://security.debian.org/pool/updates/main/libx/libxfixes/libxfixes_5.0-4+deb7u2.diff.gz' libxfixes_5.0-4+deb7u2.diff.gz 7805 SHA256:89c814567b952964ba347f84443d546aa98f02107af711ba48575c2cf10fa7fd
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxfixes/1:5.0-4+deb7u2/ (for browsing the source)
- https://sources.debian.net/src/libxfixes/1:5.0-4+deb7u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxfixes/1:5.0-4+deb7u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxi=2:1.6.1-1+deb7u3`

Binary Packages:

- `libxi6:amd64=2:1.6.1-1+deb7u3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxi=2:1.6.1-1+deb7u3
'http://security.debian.org/pool/updates/main/libx/libxi/libxi_1.6.1-1+deb7u3.dsc' libxi_1.6.1-1+deb7u3.dsc 2282 SHA256:315364ba15b8beec8beba6f80caca003069da40a1078e41f083ae16af337f987
'http://security.debian.org/pool/updates/main/libx/libxi/libxi_1.6.1.orig.tar.gz' libxi_1.6.1.orig.tar.gz 556404 SHA256:a2aab210068af017314888c64c3a7dd6b5a7933fe50ab89b6e039aadc07dac46
'http://security.debian.org/pool/updates/main/libx/libxi/libxi_1.6.1-1+deb7u3.diff.gz' libxi_1.6.1-1+deb7u3.diff.gz 25721 SHA256:9c9abe8bbbe5b7144e2993a0fa727e18f79a6b9de4b940429a575136c2b5a0dd
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxi/2:1.6.1-1+deb7u3/ (for browsing the source)
- https://sources.debian.net/src/libxi/2:1.6.1-1+deb7u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxi/2:1.6.1-1+deb7u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxinerama=2:1.1.2-1+deb7u1`

Binary Packages:

- `libxinerama1:amd64=2:1.1.2-1+deb7u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxinerama=2:1.1.2-1+deb7u1
'http://deb.debian.org/debian/pool/main/libx/libxinerama/libxinerama_1.1.2-1+deb7u1.dsc' libxinerama_1.1.2-1+deb7u1.dsc 2206 SHA256:86f079e1c72fa04d7e7fc471e76fb8a2bb8195a78c541e9eb149bb4b8c0b3448
'http://deb.debian.org/debian/pool/main/libx/libxinerama/libxinerama_1.1.2.orig.tar.gz' libxinerama_1.1.2.orig.tar.gz 343408 SHA256:5f21113464febeac0536e140ff36a8e0cd8ae919ce690c4768f479ea48473fed
'http://deb.debian.org/debian/pool/main/libx/libxinerama/libxinerama_1.1.2-1+deb7u1.diff.gz' libxinerama_1.1.2-1+deb7u1.diff.gz 16845 SHA256:7bc0f6a0cdc3e55260c0d2458ac4f6a7ffacb391b1db064a1170ed1abd8a9813
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxinerama/2:1.1.2-1+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/libxinerama/2:1.1.2-1+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxinerama/2:1.1.2-1+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxml2=2.8.0+dfsg1-7+wheezy11`

Binary Packages:

- `libxml2:amd64=2.8.0+dfsg1-7+wheezy11`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libxml2/2.8.0+dfsg1-7+wheezy11/


### `dpkg` source package: `libxrandr=2:1.3.2-2+deb7u2`

Binary Packages:

- `libxrandr2:amd64=2:1.3.2-2+deb7u2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrandr=2:1.3.2-2+deb7u2
'http://security.debian.org/pool/updates/main/libx/libxrandr/libxrandr_1.3.2-2+deb7u2.dsc' libxrandr_1.3.2-2+deb7u2.dsc 2150 SHA256:05b947bc381887728bcf7d73aac8c4ffbe3ae09402a9b106bb3a759763cc154c
'http://security.debian.org/pool/updates/main/libx/libxrandr/libxrandr_1.3.2.orig.tar.gz' libxrandr_1.3.2.orig.tar.gz 359240 SHA256:c117a84ceda5a0744806efd4948594d4ec28a86c245768d721dbdabff1f7e073
'http://security.debian.org/pool/updates/main/libx/libxrandr/libxrandr_1.3.2-2+deb7u2.diff.gz' libxrandr_1.3.2-2+deb7u2.diff.gz 20593 SHA256:7badcd10aca24a6b6d9080c11173ef13587b1caea3097992e30243e47c5f05c4
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxrandr/2:1.3.2-2+deb7u2/ (for browsing the source)
- https://sources.debian.net/src/libxrandr/2:1.3.2-2+deb7u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxrandr/2:1.3.2-2+deb7u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxrender=1:0.9.7-1+deb7u3`

Binary Packages:

- `libxrender1:amd64=1:0.9.7-1+deb7u3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrender=1:0.9.7-1+deb7u3
'http://security.debian.org/pool/updates/main/libx/libxrender/libxrender_0.9.7-1+deb7u3.dsc' libxrender_0.9.7-1+deb7u3.dsc 2295 SHA256:ebd70ff531bd0c38a99265638fe0121f33f4f3d3d822643269352b5bbf88beee
'http://security.debian.org/pool/updates/main/libx/libxrender/libxrender_0.9.7.orig.tar.gz' libxrender_0.9.7.orig.tar.gz 357264 SHA256:89f36e896018f5b8c00768af59e052019ae79fab69a647eb1fe61b565d7dd18e
'http://security.debian.org/pool/updates/main/libx/libxrender/libxrender_0.9.7-1+deb7u3.diff.gz' libxrender_0.9.7-1+deb7u3.diff.gz 21235 SHA256:35bc64e73c2024639ad25a0f1cc41ad2d80af7be1219eec059a2809c4ad767c2
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxrender/1:0.9.7-1+deb7u3/ (for browsing the source)
- https://sources.debian.net/src/libxrender/1:0.9.7-1+deb7u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxrender/1:0.9.7-1+deb7u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxt=1:1.1.3-1+deb7u1`

Binary Packages:

- `libxt-dev:amd64=1:1.1.3-1+deb7u1`
- `libxt6:amd64=1:1.1.3-1+deb7u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxt=1:1.1.3-1+deb7u1
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.1.3-1+deb7u1.dsc' libxt_1.1.3-1+deb7u1.dsc 2160 SHA256:4bd14b84d6ebd6fd3b77304d1e0169e45f1db5f77b8181d47c3ce2409ea5fdd0
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.1.3.orig.tar.gz' libxt_1.1.3.orig.tar.gz 939673 SHA256:a56f1c13430f8ee0c040de1e3a7f439c9707d2f9c9b5ceee8bdbb74fddbe5560
'http://deb.debian.org/debian/pool/main/libx/libxt/libxt_1.1.3-1+deb7u1.diff.gz' libxt_1.1.3-1+deb7u1.diff.gz 13014 SHA256:39b0ebb5858d62c3a57b0f02998e81310e064201cdc444f6c6718f2ac7d99f7b
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxt/1:1.1.3-1+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/libxt/1:1.1.3-1+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxt/1:1.1.3-1+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxtst=2:1.2.1-1+deb7u2`

Binary Packages:

- `libxtst6:amd64=2:1.2.1-1+deb7u2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxtst=2:1.2.1-1+deb7u2
'http://security.debian.org/pool/updates/main/libx/libxtst/libxtst_1.2.1-1+deb7u2.dsc' libxtst_1.2.1-1+deb7u2.dsc 2300 SHA256:275f31d4c72880e94dfb024de1ecebd0dd17006e55d63a794905048201bec30e
'http://security.debian.org/pool/updates/main/libx/libxtst/libxtst_1.2.1.orig.tar.gz' libxtst_1.2.1.orig.tar.gz 383788 SHA256:99d7c7335439c00b8d1664d77f1ea2d857598a5ed52d32826d879cb3863cbb7a
'http://security.debian.org/pool/updates/main/libx/libxtst/libxtst_1.2.1-1+deb7u2.diff.gz' libxtst_1.2.1-1+deb7u2.diff.gz 18560 SHA256:022f51e9e06574c4ffef5c39c38d977cd85d3a4016f3adf02b0f9c0ca4648891
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxtst/2:1.2.1-1+deb7u2/ (for browsing the source)
- https://sources.debian.net/src/libxtst/2:1.2.1-1+deb7u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxtst/2:1.2.1-1+deb7u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `linux-atm=1:2.5.1-1.5`

Binary Packages:

- `libatm1:amd64=1:2.5.1-1.5`

Licenses: (parsed from: `/usr/share/doc/libatm1/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris linux-atm=1:2.5.1-1.5
'http://deb.debian.org/debian/pool/main/l/linux-atm/linux-atm_2.5.1-1.5.dsc' linux-atm_2.5.1-1.5.dsc 1899 SHA256:5f930e3769d50f30b80e72d0eb1985aef5a61acd202cb3aca330adf3f032a3b1
'http://deb.debian.org/debian/pool/main/l/linux-atm/linux-atm_2.5.1.orig.tar.gz' linux-atm_2.5.1.orig.tar.gz 1308638 SHA256:6bc60fe53c9e9c828a6d7f3675da11ad7fb54491863584e01c1051740fe2a286
'http://deb.debian.org/debian/pool/main/l/linux-atm/linux-atm_2.5.1-1.5.debian.tar.gz' linux-atm_2.5.1-1.5.debian.tar.gz 10723 SHA256:9b2325859b3fd008b588a3897e713f52137abae08d1f5a44f5661f45a87f4d29
```

Other potentially useful URLs:

- https://sources.debian.net/src/linux-atm/1:2.5.1-1.5/ (for browsing the source)
- https://sources.debian.net/src/linux-atm/1:2.5.1-1.5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/linux-atm/1:2.5.1-1.5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lsb=4.1+Debian8+deb7u1`

Binary Packages:

- `lsb-base=4.1+Debian8+deb7u1`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=4.1+Debian8+deb7u1
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_4.1+Debian8+deb7u1.dsc' lsb_4.1+Debian8+deb7u1.dsc 2068 SHA256:0a7680276f69e131852733354101bf3eb0a309ffd98e379e7e102c0a7425b921
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_4.1+Debian8+deb7u1.tar.bz2' lsb_4.1+Debian8+deb7u1.tar.bz2 60640 SHA256:c0b0faba3a105b0a93b9975957880df59ac29fc2a978e5cf7be8eb3faf53c55c
```

Other potentially useful URLs:

- https://sources.debian.net/src/lsb/4.1+Debian8+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/lsb/4.1+Debian8+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lsb/4.1+Debian8+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mawk=1.3.3-17`

Binary Packages:

- `mawk=1.3.3-17`

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

### `dpkg` source package: `ncurses=5.9-10`

Binary Packages:

- `libncurses5:amd64=5.9-10`
- `libtinfo5:amd64=5.9-10`
- `ncurses-base=5.9-10`
- `ncurses-bin=5.9-10`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=5.9-10
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_5.9-10.dsc' ncurses_5.9-10.dsc 3121 SHA256:64dc91b7239af8eb79a29cb194fc94beedee01c665b1860f67feec4bd9f1dea1
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_5.9.orig.tar.gz' ncurses_5.9.orig.tar.gz 2693788 SHA256:1298f3255b86951188460d420ad65c20c52cddc068c3ddf4e2fa0a140d338855
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_5.9-10.debian.tar.gz' ncurses_5.9-10.debian.tar.gz 105737 SHA256:bf16b818751a3c4a09aa25756fa00e20850787c4fb4341cdf23cd4528e3a8abb
```

Other potentially useful URLs:

- https://sources.debian.net/src/ncurses/5.9-10/ (for browsing the source)
- https://sources.debian.net/src/ncurses/5.9-10/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ncurses/5.9-10/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `netbase=5.0`

Binary Packages:

- `netbase=5.0`

Licenses: (parsed from: `/usr/share/doc/netbase/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris netbase=5.0
'http://deb.debian.org/debian/pool/main/n/netbase/netbase_5.0.dsc' netbase_5.0.dsc 724 SHA256:a7a49618de72446682179bb70c550a0d7089c7b0db01eb83d560d3be72ca776d
'http://deb.debian.org/debian/pool/main/n/netbase/netbase_5.0.tar.gz' netbase_5.0.tar.gz 34915 SHA256:ac9424d3cb2bd3c07b6c5bc5875c434d3bc687a73cd7c54b7dc7122308afa9dc
```

Other potentially useful URLs:

- https://sources.debian.net/src/netbase/5.0/ (for browsing the source)
- https://sources.debian.net/src/netbase/5.0/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/netbase/5.0/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nspr=2:4.12-1+deb7u1`

Binary Packages:

- `libnspr4:amd64=2:4.12-1+deb7u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris nspr=2:4.12-1+deb7u1
'http://security.debian.org/pool/updates/main/n/nspr/nspr_4.12-1+deb7u1.dsc' nspr_4.12-1+deb7u1.dsc 2104 SHA256:ca467bd574caeb87c2e7171c273d64144b8d7a5ceb19f096a01a839fcd3b1b3f
'http://security.debian.org/pool/updates/main/n/nspr/nspr_4.12.orig.tar.gz' nspr_4.12.orig.tar.gz 1135458 SHA256:e0b10a1e569153668ff8bdea6c7e491b389fab69c2f18285a1ebf7c2ea4269de
'http://security.debian.org/pool/updates/main/n/nspr/nspr_4.12-1+deb7u1.debian.tar.gz' nspr_4.12-1+deb7u1.debian.tar.gz 15563 SHA256:63d6786ee792c691a9daf5bae0979f1c7e23c045299fdb056bf2f488a79e94e2
```

Other potentially useful URLs:

- https://sources.debian.net/src/nspr/2:4.12-1+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/nspr/2:4.12-1+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nspr/2:4.12-1+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nss=2:3.26-1+debu7u5`

Binary Packages:

- `libnss3:amd64=2:3.26-1+debu7u5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris nss=2:3.26-1+debu7u5
'http://security.debian.org/pool/updates/main/n/nss/nss_3.26-1+debu7u5.dsc' nss_3.26-1+debu7u5.dsc 2215 SHA256:e8b0c59a24be3cb6154794321a90edc476812b704e76ec4fb0419448b628cd13
'http://security.debian.org/pool/updates/main/n/nss/nss_3.26.orig.tar.gz' nss_3.26.orig.tar.gz 7386943 SHA256:91783a570ab953693eb977ce47c501f04c104cec287fa011c91bcc8970d1c564
'http://security.debian.org/pool/updates/main/n/nss/nss_3.26-1+debu7u5.debian.tar.gz' nss_3.26-1+debu7u5.debian.tar.gz 43117 SHA256:87aaea476e18950fdb8c0d882615902558636f56aabb4108edce51554021155f
```

Other potentially useful URLs:

- https://sources.debian.net/src/nss/2:3.26-1+debu7u5/ (for browsing the source)
- https://sources.debian.net/src/nss/2:3.26-1+debu7u5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nss/2:3.26-1+debu7u5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openjdk-6=6b38-1.13.10-1~deb7u1`

Binary Packages:

- `icedtea-6-jre-cacao:amd64=6b38-1.13.10-1~deb7u1`
- `icedtea-6-jre-jamvm:amd64=6b38-1.13.10-1~deb7u1`
- `openjdk-6-jdk:amd64=6b38-1.13.10-1~deb7u1`
- `openjdk-6-jre:amd64=6b38-1.13.10-1~deb7u1`
- `openjdk-6-jre-headless:amd64=6b38-1.13.10-1~deb7u1`
- `openjdk-6-jre-lib=6b38-1.13.10-1~deb7u1`

Licenses: (parsed from: `/usr/share/doc/icedtea-6-jre-cacao/copyright`, `/usr/share/doc/icedtea-6-jre-jamvm/copyright`, `/usr/share/doc/openjdk-6-jdk/copyright`, `/usr/share/doc/openjdk-6-jre/copyright`, `/usr/share/doc/openjdk-6-jre-headless/copyright`, `/usr/share/doc/openjdk-6-jre-lib/copyright`)

- `Apache-2.0`
- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris openjdk-6=6b38-1.13.10-1~deb7u1
'http://deb.debian.org/debian/pool/main/o/openjdk-6/openjdk-6_6b38-1.13.10-1~deb7u1.dsc' openjdk-6_6b38-1.13.10-1~deb7u1.dsc 3741 SHA256:43570e3697faecdfc3d258eea3a844bbddc154e7a5d415feb942b2cd0ae14bbf
'http://deb.debian.org/debian/pool/main/o/openjdk-6/openjdk-6_6b38-1.13.10.orig.tar.gz' openjdk-6_6b38-1.13.10.orig.tar.gz 45235301 SHA256:11f4ed2099a0530d6cd183689fc7a53b9048b6a27385a1972027fce76bafafb9
'http://deb.debian.org/debian/pool/main/o/openjdk-6/openjdk-6_6b38-1.13.10-1~deb7u1.diff.gz' openjdk-6_6b38-1.13.10-1~deb7u1.diff.gz 202624 SHA256:7f9b2d5248ca56ca01d4e511c96524c3303a2cebcb1d490392941042b3b17c08
```

Other potentially useful URLs:

- https://sources.debian.net/src/openjdk-6/6b38-1.13.10-1~deb7u1/ (for browsing the source)
- https://sources.debian.net/src/openjdk-6/6b38-1.13.10-1~deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openjdk-6/6b38-1.13.10-1~deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openssl=1.0.1t-1+deb7u3`

Binary Packages:

- `libssl1.0.0:amd64=1.0.1t-1+deb7u3`
- `openssl=1.0.1t-1+deb7u3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.0.1t-1+deb7u3
'http://security.debian.org/pool/updates/main/o/openssl/openssl_1.0.1t-1+deb7u3.dsc' openssl_1.0.1t-1+deb7u3.dsc 2379 SHA256:9d5033078fb978566600ae0dd365b452ff20fb126e94b0a5cf74006d3b1a672e
'http://security.debian.org/pool/updates/main/o/openssl/openssl_1.0.1t.orig.tar.gz' openssl_1.0.1t.orig.tar.gz 4556447 SHA256:4a6ee491a2fdb22e519c76fdc2a628bb3cec12762cd456861d207996c8a07088
'http://security.debian.org/pool/updates/main/o/openssl/openssl_1.0.1t-1+deb7u3.debian.tar.gz' openssl_1.0.1t-1+deb7u3.debian.tar.gz 117754 SHA256:1c3bc3ac4098755d5bebb38d3000cf958410ebccda62099a904142a60339aa49
```

Other potentially useful URLs:

- https://sources.debian.net/src/openssl/1.0.1t-1+deb7u3/ (for browsing the source)
- https://sources.debian.net/src/openssl/1.0.1t-1+deb7u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openssl/1.0.1t-1+deb7u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `p11-kit=0.12-3`

Binary Packages:

- `libp11-kit0:amd64=0.12-3`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `GPL-2`
- `GPL-2.0+`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.12-3
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.12-3.dsc' p11-kit_0.12-3.dsc 1400 SHA256:40cae8a291b1a7a78e6bb15950b22a9c552961dbf0733c094d2567e90607a467
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.12.orig.tar.gz' p11-kit_0.12.orig.tar.gz 533549 SHA256:4db792def545a3c8ae12e7e4ef166d7620cb445c00a5a984ab7c4a3b35f0be00
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.12-3.debian.tar.gz' p11-kit_0.12-3.debian.tar.gz 7217 SHA256:c9580da7fce54a6d6f0b119a8a12d37af91d50527d6c75c62d600d6ef28a84d5
```

Other potentially useful URLs:

- https://sources.debian.net/src/p11-kit/0.12-3/ (for browsing the source)
- https://sources.debian.net/src/p11-kit/0.12-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/p11-kit/0.12-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pam=1.1.3-7.1`

Binary Packages:

- `libpam-modules:amd64=1.1.3-7.1`
- `libpam-modules-bin=1.1.3-7.1`
- `libpam-runtime=1.1.3-7.1`
- `libpam0g:amd64=1.1.3-7.1`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.1.3-7.1
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.3-7.1.dsc' pam_1.1.3-7.1.dsc 3095 SHA256:5476d5bbcd568c26c28cc64d3b8ff9f0fdcb0f07e307bd7af73303867c037f6f
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.3.orig.tar.gz' pam_1.1.3.orig.tar.gz 1768872 SHA256:a5bff0a161aeb6c0857fd441ff984749a8b208ad50b8d1f117058a6301741a0f
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.3-7.1.diff.gz' pam_1.1.3-7.1.diff.gz 273542 SHA256:0674e550823033afd3293a4a0e4a9b1d1d4724bd9f150d4a7096e4d9eb4546d2
```

Other potentially useful URLs:

- https://sources.debian.net/src/pam/1.1.3-7.1/ (for browsing the source)
- https://sources.debian.net/src/pam/1.1.3-7.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pam/1.1.3-7.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pango1.0=1.30.0-1`

Binary Packages:

- `libpango1.0-0:amd64=1.30.0-1`

Licenses: (parsed from: `/usr/share/doc/libpango1.0-0/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris pango1.0=1.30.0-1
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.30.0-1.dsc' pango1.0_1.30.0-1.dsc 2858 SHA256:78572dd3fa986523198d4b7afd0b173ee6b22501f7e42f41bfa6d25d95107d61
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.30.0.orig.tar.xz' pango1.0_1.30.0.orig.tar.xz 1158224 SHA256:7c6d2ab024affaed0e942f9279b818235f9c6a36d9fc50688f48d387f4102dff
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.30.0-1.debian.tar.xz' pango1.0_1.30.0-1.debian.tar.xz 27676 SHA256:2511ea280d7a944f722612eb38cf71ddc078c25a8d23f7abbed0d8c89c3bd73c
```

Other potentially useful URLs:

- https://sources.debian.net/src/pango1.0/1.30.0-1/ (for browsing the source)
- https://sources.debian.net/src/pango1.0/1.30.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pango1.0/1.30.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pcre3=1:8.30-5`

Binary Packages:

- `libpcre3:amd64=1:8.30-5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=1:8.30-5
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.30-5.dsc' pcre3_8.30-5.dsc 1044 SHA256:16bb53aa45a1f811cd3fd1c86f184f89c7d71a15a0c963799e2696a86cd0f63d
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.30.orig.tar.gz' pcre3_8.30.orig.tar.gz 1635262 SHA256:b93037d607c28947d9c2446a444c47e24462359e0c4a0bcefd009c8ac643f5d6
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.30-5.debian.tar.gz' pcre3_8.30-5.debian.tar.gz 15126 SHA256:a137418124d4652aa7614e0c12079a4acd90e02e0ca1c8cf33e348326701f309
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcre3/1:8.30-5/ (for browsing the source)
- https://sources.debian.net/src/pcre3/1:8.30-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcre3/1:8.30-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pcsc-lite=1.8.4-1+deb7u2`

Binary Packages:

- `libpcsclite1:amd64=1.8.4-1+deb7u2`

Licenses: (parsed from: `/usr/share/doc/libpcsclite1/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-3`
- `GPL-3+`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris pcsc-lite=1.8.4-1+deb7u2
'http://security.debian.org/pool/updates/main/p/pcsc-lite/pcsc-lite_1.8.4-1+deb7u2.dsc' pcsc-lite_1.8.4-1+deb7u2.dsc 2158 SHA256:33e500ee7ffbe68a0bf44a77da27c7f83038105799223b58a0fdd071db2b42f4
'http://security.debian.org/pool/updates/main/p/pcsc-lite/pcsc-lite_1.8.4.orig.tar.bz2' pcsc-lite_1.8.4.orig.tar.bz2 550284 SHA256:5efcd5a2a431868575f7fce1c142d8bc124fc6585ce147a2afb9dd6f58da3fa6
'http://security.debian.org/pool/updates/main/p/pcsc-lite/pcsc-lite_1.8.4-1+deb7u2.debian.tar.gz' pcsc-lite_1.8.4-1+deb7u2.debian.tar.gz 16663 SHA256:f2db69a0e7c66cdfa48e10e470a44bcfe5fb5ca3d212afe8edb0f64ba280a6f4
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcsc-lite/1.8.4-1+deb7u2/ (for browsing the source)
- https://sources.debian.net/src/pcsc-lite/1.8.4-1+deb7u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcsc-lite/1.8.4-1+deb7u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `perl=5.14.2-21+deb7u5`

Binary Packages:

- `perl=5.14.2-21+deb7u5`
- `perl-base=5.14.2-21+deb7u5`
- `perl-modules=5.14.2-21+deb7u5`

Licenses: (parsed from: `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules/copyright`)

- `Artistic`
- `Artistic,`
- `Artistic-2`
- `BSD-3-clause`
- `BSD-3-clause-GENERIC`
- `BSD-4-clause`
- `BSD-4-clause-POWERDOG`
- `BZIP`
- `DONT-CHANGE-THE-GPL`
- `Expat`
- `GPL`
- `GPL-1+`
- `GPL-2+`
- `PERLDOCS`
- `REGCOMP`
- `REGCOMP,`
- `S2P`
- `SDBM-PUBLIC-DOMAIN`
- `TEXT-SOUNDEX`
- `TEXT-TABS`
- `Unicode`
- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris perl=5.14.2-21+deb7u5
'http://security.debian.org/pool/updates/main/p/perl/perl_5.14.2-21+deb7u5.dsc' perl_5.14.2-21+deb7u5.dsc 2394 SHA256:cf6791573081a2095bdf78abb47eb35439efb90e8b529dc71deb04430b798e87
'http://security.debian.org/pool/updates/main/p/perl/perl_5.14.2.orig.tar.bz2' perl_5.14.2.orig.tar.bz2 13226972 SHA256:c2a2362e8d1fdd2bfbfde801fcd78241f154c164f00fba76065ab8cc5c7b06cd
'http://security.debian.org/pool/updates/main/p/perl/perl_5.14.2-21+deb7u5.debian.tar.gz' perl_5.14.2-21+deb7u5.debian.tar.gz 194825 SHA256:bc1957c557e945349bfbc59ccfb994502c340e448ca33d8f197b8567ea6a9d11
```

Other potentially useful URLs:

- https://sources.debian.net/src/perl/5.14.2-21+deb7u5/ (for browsing the source)
- https://sources.debian.net/src/perl/5.14.2-21+deb7u5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/perl/5.14.2-21+deb7u5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pixman=0.26.0-4+deb7u2`

Binary Packages:

- `libpixman-1-0:amd64=0.26.0-4+deb7u2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pixman=0.26.0-4+deb7u2
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.26.0-4+deb7u2.dsc' pixman_0.26.0-4+deb7u2.dsc 2049 SHA256:59255028dd7baf7e7344ce90f7c603629a581d07ab96f9df2c65e12f96674cb5
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.26.0.orig.tar.gz' pixman_0.26.0.orig.tar.gz 747777 SHA256:b2644db182d0e41a8fa0f2ae2b3135542c44a1b72cfe70f1cb453df333df448f
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.26.0-4+deb7u2.diff.gz' pixman_0.26.0-4+deb7u2.diff.gz 211823 SHA256:e44fd8946baa104f8b0749b26697280370b7c299a61262e15fef259df3ed4f95
```

Other potentially useful URLs:

- https://sources.debian.net/src/pixman/0.26.0-4+deb7u2/ (for browsing the source)
- https://sources.debian.net/src/pixman/0.26.0-4+deb7u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pixman/0.26.0-4+deb7u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pulseaudio=2.0-6.1`

Binary Packages:

- `libpulse0:amd64=2.0-6.1`

Licenses: (parsed from: `/usr/share/doc/libpulse0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris pulseaudio=2.0-6.1
'http://deb.debian.org/debian/pool/main/p/pulseaudio/pulseaudio_2.0-6.1.dsc' pulseaudio_2.0-6.1.dsc 4095 SHA256:2668239ff444304a065bbf33d7e33a36770ee549c44617d36a6ba8e686715715
'http://deb.debian.org/debian/pool/main/p/pulseaudio/pulseaudio_2.0.orig.tar.xz' pulseaudio_2.0.orig.tar.xz 1325560 SHA256:9c7d637df594bc4de0da9e15a406dfd1e4fdd35d28330c96ba56c28579115260
'http://deb.debian.org/debian/pool/main/p/pulseaudio/pulseaudio_2.0-6.1.debian.tar.xz' pulseaudio_2.0-6.1.debian.tar.xz 25644 SHA256:7bf0f41816206322ce32e019d505479499a9687c3cac8f0ae8ea7505ebf6da57
```

Other potentially useful URLs:

- https://sources.debian.net/src/pulseaudio/2.0-6.1/ (for browsing the source)
- https://sources.debian.net/src/pulseaudio/2.0-6.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pulseaudio/2.0-6.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `readline6=6.2+dfsg-0.1`

Binary Packages:

- `libreadline6:amd64=6.2+dfsg-0.1`
- `readline-common=6.2+dfsg-0.1`

Licenses: (parsed from: `/usr/share/doc/libreadline6/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline6=6.2+dfsg-0.1
'http://deb.debian.org/debian/pool/main/r/readline6/readline6_6.2+dfsg-0.1.dsc' readline6_6.2+dfsg-0.1.dsc 2442 SHA256:700655bb6a3dad60374799d174ba23df952fd3c9f0101e2f32de409b70d6531d
'http://deb.debian.org/debian/pool/main/r/readline6/readline6_6.2+dfsg.orig.tar.xz' readline6_6.2+dfsg.orig.tar.xz 707852 SHA256:06e99d493313511a387fa3faea530e336ffb34e2a38033a533730d76527f2378
'http://deb.debian.org/debian/pool/main/r/readline6/readline6_6.2+dfsg-0.1.debian.tar.gz' readline6_6.2+dfsg-0.1.debian.tar.gz 28710 SHA256:ee86c686b43fb048d18663de8a150032aee3ef2a8f14bcc1ca42624ccdadd499
```

Other potentially useful URLs:

- https://sources.debian.net/src/readline6/6.2+dfsg-0.1/ (for browsing the source)
- https://sources.debian.net/src/readline6/6.2+dfsg-0.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/readline6/6.2+dfsg-0.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sed=4.2.1-10`

Binary Packages:

- `sed=4.2.1-10`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris sed=4.2.1-10
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.2.1-10.dsc' sed_4.2.1-10.dsc 1828 SHA256:12cda100a4f8e972614665faed9c46a33efc0c844c958e070be801c20f6ef9a1
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.2.1.orig.tar.gz' sed_4.2.1.orig.tar.gz 1152453 SHA256:8773541ce097fdc4c5b9e7da12a82dffbb30cd91f7bc169f52f05f93b7fc3060
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.2.1-10.debian.tar.gz' sed_4.2.1-10.debian.tar.gz 67497 SHA256:18c05427b7808ab74ba20b487f9e80747ba48afe5d3d8145b468e42c2a697ae2
```

Other potentially useful URLs:

- https://sources.debian.net/src/sed/4.2.1-10/ (for browsing the source)
- https://sources.debian.net/src/sed/4.2.1-10/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sed/4.2.1-10/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sensible-utils=0.0.7`

Binary Packages:

- `sensible-utils=0.0.7`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.7
'http://deb.debian.org/debian/pool/main/s/sensible-utils/sensible-utils_0.0.7.dsc' sensible-utils_0.0.7.dsc 1545 SHA256:6e9479877998ce47f83875d3fc11f3919fa591e5acc90798a052c8d60448f59c
'http://deb.debian.org/debian/pool/main/s/sensible-utils/sensible-utils_0.0.7.tar.gz' sensible-utils_0.0.7.tar.gz 74700 SHA256:6b4d5d8787743aac1f80949ae0592c61266bfba507491ae0aab99355ed57642a
```

Other potentially useful URLs:

- https://sources.debian.net/src/sensible-utils/0.0.7/ (for browsing the source)
- https://sources.debian.net/src/sensible-utils/0.0.7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sensible-utils/0.0.7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sgml-base=1.26+nmu4`

Binary Packages:

- `sgml-base=1.26+nmu4`

Licenses: (parsed from: `/usr/share/doc/sgml-base/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris sgml-base=1.26+nmu4
'http://deb.debian.org/debian/pool/main/s/sgml-base/sgml-base_1.26+nmu4.dsc' sgml-base_1.26+nmu4.dsc 1482 SHA256:967c5dad980d13a5b235b4b6b4a66428303ba85a0e64b7c7f4659b69d9203ec6
'http://deb.debian.org/debian/pool/main/s/sgml-base/sgml-base_1.26+nmu4.tar.gz' sgml-base_1.26+nmu4.tar.gz 12845 SHA256:7aea8d5d404476754363763e2bef2bafd52e90e68eb7055366432624cab6c667
```

Other potentially useful URLs:

- https://sources.debian.net/src/sgml-base/1.26+nmu4/ (for browsing the source)
- https://sources.debian.net/src/sgml-base/1.26+nmu4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sgml-base/1.26+nmu4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `shadow=1:4.1.5.1-1+deb7u1`

Binary Packages:

- `login=1:4.1.5.1-1+deb7u1`
- `passwd=1:4.1.5.1-1+deb7u1`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.1.5.1-1+deb7u1
'http://security.debian.org/pool/updates/main/s/shadow/shadow_4.1.5.1-1+deb7u1.dsc' shadow_4.1.5.1-1+deb7u1.dsc 2213 SHA256:56a482196c5b46de55115a63d26ca509fea15b24e5edbcca764893323562d23a
'http://security.debian.org/pool/updates/main/s/shadow/shadow_4.1.5.1.orig.tar.gz' shadow_4.1.5.1.orig.tar.gz 3508077 SHA256:ee1986c5fec9f6e7868bcc5329874a72dec74897b598d86eb0532f79471f32f0
'http://security.debian.org/pool/updates/main/s/shadow/shadow_4.1.5.1-1+deb7u1.diff.gz' shadow_4.1.5.1-1+deb7u1.diff.gz 81816 SHA256:75872dd557090197966644ae8e2855f6967d8d24ca48d0edd707f56fdfbd638f
```

Other potentially useful URLs:

- https://sources.debian.net/src/shadow/1:4.1.5.1-1+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/shadow/1:4.1.5.1-1+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/shadow/1:4.1.5.1-1+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `shared-mime-info=1.0-1`

Binary Packages:

- `shared-mime-info=1.0-1+b1`

Licenses: (parsed from: `/usr/share/doc/shared-mime-info/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris shared-mime-info=1.0-1
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_1.0-1.dsc' shared-mime-info_1.0-1.dsc 1291 SHA256:3894ea5fd0ec077a37f2c52ab82d944bad42b69b84fb87696c40ff911b8ba405
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_1.0.orig.tar.xz' shared-mime-info_1.0.orig.tar.xz 496700 SHA256:d2e830e5aae213dd906e64495e9618cc4ef40d7b249e0971a190b04d5802ae8f
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_1.0-1.debian.tar.gz' shared-mime-info_1.0-1.debian.tar.gz 10839 SHA256:3a6ee0db75ba4d46b0f3c05780271b9b4cc0b305bf8d1eaf402b56af7b0d55a8
```

Other potentially useful URLs:

- https://sources.debian.net/src/shared-mime-info/1.0-1/ (for browsing the source)
- https://sources.debian.net/src/shared-mime-info/1.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/shared-mime-info/1.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `slang2=2.2.4-15`

Binary Packages:

- `libslang2:amd64=2.2.4-15`

Licenses: (parsed from: `/usr/share/doc/libslang2/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris slang2=2.2.4-15
'http://deb.debian.org/debian/pool/main/s/slang2/slang2_2.2.4-15.dsc' slang2_2.2.4-15.dsc 2288 SHA256:27d4d453b32dced24efa09cce10c14b5f867ed60e4a221d07738ef57fec4c329
'http://deb.debian.org/debian/pool/main/s/slang2/slang2_2.2.4.orig.tar.bz2' slang2_2.2.4.orig.tar.bz2 1427363 SHA256:9a8257a9a2a55099af858b13338dc8f3a06dd2069f46f0df2c9c3bb84a01d5db
'http://deb.debian.org/debian/pool/main/s/slang2/slang2_2.2.4-15.debian.tar.xz' slang2_2.2.4-15.debian.tar.xz 19092 SHA256:1440a1fca38bdb30a53ba03032faed70f1110f3e7f775e7135645aadbae405d6
```

Other potentially useful URLs:

- https://sources.debian.net/src/slang2/2.2.4-15/ (for browsing the source)
- https://sources.debian.net/src/slang2/2.2.4-15/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/slang2/2.2.4-15/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sqlite3=3.7.13-1+deb7u4`

Binary Packages:

- `libsqlite3-0:amd64=3.7.13-1+deb7u4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.7.13-1+deb7u4
'http://security.debian.org/pool/updates/main/s/sqlite3/sqlite3_3.7.13-1+deb7u4.dsc' sqlite3_3.7.13-1+deb7u4.dsc 2447 SHA256:f096b6609611239f74a76e65e895325d3fc711d49925b87c9ca136919586ea15
'http://security.debian.org/pool/updates/main/s/sqlite3/sqlite3_3.7.13.orig-www.tar.gz' sqlite3_3.7.13.orig-www.tar.gz 3031341 SHA256:8ce4b88b696e30b1a02b36dc71cff83ac81e28f82a42b1a5a33bef3434ca1079
'http://security.debian.org/pool/updates/main/s/sqlite3/sqlite3_3.7.13.orig.tar.gz' sqlite3_3.7.13.orig.tar.gz 4367680 SHA256:9a9e72043cb0b5a790561c5a6829e3b2b87c5087e5b47dee74424be8cb814716
'http://security.debian.org/pool/updates/main/s/sqlite3/sqlite3_3.7.13-1+deb7u4.debian.tar.gz' sqlite3_3.7.13-1+deb7u4.debian.tar.gz 22519 SHA256:4a400935fb1472e25af4e9bb11f97ce4c898a72223acea5263613e70bdb78138
```

Other potentially useful URLs:

- https://sources.debian.net/src/sqlite3/3.7.13-1+deb7u4/ (for browsing the source)
- https://sources.debian.net/src/sqlite3/3.7.13-1+deb7u4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sqlite3/3.7.13-1+deb7u4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `systemd=44-11+deb7u5`

Binary Packages:

- `libsystemd-login0:amd64=44-11+deb7u5`

Licenses: (parsed from: `/usr/share/doc/libsystemd-login0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris systemd=44-11+deb7u5
'http://security.debian.org/pool/updates/main/s/systemd/systemd_44-11+deb7u5.dsc' systemd_44-11+deb7u5.dsc 2879 SHA256:2e81585eab93c422bd7c4d46334127e1972100fccc4a4c9f8c0785329a3ae033
'http://security.debian.org/pool/updates/main/s/systemd/systemd_44.orig.tar.xz' systemd_44.orig.tar.xz 885636 SHA256:7a5aac4b4b8b3a82bf59292f10e43d8f2c2d7039f34e95714f81d8edcb42233c
'http://security.debian.org/pool/updates/main/s/systemd/systemd_44-11+deb7u5.debian.tar.gz' systemd_44-11+deb7u5.debian.tar.gz 33488 SHA256:320c60d140116c736dcc9ffb89892ea0d92c6cff051ff579b6c04a3ab12e7d90
```

Other potentially useful URLs:

- https://sources.debian.net/src/systemd/44-11+deb7u5/ (for browsing the source)
- https://sources.debian.net/src/systemd/44-11+deb7u5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/systemd/44-11+deb7u5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sysvinit=2.88dsf-41+deb7u1`

Binary Packages:

- `initscripts=2.88dsf-41+deb7u1`
- `sysv-rc=2.88dsf-41+deb7u1`
- `sysvinit=2.88dsf-41+deb7u1`
- `sysvinit-utils=2.88dsf-41+deb7u1`

Licenses: (parsed from: `/usr/share/doc/initscripts/copyright`, `/usr/share/doc/sysv-rc/copyright`, `/usr/share/doc/sysvinit/copyright`, `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.88dsf-41+deb7u1
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf-41+deb7u1.dsc' sysvinit_2.88dsf-41+deb7u1.dsc 2198 SHA256:bbc1911a16ccf456eae1a89feacad9467ced0232fe2455bfa818319b05bb751b
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf.orig.tar.gz' sysvinit_2.88dsf.orig.tar.gz 125330 SHA256:b016f937958d2809a020d407e1287bdc09abf1d44efaa96530e2ea57f544f4e8
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf-41+deb7u1.debian.tar.gz' sysvinit_2.88dsf-41+deb7u1.debian.tar.gz 213657 SHA256:29795d8855a6bb0cbb0bec7c3d9f666b92c40a5d6157b61cd727de4819f45827
```

Other potentially useful URLs:

- https://sources.debian.net/src/sysvinit/2.88dsf-41+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/sysvinit/2.88dsf-41+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sysvinit/2.88dsf-41+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tar=1.26+dfsg-0.1+deb7u1`

Binary Packages:

- `tar=1.26+dfsg-0.1+deb7u1`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.26+dfsg-0.1+deb7u1
'http://security.debian.org/pool/updates/main/t/tar/tar_1.26+dfsg-0.1+deb7u1.dsc' tar_1.26+dfsg-0.1+deb7u1.dsc 1823 SHA256:ace9b8c6105a452791fe4d1f28ded50a9a06e499bfa5f3d8c86ee17e32f9e6ed
'http://security.debian.org/pool/updates/main/t/tar/tar_1.26+dfsg.orig.tar.xz' tar_1.26+dfsg.orig.tar.xz 1557888 SHA256:2791c99df400cd05afb1d78f29c4a412b6f038e5f38aa4759264cb434d715df6
'http://security.debian.org/pool/updates/main/t/tar/tar_1.26+dfsg-0.1+deb7u1.debian.tar.gz' tar_1.26+dfsg-0.1+deb7u1.debian.tar.gz 33515 SHA256:49a050cb0c1ed62f6688f0e7f32f44994fab029b4195b8eaf295afd9a0013f4b
```

Other potentially useful URLs:

- https://sources.debian.net/src/tar/1.26+dfsg-0.1+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/tar/1.26+dfsg-0.1+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tar/1.26+dfsg-0.1+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tcp-wrappers=7.6.q-24`

Binary Packages:

- `libwrap0:amd64=7.6.q-24`
- `tcpd=7.6.q-24`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tcp-wrappers=7.6.q-24
'http://deb.debian.org/debian/pool/main/t/tcp-wrappers/tcp-wrappers_7.6.q-24.dsc' tcp-wrappers_7.6.q-24.dsc 1151 SHA256:53137476d36c5323ab00fce283f306616f663332c94865204be35c9201d8ab28
'http://deb.debian.org/debian/pool/main/t/tcp-wrappers/tcp-wrappers_7.6.q.orig.tar.gz' tcp-wrappers_7.6.q.orig.tar.gz 99438 SHA256:9543d7adedf78a6de0b221ccbbd1952e08b5138717f4ade814039bb489a4315d
'http://deb.debian.org/debian/pool/main/t/tcp-wrappers/tcp-wrappers_7.6.q-24.debian.tar.xz' tcp-wrappers_7.6.q-24.debian.tar.xz 35396 SHA256:672ad0d3f70579815cd8f15c29054c49f6fd9902863be42cc2452a9ecbe8eacd
```

Other potentially useful URLs:

- https://sources.debian.net/src/tcp-wrappers/7.6.q-24/ (for browsing the source)
- https://sources.debian.net/src/tcp-wrappers/7.6.q-24/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tcp-wrappers/7.6.q-24/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tiff3=3.9.6-11+deb7u8`

Binary Packages:

- `libtiff4:amd64=3.9.6-11+deb7u8`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/tiff3/3.9.6-11+deb7u8/


### `dpkg` source package: `ttf-dejavu=2.33-3`

Binary Packages:

- `ttf-dejavu-core=2.33-3`
- `ttf-dejavu-extra=2.33-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ttf-dejavu=2.33-3
'http://deb.debian.org/debian/pool/main/t/ttf-dejavu/ttf-dejavu_2.33-3.dsc' ttf-dejavu_2.33-3.dsc 2357 SHA256:5483f3ce5eb9dec439dbe0963ae6ec7de1a0e33dbca9730b9f82669e4a8d3ec6
'http://deb.debian.org/debian/pool/main/t/ttf-dejavu/ttf-dejavu_2.33.orig.tar.gz' ttf-dejavu_2.33.orig.tar.gz 12442306 SHA256:52959f29e1771068eb16f04093fc3881073d4ba48d0851e8fca400f65edaebac
'http://deb.debian.org/debian/pool/main/t/ttf-dejavu/ttf-dejavu_2.33-3.debian.tar.gz' ttf-dejavu_2.33-3.debian.tar.gz 10377 SHA256:8a34ce9d24968a494258eb56801f8db7021effb8ba4b16aa5f511a51d8aec7cd
```

Other potentially useful URLs:

- https://sources.debian.net/src/ttf-dejavu/2.33-3/ (for browsing the source)
- https://sources.debian.net/src/ttf-dejavu/2.33-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ttf-dejavu/2.33-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tzdata=2017c-0+deb7u1`

Binary Packages:

- `tzdata=2017c-0+deb7u1`
- `tzdata-java=2017c-0+deb7u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tzdata=2017c-0+deb7u1
'http://security.debian.org/pool/updates/main/t/tzdata/tzdata_2017c-0+deb7u1.dsc' tzdata_2017c-0+deb7u1.dsc 1966 SHA256:8d1398642a537a57ec210bcd39956458b9ff6b148f73a3a28597d042961ff95a
'http://security.debian.org/pool/updates/main/t/tzdata/tzdata_2017c.orig.tar.gz' tzdata_2017c.orig.tar.gz 335571 SHA256:d6543f92a929826318e2f44ff3a7611ce5f565a43e10250b42599d0ba4cbd90b
'http://security.debian.org/pool/updates/main/t/tzdata/tzdata_2017c-0+deb7u1.debian.tar.xz' tzdata_2017c-0+deb7u1.debian.tar.xz 102100 SHA256:5da97af6fa8054321d817dacd9ea43bef9b0f343b296554feff1d81b38b181a1
```

Other potentially useful URLs:

- https://sources.debian.net/src/tzdata/2017c-0+deb7u1/ (for browsing the source)
- https://sources.debian.net/src/tzdata/2017c-0+deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tzdata/2017c-0+deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ucf=3.0025+nmu3`

Binary Packages:

- `ucf=3.0025+nmu3`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0025+nmu3
'http://deb.debian.org/debian/pool/main/u/ucf/ucf_3.0025+nmu3.dsc' ucf_3.0025+nmu3.dsc 1505 SHA256:098a6cc34810e39c36bc00f039822a224c9b18ee57342859eb4e641e591e86cd
'http://deb.debian.org/debian/pool/main/u/ucf/ucf_3.0025+nmu3.tar.gz' ucf_3.0025+nmu3.tar.gz 94491 SHA256:b97de116fda3c53198cd2154fb54304350bcdf474cca8ab3bef6d01cb824d738
```

Other potentially useful URLs:

- https://sources.debian.net/src/ucf/3.0025+nmu3/ (for browsing the source)
- https://sources.debian.net/src/ucf/3.0025+nmu3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ucf/3.0025+nmu3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `unzip=6.0-8+deb7u6`

Binary Packages:

- `unzip=6.0-8+deb7u6`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris unzip=6.0-8+deb7u6
'http://security.debian.org/pool/updates/main/u/unzip/unzip_6.0-8+deb7u6.dsc' unzip_6.0-8+deb7u6.dsc 1380 SHA256:a190ad8241805e36d44fd825ba20965fe8ad78e49e0dcb1a7b75be6c75a5ddb6
'http://security.debian.org/pool/updates/main/u/unzip/unzip_6.0.orig.tar.gz' unzip_6.0.orig.tar.gz 1376845 SHA256:036d96991646d0449ed0aa952e4fbe21b476ce994abc276e49d30e686708bd37
'http://security.debian.org/pool/updates/main/u/unzip/unzip_6.0-8+deb7u6.debian.tar.gz' unzip_6.0-8+deb7u6.debian.tar.gz 17302 SHA256:7a8e82b40c67caa27636e05b1c47c5c89bd5de3d4544707b02feea00fb811335
```

Other potentially useful URLs:

- https://sources.debian.net/src/unzip/6.0-8+deb7u6/ (for browsing the source)
- https://sources.debian.net/src/unzip/6.0-8+deb7u6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/unzip/6.0-8+deb7u6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ustr=1.0.4-3`

Binary Packages:

- `libustr-1.0-1:amd64=1.0.4-3`

Licenses: (parsed from: `/usr/share/doc/libustr-1.0-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris ustr=1.0.4-3
'http://deb.debian.org/debian/pool/main/u/ustr/ustr_1.0.4-3.dsc' ustr_1.0.4-3.dsc 1992 SHA256:ca6043d523fd9f677446b6cac95ce5263768f3ccc5ee38ef10e1551b2cf1c00a
'http://deb.debian.org/debian/pool/main/u/ustr/ustr_1.0.4.orig.tar.gz' ustr_1.0.4.orig.tar.gz 301345 SHA256:4d293b6b9d9fe51d58441f4b09b1f0005fcad8256ae8048587789bf5dbefb62e
'http://deb.debian.org/debian/pool/main/u/ustr/ustr_1.0.4-3.diff.gz' ustr_1.0.4-3.diff.gz 11415 SHA256:8349cbdef416e9b919d434c6a88c7e29700a00df3e81f21b7d8127ffd7e4945a
```

Other potentially useful URLs:

- https://sources.debian.net/src/ustr/1.0.4-3/ (for browsing the source)
- https://sources.debian.net/src/ustr/1.0.4-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ustr/1.0.4-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `util-linux=2.20.1-5.3`

Binary Packages:

- `bsdutils=1:2.20.1-5.3`
- `libblkid1:amd64=2.20.1-5.3`
- `libmount1=2.20.1-5.3`
- `libuuid1:amd64=2.20.1-5.3`
- `mount=2.20.1-5.3`
- `util-linux=2.20.1-5.3`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris util-linux=2.20.1-5.3
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.20.1-5.3.dsc' util-linux_2.20.1-5.3.dsc 2912 SHA256:c8b575c3f6137bfcbadbf71488a980e4fa3407c5a08d9b8a6492d42e49ccd572
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.20.1.orig.tar.gz' util-linux_2.20.1.orig.tar.gz 6174190 SHA256:951055ee9b084c337427f34997da5b7dc321daf1b6433c78ef763ed906711fbb
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.20.1-5.3.diff.gz' util-linux_2.20.1-5.3.diff.gz 278967 SHA256:b9709296fa3dbdfed28b708f516298723585ff2fd47f83301f7eb656147d40f8
```

Other potentially useful URLs:

- https://sources.debian.net/src/util-linux/2.20.1-5.3/ (for browsing the source)
- https://sources.debian.net/src/util-linux/2.20.1-5.3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/util-linux/2.20.1-5.3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `x11proto-core=7.0.23-1`

Binary Packages:

- `x11proto-core-dev=7.0.23-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-core=7.0.23-1
'http://deb.debian.org/debian/pool/main/x/x11proto-core/x11proto-core_7.0.23-1.dsc' x11proto-core_7.0.23-1.dsc 2004 SHA256:aace29d60ee651cc113d3ca4d8b9562e05cc8c3b8d05fa52ecbc9c7b99a91cc0
'http://deb.debian.org/debian/pool/main/x/x11proto-core/x11proto-core_7.0.23.orig.tar.gz' x11proto-core_7.0.23.orig.tar.gz 358066 SHA256:07efb40fdd23943ec554920eaf1fe175f70d20127c7a0ee8ab818bd88226f696
'http://deb.debian.org/debian/pool/main/x/x11proto-core/x11proto-core_7.0.23-1.diff.gz' x11proto-core_7.0.23-1.diff.gz 6354 SHA256:d56fa7772ed6da926c40cee67600b93079028cfc5f2c0b5291c587134bb99a1e
```

Other potentially useful URLs:

- https://sources.debian.net/src/x11proto-core/7.0.23-1/ (for browsing the source)
- https://sources.debian.net/src/x11proto-core/7.0.23-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/x11proto-core/7.0.23-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `x11proto-input=2.2-1`

Binary Packages:

- `x11proto-input-dev=2.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-input=2.2-1
'http://deb.debian.org/debian/pool/main/x/x11proto-input/x11proto-input_2.2-1.dsc' x11proto-input_2.2-1.dsc 1970 SHA256:3463b21c77508f9c0907e01b43ab8c786b51d0db407797ac45044ad05df76ae6
'http://deb.debian.org/debian/pool/main/x/x11proto-input/x11proto-input_2.2.orig.tar.gz' x11proto-input_2.2.orig.tar.gz 221725 SHA256:ce20535f66529f7b7d79768cb2de36bf71648092de0a4741e4efb5c537ea7dee
'http://deb.debian.org/debian/pool/main/x/x11proto-input/x11proto-input_2.2-1.diff.gz' x11proto-input_2.2-1.diff.gz 5518 SHA256:1880c26739dfaa9880c8ecc812296df966a6d596b2a58c2e384c01b24f0f42b3
```

Other potentially useful URLs:

- https://sources.debian.net/src/x11proto-input/2.2-1/ (for browsing the source)
- https://sources.debian.net/src/x11proto-input/2.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/x11proto-input/2.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `x11proto-kb=1.0.6-2`

Binary Packages:

- `x11proto-kb-dev=1.0.6-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-kb=1.0.6-2
'http://deb.debian.org/debian/pool/main/x/x11proto-kb/x11proto-kb_1.0.6-2.dsc' x11proto-kb_1.0.6-2.dsc 1327 SHA256:4cf714aa520a551e5eefa76c38f07d882ca36e1ccf029baf0517b59a688a1dfc
'http://deb.debian.org/debian/pool/main/x/x11proto-kb/x11proto-kb_1.0.6.orig.tar.gz' x11proto-kb_1.0.6.orig.tar.gz 315728 SHA256:01fd22286ca9c2a93ca7bb686dbb2f3c108ceb944cd3dfdc9ceeb50f9b7f4505
'http://deb.debian.org/debian/pool/main/x/x11proto-kb/x11proto-kb_1.0.6-2.diff.gz' x11proto-kb_1.0.6-2.diff.gz 14128 SHA256:a33fddbe8c2cb0fb92137343e7fd86c52041152121ac427de5b55241f445d17b
```

Other potentially useful URLs:

- https://sources.debian.net/src/x11proto-kb/1.0.6-2/ (for browsing the source)
- https://sources.debian.net/src/x11proto-kb/1.0.6-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/x11proto-kb/1.0.6-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xft=2.3.1-1`

Binary Packages:

- `libxft2:amd64=2.3.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xft=2.3.1-1
'http://deb.debian.org/debian/pool/main/x/xft/xft_2.3.1-1.dsc' xft_2.3.1-1.dsc 1451 SHA256:60d6b1279d8492e98e5cf0282209898871fa9f5ba2a9f4c9243f8cdaf51bdab6
'http://deb.debian.org/debian/pool/main/x/xft/xft_2.3.1.orig.tar.gz' xft_2.3.1.orig.tar.gz 391992 SHA256:df3765d1454bb148fc0886f0723dc9f40430243a06e94414475c6af2a72e8915
'http://deb.debian.org/debian/pool/main/x/xft/xft_2.3.1-1.diff.gz' xft_2.3.1-1.diff.gz 20930 SHA256:d8b26c364338a1a77290e4c91c0a9410a5982f0dc6fe070ba84158ac0c3942c0
```

Other potentially useful URLs:

- https://sources.debian.net/src/xft/2.3.1-1/ (for browsing the source)
- https://sources.debian.net/src/xft/2.3.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xft/2.3.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xml-core=0.13+nmu2`

Binary Packages:

- `xml-core=0.13+nmu2`

Licenses: (parsed from: `/usr/share/doc/xml-core/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris xml-core=0.13+nmu2
'http://deb.debian.org/debian/pool/main/x/xml-core/xml-core_0.13+nmu2.dsc' xml-core_0.13+nmu2.dsc 1738 SHA256:edf913f3aee9865480143bdd91f5f6a0838ca61ddc8674ea316e48a22d65fecb
'http://deb.debian.org/debian/pool/main/x/xml-core/xml-core_0.13+nmu2.tar.gz' xml-core_0.13+nmu2.tar.gz 23436 SHA256:cd3f5402265a9ab0e7e4a6efafdc5eb9cb02d33c3e75d1ff1ecb0ac0899e242b
```

Other potentially useful URLs:

- https://sources.debian.net/src/xml-core/0.13+nmu2/ (for browsing the source)
- https://sources.debian.net/src/xml-core/0.13+nmu2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xml-core/0.13+nmu2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xorg-sgml-doctools=1:1.10-1`

Binary Packages:

- `xorg-sgml-doctools=1:1.10-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xorg-sgml-doctools=1:1.10-1
'http://deb.debian.org/debian/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.10-1.dsc' xorg-sgml-doctools_1.10-1.dsc 1337 SHA256:59c87288607ae16cec4fddc0b396a3a9108fddd54df3a3840b0d79a47c68ebf5
'http://deb.debian.org/debian/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.10.orig.tar.gz' xorg-sgml-doctools_1.10.orig.tar.gz 141945 SHA256:9b860ab029812a2637b2903a977b009bdf31297b8ff0a0fe46ef38b34bf821a6
'http://deb.debian.org/debian/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.10-1.diff.gz' xorg-sgml-doctools_1.10-1.diff.gz 3136 SHA256:b5b2b4bbe23883eff86893cddb0ac952dd6961a621e8652dfe289a2564fe8e83
```

Other potentially useful URLs:

- https://sources.debian.net/src/xorg-sgml-doctools/1:1.10-1/ (for browsing the source)
- https://sources.debian.net/src/xorg-sgml-doctools/1:1.10-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xorg-sgml-doctools/1:1.10-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xorg=1:7.7+3~deb7u1`

Binary Packages:

- `x11-common=1:7.7+3~deb7u1`

Licenses: (parsed from: `/usr/share/doc/x11-common/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris xorg=1:7.7+3~deb7u1
'http://deb.debian.org/debian/pool/main/x/xorg/xorg_7.7+3~deb7u1.dsc' xorg_7.7+3~deb7u1.dsc 1981 SHA256:70e3d9c740f76b97292a3b6e3517dae9bc4a18b474d22e5e5b601f2b7cb80984
'http://deb.debian.org/debian/pool/main/x/xorg/xorg_7.7+3~deb7u1.tar.gz' xorg_7.7+3~deb7u1.tar.gz 922396 SHA256:4557b3320f95d3718fa082cdb7036654a3d9bfa92789e1c8f213204619a7cd1d
```

Other potentially useful URLs:

- https://sources.debian.net/src/xorg/1:7.7+3~deb7u1/ (for browsing the source)
- https://sources.debian.net/src/xorg/1:7.7+3~deb7u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xorg/1:7.7+3~deb7u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xtrans=1.2.7-1`

Binary Packages:

- `xtrans-dev=1.2.7-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xtrans=1.2.7-1
'http://deb.debian.org/debian/pool/main/x/xtrans/xtrans_1.2.7-1.dsc' xtrans_1.2.7-1.dsc 1915 SHA256:940b366b7fa5e0e744dfeeb05a9889d7d42bf0eb4b9f123da366cc18045e88ff
'http://deb.debian.org/debian/pool/main/x/xtrans/xtrans_1.2.7.orig.tar.gz' xtrans_1.2.7.orig.tar.gz 215637 SHA256:ef3d2c236adb609813e1e8397e1f92b5496436379edf4336ec38611b8e1d55ef
'http://deb.debian.org/debian/pool/main/x/xtrans/xtrans_1.2.7-1.diff.gz' xtrans_1.2.7-1.diff.gz 15887 SHA256:7a48fe570dfbc3449b23585a77b91d420897617dfb29f49d9cc7b076e01fed2c
```

Other potentially useful URLs:

- https://sources.debian.net/src/xtrans/1.2.7-1/ (for browsing the source)
- https://sources.debian.net/src/xtrans/1.2.7-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xtrans/1.2.7-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xz-utils=5.1.1alpha+20120614-2`

Binary Packages:

- `liblzma5:amd64=5.1.1alpha+20120614-2`
- `xz-utils=5.1.1alpha+20120614-2`

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
$ apt-get source -qq --print-uris xz-utils=5.1.1alpha+20120614-2
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.1.1alpha+20120614-2.dsc' xz-utils_5.1.1alpha+20120614-2.dsc 2325 SHA256:d7d87c6c7aa6d2fe45d8d55a8929ab12f0688f7f17bcfc6233ecfa94f6f7a298
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.1.1alpha+20120614.orig.tar.gz' xz-utils_5.1.1alpha+20120614.orig.tar.gz 556454 SHA256:b168e63400db449a6e7b3a06e668f557ca27e3d70accbd29d2b5a98e15c00fee
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.1.1alpha+20120614-2.debian.tar.gz' xz-utils_5.1.1alpha+20120614-2.debian.tar.gz 154298 SHA256:4e2873ab7b1ee44b7d580caf2a5ca761b10cb2725691b2c2a9b21edb0d771f39
```

Other potentially useful URLs:

- https://sources.debian.net/src/xz-utils/5.1.1alpha+20120614-2/ (for browsing the source)
- https://sources.debian.net/src/xz-utils/5.1.1alpha+20120614-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xz-utils/5.1.1alpha+20120614-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `zlib=1:1.2.7.dfsg-13`

Binary Packages:

- `zlib1g:amd64=1:1.2.7.dfsg-13`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.7.dfsg-13
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.7.dfsg-13.dsc' zlib_1.2.7.dfsg-13.dsc 2294 SHA256:5cc5046b5877744f9610972d88a53b886de69d69bb67fe539169826188ad04e1
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.7.dfsg.orig.tar.gz' zlib_1.2.7.dfsg.orig.tar.gz 359298 SHA256:268f5c6458835030f2a2ce6471d8c83fcd8ac51609aa9dcac4b9b2b0941c05a0
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.7.dfsg-13.debian.tar.gz' zlib_1.2.7.dfsg-13.debian.tar.gz 17060 SHA256:15c787124dc9e7d3676583013089bc152d44ace5cddd04abceb99d5920113f9e
```

Other potentially useful URLs:

- https://sources.debian.net/src/zlib/1:1.2.7.dfsg-13/ (for browsing the source)
- https://sources.debian.net/src/zlib/1:1.2.7.dfsg-13/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/zlib/1:1.2.7.dfsg-13/ (for access to the source package after it no longer exists in the archive)
