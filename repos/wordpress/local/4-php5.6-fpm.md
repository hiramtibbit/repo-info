# `wordpress:4.9.5-php5.6-fpm`

## Docker Metadata

- Image ID: `sha256:36fe4b84276633d8931df29efef7d166cfab334b36c587dfd15bb2593e399704`
- Created: `2018-05-05T14:55:40.425133323Z`
- Virtual Size: ~ 392.78 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-entrypoint.sh"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=5.6.36`
  - `PHP_URL=https://secure.php.net/get/php-5.6.36.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-5.6.36.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=18f536bf548e909b4e980379d0c4e56d024b2b1eb1c9768fd169360491f1d6dd`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=4.9.5`
  - `WORDPRESS_SHA1=6992f19163e21720b5693bed71ffe1ab17a4533a`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.2.52-2`

Binary Packages:

- `acl=2.2.52-2`
- `libacl1:amd64=2.2.52-2`

Licenses: (parsed from: `/usr/share/doc/acl/copyright`, `/usr/share/doc/libacl1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.2.52-2
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.52-2.dsc' acl_2.2.52-2.dsc 2025 SHA256:015097e04740e84fefbe6c890d02c603f79edece45c51cbb5c18431647cd7aad
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.52.orig.tar.bz2' acl_2.2.52.orig.tar.bz2 312128 SHA256:59d05b38af76baf2eddccbf08c7968a17451cc785ffecc657fcb46ce32b2631d
'http://deb.debian.org/debian/pool/main/a/acl/acl_2.2.52-2.debian.tar.xz' acl_2.2.52-2.debian.tar.xz 8524 SHA256:de81ec13cab6d33538db24a53c17838c5bdb32dd0e00e0b0b5d3325114e64e10
```

Other potentially useful URLs:

- https://sources.debian.net/src/acl/2.2.52-2/ (for browsing the source)
- https://sources.debian.net/src/acl/2.2.52-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/acl/2.2.52-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `apt=1.0.9.8.4`

Binary Packages:

- `apt=1.0.9.8.4`
- `libapt-pkg4.12:amd64=1.0.9.8.4`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg4.12/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=1.0.9.8.4
'http://deb.debian.org/debian/pool/main/a/apt/apt_1.0.9.8.4.dsc' apt_1.0.9.8.4.dsc 2530 SHA256:51fe8ce9490de264e55220e4c5f61a8bbb6d2f824c49c90914b2248db3e28bd3
'http://deb.debian.org/debian/pool/main/a/apt/apt_1.0.9.8.4.tar.xz' apt_1.0.9.8.4.tar.xz 1793116 SHA256:ac2a267b9f98685977d421e41b4518eceb66e9b85cd0d4a9f9a03db729190f7a
```

Other potentially useful URLs:

- https://sources.debian.net/src/apt/1.0.9.8.4/ (for browsing the source)
- https://sources.debian.net/src/apt/1.0.9.8.4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apt/1.0.9.8.4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `attr=1:2.4.47-2`

Binary Packages:

- `libattr1:amd64=1:2.4.47-2`

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

### `dpkg` source package: `audit=1:2.4-1`

Binary Packages:

- `libaudit-common=1:2.4-1`
- `libaudit1:amd64=1:2.4-1+b1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.4-1
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.4-1.dsc' audit_2.4-1.dsc 2068 SHA256:01d240bd783697b8ab4cd941f944612eebc81e1f535a8afb36b25ab3021cd15f
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.4.orig.tar.gz' audit_2.4.orig.tar.gz 937809 SHA256:6e5d39e7af9d00477ef60f824be8c93bd23a227869d6993ff36b7e7fa28fe99b
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.4-1.debian.tar.xz' audit_2.4-1.debian.tar.xz 15808 SHA256:c18c1b88c41f3b8be9e59d3041563599f822994cb10574ffc17f00f0a157c12c
```

Other potentially useful URLs:

- https://sources.debian.net/src/audit/1:2.4-1/ (for browsing the source)
- https://sources.debian.net/src/audit/1:2.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/audit/1:2.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `autoconf=2.69-8`

Binary Packages:

- `autoconf=2.69-8`

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
$ apt-get source -qq --print-uris autoconf=2.69-8
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.69-8.dsc' autoconf_2.69-8.dsc 1961 SHA256:cdf9c0f1959925e1f80746eac03dea2e95c2b7a12b1d14c78134e7ea813ca9ad
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.69.orig.tar.xz' autoconf_2.69.orig.tar.xz 1214744 SHA256:64ebcec9f8ac5b2487125a86a7760d2591ac9e1d3dbd59489633f9de62a57684
'http://deb.debian.org/debian/pool/main/a/autoconf/autoconf_2.69-8.debian.tar.xz' autoconf_2.69-8.debian.tar.xz 21220 SHA256:5ae055184f30a0c54523cf88e44aca6efdb772f02ed83991fc39b56a39ebe3f1
```

Other potentially useful URLs:

- https://sources.debian.net/src/autoconf/2.69-8/ (for browsing the source)
- https://sources.debian.net/src/autoconf/2.69-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/autoconf/2.69-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-files=8+deb8u10`

Binary Packages:

- `base-files=8+deb8u10`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=8+deb8u10
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_8+deb8u10.dsc' base-files_8+deb8u10.dsc 1030 SHA256:d8e71c4b54baf5d48d33ae403c6f65b691ac0ea622a74264e3b5ea129821a4fd
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_8+deb8u10.tar.xz' base-files_8+deb8u10.tar.xz 53180 SHA256:e7c2660f6e2a3ce2b5cd26e191a9a9e1dbb012708954b9c7062ac502d6f4c33b
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-files/8+deb8u10/ (for browsing the source)
- https://sources.debian.net/src/base-files/8+deb8u10/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-files/8+deb8u10/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-passwd=3.5.37`

Binary Packages:

- `base-passwd=3.5.37`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.37
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.37.dsc' base-passwd_3.5.37.dsc 1733 SHA256:211a49b6a3bbfdb61a91e9b5d9994c59d8a511a047c2cfc489c03c4c379d6cfe
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.37.tar.xz' base-passwd_3.5.37.tar.xz 51392 SHA256:7cb1cdd8e4aee39b5f59a3dc42d63619590fc4a2136db482fdb6be6e74bb3d04
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-passwd/3.5.37/ (for browsing the source)
- https://sources.debian.net/src/base-passwd/3.5.37/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-passwd/3.5.37/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bash=4.3-11+deb8u1`

Binary Packages:

- `bash=4.3-11+deb8u1`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=4.3-11+deb8u1
'http://deb.debian.org/debian/pool/main/b/bash/bash_4.3-11+deb8u1.dsc' bash_4.3-11+deb8u1.dsc 2348 SHA256:8433fa4a2bc18f2ca9cbcf7f16ae088a5135b37c9928e64ee80fa6804cb5b592
'http://deb.debian.org/debian/pool/main/b/bash/bash_4.3.orig.tar.gz' bash_4.3.orig.tar.gz 7516231 SHA256:b2fe79ddf9e7abdb4695e3070afa866d2a94a58d1cc9d731585330c753815491
'http://deb.debian.org/debian/pool/main/b/bash/bash_4.3-11+deb8u1.debian.tar.xz' bash_4.3-11+deb8u1.debian.tar.xz 80096 SHA256:6d0ae7d128c742d9f7490993fe5708ed90b2ff40ebab2eb45140805cfa98269f
```

Other potentially useful URLs:

- https://sources.debian.net/src/bash/4.3-11+deb8u1/ (for browsing the source)
- https://sources.debian.net/src/bash/4.3-11+deb8u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bash/4.3-11+deb8u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `binutils=2.25-5+deb8u1`

Binary Packages:

- `binutils=2.25-5+deb8u1`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.25-5+deb8u1
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.25-5+deb8u1.dsc' binutils_2.25-5+deb8u1.dsc 2394 SHA256:a64dfe3d58408a03842aa96a68d14216847c34f6363f5622d3277caf0359f7ae
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.25.orig.tar.gz' binutils_2.25.orig.tar.gz 34179370 SHA256:a608164c4858bfe42fcac4639c341482ba6207118dadeca624fdfabf39cd7281
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.25-5+deb8u1.diff.gz' binutils_2.25-5+deb8u1.diff.gz 146765 SHA256:6c46154ae2ef9e8d8933bc546192caac9f37d4bf36a2b2d154da97b336589b39
```

Other potentially useful URLs:

- https://sources.debian.net/src/binutils/2.25-5+deb8u1/ (for browsing the source)
- https://sources.debian.net/src/binutils/2.25-5+deb8u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/binutils/2.25-5+deb8u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bzip2=1.0.6-7`

Binary Packages:

- `bzip2=1.0.6-7+b3`
- `libbz2-1.0:amd64=1.0.6-7+b3`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/libbz2-1.0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.6-7
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6-7.dsc' bzip2_1.0.6-7.dsc 2261 SHA256:098b7e38d1d634fc361847602bf85753dadeca121b9531f6dba2614b16e0637c
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA256:d70a9ccd8bdf47e302d96c69fecd54925f45d9c7b966bb4ef5f56b770960afa7
'http://deb.debian.org/debian/pool/main/b/bzip2/bzip2_1.0.6-7.debian.tar.bz2' bzip2_1.0.6-7.debian.tar.bz2 59542 SHA256:17e030ccb2908d15553c1510869e09d8ef41b5f8e72c7c65d1d5503396a5bd3a
```

Other potentially useful URLs:

- https://sources.debian.net/src/bzip2/1.0.6-7/ (for browsing the source)
- https://sources.debian.net/src/bzip2/1.0.6-7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bzip2/1.0.6-7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ca-certificates=20141019+deb8u3`

Binary Packages:

- `ca-certificates=20141019+deb8u3`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20141019+deb8u3
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20141019+deb8u3.dsc' ca-certificates_20141019+deb8u3.dsc 1779 SHA256:00d74f6be7cdae6be14b97f0a0c7d98e6050fcf09044d2f0f637cf1a985b1234
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20141019+deb8u3.tar.xz' ca-certificates_20141019+deb8u3.tar.xz 299472 SHA256:d6c6244b47b96ae9b718e4c1f3b6dc3487a455a31aeae70573361f313bc532a8
```

Other potentially useful URLs:

- https://sources.debian.net/src/ca-certificates/20141019+deb8u3/ (for browsing the source)
- https://sources.debian.net/src/ca-certificates/20141019+deb8u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ca-certificates/20141019+deb8u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cdebconf=0.192`

Binary Packages:

- `libdebconfclient0:amd64=0.192`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.192
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.192.dsc' cdebconf_0.192.dsc 2574 SHA256:85d39068de77c67036b6e2ca5ebdf3990e19a6c5b0f01422608ff7656c166dbd
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.192.tar.xz' cdebconf_0.192.tar.xz 266320 SHA256:bb09e6c04b514dd12684dbc6eacde57fb03e282f67f0199e67078c13ffffd667
```

Other potentially useful URLs:

- https://sources.debian.net/src/cdebconf/0.192/ (for browsing the source)
- https://sources.debian.net/src/cdebconf/0.192/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cdebconf/0.192/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cloog=0.18.2-1`

Binary Packages:

- `libcloog-isl4:amd64=0.18.2-1+b2`

Licenses: (parsed from: `/usr/share/doc/libcloog-isl4/copyright`)

- `GFDL`
- `GPL`
- `LGPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cloog=0.18.2-1
'http://deb.debian.org/debian/pool/main/c/cloog/cloog_0.18.2-1.dsc' cloog_0.18.2-1.dsc 1299 SHA256:a7a186409b4436bc4202c01f6fca47380916176d18fc457805469596c151fd6e
'http://deb.debian.org/debian/pool/main/c/cloog/cloog_0.18.2.orig.tar.gz' cloog_0.18.2.orig.tar.gz 2376691 SHA256:ba3cc2d3750dfcb51f65ce029f0dda31347b8eeed216b1bac6170ab12d967581
'http://deb.debian.org/debian/pool/main/c/cloog/cloog_0.18.2-1.debian.tar.xz' cloog_0.18.2-1.debian.tar.xz 7824 SHA256:45cb83d37782fc705aac74942b8adfaa22680089f5b5537f0539daec89c08438
```

Other potentially useful URLs:

- https://sources.debian.net/src/cloog/0.18.2-1/ (for browsing the source)
- https://sources.debian.net/src/cloog/0.18.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cloog/0.18.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `coreutils=8.23-4`

Binary Packages:

- `coreutils=8.23-4`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.23-4
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.23-4.dsc' coreutils_8.23-4.dsc 1942 SHA256:280ace2d2f1740c2319338e96da6b5000b9e65ddb9549c772917123633afe772
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.23.orig.tar.gz' coreutils_8.23.orig.tar.gz 12582141 SHA256:d606551dccd8c4ed079d7aa8d74af152b1d16215cae763d86b40b26fdbde9c73
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.23-4.diff.gz' coreutils_8.23-4.diff.gz 48759 SHA256:19ab6ff1b82f29e8a8f8107f925eec91b1eaad53b690f2d7154ab07101bf8c01
```

Other potentially useful URLs:

- https://sources.debian.net/src/coreutils/8.23-4/ (for browsing the source)
- https://sources.debian.net/src/coreutils/8.23-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/coreutils/8.23-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cryptsetup=2:1.6.6-5`

Binary Packages:

- `libcryptsetup4:amd64=2:1.6.6-5`

Licenses: (parsed from: `/usr/share/doc/libcryptsetup4/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris cryptsetup=2:1.6.6-5
'http://deb.debian.org/debian/pool/main/c/cryptsetup/cryptsetup_1.6.6-5.dsc' cryptsetup_1.6.6-5.dsc 2624 SHA256:f7582c8becb38fecaed22aa531bd748dee2ebdbdac64e00c7e39e45afe7eaae1
'http://deb.debian.org/debian/pool/main/c/cryptsetup/cryptsetup_1.6.6.orig.tar.xz' cryptsetup_1.6.6.orig.tar.xz 1145940 SHA256:2d2ce28e4e1137dd599d87884b62ef6dbf14fd7848b2a2bf7d61cf125fbd8e6f
'http://deb.debian.org/debian/pool/main/c/cryptsetup/cryptsetup_1.6.6-5.debian.tar.xz' cryptsetup_1.6.6-5.debian.tar.xz 82944 SHA256:fa12da2f5448e0b02e1e5c89357de3749f854b2b96441f9c56737766c11cded0
```

Other potentially useful URLs:

- https://sources.debian.net/src/cryptsetup/2:1.6.6-5/ (for browsing the source)
- https://sources.debian.net/src/cryptsetup/2:1.6.6-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cryptsetup/2:1.6.6-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `curl=7.38.0-4+deb8u10`

Binary Packages:

- `curl=7.38.0-4+deb8u10`
- `libcurl3:amd64=7.38.0-4+deb8u10`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`

Source:

```console
$ apt-get source -qq --print-uris curl=7.38.0-4+deb8u10
'http://security.debian.org/debian-security/pool/updates/main/c/curl/curl_7.38.0-4+deb8u10.dsc' curl_7.38.0-4+deb8u10.dsc 2673 SHA256:8c63e3d24209e7eee792a8bc80a540dcfadf881452e43e8c500dcac192c3a73c
'http://security.debian.org/debian-security/pool/updates/main/c/curl/curl_7.38.0.orig.tar.gz' curl_7.38.0.orig.tar.gz 4094034 SHA256:5661028aa6532882fa228cd23c99ddbb8b87643dbb1a7ea55c068d34a943dff1
'http://security.debian.org/debian-security/pool/updates/main/c/curl/curl_7.38.0-4+deb8u10.debian.tar.xz' curl_7.38.0-4+deb8u10.debian.tar.xz 47208 SHA256:917f9e86ed29504a962e5b982a455cfbd272a5e38a6ee050dfa343a2790fe746
```

Other potentially useful URLs:

- https://sources.debian.net/src/curl/7.38.0-4+deb8u10/ (for browsing the source)
- https://sources.debian.net/src/curl/7.38.0-4+deb8u10/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/curl/7.38.0-4+deb8u10/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cyrus-sasl2=2.1.26.dfsg1-13+deb8u1`

Binary Packages:

- `libsasl2-2:amd64=2.1.26.dfsg1-13+deb8u1`
- `libsasl2-modules-db:amd64=2.1.26.dfsg1-13+deb8u1`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-2-clause`
- `BSD-4-clause`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.26.dfsg1-13+deb8u1
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.26.dfsg1-13+deb8u1.dsc' cyrus-sasl2_2.1.26.dfsg1-13+deb8u1.dsc 3461 SHA256:ed1cba2b699aaf1ad08b99ea82d40c583c02817f6fbd765b9bbcd940d72fc3f3
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.26.dfsg1.orig.tar.gz' cyrus-sasl2_2.1.26.dfsg1.orig.tar.gz 1494337 SHA256:172c39555012f479543ce7305949db75df708771fe8f8b34248027f09e53bb85
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.26.dfsg1-13+deb8u1.debian.tar.xz' cyrus-sasl2_2.1.26.dfsg1-13+deb8u1.debian.tar.xz 94284 SHA256:14e00798c41b6fae965211f1af8b47a67d22001146d0019f81af0fc7be9f162f
```

Other potentially useful URLs:

- https://sources.debian.net/src/cyrus-sasl2/2.1.26.dfsg1-13+deb8u1/ (for browsing the source)
- https://sources.debian.net/src/cyrus-sasl2/2.1.26.dfsg1-13+deb8u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cyrus-sasl2/2.1.26.dfsg1-13+deb8u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dash=0.5.7-4`

Binary Packages:

- `dash=0.5.7-4+b1`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.7-4
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.7-4.dsc' dash_0.5.7-4.dsc 1105 SHA256:c77f4baef8cbdc105a783bf6e4d3253ae10671ad98c27bf8537c8c731f073310
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.7.orig.tar.gz' dash_0.5.7.orig.tar.gz 223794 SHA256:ae89fa9f1145b7748cf0740e1df04cd52fdf8a285da4911dd0f04983efba4e39
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.7-4.diff.gz' dash_0.5.7-4.diff.gz 42834 SHA256:649d97aa0c48dc0db73c08d7e89a004b9d413279a823388161940342016284f0
```

Other potentially useful URLs:

- https://sources.debian.net/src/dash/0.5.7-4/ (for browsing the source)
- https://sources.debian.net/src/dash/0.5.7-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dash/0.5.7-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `db5.3=5.3.28-9+deb8u1`

Binary Packages:

- `libdb5.3:amd64=5.3.28-9+deb8u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28-9+deb8u1
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28-9+deb8u1.dsc' db5.3_5.3.28-9+deb8u1.dsc 3233 SHA256:48ce55c383ff32df4fb5a205de982f6edfa483c007bc45711d9066ced2365ec2
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz' db5.3_5.3.28.orig.tar.xz 24154920 SHA256:e1f85c8b6ebd0ed3ca72fa0ae97b65006f6d0bd0cd6f4ac24bed103cb5497bf5
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28-9+deb8u1.debian.tar.xz' db5.3_5.3.28-9+deb8u1.debian.tar.xz 28416 SHA256:b44fcf3ad7fe36f4513d50bb648b2f408f1b7682fe44ef84a18ccbe74934d9cd
```

Other potentially useful URLs:

- https://sources.debian.net/src/db5.3/5.3.28-9+deb8u1/ (for browsing the source)
- https://sources.debian.net/src/db5.3/5.3.28-9+deb8u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/db5.3/5.3.28-9+deb8u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debconf=1.5.56+deb8u1`

Binary Packages:

- `debconf=1.5.56+deb8u1`
- `debconf-i18n=1.5.56+deb8u1`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`, `/usr/share/doc/debconf-i18n/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.56+deb8u1
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.56+deb8u1.dsc' debconf_1.5.56+deb8u1.dsc 1941 SHA256:d10cef7aafd28153cd6edd2721bfb70ccd0120cdb9766eecb6d51d7035d79843
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.56+deb8u1.tar.gz' debconf_1.5.56+deb8u1.tar.gz 1004750 SHA256:936f79533fe79a87b86cfb1b16d69c39a8dc586cdaa07e2b4b3b0e28917aec4a
```

Other potentially useful URLs:

- https://sources.debian.net/src/debconf/1.5.56+deb8u1/ (for browsing the source)
- https://sources.debian.net/src/debconf/1.5.56+deb8u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debconf/1.5.56+deb8u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debian-archive-keyring=2017.5~deb8u1`

Binary Packages:

- `debian-archive-keyring=2017.5~deb8u1`

Licenses: (parsed from: `/usr/share/doc/debian-archive-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debian-archive-keyring=2017.5~deb8u1
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2017.5~deb8u1.dsc' debian-archive-keyring_2017.5~deb8u1.dsc 1639 SHA256:d03d8d53a0e20a4155a95d6fcea2a4c4773f2852025d6b2aee38be7a5818937e
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2017.5~deb8u1.tar.xz' debian-archive-keyring_2017.5~deb8u1.tar.xz 79444 SHA256:9db751cf3479351a2d60ff5fc6b59e0b780bc2cffc94103f0e02b0b12a25245b
```

Other potentially useful URLs:

- https://sources.debian.net/src/debian-archive-keyring/2017.5~deb8u1/ (for browsing the source)
- https://sources.debian.net/src/debian-archive-keyring/2017.5~deb8u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debian-archive-keyring/2017.5~deb8u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debianutils=4.4`

Binary Packages:

- `debianutils=4.4+b1`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.4
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.4.dsc' debianutils_4.4.dsc 1560 SHA256:e365ad42af528f46eb117ef244216aaf265372f2b92635b28452a8f0d981bb17
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.4.tar.gz' debianutils_4.4.tar.gz 272098 SHA256:190850cdd6b5302e0a1ba1aaed1bc7074d67d3bd8d04c613f242f7145afa53a6
```

Other potentially useful URLs:

- https://sources.debian.net/src/debianutils/4.4/ (for browsing the source)
- https://sources.debian.net/src/debianutils/4.4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debianutils/4.4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `diffutils=1:3.3-1`

Binary Packages:

- `diffutils=1:3.3-1+b1`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.3-1
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.3-1.dsc' diffutils_3.3-1.dsc 1427 SHA256:72df1fed003b47509a063dfa8aa89108c884cd3bf52a06ce40e1ffb61f5a256c
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.3.orig.tar.xz' diffutils_3.3.orig.tar.xz 1197832 SHA256:a25e89a8ab65fded1731e4186be1bb25cda967834b6df973599cdcd5abdfc19c
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.3-1.debian.tar.gz' diffutils_3.3-1.debian.tar.gz 10584 SHA256:23765ea43cd1b4e5e504ce0984a16e27d5c01e9272cba489ebbebd217f227fc7
```

Other potentially useful URLs:

- https://sources.debian.net/src/diffutils/1:3.3-1/ (for browsing the source)
- https://sources.debian.net/src/diffutils/1:3.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/diffutils/1:3.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dpkg=1.17.27`

Binary Packages:

- `dpkg=1.17.27`
- `dpkg-dev=1.17.27`
- `libdpkg-perl=1.17.27`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.17.27
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.17.27.dsc' dpkg_1.17.27.dsc 2018 SHA256:730ad9445990322551acf79a752515d27ffca5c8b6d978b3276d28e88d60e34f
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.17.27.tar.xz' dpkg_1.17.27.tar.xz 4413092 SHA256:90749c31b9f1fceb46dd9fab5b50de34272efef333cc16d9e144f514fd944bb6
```

Other potentially useful URLs:

- https://sources.debian.net/src/dpkg/1.17.27/ (for browsing the source)
- https://sources.debian.net/src/dpkg/1.17.27/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dpkg/1.17.27/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `e2fsprogs=1.42.12-2`

Binary Packages:

- `e2fslibs:amd64=1.42.12-2+b1`
- `e2fsprogs=1.42.12-2+b1`
- `libcomerr2:amd64=1.42.12-2+b1`
- `libss2:amd64=1.42.12-2+b1`

Licenses: (parsed from: `/usr/share/doc/e2fslibs/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcomerr2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.42.12-2
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.42.12-2.dsc' e2fsprogs_1.42.12-2.dsc 2200 SHA256:c0edf462e2d55c64bc0e8278602066f458efd1b744627238a1d2b38e4ac2af94
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.42.12.orig.tar.gz' e2fsprogs_1.42.12.orig.tar.gz 6381695 SHA256:e17846d91a0edd89fa59b064bde8f8e5cec5851e35f587bcccb4014dbd63186c
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.42.12-2.debian.tar.xz' e2fsprogs_1.42.12-2.debian.tar.xz 68700 SHA256:23b927df5556f4854ea26bb8e7c55cdc9a31b920d1dd0be7a2965378dde30bd4
```

Other potentially useful URLs:

- https://sources.debian.net/src/e2fsprogs/1.42.12-2/ (for browsing the source)
- https://sources.debian.net/src/e2fsprogs/1.42.12-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/e2fsprogs/1.42.12-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `file=1:5.22+15-2+deb8u3`

Binary Packages:

- `file=1:5.22+15-2+deb8u3`
- `libmagic1:amd64=1:5.22+15-2+deb8u3`

Licenses: (parsed from: `/usr/share/doc/file/copyright`, `/usr/share/doc/libmagic1/copyright`)

- `BSD-2-Clause-alike`
- `BSD-2-Clause-netbsd`
- `BSD-2-Clause-regents`
- `MIT-Old-Style-with-legal-disclaimer-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris file=1:5.22+15-2+deb8u3
'http://deb.debian.org/debian/pool/main/f/file/file_5.22+15-2+deb8u3.dsc' file_5.22+15-2+deb8u3.dsc 2082 SHA256:2162cafbb17ae3e8f1c0b597eba52e7f4957ca5a91911ea6875d453b77d49ded
'http://deb.debian.org/debian/pool/main/f/file/file_5.22+15.orig.tar.xz' file_5.22+15.orig.tar.xz 569332 SHA256:c021e9f73b3eb3b6cc2532c5d9a77af1a92902935013c2740ba3fef83f1804d2
'http://deb.debian.org/debian/pool/main/f/file/file_5.22+15-2+deb8u3.debian.tar.xz' file_5.22+15-2+deb8u3.debian.tar.xz 30840 SHA256:f17310d9682ddd39b473e957fce4a3f11074c248b9664311ab4fa03c62e4a6a3
```

Other potentially useful URLs:

- https://sources.debian.net/src/file/1:5.22+15-2+deb8u3/ (for browsing the source)
- https://sources.debian.net/src/file/1:5.22+15-2+deb8u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/file/1:5.22+15-2+deb8u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `findutils=4.4.2-9`

Binary Packages:

- `findutils=4.4.2-9+b1`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.2`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.4.2-9
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.4.2-9.dsc' findutils_4.4.2-9.dsc 1996 SHA256:0dd9d96af8260d2e81c5819d2e5536f95cb894e771c9adcab44ba70726adb13e
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.4.2.orig.tar.gz' findutils_4.4.2.orig.tar.gz 2149838 SHA256:434f32d171cbc0a5e72cfc5372c6fc4cb0e681f8dce566a0de5b6fccd702b62a
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.4.2-9.debian.tar.xz' findutils_4.4.2-9.debian.tar.xz 27384 SHA256:8a9f5fb20c255b833994d7dfff1999b3f4f95dea6008495f2b0ef6c549d62c34
```

Other potentially useful URLs:

- https://sources.debian.net/src/findutils/4.4.2-9/ (for browsing the source)
- https://sources.debian.net/src/findutils/4.4.2-9/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/findutils/4.4.2-9/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-4.8=4.8.4-1`

Binary Packages:

- `gcc-4.8-base:amd64=4.8.4-1`

Licenses: (parsed from: `/usr/share/doc/gcc-4.8-base/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gcc-4.8=4.8.4-1
'http://deb.debian.org/debian/pool/main/g/gcc-4.8/gcc-4.8_4.8.4-1.dsc' gcc-4.8_4.8.4-1.dsc 10638 SHA256:9ba284727055aba04bb3122ef7f857587a403a5c9a2f924948829da49ca2ef02
'http://deb.debian.org/debian/pool/main/g/gcc-4.8/gcc-4.8_4.8.4-1.tar.gz' gcc-4.8_4.8.4-1.tar.gz 187653934 SHA256:c38d9687b6fef3010f250adaf89a3f1bd0f12c9cd82ed531a52e7d394b8226cf
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-4.8/4.8.4-1/ (for browsing the source)
- https://sources.debian.net/src/gcc-4.8/4.8.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-4.8/4.8.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-4.9=4.9.2-10+deb8u1`

Binary Packages:

- `cpp-4.9=4.9.2-10+deb8u1`
- `g++-4.9=4.9.2-10+deb8u1`
- `gcc-4.9=4.9.2-10+deb8u1`
- `gcc-4.9-base:amd64=4.9.2-10+deb8u1`
- `libasan1:amd64=4.9.2-10+deb8u1`
- `libatomic1:amd64=4.9.2-10+deb8u1`
- `libcilkrts5:amd64=4.9.2-10+deb8u1`
- `libgcc-4.9-dev:amd64=4.9.2-10+deb8u1`
- `libgcc1:amd64=1:4.9.2-10+deb8u1`
- `libgomp1:amd64=4.9.2-10+deb8u1`
- `libitm1:amd64=4.9.2-10+deb8u1`
- `liblsan0:amd64=4.9.2-10+deb8u1`
- `libquadmath0:amd64=4.9.2-10+deb8u1`
- `libstdc++-4.9-dev:amd64=4.9.2-10+deb8u1`
- `libstdc++6:amd64=4.9.2-10+deb8u1`
- `libtsan0:amd64=4.9.2-10+deb8u1`
- `libubsan0:amd64=4.9.2-10+deb8u1`

Licenses: (parsed from: `/usr/share/doc/cpp-4.9/copyright`, `/usr/share/doc/g++-4.9/copyright`, `/usr/share/doc/gcc-4.9/copyright`, `/usr/share/doc/gcc-4.9-base/copyright`, `/usr/share/doc/libasan1/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcilkrts5/copyright`, `/usr/share/doc/libgcc-4.9-dev/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++-4.9-dev/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan0/copyright`, `/usr/share/doc/libubsan0/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gcc-4.9=4.9.2-10+deb8u1
'http://security.debian.org/debian-security/pool/updates/main/g/gcc-4.9/gcc-4.9_4.9.2-10+deb8u1.dsc' gcc-4.9_4.9.2-10+deb8u1.dsc 19264 SHA256:6b8b3822063411e6d31bad8581ccebbd09dd1f537b4a949dbee7520b73dcd3bc
'http://security.debian.org/debian-security/pool/updates/main/g/gcc-4.9/gcc-4.9_4.9.2.orig.tar.gz' gcc-4.9_4.9.2.orig.tar.gz 73565212 SHA256:861aa811d5f9e9ecf32d8195d2346fc434eba7e17330878ed3d876c49a32ec4e
'http://security.debian.org/debian-security/pool/updates/main/g/gcc-4.9/gcc-4.9_4.9.2-10+deb8u1.diff.gz' gcc-4.9_4.9.2-10+deb8u1.diff.gz 875721 SHA256:c46cb11de5e54f61cb356ea24c72603a66aef2add62fc58df68ba813edffb6b2
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-4.9/4.9.2-10+deb8u1/ (for browsing the source)
- https://sources.debian.net/src/gcc-4.9/4.9.2-10+deb8u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-4.9/4.9.2-10+deb8u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-defaults=1.136`

Binary Packages:

- `cpp=4:4.9.2-2`
- `g++=4:4.9.2-2`
- `gcc=4:4.9.2-2`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/gcc/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.136
'http://deb.debian.org/debian/pool/main/g/gcc-defaults/gcc-defaults_1.136.dsc' gcc-defaults_1.136.dsc 3255 SHA256:5ac9089c83ce76445a7b3dcb546460e85352bce22fa0ce26fc26c1a8812d484a
'http://deb.debian.org/debian/pool/main/g/gcc-defaults/gcc-defaults_1.136.tar.gz' gcc-defaults_1.136.tar.gz 64341 SHA256:7146bd9f988928c0c9e765677d9997edec7bd23472306dbec9be54bdaa21e558
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-defaults/1.136/ (for browsing the source)
- https://sources.debian.net/src/gcc-defaults/1.136/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-defaults/1.136/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gdbm=1.8.3-13.1`

Binary Packages:

- `libgdbm3:amd64=1.8.3-13.1`

Licenses: (parsed from: `/usr/share/doc/libgdbm3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.8.3-13.1
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.8.3-13.1.dsc' gdbm_1.8.3-13.1.dsc 1830 SHA256:b1d8bef30edc491315c337930cbe2b61f44f55035adfc26ae945bab5ca57d5c9
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.8.3.orig.tar.bz2' gdbm_1.8.3.orig.tar.bz2 172796 SHA256:1d5995b6e9e6be4ff62c8126d019f184a083dd8e6f75f6c74b9fe023b5b9440e
'http://deb.debian.org/debian/pool/main/g/gdbm/gdbm_1.8.3-13.1.debian.tar.xz' gdbm_1.8.3-13.1.debian.tar.xz 14748 SHA256:251401e1f5210226f384e936b1b7ea1df40119a918d9f3dbf48b2e51d4df8983
```

Other potentially useful URLs:

- https://sources.debian.net/src/gdbm/1.8.3-13.1/ (for browsing the source)
- https://sources.debian.net/src/gdbm/1.8.3-13.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gdbm/1.8.3-13.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glib2.0=2.42.1-1`

Binary Packages:

- `libglib2.0-0:amd64=2.42.1-1+b1`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.42.1-1
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.42.1-1.dsc' glib2.0_2.42.1-1.dsc 3119 SHA256:61b01cb94e8bb8b9fdd1799b2e1bed907371dc45d364beec4b79a129745f588f
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.42.1.orig.tar.xz' glib2.0_2.42.1.orig.tar.xz 6985120 SHA256:8f3f0865280e45b8ce840e176ef83bcfd511148918cc8d39df2ee89b67dcf89a
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.42.1-1.debian.tar.xz' glib2.0_2.42.1-1.debian.tar.xz 68072 SHA256:1cd368c2bce6100c07b8a07ff7f3f38572679d88563356b8784560606fcfac56
```

Other potentially useful URLs:

- https://sources.debian.net/src/glib2.0/2.42.1-1/ (for browsing the source)
- https://sources.debian.net/src/glib2.0/2.42.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glib2.0/2.42.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glibc=2.19-18+deb8u10`

Binary Packages:

- `libc-bin=2.19-18+deb8u10`
- `libc-dev-bin=2.19-18+deb8u10`
- `libc6:amd64=2.19-18+deb8u10`
- `libc6-dev:amd64=2.19-18+deb8u10`
- `multiarch-support=2.19-18+deb8u10`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`, `/usr/share/doc/multiarch-support/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.19-18+deb8u10
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.19-18+deb8u10.dsc' glibc_2.19-18+deb8u10.dsc 8256 SHA256:cfc796163f67f367f0f59f89e4cdcf59f3f77d14a4cfdad1c870c8c2feafde0b
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.19.orig.tar.xz' glibc_2.19.orig.tar.xz 12387008 SHA256:746e52bb4fc9b2f30bcd33d415172a40ab56c5fff6c494052d31b0795593cc60
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.19-18+deb8u10.debian.tar.xz' glibc_2.19-18+deb8u10.debian.tar.xz 1059340 SHA256:b5110a37901189fc092748592b117fb10684b9c92a876ea64d4030ffa00d01c1
```

Other potentially useful URLs:

- https://sources.debian.net/src/glibc/2.19-18+deb8u10/ (for browsing the source)
- https://sources.debian.net/src/glibc/2.19-18+deb8u10/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glibc/2.19-18+deb8u10/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gmp=2:6.0.0+dfsg-6`

Binary Packages:

- `libgmp10:amd64=2:6.0.0+dfsg-6`

Licenses: (parsed from: `/usr/share/doc/libgmp10/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.0.0+dfsg-6
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.0.0+dfsg-6.dsc' gmp_6.0.0+dfsg-6.dsc 1840 SHA256:40f44bfae4ed9df69a8c64fe9bf9deded10cc4a75844c95bbfbfc3307976f53a
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.0.0+dfsg.orig.tar.xz' gmp_6.0.0+dfsg.orig.tar.xz 1756792 SHA256:7539e094815fc321f4dc64b0a6968db9e1bee85a459bc64d4cc2b9dd0f6729a5
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.0.0+dfsg-6.debian.tar.xz' gmp_6.0.0+dfsg-6.debian.tar.xz 21024 SHA256:83219073eab9fb886dd1123b6b571b45fbe2f7c290c4201b07696784ffcf7fd1
```

Other potentially useful URLs:

- https://sources.debian.net/src/gmp/2:6.0.0+dfsg-6/ (for browsing the source)
- https://sources.debian.net/src/gmp/2:6.0.0+dfsg-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gmp/2:6.0.0+dfsg-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnupg=1.4.18-7+deb8u4`

Binary Packages:

- `gnupg=1.4.18-7+deb8u4`
- `gpgv=1.4.18-7+deb8u4`

Licenses: (parsed from: `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gpgv/copyright`)

- `GPL-3`
- `GPL-3+ with OpenSSL exception`
- `RFC-Reference`

Source:

```console
$ apt-get source -qq --print-uris gnupg=1.4.18-7+deb8u4
'http://deb.debian.org/debian/pool/main/g/gnupg/gnupg_1.4.18-7+deb8u4.dsc' gnupg_1.4.18-7+deb8u4.dsc 2436 SHA256:41ec08af41cbeb7fba84969530ba9d54a2fde55165b7d5c576cb077272620bdb
'http://deb.debian.org/debian/pool/main/g/gnupg/gnupg_1.4.18.orig.tar.gz' gnupg_1.4.18.orig.tar.gz 5047888 SHA256:10a8936b76ccadb98521535b5f41cc5b41b3c159a6c2915f062bd4dc8ac12d12
'http://deb.debian.org/debian/pool/main/g/gnupg/gnupg_1.4.18-7+deb8u4.debian.tar.xz' gnupg_1.4.18-7+deb8u4.debian.tar.xz 302448 SHA256:09e6f60462c8f13aa3e0c2796996697cce1b3023a6034280196041a52bf5f0f2
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnupg/1.4.18-7+deb8u4/ (for browsing the source)
- https://sources.debian.net/src/gnupg/1.4.18-7+deb8u4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnupg/1.4.18-7+deb8u4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnutls28=3.3.8-6+deb8u7`

Binary Packages:

- `libgnutls-deb0-28:amd64=3.3.8-6+deb8u7`
- `libgnutls-openssl27:amd64=3.3.8-6+deb8u7`

Licenses: (parsed from: `/usr/share/doc/libgnutls-deb0-28/copyright`, `/usr/share/doc/libgnutls-openssl27/copyright`)

- `GFDL-1.3`
- `GPL`
- `GPL-3`
- `GPLv3+`
- `LGPL`
- `LGPL-3`
- `LGPL2.1`
- `The main library is licensed under GNU Lesser`
- `nonstandard, see below`

Source:

```console
$ apt-get source -qq --print-uris gnutls28=3.3.8-6+deb8u7
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.3.8-6+deb8u7.dsc' gnutls28_3.3.8-6+deb8u7.dsc 2958 SHA256:a5d18c2afd4eee5d05618eb146a81bf70e761527e828987bce23609f7612a7c5
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.3.8.orig.tar.xz' gnutls28_3.3.8.orig.tar.xz 6153180 SHA256:bd4642f180e19632f4ed3a1e62d60c824c7b695f5cddf41a8fba1b272eaef046
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.3.8-6+deb8u7.debian.tar.xz' gnutls28_3.3.8-6+deb8u7.debian.tar.xz 106372 SHA256:f5bfa892ddf437ce3c8de5f55315689d03d3e484375c47599051b8f2bb4e0c07
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnutls28/3.3.8-6+deb8u7/ (for browsing the source)
- https://sources.debian.net/src/gnutls28/3.3.8-6+deb8u7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnutls28/3.3.8-6+deb8u7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `grep=2.20-4.1`

Binary Packages:

- `grep=2.20-4.1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=2.20-4.1
'http://deb.debian.org/debian/pool/main/g/grep/grep_2.20-4.1.dsc' grep_2.20-4.1.dsc 2627 SHA256:62ae6c19839e940462d27b2a234e925210cdb9209e2a4080b695fcec439c1d04
'http://deb.debian.org/debian/pool/main/g/grep/grep_2.20.orig.tar.xz' grep_2.20.orig.tar.xz 1237196 SHA256:f0af452bc0d09464b6d089b6d56a0a3c16672e9ed9118fbe37b0b6aeaf069a65
'http://deb.debian.org/debian/pool/main/g/grep/grep_2.20-4.1.debian.tar.bz2' grep_2.20-4.1.debian.tar.bz2 113054 SHA256:4aa8c4487d05dc82498668deeb485a9d4891a74df29466adf74e2faf738d2917
```

Other potentially useful URLs:

- https://sources.debian.net/src/grep/2.20-4.1/ (for browsing the source)
- https://sources.debian.net/src/grep/2.20-4.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/grep/2.20-4.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gzip=1.6-4`

Binary Packages:

- `gzip=1.6-4`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.6-4
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.6-4.dsc' gzip_1.6-4.dsc 1853 SHA256:9605bb67aa336e3f1dd68429fa713a80dff3439d67f944160895b14c98503147
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.6.orig.tar.gz' gzip_1.6.orig.tar.gz 1074924 SHA256:97eb83b763d9e5ad35f351fe5517e6b71521d7aac7acf3e3cacdb6b1496d8f7e
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.6-4.debian.tar.xz' gzip_1.6-4.debian.tar.xz 14476 SHA256:20a474283cc0063de7db623ccc3b17da7df6bc15f681de4e9e1da12b990a2743
```

Other potentially useful URLs:

- https://sources.debian.net/src/gzip/1.6-4/ (for browsing the source)
- https://sources.debian.net/src/gzip/1.6-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gzip/1.6-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `hostname=3.15`

Binary Packages:

- `hostname=3.15`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.15
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.15.dsc' hostname_3.15.dsc 804 SHA256:e787dec3ac9ee20ff564d6d7afde242103e71830907ee8fa63367162b04e9844
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.15.tar.gz' hostname_3.15.tar.gz 13039 SHA256:b6d10114ed14306b21745d2cac1b9adf7a2546f16b9fd719bec14bd7cec61d20
```

Other potentially useful URLs:

- https://sources.debian.net/src/hostname/3.15/ (for browsing the source)
- https://sources.debian.net/src/hostname/3.15/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/hostname/3.15/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `init-system-helpers=1.22`

Binary Packages:

- `init=1.22`

Licenses: (parsed from: `/usr/share/doc/init/copyright`)

- `BSD`
- `GPL`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.22
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.22.dsc' init-system-helpers_1.22.dsc 1880 SHA256:f2ba7e0e1804b56d9c2967ed60be92274619068d7d3894c2dc750f31dbb0ff25
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.22.tar.xz' init-system-helpers_1.22.tar.xz 30728 SHA256:4f64b9fd86f2c68a3996903e03d6024d73f637ff8a06f1bd4f73bedcf8154124
```

Other potentially useful URLs:

- https://sources.debian.net/src/init-system-helpers/1.22/ (for browsing the source)
- https://sources.debian.net/src/init-system-helpers/1.22/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/init-system-helpers/1.22/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `iproute2=3.16.0-2`

Binary Packages:

- `iproute2=3.16.0-2`

Licenses: (parsed from: `/usr/share/doc/iproute2/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris iproute2=3.16.0-2
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_3.16.0-2.dsc' iproute2_3.16.0-2.dsc 1693 SHA256:dd657e1707a85c7a15a3a2ba17e3e02fbf133aac4513ed86e4d8b1d6e4cd6a45
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_3.16.0.orig.tar.xz' iproute2_3.16.0.orig.tar.xz 438820 SHA256:1f0a8a6c0e872166f75433f5cbf9766f3002b5c2f13501b3bb8c51846a127b79
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_3.16.0-2.debian.tar.xz' iproute2_3.16.0-2.debian.tar.xz 27032 SHA256:9e5c631b4465ee258a2d61150f6a591f37d116b1b465b363f9e50d496e0359ab
```

Other potentially useful URLs:

- https://sources.debian.net/src/iproute2/3.16.0-2/ (for browsing the source)
- https://sources.debian.net/src/iproute2/3.16.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/iproute2/3.16.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `iputils=3:20121221-5`

Binary Packages:

- `iputils-ping=3:20121221-5+b2`

Licenses: (parsed from: `/usr/share/doc/iputils-ping/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris iputils=3:20121221-5
'http://deb.debian.org/debian/pool/main/i/iputils/iputils_20121221-5.dsc' iputils_20121221-5.dsc 1379 SHA256:fda05ad679d9e20ba415e84fc51e7e3cc4eefbdc9efc560426fd8c4a1cd43ca9
'http://deb.debian.org/debian/pool/main/i/iputils/iputils_20121221.orig.tar.bz2' iputils_20121221.orig.tar.bz2 155344 SHA256:450f549fc5b620c23c5929aa6d54b7ddfc7ee1cb1e8efdc5e8bb21d8d0c5319f
'http://deb.debian.org/debian/pool/main/i/iputils/iputils_20121221-5.debian.tar.xz' iputils_20121221-5.debian.tar.xz 14360 SHA256:b249a00004cdd96d0f86ed93f45feb7bc9ce76b9a27b513c76aa94869c6064d6
```

Other potentially useful URLs:

- https://sources.debian.net/src/iputils/3:20121221-5/ (for browsing the source)
- https://sources.debian.net/src/iputils/3:20121221-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/iputils/3:20121221-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `isl=0.12.2-2`

Binary Packages:

- `libisl10:amd64=0.12.2-2`

Licenses: (parsed from: `/usr/share/doc/libisl10/copyright`)

- `2-clause BSD`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.12.2-2
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.12.2-2.dsc' isl_0.12.2-2.dsc 1245 SHA256:7c6f6a2baeb9ca7f5501fe2262d8e6e28772a4cc19bd1455ee5df6e5b6a60322
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.12.2.orig.tar.bz2' isl_0.12.2.orig.tar.bz2 1319434 SHA256:f4b3dbee9712850006e44f0db2103441ab3d13b406f77996d1df19ee89d11fb4
'http://deb.debian.org/debian/pool/main/i/isl/isl_0.12.2-2.debian.tar.xz' isl_0.12.2-2.debian.tar.xz 17296 SHA256:b91528d5f201c3883f0d57b0c2a44985a933c9e50836ca98000d3db9377784b1
```

Other potentially useful URLs:

- https://sources.debian.net/src/isl/0.12.2-2/ (for browsing the source)
- https://sources.debian.net/src/isl/0.12.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/isl/0.12.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `keyutils=1.5.9-5`

Binary Packages:

- `libkeyutils1:amd64=1.5.9-5+b1`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.5.9-5
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.9-5.dsc' keyutils_1.5.9-5.dsc 2080 SHA256:8c8ca9ef9274046901b107f143260bd1255387939ee517ae842829bd167fd49d
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.9.orig.tar.bz2' keyutils_1.5.9.orig.tar.bz2 74683 SHA256:4da2c5552c688b65ab14d4fd40fbdf720c8b396d8ece643e040cf6e707e083ae
'http://deb.debian.org/debian/pool/main/k/keyutils/keyutils_1.5.9-5.debian.tar.xz' keyutils_1.5.9-5.debian.tar.xz 14596 SHA256:8cef47fc1fd688cc54e36cbb7cee26f38b38d10a1c59af8d8dc0869a0e4359fc
```

Other potentially useful URLs:

- https://sources.debian.net/src/keyutils/1.5.9-5/ (for browsing the source)
- https://sources.debian.net/src/keyutils/1.5.9-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/keyutils/1.5.9-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `kmod=18-3`

Binary Packages:

- `libkmod2:amd64=18-3`

Licenses: (parsed from: `/usr/share/doc/libkmod2/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris kmod=18-3
'http://deb.debian.org/debian/pool/main/k/kmod/kmod_18-3.dsc' kmod_18-3.dsc 1865 SHA256:f16ef133e00db0fa360dcfb0d4723afc31e3803141b5f864e4df6a8b810eaeea
'http://deb.debian.org/debian/pool/main/k/kmod/kmod_18.orig.tar.gz' kmod_18.orig.tar.gz 3692996 SHA256:cdd7c8627e9bbfe5e39232886d08db2c87b4cc2ea7e9f8d3034577324809f2c0
'http://deb.debian.org/debian/pool/main/k/kmod/kmod_18-3.debian.tar.xz' kmod_18-3.debian.tar.xz 10468 SHA256:7a55a9d2c97913cdfde6e29d2784b5b82c7fdad6581d466b4aa571eef3270ea2
```

Other potentially useful URLs:

- https://sources.debian.net/src/kmod/18-3/ (for browsing the source)
- https://sources.debian.net/src/kmod/18-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/kmod/18-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `krb5=1.12.1+dfsg-19+deb8u4`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.12.1+dfsg-19+deb8u4`
- `libk5crypto3:amd64=1.12.1+dfsg-19+deb8u4`
- `libkrb5-3:amd64=1.12.1+dfsg-19+deb8u4`
- `libkrb5support0:amd64=1.12.1+dfsg-19+deb8u4`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.12.1+dfsg-19+deb8u4
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.12.1+dfsg-19+deb8u4.dsc' krb5_1.12.1+dfsg-19+deb8u4.dsc 3307 SHA256:619e76a11d4dee12c2bede93c5b9129c8119150ecab79422c3131ea4088acb77
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.12.1+dfsg.orig.tar.gz' krb5_1.12.1+dfsg.orig.tar.gz 11792370 SHA256:eb29959f1e9f8d71e7401f5809daefae067296eb5b0da1176366280a16bdd784
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.12.1+dfsg-19+deb8u4.debian.tar.xz' krb5_1.12.1+dfsg-19+deb8u4.debian.tar.xz 125856 SHA256:9a2b93059db021f025eb1e65c9c4974a863cbe872543c6a91a8a11eb568e0a46
```

Other potentially useful URLs:

- https://sources.debian.net/src/krb5/1.12.1+dfsg-19+deb8u4/ (for browsing the source)
- https://sources.debian.net/src/krb5/1.12.1+dfsg-19+deb8u4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/krb5/1.12.1+dfsg-19+deb8u4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libbsd=0.7.0-2`

Binary Packages:

- `libbsd0:amd64=0.7.0-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libbsd=0.7.0-2
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.7.0-2.dsc' libbsd_0.7.0-2.dsc 2007 SHA256:6d5fce0095a6eda36d3c24a68769b70720eefb5b3704ae96419533e23748947a
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.7.0.orig.tar.xz' libbsd_0.7.0.orig.tar.xz 322908 SHA256:0f3b0e17e5c34c038126e0a04351b11e23c6101a7d0ce3beeab29bb6415c10bb
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.7.0-2.debian.tar.xz' libbsd_0.7.0-2.debian.tar.xz 16272 SHA256:b3ff7556ecde7d1c4100f90a1cbce102699d4d2fdb8e5a328bf7977e48d3b757
```

Other potentially useful URLs:

- https://sources.debian.net/src/libbsd/0.7.0-2/ (for browsing the source)
- https://sources.debian.net/src/libbsd/0.7.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libbsd/0.7.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcap2=1:2.24-8`

Binary Packages:

- `libcap2:amd64=1:2.24-8`
- `libcap2-bin=1:2.24-8`

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`, `/usr/share/doc/libcap2-bin/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libcap2=1:2.24-8
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.24-8.dsc' libcap2_2.24-8.dsc 2134 SHA256:b042a6c89079d02113bd15ec52948f265edb6c725830d1b79434af06c4e6006a
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.24.orig.tar.xz' libcap2_2.24.orig.tar.xz 63264 SHA256:51cd1c568a2baf1e687573bd6117a94b07f33b46a05acaa50ee208792a830b79
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.24-8.debian.tar.xz' libcap2_2.24-8.debian.tar.xz 17528 SHA256:d1dd71eb19ce4cb7ea37f827c155382773e7724d5356619539874dca647aa94e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcap2/1:2.24-8/ (for browsing the source)
- https://sources.debian.net/src/libcap2/1:2.24-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcap2/1:2.24-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libedit=3.1-20140620-2`

Binary Packages:

- `libedit2:amd64=3.1-20140620-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20140620-2
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20140620-2.dsc' libedit_3.1-20140620-2.dsc 2235 SHA256:ca5af1e511d53595d6f518c9f4805feba66af23d3c468a92d9e84c1987af7512
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20140620.orig.tar.gz' libedit_3.1-20140620.orig.tar.gz 483857 SHA256:a22b9b2a8cf4aec9ff51a57e8c848b69640d0195282159d245d8137a19bfcaf2
'http://deb.debian.org/debian/pool/main/libe/libedit/libedit_3.1-20140620-2.debian.tar.bz2' libedit_3.1-20140620-2.debian.tar.bz2 17637 SHA256:610d08273c7f73a83dad62b322a520497c12b9714bb1d9b54918c7bc0b3bb6ff
```

Other potentially useful URLs:

- https://sources.debian.net/src/libedit/3.1-20140620-2/ (for browsing the source)
- https://sources.debian.net/src/libedit/3.1-20140620-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libedit/3.1-20140620-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libffi=3.1-2+deb8u1`

Binary Packages:

- `libffi6:amd64=3.1-2+deb8u1`

Licenses: (parsed from: `/usr/share/doc/libffi6/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.1-2+deb8u1
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.1-2+deb8u1.dsc' libffi_3.1-2+deb8u1.dsc 1691 SHA256:db5a3fe5558d7858cb8d9cdc7e0cf5c1c51622c3b313c0a0ac64eb7ff5298a63
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.1.orig.tar.gz' libffi_3.1.orig.tar.gz 937214 SHA256:97feeeadca5e21870fa4433bc953d1b3af3f698d5df8a428f68b73cd60aef6eb
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.1-2+deb8u1.debian.tar.xz' libffi_3.1-2+deb8u1.debian.tar.xz 8948 SHA256:71ab991f52edbdf0e19408b6c947650d92c766842581eb172ab9a44bf0ce3ab8
```

Other potentially useful URLs:

- https://sources.debian.net/src/libffi/3.1-2+deb8u1/ (for browsing the source)
- https://sources.debian.net/src/libffi/3.1-2+deb8u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libffi/3.1-2+deb8u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgcrypt20=1.6.3-2+deb8u4`

Binary Packages:

- `libgcrypt20:amd64=1.6.3-2+deb8u4`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.6.3-2+deb8u4
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.6.3-2+deb8u4.dsc' libgcrypt20_1.6.3-2+deb8u4.dsc 2587 SHA256:5e7816a66d609cd07c15c3e2e55c4c09b11592260a463f36d9bd4f5bc90ce02f
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.6.3.orig.tar.bz2' libgcrypt20_1.6.3.orig.tar.bz2 2494052 SHA256:41b4917b93ae34c6a0e2127378d7a4d66d805a2a86a09911d4f9bd871db7025f
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.6.3-2+deb8u4.debian.tar.xz' libgcrypt20_1.6.3-2+deb8u4.debian.tar.xz 35372 SHA256:36d11626006bcc4376659575780c2a28ff3a2fdca70b01944d4179716c9838f6
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgcrypt20/1.6.3-2+deb8u4/ (for browsing the source)
- https://sources.debian.net/src/libgcrypt20/1.6.3-2+deb8u4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgcrypt20/1.6.3-2+deb8u4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgpg-error=1.17-3`

Binary Packages:

- `libgpg-error0:amd64=1.17-3`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `GPL-2.1+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.17-3
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.17-3.dsc' libgpg-error_1.17-3.dsc 2344 SHA256:42d9ff8517b1149b453d947b515cef088b83ac6a6b4fdcbd143570c42e2216c9
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.17.orig.tar.bz2' libgpg-error_1.17.orig.tar.bz2 669914 SHA256:3ff4e5a71116eb862cd14185fcd282850927b8608e3b4186834fd940fbef57b5
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.17-3.debian.tar.xz' libgpg-error_1.17-3.debian.tar.xz 38460 SHA256:3e0af89c65e61ed2b53555eaecd5dc7fa19519490ef447313f441728ae490f29
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgpg-error/1.17-3/ (for browsing the source)
- https://sources.debian.net/src/libgpg-error/1.17-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgpg-error/1.17-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libidn=1.29-1+deb8u2`

Binary Packages:

- `libidn11:amd64=1.29-1+deb8u2`

Licenses: (parsed from: `/usr/share/doc/libidn11/copyright`)

- `GAP`
- `GFDL-1.3`
- `GFDL-1.3+`
- `GPL-2`
- `GPL-3`
- `GPL-3+`
- `LGPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+ | GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libidn=1.29-1+deb8u2
'http://deb.debian.org/debian/pool/main/libi/libidn/libidn_1.29-1+deb8u2.dsc' libidn_1.29-1+deb8u2.dsc 2177 SHA256:8346d3ad4ea48159c1008a7482685c7abfb0e3bcdc4bbda937b6a1774df1798f
'http://deb.debian.org/debian/pool/main/libi/libidn/libidn_1.29.orig.tar.gz' libidn_1.29.orig.tar.gz 3474087 SHA256:fb82747dbbf9b36f703ed27293317d818d7e851d4f5773dedf3efa4db32a7c7c
'http://deb.debian.org/debian/pool/main/libi/libidn/libidn_1.29-1+deb8u2.debian.tar.xz' libidn_1.29-1+deb8u2.debian.tar.xz 70728 SHA256:5f3be629b7185609bb2aed149f568a014524f69dec1368a4455a4eb0972a61d9
```

Other potentially useful URLs:

- https://sources.debian.net/src/libidn/1.29-1+deb8u2/ (for browsing the source)
- https://sources.debian.net/src/libidn/1.29-1+deb8u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libidn/1.29-1+deb8u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libjpeg-turbo=1:1.3.1-12`

Binary Packages:

- `libjpeg62-turbo:amd64=1:1.3.1-12`

Licenses: (parsed from: `/usr/share/doc/libjpeg62-turbo/copyright`)

- `BSD-3`
- `BSD-BY-LC-NE`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=1:1.3.1-12
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.3.1-12.dsc' libjpeg-turbo_1.3.1-12.dsc 2650 SHA256:1606a068d653c40da819e0ac4f9c560cf891d665ad5299c0eb994168830ce95d
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.3.1.orig.tar.gz' libjpeg-turbo_1.3.1.orig.tar.gz 1390282 SHA256:c132907417ddc40ed552fe53d6b91d5fecbb14a356a60ddc7ea50d6be9666fb9
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.3.1-12.debian.tar.xz' libjpeg-turbo_1.3.1-12.debian.tar.xz 78596 SHA256:046f88108246665a433cc60b0e9cec6c243b0163899c039542dbfb183fef6e71
```

Other potentially useful URLs:

- https://sources.debian.net/src/libjpeg-turbo/1:1.3.1-12/ (for browsing the source)
- https://sources.debian.net/src/libjpeg-turbo/1:1.3.1-12/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libjpeg-turbo/1:1.3.1-12/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `liblocale-gettext-perl=1.05-8`

Binary Packages:

- `liblocale-gettext-perl=1.05-8+b1`

Licenses: (parsed from: `/usr/share/doc/liblocale-gettext-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris liblocale-gettext-perl=1.05-8
'http://deb.debian.org/debian/pool/main/libl/liblocale-gettext-perl/liblocale-gettext-perl_1.05-8.dsc' liblocale-gettext-perl_1.05-8.dsc 2114 SHA256:0549ab2b517c1aed9fb12e2fee3ee2eded5efa80758491089f531b3ca10cc4ab
'http://deb.debian.org/debian/pool/main/libl/liblocale-gettext-perl/liblocale-gettext-perl_1.05.orig.tar.gz' liblocale-gettext-perl_1.05.orig.tar.gz 7693 SHA256:27367f3dc1be79c9ed178732756e37e4cfce45f9e2a27ebf26e1f40d80124694
'http://deb.debian.org/debian/pool/main/libl/liblocale-gettext-perl/liblocale-gettext-perl_1.05-8.debian.tar.xz' liblocale-gettext-perl_1.05-8.debian.tar.xz 5472 SHA256:2bd28828012a6289052e1905779f0505d2e09f279d77a79611990ad8d2f27ba1
```

Other potentially useful URLs:

- https://sources.debian.net/src/liblocale-gettext-perl/1.05-8/ (for browsing the source)
- https://sources.debian.net/src/liblocale-gettext-perl/1.05-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/liblocale-gettext-perl/1.05-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpng=1.2.50-2+deb8u3`

Binary Packages:

- `libpng12-0:amd64=1.2.50-2+deb8u3`

Licenses: (parsed from: `/usr/share/doc/libpng12-0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libpng=1.2.50-2+deb8u3
'http://deb.debian.org/debian/pool/main/libp/libpng/libpng_1.2.50-2+deb8u3.dsc' libpng_1.2.50-2+deb8u3.dsc 2036 SHA256:0db1eafb75ca276bc5b3e69810149ab53cc7344effa67e94269cde0c162fc720
'http://deb.debian.org/debian/pool/main/libp/libpng/libpng_1.2.50.orig.tar.xz' libpng_1.2.50.orig.tar.xz 539152 SHA256:4724f81f8c92ac7f360ad1fbf173396ea7c535923424db9fbaff07bfd9d8e8e7
'http://deb.debian.org/debian/pool/main/libp/libpng/libpng_1.2.50-2+deb8u3.debian.tar.xz' libpng_1.2.50-2+deb8u3.debian.tar.xz 21788 SHA256:b47238628a87fac02640b05bb4af5ada003c5180958a143ef670780ad4208cd7
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpng/1.2.50-2+deb8u3/ (for browsing the source)
- https://sources.debian.net/src/libpng/1.2.50-2+deb8u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpng/1.2.50-2+deb8u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libselinux=2.3-2`

Binary Packages:

- `libselinux1:amd64=2.3-2`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.3-2
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.3-2.dsc' libselinux_2.3-2.dsc 2024 SHA256:aea0e0502dd1d4df17be644efb0bfe2d38e32ba2e0769eaaf8a2b64a0eb99786
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.3.orig.tar.gz' libselinux_2.3.orig.tar.gz 171254 SHA256:0b1e0b43ecd84a812713d09564019b08e7c205d89072b5cbcd07b052cd8e77b2
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.3-2.debian.tar.xz' libselinux_2.3-2.debian.tar.xz 24384 SHA256:8ec4bdb5acc066d1b369877e9a94ec1a723e4d31691753e0e1861d0884b3fd1a
```

Other potentially useful URLs:

- https://sources.debian.net/src/libselinux/2.3-2/ (for browsing the source)
- https://sources.debian.net/src/libselinux/2.3-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libselinux/2.3-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsemanage=2.3-1`

Binary Packages:

- `libsemanage-common=2.3-1`
- `libsemanage1:amd64=2.3-1+b1`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.3-1
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.3-1.dsc' libsemanage_2.3-1.dsc 2131 SHA256:21b321c61399deeb3d1b04b76a0c9f43e968371f3afc8a8eb859e3cc79f295aa
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.3.orig.tar.gz' libsemanage_2.3.orig.tar.gz 138231 SHA256:03e09e35e611c286e446bef92b6023ef2623815996f5a53394bb02e49a312e4b
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.3-1.debian.tar.xz' libsemanage_2.3-1.debian.tar.xz 14848 SHA256:e6e8002ae5084daf6628ac836e4724005dd7591f9a015203bb55e445508e55e6
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsemanage/2.3-1/ (for browsing the source)
- https://sources.debian.net/src/libsemanage/2.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsemanage/2.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsepol=2.3-2`

Binary Packages:

- `libsepol1:amd64=2.3-2`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.3-2
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.3-2.dsc' libsepol_2.3-2.dsc 1762 SHA256:115ab27d7662fc03e64d9e70ed20b5dcb2adb6206155ba2577072352a5b79b6a
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.3.orig.tar.gz' libsepol_2.3.orig.tar.gz 209570 SHA256:cc8d8642c3b7b95d6928d65dcbca2ab0627abc1c05166637851e63c1a6eae68f
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.3-2.debian.tar.xz' libsepol_2.3-2.debian.tar.xz 12904 SHA256:4fea6f6de03cf6a8ba80579988ad56202d3652fe3153b0d2f8c65c89bba097a5
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsepol/2.3-2/ (for browsing the source)
- https://sources.debian.net/src/libsepol/2.3-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsepol/2.3-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsigsegv=2.10-4`

Binary Packages:

- `libsigsegv2:amd64=2.10-4+b1`

Licenses: (parsed from: `/usr/share/doc/libsigsegv2/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libsigsegv=2.10-4
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.10-4.dsc' libsigsegv_2.10-4.dsc 2166 SHA256:54837482677ed4d42203c80bb10ba0308431a00cb8ccca3256cce8a3bdfa8d8e
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.10.orig.tar.gz' libsigsegv_2.10.orig.tar.gz 402279 SHA256:8460a4a3dd4954c3d96d7a4f5dd5bc4d9b76f5754196aa245287553b26d2199a
'http://deb.debian.org/debian/pool/main/libs/libsigsegv/libsigsegv_2.10-4.debian.tar.xz' libsigsegv_2.10-4.debian.tar.xz 9532 SHA256:abc74f39b89e7dc5ee46cf4e9cf9e6b9dcc00122ffe87e49036647c5e9a10d36
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsigsegv/2.10-4/ (for browsing the source)
- https://sources.debian.net/src/libsigsegv/2.10-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsigsegv/2.10-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libssh2=1.4.3-4.1+deb8u1`

Binary Packages:

- `libssh2-1:amd64=1.4.3-4.1+deb8u1`

Licenses: (parsed from: `/usr/share/doc/libssh2-1/copyright`)

- `BSD`

Source:

```console
$ apt-get source -qq --print-uris libssh2=1.4.3-4.1+deb8u1
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.4.3-4.1+deb8u1.dsc' libssh2_1.4.3-4.1+deb8u1.dsc 1882 SHA256:38e3ec8ae8014a721d2f08f83494c927fe42aae11f8cf1592104205da2857ca8
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.4.3.orig.tar.gz' libssh2_1.4.3.orig.tar.gz 685712 SHA256:eac6f85f9df9db2e6386906a6227eb2cd7b3245739561cad7d6dc1d5d021b96d
'http://deb.debian.org/debian/pool/main/libs/libssh2/libssh2_1.4.3-4.1+deb8u1.debian.tar.xz' libssh2_1.4.3-4.1+deb8u1.debian.tar.xz 8276 SHA256:5da712fcae528ca559be8865dc9521ef11f006bda68c39e0bde8c0495e5a2cb7
```

Other potentially useful URLs:

- https://sources.debian.net/src/libssh2/1.4.3-4.1+deb8u1/ (for browsing the source)
- https://sources.debian.net/src/libssh2/1.4.3-4.1+deb8u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libssh2/1.4.3-4.1+deb8u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtasn1-6=4.2-3+deb8u3`

Binary Packages:

- `libtasn1-6:amd64=4.2-3+deb8u3`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.2-3+deb8u3
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.2-3+deb8u3.dsc' libtasn1-6_4.2-3+deb8u3.dsc 2607 SHA256:dee600f7bdacd1fa75d40a13425e6c81d36b979fd23aab468000a1bfc18706ba
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.2.orig.tar.gz' libtasn1-6_4.2.orig.tar.gz 1866192 SHA256:693b41cb36c2ac02d5990180b0712a79a591168e93d85f7fcbb75a0a0be4cdbb
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.2-3+deb8u3.debian.tar.xz' libtasn1-6_4.2-3+deb8u3.debian.tar.xz 59144 SHA256:59ba69bafbe22542f58bc63eab30b70b5ce15673f8b7b8332c21b72e33572d28
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtasn1-6/4.2-3+deb8u3/ (for browsing the source)
- https://sources.debian.net/src/libtasn1-6/4.2-3+deb8u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtasn1-6/4.2-3+deb8u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtext-charwidth-perl=0.04-7`

Binary Packages:

- `libtext-charwidth-perl=0.04-7+b3`

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

- `libtext-iconv-perl=1.7-5+b2`

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

### `dpkg` source package: `libtimedate-perl=2.3000-2`

Binary Packages:

- `libtimedate-perl=2.3000-2`

Licenses: (parsed from: `/usr/share/doc/libtimedate-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libtimedate-perl=2.3000-2
'http://deb.debian.org/debian/pool/main/libt/libtimedate-perl/libtimedate-perl_2.3000-2.dsc' libtimedate-perl_2.3000-2.dsc 2136 SHA256:0d7961456d3d45cd1c0e6b4a39ed56290d0722d9e44e3b75645f6608c15455f5
'http://deb.debian.org/debian/pool/main/libt/libtimedate-perl/libtimedate-perl_2.3000.orig.tar.gz' libtimedate-perl_2.3000.orig.tar.gz 31109 SHA256:75bd254871cb5853a6aa0403ac0be270cdd75c9d1b6639f18ecba63c15298e86
'http://deb.debian.org/debian/pool/main/libt/libtimedate-perl/libtimedate-perl_2.3000-2.debian.tar.xz' libtimedate-perl_2.3000-2.debian.tar.xz 4580 SHA256:092bd262925ed3677fabbfd867ffdc6b5b8ead2ffe2fca912cd20651bca2e2cd
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtimedate-perl/2.3000-2/ (for browsing the source)
- https://sources.debian.net/src/libtimedate-perl/2.3000-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtimedate-perl/2.3000-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libusb=2:0.1.12-25`

Binary Packages:

- `libusb-0.1-4:amd64=2:0.1.12-25`

Licenses: (parsed from: `/usr/share/doc/libusb-0.1-4/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libusb=2:0.1.12-25
'http://deb.debian.org/debian/pool/main/libu/libusb/libusb_0.1.12-25.dsc' libusb_0.1.12-25.dsc 1958 SHA256:905e7cc36c9ba24f6d58e416f8882bc2522673cfb9f63687b48c62c9e3b6c80c
'http://deb.debian.org/debian/pool/main/libu/libusb/libusb_0.1.12.orig.tar.gz' libusb_0.1.12.orig.tar.gz 389343 SHA256:37f6f7d9de74196eb5fc0bbe0aea9b5c939de7f500acba3af6fd643f3b538b44
'http://deb.debian.org/debian/pool/main/libu/libusb/libusb_0.1.12-25.debian.tar.xz' libusb_0.1.12-25.debian.tar.xz 22008 SHA256:9e42ea2a8e0ec85b13cb8c9df7dc3aff58ee82e3692a7656558ae91ceeabf7d1
```

Other potentially useful URLs:

- https://sources.debian.net/src/libusb/2:0.1.12-25/ (for browsing the source)
- https://sources.debian.net/src/libusb/2:0.1.12-25/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libusb/2:0.1.12-25/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxml2=2.9.1+dfsg1-5+deb8u6`

Binary Packages:

- `libxml2:amd64=2.9.1+dfsg1-5+deb8u6`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.1+dfsg1-5+deb8u6
'http://security.debian.org/debian-security/pool/updates/main/libx/libxml2/libxml2_2.9.1+dfsg1-5+deb8u6.dsc' libxml2_2.9.1+dfsg1-5+deb8u6.dsc 2760 SHA256:d887a48f96f3953cd0ecd9e2c8b77334c9619367dc16ca658586098a0c68f8fe
'http://security.debian.org/debian-security/pool/updates/main/libx/libxml2/libxml2_2.9.1+dfsg1.orig.tar.gz' libxml2_2.9.1+dfsg1.orig.tar.gz 3793894 SHA256:f3ec5256412192f74833286c4490672500b232ed1c9195214db2c641df064a28
'http://security.debian.org/debian-security/pool/updates/main/libx/libxml2/libxml2_2.9.1+dfsg1-5+deb8u6.debian.tar.xz' libxml2_2.9.1+dfsg1-5+deb8u6.debian.tar.xz 71152 SHA256:b6f36d51b2ff810fcc29f149ba21c69656c5dea164afc93eb48ff0daf8bc568a
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxml2/2.9.1+dfsg1-5+deb8u6/ (for browsing the source)
- https://sources.debian.net/src/libxml2/2.9.1+dfsg1-5+deb8u6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxml2/2.9.1+dfsg1-5+deb8u6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `linux=3.16.51-3+deb8u1`

Binary Packages:

- `linux-libc-dev:amd64=3.16.51-3+deb8u1`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `GPL-2`
- `Unicode-data`
- `Xen-interface`

Source:

```console
$ apt-get source -qq --print-uris linux=3.16.51-3+deb8u1
'http://security.debian.org/debian-security/pool/updates/main/l/linux/linux_3.16.51-3+deb8u1.dsc' linux_3.16.51-3+deb8u1.dsc 140609 SHA256:b9b5ed8337d2f352ab1ca521b4fcecf04d11ef6476b3639ef3db5249120e2b51
'http://security.debian.org/debian-security/pool/updates/main/l/linux/linux_3.16.51.orig.tar.xz' linux_3.16.51.orig.tar.xz 81841624 SHA256:302253096f6f15696e3bd72359852e1a7a2488431d203fd6bc89372c35d1d7dc
'http://security.debian.org/debian-security/pool/updates/main/l/linux/linux_3.16.51-3+deb8u1.debian.tar.xz' linux_3.16.51-3+deb8u1.debian.tar.xz 1202000 SHA256:c7e8e50786a437c32824f5dd9a5d60c674f351929b76e397d663d1b5ec645017
```

Other potentially useful URLs:

- https://sources.debian.net/src/linux/3.16.51-3+deb8u1/ (for browsing the source)
- https://sources.debian.net/src/linux/3.16.51-3+deb8u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/linux/3.16.51-3+deb8u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lsb=4.1+Debian13+nmu1`

Binary Packages:

- `lsb-base=4.1+Debian13+nmu1`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=4.1+Debian13+nmu1
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_4.1+Debian13+nmu1.dsc' lsb_4.1+Debian13+nmu1.dsc 2449 SHA256:ef70a3302cf4b50c02ad3cfb90d7997968dd509dc0dbb77562b76f23b617c254
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_4.1+Debian13+nmu1.tar.xz' lsb_4.1+Debian13+nmu1.tar.xz 59880 SHA256:7f5fbd13c04de166d0f658c0b71ed97c3fe07e01e165f5c0bd68ff5977bee72d
```

Other potentially useful URLs:

- https://sources.debian.net/src/lsb/4.1+Debian13+nmu1/ (for browsing the source)
- https://sources.debian.net/src/lsb/4.1+Debian13+nmu1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lsb/4.1+Debian13+nmu1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lvm2=2.02.111-2.2+deb8u1`

Binary Packages:

- `dmsetup=2:1.02.90-2.2+deb8u1`
- `libdevmapper1.02.1:amd64=2:1.02.90-2.2+deb8u1`

Licenses: (parsed from: `/usr/share/doc/dmsetup/copyright`, `/usr/share/doc/libdevmapper1.02.1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris lvm2=2.02.111-2.2+deb8u1
'http://deb.debian.org/debian/pool/main/l/lvm2/lvm2_2.02.111-2.2+deb8u1.dsc' lvm2_2.02.111-2.2+deb8u1.dsc 2474 SHA256:9e67627d50ef43b88f29a42b5ff4d48b0bfeeb35d98c09da33c6ce51e99c5d96
'http://deb.debian.org/debian/pool/main/l/lvm2/lvm2_2.02.111.orig.tar.gz' lvm2_2.02.111.orig.tar.gz 1497626 SHA256:ff358054ee821503ada8a33b327688cd4d64a2fc448c667a85c332c545aae4f6
'http://deb.debian.org/debian/pool/main/l/lvm2/lvm2_2.02.111-2.2+deb8u1.debian.tar.xz' lvm2_2.02.111-2.2+deb8u1.debian.tar.xz 29476 SHA256:df657682e06f9559d04719c1543285e8bcb51fb4647f673b787538fb34ebe26f
```

Other potentially useful URLs:

- https://sources.debian.net/src/lvm2/2.02.111-2.2+deb8u1/ (for browsing the source)
- https://sources.debian.net/src/lvm2/2.02.111-2.2+deb8u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lvm2/2.02.111-2.2+deb8u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `m4=1.4.17-4`

Binary Packages:

- `m4=1.4.17-4`

Licenses: (parsed from: `/usr/share/doc/m4/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris m4=1.4.17-4
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.17-4.dsc' m4_1.4.17-4.dsc 1412 SHA256:5b668aa9c59b053a1ff7a7bccda986f2d4cf1702e42d80cace78eeced9518ef8
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.17.orig.tar.xz' m4_1.4.17.orig.tar.xz 1149088 SHA256:f0543c3beb51fa6b3337d8025331591e0e18d8ec2886ed391f1aade43477d508
'http://deb.debian.org/debian/pool/main/m/m4/m4_1.4.17-4.debian.tar.xz' m4_1.4.17-4.debian.tar.xz 9572 SHA256:6ceab2d3c2d1d7a7ab083b134df1aaf083f93b0ac1346a4eeb5dafbdc9418a06
```

Other potentially useful URLs:

- https://sources.debian.net/src/m4/1.4.17-4/ (for browsing the source)
- https://sources.debian.net/src/m4/1.4.17-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/m4/1.4.17-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `make-dfsg=4.0-8.1`

Binary Packages:

- `make=4.0-8.1`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.0-8.1
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.0-8.1.dsc' make-dfsg_4.0-8.1.dsc 2021 SHA256:ae258d9abb68e756d1ff5195dc3060748b3d4b019ccce19a249d4de23039a0ce
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.0.orig.tar.gz' make-dfsg_4.0.orig.tar.gz 1401242 SHA256:6916aa026d930cfc5a4f93aba24fc231d47a0486c3b8e5b69112dd1f7b81c4fe
'http://deb.debian.org/debian/pool/main/m/make-dfsg/make-dfsg_4.0-8.1.debian.tar.xz' make-dfsg_4.0-8.1.debian.tar.xz 42200 SHA256:3cf5a779102c7acb3a00711a417aab85618c8da4d3f1d04bf85b2d95c4a98f09
```

Other potentially useful URLs:

- https://sources.debian.net/src/make-dfsg/4.0-8.1/ (for browsing the source)
- https://sources.debian.net/src/make-dfsg/4.0-8.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/make-dfsg/4.0-8.1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `mpclib3=1.0.2-1`

Binary Packages:

- `libmpc3:amd64=1.0.2-1`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris mpclib3=1.0.2-1
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.0.2-1.dsc' mpclib3_1.0.2-1.dsc 1239 SHA256:480e3b32fe3c67b503635d2a0aa0e87503475cf54ddf7943be0255e453c42fe5
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.0.2.orig.tar.gz' mpclib3_1.0.2.orig.tar.gz 633173 SHA256:b561f54d8a479cee3bc891ee52735f18ff86712ba30f036f8b8537bae380c488
'http://deb.debian.org/debian/pool/main/m/mpclib3/mpclib3_1.0.2-1.diff.gz' mpclib3_1.0.2-1.diff.gz 3370 SHA256:22e1db34773adaf27cc16a2260ae4e8f22cc80476b861a0856f93aa08ec8cc91
```

Other potentially useful URLs:

- https://sources.debian.net/src/mpclib3/1.0.2-1/ (for browsing the source)
- https://sources.debian.net/src/mpclib3/1.0.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpclib3/1.0.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `mpfr4=3.1.2-2`

Binary Packages:

- `libmpfr4:amd64=3.1.2-2`

Licenses: (parsed from: `/usr/share/doc/libmpfr4/copyright`)

- `GFDL`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=3.1.2-2
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_3.1.2-2.dsc' mpfr4_3.1.2-2.dsc 2116 SHA256:fcbf025b0daf6dc95715ac226d4e4a8f86cda4b796115ad5b9d8271da6de9c7b
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_3.1.2.orig.tar.xz' mpfr4_3.1.2.orig.tar.xz 1074388 SHA256:399d0f47ef6608cc01d29ed1b99c7faff36d9994c45f36f41ba250147100453b
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_3.1.2-2.debian.tar.xz' mpfr4_3.1.2-2.debian.tar.xz 12804 SHA256:49efd1d2032c8576868b64419e3403869dd5a62e1974b341f836852f7f2fd097
```

Other potentially useful URLs:

- https://sources.debian.net/src/mpfr4/3.1.2-2/ (for browsing the source)
- https://sources.debian.net/src/mpfr4/3.1.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpfr4/3.1.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ncurses=5.9+20140913-1+deb8u2`

Binary Packages:

- `libncurses5:amd64=5.9+20140913-1+deb8u2`
- `libncursesw5:amd64=5.9+20140913-1+deb8u2`
- `libtinfo5:amd64=5.9+20140913-1+deb8u2`
- `ncurses-base=5.9+20140913-1+deb8u2`
- `ncurses-bin=5.9+20140913-1+deb8u2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=5.9+20140913-1+deb8u2
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_5.9+20140913-1+deb8u2.dsc' ncurses_5.9+20140913-1+deb8u2.dsc 3505 SHA256:755d88fd59e24c34af0d455a763d212b1404edeef30455fc268f851e1f55d7a0
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_5.9+20140913.orig.tar.gz' ncurses_5.9+20140913.orig.tar.gz 2987249 SHA256:c4247ad81ee9d743caba8a2db6dd96d36878530b2e76e376af1c00b067a2dec9
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_5.9+20140913-1+deb8u2.debian.tar.xz' ncurses_5.9+20140913-1+deb8u2.debian.tar.xz 56696 SHA256:df324594d2869d638c867d9ba70cb0aa01c92643841f5fa5b0c97f9af02666bb
```

Other potentially useful URLs:

- https://sources.debian.net/src/ncurses/5.9+20140913-1+deb8u2/ (for browsing the source)
- https://sources.debian.net/src/ncurses/5.9+20140913-1+deb8u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ncurses/5.9+20140913-1+deb8u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nettle=2.7.1-5+deb8u2`

Binary Packages:

- `libhogweed2:amd64=2.7.1-5+deb8u2`
- `libnettle4:amd64=2.7.1-5+deb8u2`

Licenses: (parsed from: `/usr/share/doc/libhogweed2/copyright`, `/usr/share/doc/libnettle4/copyright`)

- `GAP`
- `GPL`
- `GPL-2`
- `GPL-2+`
- `LGPL`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1+`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris nettle=2.7.1-5+deb8u2
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_2.7.1-5+deb8u2.dsc' nettle_2.7.1-5+deb8u2.dsc 2078 SHA256:9169cedb90e4eb552f4383172b56107c4365a7a43769c9e6d113072abc975223
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_2.7.1.orig.tar.gz' nettle_2.7.1.orig.tar.gz 1558863 SHA256:bc71ebd43435537d767799e414fce88e521b7278d48c860651216e1fc6555b40
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_2.7.1-5+deb8u2.debian.tar.xz' nettle_2.7.1-5+deb8u2.debian.tar.xz 20496 SHA256:0edb103b1268e6b3e8909883c1e9c7416dd75a51c9116047ca60031377e01141
```

Other potentially useful URLs:

- https://sources.debian.net/src/nettle/2.7.1-5+deb8u2/ (for browsing the source)
- https://sources.debian.net/src/nettle/2.7.1-5+deb8u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nettle/2.7.1-5+deb8u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openldap=2.4.40+dfsg-1+deb8u3`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.40+dfsg-1+deb8u3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.40+dfsg-1+deb8u3
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.40+dfsg-1+deb8u3.dsc' openldap_2.4.40+dfsg-1+deb8u3.dsc 2990 SHA256:6e5877b1e071abdf613849689bff4bde15f8ac8dd4277a14cd30afb240052dd4
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.40+dfsg.orig.tar.gz' openldap_2.4.40+dfsg.orig.tar.gz 4797667 SHA256:86c0326dc3dc5f1a9b3c25f7106b96f3eafcdf5da090b1fc586dec57d56e0e7f
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.40+dfsg-1+deb8u3.diff.gz' openldap_2.4.40+dfsg-1+deb8u3.diff.gz 180281 SHA256:b6e7709cc75470bac1e6a797beed18c32ac97ac925932fad596a4921218b4d57
```

Other potentially useful URLs:

- https://sources.debian.net/src/openldap/2.4.40+dfsg-1+deb8u3/ (for browsing the source)
- https://sources.debian.net/src/openldap/2.4.40+dfsg-1+deb8u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openldap/2.4.40+dfsg-1+deb8u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openssl=1.0.1t-1+deb8u8`

Binary Packages:

- `libssl1.0.0:amd64=1.0.1t-1+deb8u8`
- `openssl=1.0.1t-1+deb8u8`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.0.1t-1+deb8u8
'http://security.debian.org/debian-security/pool/updates/main/o/openssl/openssl_1.0.1t-1+deb8u8.dsc' openssl_1.0.1t-1+deb8u8.dsc 2305 SHA256:e6fc30d2f34c04dd3c96e00d89b777442de79bb13d11056c8935f71667fcfcc0
'http://security.debian.org/debian-security/pool/updates/main/o/openssl/openssl_1.0.1t.orig.tar.gz' openssl_1.0.1t.orig.tar.gz 4556447 SHA256:4a6ee491a2fdb22e519c76fdc2a628bb3cec12762cd456861d207996c8a07088
'http://security.debian.org/debian-security/pool/updates/main/o/openssl/openssl_1.0.1t-1+deb8u8.debian.tar.xz' openssl_1.0.1t-1+deb8u8.debian.tar.xz 110384 SHA256:fb200537c8b7ec882145463373889b063353eddc5d4f957f4d55fabd7065c418
```

Other potentially useful URLs:

- https://sources.debian.net/src/openssl/1.0.1t-1+deb8u8/ (for browsing the source)
- https://sources.debian.net/src/openssl/1.0.1t-1+deb8u8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openssl/1.0.1t-1+deb8u8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `p11-kit=0.20.7-1`

Binary Packages:

- `libp11-kit0:amd64=0.20.7-1`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `This file is distributed under the same license as the debian`
- `This file is distributed under the same license as the p11-kit`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.20.7-1
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.20.7-1.dsc' p11-kit_0.20.7-1.dsc 2221 SHA256:459d56241f560163471eb5ec789eb5691ca97c5aa9a1bca98dabcf613a2d4bc3
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.20.7.orig.tar.gz' p11-kit_0.20.7.orig.tar.gz 986731 SHA256:68405492fe466b33927d461302aa98e703db3b8a596411585508bc33084484d2
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.20.7-1.debian.tar.xz' p11-kit_0.20.7-1.debian.tar.xz 14208 SHA256:515dfcc279d284bfbee4d172c9cf1db3befe52d55e6d3f50d024c8f72d56574d
```

Other potentially useful URLs:

- https://sources.debian.net/src/p11-kit/0.20.7-1/ (for browsing the source)
- https://sources.debian.net/src/p11-kit/0.20.7-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/p11-kit/0.20.7-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pam=1.1.8-3.1+deb8u2`

Binary Packages:

- `libpam-modules:amd64=1.1.8-3.1+deb8u2+b1`
- `libpam-modules-bin=1.1.8-3.1+deb8u2+b1`
- `libpam-runtime=1.1.8-3.1+deb8u2`
- `libpam0g:amd64=1.1.8-3.1+deb8u2+b1`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.1.8-3.1+deb8u2
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.8-3.1+deb8u2.dsc' pam_1.1.8-3.1+deb8u2.dsc 2504 SHA256:0dcab55550af17b5f2779b5749930a69ea54302d8f8ef1bdd1a8dea3ed4e0619
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.8.orig.tar.gz' pam_1.1.8.orig.tar.gz 1892765 SHA256:4183409a450708a976eca5af561dbf4f0490141a08e86e4a1e649c7c1b094876
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.8-3.1+deb8u2.diff.gz' pam_1.1.8-3.1+deb8u2.diff.gz 134897 SHA256:84a455ce53c7701d2a536fc33909a6ce19c1a6b7c18e6be8d2d0fc2294260610
```

Other potentially useful URLs:

- https://sources.debian.net/src/pam/1.1.8-3.1+deb8u2/ (for browsing the source)
- https://sources.debian.net/src/pam/1.1.8-3.1+deb8u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pam/1.1.8-3.1+deb8u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `patch=2.7.5-1`

Binary Packages:

- `patch=2.7.5-1`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris patch=2.7.5-1
'http://deb.debian.org/debian/pool/main/p/patch/patch_2.7.5-1.dsc' patch_2.7.5-1.dsc 1795 SHA256:909ac12aa395f8b32a4524dcea67207567e99d2560e2a833ba577ec64c4cc1bd
'http://deb.debian.org/debian/pool/main/p/patch/patch_2.7.5.orig.tar.xz' patch_2.7.5.orig.tar.xz 727704 SHA256:fd95153655d6b95567e623843a0e77b81612d502ecf78a489a4aed7867caa299
'http://deb.debian.org/debian/pool/main/p/patch/patch_2.7.5-1.debian.tar.xz' patch_2.7.5-1.debian.tar.xz 8116 SHA256:c5b9797658fdc1c150072fc9568279bd62c591b2fc43fa6d33750a9a4e8f0ddd
```

Other potentially useful URLs:

- https://sources.debian.net/src/patch/2.7.5-1/ (for browsing the source)
- https://sources.debian.net/src/patch/2.7.5-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/patch/2.7.5-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pcre3=2:8.35-3.3+deb8u4`

Binary Packages:

- `libpcre3:amd64=2:8.35-3.3+deb8u4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.35-3.3+deb8u4
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.35-3.3+deb8u4.dsc' pcre3_8.35-3.3+deb8u4.dsc 1985 SHA256:862ee7365c8cc9916f58856617701e2e2f3dcd384a34375379ddfa52b642c649
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.35.orig.tar.gz' pcre3_8.35.orig.tar.gz 1996552 SHA256:1c9ee292943ba2737f127b481a3f72f44c13fbd09a7b5b4eb8fa58650cfa56a0
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.35-3.3+deb8u4.debian.tar.gz' pcre3_8.35-3.3+deb8u4.debian.tar.gz 38081 SHA256:93e38ad38d4cdb21d346226eebc7e2ad419cbfe0261b27d2910e8e5c3a946fb9
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcre3/2:8.35-3.3+deb8u4/ (for browsing the source)
- https://sources.debian.net/src/pcre3/2:8.35-3.3+deb8u4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcre3/2:8.35-3.3+deb8u4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `perl=5.20.2-3+deb8u10`

Binary Packages:

- `perl=5.20.2-3+deb8u10`
- `perl-base=5.20.2-3+deb8u10`
- `perl-modules=5.20.2-3+deb8u10`

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
- `GPL-1`
- `GPL-1+`
- `GPL-2+`
- `GPL-3+-WITH-BISON-EXCEPTION`
- `HSIEH-BSD`
- `HSIEH-DERIVATIVE`
- `LGPL-2.1`
- `REGCOMP`
- `REGCOMP,`
- `S2P`
- `SDBM-PUBLIC-DOMAIN`
- `TEXT-TABS`
- `Unicode`
- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris perl=5.20.2-3+deb8u10
'http://security.debian.org/debian-security/pool/updates/main/p/perl/perl_5.20.2-3+deb8u10.dsc' perl_5.20.2-3+deb8u10.dsc 2356 SHA256:83d1a00b79f831e4be65948a4bd09509cc01dfa3085605ff5e14d99d559c13c3
'http://security.debian.org/debian-security/pool/updates/main/p/perl/perl_5.20.2.orig.tar.bz2' perl_5.20.2.orig.tar.bz2 13717128 SHA256:e5a4713bc65e1da98ebd833dce425c000768bfe84d17ec5183ec5ca249db71ab
'http://security.debian.org/debian-security/pool/updates/main/p/perl/perl_5.20.2-3+deb8u10.debian.tar.xz' perl_5.20.2-3+deb8u10.debian.tar.xz 156452 SHA256:dc91930ad705ba38afe3cbd59ae98ec2439c860cc8636950688cb92691b04a70
```

Other potentially useful URLs:

- https://sources.debian.net/src/perl/5.20.2-3+deb8u10/ (for browsing the source)
- https://sources.debian.net/src/perl/5.20.2-3+deb8u10/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/perl/5.20.2-3+deb8u10/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pkg-config=0.28-1`

Binary Packages:

- `pkg-config=0.28-1`

Licenses: (parsed from: `/usr/share/doc/pkg-config/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pkg-config=0.28-1
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.28-1.dsc' pkg-config_0.28-1.dsc 1733 SHA256:d4a855310665e61dea83b858b70465cf7174797b322f75142863e9853ca35960
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.28.orig.tar.gz' pkg-config_0.28.orig.tar.gz 1931203 SHA256:6b6eb31c6ec4421174578652c7e141fdaae2dabad1021f420d8713206ac1f845
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.28-1.diff.gz' pkg-config_0.28-1.diff.gz 5942 SHA256:c5f6afcbadeded6a9cf192efc3bd882095e9ba73576de0544e393184e989992f
```

Other potentially useful URLs:

- https://sources.debian.net/src/pkg-config/0.28-1/ (for browsing the source)
- https://sources.debian.net/src/pkg-config/0.28-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pkg-config/0.28-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `procps=2:3.3.9-9`

Binary Packages:

- `libprocps3:amd64=2:3.3.9-9`
- `procps=2:3.3.9-9`

Licenses: (parsed from: `/usr/share/doc/libprocps3/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.9-9
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.9-9.dsc' procps_3.3.9-9.dsc 2052 SHA256:b4ee0cb8b2cfb6362bf5a9b6ad2ac1a921098638c8c396fae5823080a159935d
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.9.orig.tar.xz' procps_3.3.9.orig.tar.xz 560812 SHA256:00f0cb0fadf968ddf605b0ef119846af07386629244d4f3da711a2cecf4e8663
'http://deb.debian.org/debian/pool/main/p/procps/procps_3.3.9-9.debian.tar.xz' procps_3.3.9-9.debian.tar.xz 35096 SHA256:d66ade0f2d1b44ef55404cc612e25c0f031e7ed2f05e5ab628a0de8c27ed19bf
```

Other potentially useful URLs:

- https://sources.debian.net/src/procps/2:3.3.9-9/ (for browsing the source)
- https://sources.debian.net/src/procps/2:3.3.9-9/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/procps/2:3.3.9-9/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `re2c=0.13.5-1`

Binary Packages:

- `re2c=0.13.5-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris re2c=0.13.5-1
'http://deb.debian.org/debian/pool/main/r/re2c/re2c_0.13.5-1.dsc' re2c_0.13.5-1.dsc 975 SHA256:738bfd97cfeb7ef734f41b905cba35c8b0e65d2217eaf12b90f1afcf024dbada
'http://deb.debian.org/debian/pool/main/r/re2c/re2c_0.13.5.orig.tar.gz' re2c_0.13.5.orig.tar.gz 782725 SHA256:f3a995139af475e80a30207d02728b1e0065b0caade7375e974cb1b14861668c
'http://deb.debian.org/debian/pool/main/r/re2c/re2c_0.13.5-1.diff.gz' re2c_0.13.5-1.diff.gz 3229 SHA256:a0dc52d14ec99964ae1f45520156ba3ddd071bf25923395daf05df1a1f0593dd
```

Other potentially useful URLs:

- https://sources.debian.net/src/re2c/0.13.5-1/ (for browsing the source)
- https://sources.debian.net/src/re2c/0.13.5-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/re2c/0.13.5-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `readline6=6.3-8`

Binary Packages:

- `libreadline6:amd64=6.3-8+b3`
- `readline-common=6.3-8`

Licenses: (parsed from: `/usr/share/doc/libreadline6/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline6=6.3-8
'http://deb.debian.org/debian/pool/main/r/readline6/readline6_6.3-8.dsc' readline6_6.3-8.dsc 1941 SHA256:f7ab77b8580cbdb10b3906f40c3da12d0acc93bef786ff217c65aabc32973cec
'http://deb.debian.org/debian/pool/main/r/readline6/readline6_6.3.orig.tar.gz' readline6_6.3.orig.tar.gz 2468560 SHA256:56ba6071b9462f980c5a72ab0023893b65ba6debb4eeb475d7a563dc65cafd43
'http://deb.debian.org/debian/pool/main/r/readline6/readline6_6.3-8.debian.tar.xz' readline6_6.3-8.debian.tar.xz 30576 SHA256:c2b55fdd221136f46fa1e0cbf0bf2e37b70ddf97929312fbab6032e9129d58b5
```

Other potentially useful URLs:

- https://sources.debian.net/src/readline6/6.3-8/ (for browsing the source)
- https://sources.debian.net/src/readline6/6.3-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/readline6/6.3-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `rtmpdump=2.4+20150115.gita107cef-1+deb8u1`

Binary Packages:

- `librtmp1:amd64=2.4+20150115.gita107cef-1+deb8u1`

Licenses: (parsed from: `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20150115.gita107cef-1+deb8u1
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4+20150115.gita107cef-1+deb8u1.dsc' rtmpdump_2.4+20150115.gita107cef-1+deb8u1.dsc 2299 SHA256:8f22675e50ccf221489c79a51180561b4ae58a57a6e9d52e8b3a5e3d42860ca4
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4+20150115.gita107cef.orig.tar.gz' rtmpdump_2.4+20150115.gita107cef.orig.tar.gz 142030 SHA256:d47ef3a07815079bf73eb5d053001c4341407fcbebf39f34e6213c4b772cb29a
'http://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4+20150115.gita107cef-1+deb8u1.debian.tar.xz' rtmpdump_2.4+20150115.gita107cef-1+deb8u1.debian.tar.xz 8160 SHA256:b20bf79b1d8d6536f16d94af6073f3105aef91c297a67b4a6c2304de42e8d96b
```

Other potentially useful URLs:

- https://sources.debian.net/src/rtmpdump/2.4+20150115.gita107cef-1+deb8u1/ (for browsing the source)
- https://sources.debian.net/src/rtmpdump/2.4+20150115.gita107cef-1+deb8u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/rtmpdump/2.4+20150115.gita107cef-1+deb8u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sed=4.2.2-4+deb8u1`

Binary Packages:

- `sed=4.2.2-4+deb8u1`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris sed=4.2.2-4+deb8u1
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.2.2-4+deb8u1.dsc' sed_4.2.2-4+deb8u1.dsc 1495 SHA256:c8f47bac04e1b1d59fc433de2f977c6d08e40eefbdb10cabb7650297c0c12929
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.2.2.orig.tar.bz2' sed_4.2.2.orig.tar.bz2 1059414 SHA256:f048d1838da284c8bc9753e4506b85a1e0cc1ea8999d36f6995bcb9460cddbd7
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.2.2-4+deb8u1.debian.tar.xz' sed_4.2.2-4+deb8u1.debian.tar.xz 57724 SHA256:ba9b84ebb251edc7c78b3b4c715cfacc6fdd263997a92269a0282469d226557d
```

Other potentially useful URLs:

- https://sources.debian.net/src/sed/4.2.2-4+deb8u1/ (for browsing the source)
- https://sources.debian.net/src/sed/4.2.2-4+deb8u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sed/4.2.2-4+deb8u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sensible-utils=0.0.9+deb8u1`

Binary Packages:

- `sensible-utils=0.0.9+deb8u1`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.9+deb8u1
'http://security.debian.org/debian-security/pool/updates/main/s/sensible-utils/sensible-utils_0.0.9+deb8u1.dsc' sensible-utils_0.0.9+deb8u1.dsc 1590 SHA256:1d1d3d7e71c53cceb922dc33db5064cb5be76450a2918f8e3f998824237f09b0
'http://security.debian.org/debian-security/pool/updates/main/s/sensible-utils/sensible-utils_0.0.9+deb8u1.tar.xz' sensible-utils_0.0.9+deb8u1.tar.xz 53544 SHA256:f4b505ecc1c5015df2e5d3595da12cceca54be8729270b054179d31d8d661ab9
```

Other potentially useful URLs:

- https://sources.debian.net/src/sensible-utils/0.0.9+deb8u1/ (for browsing the source)
- https://sources.debian.net/src/sensible-utils/0.0.9+deb8u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sensible-utils/0.0.9+deb8u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `shadow=1:4.2-3+deb8u4`

Binary Packages:

- `login=1:4.2-3+deb8u4`
- `passwd=1:4.2-3+deb8u4`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.2-3+deb8u4
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.2-3+deb8u4.dsc' shadow_4.2-3+deb8u4.dsc 2492 SHA256:5f5c2c412e567a6f7b49141f11927202b52a8941befec39f6841b3e20a0ccea4
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.2.orig.tar.xz' shadow_4.2.orig.tar.xz 1088696 SHA256:c5bd72c4ecb438b99289e4630b22ea0626987a378d084910dbe59eceaa34be1d
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.2-3+deb8u4.debian.tar.xz' shadow_4.2-3+deb8u4.debian.tar.xz 498804 SHA256:b694aea58176f3a2703cd6461401951e52d78ad80626c39a04c0b88368957106
```

Other potentially useful URLs:

- https://sources.debian.net/src/shadow/1:4.2-3+deb8u4/ (for browsing the source)
- https://sources.debian.net/src/shadow/1:4.2-3+deb8u4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/shadow/1:4.2-3+deb8u4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `slang2=2.3.0-2`

Binary Packages:

- `libslang2:amd64=2.3.0-2`

Licenses: (parsed from: `/usr/share/doc/libslang2/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris slang2=2.3.0-2
'http://deb.debian.org/debian/pool/main/s/slang2/slang2_2.3.0-2.dsc' slang2_2.3.0-2.dsc 2329 SHA256:2d6ede702782aec9758a3fb6001837ef6d2191d3989db63aa55333da74d5b05e
'http://deb.debian.org/debian/pool/main/s/slang2/slang2_2.3.0.orig.tar.xz' slang2_2.3.0.orig.tar.xz 1250392 SHA256:cdd5b9582959b3afdae403ee6f4be9de8efc7e205e4a7de18c1a847ea5ef0472
'http://deb.debian.org/debian/pool/main/s/slang2/slang2_2.3.0-2.debian.tar.xz' slang2_2.3.0-2.debian.tar.xz 21864 SHA256:8b088f54be2a284eedee56d74968feb4cc662410d352280a7e351cc02bef57b2
```

Other potentially useful URLs:

- https://sources.debian.net/src/slang2/2.3.0-2/ (for browsing the source)
- https://sources.debian.net/src/slang2/2.3.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/slang2/2.3.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `startpar=0.59-3`

Binary Packages:

- `startpar=0.59-3`

Licenses: (parsed from: `/usr/share/doc/startpar/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris startpar=0.59-3
'http://deb.debian.org/debian/pool/main/s/startpar/startpar_0.59-3.dsc' startpar_0.59-3.dsc 1496 SHA256:f8fdfac7902c1b0cf5d627421893deaa8e041e9e23096ae60a33fe84464526ff
'http://deb.debian.org/debian/pool/main/s/startpar/startpar_0.59.orig.tar.bz2' startpar_0.59.orig.tar.bz2 22747 SHA256:30a30c8d27a694e3743c1839fb6f60563b2882cddf0e61c698120c4cbde1d7b9
'http://deb.debian.org/debian/pool/main/s/startpar/startpar_0.59-3.debian.tar.xz' startpar_0.59-3.debian.tar.xz 38428 SHA256:abd4650e507cd4e63e7caf2199972b6ee5367aea34ae8f53a19caf126bd2248c
```

Other potentially useful URLs:

- https://sources.debian.net/src/startpar/0.59-3/ (for browsing the source)
- https://sources.debian.net/src/startpar/0.59-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/startpar/0.59-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `systemd=215-17+deb8u7`

Binary Packages:

- `libsystemd0:amd64=215-17+deb8u7`
- `libudev1:amd64=215-17+deb8u7`
- `systemd=215-17+deb8u7`
- `systemd-sysv=215-17+deb8u7`
- `udev=215-17+deb8u7`

Licenses: (parsed from: `/usr/share/doc/libsystemd0/copyright`, `/usr/share/doc/libudev1/copyright`, `/usr/share/doc/systemd/copyright`, `/usr/share/doc/systemd-sysv/copyright`, `/usr/share/doc/udev/copyright`)

- `Expat`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris systemd=215-17+deb8u7
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_215-17+deb8u7.dsc' systemd_215-17+deb8u7.dsc 4259 SHA256:12faf93b32dd67b758d66c15a6a9b5fd5a94109d13f560ec95d060ca07e9b145
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_215.orig.tar.xz' systemd_215.orig.tar.xz 2888652 SHA256:ce76a3c05e7d4adc806a3446a5510c0c9b76a33f19adc32754b69a0945124505
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_215-17+deb8u7.debian.tar.xz' systemd_215-17+deb8u7.debian.tar.xz 224056 SHA256:f70c90bb8475741cc0dce62aed90bc4a404c17bee96beb9dfe1b5cade7fbded3
```

Other potentially useful URLs:

- https://sources.debian.net/src/systemd/215-17+deb8u7/ (for browsing the source)
- https://sources.debian.net/src/systemd/215-17+deb8u7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/systemd/215-17+deb8u7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sysvinit=2.88dsf-59`

Binary Packages:

- `initscripts=2.88dsf-59`
- `sysv-rc=2.88dsf-59`
- `sysvinit-utils=2.88dsf-59`

Licenses: (parsed from: `/usr/share/doc/initscripts/copyright`, `/usr/share/doc/sysv-rc/copyright`, `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.88dsf-59
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf-59.dsc' sysvinit_2.88dsf-59.dsc 2467 SHA256:0201f6d34c1be692ac0e594a4006e7e0b921eda7ffb37b4373abc949bf7181b2
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf.orig.tar.gz' sysvinit_2.88dsf.orig.tar.gz 125330 SHA256:b016f937958d2809a020d407e1287bdc09abf1d44efaa96530e2ea57f544f4e8
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf-59.debian.tar.xz' sysvinit_2.88dsf-59.debian.tar.xz 152316 SHA256:cfd1ff3423b7cfb2239f2311088eba8e5b8abde1835cb25806fb0983d159635f
```

Other potentially useful URLs:

- https://sources.debian.net/src/sysvinit/2.88dsf-59/ (for browsing the source)
- https://sources.debian.net/src/sysvinit/2.88dsf-59/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sysvinit/2.88dsf-59/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tar=1.27.1-2+deb8u1`

Binary Packages:

- `tar=1.27.1-2+deb8u1`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.27.1-2+deb8u1
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.27.1-2+deb8u1.dsc' tar_1.27.1-2+deb8u1.dsc 2049 SHA256:e42e96a9cdf325d7f030306735a1380276670deb72541a7f97ffe59a1e32e67b
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.27.1.orig.tar.xz' tar_1.27.1.orig.tar.xz 1704252 SHA256:58169c5a03c04be20d3fb91010b01e822c6a58060a96e7cf2f9c1944de0151ab
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.27.1-2+deb8u1.debian.tar.xz' tar_1.27.1-2+deb8u1.debian.tar.xz 32632 SHA256:dc2e495770f6c1c79a4e299d4008c8cb1f91a48e823751bc95d7f26ae498f995
```

Other potentially useful URLs:

- https://sources.debian.net/src/tar/1.27.1-2+deb8u1/ (for browsing the source)
- https://sources.debian.net/src/tar/1.27.1-2+deb8u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tar/1.27.1-2+deb8u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tzdata=2018d-0+deb8u1`

Binary Packages:

- `tzdata=2018d-0+deb8u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/tzdata/2018d-0+deb8u1/


### `dpkg` source package: `ustr=1.0.4-3`

Binary Packages:

- `libustr-1.0-1:amd64=1.0.4-3+b2`

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

### `dpkg` source package: `util-linux=2.25.2-6`

Binary Packages:

- `bsdutils=1:2.25.2-6`
- `libblkid1:amd64=2.25.2-6`
- `libmount1:amd64=2.25.2-6`
- `libsmartcols1:amd64=2.25.2-6`
- `libuuid1:amd64=2.25.2-6`
- `mount=2.25.2-6`
- `util-linux=2.25.2-6`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`)

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
$ apt-get source -qq --print-uris util-linux=2.25.2-6
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.25.2-6.dsc' util-linux_2.25.2-6.dsc 3443 SHA256:742a9c6378132c30d4bfc31722904e73a608c2fee1eab89d1d832c5e5672a82f
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.25.2.orig.tar.xz' util-linux_2.25.2.orig.tar.xz 3703644 SHA256:e0457f715b73f4a349e1acb08cb410bf0edc9a74a3f75c357070f31f70e33cd6
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.25.2-6.debian.tar.xz' util-linux_2.25.2-6.debian.tar.xz 304292 SHA256:b500d70a60f2814d6552492cee5f40c27063029ef74ddea53bc713503680527b
```

Other potentially useful URLs:

- https://sources.debian.net/src/util-linux/2.25.2-6/ (for browsing the source)
- https://sources.debian.net/src/util-linux/2.25.2-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/util-linux/2.25.2-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xz-utils=5.1.1alpha+20120614-2`

Binary Packages:

- `liblzma5:amd64=5.1.1alpha+20120614-2+b3`
- `xz-utils=5.1.1alpha+20120614-2+b3`

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

### `dpkg` source package: `zlib=1:1.2.8.dfsg-2`

Binary Packages:

- `zlib1g:amd64=1:1.2.8.dfsg-2+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.8.dfsg-2
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.8.dfsg-2.dsc' zlib_1.2.8.dfsg-2.dsc 2458 SHA256:5dddd28d2b15fc0881177d720a3b5bf41a87eee7aaec296e4b20719a9fe18b7e
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.8.dfsg.orig.tar.gz' zlib_1.2.8.dfsg.orig.tar.gz 361943 SHA256:2caecc2c3f1ef8b87b8f72b128a03e61c307e8c14f5ec9b422ef7914ba75cf9f
'http://deb.debian.org/debian/pool/main/z/zlib/zlib_1.2.8.dfsg-2.debian.tar.xz' zlib_1.2.8.dfsg-2.debian.tar.xz 14768 SHA256:39af7ea4b264c229f856ed342bb316a796cb2f1e1278a059f2dc5a4f3ffc9f31
```

Other potentially useful URLs:

- https://sources.debian.net/src/zlib/1:1.2.8.dfsg-2/ (for browsing the source)
- https://sources.debian.net/src/zlib/1:1.2.8.dfsg-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/zlib/1:1.2.8.dfsg-2/ (for access to the source package after it no longer exists in the archive)
