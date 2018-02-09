# `ros:lunar-ros-core`

## Docker Metadata

- Image ID: `sha256:b52d53b25838b60b75160d301531a7e4936f1f49303f50dc80f0899cbec040aa`
- Created: `2018-01-25T21:15:39.830686057Z`
- Virtual Size: ~ 926.22 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/ros_entrypoint.sh"]`
- Command: `["bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `LANG=C.UTF-8`
  - `LC_ALL=C.UTF-8`
  - `ROS_DISTRO=lunar`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.2.52-3`

Binary Packages:

- `libacl1:amd64=2.2.52-3`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.2.52-3
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52-3.dsc' acl_2.2.52-3.dsc 2025 SHA256:82e344b9ab176559a85630b74ee5a68d678d7f24b6fe8139f2fd9fcf38a48095
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52.orig.tar.bz2' acl_2.2.52.orig.tar.bz2 312128 SHA256:59d05b38af76baf2eddccbf08c7968a17451cc785ffecc657fcb46ce32b2631d
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52-3.debian.tar.xz' acl_2.2.52-3.debian.tar.xz 8740 SHA256:fc3f1178d18288993fc4ce4853b7f9dcdf0bd1fd26e4f69349a4e4e5916d1fa8
```

### `dpkg` source package: `adduser=3.113+nmu3ubuntu4`

Binary Packages:

- `adduser=3.113+nmu3ubuntu4`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.113+nmu3ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.113+nmu3ubuntu4.dsc' adduser_3.113+nmu3ubuntu4.dsc 1856 SHA256:323f327b25e1fbeba38278eae5813be6238a7c5959e7c10af041999408440247
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.113+nmu3ubuntu4.tar.gz' adduser_3.113+nmu3ubuntu4.tar.gz 367980 SHA256:6e4d44c8388b9ba85fc175fa4a48ed43bf6500913c2c631fda0e4419ae63c65a
```

### `dpkg` source package: `apparmor=2.10.95-0ubuntu2.7`

Binary Packages:

- `libapparmor1:amd64=2.10.95-0ubuntu2.7`

Licenses: (parsed from: `/usr/share/doc/libapparmor1/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `apr-util=1.5.4-1build1`

Binary Packages:

- `libaprutil1:amd64=1.5.4-1build1`
- `libaprutil1-dev=1.5.4-1build1`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`, `/usr/share/doc/libaprutil1-dev/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.5.4-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.5.4-1build1.dsc' apr-util_1.5.4-1build1.dsc 2642 SHA256:f464c7a9fb9293c117e80d9669450ca61191ad456cf40dd74777caf06e5f18db
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.5.4.orig.tar.bz2' apr-util_1.5.4.orig.tar.bz2 694427 SHA256:a6cf327189ca0df2fb9d5633d7326c460fe2b61684745fd7963e79a6dd0dc82e
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.5.4-1build1.debian.tar.xz' apr-util_1.5.4-1build1.debian.tar.xz 16564 SHA256:562bd9b543a16edf8218deda292c606aabe5265a369cf7b2559f13c1cc300e3c
```

### `dpkg` source package: `apr=1.5.2-3`

Binary Packages:

- `libapr1:amd64=1.5.2-3`
- `libapr1-dev=1.5.2-3`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`, `/usr/share/doc/libapr1-dev/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.5.2-3
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.5.2-3.dsc' apr_1.5.2-3.dsc 2090 SHA256:2344484f62544881344defbb1076ca6cce51f930f1a5abd359e65eafb0e169cb
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.5.2.orig.tar.bz2' apr_1.5.2.orig.tar.bz2 826885 SHA256:7d03ed29c22a7152be45b8e50431063736df9e1daa1ddf93f6a547ba7a28f67a
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.5.2-3.debian.tar.xz' apr_1.5.2-3.debian.tar.xz 18572 SHA256:442ffb9a7225cf405fe7a2b4a4624543fcb93e6f14cccf22acd57916cfa8348d
```

### `dpkg` source package: `apt=1.2.24`

Binary Packages:

- `apt=1.2.24`
- `libapt-pkg5.0:amd64=1.2.24`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=1.2.24
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.2.24.dsc' apt_1.2.24.dsc 2392 SHA256:0032051ffe7a495c6c7fed449c3f465d0cb05aaeb53667ec7834c7566cef1ccd
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.2.24.tar.xz' apt_1.2.24.tar.xz 2059044 SHA256:fa1311a9ce00e72379a0a3bc6d240ba30c0968cfbbb3472859e50b99e24e9598
```

### `dpkg` source package: `attr=1:2.4.47-2`

Binary Packages:

- `libattr1:amd64=1:2.4.47-2`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.4.47-2
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-2.dsc' attr_2.4.47-2.dsc 2027 SHA256:ee842d6d62d473acf02b494c432cf33128fa46455a09d3172c77c252449fa1a6
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47.orig.tar.bz2' attr_2.4.47.orig.tar.bz2 281877 SHA256:6c1208035757f5ce9b516402dd45b8299a53ae4d69ad2c352116f9cb8d7bc274
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-2.debian.tar.xz' attr_2.4.47-2.debian.tar.xz 8096 SHA256:f65909562def601b1556393f5656032c058dc574ba622414ad3eb80c7b05a42a
```

### `dpkg` source package: `audit=1:2.4.5-1ubuntu2`

Binary Packages:

- `libaudit-common=1:2.4.5-1ubuntu2`
- `libaudit1:amd64=1:2.4.5-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.4.5-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.4.5-1ubuntu2.dsc' audit_2.4.5-1ubuntu2.dsc 2745 SHA256:a2ea55542c820c1de533878dc46165ecf76039b9e43b6641fb3ba5cb64672972
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.4.5.orig.tar.gz' audit_2.4.5.orig.tar.gz 1030113 SHA256:e73cdd3fc779b122523acaabcda3e27ce70eec22ad4eb526898be9be5b2838e0
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.4.5-1ubuntu2.debian.tar.xz' audit_2.4.5-1ubuntu2.debian.tar.xz 18752 SHA256:45a0df6d08245f3cf63db3280f61eeb4fb613ab8c90567f9d288ac60c714648e
```

### `dpkg` source package: `autotools-dev=20150820.1`

Binary Packages:

- `autotools-dev=20150820.1`

Licenses: (parsed from: `/usr/share/doc/autotools-dev/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris autotools-dev=20150820.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20150820.1.dsc' autotools-dev_20150820.1.dsc 1641 SHA256:7f5e21caa39e5e40fc4d1560b288a3b785810daead1593567a491221716a5136
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20150820.1.tar.xz' autotools-dev_20150820.1.tar.xz 61792 SHA256:fa40ff0ad94a8790357324f22a64bd8673383d5d56687dbebd3df5afe046c81f
```

### `dpkg` source package: `base-files=9.4ubuntu4.5`

Binary Packages:

- `base-files=9.4ubuntu4.5`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=9.4ubuntu4.5
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_9.4ubuntu4.5.dsc' base-files_9.4ubuntu4.5.dsc 1539 SHA256:168184a051640e38ec02ff4fa7033f724f27be48e3eb92c04fa24b6cdb520fdd
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_9.4ubuntu4.5.tar.xz' base-files_9.4ubuntu4.5.tar.xz 62980 SHA256:4cbd2cdb0373df23a31f6daa065f348c18b9e95c76eb4fc469f4df3ab8e46738
```

### `dpkg` source package: `base-passwd=3.5.39`

Binary Packages:

- `base-passwd=3.5.39`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.39
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.39.dsc' base-passwd_3.5.39.dsc 1720 SHA256:cfb464663fd23f5b64b7fdeb8860a754b28ee77b346bf2a362c36ceccb7a65ea
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.39.tar.xz' base-passwd_3.5.39.tar.xz 51560 SHA256:d827ce2d7b9b4b572527b2071f0e1354840a14c3a43a5081bcb31de400112803
```

### `dpkg` source package: `bash=4.3-14ubuntu1.2`

Binary Packages:

- `bash=4.3-14ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=4.3-14ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.3-14ubuntu1.2.dsc' bash_4.3-14ubuntu1.2.dsc 2309 SHA256:859994a2e6bda95ac88478e70af6aaa4a489c96e1ff6ee245d63f7baacb6fdff
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.3.orig.tar.gz' bash_4.3.orig.tar.gz 7516231 SHA256:b2fe79ddf9e7abdb4695e3070afa866d2a94a58d1cc9d731585330c753815491
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.3-14ubuntu1.2.debian.tar.xz' bash_4.3-14ubuntu1.2.debian.tar.xz 93220 SHA256:5a48a09909595cf4f88634ff54bf3bde0eaf9cfc980fd2e3637c3406d2a4d14d
```

### `dpkg` source package: `binfmt-support=2.1.6-1`

Binary Packages:

- `binfmt-support=2.1.6-1`

Licenses: (parsed from: `/usr/share/doc/binfmt-support/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris binfmt-support=2.1.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/b/binfmt-support/binfmt-support_2.1.6-1.dsc' binfmt-support_2.1.6-1.dsc 2019 SHA256:e6af8a4ded2fe7f0d283d82b83682aabb46c13e39e9881859e7d4cd5e915cc0d
'http://archive.ubuntu.com/ubuntu/pool/main/b/binfmt-support/binfmt-support_2.1.6.orig.tar.gz' binfmt-support_2.1.6.orig.tar.gz 687013 SHA256:0fa539e48fecee30bf8dc45b7d592db23ec1b4550bd2ed21086b50d7f1e216a8
'http://archive.ubuntu.com/ubuntu/pool/main/b/binfmt-support/binfmt-support_2.1.6-1.debian.tar.xz' binfmt-support_2.1.6-1.debian.tar.xz 202852 SHA256:17a00cfc0e2b4c71890d4aae6d4e67f606ad1531d78afd6ff6cbd54970d14718
```

### `dpkg` source package: `binutils=2.26.1-1ubuntu1~16.04.6`

Binary Packages:

- `binutils=2.26.1-1ubuntu1~16.04.6`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.26.1-1ubuntu1~16.04.6
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.26.1-1ubuntu1~16.04.6.dsc' binutils_2.26.1-1ubuntu1~16.04.6.dsc 4046 SHA256:eff6ef396b4beb6228973c9019dc7c17f340c82daf984b3af4a94b8793806764
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.26.1.orig.tar.gz' binutils_2.26.1.orig.tar.gz 34868933 SHA256:dd9c3e37c266e4fefba68e444e2a00538b3c902dd31bf4912d90dca6d830a2a1
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.26.1-1ubuntu1~16.04.6.diff.gz' binutils_2.26.1-1ubuntu1~16.04.6.diff.gz 237840 SHA256:2810d1767117fb41d6b572c4cf7d30eaf5d4c24a3219163fd4dcba3524c710eb
```

### `dpkg` source package: `boost-defaults=1.58.0.1ubuntu1`

Binary Packages:

- `libboost-all-dev=1.58.0.1ubuntu1`
- `libboost-atomic-dev:amd64=1.58.0.1ubuntu1`
- `libboost-chrono-dev:amd64=1.58.0.1ubuntu1`
- `libboost-context-dev:amd64=1.58.0.1ubuntu1`
- `libboost-coroutine-dev:amd64=1.58.0.1ubuntu1`
- `libboost-date-time-dev:amd64=1.58.0.1ubuntu1`
- `libboost-dev:amd64=1.58.0.1ubuntu1`
- `libboost-exception-dev:amd64=1.58.0.1ubuntu1`
- `libboost-filesystem-dev:amd64=1.58.0.1ubuntu1`
- `libboost-graph-dev:amd64=1.58.0.1ubuntu1`
- `libboost-graph-parallel-dev=1.58.0.1ubuntu1`
- `libboost-iostreams-dev:amd64=1.58.0.1ubuntu1`
- `libboost-locale-dev:amd64=1.58.0.1ubuntu1`
- `libboost-log-dev=1.58.0.1ubuntu1`
- `libboost-math-dev:amd64=1.58.0.1ubuntu1`
- `libboost-mpi-dev=1.58.0.1ubuntu1`
- `libboost-mpi-python-dev=1.58.0.1ubuntu1`
- `libboost-program-options-dev:amd64=1.58.0.1ubuntu1`
- `libboost-python-dev=1.58.0.1ubuntu1`
- `libboost-random-dev:amd64=1.58.0.1ubuntu1`
- `libboost-regex-dev:amd64=1.58.0.1ubuntu1`
- `libboost-serialization-dev:amd64=1.58.0.1ubuntu1`
- `libboost-signals-dev:amd64=1.58.0.1ubuntu1`
- `libboost-system-dev:amd64=1.58.0.1ubuntu1`
- `libboost-test-dev:amd64=1.58.0.1ubuntu1`
- `libboost-thread-dev:amd64=1.58.0.1ubuntu1`
- `libboost-timer-dev:amd64=1.58.0.1ubuntu1`
- `libboost-tools-dev=1.58.0.1ubuntu1`
- `libboost-wave-dev:amd64=1.58.0.1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris boost-defaults=1.58.0.1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost-defaults/boost-defaults_1.58.0.1ubuntu1.dsc' boost-defaults_1.58.0.1ubuntu1.dsc 3502 SHA256:b54fa784ab7c95c4b52a796c1caa503be2dc9b3460084d12e5a23eebb325b0f0
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost-defaults/boost-defaults_1.58.0.1ubuntu1.tar.gz' boost-defaults_1.58.0.1ubuntu1.tar.gz 10619 SHA256:60e743d2ec613928cfc9f514afe0e10da82c59c6d3546f2063ad8e388e2fc959
```

### `dpkg` source package: `boost1.58=1.58.0+dfsg-5ubuntu3.1`

Binary Packages:

- `libboost-atomic1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-atomic1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-chrono1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-chrono1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-context1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-context1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-coroutine1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-coroutine1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-date-time1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-date-time1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-exception1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-filesystem1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-filesystem1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-graph-parallel1.58-dev=1.58.0+dfsg-5ubuntu3.1`
- `libboost-graph-parallel1.58.0=1.58.0+dfsg-5ubuntu3.1`
- `libboost-graph1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-graph1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-iostreams1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-iostreams1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-locale1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-locale1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-log1.58-dev=1.58.0+dfsg-5ubuntu3.1`
- `libboost-log1.58.0=1.58.0+dfsg-5ubuntu3.1`
- `libboost-math1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-math1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-mpi-python1.58-dev=1.58.0+dfsg-5ubuntu3.1`
- `libboost-mpi-python1.58.0=1.58.0+dfsg-5ubuntu3.1`
- `libboost-mpi1.58-dev=1.58.0+dfsg-5ubuntu3.1`
- `libboost-mpi1.58.0=1.58.0+dfsg-5ubuntu3.1`
- `libboost-program-options1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-program-options1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-python1.58-dev=1.58.0+dfsg-5ubuntu3.1`
- `libboost-python1.58.0=1.58.0+dfsg-5ubuntu3.1`
- `libboost-random1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-random1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-regex1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-regex1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-serialization1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-serialization1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-signals1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-signals1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-system1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-system1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-test1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-test1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-thread1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-thread1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-timer1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-timer1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-wave1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost-wave1.58.0:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost1.58-dev:amd64=1.58.0+dfsg-5ubuntu3.1`
- `libboost1.58-tools-dev=1.58.0+dfsg-5ubuntu3.1`

Licenses: (parsed from: `/usr/share/doc/libboost-atomic1.58-dev/copyright`, `/usr/share/doc/libboost-atomic1.58.0/copyright`, `/usr/share/doc/libboost-chrono1.58-dev/copyright`, `/usr/share/doc/libboost-chrono1.58.0/copyright`, `/usr/share/doc/libboost-context1.58-dev/copyright`, `/usr/share/doc/libboost-context1.58.0/copyright`, `/usr/share/doc/libboost-coroutine1.58-dev/copyright`, `/usr/share/doc/libboost-coroutine1.58.0/copyright`, `/usr/share/doc/libboost-date-time1.58-dev/copyright`, `/usr/share/doc/libboost-date-time1.58.0/copyright`, `/usr/share/doc/libboost-exception1.58-dev/copyright`, `/usr/share/doc/libboost-filesystem1.58-dev/copyright`, `/usr/share/doc/libboost-filesystem1.58.0/copyright`, `/usr/share/doc/libboost-graph-parallel1.58-dev/copyright`, `/usr/share/doc/libboost-graph-parallel1.58.0/copyright`, `/usr/share/doc/libboost-graph1.58-dev/copyright`, `/usr/share/doc/libboost-graph1.58.0/copyright`, `/usr/share/doc/libboost-iostreams1.58-dev/copyright`, `/usr/share/doc/libboost-iostreams1.58.0/copyright`, `/usr/share/doc/libboost-locale1.58-dev/copyright`, `/usr/share/doc/libboost-locale1.58.0/copyright`, `/usr/share/doc/libboost-log1.58-dev/copyright`, `/usr/share/doc/libboost-log1.58.0/copyright`, `/usr/share/doc/libboost-math1.58-dev/copyright`, `/usr/share/doc/libboost-math1.58.0/copyright`, `/usr/share/doc/libboost-mpi-python1.58-dev/copyright`, `/usr/share/doc/libboost-mpi-python1.58.0/copyright`, `/usr/share/doc/libboost-mpi1.58-dev/copyright`, `/usr/share/doc/libboost-mpi1.58.0/copyright`, `/usr/share/doc/libboost-program-options1.58-dev/copyright`, `/usr/share/doc/libboost-program-options1.58.0/copyright`, `/usr/share/doc/libboost-python1.58-dev/copyright`, `/usr/share/doc/libboost-python1.58.0/copyright`, `/usr/share/doc/libboost-random1.58-dev/copyright`, `/usr/share/doc/libboost-random1.58.0/copyright`, `/usr/share/doc/libboost-regex1.58-dev/copyright`, `/usr/share/doc/libboost-regex1.58.0/copyright`, `/usr/share/doc/libboost-serialization1.58-dev/copyright`, `/usr/share/doc/libboost-serialization1.58.0/copyright`, `/usr/share/doc/libboost-signals1.58-dev/copyright`, `/usr/share/doc/libboost-signals1.58.0/copyright`, `/usr/share/doc/libboost-system1.58-dev/copyright`, `/usr/share/doc/libboost-system1.58.0/copyright`, `/usr/share/doc/libboost-test1.58-dev/copyright`, `/usr/share/doc/libboost-test1.58.0/copyright`, `/usr/share/doc/libboost-thread1.58-dev/copyright`, `/usr/share/doc/libboost-thread1.58.0/copyright`, `/usr/share/doc/libboost-timer1.58-dev/copyright`, `/usr/share/doc/libboost-timer1.58.0/copyright`, `/usr/share/doc/libboost-wave1.58-dev/copyright`, `/usr/share/doc/libboost-wave1.58.0/copyright`, `/usr/share/doc/libboost1.58-dev/copyright`, `/usr/share/doc/libboost1.58-tools-dev/copyright`)

- `Boost`

Source:

```console
$ apt-get source -qq --print-uris boost1.58=1.58.0+dfsg-5ubuntu3.1
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.58/boost1.58_1.58.0+dfsg-5ubuntu3.1.dsc' boost1.58_1.58.0+dfsg-5ubuntu3.1.dsc 6701 SHA256:b0553ea99b821a5e3eeaa9a986de6d3dbda8472a15113056d4943361aedd2c23
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.58/boost1.58_1.58.0+dfsg.orig.tar.gz' boost1.58_1.58.0+dfsg.orig.tar.gz 82693055 SHA256:964372735158eabb748db740649e0310213cd9c1b742175fa0062f5e350e4c28
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.58/boost1.58_1.58.0+dfsg-5ubuntu3.1.debian.tar.xz' boost1.58_1.58.0+dfsg-5ubuntu3.1.debian.tar.xz 158824 SHA256:8e25d5bc027fb223a289bf31874157ebab3c690850e6c672b954a26ec1f02dd7
```

### `dpkg` source package: `build-essential=12.1ubuntu2`

Binary Packages:

- `build-essential=12.1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/build-essential/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris build-essential=12.1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/b/build-essential/build-essential_12.1ubuntu2.dsc' build-essential_12.1ubuntu2.dsc 2034 SHA256:c8a82bee0fffde9e74b3a06167bfa42f0d9c3b17b042878062256e70b699b43b
'http://archive.ubuntu.com/ubuntu/pool/main/b/build-essential/build-essential_12.1ubuntu2.tar.gz' build-essential_12.1ubuntu2.tar.gz 66237 SHA256:32efeda3394258cb5459df0d4019e346dace80249db8ef263755803d0e85da91
```

### `dpkg` source package: `bzip2=1.0.6-8`

Binary Packages:

- `bzip2=1.0.6-8`
- `bzip2-doc=1.0.6-8`
- `libbz2-1.0:amd64=1.0.6-8`
- `libbz2-dev:amd64=1.0.6-8`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/bzip2-doc/copyright`, `/usr/share/doc/libbz2-1.0/copyright`, `/usr/share/doc/libbz2-dev/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.6-8
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-8.dsc' bzip2_1.0.6-8.dsc 2042 SHA256:46df0e8112487065532829f2340ffd6ca64d46b6ab01b0000694751d3e67fb11
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA256:d70a9ccd8bdf47e302d96c69fecd54925f45d9c7b966bb4ef5f56b770960afa7
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-8.debian.tar.bz2' bzip2_1.0.6-8.debian.tar.bz2 59494 SHA256:60fe87fd3942c385e5921786255a27daf9a962ebc7301a60dfd8d1e1a5c8ce78
```

### `dpkg` source package: `bzr=2.7.0-2ubuntu3.1`

Binary Packages:

- `bzr=2.7.0-2ubuntu3.1`
- `python-bzrlib=2.7.0-2ubuntu3.1`

Licenses: (parsed from: `/usr/share/doc/bzr/copyright`, `/usr/share/doc/python-bzrlib/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris bzr=2.7.0-2ubuntu3.1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.7.0-2ubuntu3.1.dsc' bzr_2.7.0-2ubuntu3.1.dsc 2669 SHA256:f0edd85fd866a668052d147f08d0a3b6cc31b872e56d8e8f999ac29a228e7877
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.7.0.orig.tar.gz' bzr_2.7.0.orig.tar.gz 10944322 SHA256:5204369dc80e5738d7f4f5db5920e010cc5cb89097cf165462685ab70d9ab00b
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.7.0-2ubuntu3.1.debian.tar.xz' bzr_2.7.0-2ubuntu3.1.debian.tar.xz 42660 SHA256:7336e2ffc7f1f3a36d76c781f96076df4f81d140904163bb57f64f2a802f965b
```

### `dpkg` source package: `ca-certificates=20170717~16.04.1`

Binary Packages:

- `ca-certificates=20170717~16.04.1`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20170717~16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20170717~16.04.1.dsc' ca-certificates_20170717~16.04.1.dsc 1862 SHA256:5f7a908b265052c882ee7e2584673de5c0ab90ab3284a05c287c48f3117bda09
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20170717~16.04.1.tar.xz' ca-certificates_20170717~16.04.1.tar.xz 292920 SHA256:fb7a3ab87d0b5377b01359e0d8f2d564491b7fb8e7de424d7678e6c8912b312d
```

### `dpkg` source package: `cdebconf=0.198ubuntu1`

Binary Packages:

- `libdebconfclient0:amd64=0.198ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.198ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.198ubuntu1.dsc' cdebconf_0.198ubuntu1.dsc 2825 SHA256:d595d3afcad97026a763909a3efe66e296b02e432827d66a49c6f7088023a21e
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.198ubuntu1.tar.xz' cdebconf_0.198ubuntu1.tar.xz 269256 SHA256:2f3490411599195bd31fb1a29770694888c8295f9bf5012bfb4fa22ebd3990f1
```

### `dpkg` source package: `cmake=3.5.1-1ubuntu3`

Binary Packages:

- `cmake=3.5.1-1ubuntu3`
- `cmake-data=3.5.1-1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/cmake/copyright`, `/usr/share/doc/cmake-data/copyright`)

- `Apache-2.0`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-4-clause`
- `GPL-2`
- `GPL-2+with_exception`
- `GPL-3`
- `GPL-3+with_exception`
- `ISC`
- `MIT-like`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris cmake=3.5.1-1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_3.5.1-1ubuntu3.dsc' cmake_3.5.1-1ubuntu3.dsc 2556 SHA256:83c051bef6787fb66e8c4873c976ea304a9e192319d8740bfb944f7eed742671
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_3.5.1.orig.tar.gz' cmake_3.5.1.orig.tar.gz 6863121 SHA256:93d651a754bcf6f0124669646391dd5774c0fc4d407c384e3ae76ef9a60477e8
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_3.5.1-1ubuntu3.debian.tar.xz' cmake_3.5.1-1ubuntu3.debian.tar.xz 34716 SHA256:b8b86294518ff82f2c7d9872273733cce388daf5a67bdb6bf4b9a9aa5ffb6a16
```

### `dpkg` source package: `configobj=5.0.6-2`

Binary Packages:

- `python-configobj=5.0.6-2`

Licenses: (parsed from: `/usr/share/doc/python-configobj/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris configobj=5.0.6-2
'http://archive.ubuntu.com/ubuntu/pool/main/c/configobj/configobj_5.0.6-2.dsc' configobj_5.0.6-2.dsc 2381 SHA256:9bb8577128460ff33326d3d90b8454376c83f4d41b1da61aeabdbfcbfb5e0087
'http://archive.ubuntu.com/ubuntu/pool/main/c/configobj/configobj_5.0.6.orig.tar.gz' configobj_5.0.6.orig.tar.gz 143664 SHA256:2e140354efcca6f558ff9ee941b435ae09a617bc071797bef62c8d6ed2033d5e
'http://archive.ubuntu.com/ubuntu/pool/main/c/configobj/configobj_5.0.6-2.debian.tar.xz' configobj_5.0.6-2.debian.tar.xz 7436 SHA256:dc677cd329b4a3aacebe10c5a169d9d092cc27888c3f3f9203930cacd6a0eab8
```

### `dpkg` source package: `console-bridge=0.3.2-1`

Binary Packages:

- `libconsole-bridge-dev:amd64=0.3.2-1`
- `libconsole-bridge0.2v5:amd64=0.3.2-1`

Licenses: (parsed from: `/usr/share/doc/libconsole-bridge-dev/copyright`, `/usr/share/doc/libconsole-bridge0.2v5/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris console-bridge=0.3.2-1
'http://archive.ubuntu.com/ubuntu/pool/universe/c/console-bridge/console-bridge_0.3.2-1.dsc' console-bridge_0.3.2-1.dsc 1947 SHA256:4287ea47563a53e505d1c416b0be23292e367721b5d5541894155c4e76c7206f
'http://archive.ubuntu.com/ubuntu/pool/universe/c/console-bridge/console-bridge_0.3.2.orig.tar.gz' console-bridge_0.3.2.orig.tar.gz 231243 SHA256:fd12e48c672cb9c5d516d90429c4a7ad605859583fc23d98258c3fa7a12d89f4
'http://archive.ubuntu.com/ubuntu/pool/universe/c/console-bridge/console-bridge_0.3.2-1.debian.tar.xz' console-bridge_0.3.2-1.debian.tar.xz 4016 SHA256:e399cdf7fcbead93301e1061aac0460ed49f85c58f6911b120776a7e3cf02ad0
```

### `dpkg` source package: `coreutils=8.25-2ubuntu3~16.04`

Binary Packages:

- `coreutils=8.25-2ubuntu3~16.04`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.25-2ubuntu3~16.04
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.25-2ubuntu3~16.04.dsc' coreutils_8.25-2ubuntu3~16.04.dsc 2095 SHA256:90f76af8f3b01d49dfdb1b2e03e7cfebf855567d378a57092286a7df0aa199a4
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.25.orig.tar.xz' coreutils_8.25.orig.tar.xz 5725008 SHA256:31e67c057a5b32a582f26408c789e11c2e8d676593324849dcf5779296cdce87
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.25-2ubuntu3~16.04.debian.tar.xz' coreutils_8.25-2ubuntu3~16.04.debian.tar.xz 28336 SHA256:f6fd913f2b0b08df9109308dfd1202b06060e130b8e6bf94daad32e86a3937cf
```

### `dpkg` source package: `cryptsetup=2:1.6.6-5ubuntu2.1`

Binary Packages:

- `libcryptsetup4:amd64=2:1.6.6-5ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/libcryptsetup4/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris cryptsetup=2:1.6.6-5ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cryptsetup/cryptsetup_1.6.6-5ubuntu2.1.dsc' cryptsetup_1.6.6-5ubuntu2.1.dsc 2650 SHA256:138cdb723928fcef0b15e427e2ee56511587751c7d63defe902f4e6daaff5e2e
'http://archive.ubuntu.com/ubuntu/pool/main/c/cryptsetup/cryptsetup_1.6.6.orig.tar.xz' cryptsetup_1.6.6.orig.tar.xz 1145940 SHA256:2d2ce28e4e1137dd599d87884b62ef6dbf14fd7848b2a2bf7d61cf125fbd8e6f
'http://archive.ubuntu.com/ubuntu/pool/main/c/cryptsetup/cryptsetup_1.6.6-5ubuntu2.1.debian.tar.xz' cryptsetup_1.6.6-5ubuntu2.1.debian.tar.xz 91808 SHA256:0979ff24a2c4ecc5471a017b286cd7a4ccc497e72854b02aadc21465dcce96e4
```

### `dpkg` source package: `curl=7.47.0-1ubuntu2.5`

Binary Packages:

- `libcurl3:amd64=7.47.0-1ubuntu2.5`
- `libcurl3-gnutls:amd64=7.47.0-1ubuntu2.5`

Licenses: (parsed from: `/usr/share/doc/libcurl3/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `cyrus-sasl2=2.1.26.dfsg1-14build1`

Binary Packages:

- `libsasl2-2:amd64=2.1.26.dfsg1-14build1`
- `libsasl2-modules-db:amd64=2.1.26.dfsg1-14build1`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-2-clause`
- `BSD-4-clause`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.26.dfsg1-14build1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.26.dfsg1-14build1.dsc' cyrus-sasl2_2.1.26.dfsg1-14build1.dsc 3327 SHA256:74a35f22e72f7bcb3fb6b11421d31d2d9b0fb45aa869661c668274458fc4b45e
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.26.dfsg1.orig.tar.gz' cyrus-sasl2_2.1.26.dfsg1.orig.tar.gz 1494337 SHA256:172c39555012f479543ce7305949db75df708771fe8f8b34248027f09e53bb85
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.26.dfsg1-14build1.debian.tar.xz' cyrus-sasl2_2.1.26.dfsg1-14build1.debian.tar.xz 94628 SHA256:458c95e20745f61bbb080305e62348e26c079caaae56917cb12c2127095de6a4
```

### `dpkg` source package: `dash=0.5.8-2.1ubuntu2`

Binary Packages:

- `dash=0.5.8-2.1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.8-2.1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8-2.1ubuntu2.dsc' dash_0.5.8-2.1ubuntu2.dsc 1882 SHA256:16cb7f56041a9daa198728715318a5d88c19da01eb3ffccbc71f67304b077564
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8.orig.tar.gz' dash_0.5.8.orig.tar.gz 223028 SHA256:c6db3a237747b02d20382a761397563d813b306c020ae28ce25a1c3915fac60f
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8-2.1ubuntu2.diff.gz' dash_0.5.8-2.1ubuntu2.diff.gz 73054 SHA256:3c200a0b9c88b2e421bce9c717bf2ace7a9378c271a9b60463913e312424565a
```

### `dpkg` source package: `db5.3=5.3.28-11ubuntu0.1`

Binary Packages:

- `libdb5.3:amd64=5.3.28-11ubuntu0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28-11ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-11ubuntu0.1.dsc' db5.3_5.3.28-11ubuntu0.1.dsc 3182 SHA256:4abc1ee676134b17eba0d520d2a67884755a3133a6b7d1dcd8a0f533f3c3a52b
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz' db5.3_5.3.28.orig.tar.xz 24154920 SHA256:e1f85c8b6ebd0ed3ca72fa0ae97b65006f6d0bd0cd6f4ac24bed103cb5497bf5
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-11ubuntu0.1.debian.tar.xz' db5.3_5.3.28-11ubuntu0.1.debian.tar.xz 28480 SHA256:50a062f6e1fcf7e3c9db15380f346773d6a9871daedbd72ea2ee210b9a1216a9
```

### `dpkg` source package: `debconf=1.5.58ubuntu1`

Binary Packages:

- `debconf=1.5.58ubuntu1`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.58ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.58ubuntu1.dsc' debconf_1.5.58ubuntu1.dsc 2062 SHA256:cf8b801bd9b969c797f7bc4ff51d9332d8874ae387a0afdab5c043760567da37
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.58ubuntu1.tar.gz' debconf_1.5.58ubuntu1.tar.gz 1006952 SHA256:29b876ca4ff12ae2473e3c0e7119e8c9f4cebe3ce89f54d1f63d5c9ab5166253
```

### `dpkg` source package: `debianutils=4.7`

Binary Packages:

- `debianutils=4.7`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.7
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.7.dsc' debianutils_4.7.dsc 1703 SHA256:8dd1d66186f56bfe11bce5151b50c6909787d690bf90cc90212ea6deec186460
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.7.tar.xz' debianutils_4.7.tar.xz 156276 SHA256:a269cacd40f52f2fa5d5636357714a49e8538459c16d77772efaa23711fe53d9
```

### `dpkg` source package: `defusedxml=0.4.1-2ubuntu0.16.04.1`

Binary Packages:

- `python-defusedxml=0.4.1-2ubuntu0.16.04.1`

Licenses: (parsed from: `/usr/share/doc/python-defusedxml/copyright`)

- `Python`

Source:

```console
$ apt-get source -qq --print-uris defusedxml=0.4.1-2ubuntu0.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/d/defusedxml/defusedxml_0.4.1-2ubuntu0.16.04.1.dsc' defusedxml_0.4.1-2ubuntu0.16.04.1.dsc 2284 SHA256:5618513aa2ab02d47849acf0b4ea10f64e4fce00116a0195c4d2759c042b0b5e
'http://archive.ubuntu.com/ubuntu/pool/main/d/defusedxml/defusedxml_0.4.1.orig.tar.gz' defusedxml_0.4.1.orig.tar.gz 48889 SHA256:cd551d5a518b745407635bb85116eb813818ecaf182e773c35b36239fc3f2478
'http://archive.ubuntu.com/ubuntu/pool/main/d/defusedxml/defusedxml_0.4.1-2ubuntu0.16.04.1.debian.tar.xz' defusedxml_0.4.1-2ubuntu0.16.04.1.debian.tar.xz 15700 SHA256:03bbd9ff1da3634a62df99bf4e945b44058367dff53896e6597948091bed883d
```

### `dpkg` source package: `dh-python=2.20151103ubuntu1.1`

Binary Packages:

- `dh-python=2.20151103ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/dh-python/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris dh-python=2.20151103ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dh-python/dh-python_2.20151103ubuntu1.1.dsc' dh-python_2.20151103ubuntu1.1.dsc 1820 SHA256:65f43abf93ed5798548135f8cf34f034003c6fda5ec796fa75c2a3c395ebe260
'http://archive.ubuntu.com/ubuntu/pool/main/d/dh-python/dh-python_2.20151103ubuntu1.1.tar.xz' dh-python_2.20151103ubuntu1.1.tar.xz 79696 SHA256:ac41ef83793fe8ab8eabe2ae8a8ef33c9ec25bc6172f7b6c93e9134ce16efdd7
```

### `dpkg` source package: `diffutils=1:3.3-3`

Binary Packages:

- `diffutils=1:3.3-3`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.3-3
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.3-3.dsc' diffutils_3.3-3.dsc 1438 SHA256:2ac1b096ab1f6f0c628d6952fe65336d0c792a3d4814fb73a81a3f1f518eff91
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.3.orig.tar.xz' diffutils_3.3.orig.tar.xz 1197832 SHA256:a25e89a8ab65fded1731e4186be1bb25cda967834b6df973599cdcd5abdfc19c
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.3-3.debian.tar.xz' diffutils_3.3-3.debian.tar.xz 18356 SHA256:a0d1946979196f793a8ca55b21ab7891227de08f15bac2578ed84f4911e8b755
```

### `dpkg` source package: `distro-info-data=0.28ubuntu0.7`

Binary Packages:

- `distro-info-data=0.28ubuntu0.7`

Licenses: (parsed from: `/usr/share/doc/distro-info-data/copyright`)

- `ISC`

Source:

```console
$ apt-get source -qq --print-uris distro-info-data=0.28ubuntu0.7
'http://archive.ubuntu.com/ubuntu/pool/main/d/distro-info-data/distro-info-data_0.28ubuntu0.7.dsc' distro-info-data_0.28ubuntu0.7.dsc 1761 SHA256:8666fdefa1b881e75904760a7f952d7373c797ece3b6680b9ce73cc10cf15a2e
'http://archive.ubuntu.com/ubuntu/pool/main/d/distro-info-data/distro-info-data_0.28ubuntu0.7.tar.xz' distro-info-data_0.28ubuntu0.7.tar.xz 6672 SHA256:94fe71ad219a2df5563d1d9da0f2ecbc5af19c7920c2b3772bd7797cbff54473
```

### `dpkg` source package: `dpkg=1.18.4ubuntu1.3`

Binary Packages:

- `dpkg=1.18.4ubuntu1.3`
- `dpkg-dev=1.18.4ubuntu1.3`
- `libdpkg-perl=1.18.4ubuntu1.3`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.18.4ubuntu1.3
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.18.4ubuntu1.3.dsc' dpkg_1.18.4ubuntu1.3.dsc 1510 SHA256:b7ed29cd148b3bb644cdad8946a396d0ef73ef3457c6e4f15fce2d3659877b82
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.18.4ubuntu1.3.tar.xz' dpkg_1.18.4ubuntu1.3.tar.xz 4297164 SHA256:1a5b94b074c15b7dfe392da27ea80b9e7174f38dc3afdc46a80bb35fd68bdcac
```

### `dpkg` source package: `e2fsprogs=1.42.13-1ubuntu1`

Binary Packages:

- `e2fslibs:amd64=1.42.13-1ubuntu1`
- `e2fsprogs=1.42.13-1ubuntu1`
- `libcomerr2:amd64=1.42.13-1ubuntu1`
- `libss2:amd64=1.42.13-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/e2fslibs/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcomerr2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.42.13-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.42.13-1ubuntu1.dsc' e2fsprogs_1.42.13-1ubuntu1.dsc 2600 SHA256:03d2a33abd1037df7949405721903469fc526c07ac9ca0c5a01f273f7f506b05
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.42.13.orig.tar.gz' e2fsprogs_1.42.13.orig.tar.gz 6511931 SHA256:59993ff3a44f82e504561e0ebf95e8c8fa9f9f5746eb6a7182239605d2a4e2d4
'http://archive.ubuntu.com/ubuntu/pool/main/e/e2fsprogs/e2fsprogs_1.42.13-1ubuntu1.debian.tar.xz' e2fsprogs_1.42.13-1ubuntu1.debian.tar.xz 69196 SHA256:90326bf4bd93d01fbd9dc73803cc58c8d98ff67e1469e4cbbe672169aa048220
```

### `dpkg` source package: `empy=3.3.2-1build1`

Binary Packages:

- `python-empy=3.3.2-1build1`

Licenses: (parsed from: `/usr/share/doc/python-empy/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris empy=3.3.2-1build1
'http://archive.ubuntu.com/ubuntu/pool/universe/e/empy/empy_3.3.2-1build1.dsc' empy_3.3.2-1build1.dsc 2161 SHA256:4fee77941fc5406214e9d2387b631040165329e0084319e5f5af52c0df948862
'http://archive.ubuntu.com/ubuntu/pool/universe/e/empy/empy_3.3.2.orig.tar.gz' empy_3.3.2.orig.tar.gz 138168 SHA256:99f016af2770c48ab57a65df7aae251360dc69a1514c15851458a71d4ddfea9c
'http://archive.ubuntu.com/ubuntu/pool/universe/e/empy/empy_3.3.2-1build1.debian.tar.xz' empy_3.3.2-1build1.debian.tar.xz 4688 SHA256:50eae836a5dbde23d563ef04b96e6e1f7bfc2cab6ab6ed1d62c68aacc235af21
```

### `dpkg` source package: `expat=2.1.0-7ubuntu0.16.04.3`

Binary Packages:

- `libexpat1:amd64=2.1.0-7ubuntu0.16.04.3`
- `libexpat1-dev:amd64=2.1.0-7ubuntu0.16.04.3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris expat=2.1.0-7ubuntu0.16.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.1.0-7ubuntu0.16.04.3.dsc' expat_2.1.0-7ubuntu0.16.04.3.dsc 2389 SHA256:30870214df0415be5550b825c612d8de76621bb24480e1b0b7efe4469d868de6
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.1.0.orig.tar.gz' expat_2.1.0.orig.tar.gz 562616 SHA256:823705472f816df21c8f6aa026dd162b280806838bb55b3432b0fb1fcca7eb86
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.1.0-7ubuntu0.16.04.3.debian.tar.xz' expat_2.1.0-7ubuntu0.16.04.3.debian.tar.xz 22068 SHA256:691aec15db5b568d90db8f312f66af89e5f6f9848ef6061c65bbf06594f6fdb9
```

### `dpkg` source package: `explorercanvas=0.r3-4`

Binary Packages:

- `libjs-excanvas=0.r3-4`

Licenses: (parsed from: `/usr/share/doc/libjs-excanvas/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris explorercanvas=0.r3-4
'http://archive.ubuntu.com/ubuntu/pool/universe/e/explorercanvas/explorercanvas_0.r3-4.dsc' explorercanvas_0.r3-4.dsc 2000 SHA256:d168011ed1f110f82b5039a6b070167f1f262d2a35d7fa25a6b5462f73761637
'http://archive.ubuntu.com/ubuntu/pool/universe/e/explorercanvas/explorercanvas_0.r3.orig.tar.gz' explorercanvas_0.r3.orig.tar.gz 50748 SHA256:687af8084781b8eb3451fc55c88f6dfddc2b84428d197daf2c4c33fd5c55fed8
'http://archive.ubuntu.com/ubuntu/pool/universe/e/explorercanvas/explorercanvas_0.r3-4.debian.tar.xz' explorercanvas_0.r3-4.debian.tar.xz 2040 SHA256:afcaa3e229d9b423988fc30439aeee1599c9dac8ad94430309404f9cf9f0c11f
```

### `dpkg` source package: `fakeroot=1.20.2-1ubuntu1`

Binary Packages:

- `fakeroot=1.20.2-1ubuntu1`
- `libfakeroot:amd64=1.20.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/fakeroot/copyright`, `/usr/share/doc/libfakeroot/copyright`)

- `Artistic`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris fakeroot=1.20.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fakeroot/fakeroot_1.20.2-1ubuntu1.dsc' fakeroot_1.20.2-1ubuntu1.dsc 2006 SHA256:662b199818be9f7812e84b7e3c1ea8df73bde32d044027e90d258de54e3580be
'http://archive.ubuntu.com/ubuntu/pool/main/f/fakeroot/fakeroot_1.20.2.orig.tar.bz2' fakeroot_1.20.2.orig.tar.bz2 326910 SHA256:7c0a164d19db3efa9e802e0fc7cdfeff70ec6d26cdbdc4338c9c2823c5ea230c
'http://archive.ubuntu.com/ubuntu/pool/main/f/fakeroot/fakeroot_1.20.2-1ubuntu1.debian.tar.xz' fakeroot_1.20.2-1ubuntu1.debian.tar.xz 49168 SHA256:b4ce948517685a73645175ad62f16d52506186417823f43b7899b7f8f5498d98
```

### `dpkg` source package: `file=1:5.25-2ubuntu1`

Binary Packages:

- `file=1:5.25-2ubuntu1`
- `libmagic1:amd64=1:5.25-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/file/copyright`, `/usr/share/doc/libmagic1/copyright`)

- `BSD-2-Clause-alike`
- `BSD-2-Clause-netbsd`
- `BSD-2-Clause-regents`
- `MIT-Old-Style-with-legal-disclaimer-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris file=1:5.25-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.25-2ubuntu1.dsc' file_5.25-2ubuntu1.dsc 2230 SHA256:445934d8d9cb33039d9ac14c9145ac790eb3615364af07a04e2c2e6f3745ce37
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.25.orig.tar.xz' file_5.25.orig.tar.xz 537916 SHA256:8062cae8be640ff8583b8714e394dc73c3127d23f8fe9097f1433cdb36bff31c
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.25-2ubuntu1.debian.tar.xz' file_5.25-2ubuntu1.debian.tar.xz 33252 SHA256:1699cd2ea1fd134ced1c8002e9a60a79f531e9e4b02618b0235a6d971bdbc714
```

### `dpkg` source package: `findutils=4.6.0+git+20160126-2`

Binary Packages:

- `findutils=4.6.0+git+20160126-2`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.6.0+git+20160126-2
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0+git+20160126-2.dsc' findutils_4.6.0+git+20160126-2.dsc 2163 SHA256:b4b644696cb66bdf72c59b25efe61800ae20fadfcc8e633cde240e4a956567a7
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0+git+20160126.orig.tar.xz' findutils_4.6.0+git+20160126.orig.tar.xz 1710188 SHA256:3d25cef1e0d5e098e323b06f66aea9f02f993a0cf6f13a437d712a8a722cd67e
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0+git+20160126-2.debian.tar.xz' findutils_4.6.0+git+20160126-2.debian.tar.xz 25080 SHA256:58bf1e7a07fbac6a68693b099ec6fc9a6166e0b1b60cebe6bac3b90287a8dc3f
```

### `dpkg` source package: `gcc-4.8=4.8.5-4ubuntu2`

Binary Packages:

- `gcc-4.8-base:amd64=4.8.5-4ubuntu2`
- `libasan0:amd64=4.8.5-4ubuntu2`
- `libgcc-4.8-dev:amd64=4.8.5-4ubuntu2`
- `libstdc++-4.8-dev:amd64=4.8.5-4ubuntu2`

Licenses: (parsed from: `/usr/share/doc/gcc-4.8-base/copyright`, `/usr/share/doc/libasan0/copyright`, `/usr/share/doc/libgcc-4.8-dev/copyright`, `/usr/share/doc/libstdc++-4.8-dev/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gcc-4.8=4.8.5-4ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gcc-4.8/gcc-4.8_4.8.5-4ubuntu2.dsc' gcc-4.8_4.8.5-4ubuntu2.dsc 12216 SHA256:d0a98e616e0f87c434149ff4c352e814e8ee41c877f069f8fb53df0ea9bc41ae
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gcc-4.8/gcc-4.8_4.8.5.orig.tar.gz' gcc-4.8_4.8.5.orig.tar.gz 66569326 SHA256:9c3263058e5fc8a89147fdc03afafcf1cfc6912c3d034e2ceabe40966d4bb4f7
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gcc-4.8/gcc-4.8_4.8.5-4ubuntu2.diff.gz' gcc-4.8_4.8.5-4ubuntu2.diff.gz 950839 SHA256:ee26de30eb1e0b5d73f73e387853539b6e609fcb25ec581c11081f49c9332a9a
```

### `dpkg` source package: `gcc-5=5.4.0-6ubuntu1~16.04.5`

Binary Packages:

- `cpp-5=5.4.0-6ubuntu1~16.04.5`
- `g++-5=5.4.0-6ubuntu1~16.04.5`
- `gcc-5=5.4.0-6ubuntu1~16.04.5`
- `gcc-5-base:amd64=5.4.0-6ubuntu1~16.04.5`
- `libasan2:amd64=5.4.0-6ubuntu1~16.04.5`
- `libatomic1:amd64=5.4.0-6ubuntu1~16.04.5`
- `libcc1-0:amd64=5.4.0-6ubuntu1~16.04.5`
- `libcilkrts5:amd64=5.4.0-6ubuntu1~16.04.5`
- `libgcc-5-dev:amd64=5.4.0-6ubuntu1~16.04.5`
- `libgfortran3:amd64=5.4.0-6ubuntu1~16.04.5`
- `libgomp1:amd64=5.4.0-6ubuntu1~16.04.5`
- `libitm1:amd64=5.4.0-6ubuntu1~16.04.5`
- `liblsan0:amd64=5.4.0-6ubuntu1~16.04.5`
- `libmpx0:amd64=5.4.0-6ubuntu1~16.04.5`
- `libquadmath0:amd64=5.4.0-6ubuntu1~16.04.5`
- `libstdc++-5-dev:amd64=5.4.0-6ubuntu1~16.04.5`
- `libstdc++6:amd64=5.4.0-6ubuntu1~16.04.5`
- `libtsan0:amd64=5.4.0-6ubuntu1~16.04.5`
- `libubsan0:amd64=5.4.0-6ubuntu1~16.04.5`

Licenses: (parsed from: `/usr/share/doc/cpp-5/copyright`, `/usr/share/doc/g++-5/copyright`, `/usr/share/doc/gcc-5/copyright`, `/usr/share/doc/gcc-5-base/copyright`, `/usr/share/doc/libasan2/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libcilkrts5/copyright`, `/usr/share/doc/libgcc-5-dev/copyright`, `/usr/share/doc/libgfortran3/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libmpx0/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++-5-dev/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan0/copyright`, `/usr/share/doc/libubsan0/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `gcc-defaults=1.150ubuntu1`

Binary Packages:

- `cpp=4:5.3.1-1ubuntu1`
- `g++=4:5.3.1-1ubuntu1`
- `gcc=4:5.3.1-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/gcc/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.150ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.150ubuntu1.dsc' gcc-defaults_1.150ubuntu1.dsc 12634 SHA256:5f538e1bb59109b47d820cdd056993d462f24468c67f6a1a005db389dffa8ee2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.150ubuntu1.tar.gz' gcc-defaults_1.150ubuntu1.tar.gz 73857 SHA256:cadaf435151fb1b901b0351d20a9981fe33d94fbb1ab14bd9960095b673ce6ed
```

### `dpkg` source package: `gccgo-6=6.0.1-0ubuntu1`

Binary Packages:

- `gcc-6-base:amd64=6.0.1-0ubuntu1`
- `libgcc1:amd64=1:6.0.1-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gcc-6-base/copyright`, `/usr/share/doc/libgcc1/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gccgo-6=6.0.1-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gccgo-6/gccgo-6_6.0.1-0ubuntu1.dsc' gccgo-6_6.0.1-0ubuntu1.dsc 11285 SHA256:4c02817baac83492323ebe7800d44de609eca147518682307a3bad2bd5134129
'http://archive.ubuntu.com/ubuntu/pool/main/g/gccgo-6/gccgo-6_6.0.1.orig.tar.gz' gccgo-6_6.0.1.orig.tar.gz 76335555 SHA256:daff7478ce52d00572683547c810bf50652a9057c33e3ce703c9f0baae28f4c3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gccgo-6/gccgo-6_6.0.1-0ubuntu1.diff.gz' gccgo-6_6.0.1-0ubuntu1.diff.gz 633954 SHA256:839eea6c2d23670f09b642864ff61e3097b47391cb508a5997538750ff8678f6
```

### `dpkg` source package: `gdbm=1.8.3-13.1`

Binary Packages:

- `libgdbm3:amd64=1.8.3-13.1`

Licenses: (parsed from: `/usr/share/doc/libgdbm3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.8.3-13.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3-13.1.dsc' gdbm_1.8.3-13.1.dsc 1830 SHA256:b1d8bef30edc491315c337930cbe2b61f44f55035adfc26ae945bab5ca57d5c9
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3.orig.tar.bz2' gdbm_1.8.3.orig.tar.bz2 172796 SHA256:1d5995b6e9e6be4ff62c8126d019f184a083dd8e6f75f6c74b9fe023b5b9440e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3-13.1.debian.tar.xz' gdbm_1.8.3-13.1.debian.tar.xz 14748 SHA256:251401e1f5210226f384e936b1b7ea1df40119a918d9f3dbf48b2e51d4df8983
```

### `dpkg` source package: `git=1:2.7.4-0ubuntu1.3`

Binary Packages:

- `git=1:2.7.4-0ubuntu1.3`
- `git-core=1:2.7.4-0ubuntu1.3`
- `git-man=1:2.7.4-0ubuntu1.3`

Licenses: (parsed from: `/usr/share/doc/git/copyright`, `/usr/share/doc/git-core/copyright`, `/usr/share/doc/git-man/copyright`)

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
$ apt-get source -qq --print-uris git=1:2.7.4-0ubuntu1.3
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.7.4-0ubuntu1.3.dsc' git_2.7.4-0ubuntu1.3.dsc 2883 SHA256:5eb38a0856e2e059e4444958367f2428f2737895aa887e751ca94b4792b701da
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.7.4.orig.tar.xz' git_2.7.4.orig.tar.xz 3909636 SHA256:dee574defbe05ec7356a0842ddbda51315926f2fa7e39c2539f2c3dcc52e457b
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.7.4-0ubuntu1.3.debian.tar.xz' git_2.7.4-0ubuntu1.3.debian.tar.xz 510072 SHA256:52c820eae29877651bfb540852c005030a533c4fd5810d7e99e269e1fb500973
```

### `dpkg` source package: `glib2.0=2.48.2-0ubuntu1`

Binary Packages:

- `libglib2.0-0:amd64=2.48.2-0ubuntu1`
- `libglib2.0-data=2.48.2-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`, `/usr/share/doc/libglib2.0-data/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.48.2-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.48.2-0ubuntu1.dsc' glib2.0_2.48.2-0ubuntu1.dsc 3324 SHA256:83dbf2f597e79d34b42e89d2b3129bc3925142e5f4cd4d3df2254b4a4d486345
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.48.2.orig.tar.xz' glib2.0_2.48.2.orig.tar.xz 6408644 SHA256:f25e751589cb1a58826eac24fbd4186cda4518af772806b666a3f91f66e6d3f4
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.48.2-0ubuntu1.debian.tar.xz' glib2.0_2.48.2-0ubuntu1.debian.tar.xz 68844 SHA256:83d8527d76c025a47136f7bc146a7716049afa9f0c75b8e050e3c55636703d37
```

### `dpkg` source package: `glibc=2.23-0ubuntu10`

Binary Packages:

- `libc-bin=2.23-0ubuntu10`
- `libc-dev-bin=2.23-0ubuntu10`
- `libc6:amd64=2.23-0ubuntu10`
- `libc6-dev:amd64=2.23-0ubuntu10`
- `multiarch-support=2.23-0ubuntu10`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`, `/usr/share/doc/multiarch-support/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.23-0ubuntu10
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.23-0ubuntu10.dsc' glibc_2.23-0ubuntu10.dsc 8231 SHA256:422c3e17758e3378474bed63e2ed140364045c671f913fa99928a6eeff64adb6
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.23.orig.tar.xz' glibc_2.23.orig.tar.xz 13849968 SHA256:bf6c528eeebefcacc295270068b79330c1fb2b22458ff66285b4175d23442c96
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.23-0ubuntu10.debian.tar.xz' glibc_2.23-0ubuntu10.debian.tar.xz 1226400 SHA256:4918baa16af87741a50aa349ebe12294f856d73bd052d8558f5385c0607fc05e
```

### `dpkg` source package: `gmp=2:6.1.0+dfsg-2`

Binary Packages:

- `libgmp10:amd64=2:6.1.0+dfsg-2`

Licenses: (parsed from: `/usr/share/doc/libgmp10/copyright`)

- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris gmp=2:6.1.0+dfsg-2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.0+dfsg-2.dsc' gmp_6.1.0+dfsg-2.dsc 2161 SHA256:a790b4fea2792f968014a3ef41ea749dcc6687bcb33aa5bea59400ccd101337e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.0+dfsg.orig.tar.xz' gmp_6.1.0+dfsg.orig.tar.xz 1786120 SHA256:78a74cfd933bbdf7e93909a6069e53e8aba8389e9b3880300c926da7a7d55632
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.0+dfsg-2.debian.tar.xz' gmp_6.1.0+dfsg-2.debian.tar.xz 20576 SHA256:c933e3cb45cd4101cc0604b5bc0fb96d6067b3614e730dbf26588985720ba581
```

### `dpkg` source package: `gnupg2=2.1.11-6ubuntu2`

Binary Packages:

- `dirmngr=2.1.11-6ubuntu2`
- `gnupg-agent=2.1.11-6ubuntu2`
- `gnupg2=2.1.11-6ubuntu2`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg-agent/copyright`, `/usr/share/doc/gnupg2/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `RFC-Reference`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris gnupg2=2.1.11-6ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.1.11-6ubuntu2.dsc' gnupg2_2.1.11-6ubuntu2.dsc 2339 SHA256:c1e7d628ffabdae70946cbef96121d368c79bd074ebb9220dabe5647ad3b1ad0
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.1.11.orig.tar.bz2' gnupg2_2.1.11.orig.tar.bz2 5224007 SHA256:b7b0fb2c8c5d47d7ec916d4a1097c0ddcb94a12bb1c0ac424ad86b1ee316b61a
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.1.11-6ubuntu2.debian.tar.bz2' gnupg2_2.1.11-6ubuntu2.debian.tar.bz2 33400 SHA256:0b170621fb3181dcebdc8e0ad60ab274c90b1363061a1ea9afc85cab8c49e1fb
```

### `dpkg` source package: `gnupg=1.4.20-1ubuntu3.1`

Binary Packages:

- `gnupg=1.4.20-1ubuntu3.1`
- `gpgv=1.4.20-1ubuntu3.1`

Licenses: (parsed from: `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gpgv/copyright`)

- `GPL-3`
- `GPL-3+ with OpenSSL exception`
- `RFC-Reference`

Source:

```console
$ apt-get source -qq --print-uris gnupg=1.4.20-1ubuntu3.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg/gnupg_1.4.20-1ubuntu3.1.dsc' gnupg_1.4.20-1ubuntu3.1.dsc 2460 SHA256:d44da8008925234f403dbec9bb4baac47edb81b017728033ab258dddf032469f
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg/gnupg_1.4.20.orig.tar.gz' gnupg_1.4.20.orig.tar.gz 5156447 SHA256:dc1f1a6028488303a4efb01aadda480b9cd0f49f65aef94c432628fdd127e586
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg/gnupg_1.4.20-1ubuntu3.1.debian.tar.xz' gnupg_1.4.20-1ubuntu3.1.debian.tar.xz 38320 SHA256:a299bedd609dd8a8f488db64c6a13361599ba0f906a805730496f9973257d91c
```

### `dpkg` source package: `gnutls28=3.4.10-4ubuntu1.4`

Binary Packages:

- `libgnutls30:amd64=3.4.10-4ubuntu1.4`

Licenses: (parsed from: `/usr/share/doc/libgnutls30/copyright`)

- `CC0 license`
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
$ apt-get source -qq --print-uris gnutls28=3.4.10-4ubuntu1.4
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.4.10-4ubuntu1.4.dsc' gnutls28_3.4.10-4ubuntu1.4.dsc 3076 SHA256:48a249686197b4548b2ef1cef1cb71a2ed7c662b2a449fed0987e53c44afc610
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.4.10.orig.tar.xz' gnutls28_3.4.10.orig.tar.xz 6645892 SHA256:6a32c2b4acbd33ff7eefcbd1357009da04c94c60146ef61320b6c076b1bdf59f
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.4.10-4ubuntu1.4.debian.tar.xz' gnutls28_3.4.10-4ubuntu1.4.debian.tar.xz 96568 SHA256:b32bfc6bd9b4c54c83de5ea318e76e5d5e5bfcbd3311179cb472680a7209d880
```

### `dpkg` source package: `grep=2.25-1~16.04.1`

Binary Packages:

- `grep=2.25-1~16.04.1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=2.25-1~16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_2.25-1~16.04.1.dsc' grep_2.25-1~16.04.1.dsc 1971 SHA256:a41abfce1c101fd14d435cafbf15c2ecec5dbb01c157a52a2d24a6baae387048
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_2.25.orig.tar.xz' grep_2.25.orig.tar.xz 1327856 SHA256:e21e83bac50450e0d0d61a42c154ee0dceaacdbf4f604ef6e79071cb8e596830
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_2.25-1~16.04.1.debian.tar.bz2' grep_2.25-1~16.04.1.debian.tar.bz2 108236 SHA256:10a95f4bdee1d2beb05ab1727e114d1f0737f5a917e88b973200a38146a2e085
```

### `dpkg` source package: `gtest=1.7.0-4ubuntu1`

Binary Packages:

- `libgtest-dev:amd64=1.7.0-4ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgtest-dev/copyright`)

- `BSD-C3`
- `GAP`

Source:

```console
$ apt-get source -qq --print-uris gtest=1.7.0-4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gtest/gtest_1.7.0-4ubuntu1.dsc' gtest_1.7.0-4ubuntu1.dsc 1354 SHA256:9f4622d03b42cd79e81e702aa4adfb93323c485f1870bc628591496b80b0c8c7
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gtest/gtest_1.7.0.orig.tar.bz2' gtest_1.7.0.orig.tar.bz2 794603 SHA256:84671fbda864fd0cb2ad7dfba57d0c51821c867f15c2532ac4196ba3cfa56f91
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gtest/gtest_1.7.0-4ubuntu1.debian.tar.xz' gtest_1.7.0-4ubuntu1.debian.tar.xz 7032 SHA256:f357ca4c4ba1855602f97de5298475af20fdd3d31dfeddbbb13ef2b4d720ff38
```

### `dpkg` source package: `gzip=1.6-4ubuntu1`

Binary Packages:

- `gzip=1.6-4ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.6-4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-4ubuntu1.dsc' gzip_1.6-4ubuntu1.dsc 1907 SHA256:77c1d15c52947d50656365597802c586249d26a4f56c8075f5d94b4634d11465
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6.orig.tar.gz' gzip_1.6.orig.tar.gz 1074924 SHA256:97eb83b763d9e5ad35f351fe5517e6b71521d7aac7acf3e3cacdb6b1496d8f7e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-4ubuntu1.debian.tar.xz' gzip_1.6-4ubuntu1.debian.tar.xz 14932 SHA256:9a3e558c87a78bf65f9b9c48d718b3ef0bb69e0cf07617f44e37f41ba5f7b006
```

### `dpkg` source package: `heimdal=1.7~git20150920+dfsg-4ubuntu1.16.04.1`

Binary Packages:

- `libasn1-8-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libgssapi3-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libhcrypto4-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libheimbase1-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libheimntlm0-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libhx509-5-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libkrb5-26-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libroken18-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`
- `libwind0-heimdal:amd64=1.7~git20150920+dfsg-4ubuntu1.16.04.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris heimdal=1.7~git20150920+dfsg-4ubuntu1.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_1.7~git20150920+dfsg-4ubuntu1.16.04.1.dsc' heimdal_1.7~git20150920+dfsg-4ubuntu1.16.04.1.dsc 3766 SHA256:068e9500ada30813dac1721e71ec4ad4129142b960b7fe19487db1892865c82e
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_1.7~git20150920+dfsg.orig.tar.gz' heimdal_1.7~git20150920+dfsg.orig.tar.gz 8979556 SHA256:fb3cb14b1d8cd25e5b8f73ab5d6de434b91cdebef2dd3d8efc96a403d0750d50
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_1.7~git20150920+dfsg-4ubuntu1.16.04.1.debian.tar.xz' heimdal_1.7~git20150920+dfsg-4ubuntu1.16.04.1.debian.tar.xz 65512 SHA256:f30b75cde57b7848f70e923d705fdd1eaa805c840c4fe37585af332fc1583099
```

### `dpkg` source package: `hostname=3.16ubuntu2`

Binary Packages:

- `hostname=3.16ubuntu2`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.16ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.16ubuntu2.dsc' hostname_3.16ubuntu2.dsc 1573 SHA256:dcffca698d9f428a83b744d638ef2069252395d9b5d1a3098578f01b0cb347a5
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.16ubuntu2.tar.gz' hostname_3.16ubuntu2.tar.gz 14378 SHA256:e0a38fa03b66abd428e119e5af2cccb78a0462cdb58e2e540e66d964e2719195
```

### `dpkg` source package: `hwloc=1.11.2-3`

Binary Packages:

- `libhwloc-dev:amd64=1.11.2-3`
- `libhwloc-plugins=1.11.2-3`
- `libhwloc5:amd64=1.11.2-3`

Licenses: (parsed from: `/usr/share/doc/libhwloc-dev/copyright`, `/usr/share/doc/libhwloc-plugins/copyright`, `/usr/share/doc/libhwloc5/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris hwloc=1.11.2-3
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hwloc/hwloc_1.11.2-3.dsc' hwloc_1.11.2-3.dsc 2542 SHA256:0cfb84c46465ef78d9167826c8d2f17525eda14d8580649e3bcca3b9ec2fecc2
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hwloc/hwloc_1.11.2.orig.tar.bz2' hwloc_1.11.2.orig.tar.bz2 4019136 SHA256:8c029b6b1638245837707bfa6c865f448af4e49e7d352335e019d818b51fecf8
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hwloc/hwloc_1.11.2-3.debian.tar.bz2' hwloc_1.11.2-3.debian.tar.bz2 10090 SHA256:11df92b1a4cb818586c2caa3d5f67e7c7693e5f551cd52e729356666c1ba06e7
```

### `dpkg` source package: `icu=55.1-7ubuntu0.3`

Binary Packages:

- `icu-devtools=55.1-7ubuntu0.3`
- `libicu-dev:amd64=55.1-7ubuntu0.3`
- `libicu55:amd64=55.1-7ubuntu0.3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris icu=55.1-7ubuntu0.3
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_55.1-7ubuntu0.3.dsc' icu_55.1-7ubuntu0.3.dsc 2146 SHA256:209a643d6ae5dd36b1d32a471f48476d4c234154ef80dc930b16b6ce8edfba86
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_55.1.orig.tar.gz' icu_55.1.orig.tar.gz 25600847 SHA256:e16b22cbefdd354bec114541f7849a12f8fc2015320ca5282ee4fd787571457b
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_55.1-7ubuntu0.3.debian.tar.xz' icu_55.1-7ubuntu0.3.debian.tar.xz 30384 SHA256:818a99068b590c803d1ab524d1dcec2518ced9087cb694549e50304d6891e0bb
```

### `dpkg` source package: `init-system-helpers=1.29ubuntu4`

Binary Packages:

- `init=1.29ubuntu4`
- `init-system-helpers=1.29ubuntu4`

Licenses: (parsed from: `/usr/share/doc/init/copyright`, `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.29ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.29ubuntu4.dsc' init-system-helpers_1.29ubuntu4.dsc 2047 SHA256:10991f100d3d1dd450652826e382cda3037243d1268acef903e9fed977840486
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.29ubuntu4.tar.xz' init-system-helpers_1.29ubuntu4.tar.xz 58648 SHA256:f0ae7b86351157ed635a97751ea82894d0352d716dfb232c2dd4bb557f30f21f
```

### `dpkg` source package: `insserv=1.14.0-5ubuntu3`

Binary Packages:

- `insserv=1.14.0-5ubuntu3`

Licenses: (parsed from: `/usr/share/doc/insserv/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris insserv=1.14.0-5ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/i/insserv/insserv_1.14.0-5ubuntu3.dsc' insserv_1.14.0-5ubuntu3.dsc 2033 SHA256:30a8e6edc9c105803dfc98d733ba0ed8f0aaf81c4aa4f5ba132241b9a1fcb3a2
'http://archive.ubuntu.com/ubuntu/pool/main/i/insserv/insserv_1.14.0.orig.tar.gz' insserv_1.14.0.orig.tar.gz 53851 SHA256:da74dcf5225a00aa8aef4d5afc6a20e009b2ed9af328dabd55fef1cb3a32140e
'http://archive.ubuntu.com/ubuntu/pool/main/i/insserv/insserv_1.14.0-5ubuntu3.debian.tar.xz' insserv_1.14.0-5ubuntu3.debian.tar.xz 48124 SHA256:a4d0d0703fa398819ab7b4cad573f334feee80aac5520202457519e737b4648a
```

### `dpkg` source package: `isl=0.16.1-1`

Binary Packages:

- `libisl15:amd64=0.16.1-1`

Licenses: (parsed from: `/usr/share/doc/libisl15/copyright`)

- `BSD-2-clause`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.16.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.16.1-1.dsc' isl_0.16.1-1.dsc 1857 SHA256:d6428f2a18db18cdfbff3be72b33dbc4b1838d5efea97ae5715c24115250be91
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.16.1.orig.tar.gz' isl_0.16.1.orig.tar.gz 1889136 SHA256:fb34703bd694622aef92164bad983c15ec04274edbe19e614d9ecda54b85603d
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.16.1-1.debian.tar.xz' isl_0.16.1-1.debian.tar.xz 21152 SHA256:d1ee2fd3a5b7289ba7f66fe443f57f5b6f4297a3a9164d840fafc9c37d3ec632
```

### `dpkg` source package: `keyutils=1.5.9-8ubuntu1`

Binary Packages:

- `libkeyutils1:amd64=1.5.9-8ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.5.9-8ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9-8ubuntu1.dsc' keyutils_1.5.9-8ubuntu1.dsc 1548 SHA256:dd06e9b6a773ed745cd74dbce13d585469aa508f2afbc6fa51a58939b295ce07
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9.orig.tar.bz2' keyutils_1.5.9.orig.tar.bz2 74683 SHA256:4da2c5552c688b65ab14d4fd40fbdf720c8b396d8ece643e040cf6e707e083ae
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9-8ubuntu1.debian.tar.xz' keyutils_1.5.9-8ubuntu1.debian.tar.xz 16716 SHA256:36f69846dfeb1e7abdd39dace57a43f9637e426cf4c5252dd9990af36488249b
```

### `dpkg` source package: `kmod=22-1ubuntu5`

Binary Packages:

- `libkmod2:amd64=22-1ubuntu5`

Licenses: (parsed from: `/usr/share/doc/libkmod2/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris kmod=22-1ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_22-1ubuntu5.dsc' kmod_22-1ubuntu5.dsc 2125 SHA256:b1d485fc556faafd7d65e73dc9869991adbd6cc141019bac19b7b9c7f90e2c6b
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_22.orig.tar.xz' kmod_22.orig.tar.xz 160576 SHA256:158cbbca15c570eb2f4ce29a64cae785cb377a200cf62d6f70ca52e3d33325f3
'http://archive.ubuntu.com/ubuntu/pool/main/k/kmod/kmod_22-1ubuntu5.debian.tar.xz' kmod_22-1ubuntu5.debian.tar.xz 14376 SHA256:b09c84ec2fb693df04f9e5366d093ac71fb981bbfc2852ca08be1ed3b754651c
```

### `dpkg` source package: `krb5=1.13.2+dfsg-5ubuntu2`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.13.2+dfsg-5ubuntu2`
- `libk5crypto3:amd64=1.13.2+dfsg-5ubuntu2`
- `libkrb5-3:amd64=1.13.2+dfsg-5ubuntu2`
- `libkrb5support0:amd64=1.13.2+dfsg-5ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.13.2+dfsg-5ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.13.2+dfsg-5ubuntu2.dsc' krb5_1.13.2+dfsg-5ubuntu2.dsc 3498 SHA256:d165078db6908d38fad615acdc8e1b94e71daad83667a93f5f26deba05274f6f
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.13.2+dfsg.orig.tar.gz' krb5_1.13.2+dfsg.orig.tar.gz 11884064 SHA256:a7af3953e4ab52b17f80bdfc2fc7471b66b512b128520796e2b993554543873a
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.13.2+dfsg-5ubuntu2.debian.tar.xz' krb5_1.13.2+dfsg-5ubuntu2.debian.tar.xz 103168 SHA256:8be99019ff85c67452d1dd7c6e9eaa45b73ed09fd55993d4a6c9bcb6e6a96c6c
```

### `dpkg` source package: `lapack=3.6.0-2ubuntu2`

Binary Packages:

- `libblas-common=3.6.0-2ubuntu2`
- `libblas3=3.6.0-2ubuntu2`
- `liblapack3=3.6.0-2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libblas-common/copyright`, `/usr/share/doc/libblas3/copyright`, `/usr/share/doc/liblapack3/copyright`)

- `BSD-3-clause`
- `BSD-3-clause-intel`

Source:

```console
$ apt-get source -qq --print-uris lapack=3.6.0-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.6.0-2ubuntu2.dsc' lapack_3.6.0-2ubuntu2.dsc 2873 SHA256:a2ef88a09b242d0527748a8bff88ed432dab1dc5b200e918c4ac7ca30af691a2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.6.0.orig.tar.gz' lapack_3.6.0.orig.tar.gz 6792324 SHA256:a9a0082c918fe14e377bbd570057616768dca76cbdc713457d8199aaa233ffc3
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.6.0-2ubuntu2.debian.tar.xz' lapack_3.6.0-2ubuntu2.debian.tar.xz 24556 SHA256:a713e29f24fca14d59937595a54f03cf0479416188c5911d5220f61299f31c47
```

### `dpkg` source package: `libalgorithm-diff-perl=1.19.03-1`

Binary Packages:

- `libalgorithm-diff-perl=1.19.03-1`

Licenses: (parsed from: `/usr/share/doc/libalgorithm-diff-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libalgorithm-diff-perl=1.19.03-1
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-diff-perl/libalgorithm-diff-perl_1.19.03-1.dsc' libalgorithm-diff-perl_1.19.03-1.dsc 2254 SHA256:4b073915c571575245d12a5ee880ef4453c9b600a5f4370ec74bc7fa90fb6549
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-diff-perl/libalgorithm-diff-perl_1.19.03.orig.tar.gz' libalgorithm-diff-perl_1.19.03.orig.tar.gz 34174 SHA256:30e84ac4b31d40b66293f7b1221331c5a50561a39d580d85004d9c1fff991751
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-diff-perl/libalgorithm-diff-perl_1.19.03-1.debian.tar.xz' libalgorithm-diff-perl_1.19.03-1.debian.tar.xz 4664 SHA256:2dcfd1e9506a9c2170d04ff1635cbb62ade68223641408eeea5c1f698efe1b66
```

### `dpkg` source package: `libalgorithm-diff-xs-perl=0.04-4build1`

Binary Packages:

- `libalgorithm-diff-xs-perl=0.04-4build1`

Licenses: (parsed from: `/usr/share/doc/libalgorithm-diff-xs-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libalgorithm-diff-xs-perl=0.04-4build1
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-diff-xs-perl/libalgorithm-diff-xs-perl_0.04-4build1.dsc' libalgorithm-diff-xs-perl_0.04-4build1.dsc 2283 SHA256:87d5f790a23bbefcbd8a1638f224a67d1d3526d09e876e13ee868758f36f5c25
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-diff-xs-perl/libalgorithm-diff-xs-perl_0.04.orig.tar.gz' libalgorithm-diff-xs-perl_0.04.orig.tar.gz 47699 SHA256:cea89b47e1f70fa78f55f3c405491ce36d3effd9980f5c5491edffa31aa77153
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-diff-xs-perl/libalgorithm-diff-xs-perl_0.04-4build1.debian.tar.xz' libalgorithm-diff-xs-perl_0.04-4build1.debian.tar.xz 2644 SHA256:87dedf5a004ca76a63105323a61dac60ba3f1efdff463dacc2dca3087e484723
```

### `dpkg` source package: `libalgorithm-merge-perl=0.08-3`

Binary Packages:

- `libalgorithm-merge-perl=0.08-3`

Licenses: (parsed from: `/usr/share/doc/libalgorithm-merge-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libalgorithm-merge-perl=0.08-3
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-merge-perl/libalgorithm-merge-perl_0.08-3.dsc' libalgorithm-merge-perl_0.08-3.dsc 2191 SHA256:91b957847cf0e27bae0d254f160aec3ba35316ea034f12cd0878e693b136cfa2
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-merge-perl/libalgorithm-merge-perl_0.08.orig.tar.gz' libalgorithm-merge-perl_0.08.orig.tar.gz 9915 SHA256:9c0688258a1dc4b83988053b9f9a98e7728cdb9b69a5008dcbd251d0f80816cf
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-merge-perl/libalgorithm-merge-perl_0.08-3.debian.tar.xz' libalgorithm-merge-perl_0.08-3.debian.tar.xz 2436 SHA256:241e8212e7b8607b7f5c6b7969d7bb1b62361eb013f0e48c28f8ef6390c7bce3
```

### `dpkg` source package: `libarchive=3.1.2-11ubuntu0.16.04.3`

Binary Packages:

- `libarchive13:amd64=3.1.2-11ubuntu0.16.04.3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libarchive=3.1.2-11ubuntu0.16.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.1.2-11ubuntu0.16.04.3.dsc' libarchive_3.1.2-11ubuntu0.16.04.3.dsc 2424 SHA256:ef8a3ac52bccecf473345c9e5c8ae75a4c79e950eefcc4e01c24a9f9687c0aaa
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.1.2.orig.tar.gz' libarchive_3.1.2.orig.tar.gz 4527540 SHA256:eb87eacd8fe49e8d90c8fdc189813023ccc319c5e752b01fb6ad0cc7b2c53d5e
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.1.2-11ubuntu0.16.04.3.debian.tar.xz' libarchive_3.1.2-11ubuntu0.16.04.3.debian.tar.xz 39568 SHA256:2d5b4f2dac2e0581c8e49f45e5de08c71b106a7a185dc3fbd8a55b83b6b085c7
```

### `dpkg` source package: `libassuan=2.4.2-2`

Binary Packages:

- `libassuan0:amd64=2.4.2-2`

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
$ apt-get source -qq --print-uris libassuan=2.4.2-2
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.4.2-2.dsc' libassuan_2.4.2-2.dsc 2104 SHA256:5a741a94b2faf19626691bf5b9121e7fd2e82335c3e34c5d84644488228bb713
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.4.2.orig.tar.bz2' libassuan_2.4.2.orig.tar.bz2 587631 SHA256:bb06dc81380b74bf1b64d5849be5c0409a336f3b4c45f20ac688e86d1b5bcb20
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.4.2-2.debian.tar.xz' libassuan_2.4.2-2.debian.tar.xz 12168 SHA256:39b6f31517857bde39ff86f1b4b5d122a676d91477dc79caafb720e4e36cd3d1
```

### `dpkg` source package: `libcap2=1:2.24-12`

Binary Packages:

- `libcap2:amd64=1:2.24-12`
- `libcap2-bin=1:2.24-12`

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`, `/usr/share/doc/libcap2-bin/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libcap2=1:2.24-12
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.24-12.dsc' libcap2_2.24-12.dsc 2211 SHA256:4db68746bd1fe7df6d29ae15c3605e4e1d0e44723580c05166144735c773ae14
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.24.orig.tar.xz' libcap2_2.24.orig.tar.xz 63264 SHA256:51cd1c568a2baf1e687573bd6117a94b07f33b46a05acaa50ee208792a830b79
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap2/libcap2_2.24-12.debian.tar.xz' libcap2_2.24-12.debian.tar.xz 18704 SHA256:34be2e791ec96095cc0b405e532874e8c79aeb2125981ebc6896a0ad0b999cf2
```

### `dpkg` source package: `liberror-perl=0.17-1.2`

Binary Packages:

- `liberror-perl=0.17-1.2`

Licenses: (parsed from: `/usr/share/doc/liberror-perl/copyright`)

- `Artistic`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris liberror-perl=0.17-1.2
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17-1.2.dsc' liberror-perl_0.17-1.2.dsc 1825 SHA256:d024e770bb970061e338798934a1862b5dd51ca99f04f6cdab1c5a58b30b4eba
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17.orig.tar.gz' liberror-perl_0.17.orig.tar.gz 17266 SHA256:2e8157981a77e87d37d26d8b6b3183560dddc541b491b0b32fcda010730b257c
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17-1.2.diff.gz' liberror-perl_0.17-1.2.diff.gz 3645 SHA256:26664db91daa76fdf78be37196df02067b2283deae1b4ac766923d7ef08c3fb8
```

### `dpkg` source package: `libffi=3.2.1-4`

Binary Packages:

- `libffi6:amd64=3.2.1-4`

Licenses: (parsed from: `/usr/share/doc/libffi6/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.2.1-4
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-4.dsc' libffi_3.2.1-4.dsc 1914 SHA256:e2bdb4202f1c8be9d3cec5bf459a4a1619f494241938d982d6029e15a8b1da9e
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1.orig.tar.gz' libffi_3.2.1.orig.tar.gz 940837 SHA256:d06ebb8e1d9a22d19e38d63fdb83954253f39bedc5d46232a05645685722ca37
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-4.debian.tar.xz' libffi_3.2.1-4.debian.tar.xz 8932 SHA256:4d7d5f9172e8a8d3e412ed47e14755e27a0657054a7786b578eb6327b0d08b2d
```

### `dpkg` source package: `libfile-fcntllock-perl=0.22-3`

Binary Packages:

- `libfile-fcntllock-perl=0.22-3`

Licenses: (parsed from: `/usr/share/doc/libfile-fcntllock-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libfile-fcntllock-perl=0.22-3
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfile-fcntllock-perl/libfile-fcntllock-perl_0.22-3.dsc' libfile-fcntllock-perl_0.22-3.dsc 2249 SHA256:dc57910fcce4130880aef85acbdb06650f6f1db67be65f6312c48e6ea5929ce9
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfile-fcntllock-perl/libfile-fcntllock-perl_0.22.orig.tar.gz' libfile-fcntllock-perl_0.22.orig.tar.gz 16994 SHA256:9a9abb2efff93ab73741a128d3f700e525273546c15d04e7c51c704ab09dbcdf
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfile-fcntllock-perl/libfile-fcntllock-perl_0.22-3.debian.tar.xz' libfile-fcntllock-perl_0.22-3.debian.tar.xz 2412 SHA256:dffb00f7f546a9eb9d47206143f0dfd1d982281d5b2b7f37f1812c9f8c2bffd8
```

### `dpkg` source package: `libgcrypt20=1.6.5-2ubuntu0.3`

Binary Packages:

- `libgcrypt20:amd64=1.6.5-2ubuntu0.3`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.6.5-2ubuntu0.3
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.6.5-2ubuntu0.3.dsc' libgcrypt20_1.6.5-2ubuntu0.3.dsc 2639 SHA256:81456ffe6f40a971beedb3ad88fcd801e24c45ec7e357b731d14f419f3f6df15
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.6.5.orig.tar.bz2' libgcrypt20_1.6.5.orig.tar.bz2 2549601 SHA256:f49ebc5842d455ae7019def33eb5a014a0f07a2a8353dc3aa50a76fd1dafa924
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.6.5-2ubuntu0.3.debian.tar.xz' libgcrypt20_1.6.5-2ubuntu0.3.debian.tar.xz 36472 SHA256:3c29fc316e9067088cd6954a2b4c55e7955829362be9c10e09fa33b5e94f2f6c
```

### `dpkg` source package: `libgpg-error=1.21-2ubuntu1`

Binary Packages:

- `libgpg-error0:amd64=1.21-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `GPL-2.1+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.21-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.21-2ubuntu1.dsc' libgpg-error_1.21-2ubuntu1.dsc 2306 SHA256:591fc35e29c7314e9dcbea0ed929afc563dd5e0a6be18d65d2480762353bd71f
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.21.orig.tar.bz2' libgpg-error_1.21.orig.tar.bz2 763186 SHA256:b7dbdb3cad63a740e9f0c632a1da32d4afdb694ec86c8625c98ea0691713b84d
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.21-2ubuntu1.debian.tar.xz' libgpg-error_1.21-2ubuntu1.debian.tar.xz 11988 SHA256:b67f4686d39ec678e860b28d05e07567ec6d43025c18b82c1e9a5dda07a00ed9
```

### `dpkg` source package: `libibverbs=1.1.8-1.1ubuntu2`

Binary Packages:

- `libibverbs-dev=1.1.8-1.1ubuntu2`
- `libibverbs1=1.1.8-1.1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libibverbs-dev/copyright`, `/usr/share/doc/libibverbs1/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libibverbs=1.1.8-1.1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libibverbs/libibverbs_1.1.8-1.1ubuntu2.dsc' libibverbs_1.1.8-1.1ubuntu2.dsc 1666 SHA256:85d0a6840eaf23064a577e4bbe031d8c79fc2d2fd19996f891639a87067d9437
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libibverbs/libibverbs_1.1.8.orig.tar.gz' libibverbs_1.1.8.orig.tar.gz 406548 SHA256:7c766e679e1e6dbcb37bdfc624c64310787e3a380baf7ee1eebde39c6991828f
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libibverbs/libibverbs_1.1.8-1.1ubuntu2.debian.tar.xz' libibverbs_1.1.8-1.1ubuntu2.debian.tar.xz 6952 SHA256:9149a3a6353b55aa3704e259c60f2dd3fdb3fad74e9e6cb01cbdf030cdcd7f47
```

### `dpkg` source package: `libidn=1.32-3ubuntu1.2`

Binary Packages:

- `libidn11:amd64=1.32-3ubuntu1.2`

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
$ apt-get source -qq --print-uris libidn=1.32-3ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.32-3ubuntu1.2.dsc' libidn_1.32-3ubuntu1.2.dsc 2303 SHA256:7e8ac6585e9ab5e0fce89ff91ff1972709da56551814973b84ef36e6c84072e4
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.32.orig.tar.gz' libidn_1.32.orig.tar.gz 3483155 SHA256:ba5d5afee2beff703a34ee094668da5c6ea5afa38784cebba8924105e185c4f5
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.32-3ubuntu1.2.debian.tar.xz' libidn_1.32-3ubuntu1.2.debian.tar.xz 84724 SHA256:f898167a432eeb656fe372b0565af7ab26f8eeaf269cfd768d34fa97fcaa3a4c
```

### `dpkg` source package: `libjsoncpp=1.7.2-1`

Binary Packages:

- `libjsoncpp1:amd64=1.7.2-1`

Licenses: (parsed from: `/usr/share/doc/libjsoncpp1/copyright`)

- `Expat_or_PublicDomain_or_DualExpatPD`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libjsoncpp=1.7.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.7.2-1.dsc' libjsoncpp_1.7.2-1.dsc 2078 SHA256:1a639f002cb4405c80b6ab9d0db8739b692ff83a5c7221aca325ba1dfc90b760
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.7.2.orig.tar.gz' libjsoncpp_1.7.2.orig.tar.gz 205391 SHA256:2179a7df19c1c6dc87e02c65b847efc914625a9b87df3e443d9610fc70c0f557
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.7.2-1.debian.tar.xz' libjsoncpp_1.7.2-1.debian.tar.xz 7312 SHA256:fc2ce2284d00dffb1f18f894052aa51162b8d009f9d150d2d80dfda8285d8a37
```

### `dpkg` source package: `libksba=1.3.3-1ubuntu0.16.04.1`

Binary Packages:

- `libksba8:amd64=1.3.3-1ubuntu0.16.04.1`

Licenses: (parsed from: `/usr/share/doc/libksba8/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris libksba=1.3.3-1ubuntu0.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.3.3-1ubuntu0.16.04.1.dsc' libksba_1.3.3-1ubuntu0.16.04.1.dsc 2266 SHA256:51fb299926f8b21d1adf2e36be30305d842ab69c3aaf46d658c53f1c5e40eae5
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.3.3.orig.tar.bz2' libksba_1.3.3.orig.tar.bz2 618698 SHA256:0c7f5ffe34d0414f6951d9880a46fcc2985c487f7c36369b9f11ad41131c7786
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.3.3-1ubuntu0.16.04.1.debian.tar.xz' libksba_1.3.3-1ubuntu0.16.04.1.debian.tar.xz 13460 SHA256:1bc2be1d2d4e60da5296135727ddae5e688d2e3df26e6afa085553887f263023
```

### `dpkg` source package: `libpciaccess=0.13.4-1`

Binary Packages:

- `libpciaccess0:amd64=0.13.4-1`

Licenses: (parsed from: `/usr/share/doc/libpciaccess0/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libpciaccess=0.13.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpciaccess/libpciaccess_0.13.4-1.dsc' libpciaccess_0.13.4-1.dsc 2060 SHA256:c7413e1b3804ae83667d0144eabb5bcba046a16c12f20f94d861edb71a9f67e8
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpciaccess/libpciaccess_0.13.4.orig.tar.gz' libpciaccess_0.13.4.orig.tar.gz 440390 SHA256:74d92bda448e6fdb64fee4e0091255f48d625d07146a121653022ed3a0ca1f2f
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpciaccess/libpciaccess_0.13.4-1.diff.gz' libpciaccess_0.13.4-1.diff.gz 24145 SHA256:72e06952d417e15ee23766815f8f10555c2504189f9420a3b6df0be25e972650
```

### `dpkg` source package: `libpipeline=1.4.1-2`

Binary Packages:

- `libpipeline1:amd64=1.4.1-2`

Licenses: (parsed from: `/usr/share/doc/libpipeline1/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libpipeline=1.4.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpipeline/libpipeline_1.4.1-2.dsc' libpipeline_1.4.1-2.dsc 2109 SHA256:6c9f780b8e0d3f9e82964d35c8d750266140ddacae3b676d2413752c680f4702
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpipeline/libpipeline_1.4.1.orig.tar.gz' libpipeline_1.4.1.orig.tar.gz 805172 SHA256:da46d7b20163aadb9db2faae483f734e9096a7550c84b94029abeab62dd1b9ee
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpipeline/libpipeline_1.4.1-2.debian.tar.xz' libpipeline_1.4.1-2.debian.tar.xz 197384 SHA256:dbd0c3af6d12cf2adeef06529394c42c4082822f0f75d914c59d61db4a400089
```

### `dpkg` source package: `libseccomp=2.3.1-2.1ubuntu2~16.04.1`

Binary Packages:

- `libseccomp2:amd64=2.3.1-2.1ubuntu2~16.04.1`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2`
- `LGPL-2.0+`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.3.1-2.1ubuntu2~16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.3.1-2.1ubuntu2~16.04.1.dsc' libseccomp_2.3.1-2.1ubuntu2~16.04.1.dsc 2262 SHA256:72ce2268693b51af6a4eaf164ebe1521feecb856a42e4e25eae598957f1ca6f7
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.3.1.orig.tar.gz' libseccomp_2.3.1.orig.tar.gz 552299 SHA256:ff5bdd2168790f1979e24eaa498f8606c2f2d96f08a8dc4006a2e88affa4562b
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.3.1-2.1ubuntu2~16.04.1.debian.tar.xz' libseccomp_2.3.1-2.1ubuntu2~16.04.1.debian.tar.xz 17400 SHA256:53bfdab8af41e45fbd041194abf92866b69b29d9cbfb7c1577a2c34be509fabe
```

### `dpkg` source package: `libselinux=2.4-3build2`

Binary Packages:

- `libselinux1:amd64=2.4-3build2`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.4-3build2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.4-3build2.dsc' libselinux_2.4-3build2.dsc 2491 SHA256:c14dbd5eff5dfd66c41b9ed3d09e1186975b233c8a2a59720ccb8b318c85883c
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.4.orig.tar.gz' libselinux_2.4.orig.tar.gz 165931 SHA256:46043091f4c5ba4f43e8d3715f30d665a2d571c9126c1f03945c9ea4ed380f7b
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.4-3build2.debian.tar.xz' libselinux_2.4-3build2.debian.tar.xz 23216 SHA256:96f1c0526970460e6b5f64ea4d2f7ecabe06e80e23e83e4feccecb955e1ca956
```

### `dpkg` source package: `libsemanage=2.3-1build3`

Binary Packages:

- `libsemanage-common=2.3-1build3`
- `libsemanage1:amd64=2.3-1build3`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.3-1build3
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.3-1build3.dsc' libsemanage_2.3-1build3.dsc 2497 SHA256:920f1f389316617711778cbe83eb36f62d59a2ebb3b1488f75c41014c0bc684c
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.3.orig.tar.gz' libsemanage_2.3.orig.tar.gz 138231 SHA256:03e09e35e611c286e446bef92b6023ef2623815996f5a53394bb02e49a312e4b
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.3-1build3.debian.tar.xz' libsemanage_2.3-1build3.debian.tar.xz 15056 SHA256:d4f90c66ba911f72c5195da957cdcacd91a583e64ad06c01bf5b692387ee3d33
```

### `dpkg` source package: `libsepol=2.4-2`

Binary Packages:

- `libsepol1:amd64=2.4-2`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.4-2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.4-2.dsc' libsepol_2.4-2.dsc 1768 SHA256:fca86fc62f736baf96ac2061327553b74b1b34f7ace89d982baa5374c24e2841
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.4.orig.tar.gz' libsepol_2.4.orig.tar.gz 570822 SHA256:299015d59932404c6b69d365fdecffe5c0e2f9c44e08b47286a4bfc02ee49659
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.4-2.debian.tar.xz' libsepol_2.4-2.debian.tar.xz 13188 SHA256:85e50e42c49dee9b21b5dda5fb754ce6d10482a4641e9f088da103b9178c2c1d
```

### `dpkg` source package: `libtasn1-6=4.7-3ubuntu0.16.04.2`

Binary Packages:

- `libtasn1-6:amd64=4.7-3ubuntu0.16.04.2`

Licenses: (parsed from: `/usr/share/doc/libtasn1-6/copyright`)

- `GFDL-1.3`
- `GPL-3`
- `LGPL`
- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libtool=2.4.6-0.1`

Binary Packages:

- `libltdl-dev:amd64=2.4.6-0.1`
- `libltdl7:amd64=2.4.6-0.1`
- `libtool=2.4.6-0.1`

Licenses: (parsed from: `/usr/share/doc/libltdl-dev/copyright`, `/usr/share/doc/libltdl7/copyright`, `/usr/share/doc/libtool/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libtool=2.4.6-0.1
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6-0.1.dsc' libtool_2.4.6-0.1.dsc 2080 SHA256:c0ec24bc1e892564840061e64cf288e018484d733208d97815f3b12f043088b6
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz' libtool_2.4.6.orig.tar.xz 973080 SHA256:7c87a8c2c8c0fc9cd5019e402bed4292462d00a718a7cd5f11218153bf28b26f
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6-0.1.debian.tar.xz' libtool_2.4.6-0.1.debian.tar.xz 19332 SHA256:1b9d3e0f9d177d259206cdda69d6cec8dd04df14cbb064b71869936ca5f2722f
```

### `dpkg` source package: `libusb=2:0.1.12-28`

Binary Packages:

- `libusb-0.1-4:amd64=2:0.1.12-28`

Licenses: (parsed from: `/usr/share/doc/libusb-0.1-4/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris libusb=2:0.1.12-28
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb/libusb_0.1.12-28.dsc' libusb_0.1.12-28.dsc 2012 SHA256:be0a89935a8764dc64d40a28959397e6582261eef2152c4ce90a13490471dc5f
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb/libusb_0.1.12.orig.tar.gz' libusb_0.1.12.orig.tar.gz 389343 SHA256:37f6f7d9de74196eb5fc0bbe0aea9b5c939de7f500acba3af6fd643f3b538b44
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libusb/libusb_0.1.12-28.debian.tar.xz' libusb_0.1.12-28.debian.tar.xz 21524 SHA256:eaf2314902b0bb9de3e1fa8c9abfcecea7b78c9824048016beaca34f7cc4351b
```

### `dpkg` source package: `libxml2=2.9.3+dfsg1-1ubuntu0.5`

Binary Packages:

- `libxml2:amd64=2.9.3+dfsg1-1ubuntu0.5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.3+dfsg1-1ubuntu0.5
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.3+dfsg1-1ubuntu0.5.dsc' libxml2_2.9.3+dfsg1-1ubuntu0.5.dsc 2756 SHA256:9c79dcce7c9d1232b01146a8ff5badf7a0575e380b0748c71b94073a3b38eddb
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.3+dfsg1.orig.tar.xz' libxml2_2.9.3+dfsg1.orig.tar.xz 2475440 SHA256:d6b7686fa12c70dd9ce7c7d97c84471b5afed1c176538df8c670754d8c206079
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.3+dfsg1-1ubuntu0.5.debian.tar.xz' libxml2_2.9.3+dfsg1-1ubuntu0.5.debian.tar.xz 55504 SHA256:aaf38127e4bf7e643024f2d4421c70689ac45e29db115e1d8984be8050bc8e84
```

### `dpkg` source package: `libyaml=0.1.6-3`

Binary Packages:

- `libyaml-0-2:amd64=0.1.6-3`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.1.6-3
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.6-3.dsc' libyaml_0.1.6-3.dsc 1893 SHA256:ed5bc299d3bcc0b038206f8780639d4682e65f521dff571b9336e2f8626d0011
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.6.orig.tar.gz' libyaml_0.1.6.orig.tar.gz 503012 SHA256:7da6971b4bd08a986dd2a61353bc422362bd0edcc67d7ebaac68c95f74182749
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.6-3.debian.tar.xz' libyaml_0.1.6-3.debian.tar.xz 4268 SHA256:fd567e6918903833e5c4f1f87254c550eca07c2bba1ccbe6031da33243cf4297
```

### `dpkg` source package: `linux=4.4.0-112.135`

Binary Packages:

- `linux-libc-dev:amd64=4.4.0-112.135`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `GPL-2`
- `redpine-signals`

Source:

```console
$ apt-get source -qq --print-uris linux=4.4.0-112.135
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_4.4.0-112.135.dsc' linux_4.4.0-112.135.dsc 9712 SHA256:9804c7bd06a1ef07ff9094979d44e8fa7a25e539d5d9088f44ce6fff43d6cc15
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_4.4.0.orig.tar.gz' linux_4.4.0.orig.tar.gz 132860730 SHA256:730e75919b5d30a9bc934ccb300eaedfdf44994ca9ee1d07a46901c46c221357
'http://archive.ubuntu.com/ubuntu/pool/main/l/linux/linux_4.4.0-112.135.diff.gz' linux_4.4.0-112.135.diff.gz 13880183 SHA256:b5b6adc87ea98ffa48d31aee2ee5ec301a01c2b4fa64fa20d1564a4e95bdd6ad
```

### `dpkg` source package: `lksctp-tools=1.0.16+dfsg-3`

Binary Packages:

- `libsctp-dev=1.0.16+dfsg-3`
- `libsctp1:amd64=1.0.16+dfsg-3`

Licenses: (parsed from: `/usr/share/doc/libsctp-dev/copyright`, `/usr/share/doc/libsctp1/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris lksctp-tools=1.0.16+dfsg-3
'http://archive.ubuntu.com/ubuntu/pool/main/l/lksctp-tools/lksctp-tools_1.0.16+dfsg-3.dsc' lksctp-tools_1.0.16+dfsg-3.dsc 2037 SHA256:8c77a6faa221ae9c1ab8f404585badd88542d1507f37d583c23b0c816a562c78
'http://archive.ubuntu.com/ubuntu/pool/main/l/lksctp-tools/lksctp-tools_1.0.16+dfsg.orig.tar.gz' lksctp-tools_1.0.16+dfsg.orig.tar.gz 206656 SHA256:6935a57bdc052805796f538257eb78e23af02481e01f3d72dc0fa00688bdd502
'http://archive.ubuntu.com/ubuntu/pool/main/l/lksctp-tools/lksctp-tools_1.0.16+dfsg-3.debian.tar.xz' lksctp-tools_1.0.16+dfsg-3.debian.tar.xz 9300 SHA256:27fd297b40e1087b447c5eabe5029ed8c4e33f8513324b6801750efa89589378
```

### `dpkg` source package: `log4cxx=0.10.0-10ubuntu1`

Binary Packages:

- `liblog4cxx-dev=0.10.0-10ubuntu1`
- `liblog4cxx10-dev=0.10.0-10ubuntu1`
- `liblog4cxx10v5:amd64=0.10.0-10ubuntu1`

Licenses: (parsed from: `/usr/share/doc/liblog4cxx-dev/copyright`, `/usr/share/doc/liblog4cxx10-dev/copyright`, `/usr/share/doc/liblog4cxx10v5/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris log4cxx=0.10.0-10ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/l/log4cxx/log4cxx_0.10.0-10ubuntu1.dsc' log4cxx_0.10.0-10ubuntu1.dsc 2357 SHA256:1542a14c438984569db723d75b30759caec87c9fa026816051e7645fe68baf94
'http://archive.ubuntu.com/ubuntu/pool/universe/l/log4cxx/log4cxx_0.10.0.orig.tar.gz' log4cxx_0.10.0.orig.tar.gz 1667425 SHA256:0de0396220a9566a580166e66b39674cb40efd2176f52ad2c65486c99c920c8c
'http://archive.ubuntu.com/ubuntu/pool/universe/l/log4cxx/log4cxx_0.10.0-10ubuntu1.debian.tar.xz' log4cxx_0.10.0-10ubuntu1.debian.tar.xz 14580 SHA256:246017b62c4ce215310bf888b20642f668007b7736f7c70ab221b468cb42becb
```

### `dpkg` source package: `lsb=9.20160110ubuntu0.2`

Binary Packages:

- `lsb-base=9.20160110ubuntu0.2`
- `lsb-release=9.20160110ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`, `/usr/share/doc/lsb-release/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=9.20160110ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_9.20160110ubuntu0.2.dsc' lsb_9.20160110ubuntu0.2.dsc 2160 SHA256:673883614cba3ffc8efef9103ee80164e4744abf3aac80abd7535f9d027886c5
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_9.20160110ubuntu0.2.tar.xz' lsb_9.20160110ubuntu0.2.tar.xz 57832 SHA256:deb95383b904e6014bfa1efca7700b0a9a6596f2b9afbcdd52de8b75d64e2d3a
```

### `dpkg` source package: `lvm2=2.02.133-1ubuntu10`

Binary Packages:

- `libdevmapper1.02.1:amd64=2:1.02.110-1ubuntu10`

Licenses: (parsed from: `/usr/share/doc/libdevmapper1.02.1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris lvm2=2.02.133-1ubuntu10
'http://archive.ubuntu.com/ubuntu/pool/main/l/lvm2/lvm2_2.02.133-1ubuntu10.dsc' lvm2_2.02.133-1ubuntu10.dsc 3151 SHA256:49b49c886da1f5b5d078875a025ee5f37d049e77c3abe49568b3b6fd7babb5de
'http://archive.ubuntu.com/ubuntu/pool/main/l/lvm2/lvm2_2.02.133.orig.tar.xz' lvm2_2.02.133.orig.tar.xz 1356636 SHA256:79c6fc85f28b6af1870d7e3b06d8339270746a5028f47a5b412f4394156ed846
'http://archive.ubuntu.com/ubuntu/pool/main/l/lvm2/lvm2_2.02.133-1ubuntu10.debian.tar.xz' lvm2_2.02.133-1ubuntu10.debian.tar.xz 42320 SHA256:54f13369a8576c98472dcc9121e3ac4fd69f3af02d2aa4a7aeb0224e87176d1e
```

### `dpkg` source package: `lz4=0.0~r131-2ubuntu2`

Binary Packages:

- `liblz4-1:amd64=0.0~r131-2ubuntu2`
- `liblz4-dev:amd64=0.0~r131-2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`, `/usr/share/doc/liblz4-dev/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=0.0~r131-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0~r131-2ubuntu2.dsc' lz4_0.0~r131-2ubuntu2.dsc 2007 SHA256:123f23834f83a4dca6d74a611cc0294491bd339d2e0be04d65783d6debbccc02
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0~r131.orig.tar.gz' lz4_0.0~r131.orig.tar.gz 133784 SHA256:9d4d00614d6b9dec3114b33d1224b6262b99ace24434c53487a0c8fd0b18cfed
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0~r131-2ubuntu2.debian.tar.xz' lz4_0.0~r131-2ubuntu2.debian.tar.xz 5224 SHA256:c0afb4a440b1e7b803e2d9dcf616be539c1d16baebc681cdf837000e4c5077b7
```

### `dpkg` source package: `lzo2=2.08-1.2`

Binary Packages:

- `liblzo2-2:amd64=2.08-1.2`

Licenses: (parsed from: `/usr/share/doc/liblzo2-2/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lzo2=2.08-1.2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lzo2/lzo2_2.08-1.2.dsc' lzo2_2.08-1.2.dsc 1804 SHA256:09eabe81d6f631a29cc603843b27ab914704726a1400a2219cf83b1da4e72892
'http://archive.ubuntu.com/ubuntu/pool/main/l/lzo2/lzo2_2.08.orig.tar.gz' lzo2_2.08.orig.tar.gz 589045 SHA256:ac1b3e4dee46febe9fd28737eb7f5692d3232ef1a01da10444394c3d47536614
'http://archive.ubuntu.com/ubuntu/pool/main/l/lzo2/lzo2_2.08-1.2.debian.tar.xz' lzo2_2.08-1.2.debian.tar.xz 5996 SHA256:5a9aa3a2432f5d4f689b24c64ea3daec7646e736da37721388ae88b670dd99bc
```

### `dpkg` source package: `make-dfsg=4.1-6`

Binary Packages:

- `make=4.1-6`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.1-6
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1-6.dsc' make-dfsg_4.1-6.dsc 1840 SHA256:c28066ebe2002e4791ac3a4e808d8a5f0bed75eff8e0462449a08ab767153361
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1.orig.tar.gz' make-dfsg_4.1.orig.tar.gz 1350231 SHA256:b3ed04fb6718289e4a430afbe2df6ecba9177aad9f6d09aaf38e5409262ca8a3
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1-6.diff.gz' make-dfsg_4.1-6.diff.gz 42552 SHA256:b647e6961a9707ea009de85fb65f8156143deab139be1636a200abdffe5e91c3
```

### `dpkg` source package: `makedev=2.3.1-93ubuntu2~ubuntu16.04.1`

Binary Packages:

- `makedev=2.3.1-93ubuntu2~ubuntu16.04.1`

Licenses: (parsed from: `/usr/share/doc/makedev/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris makedev=2.3.1-93ubuntu2~ubuntu16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/m/makedev/makedev_2.3.1-93ubuntu2~ubuntu16.04.1.dsc' makedev_2.3.1-93ubuntu2~ubuntu16.04.1.dsc 1855 SHA256:eb4f5db89cafe3d55b12f3c59041c6b0691936a0a69433e69f47fc55e09811a1
'http://archive.ubuntu.com/ubuntu/pool/main/m/makedev/makedev_2.3.1.orig.tar.gz' makedev_2.3.1.orig.tar.gz 9924 SHA256:8599712f2b2b3778eea344f59e1512cea284e802560317fac436585885a41dfa
'http://archive.ubuntu.com/ubuntu/pool/main/m/makedev/makedev_2.3.1-93ubuntu2~ubuntu16.04.1.diff.gz' makedev_2.3.1-93ubuntu2~ubuntu16.04.1.diff.gz 50340 SHA256:caf4da6a9b3903b03536c93a54aea44bf3cf74af7444e79038de12eecc73841b
```

### `dpkg` source package: `manpages=4.04-2`

Binary Packages:

- `manpages=4.04-2`
- `manpages-dev=4.04-2`

Licenses: (parsed from: `/usr/share/doc/manpages/copyright`, `/usr/share/doc/manpages-dev/copyright`)

- `BSD-3-clause`
- `BSD-4-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `LDPv1`
- `freely-redistributable`
- `henry-spencer-regex`
- `public-domain`
- `verbatim`

Source:

```console
$ apt-get source -qq --print-uris manpages=4.04-2
'http://archive.ubuntu.com/ubuntu/pool/main/m/manpages/manpages_4.04-2.dsc' manpages_4.04-2.dsc 1954 SHA256:66f7433df6efa70384de64d0d9af68f6ece56c82df30741698c023059476d814
'http://archive.ubuntu.com/ubuntu/pool/main/m/manpages/manpages_4.04.orig.tar.xz' manpages_4.04.orig.tar.xz 1426380 SHA256:8fe1950df65ccf2b43ed64c329ccce0eedb2f7b42af12beff03d3aa609ee1f6d
'http://archive.ubuntu.com/ubuntu/pool/main/m/manpages/manpages_4.04-2.debian.tar.xz' manpages_4.04-2.debian.tar.xz 74772 SHA256:fadd91777c4e724d4ba746974354d4eaa63870a4e0a08bfb3e58bb533239a3d3
```

### `dpkg` source package: `mawk=1.3.3-17ubuntu2`

Binary Packages:

- `mawk=1.3.3-17ubuntu2`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.3-17ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3-17ubuntu2.dsc' mawk_1.3.3-17ubuntu2.dsc 1843 SHA256:d9058945d45b0e9ee5dd1c9c2e16d8f28b96d5c2e777f743594096fa2a5e277b
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3.orig.tar.gz' mawk_1.3.3.orig.tar.gz 209942 SHA256:32649c46063d4ef0777a12ae6e9a26bcc920833d54e1abca7edb8d37481e7485
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3-17ubuntu2.diff.gz' mawk_1.3.3-17ubuntu2.diff.gz 63882 SHA256:670103046767474be29e80f2143dc67e3d0b958972f5942c3df94883f978eded
```

### `dpkg` source package: `mercurial=3.7.3-1ubuntu1`

Binary Packages:

- `mercurial=3.7.3-1ubuntu1`
- `mercurial-common=3.7.3-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mercurial=3.7.3-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_3.7.3-1ubuntu1.dsc' mercurial_3.7.3-1ubuntu1.dsc 2365 SHA256:2461b88acae5afa9a57a9a3ac94d54570d5da3b91ac94f51f52a24a19c5ae246
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_3.7.3.orig.tar.gz' mercurial_3.7.3.orig.tar.gz 4636732 SHA256:c099c42d74e2d520b61dd372cd996b0fa7605c06617834fd7b13c79b9a9a5b30
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_3.7.3-1ubuntu1.debian.tar.xz' mercurial_3.7.3-1ubuntu1.debian.tar.xz 45628 SHA256:0eb961f9a010443a8b3376404cca8c23a913f166df0a4fc5d22a983ffa90313b
```

### `dpkg` source package: `mime-support=3.59ubuntu1`

Binary Packages:

- `mime-support=3.59ubuntu1`

Licenses: (parsed from: `/usr/share/doc/mime-support/copyright`)

- `Bellcore`
- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris mime-support=3.59ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mime-support/mime-support_3.59ubuntu1.dsc' mime-support_3.59ubuntu1.dsc 1711 SHA256:37703b2273222f23dd8ad048f898a381412df0a76473047e0b7757a8043ff354
'http://archive.ubuntu.com/ubuntu/pool/main/m/mime-support/mime-support_3.59ubuntu1.tar.gz' mime-support_3.59ubuntu1.tar.gz 37508 SHA256:55ee4350da8425fb65e7c9b60518e20de09c5a72d08148e644fcefe7abf9c83d
```

### `dpkg` source package: `mpclib3=1.0.3-1`

Binary Packages:

- `libmpc3:amd64=1.0.3-1`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris mpclib3=1.0.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.0.3-1.dsc' mpclib3_1.0.3-1.dsc 1940 SHA256:4b424e1c6063d48fd0d045b5afe37004346dae267ced0994fa8e11ff41cada45
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.0.3.orig.tar.gz' mpclib3_1.0.3.orig.tar.gz 669925 SHA256:617decc6ea09889fb08ede330917a00b16809b8db88c29c31bfbb49cbf88ecc3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.0.3-1.diff.gz' mpclib3_1.0.3-1.diff.gz 3684 SHA256:5a3fe9a7eddb4428d42e95f5919cce517f17411acdb2a73013a8f1a2bb246565
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2-1.dsc' mpdecimal_2.4.2-1.dsc 1893 SHA256:5bc782829357ebc9f0c12084642319e5ac89784a119433f8bfba7a11008d7c13
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2.orig.tar.gz' mpdecimal_2.4.2.orig.tar.gz 2271529 SHA256:83c628b90f009470981cf084c5418329c88b19835d8af3691b930afccb7d79c7
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2-1.debian.tar.xz' mpdecimal_2.4.2-1.debian.tar.xz 5172 SHA256:b95fb775fd04a7ad34fa5bd2c222b49ee2dfd7f0e15295dbd3f7fb86a9b0194b
```

### `dpkg` source package: `mpfr4=3.1.4-1`

Binary Packages:

- `libmpfr4:amd64=3.1.4-1`

Licenses: (parsed from: `/usr/share/doc/libmpfr4/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=3.1.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_3.1.4-1.dsc' mpfr4_3.1.4-1.dsc 1965 SHA256:98c867cd9e2d82fd9f1bae851a3ec8e76aa35d9e54d9e0d75a2fcd97f08992a9
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_3.1.4.orig.tar.xz' mpfr4_3.1.4.orig.tar.xz 1122152 SHA256:761413b16d749c53e2bfd2b1dfaa3b027b0e793e404b90b5fbaeef60af6517f5
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_3.1.4-1.debian.tar.xz' mpfr4_3.1.4-1.debian.tar.xz 9656 SHA256:e0562521ac0ef9fc2039ef1305962ee1ad529ae2210e197cee0080b1facc4d60
```

### `dpkg` source package: `mpi-defaults=1.4`

Binary Packages:

- `mpi-default-bin=1.4`
- `mpi-default-dev=1.4`

Licenses: (parsed from: `/usr/share/doc/mpi-default-bin/copyright`, `/usr/share/doc/mpi-default-dev/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mpi-defaults=1.4
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mpi-defaults/mpi-defaults_1.4.dsc' mpi-defaults_1.4.dsc 2569 SHA256:89e9088d21d774eefebcf9c487c67a3f133a1991466bf474c68a987dd672ef08
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mpi-defaults/mpi-defaults_1.4.tar.xz' mpi-defaults_1.4.tar.xz 4544 SHA256:aa85c486ad60c23eb6d8c44353e5fa1985e935314d54b2d5b86f8fb844386ce3
```

### `dpkg` source package: `ncurses=6.0+20160213-1ubuntu1`

Binary Packages:

- `libncurses5:amd64=6.0+20160213-1ubuntu1`
- `libncursesw5:amd64=6.0+20160213-1ubuntu1`
- `libtinfo5:amd64=6.0+20160213-1ubuntu1`
- `ncurses-base=6.0+20160213-1ubuntu1`
- `ncurses-bin=6.0+20160213-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=6.0+20160213-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.0+20160213-1ubuntu1.dsc' ncurses_6.0+20160213-1ubuntu1.dsc 4379 SHA256:16628fbe5a690f6f8d147a54d0ba6900a0afeaa51d318475781ce3f14df1ca79
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.0+20160213.orig.tar.gz' ncurses_6.0+20160213.orig.tar.gz 3153008 SHA256:20269c2dd62a311b9a3fb9f25638d35a057a5ece5f8d6caf4e70a3da6f01082c
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.0+20160213-1ubuntu1.debian.tar.xz' ncurses_6.0+20160213-1ubuntu1.debian.tar.xz 54496 SHA256:9551738e1bdc425d12897cc459ce5ce40b5e12530b144b731c0a7b3e077c07c7
```

### `dpkg` source package: `netifaces=0.10.4-0.1build2`

Binary Packages:

- `python-netifaces=0.10.4-0.1build2`

Licenses: (parsed from: `/usr/share/doc/python-netifaces/copyright`)

- `MIT-style`

Source:

```console
$ apt-get source -qq --print-uris netifaces=0.10.4-0.1build2
'http://archive.ubuntu.com/ubuntu/pool/main/n/netifaces/netifaces_0.10.4-0.1build2.dsc' netifaces_0.10.4-0.1build2.dsc 2445 SHA256:e46a3f6cc4610341fbcc2ef2a2ef9f02749e502f36d23bcc8237692dd9ad4b38
'http://archive.ubuntu.com/ubuntu/pool/main/n/netifaces/netifaces_0.10.4.orig.tar.gz' netifaces_0.10.4.orig.tar.gz 22969 SHA256:9656a169cb83da34d732b0eb72b39373d48774aee009a3d1272b7ea2ce109cde
'http://archive.ubuntu.com/ubuntu/pool/main/n/netifaces/netifaces_0.10.4-0.1build2.debian.tar.xz' netifaces_0.10.4-0.1build2.debian.tar.xz 8392 SHA256:74683411b2e5e3ddeaea0ff59152406437899abec98cc7e5b93eeeef7c7d437c
```

### `dpkg` source package: `nettle=3.2-1ubuntu0.16.04.1`

Binary Packages:

- `libhogweed4:amd64=3.2-1ubuntu0.16.04.1`
- `libnettle6:amd64=3.2-1ubuntu0.16.04.1`

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
$ apt-get source -qq --print-uris nettle=3.2-1ubuntu0.16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.2-1ubuntu0.16.04.1.dsc' nettle_3.2-1ubuntu0.16.04.1.dsc 2200 SHA256:15cbaa7c21e695c264ee3ec33be7ead629816f34cd0e2ea910300d9f6f084835
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.2.orig.tar.gz' nettle_3.2.orig.tar.gz 1879604 SHA256:ea4283def236413edab5a4cf9cf32adf540c8df1b9b67641cfc2302fca849d97
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.2-1ubuntu0.16.04.1.debian.tar.xz' nettle_3.2-1ubuntu0.16.04.1.debian.tar.xz 21340 SHA256:49e9715ec8f211831efeaa90122fb16126e39d2cf0739fecd572621b5e55a097
```

### `dpkg` source package: `nose=1.3.7-1`

Binary Packages:

- `python-nose=1.3.7-1`

Licenses: (parsed from: `/usr/share/doc/python-nose/copyright`)

- `Expat`
- `LGPL`
- `LGPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris nose=1.3.7-1
'http://archive.ubuntu.com/ubuntu/pool/main/n/nose/nose_1.3.7-1.dsc' nose_1.3.7-1.dsc 2321 SHA256:ac09eaf25a19adfbf5dd712035fb1daaeae515d8b0a24829702c011162a62031
'http://archive.ubuntu.com/ubuntu/pool/main/n/nose/nose_1.3.7.orig.tar.gz' nose_1.3.7.orig.tar.gz 280488 SHA256:f1bffef9cbc82628f6e7d7b40d7e255aefaa1adb6a1b1d26c69a8b79e6208a98
'http://archive.ubuntu.com/ubuntu/pool/main/n/nose/nose_1.3.7-1.debian.tar.xz' nose_1.3.7-1.debian.tar.xz 11148 SHA256:02ffafd1f53e7be0b8967f1fc0c4d028f358ed32ea3fb1da43fe6a7090934b47
```

### `dpkg` source package: `npth=1.2-3`

Binary Packages:

- `libnpth0:amd64=1.2-3`

Licenses: (parsed from: `/usr/share/doc/libnpth0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris npth=1.2-3
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.2-3.dsc' npth_1.2-3.dsc 1960 SHA256:457abe6599eda4ab9f4dc73a4ee1e250269febe333e8a660716544a16d8552de
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.2.orig.tar.bz2' npth_1.2.orig.tar.bz2 298735 SHA256:6ddbdddb2cf49a4723f9d1ad6563c480d6760dcb63cb7726b8fc3bc2e1b6c08a
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.2-3.debian.tar.xz' npth_1.2-3.debian.tar.xz 10216 SHA256:b63d662bf8b2ad834c1dce75ae53af592c4b2d9d1e70ddc6ef82c98d7321045b
```

### `dpkg` source package: `numactl=2.0.11-1ubuntu1`

Binary Packages:

- `libnuma-dev:amd64=2.0.11-1ubuntu1`
- `libnuma1:amd64=2.0.11-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libnuma-dev/copyright`, `/usr/share/doc/libnuma1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris numactl=2.0.11-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.11-1ubuntu1.dsc' numactl_2.0.11-1ubuntu1.dsc 2177 SHA256:0cf02f9888ecd10bbed97b3b3d9dd41ea6a224b6ce7489298aeec63601ec5cc5
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.11.orig.tar.gz' numactl_2.0.11.orig.tar.gz 408175 SHA256:450c091235f891ee874a8651b179c30f57a1391ca5c4673354740ba65e527861
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.11-1ubuntu1.diff.gz' numactl_2.0.11-1ubuntu1.diff.gz 7058 SHA256:97cc0d78192a333050427d18d715b070ed659c9e2568fd1b189e8f0f49a5ddef
```

### `dpkg` source package: `ocl-icd=2.2.8-1`

Binary Packages:

- `ocl-icd-libopencl1:amd64=2.2.8-1`

Licenses: (parsed from: `/usr/share/doc/ocl-icd-libopencl1/copyright`)

- `BSD-2-Clause`

Source:

```console
$ apt-get source -qq --print-uris ocl-icd=2.2.8-1
'http://archive.ubuntu.com/ubuntu/pool/main/o/ocl-icd/ocl-icd_2.2.8-1.dsc' ocl-icd_2.2.8-1.dsc 2121 SHA256:22d267936cf5f13d4a4710412ab940f5ff1b44f9365c30262ef364789bb6f0cf
'http://archive.ubuntu.com/ubuntu/pool/main/o/ocl-icd/ocl-icd_2.2.8.orig.tar.gz' ocl-icd_2.2.8.orig.tar.gz 452374 SHA256:25360a62a80558f3128164510b53ee00713a54db45de2faa1b6f4bd28191a184
'http://archive.ubuntu.com/ubuntu/pool/main/o/ocl-icd/ocl-icd_2.2.8-1.debian.tar.xz' ocl-icd_2.2.8-1.debian.tar.xz 10828 SHA256:4b5aea6e57e23c6cb8b0a12794d235a615d063cf816449dd0ecfa7a13261624c
```

### `dpkg` source package: `openldap=2.4.42+dfsg-2ubuntu3.2`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.42+dfsg-2ubuntu3.2`
- `libldap2-dev:amd64=2.4.42+dfsg-2ubuntu3.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.42+dfsg-2ubuntu3.2
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.42+dfsg-2ubuntu3.2.dsc' openldap_2.4.42+dfsg-2ubuntu3.2.dsc 3040 SHA256:f22b2a2b83f6b656ef96ca6b25a125399c123908cfaa9f1f503115fffa536ae7
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.42+dfsg.orig.tar.gz' openldap_2.4.42+dfsg.orig.tar.gz 4813173 SHA256:5f56e4e3584f7a4b4c8437a2c985b2f519836946be77ef1aa43a5d20c02ea97b
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.42+dfsg-2ubuntu3.2.debian.tar.xz' openldap_2.4.42+dfsg-2ubuntu3.2.debian.tar.xz 176956 SHA256:b3262b8e294c9025ffafc0a0b5132ac9e4cc3faeabea3d9d2292c6dccc067d67
```

### `dpkg` source package: `openmpi=1.10.2-8ubuntu1`

Binary Packages:

- `libopenmpi-dev=1.10.2-8ubuntu1`
- `libopenmpi1.10=1.10.2-8ubuntu1`
- `openmpi-bin=1.10.2-8ubuntu1`
- `openmpi-common=1.10.2-8ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libopenmpi-dev/copyright`, `/usr/share/doc/libopenmpi1.10/copyright`, `/usr/share/doc/openmpi-bin/copyright`, `/usr/share/doc/openmpi-common/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris openmpi=1.10.2-8ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openmpi/openmpi_1.10.2-8ubuntu1.dsc' openmpi_1.10.2-8ubuntu1.dsc 2639 SHA256:0d45a031372bfdf0a5fc07f8b8320819a4755449b4efb2450b0a8b9ee272d1b5
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openmpi/openmpi_1.10.2.orig.tar.gz' openmpi_1.10.2.orig.tar.gz 20143146 SHA256:218136734653fde6304cc26137b292b0893cb2d401290bad983ac90de9bcafee
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openmpi/openmpi_1.10.2-8ubuntu1.debian.tar.xz' openmpi_1.10.2-8ubuntu1.debian.tar.xz 31736 SHA256:b402ee58b24798c198e64f033a5df1928b3949795eca2c0930c9fdcfa99b89f2
```

### `dpkg` source package: `openssl=1.0.2g-1ubuntu4.10`

Binary Packages:

- `libssl1.0.0:amd64=1.0.2g-1ubuntu4.10`
- `openssl=1.0.2g-1ubuntu4.10`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.0.2g-1ubuntu4.10
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.0.2g-1ubuntu4.10.dsc' openssl_1.0.2g-1ubuntu4.10.dsc 2439 SHA256:737010a27d67d3fe25a1c600dabb68b1e39f96953f485d3c3806ce7206e007e0
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.0.2g.orig.tar.gz' openssl_1.0.2g.orig.tar.gz 5266102 SHA256:b784b1b3907ce39abf4098702dade6365522a253ad1552e267a9a0e89594aa33
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.0.2g-1ubuntu4.10.debian.tar.xz' openssl_1.0.2g-1ubuntu4.10.debian.tar.xz 120020 SHA256:0dc7577fa73131647bb69a731724dd3e1e05af645e7d50acb599be614276d865
```

### `dpkg` source package: `p11-kit=0.23.2-5~ubuntu16.04.1`

Binary Packages:

- `libp11-kit0:amd64=0.23.2-5~ubuntu16.04.1`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `ISC`
- `ISC+IBM`
- `permissive-like-automake-output`
- `same-as-rest-of-p11kit`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.23.2-5~ubuntu16.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.2-5~ubuntu16.04.1.dsc' p11-kit_0.23.2-5~ubuntu16.04.1.dsc 2326 SHA256:02e852c8a77600d3856587beeaa390a71210545f49ce027adb10b29ec14c6d54
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.2.orig.tar.gz' p11-kit_0.23.2.orig.tar.gz 1022733 SHA256:ba726ea8303c97467a33fca50ee79b7b35212964be808ecf9b145e9042fdfaf0
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.2-5~ubuntu16.04.1.debian.tar.xz' p11-kit_0.23.2-5~ubuntu16.04.1.debian.tar.xz 15208 SHA256:8d916c95e619ba3bf98aaaaf92c6115e09c4222925be1a43e6882c77d5e5a166
```

### `dpkg` source package: `pam=1.1.8-3.2ubuntu2`

Binary Packages:

- `libpam-modules:amd64=1.1.8-3.2ubuntu2`
- `libpam-modules-bin=1.1.8-3.2ubuntu2`
- `libpam-runtime=1.1.8-3.2ubuntu2`
- `libpam0g:amd64=1.1.8-3.2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.1.8-3.2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8-3.2ubuntu2.dsc' pam_1.1.8-3.2ubuntu2.dsc 2589 SHA256:b9ab28d75594ece90f12987b8926d5897fb994f1ea25a2ee03b09e2570785142
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8.orig.tar.gz' pam_1.1.8.orig.tar.gz 1892765 SHA256:4183409a450708a976eca5af561dbf4f0490141a08e86e4a1e649c7c1b094876
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8-3.2ubuntu2.diff.gz' pam_1.1.8-3.2ubuntu2.diff.gz 198851 SHA256:5b999640be4f2ffd0e200e7785d04089375635d2d0f2033b7668462f6207a35f
```

### `dpkg` source package: `paramiko=1.16.0-1`

Binary Packages:

- `python-paramiko=1.16.0-1`

Licenses: (parsed from: `/usr/share/doc/python-paramiko/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris paramiko=1.16.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/paramiko/paramiko_1.16.0-1.dsc' paramiko_1.16.0-1.dsc 2251 SHA256:339e38c932c7c3d7965d1b4d5702fb5395861a685c6dea40076cc57a3d301745
'http://archive.ubuntu.com/ubuntu/pool/main/p/paramiko/paramiko_1.16.0.orig.tar.gz' paramiko_1.16.0.orig.tar.gz 266200 SHA256:77d266cb33b25313c2b7a9e813995fac87cf1de3be3d6e11f6c62df4507ef908
'http://archive.ubuntu.com/ubuntu/pool/main/p/paramiko/paramiko_1.16.0-1.debian.tar.xz' paramiko_1.16.0-1.debian.tar.xz 5832 SHA256:f16f8480823f845fca4cc1c336f917741ea0307f42625e33c3ac26662ff074b7
```

### `dpkg` source package: `patch=2.7.5-1`

Binary Packages:

- `patch=2.7.5-1`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris patch=2.7.5-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.5-1.dsc' patch_2.7.5-1.dsc 1795 SHA256:909ac12aa395f8b32a4524dcea67207567e99d2560e2a833ba577ec64c4cc1bd
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.5.orig.tar.xz' patch_2.7.5.orig.tar.xz 727704 SHA256:fd95153655d6b95567e623843a0e77b81612d502ecf78a489a4aed7867caa299
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.5-1.debian.tar.xz' patch_2.7.5-1.debian.tar.xz 8116 SHA256:c5b9797658fdc1c150072fc9568279bd62c591b2fc43fa6d33750a9a4e8f0ddd
```

### `dpkg` source package: `pcre3=2:8.38-3.1`

Binary Packages:

- `libpcre3:amd64=2:8.38-3.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.38-3.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.38-3.1.dsc' pcre3_8.38-3.1.dsc 2074 SHA256:6a46bc62c33198fe38257f0dddecb4c534825f8f066bf88f2a45ad935b879885
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.38.orig.tar.gz' pcre3_8.38.orig.tar.gz 2053336 SHA256:9883e419c336c63b0cb5202b09537c140966d585e4d0da66147dc513da13e629
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.38-3.1.debian.tar.gz' pcre3_8.38-3.1.debian.tar.gz 32289 SHA256:9ee1b838c1de50cb5f6641016d0dd21b06f1038b9b7c3b1098e0a89b9c24b39f
```

### `dpkg` source package: `perl=5.22.1-9ubuntu0.2`

Binary Packages:

- `libperl5.22:amd64=5.22.1-9ubuntu0.2`
- `perl=5.22.1-9ubuntu0.2`
- `perl-base=5.22.1-9ubuntu0.2`
- `perl-modules-5.22=5.22.1-9ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libperl5.22/copyright`, `/usr/share/doc/perl/copyright`, `/usr/share/doc/perl-base/copyright`, `/usr/share/doc/perl-modules-5.22/copyright`)

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
- `S2P`
- `SDBM-PUBLIC-DOMAIN`
- `TEXT-TABS`
- `Unicode`
- `ZLIB`

Source:

```console
$ apt-get source -qq --print-uris perl=5.22.1-9ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.22.1-9ubuntu0.2.dsc' perl_5.22.1-9ubuntu0.2.dsc 2464 SHA256:1269621f0ad5574a2fa3a4d956b4036df134d372ab6508650dc60a3b31c2d5d2
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.22.1.orig.tar.xz' perl_5.22.1.orig.tar.xz 11223940 SHA256:9e87317d693ce828095204be0d09af8d60b8785533fadea1a82b6f0e071e5c79
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.22.1-9ubuntu0.2.debian.tar.xz' perl_5.22.1-9ubuntu0.2.debian.tar.xz 148764 SHA256:f90b2dbff5a3b38c94730a9bb5d369d720b89d88cbe06f319e53683c9d9bdd50
```

### `dpkg` source package: `pinentry=0.9.7-3`

Binary Packages:

- `pinentry-curses=0.9.7-3`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pinentry=0.9.7-3
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_0.9.7-3.dsc' pinentry_0.9.7-3.dsc 2662 SHA256:67506f8c21b87a274aa7d9bc7a40a2da094dcbcf32e5b0a8f9c94512404ea747
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_0.9.7.orig.tar.bz2' pinentry_0.9.7.orig.tar.bz2 432978 SHA256:6398208394972bbf897c3325780195584682a0d0c164ca5a0da35b93b1e4e7b2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_0.9.7-3.debian.tar.xz' pinentry_0.9.7-3.debian.tar.xz 13032 SHA256:1d3f5b2ad83234537482ec0b78c5b411b25c84e91dfa1fdbebb1dbc8f1677b8f
```

### `dpkg` source package: `pkg-config=0.29.1-0ubuntu1`

Binary Packages:

- `pkg-config=0.29.1-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/pkg-config/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pkg-config=0.29.1-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1-0ubuntu1.dsc' pkg-config_0.29.1-0ubuntu1.dsc 1842 SHA256:0ade40d184e9684f9e22e622022f1b798123cc63cd37d669f664f47dddc5e072
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1.orig.tar.gz' pkg-config_0.29.1.orig.tar.gz 2013454 SHA256:beb43c9e064555469bd4390dcfd8030b1536e0aa103f08d7abf7ae8cac0cb001
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1-0ubuntu1.diff.gz' pkg-config_0.29.1-0ubuntu1.diff.gz 12597 SHA256:1c44aeeec1896a69f21861e9b9e18bb783258d57f4bd678b173b3890f1a209bf
```

### `dpkg` source package: `procps=2:3.3.10-4ubuntu2.3`

Binary Packages:

- `libprocps4:amd64=2:3.3.10-4ubuntu2.3`
- `procps=2:3.3.10-4ubuntu2.3`

Licenses: (parsed from: `/usr/share/doc/libprocps4/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.10-4ubuntu2.3
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.10-4ubuntu2.3.dsc' procps_3.3.10-4ubuntu2.3.dsc 2268 SHA256:8605628078cbea5f91662b60c4f35ff969b7e0e5f4aa748e3831fd1aa78372ad
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.10.orig.tar.xz' procps_3.3.10.orig.tar.xz 814816 SHA256:40a3d2b0489e057d85564f4f304083b24fc699b39ea828610183fb9f0a6ebe97
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.10-4ubuntu2.3.debian.tar.xz' procps_3.3.10-4ubuntu2.3.debian.tar.xz 38516 SHA256:5434d3b406c8547db8f574f20ecc5c1be6efc55ce88bba954537b144e970ab56
```

### `dpkg` source package: `pyparsing=2.0.3+dfsg1-1ubuntu0.1`

Binary Packages:

- `python-pyparsing=2.0.3+dfsg1-1ubuntu0.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pyparsing=2.0.3+dfsg1-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyparsing/pyparsing_2.0.3+dfsg1-1ubuntu0.1.dsc' pyparsing_2.0.3+dfsg1-1ubuntu0.1.dsc 2440 SHA256:11714a4def3b2874f1844145e2658a3fe67bf80fd8feb2a18b172b38bf418a94
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyparsing/pyparsing_2.0.3+dfsg1.orig.tar.gz' pyparsing_2.0.3+dfsg1.orig.tar.gz 1375115 SHA256:79dacc5cec938d38012e8e99c16f562856cba83c5515f5b80d5b4366afd3efbe
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyparsing/pyparsing_2.0.3+dfsg1-1ubuntu0.1.debian.tar.xz' pyparsing_2.0.3+dfsg1-1ubuntu0.1.debian.tar.xz 6552 SHA256:0b20410dc1469f401193ec5e42ca8817b243f3651fe0cd19e1388068d6c60b9c
```

### `dpkg` source package: `python-catkin-pkg-modules=0.4.1-1`

Binary Packages:

- `python-catkin-pkg-modules=0.4.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-catkin-pkg-modules=0.4.1-1
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-catkin-pkg-modules/python-catkin-pkg-modules_0.4.1-1.dsc' python-catkin-pkg-modules_0.4.1-1.dsc 991 SHA256:9d8e331d465e490e178d52f108a1687b7c5ba620e3de8c8d9533d9194bbe2396
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-catkin-pkg-modules/python-catkin-pkg-modules_0.4.1.orig.tar.gz' python-catkin-pkg-modules_0.4.1.orig.tar.gz 49085 SHA256:4dc444124a02d9747bc8c07a4ecc166e72ed9457d787dbd18c3ee07e8dc6dbc4
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-catkin-pkg-modules/python-catkin-pkg-modules_0.4.1-1.debian.tar.xz' python-catkin-pkg-modules_0.4.1-1.debian.tar.xz 1140 SHA256:0f99b8b7f6768e5db718a94c23e83a7b5b9b4bb8012d68c552a94c42119a1bac
```

### `dpkg` source package: `python-catkin-pkg=0.4.1-100`

Binary Packages:

- `python-catkin-pkg=0.4.1-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-catkin-pkg=0.4.1-100
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-catkin-pkg/python-catkin-pkg_0.4.1-100.dsc' python-catkin-pkg_0.4.1-100.dsc 931 SHA256:a2f8c60310318ad2b385db4ad37cc3999da8313e9446fe81b180fcb67db7dc51
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-catkin-pkg/python-catkin-pkg_0.4.1.orig.tar.gz' python-catkin-pkg_0.4.1.orig.tar.gz 10578 SHA256:78f86f6054ca75ef2e57a81b59956ea412a15a665f02809a380698e0f51937fa
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-catkin-pkg/python-catkin-pkg_0.4.1-100.debian.tar.xz' python-catkin-pkg_0.4.1-100.debian.tar.xz 1124 SHA256:8f2e0688de1c7577d966ef4109cb49da93865228e57dcea69c8a3f9060f53e5c
```

### `dpkg` source package: `python-crypto=2.6.1-6ubuntu0.16.04.2`

Binary Packages:

- `python-crypto=2.6.1-6ubuntu0.16.04.2`

Licenses: (parsed from: `/usr/share/doc/python-crypto/copyright`)

- `BSD-3-clause`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris python-crypto=2.6.1-6ubuntu0.16.04.2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-crypto/python-crypto_2.6.1-6ubuntu0.16.04.2.dsc' python-crypto_2.6.1-6ubuntu0.16.04.2.dsc 2500 SHA256:48ede30f0557f674081a74c791197cb2bf8b7f627bccb87114c40aaa2b03f2da
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-crypto/python-crypto_2.6.1.orig.tar.gz' python-crypto_2.6.1.orig.tar.gz 446240 SHA256:f2ce1e989b272cfcb677616763e0a2e7ec659effa67a88aa92b3a65528f60a3c
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-crypto/python-crypto_2.6.1-6ubuntu0.16.04.2.debian.tar.xz' python-crypto_2.6.1-6ubuntu0.16.04.2.debian.tar.xz 22708 SHA256:c68abae747cbed042062593b495b22b506560d17ced5da212c8af0ee5a046693
```

### `dpkg` source package: `python-dateutil=2.4.2-1`

Binary Packages:

- `python-dateutil=2.4.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-dateutil=2.4.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-dateutil/python-dateutil_2.4.2-1.dsc' python-dateutil_2.4.2-1.dsc 2028 SHA256:34c1175aa8c7eb7bf271cce80a4a91c7baf07109fd5ee1f2cd9f6637eeac7f7e
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-dateutil/python-dateutil_2.4.2.orig.tar.gz' python-dateutil_2.4.2.orig.tar.gz 209120 SHA256:3e95445c1db500a344079a47b171c45ef18f57d188dffdb0e4165c71bea8eb3d
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-dateutil/python-dateutil_2.4.2-1.debian.tar.xz' python-dateutil_2.4.2-1.debian.tar.xz 13052 SHA256:7fe7a48fea9086fe1b827435f75414e1501cab94b62377d49834edefaa335996
```

### `dpkg` source package: `python-defaults=2.7.11-1`

Binary Packages:

- `libpython-dev:amd64=2.7.11-1`
- `libpython-stdlib:amd64=2.7.11-1`
- `python=2.7.11-1`
- `python-dev=2.7.11-1`
- `python-minimal=2.7.11-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-defaults=2.7.11-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-defaults/python-defaults_2.7.11-1.dsc' python-defaults_2.7.11-1.dsc 2629 SHA256:e318166f8e921302b28a862de2db5b12069b37fe54f830a5fae60e1448576fa5
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-defaults/python-defaults_2.7.11-1.tar.gz' python-defaults_2.7.11-1.tar.gz 276447 SHA256:d4269585625c53a061292e44890c4960b688a47ebf3fa43202ceaa8f4bc502d9
```

### `dpkg` source package: `python-docutils=0.12+dfsg-1`

Binary Packages:

- `docutils-common=0.12+dfsg-1`
- `python-docutils=0.12+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/docutils-common/copyright`, `/usr/share/doc/python-docutils/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `Python-2.1.1`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris python-docutils=0.12+dfsg-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-docutils/python-docutils_0.12+dfsg-1.dsc' python-docutils_0.12+dfsg-1.dsc 2413 SHA256:31a1084d7612de374d876c540fcc18cfaf17f7a8cca7c8f8a15b4bad9cb16711
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-docutils/python-docutils_0.12+dfsg.orig.tar.gz' python-docutils_0.12+dfsg.orig.tar.gz 1624713 SHA256:644b21131ce0503047b754613d017852a943807bb73e616f7f0c3b3e8a22b21d
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-docutils/python-docutils_0.12+dfsg-1.debian.tar.xz' python-docutils_0.12+dfsg-1.debian.tar.xz 29520 SHA256:b5a9e07208579f92d76d8689c35b16635ee6cbdbfe8f8f2a4d5277007f0cc489
```

### `dpkg` source package: `python-ecdsa=0.13-2`

Binary Packages:

- `python-ecdsa=0.13-2`

Licenses: (parsed from: `/usr/share/doc/python-ecdsa/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-ecdsa=0.13-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-ecdsa/python-ecdsa_0.13-2.dsc' python-ecdsa_0.13-2.dsc 2154 SHA256:f33ae17d42ec3f2ac6781935fc03b583bfb29744f318a46e9a771a8ed8c4e8e3
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-ecdsa/python-ecdsa_0.13.orig.tar.gz' python-ecdsa_0.13.orig.tar.gz 55579 SHA256:64cf1ee26d1cde3c73c6d7d107f835fed7c6a2904aef9eac223d57ad800c43fa
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-ecdsa/python-ecdsa_0.13-2.debian.tar.xz' python-ecdsa_0.13-2.debian.tar.xz 3924 SHA256:14cfea39b155c83b330b072499cdc0e500e345221be678d3e75135c5f24ac179
```

### `dpkg` source package: `python-numpy=1:1.11.0-1ubuntu1`

Binary Packages:

- `python-numpy=1:1.11.0-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/python-numpy/copyright`)

- `PSF`

Source:

```console
$ apt-get source -qq --print-uris python-numpy=1:1.11.0-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-numpy/python-numpy_1.11.0-1ubuntu1.dsc' python-numpy_1.11.0-1ubuntu1.dsc 2749 SHA256:fa52a860df53f5c4f037b45352f837952dc932a54126e75d245c1363379025c9
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-numpy/python-numpy_1.11.0.orig.tar.gz' python-numpy_1.11.0.orig.tar.gz 4169494 SHA256:a1d1268d200816bfb9727a7a27b78d8e37ecec2e4d5ebd33eb64e2789e0db43e
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-numpy/python-numpy_1.11.0-1ubuntu1.debian.tar.xz' python-numpy_1.11.0-1ubuntu1.debian.tar.xz 143480 SHA256:3539a4c6cf92305f8a671c318cfda9767b029819366cf10db7a584effa9e55d8
```

### `dpkg` source package: `python-roman=2.0.0-2`

Binary Packages:

- `python-roman=2.0.0-2`

Licenses: (parsed from: `/usr/share/doc/python-roman/copyright`)

- `Python-2.1.1`
- `ZPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris python-roman=2.0.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-roman/python-roman_2.0.0-2.dsc' python-roman_2.0.0-2.dsc 2138 SHA256:d522dccc7e20d45208bd5dcb58fec644142c90223b1e7841282ed1b73bdfbc9b
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-roman/python-roman_2.0.0.orig.tar.gz' python-roman_2.0.0.orig.tar.gz 4968 SHA256:98f2c0fb3cdcfba465d12c85b3b7139fc4cd2177f1325f1bacfe00878c8fa7b9
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-roman/python-roman_2.0.0-2.debian.tar.xz' python-roman_2.0.0-2.debian.tar.xz 8508 SHA256:fdb23384ad4ab4701214c5776bb2b181e794a347d024fc0483e4ebe5055f4362
```

### `dpkg` source package: `python-rosdep=0.11.8-1`

Binary Packages:

- `python-rosdep=0.11.8-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-rosdep=0.11.8-1
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rosdep/python-rosdep_0.11.8-1.dsc' python-rosdep_0.11.8-1.dsc 900 SHA256:38c7010311aeb8ff47db5b6c0078014db2da9fea2d9517aa6d893866081d9a5c
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rosdep/python-rosdep_0.11.8.orig.tar.gz' python-rosdep_0.11.8.orig.tar.gz 79644 SHA256:2cdf1049382d38056b4586d7056ad40c3e7b8754f6636df8f4572f72355bfaf8
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rosdep/python-rosdep_0.11.8-1.debian.tar.gz' python-rosdep_0.11.8-1.debian.tar.gz 1061 SHA256:d6d10835344d2d1860781b7da6776c8481b15835e8c9af5dca126441a89aaec3
```

### `dpkg` source package: `python-rosdistro-modules=0.6.6-1`

Binary Packages:

- `python-rosdistro-modules=0.6.6-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-rosdistro-modules=0.6.6-1
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rosdistro-modules/python-rosdistro-modules_0.6.6-1.dsc' python-rosdistro-modules_0.6.6-1.dsc 982 SHA256:3bef90eea235ab28be0a805dd26687da1ba06843d90c5eb370cda2c3b3421733
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rosdistro-modules/python-rosdistro-modules_0.6.6.orig.tar.gz' python-rosdistro-modules_0.6.6.orig.tar.gz 39576 SHA256:f5abd8cad42e2dd44c3c834a8dfb483d203534c7467c373a82a2e25e679a8247
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rosdistro-modules/python-rosdistro-modules_0.6.6-1.debian.tar.xz' python-rosdistro-modules_0.6.6-1.debian.tar.xz 1120 SHA256:b908e3a81592fd918d6d6517de4bb0d98b6284a68dd9e664d05d36371961d099
```

### `dpkg` source package: `python-rosdistro=0.6.6-100`

Binary Packages:

- `python-rosdistro=0.6.6-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-rosdistro=0.6.6-100
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rosdistro/python-rosdistro_0.6.6-100.dsc' python-rosdistro_0.6.6-100.dsc 919 SHA256:c49a31f8d12430b285033786b2a64e23a0131dcb34ad4395ecf0df35119dec03
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rosdistro/python-rosdistro_0.6.6.orig.tar.gz' python-rosdistro_0.6.6.orig.tar.gz 9858 SHA256:24e214c1fcd6b0f0ca0a87912bb88869b741e32b04be769629b30d42014bee9b
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rosdistro/python-rosdistro_0.6.6-100.debian.tar.xz' python-rosdistro_0.6.6-100.debian.tar.xz 1100 SHA256:df059bee043cd93527f816e2d624b9eb2879f559623d5776f0cf47bf2717ab79
```

### `dpkg` source package: `python-rosinstall=0.7.8-1`

Binary Packages:

- `python-rosinstall=0.7.8-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-rosinstall=0.7.8-1
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rosinstall/python-rosinstall_0.7.8-1.dsc' python-rosinstall_0.7.8-1.dsc 917 SHA256:19d6b7db1cb3a2a6a34d6a2b86562982e2934f2f5bd0adcd73813f9b2644c906
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rosinstall/python-rosinstall_0.7.8.orig.tar.gz' python-rosinstall_0.7.8.orig.tar.gz 26425 SHA256:bc278e72a6c8aef5df8b04c565d54c6e452caad4fc7ead5d8cea1b4db2926ec4
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rosinstall/python-rosinstall_0.7.8-1.debian.tar.gz' python-rosinstall_0.7.8-1.debian.tar.gz 1008 SHA256:218375984f09c4fcfd9febfa9d08af30706a37c83e0c88925e682d84b6d44c7d
```

### `dpkg` source package: `python-rospkg-modules=1.1.4-1`

Binary Packages:

- `python-rospkg-modules=1.1.4-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-rospkg-modules=1.1.4-1
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rospkg-modules/python-rospkg-modules_1.1.4-1.dsc' python-rospkg-modules_1.1.4-1.dsc 949 SHA256:ea9de023bfde92f330f5d687b2dd8bee84b70c28d137ce3f5bd9fa73185971ad
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rospkg-modules/python-rospkg-modules_1.1.4.orig.tar.gz' python-rospkg-modules_1.1.4.orig.tar.gz 38432 SHA256:130152ac4fea9ce656e9ade1aca0e663de2363f109e58af8c54d8c871f580ec9
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rospkg-modules/python-rospkg-modules_1.1.4-1.debian.tar.xz' python-rospkg-modules_1.1.4-1.debian.tar.xz 1120 SHA256:b12b5cd1771fb1c71082313d77d4ab1dae01de5144ef8a64117f3f42c7ce0920
```

### `dpkg` source package: `python-rospkg=1.1.4-100`

Binary Packages:

- `python-rospkg=1.1.4-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-rospkg=1.1.4-100
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rospkg/python-rospkg_1.1.4-100.dsc' python-rospkg_1.1.4-100.dsc 889 SHA256:0fb73bd66ace5b3db07430f4d5fe5df18efdee88b400f2b9180b0be5b7715175
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rospkg/python-rospkg_1.1.4.orig.tar.gz' python-rospkg_1.1.4.orig.tar.gz 18041 SHA256:9fbc62a4d919bff3569ff27ee0f07c1edd4b409f0911b6687352aaad8fc77d9e
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rospkg/python-rospkg_1.1.4-100.debian.tar.xz' python-rospkg_1.1.4-100.debian.tar.xz 1092 SHA256:f54bb3e5ed381dcb605f875883120fa83a24f66fde17fd753db2d9cc6770ee6d
```

### `dpkg` source package: `python-setuptools=20.7.0-1`

Binary Packages:

- `python-pkg-resources=20.7.0-1`
- `python-setuptools=20.7.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-setuptools=20.7.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-setuptools/python-setuptools_20.7.0-1.dsc' python-setuptools_20.7.0-1.dsc 2338 SHA256:0251fd94c77aacd604e5a5f851136c21048879491628f2732bd95dd72d8256c1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-setuptools/python-setuptools_20.7.0.orig.tar.gz' python-setuptools_20.7.0.orig.tar.gz 645861 SHA256:505cdf282c5f6e3a056e79f0244b8945f3632257bba8469386c6b9b396400233
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-setuptools/python-setuptools_20.7.0-1.debian.tar.xz' python-setuptools_20.7.0-1.debian.tar.xz 38772 SHA256:6fe8762b58c0a5582aae975f4d97a2ef7ad66df221b0455366727ce7d17cb0aa
```

### `dpkg` source package: `python-vcstools=0.1.40-1`

Binary Packages:

- `python-vcstools=0.1.40-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-vcstools=0.1.40-1
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-vcstools/python-vcstools_0.1.40-1.dsc' python-vcstools_0.1.40-1.dsc 930 SHA256:c5031c0eb7a4f413c2903c1f7289f511293b5d18ecac2e58fa6b1cc6b962765e
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-vcstools/python-vcstools_0.1.40.orig.tar.gz' python-vcstools_0.1.40.orig.tar.gz 51298 SHA256:57f41f0f360d581a90f1511ef9aab62aa324e7cd251d9fd40f2275d13a8fd488
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-vcstools/python-vcstools_0.1.40-1.debian.tar.gz' python-vcstools_0.1.40-1.debian.tar.gz 1076 SHA256:5c27c1b6d815faa645f6557d40b6d5d406d1dd82b8fa1d7b6481852b40b8f325
```

### `dpkg` source package: `python-wstool=0.1.17-1`

Binary Packages:

- `python-wstool=0.1.17-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-wstool=0.1.17-1
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-wstool/python-wstool_0.1.17-1.dsc' python-wstool_0.1.17-1.dsc 888 SHA256:3c443f7f043ee81732917ed67496035cb4dc4e529231ccd05fc3421c7d900821
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-wstool/python-wstool_0.1.17.orig.tar.gz' python-wstool_0.1.17.orig.tar.gz 53327 SHA256:c7e2b5933e6a17063c5c6f12ba8419a1d8289fbdba3d12b8319f4202ce3c2562
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-wstool/python-wstool_0.1.17-1.debian.tar.gz' python-wstool_0.1.17-1.debian.tar.gz 1045 SHA256:bc632485fb7b1694cfc8e894f1d4c5dc779e23e4034b484e866546cc8d750dfe
```

### `dpkg` source package: `python2.7=2.7.12-1ubuntu0~16.04.3`

Binary Packages:

- `libpython2.7:amd64=2.7.12-1ubuntu0~16.04.3`
- `libpython2.7-dev:amd64=2.7.12-1ubuntu0~16.04.3`
- `libpython2.7-minimal:amd64=2.7.12-1ubuntu0~16.04.3`
- `libpython2.7-stdlib:amd64=2.7.12-1ubuntu0~16.04.3`
- `python2.7=2.7.12-1ubuntu0~16.04.3`
- `python2.7-dev=2.7.12-1ubuntu0~16.04.3`
- `python2.7-minimal=2.7.12-1ubuntu0~16.04.3`

Licenses: (parsed from: `/usr/share/doc/libpython2.7/copyright`, `/usr/share/doc/libpython2.7-dev/copyright`, `/usr/share/doc/libpython2.7-minimal/copyright`, `/usr/share/doc/libpython2.7-stdlib/copyright`, `/usr/share/doc/python2.7/copyright`, `/usr/share/doc/python2.7-dev/copyright`, `/usr/share/doc/python2.7-minimal/copyright`)

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
$ apt-get source -qq --print-uris python2.7=2.7.12-1ubuntu0~16.04.3
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.12-1ubuntu0~16.04.3.dsc' python2.7_2.7.12-1ubuntu0~16.04.3.dsc 3379 SHA256:a4784c90f5036a12c145f6f7690c12c187866f2c9ae0263cd3527dc916a98e84
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.12.orig.tar.gz' python2.7_2.7.12.orig.tar.gz 16935960 SHA256:3cb522d17463dfa69a155ab18cffa399b358c966c0363d6c8b5b3bf1384da4b6
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.12-1ubuntu0~16.04.3.diff.gz' python2.7_2.7.12-1ubuntu0~16.04.3.diff.gz 281711 SHA256:85bc19c1f058792ff0fe7abfc0362b76b6abcbdaca890e0745d25e5f25184bf7
```

### `dpkg` source package: `python3-defaults=3.5.1-3`

Binary Packages:

- `libpython3-stdlib:amd64=3.5.1-3`
- `python3=3.5.1-3`
- `python3-minimal=3.5.1-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.5.1-3
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.5.1-3.dsc' python3-defaults_3.5.1-3.dsc 2715 SHA256:e1da92b6e0a03c096ad1442b2ee9ea00ea7f8f02a5f8ce59bc3a75db276e8556
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.5.1-3.tar.gz' python3-defaults_3.5.1-3.tar.gz 924115 SHA256:8d1284430b77775d4cea62a33b0685e0523b8dfa2ebcc092d382af5cb5b4f237
```

### `dpkg` source package: `python3.5=3.5.2-2ubuntu0~16.04.4`

Binary Packages:

- `libpython3.5-minimal:amd64=3.5.2-2ubuntu0~16.04.4`
- `libpython3.5-stdlib:amd64=3.5.2-2ubuntu0~16.04.4`
- `python3.5=3.5.2-2ubuntu0~16.04.4`
- `python3.5-minimal=3.5.2-2ubuntu0~16.04.4`

Licenses: (parsed from: `/usr/share/doc/libpython3.5-minimal/copyright`, `/usr/share/doc/libpython3.5-stdlib/copyright`, `/usr/share/doc/python3.5/copyright`, `/usr/share/doc/python3.5-minimal/copyright`)

- `* Permission to use this software in any way is granted without`
- `Apache`
- `Apache-2`
- `Apache-2.0`
- `By obtaining, using, and/or copying this software and/or its`
- `Expat`
- `GPL-2`
- `ISC`
- `LGPL-2.1+`
- `PSF-2`
- `Permission  is  hereby granted,  free  of charge,  to  any person`
- `Permission is hereby granted, free of charge, to any person obtaining`
- `Permission to use, copy, modify,`
- `Python`
- `Redistribution`
- `This software is provided 'as-is', without any express`
- `This software is provided as-is, without express`
- `binary forms, with`
- `distribute this software`
- `distribute this software and`
- `distribute this software for any`
- `implied`
- `its`
- `see above, some license as Python`
- `use in source`
- `without`

Source:

```console
$ apt-get source -qq --print-uris python3.5=3.5.2-2ubuntu0~16.04.4
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.5/python3.5_3.5.2-2ubuntu0~16.04.4.dsc' python3.5_3.5.2-2ubuntu0~16.04.4.dsc 3371 SHA256:3dc2093766365ec51638804d3b127ab0f5c34ae8562da5ccd03e8aa340e9a43c
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.5/python3.5_3.5.2.orig.tar.xz' python3.5_3.5.2.orig.tar.xz 15222676 SHA256:0010f56100b9b74259ebcd5d4b295a32324b58b517403a10d1a2aa7cb22bca40
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.5/python3.5_3.5.2-2ubuntu0~16.04.4.debian.tar.xz' python3.5_3.5.2-2ubuntu0~16.04.4.debian.tar.xz 215796 SHA256:e3b04331c0a5e1ba85b4b5e815ddd37ba9905d4b794e1180dca01b8d2fcc59ba
```

### `dpkg` source package: `pyyaml=3.11-3build1`

Binary Packages:

- `python-yaml=3.11-3build1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pyyaml=3.11-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyyaml/pyyaml_3.11-3build1.dsc' pyyaml_3.11-3build1.dsc 2272 SHA256:9c1032cfb1feef2378838948bf11ee1f09713e8a31aff8758937a556712d9b91
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyyaml/pyyaml_3.11.orig.tar.gz' pyyaml_3.11.orig.tar.gz 248685 SHA256:c36c938a872e5ff494938b33b14aaa156cb439ec67548fcab3535bb78b0846e8
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyyaml/pyyaml_3.11-3build1.debian.tar.xz' pyyaml_3.11-3build1.debian.tar.xz 8328 SHA256:d9153073ce67e76e120ad6aedb9fd91a9aa2a60066be88b3cf51cef7aa7acc13
```

### `dpkg` source package: `readline6=6.3-8ubuntu2`

Binary Packages:

- `libreadline6:amd64=6.3-8ubuntu2`
- `readline-common=6.3-8ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libreadline6/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris readline6=6.3-8ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline6/readline6_6.3-8ubuntu2.dsc' readline6_6.3-8ubuntu2.dsc 2566 SHA256:3c7e3168dd1510f040325c1ab1e28c7fbde34d1a899005a98a894a9f27bd98f6
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline6/readline6_6.3.orig.tar.gz' readline6_6.3.orig.tar.gz 2468560 SHA256:56ba6071b9462f980c5a72ab0023893b65ba6debb4eeb475d7a563dc65cafd43
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline6/readline6_6.3-8ubuntu2.debian.tar.xz' readline6_6.3-8ubuntu2.debian.tar.xz 31232 SHA256:32d4f30dc92d79d722b04c2b678883245d2eccff2ed4f8591faebca7e6d81948
```

### `dpkg` source package: `ros-lunar-actionlib-msgs=1.12.5-0xenial-20171103-165706-0800`

Binary Packages:

- `ros-lunar-actionlib-msgs=1.12.5-0xenial-20171103-165706-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-catkin=0.7.8-0xenial-20171027-164230-0800`

Binary Packages:

- `ros-lunar-catkin=0.7.8-0xenial-20171027-164230-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-cmake-modules=0.4.1-0xenial-20171027-191253-0800`

Binary Packages:

- `ros-lunar-cmake-modules=0.4.1-0xenial-20171027-191253-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-common-msgs=1.12.5-0xenial-20171103-190535-0800`

Binary Packages:

- `ros-lunar-common-msgs=1.12.5-0xenial-20171103-190535-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-cpp-common=0.6.7-0xenial-20171103-141331-0800`

Binary Packages:

- `ros-lunar-cpp-common=0.6.7-0xenial-20171103-141331-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-diagnostic-msgs=1.12.5-0xenial-20171103-165829-0800`

Binary Packages:

- `ros-lunar-diagnostic-msgs=1.12.5-0xenial-20171103-165829-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-gencpp=0.5.5-0xenial-20171027-190256-0800`

Binary Packages:

- `ros-lunar-gencpp=0.5.5-0xenial-20171027-190256-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-geneus=2.2.6-0xenial-20171027-191031-0800`

Binary Packages:

- `ros-lunar-geneus=2.2.6-0xenial-20171027-191031-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-genlisp=0.4.16-0xenial-20171027-191043-0800`

Binary Packages:

- `ros-lunar-genlisp=0.4.16-0xenial-20171027-191043-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-genmsg=0.5.9-0xenial-20171027-190043-0800`

Binary Packages:

- `ros-lunar-genmsg=0.5.9-0xenial-20171027-190043-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-gennodejs=2.0.1-0xenial-20171027-190248-0800`

Binary Packages:

- `ros-lunar-gennodejs=2.0.1-0xenial-20171027-190248-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-genpy=0.6.7-0xenial-20171027-190141-0800`

Binary Packages:

- `ros-lunar-genpy=0.6.7-0xenial-20171027-190141-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-geometry-msgs=1.12.5-0xenial-20171103-165851-0800`

Binary Packages:

- `ros-lunar-geometry-msgs=1.12.5-0xenial-20171103-165851-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-message-filters=1.13.5-0xenial-20171109-145802-0800`

Binary Packages:

- `ros-lunar-message-filters=1.13.5-0xenial-20171109-145802-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-message-generation=0.4.0-0xenial-20171027-191239-0800`

Binary Packages:

- `ros-lunar-message-generation=0.4.0-0xenial-20171027-191239-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-message-runtime=0.4.12-0xenial-20171103-155357-0800`

Binary Packages:

- `ros-lunar-message-runtime=0.4.12-0xenial-20171103-155357-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-mk=1.14.2-0xenial-20171103-190924-0800`

Binary Packages:

- `ros-lunar-mk=1.14.2-0xenial-20171103-190924-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-nav-msgs=1.12.5-0xenial-20171103-170328-0800`

Binary Packages:

- `ros-lunar-nav-msgs=1.12.5-0xenial-20171103-170328-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-ros-comm=1.13.5-0xenial-20171109-151539-0800`

Binary Packages:

- `ros-lunar-ros-comm=1.13.5-0xenial-20171109-151539-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-ros-core=1.3.1-0xenial-20171109-152417-0800`

Binary Packages:

- `ros-lunar-ros-core=1.3.1-0xenial-20171109-152417-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-ros=1.14.2-0xenial-20171103-191339-0800`

Binary Packages:

- `ros-lunar-ros=1.14.2-0xenial-20171103-191339-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rosbag-migration-rule=1.0.0-0xenial-20171027-190030-0800`

Binary Packages:

- `ros-lunar-rosbag-migration-rule=1.0.0-0xenial-20171027-190030-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rosbag-storage=1.13.5-0xenial-20171109-135918-0800`

Binary Packages:

- `ros-lunar-rosbag-storage=1.13.5-0xenial-20171109-135918-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rosbag=1.13.5-0xenial-20171109-150156-0800`

Binary Packages:

- `ros-lunar-rosbag=1.13.5-0xenial-20171109-150156-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rosbash=1.14.2-0xenial-20171027-173034-0800`

Binary Packages:

- `ros-lunar-rosbash=1.14.2-0xenial-20171027-173034-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rosboost-cfg=1.14.2-0xenial-20171027-173147-0800`

Binary Packages:

- `ros-lunar-rosboost-cfg=1.14.2-0xenial-20171027-173147-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rosbuild=1.14.2-0xenial-20171103-165110-0800`

Binary Packages:

- `ros-lunar-rosbuild=1.14.2-0xenial-20171103-165110-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rosclean=1.14.2-0xenial-20171027-173143-0800`

Binary Packages:

- `ros-lunar-rosclean=1.14.2-0xenial-20171027-173143-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rosconsole-bridge=0.5.0-0xenial-20171109-143310-0800`

Binary Packages:

- `ros-lunar-rosconsole-bridge=0.5.0-0xenial-20171109-143310-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rosconsole=1.13.5-0xenial-20171109-135350-0800`

Binary Packages:

- `ros-lunar-rosconsole=1.13.5-0xenial-20171109-135350-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-roscpp-core=0.6.7-0xenial-20171103-155355-0800`

Binary Packages:

- `ros-lunar-roscpp-core=0.6.7-0xenial-20171103-155355-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-roscpp-serialization=0.6.7-0xenial-20171103-154936-0800`

Binary Packages:

- `ros-lunar-roscpp-serialization=0.6.7-0xenial-20171103-154936-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-roscpp-traits=0.6.7-0xenial-20171103-152351-0800`

Binary Packages:

- `ros-lunar-roscpp-traits=0.6.7-0xenial-20171103-152351-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-roscpp=1.13.5-0xenial-20171109-141941-0800`

Binary Packages:

- `ros-lunar-roscpp=1.13.5-0xenial-20171109-141941-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-roscreate=1.14.2-0xenial-20171027-173039-0800`

Binary Packages:

- `ros-lunar-roscreate=1.14.2-0xenial-20171027-173039-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rosgraph-msgs=1.11.2-0xenial-20171103-165615-0800`

Binary Packages:

- `ros-lunar-rosgraph-msgs=1.11.2-0xenial-20171103-165615-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rosgraph=1.13.5-0xenial-20171109-135317-0800`

Binary Packages:

- `ros-lunar-rosgraph=1.13.5-0xenial-20171109-135317-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-roslang=1.14.2-0xenial-20171027-190133-0800`

Binary Packages:

- `ros-lunar-roslang=1.14.2-0xenial-20171027-190133-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-roslaunch=1.13.5-0xenial-20171109-145134-0800`

Binary Packages:

- `ros-lunar-roslaunch=1.13.5-0xenial-20171109-145134-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-roslib=1.14.2-0xenial-20171027-191903-0800`

Binary Packages:

- `ros-lunar-roslib=1.14.2-0xenial-20171027-191903-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-roslisp=1.9.21-0xenial-20171103-190535-0800`

Binary Packages:

- `ros-lunar-roslisp=1.9.21-0xenial-20171103-190535-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-roslz4=1.13.5-0xenial-20171109-135141-0800`

Binary Packages:

- `ros-lunar-roslz4=1.13.5-0xenial-20171109-135141-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rosmake=1.14.2-0xenial-20171027-173112-0800`

Binary Packages:

- `ros-lunar-rosmake=1.14.2-0xenial-20171027-173112-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rosmaster=1.13.5-0xenial-20171109-141229-0800`

Binary Packages:

- `ros-lunar-rosmaster=1.13.5-0xenial-20171109-141229-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rosmsg=1.13.5-0xenial-20171109-150554-0800`

Binary Packages:

- `ros-lunar-rosmsg=1.13.5-0xenial-20171109-150554-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rosnode=1.13.5-0xenial-20171109-150944-0800`

Binary Packages:

- `ros-lunar-rosnode=1.13.5-0xenial-20171109-150944-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rosout=1.13.5-0xenial-20171109-144753-0800`

Binary Packages:

- `ros-lunar-rosout=1.13.5-0xenial-20171109-144753-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rospack=2.4.3-0xenial-20171027-191545-0800`

Binary Packages:

- `ros-lunar-rospack=2.4.3-0xenial-20171027-191545-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rosparam=1.13.5-0xenial-20171109-141759-0800`

Binary Packages:

- `ros-lunar-rosparam=1.13.5-0xenial-20171109-141759-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rospy=1.13.5-0xenial-20171109-144804-0800`

Binary Packages:

- `ros-lunar-rospy=1.13.5-0xenial-20171109-144804-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rosservice=1.13.5-0xenial-20171109-150919-0800`

Binary Packages:

- `ros-lunar-rosservice=1.13.5-0xenial-20171109-150919-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rostest=1.13.5-0xenial-20171109-145502-0800`

Binary Packages:

- `ros-lunar-rostest=1.13.5-0xenial-20171109-145502-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rostime=0.6.7-0xenial-20171103-144549-0800`

Binary Packages:

- `ros-lunar-rostime=0.6.7-0xenial-20171103-144549-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rostopic=1.13.5-0xenial-20171109-150533-0800`

Binary Packages:

- `ros-lunar-rostopic=1.13.5-0xenial-20171109-150533-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-rosunit=1.14.2-0xenial-20171027-192211-0800`

Binary Packages:

- `ros-lunar-rosunit=1.14.2-0xenial-20171027-192211-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-roswtf=1.13.5-0xenial-20171109-151152-0800`

Binary Packages:

- `ros-lunar-roswtf=1.13.5-0xenial-20171109-151152-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-sensor-msgs=1.12.5-0xenial-20171103-170527-0800`

Binary Packages:

- `ros-lunar-sensor-msgs=1.12.5-0xenial-20171103-170527-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-shape-msgs=1.12.5-0xenial-20171103-170551-0800`

Binary Packages:

- `ros-lunar-shape-msgs=1.12.5-0xenial-20171103-170551-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-std-msgs=0.5.11-0xenial-20171103-165043-0800`

Binary Packages:

- `ros-lunar-std-msgs=0.5.11-0xenial-20171103-165043-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-std-srvs=1.11.2-0xenial-20171103-171908-0800`

Binary Packages:

- `ros-lunar-std-srvs=1.11.2-0xenial-20171103-171908-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-stereo-msgs=1.12.5-0xenial-20171103-171451-0800`

Binary Packages:

- `ros-lunar-stereo-msgs=1.12.5-0xenial-20171103-171451-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-topic-tools=1.13.5-0xenial-20171109-145801-0800`

Binary Packages:

- `ros-lunar-topic-tools=1.13.5-0xenial-20171109-145801-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-trajectory-msgs=1.12.5-0xenial-20171103-170627-0800`

Binary Packages:

- `ros-lunar-trajectory-msgs=1.12.5-0xenial-20171103-170627-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-visualization-msgs=1.12.5-0xenial-20171103-165959-0800`

Binary Packages:

- `ros-lunar-visualization-msgs=1.12.5-0xenial-20171103-165959-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-lunar-xmlrpcpp=1.13.5-0xenial-20171109-135139-0800`

Binary Packages:

- `ros-lunar-xmlrpcpp=1.13.5-0xenial-20171109-135139-0800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d-1ubuntu0.1`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20151223.gitfa8646d-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d-1ubuntu0.1.dsc' rtmpdump_2.4+20151223.gitfa8646d-1ubuntu0.1.dsc 2408 SHA256:0b82d42fecf5e830ec00f6d3191d582908e1e4feed57c031d9ab02b4b0d4f2db
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.orig.tar.gz' rtmpdump_2.4+20151223.gitfa8646d.orig.tar.gz 149016 SHA256:f8eb8d0c8ed085c90666ba0e8fbe0e960e0cf0c2a58604fda3ed85a28f2ef5f6
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d-1ubuntu0.1.debian.tar.xz' rtmpdump_2.4+20151223.gitfa8646d-1ubuntu0.1.debian.tar.xz 9000 SHA256:9178a6648106397566589db2c7a6f8da9cd0273ee955df7f4030f02a63013cf9
```

### `dpkg` source package: `sbcl=2:1.3.1-1ubuntu2`

Binary Packages:

- `sbcl=2:1.3.1-1ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris sbcl=2:1.3.1-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/universe/s/sbcl/sbcl_1.3.1-1ubuntu2.dsc' sbcl_1.3.1-1ubuntu2.dsc 2136 SHA256:bf7fd7626842cc1192a3bb60b9188d9d57ed6f2dd1718fc570005d37f18d46b9
'http://archive.ubuntu.com/ubuntu/pool/universe/s/sbcl/sbcl_1.3.1.orig.tar.bz2' sbcl_1.3.1.orig.tar.bz2 5725055 SHA256:a2e547e471a368349a43b1feee78ca6139aae0c60b8fcaa6ab0fd0e5b8e0ed3d
'http://archive.ubuntu.com/ubuntu/pool/universe/s/sbcl/sbcl_1.3.1-1ubuntu2.debian.tar.xz' sbcl_1.3.1-1ubuntu2.debian.tar.xz 77924 SHA256:f0e6ad821b349dbfb226cd2610a91d81f9bca89ad44cba997c435a8fa0e5ac93
```

### `dpkg` source package: `sed=4.2.2-7`

Binary Packages:

- `sed=4.2.2-7`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris sed=4.2.2-7
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.2.2-7.dsc' sed_4.2.2-7.dsc 1974 SHA256:42f5764a279ac3f9b31d9e922024b519b950b35e82830e552839cd41fbb8e0b0
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.2.2.orig.tar.bz2' sed_4.2.2.orig.tar.bz2 1059414 SHA256:f048d1838da284c8bc9753e4506b85a1e0cc1ea8999d36f6995bcb9460cddbd7
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.2.2-7.debian.tar.xz' sed_4.2.2-7.debian.tar.xz 85048 SHA256:416b70f601b40246c1daf7261f117ea9ff01564f574bd34871573fc5c9f74db7
```

### `dpkg` source package: `sensible-utils=0.0.9`

Binary Packages:

- `sensible-utils=0.0.9`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.9
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.9.dsc' sensible-utils_0.0.9.dsc 1405 SHA256:390c29b31a09ab7f31f8b5fc0fd82e47c25f15b22b17c614fb87f12d3b091070
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.9.tar.gz' sensible-utils_0.0.9.tar.gz 74331 SHA256:6fcb5cc0f7f1cf80421840cfa17b1b3fa5afaf3fe852dc984a789023af2f70c6
```

### `dpkg` source package: `serf=1.3.8-1`

Binary Packages:

- `libserf-1-1:amd64=1.3.8-1`

Licenses: (parsed from: `/usr/share/doc/libserf-1-1/copyright`)

- `Apache-2.0`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/serf/1.3.8-1/


### `dpkg` source package: `sgml-base=1.26+nmu4ubuntu1`

Binary Packages:

- `sgml-base=1.26+nmu4ubuntu1`

Licenses: (parsed from: `/usr/share/doc/sgml-base/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris sgml-base=1.26+nmu4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sgml-base/sgml-base_1.26+nmu4ubuntu1.dsc' sgml-base_1.26+nmu4ubuntu1.dsc 957 SHA256:0b11ab50b2c014793e6593f489f0a4dde796d351cab7520d9fa0629476982f00
'http://archive.ubuntu.com/ubuntu/pool/main/s/sgml-base/sgml-base_1.26+nmu4ubuntu1.tar.gz' sgml-base_1.26+nmu4ubuntu1.tar.gz 12912 SHA256:93d99ea554da5fea0c8abe424042ba8237c86faebaa02976fb92db3d198a47b4
```

### `dpkg` source package: `shadow=1:4.2-3.1ubuntu5.3`

Binary Packages:

- `login=1:4.2-3.1ubuntu5.3`
- `passwd=1:4.2-3.1ubuntu5.3`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.2-3.1ubuntu5.3
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.2-3.1ubuntu5.3.dsc' shadow_4.2-3.1ubuntu5.3.dsc 2120 SHA256:2b7b87f7999f5956c915fcd3fc166b0c9c459644ce8ec5505d57f2cca1b31b76
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.2.orig.tar.xz' shadow_4.2.orig.tar.xz 1088696 SHA256:c5bd72c4ecb438b99289e4630b22ea0626987a378d084910dbe59eceaa34be1d
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.2-3.1ubuntu5.3.debian.tar.xz' shadow_4.2-3.1ubuntu5.3.debian.tar.xz 505880 SHA256:654fb836e170a8395532ff589c644da6306745d4f630130082971b532bdd68f6
```

### `dpkg` source package: `shared-mime-info=1.5-2ubuntu0.1`

Binary Packages:

- `shared-mime-info=1.5-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/shared-mime-info/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris shared-mime-info=1.5-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_1.5-2ubuntu0.1.dsc' shared-mime-info_1.5-2ubuntu0.1.dsc 1527 SHA256:f612c1ecfdd685dae8107665a75191ea305e63dc84c4f930038eff69f582c668
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_1.5.orig.tar.xz' shared-mime-info_1.5.orig.tar.xz 559040 SHA256:d6412840eb265bf36e61fd7b6fc6bea21b0f58cb22bed16f2ccccdd54bea4180
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_1.5-2ubuntu0.1.debian.tar.xz' shared-mime-info_1.5-2ubuntu0.1.debian.tar.xz 10444 SHA256:a6b465a346b0e59a2600d56a0350cac242e6ee19b1f591ef47406135dfe0761f
```

### `dpkg` source package: `six=1.10.0-3`

Binary Packages:

- `python-six=1.10.0-3`

Licenses: (parsed from: `/usr/share/doc/python-six/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris six=1.10.0-3
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.10.0-3.dsc' six_1.10.0-3.dsc 2158 SHA256:71f2d5ff8b999c471cc2e92712befe482351a5ae226321e0e795bc683c8729cb
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.10.0.orig.tar.gz' six_1.10.0.orig.tar.gz 29630 SHA256:105f8d68616f8248e24bf0e9372ef04d3cc10104f1980f54d57b2ce73a5ad56a
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.10.0-3.debian.tar.xz' six_1.10.0-3.debian.tar.xz 3668 SHA256:860cc57244ea4e69eb4ee3ad1b823472c20d868c1cc25745b236ba6c9e1f3563
```

### `dpkg` source package: `sqlite3=3.11.0-1ubuntu1`

Binary Packages:

- `libsqlite3-0:amd64=3.11.0-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.11.0-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.11.0-1ubuntu1.dsc' sqlite3_3.11.0-1ubuntu1.dsc 2255 SHA256:54a83b386682afb224cfbd85d21c3f7cd71b1f42215fc229c6b6a6c0bc967dc4
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.11.0.orig-www.tar.xz' sqlite3_3.11.0.orig-www.tar.xz 3135012 SHA256:99843a91a1da29cf07269df49b37b0cd8a75035a88aacdb1186f94a9a217bab3
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.11.0.orig.tar.xz' sqlite3_3.11.0.orig.tar.xz 5122440 SHA256:79fb8800b8744337d5317270899a5a40612bb76f81517e131bf496c26b044490
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.11.0-1ubuntu1.debian.tar.xz' sqlite3_3.11.0-1ubuntu1.debian.tar.xz 16272 SHA256:b81ff12e88d62abc111b609b7aed3571bc1ce902d097058ad1d53fb18076098d
```

### `dpkg` source package: `subversion=1.9.3-2ubuntu1.1`

Binary Packages:

- `libsvn1:amd64=1.9.3-2ubuntu1.1`
- `subversion=1.9.3-2ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libsvn1/copyright`, `/usr/share/doc/subversion/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris subversion=1.9.3-2ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/s/subversion/subversion_1.9.3-2ubuntu1.1.dsc' subversion_1.9.3-2ubuntu1.1.dsc 3273 SHA256:eb2f59f1a17be16de1094ac1bf9e961eb65dbc55d20f22bdf0c26bf9e181b8ab
'http://archive.ubuntu.com/ubuntu/pool/main/s/subversion/subversion_1.9.3.orig.tar.gz' subversion_1.9.3.orig.tar.gz 10600934 SHA256:74cd21d2f8a2a54e4dbd2389fe1605a19dbda8ba88ffc4bb0edc9a66e143cc93
'http://archive.ubuntu.com/ubuntu/pool/main/s/subversion/subversion_1.9.3-2ubuntu1.1.diff.gz' subversion_1.9.3-2ubuntu1.1.diff.gz 2432375 SHA256:43ea0c91f14ddee823b7e661e3dec6eaa4eab55d0c9f69c22df4584e8392bbd6
```

### `dpkg` source package: `systemd=229-4ubuntu21`

Binary Packages:

- `libsystemd0:amd64=229-4ubuntu21`
- `libudev1:amd64=229-4ubuntu21`
- `systemd=229-4ubuntu21`
- `systemd-sysv=229-4ubuntu21`

Licenses: (parsed from: `/usr/share/doc/libsystemd0/copyright`, `/usr/share/doc/libudev1/copyright`, `/usr/share/doc/systemd/copyright`, `/usr/share/doc/systemd-sysv/copyright`)

- `CC0`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `sysvinit=2.88dsf-59.3ubuntu2`

Binary Packages:

- `initscripts=2.88dsf-59.3ubuntu2`
- `sysv-rc=2.88dsf-59.3ubuntu2`
- `sysvinit-utils=2.88dsf-59.3ubuntu2`

Licenses: (parsed from: `/usr/share/doc/initscripts/copyright`, `/usr/share/doc/sysv-rc/copyright`, `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.88dsf-59.3ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf-59.3ubuntu2.dsc' sysvinit_2.88dsf-59.3ubuntu2.dsc 2284 SHA256:a64f0c2c11c14c8bf57fee7c583ae38ea710ec3288c3d840daeeec5a2eab1676
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf.orig.tar.gz' sysvinit_2.88dsf.orig.tar.gz 125330 SHA256:b016f937958d2809a020d407e1287bdc09abf1d44efaa96530e2ea57f544f4e8
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf-59.3ubuntu2.debian.tar.xz' sysvinit_2.88dsf-59.3ubuntu2.debian.tar.xz 134864 SHA256:d4cf7aa3d6c1f8727cbd699395053d541844a9ff02ea5e6a1119eb90604586b8
```

### `dpkg` source package: `tar=1.28-2.1ubuntu0.1`

Binary Packages:

- `tar=1.28-2.1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.28-2.1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.28-2.1ubuntu0.1.dsc' tar_1.28-2.1ubuntu0.1.dsc 2025 SHA256:b4ed109da748b893bfb036dd81251156181573659b35e506e5c8bc8c7c155fd4
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.28.orig.tar.xz' tar_1.28.orig.tar.xz 1756440 SHA256:6da98f52fc469754dbde475c861581036ff2c83a1ef4f7250292935139f587d9
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.28-2.1ubuntu0.1.debian.tar.xz' tar_1.28-2.1ubuntu0.1.debian.tar.xz 36868 SHA256:1933bd564d70d3d0cf085291969af36b2461265270be25f3819cc033f72c1ac6
```

### `dpkg` source package: `tinyxml2=2.2.0-1.1ubuntu1`

Binary Packages:

- `libtinyxml2-2v5:amd64=2.2.0-1.1ubuntu1`
- `libtinyxml2-dev:amd64=2.2.0-1.1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libtinyxml2-2v5/copyright`, `/usr/share/doc/libtinyxml2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris tinyxml2=2.2.0-1.1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_2.2.0-1.1ubuntu1.dsc' tinyxml2_2.2.0-1.1ubuntu1.dsc 1968 SHA256:5ccede2b8baeb174c4fcc24e0555c9f229bb832cc5bc6bbb8477e2fb15bcb3fa
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_2.2.0.orig.tar.gz' tinyxml2_2.2.0.orig.tar.gz 455226 SHA256:f891224f32e7a06bf279290619cec80cc8ddc335c13696872195ffb87f5bce67
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_2.2.0-1.1ubuntu1.debian.tar.xz' tinyxml2_2.2.0-1.1ubuntu1.debian.tar.xz 4896 SHA256:2e2ecb4f405be569a5fb55f2494d625d43e65b2ff620e751ace79fb0f1df6160
```

### `dpkg` source package: `tzdata=2017c-0ubuntu0.16.04`

Binary Packages:

- `tzdata=2017c-0ubuntu0.16.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tzdata=2017c-0ubuntu0.16.04
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2017c-0ubuntu0.16.04.dsc' tzdata_2017c-0ubuntu0.16.04.dsc 2101 SHA256:8cd0a24d912fdc38163bd2fe4819ca0fd6a42282bbe3bb3099c1a1ec17275035
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2017c.orig.tar.gz' tzdata_2017c.orig.tar.gz 335571 SHA256:d6543f92a929826318e2f44ff3a7611ce5f565a43e10250b42599d0ba4cbd90b
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2017c-0ubuntu0.16.04.debian.tar.xz' tzdata_2017c-0ubuntu0.16.04.debian.tar.xz 99668 SHA256:c46312124c371a7e4bfa88999530783f518ef69706bb2035cdd0dbf8dead3280
```

### `dpkg` source package: `ubuntu-keyring=2012.05.19`

Binary Packages:

- `ubuntu-keyring=2012.05.19`

Licenses: (parsed from: `/usr/share/doc/ubuntu-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ubuntu-keyring=2012.05.19
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2012.05.19.dsc' ubuntu-keyring_2012.05.19.dsc 1542 SHA256:a98138a8ef99905330f7f1340d04f8a9104c8706243e4c694b46db7d11c89d16
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2012.05.19.tar.gz' ubuntu-keyring_2012.05.19.tar.gz 18495 SHA256:8b3bb00770c7b1e5c0abb215ecf8c383cb3b709292a52aeb1022b5556e768b69
```

### `dpkg` source package: `ucf=3.0036`

Binary Packages:

- `ucf=3.0036`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0036
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0036.dsc' ucf_3.0036.dsc 1343 SHA256:e67a8a3012ac357c7759dabd93d258422b1003bad8c3f17f25fc2a289eeda3bb
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0036.tar.xz' ucf_3.0036.tar.xz 65020 SHA256:34aa44416106f1205376918386b2896edf21dd42b633133b5f8fedecae17fca8
```

### `dpkg` source package: `ustr=1.0.4-5`

Binary Packages:

- `libustr-1.0-1:amd64=1.0.4-5`

Licenses: (parsed from: `/usr/share/doc/libustr-1.0-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris ustr=1.0.4-5
'http://archive.ubuntu.com/ubuntu/pool/main/u/ustr/ustr_1.0.4-5.dsc' ustr_1.0.4-5.dsc 2016 SHA256:3c06f54e4c05e76bf7c4d7192bbf3a7b259372c7448a4245e8317115808cf7c9
'http://archive.ubuntu.com/ubuntu/pool/main/u/ustr/ustr_1.0.4.orig.tar.gz' ustr_1.0.4.orig.tar.gz 301345 SHA256:4d293b6b9d9fe51d58441f4b09b1f0005fcad8256ae8048587789bf5dbefb62e
'http://archive.ubuntu.com/ubuntu/pool/main/u/ustr/ustr_1.0.4-5.debian.tar.xz' ustr_1.0.4-5.debian.tar.xz 24948 SHA256:a21e78acf82dcccef2893932ef7b85852419bfd9b18382e63c34e7710c1d7762
```

### `dpkg` source package: `util-linux=2.27.1-6ubuntu3.3`

Binary Packages:

- `bsdutils=1:2.27.1-6ubuntu3.3`
- `libblkid1:amd64=2.27.1-6ubuntu3.3`
- `libfdisk1:amd64=2.27.1-6ubuntu3.3`
- `libmount1:amd64=2.27.1-6ubuntu3.3`
- `libsmartcols1:amd64=2.27.1-6ubuntu3.3`
- `libuuid1:amd64=2.27.1-6ubuntu3.3`
- `mount=2.27.1-6ubuntu3.3`
- `util-linux=2.27.1-6ubuntu3.3`
- `uuid-dev:amd64=2.27.1-6ubuntu3.3`

Licenses: (parsed from: `/usr/share/doc/bsdutils/copyright`, `/usr/share/doc/libblkid1/copyright`, `/usr/share/doc/libfdisk1/copyright`, `/usr/share/doc/libmount1/copyright`, `/usr/share/doc/libsmartcols1/copyright`, `/usr/share/doc/libuuid1/copyright`, `/usr/share/doc/mount/copyright`, `/usr/share/doc/util-linux/copyright`, `/usr/share/doc/uuid-dev/copyright`)

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
$ apt-get source -qq --print-uris util-linux=2.27.1-6ubuntu3.3
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.27.1-6ubuntu3.3.dsc' util-linux_2.27.1-6ubuntu3.3.dsc 3942 SHA256:31d135f83fbf7ea5eba164e32b43fca6489504e2c37363414c90e80ce3af375b
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.27.1.orig.tar.xz' util-linux_2.27.1.orig.tar.xz 3964512 SHA256:0a818fcdede99aec43ffe6ca5b5388bff80d162f2f7bd4541dca94fecb87a290
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.27.1-6ubuntu3.3.debian.tar.xz' util-linux_2.27.1-6ubuntu3.3.debian.tar.xz 83780 SHA256:dd3239be2d471306a110fcf91984d41f5e49a0386a8aacd8647b4811e428c0d9
```

### `dpkg` source package: `xdg-user-dirs=0.15-2ubuntu6`

Binary Packages:

- `xdg-user-dirs=0.15-2ubuntu6`

Licenses: (parsed from: `/usr/share/doc/xdg-user-dirs/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris xdg-user-dirs=0.15-2ubuntu6
'http://archive.ubuntu.com/ubuntu/pool/main/x/xdg-user-dirs/xdg-user-dirs_0.15-2ubuntu6.dsc' xdg-user-dirs_0.15-2ubuntu6.dsc 1599 SHA256:c9576bd88fb7361c5c08d8b877ba05729ba05142a8e061444d3d1f6324c31c05
'http://archive.ubuntu.com/ubuntu/pool/main/x/xdg-user-dirs/xdg-user-dirs_0.15.orig.tar.gz' xdg-user-dirs_0.15.orig.tar.gz 243747 SHA256:20b4a751f41d0554bce3e0ce5e8d934be98cc62d48f0b90a894c3e1916552786
'http://archive.ubuntu.com/ubuntu/pool/main/x/xdg-user-dirs/xdg-user-dirs_0.15-2ubuntu6.debian.tar.xz' xdg-user-dirs_0.15-2ubuntu6.debian.tar.xz 27808 SHA256:e53507d0b607fe9d9ccf5bc22b8b3201a4855cc3e764fd131e95eb60589096b3
```

### `dpkg` source package: `xml-core=0.13+nmu2`

Binary Packages:

- `xml-core=0.13+nmu2`

Licenses: (parsed from: `/usr/share/doc/xml-core/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris xml-core=0.13+nmu2
'http://archive.ubuntu.com/ubuntu/pool/main/x/xml-core/xml-core_0.13+nmu2.dsc' xml-core_0.13+nmu2.dsc 1738 SHA256:edf913f3aee9865480143bdd91f5f6a0838ca61ddc8674ea316e48a22d65fecb
'http://archive.ubuntu.com/ubuntu/pool/main/x/xml-core/xml-core_0.13+nmu2.tar.gz' xml-core_0.13+nmu2.tar.gz 23436 SHA256:cd3f5402265a9ab0e7e4a6efafdc5eb9cb02d33c3e75d1ff1ecb0ac0899e242b
```

### `dpkg` source package: `xz-utils=5.1.1alpha+20120614-2ubuntu2`

Binary Packages:

- `liblzma5:amd64=5.1.1alpha+20120614-2ubuntu2`
- `xz-utils=5.1.1alpha+20120614-2ubuntu2`

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
$ apt-get source -qq --print-uris xz-utils=5.1.1alpha+20120614-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.1.1alpha+20120614-2ubuntu2.dsc' xz-utils_5.1.1alpha+20120614-2ubuntu2.dsc 2409 SHA256:0a8cb3d928d1327f70b998b713c10afd9cd064056f5973d48075cd3d0f7872ca
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.1.1alpha+20120614.orig.tar.gz' xz-utils_5.1.1alpha+20120614.orig.tar.gz 556454 SHA256:b168e63400db449a6e7b3a06e668f557ca27e3d70accbd29d2b5a98e15c00fee
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.1.1alpha+20120614-2ubuntu2.debian.tar.gz' xz-utils_5.1.1alpha+20120614-2ubuntu2.debian.tar.gz 156001 SHA256:e7743d4a96276ccffc4e171812e402a1f503f87df3b668ef0e58db6629146a18
```

### `dpkg` source package: `zlib=1:1.2.8.dfsg-2ubuntu4.1`

Binary Packages:

- `zlib1g:amd64=1:1.2.8.dfsg-2ubuntu4.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.8.dfsg-2ubuntu4.1
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.8.dfsg-2ubuntu4.1.dsc' zlib_1.2.8.dfsg-2ubuntu4.1.dsc 2695 SHA256:3d8301274b24b01c8c0b9b019d0321f199c1f8c689bea3d9bed20afbbce63d23
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.8.dfsg.orig.tar.gz' zlib_1.2.8.dfsg.orig.tar.gz 361943 SHA256:2caecc2c3f1ef8b87b8f72b128a03e61c307e8c14f5ec9b422ef7914ba75cf9f
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.8.dfsg-2ubuntu4.1.debian.tar.xz' zlib_1.2.8.dfsg-2ubuntu4.1.debian.tar.xz 15484 SHA256:1dd06dbca693a414843e9972a1a60f24b987aeb0cf440ae5a4d249eb4c6e3939
```
