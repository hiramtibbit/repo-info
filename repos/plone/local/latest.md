# `plone:5.1.5`

## Docker Metadata

- Image ID: `sha256:414f07b1c0f9888945c9b99161e9ea02f78d9e192770f0623928831c3050f9a4`
- Created: `2019-06-11T11:52:15.003692064Z`
- Virtual Size: ~ 549.39 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/docker-entrypoint.sh"]`
- Command: `["start"]`
- Environment:
  - `PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `LANG=C.UTF-8`
  - `PYTHONIOENCODING=UTF-8`
  - `GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF`
  - `PYTHON_VERSION=2.7.16`
  - `PYTHON_PIP_VERSION=19.1.1`
  - `PIP=9.0.3`
  - `ZC_BUILDOUT=2.11.4`
  - `SETUPTOOLS=39.1.0`
  - `WHEEL=0.31.1`
  - `PLONE_MAJOR=5.1`
  - `PLONE_VERSION=5.1.5`
  - `PLONE_MD5=8ed5ff27fab67b1b510a1ce0ee2dd655`
- Labels:
  - `description=Plone image, based on Unified Installer`
  - `maintainer=Plone Community`
  - `name=Plone 5.1`
  - `os=debian`
  - `os.version=9`
  - `plone=5.1.5`

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

### `dpkg` source package: `adduser=3.115`

Binary Packages:

- `adduser=3.115`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.115
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.115.dsc' adduser_3.115.dsc 1701 SHA256:754698aa19d7521080ecacc8033baa20cfa4a963021de6061c68ffa6ee15e9a1
'http://deb.debian.org/debian/pool/main/a/adduser/adduser_3.115.tar.xz' adduser_3.115.tar.xz 213620 SHA256:e7288281d4d1eec2948ba3687452ca33a8224d40c98d321bc3fbaefcf6d4c0db
```

Other potentially useful URLs:

- https://sources.debian.net/src/adduser/3.115/ (for browsing the source)
- https://sources.debian.net/src/adduser/3.115/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/adduser/3.115/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `apt=1.4.9`

Binary Packages:

- `apt=1.4.9`
- `libapt-pkg5.0:amd64=1.4.9`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=1.4.9
'http://deb.debian.org/debian/pool/main/a/apt/apt_1.4.9.dsc' apt_1.4.9.dsc 2549 SHA256:986d98b00caac809341f65acb3d14321d645ce8e87e411c26c66bf149a10dfea
'http://deb.debian.org/debian/pool/main/a/apt/apt_1.4.9.tar.xz' apt_1.4.9.tar.xz 2079572 SHA256:d4d65e7c84da86f3e6dcc933bba46a08db429c9d933b667c864f5c0e880bac0d
```

Other potentially useful URLs:

- https://sources.debian.net/src/apt/1.4.9/ (for browsing the source)
- https://sources.debian.net/src/apt/1.4.9/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/apt/1.4.9/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `audit=1:2.6.7-2`

Binary Packages:

- `libaudit-common=1:2.6.7-2`
- `libaudit1:amd64=1:2.6.7-2`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.6.7-2
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.6.7-2.dsc' audit_2.6.7-2.dsc 2485 SHA256:3cc48a56a06f29cff62d35267471d1775a5b201cd947385566fc8f8d49bc1280
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.6.7.orig.tar.gz' audit_2.6.7.orig.tar.gz 1080848 SHA256:8923917332daa7833bbc0c1d9eb012167093fbad000da4a9630fb3356aff8cdc
'http://deb.debian.org/debian/pool/main/a/audit/audit_2.6.7-2.debian.tar.xz' audit_2.6.7-2.debian.tar.xz 18820 SHA256:04b40b6ae73625c6a27a9949b28c751a83c97220f59a712b2ea9c03f5cab0fcf
```

Other potentially useful URLs:

- https://sources.debian.net/src/audit/1:2.6.7-2/ (for browsing the source)
- https://sources.debian.net/src/audit/1:2.6.7-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/audit/1:2.6.7-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-files=9.9+deb9u9`

Binary Packages:

- `base-files=9.9+deb9u9`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=9.9+deb9u9
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_9.9+deb9u9.dsc' base-files_9.9+deb9u9.dsc 1095 SHA256:3e239985d47ee0d4c581b588669955c92c8fab976e915212ac77b383e21b217f
'http://deb.debian.org/debian/pool/main/b/base-files/base-files_9.9+deb9u9.tar.xz' base-files_9.9+deb9u9.tar.xz 63068 SHA256:be4c432570e32ad1598c1105cd4fb87b4bf6df3d7fef1646b1f2ed30b298fd7f
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-files/9.9+deb9u9/ (for browsing the source)
- https://sources.debian.net/src/base-files/9.9+deb9u9/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-files/9.9+deb9u9/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `base-passwd=3.5.43`

Binary Packages:

- `base-passwd=3.5.43`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.43
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.43.dsc' base-passwd_3.5.43.dsc 1749 SHA256:174a03d0df0d0f36cc186592e36472339632de094d60f9fcab370e1101a2430d
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.43.tar.xz' base-passwd_3.5.43.tar.xz 52596 SHA256:7768d10e2c08469cc81342e391e059f0426afdb6eb74a3102beef59ac45ab994
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-passwd/3.5.43/ (for browsing the source)
- https://sources.debian.net/src/base-passwd/3.5.43/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-passwd/3.5.43/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bash=4.4-5`

Binary Packages:

- `bash=4.4-5`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=4.4-5
'http://deb.debian.org/debian/pool/main/b/bash/bash_4.4-5.dsc' bash_4.4-5.dsc 2251 SHA256:1605c608c48f3d866e23a3d6989d23c1d910d58b2a64eee13ad0efd2d98d4b06
'http://deb.debian.org/debian/pool/main/b/bash/bash_4.4.orig.tar.xz' bash_4.4.orig.tar.xz 4878580 SHA256:819ebb6a23799e9e4ca56ac579778c46902005bd5ade4f131ed293d9f77108e7
'http://deb.debian.org/debian/pool/main/b/bash/bash_4.4-5.debian.tar.xz' bash_4.4-5.debian.tar.xz 65640 SHA256:e01cc0f49941d81bee4e81f3eeefede280a91ad9365947234f29f1cb783f9dd8
```

Other potentially useful URLs:

- https://sources.debian.net/src/bash/4.4-5/ (for browsing the source)
- https://sources.debian.net/src/bash/4.4-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bash/4.4-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bzip2=1.0.6-8.1`

Binary Packages:

- `libbz2-1.0:amd64=1.0.6-8.1`

Licenses: (parsed from: `/usr/share/doc/libbz2-1.0/copyright`)

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

### `dpkg` source package: `ca-certificates=20161130+nmu1+deb9u1`

Binary Packages:

- `ca-certificates=20161130+nmu1+deb9u1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20161130+nmu1+deb9u1
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20161130+nmu1+deb9u1.dsc' ca-certificates_20161130+nmu1+deb9u1.dsc 1900 SHA256:c2f23c84c06abb9e982fa54ea6b061369711824d472039e89aa3fe46d2f37715
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20161130+nmu1+deb9u1.tar.xz' ca-certificates_20161130+nmu1+deb9u1.tar.xz 247788 SHA256:3b9b56e55a92acdabdae700340f36c5243105c2a022993407632bb08bb4c0197
```

Other potentially useful URLs:

- https://sources.debian.net/src/ca-certificates/20161130+nmu1+deb9u1/ (for browsing the source)
- https://sources.debian.net/src/ca-certificates/20161130+nmu1+deb9u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ca-certificates/20161130+nmu1+deb9u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cairo=1.14.8-1`

Binary Packages:

- `libcairo2:amd64=1.14.8-1`

Licenses: (parsed from: `/usr/share/doc/libcairo2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cairo=1.14.8-1
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.14.8-1.dsc' cairo_1.14.8-1.dsc 2879 SHA256:a24470ae5240afe8693d07bb5a0972e966c2ef27f12b95ffbd7882900afd405c
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.14.8.orig.tar.xz' cairo_1.14.8.orig.tar.xz 35392464 SHA256:d1f2d98ae9a4111564f6de4e013d639cf77155baf2556582295a0f00a9bc5e20
'http://deb.debian.org/debian/pool/main/c/cairo/cairo_1.14.8-1.debian.tar.xz' cairo_1.14.8-1.debian.tar.xz 28880 SHA256:7b7079075c15615b3e476235ebab30b8845a7ad8886fe3e87fe1d4c9c2b9bebc
```

Other potentially useful URLs:

- https://sources.debian.net/src/cairo/1.14.8-1/ (for browsing the source)
- https://sources.debian.net/src/cairo/1.14.8-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cairo/1.14.8-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cdebconf=0.227`

Binary Packages:

- `libdebconfclient0:amd64=0.227`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.227
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.227.dsc' cdebconf_0.227.dsc 2662 SHA256:23531e6cbf4acb4edc5a2c3eda7a5095b82c396d801ade72d669b6fcf2c5aaa2
'http://deb.debian.org/debian/pool/main/c/cdebconf/cdebconf_0.227.tar.xz' cdebconf_0.227.tar.xz 272716 SHA256:df2092bb5d4fe76c318adfd1cc756f78b48a668704b6e71e161143e7c782da58
```

Other potentially useful URLs:

- https://sources.debian.net/src/cdebconf/0.227/ (for browsing the source)
- https://sources.debian.net/src/cdebconf/0.227/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cdebconf/0.227/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `coreutils=8.26-3`

Binary Packages:

- `coreutils=8.26-3`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.26-3
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.26-3.dsc' coreutils_8.26-3.dsc 1955 SHA256:f62ab642e46e02c470cc045316643de530a0be50446151a5e449ca12da6485c4
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.26.orig.tar.xz' coreutils_8.26.orig.tar.xz 5810244 SHA256:155e94d748f8e2bc327c66e0cbebdb8d6ab265d2f37c3c928f7bf6c3beba9a8e
'http://deb.debian.org/debian/pool/main/c/coreutils/coreutils_8.26-3.debian.tar.xz' coreutils_8.26-3.debian.tar.xz 22392 SHA256:cef6a15eb95d9e7bc992bca95010bc5ea9e25e98d8f4f668a698eee534d14b93
```

Other potentially useful URLs:

- https://sources.debian.net/src/coreutils/8.26-3/ (for browsing the source)
- https://sources.debian.net/src/coreutils/8.26-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/coreutils/8.26-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dash=0.5.8-2.4`

Binary Packages:

- `dash=0.5.8-2.4`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.8-2.4
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.8-2.4.dsc' dash_0.5.8-2.4.dsc 1461 SHA256:c83f68c3727e9fd3691117d1f67a2bd049ae2411d2137d50ea6d36122cec6482
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.8.orig.tar.gz' dash_0.5.8.orig.tar.gz 223028 SHA256:c6db3a237747b02d20382a761397563d813b306c020ae28ce25a1c3915fac60f
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.8-2.4.diff.gz' dash_0.5.8-2.4.diff.gz 44058 SHA256:230717c04af659a6a09b2c39158d9167fdd3392a6716c0ff36fe40dff1ca8b9d
```

Other potentially useful URLs:

- https://sources.debian.net/src/dash/0.5.8-2.4/ (for browsing the source)
- https://sources.debian.net/src/dash/0.5.8-2.4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dash/0.5.8-2.4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `db5.3=5.3.28-12+deb9u1`

Binary Packages:

- `libdb5.3:amd64=5.3.28-12+deb9u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28-12+deb9u1
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28-12+deb9u1.dsc' db5.3_5.3.28-12+deb9u1.dsc 3266 SHA256:22284095ad8d13f640736d3a3d2b05598497f4ce1a5b370f174217b497d8ccc7
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz' db5.3_5.3.28.orig.tar.xz 24154920 SHA256:e1f85c8b6ebd0ed3ca72fa0ae97b65006f6d0bd0cd6f4ac24bed103cb5497bf5
'http://deb.debian.org/debian/pool/main/d/db5.3/db5.3_5.3.28-12+deb9u1.debian.tar.xz' db5.3_5.3.28-12+deb9u1.debian.tar.xz 28348 SHA256:66b31f416940b48f3c09e8c1780feabe8e928742e5e819dde4ee1004ad828f3e
```

Other potentially useful URLs:

- https://sources.debian.net/src/db5.3/5.3.28-12+deb9u1/ (for browsing the source)
- https://sources.debian.net/src/db5.3/5.3.28-12+deb9u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/db5.3/5.3.28-12+deb9u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debconf=1.5.61`

Binary Packages:

- `debconf=1.5.61`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.61
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.61.dsc' debconf_1.5.61.dsc 1932 SHA256:a350712c205bf21f045c80f4a64e24cef27e35e38fd51080c79076178c63ef1b
'http://deb.debian.org/debian/pool/main/d/debconf/debconf_1.5.61.tar.xz' debconf_1.5.61.tar.xz 570372 SHA256:7622a3fe231b46e6255a83b3d153159c10be6bc17b2152ab3937b8928bf87e10
```

Other potentially useful URLs:

- https://sources.debian.net/src/debconf/1.5.61/ (for browsing the source)
- https://sources.debian.net/src/debconf/1.5.61/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debconf/1.5.61/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debian-archive-keyring=2017.5`

Binary Packages:

- `debian-archive-keyring=2017.5`

Licenses: (parsed from: `/usr/share/doc/debian-archive-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debian-archive-keyring=2017.5
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2017.5.dsc' debian-archive-keyring_2017.5.dsc 1597 SHA256:202c8424b79747e7a3d74b1e3d6f8748b211eb6ee1f2cb9c56f3c28ad9bc4f02
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2017.5.tar.xz' debian-archive-keyring_2017.5.tar.xz 79324 SHA256:6e06a47c79948d7a2f6b5bcfbf1f615293da329226bc9d7ad692cb67d2f4b731
```

Other potentially useful URLs:

- https://sources.debian.net/src/debian-archive-keyring/2017.5/ (for browsing the source)
- https://sources.debian.net/src/debian-archive-keyring/2017.5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debian-archive-keyring/2017.5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debianutils=4.8.1.1`

Binary Packages:

- `debianutils=4.8.1.1`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.8.1.1
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.8.1.1.dsc' debianutils_4.8.1.1.dsc 1739 SHA256:506d5e6c18e38831eb45ab1ecc35dd8cc3e931b0fe7367136fb7d42520130a84
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.8.1.1.tar.xz' debianutils_4.8.1.1.tar.xz 156256 SHA256:06446cd4c0d309fd31a0682c5c2f07f7613fb867f769414b9cc51f155ad73172
```

Other potentially useful URLs:

- https://sources.debian.net/src/debianutils/4.8.1.1/ (for browsing the source)
- https://sources.debian.net/src/debianutils/4.8.1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debianutils/4.8.1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `diffutils=1:3.5-3`

Binary Packages:

- `diffutils=1:3.5-3`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.5-3
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.5-3.dsc' diffutils_3.5-3.dsc 1453 SHA256:8b8e4d9d48ab35fd2c5759a3d0854e7d85c33b3fa09a185c20865793090feff9
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.5.orig.tar.xz' diffutils_3.5.orig.tar.xz 1360996 SHA256:dad398ccd5b9faca6b0ab219a036453f62a602a56203ac659b43e889bec35533
'http://deb.debian.org/debian/pool/main/d/diffutils/diffutils_3.5-3.debian.tar.xz' diffutils_3.5-3.debian.tar.xz 10796 SHA256:5c8464482951de1dcf3c1c53643cd7d0939cd8f7568a7ef84982d368c5cb6695
```

Other potentially useful URLs:

- https://sources.debian.net/src/diffutils/1:3.5-3/ (for browsing the source)
- https://sources.debian.net/src/diffutils/1:3.5-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/diffutils/1:3.5-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dpkg=1.18.25`

Binary Packages:

- `dpkg=1.18.25`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.18.25
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.18.25.dsc' dpkg_1.18.25.dsc 2048 SHA256:5cf6ac260dc3adae91516b777f9e3b6fcb783d867f811fa8fd0787f570a059a6
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.18.25.tar.xz' dpkg_1.18.25.tar.xz 4541640 SHA256:c49c371953aea03f543814dcae37c069e86069333fb2e24e9252e76647663492
```

Other potentially useful URLs:

- https://sources.debian.net/src/dpkg/1.18.25/ (for browsing the source)
- https://sources.debian.net/src/dpkg/1.18.25/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dpkg/1.18.25/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `e2fsprogs=1.43.4-2`

Binary Packages:

- `e2fslibs:amd64=1.43.4-2`
- `e2fsprogs=1.43.4-2`
- `libcomerr2:amd64=1.43.4-2`
- `libss2:amd64=1.43.4-2`

Licenses: (parsed from: `/usr/share/doc/e2fslibs/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcomerr2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.43.4-2
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.4-2.dsc' e2fsprogs_1.43.4-2.dsc 2043 SHA256:e6f6b8dddeb97cc81c3aa7aa826305e1f9c9cd1c3066b2b916e558682fdc7f70
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.4.orig.tar.gz' e2fsprogs_1.43.4.orig.tar.gz 7552218 SHA256:484ab0bc1bc07c64267b18cfe7871b6b975bf0a705c5a4563001f035071cdc7c
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.43.4-2.debian.tar.xz' e2fsprogs_1.43.4-2.debian.tar.xz 76444 SHA256:e1713f9e686a71a9d6f119cd178c4ebea502a7c2b43901cc41bcdb61b142b1c8
```

Other potentially useful URLs:

- https://sources.debian.net/src/e2fsprogs/1.43.4-2/ (for browsing the source)
- https://sources.debian.net/src/e2fsprogs/1.43.4-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/e2fsprogs/1.43.4-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `expat=2.2.0-2+deb9u1`

Binary Packages:

- `libexpat1:amd64=2.2.0-2+deb9u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris expat=2.2.0-2+deb9u1
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.2.0-2+deb9u1.dsc' expat_2.2.0-2+deb9u1.dsc 2295 SHA256:6d7f96d7148dda2857772b499cbe17d0feb1c016dcf35b1a6da7c846123bd20b
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.2.0.orig.tar.bz2' expat_2.2.0.orig.tar.bz2 414352 SHA256:d9e50ff2d19b3538bd2127902a89987474e1a4db8e43a66a4d1a712ab9a504ff
'http://deb.debian.org/debian/pool/main/e/expat/expat_2.2.0-2+deb9u1.debian.tar.xz' expat_2.2.0-2+deb9u1.debian.tar.xz 11448 SHA256:d3e171fc4d2e6173945daab7d7df46d640fa23134c9474080f6d1b65d494b0a5
```

Other potentially useful URLs:

- https://sources.debian.net/src/expat/2.2.0-2+deb9u1/ (for browsing the source)
- https://sources.debian.net/src/expat/2.2.0-2+deb9u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/expat/2.2.0-2+deb9u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `findutils=4.6.0+git+20161106-2`

Binary Packages:

- `findutils=4.6.0+git+20161106-2`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.6.0+git+20161106-2
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0+git+20161106-2.dsc' findutils_4.6.0+git+20161106-2.dsc 2220 SHA256:f92d95f03e56357bb72e897f4d8b363995f280cfdf6dedfabdec3164f3a7651a
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0+git+20161106.orig.tar.xz' findutils_4.6.0+git+20161106.orig.tar.xz 1828956 SHA256:96a3aa120d7300863f39fe56ccb6674d8cde4730b485f4f81083c1a6d33097e3
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0+git+20161106-2.debian.tar.xz' findutils_4.6.0+git+20161106-2.debian.tar.xz 26812 SHA256:aca885ac24582f5c393dbbfa362264712ee4922da0ff7aa1fc602e629c89b71b
```

Other potentially useful URLs:

- https://sources.debian.net/src/findutils/4.6.0+git+20161106-2/ (for browsing the source)
- https://sources.debian.net/src/findutils/4.6.0+git+20161106-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/findutils/4.6.0+git+20161106-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `fontconfig=2.11.0-6.7`

Binary Packages:

- `fontconfig-config=2.11.0-6.7`
- `libfontconfig1:amd64=2.11.0-6.7+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.11.0-6.7
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.11.0-6.7.dsc' fontconfig_2.11.0-6.7.dsc 1851 SHA256:3e60036d03fb610d5ed398b7be0cfe0f9dea0ce9b25cb612acec6df11963a101
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.11.0.orig.tar.xz' fontconfig_2.11.0.orig.tar.xz 319652 SHA256:f19c7366d59dc4e79eaf3eedabd44b6375b238f29316db5020a183c7d9a78db9
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.11.0-6.7.debian.tar.xz' fontconfig_2.11.0-6.7.debian.tar.xz 1074508 SHA256:170c1e1a6221e0d3209b2a36507128aa3454135ca3dcd1eb2b06556e46c0c30e
```

Other potentially useful URLs:

- https://sources.debian.net/src/fontconfig/2.11.0-6.7/ (for browsing the source)
- https://sources.debian.net/src/fontconfig/2.11.0-6.7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fontconfig/2.11.0-6.7/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `freetype=2.6.3-3.2`

Binary Packages:

- `libfreetype6:amd64=2.6.3-3.2`

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
$ apt-get source -qq --print-uris freetype=2.6.3-3.2
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.6.3-3.2.dsc' freetype_2.6.3-3.2.dsc 2292 SHA256:631d4fa321885bb0b950abc4061eb1a720fd249a14b940e4aa10dd78ce2a19b2
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.6.3.orig.tar.gz' freetype_2.6.3.orig.tar.gz 7313547 SHA256:814a22aad85e8ca2cb4acfc2e9dc59caa6eded4f6619590f7bd0a721e4b076a3
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.6.3-3.2.diff.gz' freetype_2.6.3-3.2.diff.gz 40027 SHA256:ca45f666d5bf5bcdadbff72f0c8d7335c36e2174e9fd07ef658a9def6eac6aff
```

Other potentially useful URLs:

- https://sources.debian.net/src/freetype/2.6.3-3.2/ (for browsing the source)
- https://sources.debian.net/src/freetype/2.6.3-3.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/freetype/2.6.3-3.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-6=6.3.0-18+deb9u1`

Binary Packages:

- `gcc-6-base:amd64=6.3.0-18+deb9u1`
- `libgcc1:amd64=1:6.3.0-18+deb9u1`
- `libstdc++6:amd64=6.3.0-18+deb9u1`

Licenses: (parsed from: `/usr/share/doc/gcc-6-base/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libstdc++6/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gcc-6=6.3.0-18+deb9u1
'http://deb.debian.org/debian/pool/main/g/gcc-6/gcc-6_6.3.0-18+deb9u1.dsc' gcc-6_6.3.0-18+deb9u1.dsc 27148 SHA256:8145f139255d35dac4c922321cb98ba11a73296a886a76563a5eef309e1d5bec
'http://deb.debian.org/debian/pool/main/g/gcc-6/gcc-6_6.3.0.orig.tar.gz' gcc-6_6.3.0.orig.tar.gz 81587460 SHA256:04552f04baf6974fb7521191859fb54717385ad659afd822b2995b66ee4e4151
'http://deb.debian.org/debian/pool/main/g/gcc-6/gcc-6_6.3.0-18+deb9u1.diff.gz' gcc-6_6.3.0-18+deb9u1.diff.gz 2075943 SHA256:8c705553bf211e064f3270e51e81a6b2a0bf122f39f7c98ce7f2fbdfd9fa9564
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-6/6.3.0-18+deb9u1/ (for browsing the source)
- https://sources.debian.net/src/gcc-6/6.3.0-18+deb9u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-6/6.3.0-18+deb9u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gdbm=1.8.3-14`

Binary Packages:

- `libgdbm3:amd64=1.8.3-14`

Licenses: (parsed from: `/usr/share/doc/libgdbm3/copyright`)

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

### `dpkg` source package: `gdk-pixbuf=2.36.5-2+deb9u2`

Binary Packages:

- `libgdk-pixbuf2.0-0:amd64=2.36.5-2+deb9u2`
- `libgdk-pixbuf2.0-common=2.36.5-2+deb9u2`

Licenses: (parsed from: `/usr/share/doc/libgdk-pixbuf2.0-0/copyright`, `/usr/share/doc/libgdk-pixbuf2.0-common/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris gdk-pixbuf=2.36.5-2+deb9u2
'http://deb.debian.org/debian/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.5-2+deb9u2.dsc' gdk-pixbuf_2.36.5-2+deb9u2.dsc 2841 SHA256:195f9aaa11064ce76b43b772851c0d786a7e40bc6205f16df6430d9f0740ec9c
'http://deb.debian.org/debian/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.5.orig.tar.xz' gdk-pixbuf_2.36.5.orig.tar.xz 5165640 SHA256:7ace06170291a1f21771552768bace072ecdea9bd4a02f7658939b9a314c40fc
'http://deb.debian.org/debian/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.5-2+deb9u2.debian.tar.xz' gdk-pixbuf_2.36.5-2+deb9u2.debian.tar.xz 15900 SHA256:bf3450ffdd075990f078c6e14f6a793513baaab469965308acfa4241b8e0cbdc
```

Other potentially useful URLs:

- https://sources.debian.net/src/gdk-pixbuf/2.36.5-2+deb9u2/ (for browsing the source)
- https://sources.debian.net/src/gdk-pixbuf/2.36.5-2+deb9u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gdk-pixbuf/2.36.5-2+deb9u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glib2.0=2.50.3-2`

Binary Packages:

- `libglib2.0-0:amd64=2.50.3-2`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.50.3-2
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.50.3-2.dsc' glib2.0_2.50.3-2.dsc 3302 SHA256:9c8e79d22e5a11ebbb69389018478c79aa39dc01f6d1fee4f164ad17752a33c9
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.50.3.orig.tar.xz' glib2.0_2.50.3.orig.tar.xz 7589284 SHA256:82ee94bf4c01459b6b00cb9db0545c2237921e3060c0b74cff13fbc020cfd999
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.50.3-2.debian.tar.xz' glib2.0_2.50.3-2.debian.tar.xz 70936 SHA256:dab54226c828a99eb3accf59d471efceafcc16c25c7482cf99972553f98b6512
```

Other potentially useful URLs:

- https://sources.debian.net/src/glib2.0/2.50.3-2/ (for browsing the source)
- https://sources.debian.net/src/glib2.0/2.50.3-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glib2.0/2.50.3-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glibc=2.24-11+deb9u4`

Binary Packages:

- `libc-bin=2.24-11+deb9u4`
- `libc6:amd64=2.24-11+deb9u4`
- `multiarch-support=2.24-11+deb9u4`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/multiarch-support/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.24-11+deb9u4
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.24-11+deb9u4.dsc' glibc_2.24-11+deb9u4.dsc 8386 SHA256:0cfc10b8f713f41c087476a0a9f6687b4ccb22c5652502bfe8e5c0798f8b097f
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.24.orig.tar.xz' glibc_2.24.orig.tar.xz 13921912 SHA256:ed71e8afd2b270f7947a2cea2457a31e1ca4fac08e2731d80edd7ec1730ec84f
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.24-11+deb9u4.debian.tar.xz' glibc_2.24-11+deb9u4.debian.tar.xz 1060620 SHA256:bcf78fb5157cd84d26cdc4b3366b1d5e92fc13609a465ac63ff322a5adac3cbc
```

Other potentially useful URLs:

- https://sources.debian.net/src/glibc/2.24-11+deb9u4/ (for browsing the source)
- https://sources.debian.net/src/glibc/2.24-11+deb9u4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glibc/2.24-11+deb9u4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gmp=2:6.1.2+dfsg-1`

Binary Packages:

- `libgmp10:amd64=2:6.1.2+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libgmp10/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.1.2+dfsg-1
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2+dfsg-1.dsc' gmp_6.1.2+dfsg-1.dsc 2183 SHA256:3a53f6c74c9b2465c1c61446aa9bdc6182fdec8b04075849d4cbf224a73b6fbe
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2+dfsg.orig.tar.xz' gmp_6.1.2+dfsg.orig.tar.xz 1804424 SHA256:18016f718f621e7641ddd4e57f8e140391c5183252e5998263ffff59198a65b7
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2+dfsg-1.debian.tar.xz' gmp_6.1.2+dfsg-1.debian.tar.xz 20652 SHA256:79e73f74197e7628b2f0c02edf01b6eea3716c13152044ed8e0e0ee4178394df
```

Other potentially useful URLs:

- https://sources.debian.net/src/gmp/2:6.1.2+dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/gmp/2:6.1.2+dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gmp/2:6.1.2+dfsg-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnupg2=2.1.18-8~deb9u4`

Binary Packages:

- `gpgv=2.1.18-8~deb9u4`

Licenses: (parsed from: `/usr/share/doc/gpgv/copyright`)

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
$ apt-get source -qq --print-uris gnupg2=2.1.18-8~deb9u4
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.1.18-8~deb9u4.dsc' gnupg2_2.1.18-8~deb9u4.dsc 2561 SHA256:e42240a13af866a3c9db1704bfbbd2230abb071dca3c24d7c2a3b27e94d8aaa3
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.1.18.orig.tar.bz2' gnupg2_2.1.18.orig.tar.bz2 6308666 SHA256:d04c6fab7e5562ce4b915b22020e34d4c1a256847690cf149842264fc7cef994
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.1.18-8~deb9u4.debian.tar.bz2' gnupg2_2.1.18-8~deb9u4.debian.tar.bz2 122023 SHA256:81f6cf52bc22d77332a413ec2cd423e2127faea950705b50b50f84c8ed43521e
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnupg2/2.1.18-8~deb9u4/ (for browsing the source)
- https://sources.debian.net/src/gnupg2/2.1.18-8~deb9u4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnupg2/2.1.18-8~deb9u4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnutls28=3.5.8-5+deb9u4`

Binary Packages:

- `libgnutls30:amd64=3.5.8-5+deb9u4`

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
$ apt-get source -qq --print-uris gnutls28=3.5.8-5+deb9u4
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.5.8-5+deb9u4.dsc' gnutls28_3.5.8-5+deb9u4.dsc 3286 SHA256:688284aba04d8ff84c6636d354c844c06e691031eb9a2fccc2e41547ed2fac9e
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.5.8.orig.tar.xz' gnutls28_3.5.8.orig.tar.xz 7264448 SHA256:0e97f243ae72b70307d684b84c7fe679385aa7a7a0e37e5be810193dcc17d4ff
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.5.8.orig.tar.xz.asc' gnutls28_3.5.8.orig.tar.xz.asc 287 SHA256:417da9db564a841128edb2dc2c98465a5749541f7d71492cb7c4905a0bfeac82
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.5.8-5+deb9u4.debian.tar.xz' gnutls28_3.5.8-5+deb9u4.debian.tar.xz 111484 SHA256:9013debe7c67edcd8aff039ab250d294b61313e52f7bbbd212d68d0b4fcee187
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnutls28/3.5.8-5+deb9u4/ (for browsing the source)
- https://sources.debian.net/src/gnutls28/3.5.8-5+deb9u4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnutls28/3.5.8-5+deb9u4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gosu=1.10-1`

Binary Packages:

- `gosu=1.10-1+b2`

Licenses: (parsed from: `/usr/share/doc/gosu/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gosu=1.10-1
'http://deb.debian.org/debian/pool/main/g/gosu/gosu_1.10-1.dsc' gosu_1.10-1.dsc 2000 SHA256:4a1c7ae5b4110890a8df73d05c02b32c8dc739604bce17226e4008fcc9811221
'http://deb.debian.org/debian/pool/main/g/gosu/gosu_1.10.orig.tar.gz' gosu_1.10.orig.tar.gz 17683 SHA256:bcbe8ada8c435a253b1fa438f505dd311832a88f52316fd7d30342b106a4242c
'http://deb.debian.org/debian/pool/main/g/gosu/gosu_1.10-1.debian.tar.xz' gosu_1.10-1.debian.tar.xz 2900 SHA256:9893c3b098b392a9bb9b0a621e671025dbc5ea6c42c3a9b7ea171e36e956e78e
```

Other potentially useful URLs:

- https://sources.debian.net/src/gosu/1.10-1/ (for browsing the source)
- https://sources.debian.net/src/gosu/1.10-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gosu/1.10-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `grep=2.27-2`

Binary Packages:

- `grep=2.27-2`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=2.27-2
'http://deb.debian.org/debian/pool/main/g/grep/grep_2.27-2.dsc' grep_2.27-2.dsc 2053 SHA256:c048a1ad8c39877c2fb0279887c8ea93e59591788fdb08e2f75249ebdcecdea7
'http://deb.debian.org/debian/pool/main/g/grep/grep_2.27.orig.tar.xz' grep_2.27.orig.tar.xz 1360388 SHA256:ad4cc44d23074a1c3a8baae8fbafff2a8c60f38a9a6108f985eef6fbee6dcaeb
'http://deb.debian.org/debian/pool/main/g/grep/grep_2.27-2.debian.tar.bz2' grep_2.27-2.debian.tar.bz2 112728 SHA256:445eaf71811df5ca18242fb5adc417d35e349e49810201977bf7086746b967f4
```

Other potentially useful URLs:

- https://sources.debian.net/src/grep/2.27-2/ (for browsing the source)
- https://sources.debian.net/src/grep/2.27-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/grep/2.27-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `hostname=3.18`

Binary Packages:

- `hostname=3.18+b1`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.18
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.18.dsc' hostname_3.18.dsc 1446 SHA256:4d3d5c8ded08ffc2ebfb39817ba1994b5fc1966652b132ff3e16389b70af28d7
'http://deb.debian.org/debian/pool/main/h/hostname/hostname_3.18.tar.gz' hostname_3.18.tar.gz 13732 SHA256:5cc3ec120967b8f911e86b9561b53977bcc77191c84fe9c607177ccd09f8d207
```

Other potentially useful URLs:

- https://sources.debian.net/src/hostname/3.18/ (for browsing the source)
- https://sources.debian.net/src/hostname/3.18/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/hostname/3.18/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `icu=57.1-6+deb9u2`

Binary Packages:

- `libicu57:amd64=57.1-6+deb9u2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris icu=57.1-6+deb9u2
'http://deb.debian.org/debian/pool/main/i/icu/icu_57.1-6+deb9u2.dsc' icu_57.1-6+deb9u2.dsc 2133 SHA256:a25881728746f3a882fce270b9a8c957d4a8e3999b8871a0781ec2099555ad32
'http://deb.debian.org/debian/pool/main/i/icu/icu_57.1.orig.tar.gz' icu_57.1.orig.tar.gz 22360664 SHA256:ff8c67cb65949b1e7808f2359f2b80f722697048e90e7cfc382ec1fe229e9581
'http://deb.debian.org/debian/pool/main/i/icu/icu_57.1-6+deb9u2.debian.tar.xz' icu_57.1-6+deb9u2.debian.tar.xz 34240 SHA256:7f7ca8e89cca1a21616c72b4f89c7beacb78c369323219ddd0021053a5e1aa38
```

Other potentially useful URLs:

- https://sources.debian.net/src/icu/57.1-6+deb9u2/ (for browsing the source)
- https://sources.debian.net/src/icu/57.1-6+deb9u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/icu/57.1-6+deb9u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `init-system-helpers=1.48`

Binary Packages:

- `init-system-helpers=1.48`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.48
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.48.dsc' init-system-helpers_1.48.dsc 1916 SHA256:aefcef5270cfae3380f9dfd98336de20580086dbdc65c0dfd7fe1c10f0722bd0
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.48.tar.xz' init-system-helpers_1.48.tar.xz 43384 SHA256:20b4ff9df037cfa64d6c9637e383cb09135cb97114d932032160cdfaf01d08b8
```

Other potentially useful URLs:

- https://sources.debian.net/src/init-system-helpers/1.48/ (for browsing the source)
- https://sources.debian.net/src/init-system-helpers/1.48/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/init-system-helpers/1.48/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `jbigkit=2.1-3.1`

Binary Packages:

- `libjbig0:amd64=2.1-3.1+b2`

Licenses: (parsed from: `/usr/share/doc/libjbig0/copyright`)

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

### `dpkg` source package: `lcms2=2.8-4+deb9u1`

Binary Packages:

- `liblcms2-2:amd64=2.8-4+deb9u1`

Licenses: (parsed from: `/usr/share/doc/liblcms2-2/copyright`)

- `GPL-2`
- `GPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris lcms2=2.8-4+deb9u1
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.8-4+deb9u1.dsc' lcms2_2.8-4+deb9u1.dsc 2025 SHA256:47144a3cf2a008da72f32747f7e07be6e940bdc4fbeef80c07c2c65346f8ec43
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.8.orig.tar.gz' lcms2_2.8.orig.tar.gz 6687005 SHA256:66d02b229d2ea9474e62c2b6cd6720fde946155cd1d0d2bffdab829790a0fb22
'http://deb.debian.org/debian/pool/main/l/lcms2/lcms2_2.8-4+deb9u1.debian.tar.xz' lcms2_2.8-4+deb9u1.debian.tar.xz 11492 SHA256:9e1d8156c301000aec3af9c861c5db4984bb820caca724e5d5bc8bd39cb5fed3
```

Other potentially useful URLs:

- https://sources.debian.net/src/lcms2/2.8-4+deb9u1/ (for browsing the source)
- https://sources.debian.net/src/lcms2/2.8-4+deb9u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lcms2/2.8-4+deb9u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libbsd=0.8.3-1`

Binary Packages:

- `libbsd0:amd64=0.8.3-1`

Licenses: (parsed from: `/usr/share/doc/libbsd0/copyright`)

- `BSD-2-clause`
- `BSD-2-clause-NetBSD`
- `BSD-2-clause-author`
- `BSD-2-clause-verbatim`
- `BSD-3-clause`
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
$ apt-get source -qq --print-uris libbsd=0.8.3-1
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.3-1.dsc' libbsd_0.8.3-1.dsc 2212 SHA256:8b53b3731a95f00a0f47195e6afdf8dc4bcb3ed3b9b0d3e7046d8c9c98e5c8f2
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.3.orig.tar.xz' libbsd_0.8.3.orig.tar.xz 356772 SHA256:934b634f4dfd865b6482650b8f522c70ae65c463529de8be907b53c89c3a34a8
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.3.orig.tar.xz.asc' libbsd_0.8.3.orig.tar.xz.asc 819 SHA256:c0e26a577d19404d05515e0559b9224106a59ecd30910d6896694c4a5a4b021d
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.8.3-1.debian.tar.xz' libbsd_0.8.3-1.debian.tar.xz 14924 SHA256:c2beb8b2c4678c9f700b09834d1083fb6b1f883b112e493bd1ed1177355114fc
```

Other potentially useful URLs:

- https://sources.debian.net/src/libbsd/0.8.3-1/ (for browsing the source)
- https://sources.debian.net/src/libbsd/0.8.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libbsd/0.8.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcap-ng=0.7.7-3`

Binary Packages:

- `libcap-ng0:amd64=0.7.7-3+b1`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.7.7-3
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.7-3.dsc' libcap-ng_0.7.7-3.dsc 1722 SHA256:6f5262f0ed2792c135e9b6bf7d30461cc3015249832f381505d21b9217a67685
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.7.orig.tar.gz' libcap-ng_0.7.7.orig.tar.gz 420178 SHA256:615549ce39b333f6b78baee0c0b4ef18bc726c6bf1cca123dfd89dd963f6d06b
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.7-3.debian.tar.xz' libcap-ng_0.7.7-3.debian.tar.xz 5248 SHA256:b7a0846dbd0451903bcbbe3a2696341f4e6000ebd64bed259c7fbf9dfc818363
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcap-ng/0.7.7-3/ (for browsing the source)
- https://sources.debian.net/src/libcap-ng/0.7.7-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcap-ng/0.7.7-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libffi=3.2.1-6`

Binary Packages:

- `libffi6:amd64=3.2.1-6`

Licenses: (parsed from: `/usr/share/doc/libffi6/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.2.1-6
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.2.1-6.dsc' libffi_3.2.1-6.dsc 1923 SHA256:f901298b078c7d7f3f75459b5ff74cc804f6f2cfd65ed619d2082d5f77089954
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.2.1.orig.tar.gz' libffi_3.2.1.orig.tar.gz 940837 SHA256:d06ebb8e1d9a22d19e38d63fdb83954253f39bedc5d46232a05645685722ca37
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.2.1-6.debian.tar.xz' libffi_3.2.1-6.debian.tar.xz 11252 SHA256:477709fa90f8c7631fa226a48cdf38737c9f195f3686f62aa76714bcffaee512
```

Other potentially useful URLs:

- https://sources.debian.net/src/libffi/3.2.1-6/ (for browsing the source)
- https://sources.debian.net/src/libffi/3.2.1-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libffi/3.2.1-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgcrypt20=1.7.6-2+deb9u3`

Binary Packages:

- `libgcrypt20:amd64=1.7.6-2+deb9u3`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.7.6-2+deb9u3
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.7.6-2+deb9u3.dsc' libgcrypt20_1.7.6-2+deb9u3.dsc 2838 SHA256:55ab5150f7ff08345d819db2d8b68ae7d443265ca35c2e6ca0c0052a59b3c1f6
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.7.6.orig.tar.bz2' libgcrypt20_1.7.6.orig.tar.bz2 2897695 SHA256:626aafee84af9d2ce253d2c143dc1c0902dda045780cc241f39970fc60be05bc
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.7.6-2+deb9u3.debian.tar.xz' libgcrypt20_1.7.6-2+deb9u3.debian.tar.xz 32760 SHA256:5947ca05db069293a0cd2c4cbb561072d5e5a13933849039e6f054290b90b57f
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgcrypt20/1.7.6-2+deb9u3/ (for browsing the source)
- https://sources.debian.net/src/libgcrypt20/1.7.6-2+deb9u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgcrypt20/1.7.6-2+deb9u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgpg-error=1.26-2`

Binary Packages:

- `libgpg-error0:amd64=1.26-2`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `GPL-2.1+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.26-2
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.26-2.dsc' libgpg-error_1.26-2.dsc 2454 SHA256:ea53df72d922f224cf0bb69df5a20100a2a5826e890741277425269d70eade20
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.26.orig.tar.bz2' libgpg-error_1.26.orig.tar.bz2 798096 SHA256:4c4bcbc90116932e3acd37b37812d8653b1b189c1904985898e860af818aee69
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.26-2.debian.tar.xz' libgpg-error_1.26-2.debian.tar.xz 12740 SHA256:20a73d5bcc4f523ae16b9279698c01b37dd5cffd2b7dc317c65923aa115ca46c
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgpg-error/1.26-2/ (for browsing the source)
- https://sources.debian.net/src/libgpg-error/1.26-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgpg-error/1.26-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgsf=1.14.41-1`

Binary Packages:

- `libgsf-1-114:amd64=1.14.41-1`
- `libgsf-1-common=1.14.41-1`

Licenses: (parsed from: `/usr/share/doc/libgsf-1-114/copyright`, `/usr/share/doc/libgsf-1-common/copyright`)

- `FSF-UL`
- `GPL-2`
- `GPL-2+`
- `GPL_and_exception-autoconf`
- `LGPL-2.1`
- `exception-GPL-Autoconf`
- `local-m4a`

Source:

```console
$ apt-get source -qq --print-uris libgsf=1.14.41-1
'http://deb.debian.org/debian/pool/main/libg/libgsf/libgsf_1.14.41-1.dsc' libgsf_1.14.41-1.dsc 2288 SHA256:38651f2fdb0d1408f39398f29e9ccfd4a881de37443e5ad3f6041ac2d145be01
'http://deb.debian.org/debian/pool/main/libg/libgsf/libgsf_1.14.41.orig.tar.xz' libgsf_1.14.41.orig.tar.xz 616944 SHA256:150b98586a1021d5c49b3d4d065d0aa3e3674ae31db131af5372499d2d3f08d3
'http://deb.debian.org/debian/pool/main/libg/libgsf/libgsf_1.14.41-1.debian.tar.xz' libgsf_1.14.41-1.debian.tar.xz 13572 SHA256:c036d443c4e6965c4ca31d93bd7983564408f70ddcd67ea6521fa9aec2dd9589
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgsf/1.14.41-1/ (for browsing the source)
- https://sources.debian.net/src/libgsf/1.14.41-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgsf/1.14.41-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libidn=1.33-1`

Binary Packages:

- `libidn11:amd64=1.33-1`

Licenses: (parsed from: `/usr/share/doc/libidn11/copyright`)

- `GAP`
- `GFDL-1.3`
- `GFDL-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libidn=1.33-1
'http://deb.debian.org/debian/pool/main/libi/libidn/libidn_1.33-1.dsc' libidn_1.33-1.dsc 1848 SHA256:f076f7dddc45717542a48123d7dddb638beebe8521f5fba29f2d148fdcf12bf0
'http://deb.debian.org/debian/pool/main/libi/libidn/libidn_1.33.orig.tar.gz' libidn_1.33.orig.tar.gz 3501056 SHA256:44a7aab635bb721ceef6beecc4d49dfd19478325e1b47f3196f7d2acc4930e19
'http://deb.debian.org/debian/pool/main/libi/libidn/libidn_1.33-1.debian.tar.xz' libidn_1.33-1.debian.tar.xz 60264 SHA256:a50ee1e2598670ca1166d218e546c4cc031c658188b1193b73d98175d4405ef0
```

Other potentially useful URLs:

- https://sources.debian.net/src/libidn/1.33-1/ (for browsing the source)
- https://sources.debian.net/src/libidn/1.33-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libidn/1.33-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libjpeg-turbo=1:1.5.1-2`

Binary Packages:

- `libjpeg62-turbo:amd64=1:1.5.1-2`

Licenses: (parsed from: `/usr/share/doc/libjpeg62-turbo/copyright`)

- `BSD-3`
- `BSD-BY-LC-NE`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=1:1.5.1-2
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.5.1-2.dsc' libjpeg-turbo_1.5.1-2.dsc 2420 SHA256:9f755bfafa4795f91c689cb742194559f6e543e35ba135e0d30f6b51eed1eba2
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.5.1.orig.tar.gz' libjpeg-turbo_1.5.1.orig.tar.gz 1650647 SHA256:41429d3d253017433f66e3d472b8c7d998491d2f41caa7306b8d9a6f2a2c666c
'http://deb.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.5.1-2.debian.tar.xz' libjpeg-turbo_1.5.1-2.debian.tar.xz 78576 SHA256:0077c9e2b7ec2abe25c7a591e65a08750045a28dcd00207a928079a3d31b3cc4
```

Other potentially useful URLs:

- https://sources.debian.net/src/libjpeg-turbo/1:1.5.1-2/ (for browsing the source)
- https://sources.debian.net/src/libjpeg-turbo/1:1.5.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libjpeg-turbo/1:1.5.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpng1.6=1.6.28-1+deb9u1`

Binary Packages:

- `libpng16-16:amd64=1.6.28-1+deb9u1`

Licenses: (parsed from: `/usr/share/doc/libpng16-16/copyright`)

- `BSD-like-with-advertising-clause`
- `GPL-2`
- `GPL-2+`
- `expat`
- `libpng`

Source:

```console
$ apt-get source -qq --print-uris libpng1.6=1.6.28-1+deb9u1
'http://security.debian.org/debian-security/pool/updates/main/libp/libpng1.6/libpng1.6_1.6.28-1+deb9u1.dsc' libpng1.6_1.6.28-1+deb9u1.dsc 2403 SHA256:e33f21a69c0406eaee4ca7157c7234c3a078bab83f57c399cd2ddc8d7c868ddf
'http://security.debian.org/debian-security/pool/updates/main/libp/libpng1.6/libpng1.6_1.6.28.orig.tar.xz' libpng1.6_1.6.28.orig.tar.xz 984536 SHA256:d8d3ec9de6b5db740fefac702c37ffcf96ae46cb17c18c1544635a3852f78f7a
'http://security.debian.org/debian-security/pool/updates/main/libp/libpng1.6/libpng1.6_1.6.28-1+deb9u1.debian.tar.xz' libpng1.6_1.6.28-1+deb9u1.debian.tar.xz 22844 SHA256:c082fb471028f37bfb9510057f7d4854e1200b5115d2c308da9c2837375585e9
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpng1.6/1.6.28-1+deb9u1/ (for browsing the source)
- https://sources.debian.net/src/libpng1.6/1.6.28-1+deb9u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpng1.6/1.6.28-1+deb9u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libselinux=2.6-3`

Binary Packages:

- `libselinux1:amd64=2.6-3+b3`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.6-3
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.6-3.dsc' libselinux_2.6-3.dsc 2217 SHA256:91bb53feba8031bfc7b0110fc4e0e1dae4a8e2906f4a524f83252a95ae0e639c
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.6.orig.tar.gz' libselinux_2.6.orig.tar.gz 203119 SHA256:4ea2dde50665c202253ba5caac7738370ea0337c47b251ba981c60d24e1a118a
'http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux_2.6-3.debian.tar.xz' libselinux_2.6-3.debian.tar.xz 24396 SHA256:5a06841565e7907bc0dae9f8ed5940d040316192bd9662df59c79af7c212a171
```

Other potentially useful URLs:

- https://sources.debian.net/src/libselinux/2.6-3/ (for browsing the source)
- https://sources.debian.net/src/libselinux/2.6-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libselinux/2.6-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsemanage=2.6-2`

Binary Packages:

- `libsemanage-common=2.6-2`
- `libsemanage1:amd64=2.6-2`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.6-2
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.6-2.dsc' libsemanage_2.6-2.dsc 2338 SHA256:2806bf3591dc7eb4c80d647a9e65df13d03657cfa6e049de1035165e0d8484d0
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.6.orig.tar.gz' libsemanage_2.6.orig.tar.gz 155897 SHA256:4f81541047290b751f2ffb926fcd381c186f22db18d9fe671b0b4a6a54e8cfce
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.6-2.debian.tar.xz' libsemanage_2.6-2.debian.tar.xz 17088 SHA256:3d1c4c5ea5d4f27a521b64ba3fc499c8b662257ffec773706501f466032db8cf
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsemanage/2.6-2/ (for browsing the source)
- https://sources.debian.net/src/libsemanage/2.6-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsemanage/2.6-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libsepol=2.6-2`

Binary Packages:

- `libsepol1:amd64=2.6-2`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.6-2
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.6-2.dsc' libsepol_2.6-2.dsc 1814 SHA256:197ddaf44a5139d7ca6c12ce6b29fca0589f72c59ac588a7fa39d11b2e65778a
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.6.orig.tar.gz' libsepol_2.6.orig.tar.gz 442549 SHA256:d856d6506054f52abeaa3543ea2f2344595a3dc05d0d873ed7f724f7a16b1874
'http://deb.debian.org/debian/pool/main/libs/libsepol/libsepol_2.6-2.debian.tar.xz' libsepol_2.6-2.debian.tar.xz 14320 SHA256:d7a1022d03eb53a8d30262e06f14f691e553b3db684ca0f3549cd17b93fb7465
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsepol/2.6-2/ (for browsing the source)
- https://sources.debian.net/src/libsepol/2.6-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsepol/2.6-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libtasn1-6=4.10-1.1+deb9u1`

Binary Packages:

- `libtasn1-6:amd64=4.10-1.1+deb9u1`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libtasn1-6=4.10-1.1+deb9u1
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.10-1.1+deb9u1.dsc' libtasn1-6_4.10-1.1+deb9u1.dsc 2614 SHA256:e9095d4d79e1015c2c2d3e8868d3c50f3b43510387a9ec9191d83ff57024fb39
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.10.orig.tar.gz' libtasn1-6_4.10.orig.tar.gz 1887057 SHA256:681a4d9a0d259f2125713f2e5766c5809f151b3a1392fd91390f780b4b8f5a02
'http://deb.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.10-1.1+deb9u1.debian.tar.xz' libtasn1-6_4.10-1.1+deb9u1.debian.tar.xz 59716 SHA256:fed5f50904fbfecc50d253aa4bc62221849e363430f71125039ada1512807937
```

Other potentially useful URLs:

- https://sources.debian.net/src/libtasn1-6/4.10-1.1+deb9u1/ (for browsing the source)
- https://sources.debian.net/src/libtasn1-6/4.10-1.1+deb9u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libtasn1-6/4.10-1.1+deb9u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libwmf=0.2.8.4-10.6`

Binary Packages:

- `libwmf0.2-7:amd64=0.2.8.4-10.6`

Licenses: (parsed from: `/usr/share/doc/libwmf0.2-7/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris libwmf=0.2.8.4-10.6
'http://deb.debian.org/debian/pool/main/libw/libwmf/libwmf_0.2.8.4-10.6.dsc' libwmf_0.2.8.4-10.6.dsc 2064 SHA256:860bbc5b3cd947b837961155b511e54e6fa75f935d0aed6872e5c9884b0c8aac
'http://deb.debian.org/debian/pool/main/libw/libwmf/libwmf_0.2.8.4.orig.tar.gz' libwmf_0.2.8.4.orig.tar.gz 2169375 SHA256:5b345c69220545d003ad52bfd035d5d6f4f075e65204114a9e875e84895a7cf8
'http://deb.debian.org/debian/pool/main/libw/libwmf/libwmf_0.2.8.4-10.6.debian.tar.xz' libwmf_0.2.8.4-10.6.debian.tar.xz 11252 SHA256:081524291f605a7cb3ef1fe519e7da77b3b7c13d925f4368edcc72cb2c6fa259
```

Other potentially useful URLs:

- https://sources.debian.net/src/libwmf/0.2.8.4-10.6/ (for browsing the source)
- https://sources.debian.net/src/libwmf/0.2.8.4-10.6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libwmf/0.2.8.4-10.6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libx11=2:1.6.4-3+deb9u1`

Binary Packages:

- `libx11-6:amd64=2:1.6.4-3+deb9u1`
- `libx11-data=2:1.6.4-3+deb9u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libx11=2:1.6.4-3+deb9u1
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.4-3+deb9u1.dsc' libx11_1.6.4-3+deb9u1.dsc 2576 SHA256:f58095603558b7db6b5799852c693efb18adcb64b8a85e21433df0f3080101cd
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.4.orig.tar.gz' libx11_1.6.4.orig.tar.gz 3095115 SHA256:5d7fbb9e15c27900ea8963218a59750b674a8d7c94161b66e96fcfbdaa1c6263
'http://deb.debian.org/debian/pool/main/libx/libx11/libx11_1.6.4-3+deb9u1.diff.gz' libx11_1.6.4-3+deb9u1.diff.gz 42948 SHA256:9f35ff369042893ffc47fa47fea245b355e7a7e44853d8cc4d8a765c32b407f2
```

Other potentially useful URLs:

- https://sources.debian.net/src/libx11/2:1.6.4-3+deb9u1/ (for browsing the source)
- https://sources.debian.net/src/libx11/2:1.6.4-3+deb9u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libx11/2:1.6.4-3+deb9u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxau=1:1.0.8-1`

Binary Packages:

- `libxau6:amd64=1:1.0.8-1`

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
- `libxcb-shm0:amd64=1.12-1`
- `libxcb1:amd64=1.12-1`

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

### `dpkg` source package: `libxml2=2.9.4+dfsg1-2.2+deb9u2`

Binary Packages:

- `libxml2:amd64=2.9.4+dfsg1-2.2+deb9u2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.4+dfsg1-2.2+deb9u2
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1-2.2+deb9u2.dsc' libxml2_2.9.4+dfsg1-2.2+deb9u2.dsc 3049 SHA256:53d34e06270572861dd0cb59f99b35caa40f85f928151827f59686fc3642d6b1
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1.orig.tar.xz' libxml2_2.9.4+dfsg1.orig.tar.xz 2446412 SHA256:a74ad55e346aa0b2b41903e66d21f8f3d2a736b3f41e32496376861ab484184e
'http://deb.debian.org/debian/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1-2.2+deb9u2.debian.tar.xz' libxml2_2.9.4+dfsg1-2.2+deb9u2.debian.tar.xz 33996 SHA256:d178b2d7c9a3bfd929762e15b8f99a139a54a9bcf988820e4f4febb051090b62
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxml2/2.9.4+dfsg1-2.2+deb9u2/ (for browsing the source)
- https://sources.debian.net/src/libxml2/2.9.4+dfsg1-2.2+deb9u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxml2/2.9.4+dfsg1-2.2+deb9u2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libxslt=1.1.29-2.1`

Binary Packages:

- `libxslt1.1:amd64=1.1.29-2.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxslt=1.1.29-2.1
'http://deb.debian.org/debian/pool/main/libx/libxslt/libxslt_1.1.29-2.1.dsc' libxslt_1.1.29-2.1.dsc 2535 SHA256:8823c0cb209943fb1a3f6761b9a1b3c49c0348da3aa7a67ff9e09760c0976410
'http://deb.debian.org/debian/pool/main/libx/libxslt/libxslt_1.1.29.orig.tar.gz' libxslt_1.1.29.orig.tar.gz 3428524 SHA256:b5976e3857837e7617b29f2249ebb5eeac34e249208d31f1fbf7a6ba7a4090ce
'http://deb.debian.org/debian/pool/main/libx/libxslt/libxslt_1.1.29-2.1.debian.tar.xz' libxslt_1.1.29-2.1.debian.tar.xz 28548 SHA256:93ef76669dae1bdfdd5f60418e29ccda60c7b693b67d0da81e7d12ffb6d25085
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxslt/1.1.29-2.1/ (for browsing the source)
- https://sources.debian.net/src/libxslt/1.1.29-2.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxslt/1.1.29-2.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lsb=9.20161125`

Binary Packages:

- `lsb-base=9.20161125`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=9.20161125
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_9.20161125.dsc' lsb_9.20161125.dsc 1697 SHA256:f2dd58084b1beabe966136cfd2e1b355002c1fb1635a6db5ef159b09ed94864f
'http://deb.debian.org/debian/pool/main/l/lsb/lsb_9.20161125.tar.xz' lsb_9.20161125.tar.xz 43096 SHA256:0f9889ff1922da54d1f1538c11a57aa21dc5adf621e6201b18026f6633088bbd
```

Other potentially useful URLs:

- https://sources.debian.net/src/lsb/9.20161125/ (for browsing the source)
- https://sources.debian.net/src/lsb/9.20161125/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lsb/9.20161125/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lynx=2.8.9dev11-1`

Binary Packages:

- `lynx=2.8.9dev11-1`
- `lynx-common=2.8.9dev11-1`

Licenses: (parsed from: `/usr/share/doc/lynx/copyright`, `/usr/share/doc/lynx-common/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lynx=2.8.9dev11-1
'http://deb.debian.org/debian/pool/main/l/lynx/lynx_2.8.9dev11-1.dsc' lynx_2.8.9dev11-1.dsc 2328 SHA256:04830e05331f9ccde2d0d3384aaa8875c041f7c2537358e2426bc0beaa11303f
'http://deb.debian.org/debian/pool/main/l/lynx/lynx_2.8.9dev11.orig.tar.bz2' lynx_2.8.9dev11.orig.tar.bz2 2665470 SHA256:2a1092f2cde76f109e4f1df1760c1d2a8792ba7018ab7ff3cc2b01d14e0c15b3
'http://deb.debian.org/debian/pool/main/l/lynx/lynx_2.8.9dev11-1.debian.tar.xz' lynx_2.8.9dev11-1.debian.tar.xz 27440 SHA256:d06d8da2971fc4dd649e2f37342a75dd4d7bdd156fcd4b6e3c99ebd96c9f6f53
```

Other potentially useful URLs:

- https://sources.debian.net/src/lynx/2.8.9dev11-1/ (for browsing the source)
- https://sources.debian.net/src/lynx/2.8.9dev11-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lynx/2.8.9dev11-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `ncurses=6.0+20161126-1+deb9u2`

Binary Packages:

- `libncursesw5:amd64=6.0+20161126-1+deb9u2`
- `libtinfo5:amd64=6.0+20161126-1+deb9u2`
- `ncurses-base=6.0+20161126-1+deb9u2`
- `ncurses-bin=6.0+20161126-1+deb9u2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=6.0+20161126-1+deb9u2
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.0+20161126-1+deb9u2.dsc' ncurses_6.0+20161126-1+deb9u2.dsc 3784 SHA256:8cd721a065bea8275bf8daae9f01018b5fa2e9e020ac7c09fb61220804c9b9f5
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.0+20161126.orig.tar.gz' ncurses_6.0+20161126.orig.tar.gz 3192242 SHA256:e4b9cf1cfcf5a2db7df1d36402967783ba759246c8ff5a17a85ffd7e79296ec0
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.0+20161126-1+deb9u2.debian.tar.xz' ncurses_6.0+20161126-1+deb9u2.debian.tar.xz 59324 SHA256:04e6b5acf08d730c34f200ddb92144465ec346c0a3c1c2b9cbcd72ed9ddab1e7
```

Other potentially useful URLs:

- https://sources.debian.net/src/ncurses/6.0+20161126-1+deb9u2/ (for browsing the source)
- https://sources.debian.net/src/ncurses/6.0+20161126-1+deb9u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ncurses/6.0+20161126-1+deb9u2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `netcat=1.10-41`

Binary Packages:

- `netcat=1.10-41`
- `netcat-traditional=1.10-41+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris netcat=1.10-41
'http://deb.debian.org/debian/pool/main/n/netcat/netcat_1.10-41.dsc' netcat_1.10-41.dsc 1779 SHA256:1b0c719a9da9d63698c8bf60c1121780b2c2d383a4e69f1e336a7f0937b3bfff
'http://deb.debian.org/debian/pool/main/n/netcat/netcat_1.10.orig.tar.bz2' netcat_1.10.orig.tar.bz2 64363 SHA256:64913dc3f0b4a96c3ab04d062d84f28ba6854152c94344e3985458b2aebca3d5
'http://deb.debian.org/debian/pool/main/n/netcat/netcat_1.10-41.debian.tar.xz' netcat_1.10-41.debian.tar.xz 20760 SHA256:ae34f23a53e17bc4543b815435ecb1a4515777e989b0ed12b2e3765a7da8eba5
```

Other potentially useful URLs:

- https://sources.debian.net/src/netcat/1.10-41/ (for browsing the source)
- https://sources.debian.net/src/netcat/1.10-41/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/netcat/1.10-41/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nettle=3.3-1`

Binary Packages:

- `libhogweed4:amd64=3.3-1+b2`
- `libnettle6:amd64=3.3-1+b2`

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
$ apt-get source -qq --print-uris nettle=3.3-1
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.3-1.dsc' nettle_3.3-1.dsc 2043 SHA256:3336bc6e8e5b1acad66afa97a05f934e4d758c614fd468d5650b5a38049f1161
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.3.orig.tar.gz' nettle_3.3.orig.tar.gz 1887927 SHA256:46942627d5d0ca11720fec18d81fc38f7ef837ea4197c1f630e71ce0d470b11e
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.3-1.debian.tar.xz' nettle_3.3-1.debian.tar.xz 19428 SHA256:42fef549318af6cfdf76336eb348501d09454a1d873a84f66440b9a791a0ff1b
```

Other potentially useful URLs:

- https://sources.debian.net/src/nettle/3.3-1/ (for browsing the source)
- https://sources.debian.net/src/nettle/3.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nettle/3.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nspr=2:4.12-6`

Binary Packages:

- `libnspr4:amd64=2:4.12-6`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris nspr=2:4.12-6
'http://deb.debian.org/debian/pool/main/n/nspr/nspr_4.12-6.dsc' nspr_4.12-6.dsc 2038 SHA256:c2b7b566e45ad153effa12b5e206bc213a215543aff01e29bc0f47c68162b160
'http://deb.debian.org/debian/pool/main/n/nspr/nspr_4.12.orig.tar.gz' nspr_4.12.orig.tar.gz 1135458 SHA256:e0b10a1e569153668ff8bdea6c7e491b389fab69c2f18285a1ebf7c2ea4269de
'http://deb.debian.org/debian/pool/main/n/nspr/nspr_4.12-6.debian.tar.xz' nspr_4.12-6.debian.tar.xz 15756 SHA256:02840f8938d7f6d6bd35f60d78ec804ba6318f8f390359e8fa6bb19ccb1060f7
```

Other potentially useful URLs:

- https://sources.debian.net/src/nspr/2:4.12-6/ (for browsing the source)
- https://sources.debian.net/src/nspr/2:4.12-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nspr/2:4.12-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nss=2:3.26.2-1.1+deb9u1`

Binary Packages:

- `libnss3:amd64=2:3.26.2-1.1+deb9u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris nss=2:3.26.2-1.1+deb9u1
'http://deb.debian.org/debian/pool/main/n/nss/nss_3.26.2-1.1+deb9u1.dsc' nss_3.26.2-1.1+deb9u1.dsc 2428 SHA256:4b77f525bb3d67ddec4bf5f108d8fc7873191de997e0c0aec07c494425b089de
'http://deb.debian.org/debian/pool/main/n/nss/nss_3.26.2.orig.tar.gz' nss_3.26.2.orig.tar.gz 7388390 SHA256:13a40a2f97edf5fab3d4c7fdd928e77df36dc539cd8354b6b5d79ab93a131a5a
'http://deb.debian.org/debian/pool/main/n/nss/nss_3.26.2-1.1+deb9u1.debian.tar.xz' nss_3.26.2-1.1+deb9u1.debian.tar.xz 30820 SHA256:f87d64233afcbb25bf9253064a1508c3adf49f01ed6068d4968231d09ff0d87c
```

Other potentially useful URLs:

- https://sources.debian.net/src/nss/2:3.26.2-1.1+deb9u1/ (for browsing the source)
- https://sources.debian.net/src/nss/2:3.26.2-1.1+deb9u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nss/2:3.26.2-1.1+deb9u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openjpeg2=2.1.2-1.1+deb9u3`

Binary Packages:

- `libopenjp2-7:amd64=2.1.2-1.1+deb9u3`

Licenses: (parsed from: `/usr/share/doc/libopenjp2-7/copyright`)

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
$ apt-get source -qq --print-uris openjpeg2=2.1.2-1.1+deb9u3
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.1.2-1.1+deb9u3.dsc' openjpeg2_2.1.2-1.1+deb9u3.dsc 2797 SHA256:dcb5cf6adee12ab0cc23d9a08731df6ee87406a98f623233348580e9f0373f78
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.1.2.orig.tar.gz' openjpeg2_2.1.2.orig.tar.gz 1987071 SHA256:4ce77b6ef538ef090d9bde1d5eeff8b3069ab56c4906f083475517c2c023dfa7
'http://deb.debian.org/debian/pool/main/o/openjpeg2/openjpeg2_2.1.2-1.1+deb9u3.debian.tar.xz' openjpeg2_2.1.2-1.1+deb9u3.debian.tar.xz 25464 SHA256:c168bec05ef60b78e1d219760d6faf67e58f9055cbde770005bd12123c3b0002
```

Other potentially useful URLs:

- https://sources.debian.net/src/openjpeg2/2.1.2-1.1+deb9u3/ (for browsing the source)
- https://sources.debian.net/src/openjpeg2/2.1.2-1.1+deb9u3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openjpeg2/2.1.2-1.1+deb9u3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openssl=1.1.0j-1~deb9u1`

Binary Packages:

- `libssl1.1:amd64=1.1.0j-1~deb9u1`
- `openssl=1.1.0j-1~deb9u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.1.0j-1~deb9u1
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.0j-1~deb9u1.dsc' openssl_1.1.0j-1~deb9u1.dsc 2611 SHA256:3c4f9e2af00c7595218d05d09635746f7edfd13b6c08b6266cd386b195c7889b
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.0j.orig.tar.gz' openssl_1.1.0j.orig.tar.gz 5411919 SHA256:31bec6c203ce1a8e93d5994f4ed304c63ccf07676118b6634edded12ad1b3246
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.0j.orig.tar.gz.asc' openssl_1.1.0j.orig.tar.gz.asc 488 SHA256:e162322dce0b98f92401a48ba5f088ded64ee308a54580ed9edc3edafd85eebf
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.0j-1~deb9u1.debian.tar.xz' openssl_1.1.0j-1~deb9u1.debian.tar.xz 71944 SHA256:737db70af006b984b914ba63ac8cbf012cb0db43df5e31f7dfa95d0b5890910b
```

Other potentially useful URLs:

- https://sources.debian.net/src/openssl/1.1.0j-1~deb9u1/ (for browsing the source)
- https://sources.debian.net/src/openssl/1.1.0j-1~deb9u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openssl/1.1.0j-1~deb9u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `p11-kit=0.23.3-2`

Binary Packages:

- `libp11-kit0:amd64=0.23.3-2`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `ISC`
- `ISC+IBM`
- `permissive-like-automake-output`
- `same-as-rest-of-p11kit`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.23.3-2
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.3-2.dsc' p11-kit_0.23.3-2.dsc 2452 SHA256:fc8e87147d30de8d33e78adb805530d582655999762129b75097a9824679b0cc
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.3.orig.tar.gz' p11-kit_0.23.3.orig.tar.gz 1047441 SHA256:d487f04dba3f9e8256f53034c59c944ca45fd7b8434c095da6a74079644dcd82
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.3.orig.tar.gz.asc' p11-kit_0.23.3.orig.tar.gz.asc 543 SHA256:a9268313ad8e6c3dae5f4cf9006d8a773861e567c98786482304b3cc91883647
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.3-2.debian.tar.xz' p11-kit_0.23.3-2.debian.tar.xz 19784 SHA256:952f55f8c5e2cdc03c8388b59b0bd77bb53eb8f2c2ca2a686cfc91b52100e257
```

Other potentially useful URLs:

- https://sources.debian.net/src/p11-kit/0.23.3-2/ (for browsing the source)
- https://sources.debian.net/src/p11-kit/0.23.3-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/p11-kit/0.23.3-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pam=1.1.8-3.6`

Binary Packages:

- `libpam-modules:amd64=1.1.8-3.6`
- `libpam-modules-bin=1.1.8-3.6`
- `libpam-runtime=1.1.8-3.6`
- `libpam0g:amd64=1.1.8-3.6`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.1.8-3.6
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.8-3.6.dsc' pam_1.1.8-3.6.dsc 2572 SHA256:7bd7a3059c6ea5b97f5ce0460cbe20788f21bc59bd31ef5a28d7968f53373f5f
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.8.orig.tar.gz' pam_1.1.8.orig.tar.gz 1892765 SHA256:4183409a450708a976eca5af561dbf4f0490141a08e86e4a1e649c7c1b094876
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.1.8-3.6.diff.gz' pam_1.1.8-3.6.diff.gz 139492 SHA256:beba99299941c5648ff412d75ebd3407e4d769f5e5ab1fce6a5f2e58c40341ae
```

Other potentially useful URLs:

- https://sources.debian.net/src/pam/1.1.8-3.6/ (for browsing the source)
- https://sources.debian.net/src/pam/1.1.8-3.6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pam/1.1.8-3.6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pcre3=2:8.39-3`

Binary Packages:

- `libpcre3:amd64=2:8.39-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-3
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-3.dsc' pcre3_8.39-3.dsc 2133 SHA256:3180a023c33b5eb7f0a853bec887be867d00a68da8d119d989909e40c6168fd7
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA256:b858099f82483031ee02092711689e7245586ada49e534a06e678b8ea9549e8b
'http://deb.debian.org/debian/pool/main/p/pcre3/pcre3_8.39-3.debian.tar.gz' pcre3_8.39-3.debian.tar.gz 25025 SHA256:a9f0e1a96b6a017965fe69233e267682c289f2cfeb33b46fb78aedcb8cf2c16a
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcre3/2:8.39-3/ (for browsing the source)
- https://sources.debian.net/src/pcre3/2:8.39-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcre3/2:8.39-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `perl=5.24.1-3+deb9u5`

Binary Packages:

- `perl-base=5.24.1-3+deb9u5`

Licenses: (parsed from: `/usr/share/doc/perl-base/copyright`)

- `Artistic`
- `Artistic,`
- `Artistic-2`
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
$ apt-get source -qq --print-uris perl=5.24.1-3+deb9u5
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.24.1-3+deb9u5.dsc' perl_5.24.1-3+deb9u5.dsc 2393 SHA256:d30a446b21afb8f3c0da9bc117244646ef34a05c440a18bcd5c114ee87f8293f
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.24.1.orig.tar.xz' perl_5.24.1.orig.tar.xz 11569284 SHA256:03a77bac4505c270f1890ece75afc7d4b555090b41aa41ea478747e23b2afb3f
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.24.1-3+deb9u5.debian.tar.xz' perl_5.24.1-3+deb9u5.debian.tar.xz 185316 SHA256:fbb78d029b5a9a94e32feba2e360d3628a8a6de90066f90ff22e78d4918aab69
```

Other potentially useful URLs:

- https://sources.debian.net/src/perl/5.24.1-3+deb9u5/ (for browsing the source)
- https://sources.debian.net/src/perl/5.24.1-3+deb9u5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/perl/5.24.1-3+deb9u5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pixman=0.34.0-1`

Binary Packages:

- `libpixman-1-0:amd64=0.34.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pixman=0.34.0-1
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.34.0-1.dsc' pixman_0.34.0-1.dsc 2103 SHA256:157e17c323d461a07f48e570a87228098770fd4388324b2dfcf360bf59ac1e11
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.34.0.orig.tar.gz' pixman_0.34.0.orig.tar.gz 878784 SHA256:21b6b249b51c6800dc9553b65106e1e37d0e25df942c90531d4c3997aa20a88e
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.34.0-1.diff.gz' pixman_0.34.0-1.diff.gz 315394 SHA256:a230def25913d56f9f13e4dbb1014214f84e85fe502c943d560f4335cfc1c5cd
```

Other potentially useful URLs:

- https://sources.debian.net/src/pixman/0.34.0-1/ (for browsing the source)
- https://sources.debian.net/src/pixman/0.34.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pixman/0.34.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `poppler=0.48.0-2+deb9u2`

Binary Packages:

- `libpoppler64:amd64=0.48.0-2+deb9u2`
- `poppler-utils=0.48.0-2+deb9u2`

Licenses: (parsed from: `/usr/share/doc/libpoppler64/copyright`, `/usr/share/doc/poppler-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris poppler=0.48.0-2+deb9u2
'http://deb.debian.org/debian/pool/main/p/poppler/poppler_0.48.0-2+deb9u2.dsc' poppler_0.48.0-2+deb9u2.dsc 3408 SHA256:658eab614c16d776952faf31b3a442f6e2bc28802a8f523fe4e958f6b5976efe
'http://deb.debian.org/debian/pool/main/p/poppler/poppler_0.48.0.orig.tar.xz' poppler_0.48.0.orig.tar.xz 1684164 SHA256:85a003968074c85d8e13bf320ec47cef647b496b56dcff4c790b34e5482fef93
'http://deb.debian.org/debian/pool/main/p/poppler/poppler_0.48.0-2+deb9u2.debian.tar.xz' poppler_0.48.0-2+deb9u2.debian.tar.xz 40808 SHA256:5842d61f5bda84dac0e624ec0aef684b2beab70491e1e0c1c6b8cfd70485997c
```

Other potentially useful URLs:

- https://sources.debian.net/src/poppler/0.48.0-2+deb9u2/ (for browsing the source)
- https://sources.debian.net/src/poppler/0.48.0-2+deb9u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/poppler/0.48.0-2+deb9u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `popt=1.16-10`

Binary Packages:

- `libpopt0:amd64=1.16-10+b2`

Licenses: (parsed from: `/usr/share/doc/libpopt0/copyright`)

- `GPL-2`
- `GPL-2+`
- `X-Consortium`

Source:

```console
$ apt-get source -qq --print-uris popt=1.16-10
'http://deb.debian.org/debian/pool/main/p/popt/popt_1.16-10.dsc' popt_1.16-10.dsc 1800 SHA256:874c8f002ef0f8d0c704cf136af58079983e7dc2646bf4322f6fe9261ddfe4a7
'http://deb.debian.org/debian/pool/main/p/popt/popt_1.16.orig.tar.gz' popt_1.16.orig.tar.gz 702769 SHA256:e728ed296fe9f069a0e005003c3d6b2dde3d9cad453422a10d6558616d304cc8
'http://deb.debian.org/debian/pool/main/p/popt/popt_1.16-10.debian.tar.xz' popt_1.16-10.debian.tar.xz 14136 SHA256:8300cbb47148f59fc6edc2f8ebe227a319b080ed26d17db846d1e346f0614899
```

Other potentially useful URLs:

- https://sources.debian.net/src/popt/1.16-10/ (for browsing the source)
- https://sources.debian.net/src/popt/1.16-10/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/popt/1.16-10/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `readline=7.0-3`

Binary Packages:

- `libreadline7:amd64=7.0-3`
- `readline-common=7.0-3`

Licenses: (parsed from: `/usr/share/doc/libreadline7/copyright`, `/usr/share/doc/readline-common/copyright`)

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

### `dpkg` source package: `rsync=3.1.2-1+deb9u2`

Binary Packages:

- `rsync=3.1.2-1+deb9u2`

Licenses: (parsed from: `/usr/share/doc/rsync/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris rsync=3.1.2-1+deb9u2
'http://deb.debian.org/debian/pool/main/r/rsync/rsync_3.1.2-1+deb9u2.dsc' rsync_3.1.2-1+deb9u2.dsc 1717 SHA256:7ff035929408e160639c0d27c56ea910e561b5858da724ba1e88104855d8b065
'http://deb.debian.org/debian/pool/main/r/rsync/rsync_3.1.2.orig.tar.gz' rsync_3.1.2.orig.tar.gz 892724 SHA256:ecfa62a7fa3c4c18b9eccd8c16eaddee4bd308a76ea50b5c02a5840f09c0a1c2
'http://deb.debian.org/debian/pool/main/r/rsync/rsync_3.1.2-1+deb9u2.debian.tar.xz' rsync_3.1.2-1+deb9u2.debian.tar.xz 31156 SHA256:9c9b13658cf79ba0171337574365837f0b40696f0e615f794dbfecc2c562fc84
```

Other potentially useful URLs:

- https://sources.debian.net/src/rsync/3.1.2-1+deb9u2/ (for browsing the source)
- https://sources.debian.net/src/rsync/3.1.2-1+deb9u2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/rsync/3.1.2-1+deb9u2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sed=4.4-1`

Binary Packages:

- `sed=4.4-1`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris sed=4.4-1
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.4-1.dsc' sed_4.4-1.dsc 2048 SHA256:bb2a11d04f3aeba73cc994e097219fde8c5e0fd1bcf42e0ecc8a4f2282c00fc9
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.4.orig.tar.xz' sed_4.4.orig.tar.xz 1181664 SHA256:cbd6ebc5aaf080ed60d0162d7f6aeae58211a1ee9ba9bb25623daa6cd942683b
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.4-1.debian.tar.xz' sed_4.4-1.debian.tar.xz 59552 SHA256:56dd1f91c5e33b419f38cde93afc90d6fad9064ef4594a877424a0ab2ac9a4bf
```

Other potentially useful URLs:

- https://sources.debian.net/src/sed/4.4-1/ (for browsing the source)
- https://sources.debian.net/src/sed/4.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sed/4.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sensible-utils=0.0.9+deb9u1`

Binary Packages:

- `sensible-utils=0.0.9+deb9u1`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.9+deb9u1
'http://deb.debian.org/debian/pool/main/s/sensible-utils/sensible-utils_0.0.9+deb9u1.dsc' sensible-utils_0.0.9+deb9u1.dsc 1590 SHA256:93641a0b5bb3b24b6f01daaf6d99cc1221678b150f19fc8a5c603cacdaecd6e2
'http://deb.debian.org/debian/pool/main/s/sensible-utils/sensible-utils_0.0.9+deb9u1.tar.xz' sensible-utils_0.0.9+deb9u1.tar.xz 53564 SHA256:103a4666ddad53452b849d20c2509a6356d9aa6a60c515df9983bd0ca897a3db
```

Other potentially useful URLs:

- https://sources.debian.net/src/sensible-utils/0.0.9+deb9u1/ (for browsing the source)
- https://sources.debian.net/src/sensible-utils/0.0.9+deb9u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sensible-utils/0.0.9+deb9u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `shadow=1:4.4-4.1`

Binary Packages:

- `login=1:4.4-4.1`
- `passwd=1:4.4-4.1`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.4-4.1
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.4-4.1.dsc' shadow_4.4-4.1.dsc 2453 SHA256:6760f8ee90562ed02cb3902b81167e6153923a979c61dc06671426321e575f74
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.4.orig.tar.gz' shadow_4.4.orig.tar.gz 3003036 SHA256:1323e7e932836e03dbfa441f7eeb349ede2c92d62b788ade0732411fd516be3d
'http://deb.debian.org/debian/pool/main/s/shadow/shadow_4.4-4.1.debian.tar.xz' shadow_4.4-4.1.debian.tar.xz 600560 SHA256:42610e666c762b88b9e60ea878b522b0639240dc9a74fe627b1ac497dd3d7424
```

Other potentially useful URLs:

- https://sources.debian.net/src/shadow/1:4.4-4.1/ (for browsing the source)
- https://sources.debian.net/src/shadow/1:4.4-4.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/shadow/1:4.4-4.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `shared-mime-info=1.8-1+deb9u1`

Binary Packages:

- `shared-mime-info=1.8-1+deb9u1`

Licenses: (parsed from: `/usr/share/doc/shared-mime-info/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris shared-mime-info=1.8-1+deb9u1
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_1.8-1+deb9u1.dsc' shared-mime-info_1.8-1+deb9u1.dsc 2266 SHA256:36646ba27a24b8a312a49d41b58831c4352c2723fd4f14f9acf6762f3c1e3a19
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_1.8.orig.tar.xz' shared-mime-info_1.8.orig.tar.xz 589444 SHA256:2af55ef1a0319805b74ab40d331a3962c905477d76c086f49e34dc96363589e9
'http://deb.debian.org/debian/pool/main/s/shared-mime-info/shared-mime-info_1.8-1+deb9u1.debian.tar.xz' shared-mime-info_1.8-1+deb9u1.debian.tar.xz 10384 SHA256:60496e642e6dea89268e1cadaff1cda885351d75d32332fa1cf2d7f7110def20
```

Other potentially useful URLs:

- https://sources.debian.net/src/shared-mime-info/1.8-1+deb9u1/ (for browsing the source)
- https://sources.debian.net/src/shared-mime-info/1.8-1+deb9u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/shared-mime-info/1.8-1+deb9u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sqlite3=3.16.2-5+deb9u1`

Binary Packages:

- `libsqlite3-0:amd64=3.16.2-5+deb9u1`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.16.2-5+deb9u1
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.16.2-5+deb9u1.dsc' sqlite3_3.16.2-5+deb9u1.dsc 2538 SHA256:aafd7c33e9091a0c8703a9b2dbfaf1b1592d8fc1df18bf92d3bfd2ffc350cc96
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.16.2.orig-www.tar.xz' sqlite3_3.16.2.orig-www.tar.xz 3383968 SHA256:d5dd3de405c55c63c9f99fbfcf3defc91a54a81b5656c510cd46544aaed134fa
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.16.2.orig.tar.xz' sqlite3_3.16.2.orig.tar.xz 5634120 SHA256:bf7b1e8ea7577253b7f8a8287d111d542d1792cf1768edc66541ac851ff92453
'http://deb.debian.org/debian/pool/main/s/sqlite3/sqlite3_3.16.2-5+deb9u1.debian.tar.xz' sqlite3_3.16.2-5+deb9u1.debian.tar.xz 22128 SHA256:66358aca4f46ead86ba909bc5899bd312c10c46e620ad017120efe3b8714d44e
```

Other potentially useful URLs:

- https://sources.debian.net/src/sqlite3/3.16.2-5+deb9u1/ (for browsing the source)
- https://sources.debian.net/src/sqlite3/3.16.2-5+deb9u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sqlite3/3.16.2-5+deb9u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `systemd=232-25+deb9u11`

Binary Packages:

- `libsystemd0:amd64=232-25+deb9u11`
- `libudev1:amd64=232-25+deb9u11`

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
$ apt-get source -qq --print-uris systemd=232-25+deb9u11
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_232-25+deb9u11.dsc' systemd_232-25+deb9u11.dsc 4801 SHA256:afc41f50bc973f3d483aee66c9e6d9c66a0974bd77ed5daf164e3c8d57e03222
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_232.orig.tar.gz' systemd_232.orig.tar.gz 4529048 SHA256:1172c7c7d5d72fbded53186e7599d5272231f04cc8b72f9a0fb2c5c20dfc4880
'http://deb.debian.org/debian/pool/main/s/systemd/systemd_232-25+deb9u11.debian.tar.xz' systemd_232-25+deb9u11.debian.tar.xz 221496 SHA256:0e3f326944a8f4c348a648c783d145fd616c9e42186c4efb7a20f737040a97bb
```

Other potentially useful URLs:

- https://sources.debian.net/src/systemd/232-25+deb9u11/ (for browsing the source)
- https://sources.debian.net/src/systemd/232-25+deb9u11/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/systemd/232-25+deb9u11/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `sysvinit=2.88dsf-59.9`

Binary Packages:

- `sysvinit-utils=2.88dsf-59.9`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.88dsf-59.9
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf-59.9.dsc' sysvinit_2.88dsf-59.9.dsc 2123 SHA256:a943edeac16668d3e55583daa4033ad46469e84ffad014e0e2007d9c3167e63d
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf.orig.tar.gz' sysvinit_2.88dsf.orig.tar.gz 125330 SHA256:b016f937958d2809a020d407e1287bdc09abf1d44efaa96530e2ea57f544f4e8
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.88dsf-59.9.debian.tar.xz' sysvinit_2.88dsf-59.9.debian.tar.xz 132584 SHA256:fbd5c085680d896ec6ee1c5a55ae2d8a5a6b9fd5a7ec1e13010dace24fdbcd5c
```

Other potentially useful URLs:

- https://sources.debian.net/src/sysvinit/2.88dsf-59.9/ (for browsing the source)
- https://sources.debian.net/src/sysvinit/2.88dsf-59.9/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sysvinit/2.88dsf-59.9/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tar=1.29b-1.1`

Binary Packages:

- `tar=1.29b-1.1`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.29b-1.1
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.29b-1.1.dsc' tar_1.29b-1.1.dsc 2057 SHA256:9474ed422017e23e8208785c071b9f7765d73d704b9bb19da22699c6581d73ef
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.29b.orig.tar.xz' tar_1.29b.orig.tar.xz 1822008 SHA256:6a59706ebee384a6cd2fb3ee1dbfbfc20c5c66c7efd7cedb28edc054fca8ba00
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.29b-1.1.debian.tar.xz' tar_1.29b-1.1.debian.tar.xz 28484 SHA256:380f80af0e87446796f05ba384c5d130ea2ad5978b8cfdcf315503966333ebb9
```

Other potentially useful URLs:

- https://sources.debian.net/src/tar/1.29b-1.1/ (for browsing the source)
- https://sources.debian.net/src/tar/1.29b-1.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tar/1.29b-1.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tiff=4.0.8-2+deb9u4`

Binary Packages:

- `libtiff5:amd64=4.0.8-2+deb9u4`

Licenses: (parsed from: `/usr/share/doc/libtiff5/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.0.8-2+deb9u4
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.0.8-2+deb9u4.dsc' tiff_4.0.8-2+deb9u4.dsc 2185 SHA256:7f2a8ae92ea3ea871eb9baca399e589d256163e9689a64ac41ac64253c84b0b7
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.0.8.orig.tar.gz' tiff_4.0.8.orig.tar.gz 2065574 SHA256:59d7a5a8ccd92059913f246877db95a2918e6c04fb9d43fd74e5c3390dac2910
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.0.8-2+deb9u4.debian.tar.xz' tiff_4.0.8-2+deb9u4.debian.tar.xz 32508 SHA256:2096e012af91b8503e656212409c438ad2105fd42c22e8f811fe5ef25810342d
```

Other potentially useful URLs:

- https://sources.debian.net/src/tiff/4.0.8-2+deb9u4/ (for browsing the source)
- https://sources.debian.net/src/tiff/4.0.8-2+deb9u4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tiff/4.0.8-2+deb9u4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tzdata=2019a-0+deb9u1`

Binary Packages:

- `tzdata=2019a-0+deb9u1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tzdata=2019a-0+deb9u1
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2019a-0+deb9u1.dsc' tzdata_2019a-0+deb9u1.dsc 2029 SHA256:a4a40761510436e037bead94747441ef871987607737d47d703f73bbfbced796
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2019a.orig.tar.gz' tzdata_2019a.orig.tar.gz 378961 SHA256:90366ddf4aa03e37a16cd49255af77f801822310b213f195e2206ead48c59772
'http://deb.debian.org/debian/pool/main/t/tzdata/tzdata_2019a-0+deb9u1.debian.tar.xz' tzdata_2019a-0+deb9u1.debian.tar.xz 101712 SHA256:b0e0a67122cb464901afa4a910d21da0bca86ef799875e54ba4cf3d5c54a5c92
```

Other potentially useful URLs:

- https://sources.debian.net/src/tzdata/2019a-0+deb9u1/ (for browsing the source)
- https://sources.debian.net/src/tzdata/2019a-0+deb9u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tzdata/2019a-0+deb9u1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `ustr=1.0.4-6`

Binary Packages:

- `libustr-1.0-1:amd64=1.0.4-6`

Licenses: (parsed from: `/usr/share/doc/libustr-1.0-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris ustr=1.0.4-6
'http://deb.debian.org/debian/pool/main/u/ustr/ustr_1.0.4-6.dsc' ustr_1.0.4-6.dsc 2029 SHA256:87a854fc03dc059d5d4f135dfd36353c8c09f88a6eb216c6dcea8adadbe6ba59
'http://deb.debian.org/debian/pool/main/u/ustr/ustr_1.0.4.orig.tar.gz' ustr_1.0.4.orig.tar.gz 301345 SHA256:4d293b6b9d9fe51d58441f4b09b1f0005fcad8256ae8048587789bf5dbefb62e
'http://deb.debian.org/debian/pool/main/u/ustr/ustr_1.0.4-6.debian.tar.xz' ustr_1.0.4-6.debian.tar.xz 25608 SHA256:75aa6be2c70eba632ac63078e55ecb4b5a45e6624501a8ed6d81b9a2014d149e
```

Other potentially useful URLs:

- https://sources.debian.net/src/ustr/1.0.4-6/ (for browsing the source)
- https://sources.debian.net/src/ustr/1.0.4-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ustr/1.0.4-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `util-linux=2.29.2-1+deb9u1`

Binary Packages:

- `bsdutils=1:2.29.2-1+deb9u1`
- `libblkid1:amd64=2.29.2-1+deb9u1`
- `libfdisk1:amd64=2.29.2-1+deb9u1`
- `libmount1:amd64=2.29.2-1+deb9u1`
- `libsmartcols1:amd64=2.29.2-1+deb9u1`
- `libuuid1:amd64=2.29.2-1+deb9u1`
- `mount=2.29.2-1+deb9u1`
- `util-linux=2.29.2-1+deb9u1`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libfdisk1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`)

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
$ apt-get source -qq --print-uris util-linux=2.29.2-1+deb9u1
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.29.2-1+deb9u1.dsc' util-linux_2.29.2-1+deb9u1.dsc 4101 SHA256:f84985e3b01d7758bf835484a5861d687ffee07778dadab5adc10a7e312da950
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.29.2.orig.tar.xz' util-linux_2.29.2.orig.tar.xz 4277668 SHA256:accea4d678209f97f634f40a93b7e9fcad5915d1f4749f6c47bee6bf110fe8e3
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.29.2-1+deb9u1.debian.tar.xz' util-linux_2.29.2-1+deb9u1.debian.tar.xz 74280 SHA256:33867c063f828a1937c1dd4797b3cd977a2e7da31eb1227c396f7dbf06dde3a6
```

Other potentially useful URLs:

- https://sources.debian.net/src/util-linux/2.29.2-1+deb9u1/ (for browsing the source)
- https://sources.debian.net/src/util-linux/2.29.2-1+deb9u1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/util-linux/2.29.2-1+deb9u1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `wv=1.2.9-4.2`

Binary Packages:

- `libwv-1.2-4:amd64=1.2.9-4.2+b2`
- `wv=1.2.9-4.2+b2`

Licenses: (parsed from: `/usr/share/doc/libwv-1.2-4/copyright`, `/usr/share/doc/wv/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris wv=1.2.9-4.2
'http://deb.debian.org/debian/pool/main/w/wv/wv_1.2.9-4.2.dsc' wv_1.2.9-4.2.dsc 1996 SHA256:06b23c0e817c54c0357a95e43bc95154d24a3753a7e2127212b130a1c1fd0528
'http://deb.debian.org/debian/pool/main/w/wv/wv_1.2.9.orig.tar.gz' wv_1.2.9.orig.tar.gz 616256 SHA256:4c730d3b325c0785450dd3a043eeb53e1518598c4f41f155558385dd2635c19d
'http://deb.debian.org/debian/pool/main/w/wv/wv_1.2.9-4.2.debian.tar.xz' wv_1.2.9-4.2.debian.tar.xz 12956 SHA256:ed6b4b8684aee3491200f77f65c71e9bc87e0b6fdfce8d31672d7076e23d0c48
```

Other potentially useful URLs:

- https://sources.debian.net/src/wv/1.2.9-4.2/ (for browsing the source)
- https://sources.debian.net/src/wv/1.2.9-4.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/wv/1.2.9-4.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xz-utils=5.2.2-1.2`

Binary Packages:

- `liblzma5:amd64=5.2.2-1.2+b1`

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
$ apt-get source -qq --print-uris xz-utils=5.2.2-1.2
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2-1.2.dsc' xz-utils_5.2.2-1.2.dsc 2550 SHA256:13c8d8d0c243af78dc89b6e2cd670c8d8a2522379e1fcd196957c95d988d5961
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz' xz-utils_5.2.2.orig.tar.xz 1016404 SHA256:f341b1906ebcdde291dd619399ae944600edc9193619dd0c0110a5f05bfcc89e
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz.asc' xz-utils_5.2.2.orig.tar.xz.asc 543 SHA256:2cc0575556e1331b3f468e6e7dca5969ce86efcc315d62672279b4e68b2e449f
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.2-1.2.debian.tar.xz' xz-utils_5.2.2-1.2.debian.tar.xz 108632 SHA256:231c08d5c2c4e5c8ef5d6d58cac91aaeb2e4fcddc35e1ed3c69d730a2375c948
```

Other potentially useful URLs:

- https://sources.debian.net/src/xz-utils/5.2.2-1.2/ (for browsing the source)
- https://sources.debian.net/src/xz-utils/5.2.2-1.2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xz-utils/5.2.2-1.2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `zlib=1:1.2.8.dfsg-5`

Binary Packages:

- `zlib1g:amd64=1:1.2.8.dfsg-5`

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
