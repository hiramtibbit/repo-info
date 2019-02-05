# `ros:melodic-ros-core`

## Docker Metadata

- Image ID: `sha256:f3193024f6e141054b208917abdd40b85712a1119dbf8512369fafc15ea03c47`
- Created: `2019-01-23T03:29:11.770793897Z`
- Virtual Size: ~ 1.06 Gb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/ros_entrypoint.sh"]`
- Command: `["bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `LANG=C.UTF-8`
  - `LC_ALL=C.UTF-8`
  - `ROS_DISTRO=melodic`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.2.52-3build1`

Binary Packages:

- `libacl1:amd64=2.2.52-3build1`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.2.52-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52-3build1.dsc' acl_2.2.52-3build1.dsc 2031 SHA256:864215f3e68d6b169a044bd952e78be9b0b1cf527a2cbf25866cab919e78e64b
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52.orig.tar.bz2' acl_2.2.52.orig.tar.bz2 312128 SHA256:59d05b38af76baf2eddccbf08c7968a17451cc785ffecc657fcb46ce32b2631d
'http://archive.ubuntu.com/ubuntu/pool/main/a/acl/acl_2.2.52-3build1.debian.tar.xz' acl_2.2.52-3build1.debian.tar.xz 8788 SHA256:0729d8c850aa26bc9f1b22ce632efb1616a3f97dc5fca1d9edfda45b582b7f37
```

### `dpkg` source package: `adduser=3.116ubuntu1`

Binary Packages:

- `adduser=3.116ubuntu1`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.116ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.116ubuntu1.dsc' adduser_3.116ubuntu1.dsc 1845 SHA256:fc44097093d74fc2e36fc37dceb54cf6bcb70a434240b14fd91beb64849cf2fd
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.116ubuntu1.tar.xz' adduser_3.116ubuntu1.tar.xz 216868 SHA256:f34f1d95e96ecae3b068a3dd666848f82f06cbb26152c56a6b72bd71555a8f18
```

### `dpkg` source package: `apr-util=1.6.1-2`

Binary Packages:

- `libaprutil1:amd64=1.6.1-2`
- `libaprutil1-dev=1.6.1-2`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`, `/usr/share/doc/libaprutil1-dev/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.6.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1-2.dsc' apr-util_1.6.1-2.dsc 2851 SHA256:7a3a7d0dccc0d89ad751988163cb57d34b32094893d08c4d0ac79e9bfee6d8f4
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2' apr-util_1.6.1.orig.tar.bz2 428595 SHA256:d3e12f7b6ad12687572a3a39475545a072608f4ba03a6ce8a3778f607dd0035b
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2.asc' apr-util_1.6.1.orig.tar.bz2.asc 801 SHA256:47837b605290c0d7659b73734e4a9d5e6c0c24c13185cd4d91837afe63c07ca4
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1-2.debian.tar.xz' apr-util_1.6.1-2.debian.tar.xz 211832 SHA256:e30e919e7e049a8a7056b7184e77d69b82660d71a4bf9654d1c9bfccf2fcde30
```

### `dpkg` source package: `apr=1.6.3-2`

Binary Packages:

- `libapr1:amd64=1.6.3-2`
- `libapr1-dev=1.6.3-2`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`, `/usr/share/doc/libapr1-dev/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.6.3-2
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.3-2.dsc' apr_1.6.3-2.dsc 2305 SHA256:0597703f9ea3bc3b30fcd7e055c67c2113e5c4255df5ff42738ce6a396bf5afc
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.3.orig.tar.bz2' apr_1.6.3.orig.tar.bz2 854100 SHA256:131f06d16d7aabd097fa992a33eec2b6af3962f93e6d570a9bd4d85e95993172
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.3.orig.tar.bz2.asc' apr_1.6.3.orig.tar.bz2.asc 801 SHA256:33db39162f7ca9acdccaa4f19630a67045542791b262116d3512c8b5d7c3fca1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.3-2.debian.tar.xz' apr_1.6.3-2.debian.tar.xz 213068 SHA256:ac515f888f7157586631e3de9792ee01d239f9cbf1e768be31ee6daac61f2597
```

### `dpkg` source package: `apt=1.6.6ubuntu0.1`

Binary Packages:

- `apt=1.6.6ubuntu0.1`
- `libapt-pkg5.0:amd64=1.6.6ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=1.6.6ubuntu0.1
'http://security.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.6.6ubuntu0.1.dsc' apt_1.6.6ubuntu0.1.dsc 2837 SHA256:f16c1138e5ffa3c105ff388d028bc884746f2a2f73766c2e740827d5bf4d37d7
'http://security.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.6.6ubuntu0.1.tar.xz' apt_1.6.6ubuntu0.1.tar.xz 2141972 SHA256:76527ee62dc2c465a6bf5d0f46325608de75c8d02afc177591b12a25784c65ad
```

### `dpkg` source package: `asn1crypto=0.24.0-1`

Binary Packages:

- `python-asn1crypto=0.24.0-1`

Licenses: (parsed from: `/usr/share/doc/python-asn1crypto/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris asn1crypto=0.24.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/a/asn1crypto/asn1crypto_0.24.0-1.dsc' asn1crypto_0.24.0-1.dsc 1960 SHA256:71bef30ecadbb81ed4a656230892c1d7d4fde3dd74eaa546c94ae93c43591045
'http://archive.ubuntu.com/ubuntu/pool/main/a/asn1crypto/asn1crypto_0.24.0.orig.tar.gz' asn1crypto_0.24.0.orig.tar.gz 104964 SHA256:9d5c20441baf0cb60a4ac34cc447c6c189024b6b4c6cd7877034f4965c464e49
'http://archive.ubuntu.com/ubuntu/pool/main/a/asn1crypto/asn1crypto_0.24.0-1.debian.tar.xz' asn1crypto_0.24.0-1.debian.tar.xz 2288 SHA256:72a5e503943aa519acbd51971b83e51345aa53270f93d4e1313e1e7f7a05ab29
```

### `dpkg` source package: `attr=1:2.4.47-2build1`

Binary Packages:

- `libattr1:amd64=1:2.4.47-2build1`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.4.47-2build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-2build1.dsc' attr_2.4.47-2build1.dsc 2033 SHA256:b78dbf07b789010caabc12c1ab0b2a944072058fe47ac6b5d345209c16f4e1f5
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47.orig.tar.bz2' attr_2.4.47.orig.tar.bz2 281877 SHA256:6c1208035757f5ce9b516402dd45b8299a53ae4d69ad2c352116f9cb8d7bc274
'http://archive.ubuntu.com/ubuntu/pool/main/a/attr/attr_2.4.47-2build1.debian.tar.xz' attr_2.4.47-2build1.debian.tar.xz 8168 SHA256:6732a8874190a1f792c7f9cb95fadc1dc852baf2e164b0d7b4bcea525f5c0882
```

### `dpkg` source package: `audit=1:2.8.2-1ubuntu1`

Binary Packages:

- `libaudit-common=1:2.8.2-1ubuntu1`
- `libaudit1:amd64=1:2.8.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.8.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.8.2-1ubuntu1.dsc' audit_2.8.2-1ubuntu1.dsc 2903 SHA256:454c231dc2268ee4862f87d65720354699be9b807a411556a536bc2b4e581a90
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.8.2.orig.tar.gz' audit_2.8.2.orig.tar.gz 1121970 SHA256:67b59b2b77afee9ed87afa4d80ffc8e6f3a1f4bbedd5f2871f387c952147bcba
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.8.2-1ubuntu1.debian.tar.xz' audit_2.8.2-1ubuntu1.debian.tar.xz 21344 SHA256:2bc93230e3bf01eef5e9a5acff8f904af074e6e39003f1db8941118fbd041ec2
```

### `dpkg` source package: `autotools-dev=20180224.1`

Binary Packages:

- `autotools-dev=20180224.1`

Licenses: (parsed from: `/usr/share/doc/autotools-dev/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris autotools-dev=20180224.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20180224.1.dsc' autotools-dev_20180224.1.dsc 1643 SHA256:795f558377bf6c90280c293b2711afc094cd1bf6ae486a395e1361ffd242cd2f
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20180224.1.tar.xz' autotools-dev_20180224.1.tar.xz 68256 SHA256:355a4d8461dfedebd2c5194603197712a10f71e20de73a35ab6e90b7acf3e837
```

### `dpkg` source package: `base-files=10.1ubuntu2.3`

Binary Packages:

- `base-files=10.1ubuntu2.3`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=10.1ubuntu2.3
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_10.1ubuntu2.3.dsc' base-files_10.1ubuntu2.3.dsc 1620 SHA256:09df4de1d368582baec2118933103e533ee584dad99e20e9da4fc14cd3531d6c
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_10.1ubuntu2.3.tar.xz' base-files_10.1ubuntu2.3.tar.xz 78140 SHA256:96f33d65b216e1d980d807d979ff8a8230834790627df8afe63dfc758a45be69
```

### `dpkg` source package: `base-passwd=3.5.44`

Binary Packages:

- `base-passwd=3.5.44`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.44
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.44.dsc' base-passwd_3.5.44.dsc 1685 SHA256:22a5db1e9bb71fa8a4d682b3f9c01470a61b8041eb6212471181c6808b268c13
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.44.tar.xz' base-passwd_3.5.44.tar.xz 52644 SHA256:f17a0746024572e86e60e4614cf226a81ffe682ceaf1a1fce9dc1a8002683e90
```

### `dpkg` source package: `bash=4.4.18-2ubuntu1`

Binary Packages:

- `bash=4.4.18-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=4.4.18-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4.18-2ubuntu1.dsc' bash_4.4.18-2ubuntu1.dsc 2428 SHA256:ec8a83c399050b93b519feb3d2c08a90f9c3b090c18b7741785af50ce04cb6be
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4.18.orig.tar.xz' bash_4.4.18.orig.tar.xz 5036272 SHA256:704143a7170041ac9f1025455d6d23ff0f353711a3dc557b47d6e6322f24cd02
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4.18-2ubuntu1.debian.tar.xz' bash_4.4.18-2ubuntu1.debian.tar.xz 63912 SHA256:0f9a072b7a892c8ed388dac71783f8c4547c3b9737efa5ccb28bf243ab77ef10
```

### `dpkg` source package: `binfmt-support=2.1.8-2`

Binary Packages:

- `binfmt-support=2.1.8-2`

Licenses: (parsed from: `/usr/share/doc/binfmt-support/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris binfmt-support=2.1.8-2
'http://archive.ubuntu.com/ubuntu/pool/main/b/binfmt-support/binfmt-support_2.1.8-2.dsc' binfmt-support_2.1.8-2.dsc 2202 SHA256:7cdb06bd73c16c8adf82f1b38ddf4683f7b8146095eddcd410046bc302f155d1
'http://archive.ubuntu.com/ubuntu/pool/main/b/binfmt-support/binfmt-support_2.1.8.orig.tar.gz' binfmt-support_2.1.8.orig.tar.gz 688218 SHA256:ebad04db8444d2275d042b5074fa3e160bcf3e2c23ee9b660e75f5acd73618a2
'http://archive.ubuntu.com/ubuntu/pool/main/b/binfmt-support/binfmt-support_2.1.8.orig.tar.gz.asc' binfmt-support_2.1.8.orig.tar.gz.asc 833 SHA256:7a06e7243b9f29f528225f38e429964a1e2bedd13a846cb490f520c6f6a1023b
'http://archive.ubuntu.com/ubuntu/pool/main/b/binfmt-support/binfmt-support_2.1.8-2.debian.tar.xz' binfmt-support_2.1.8-2.debian.tar.xz 202736 SHA256:3f59796f0cd81c6e45e6ed2956f7b6e46bac845231e2893d24da19bc51457cb1
```

### `dpkg` source package: `binutils=2.30-21ubuntu1~18.04`

Binary Packages:

- `binutils=2.30-21ubuntu1~18.04`
- `binutils-common:amd64=2.30-21ubuntu1~18.04`
- `binutils-x86-64-linux-gnu=2.30-21ubuntu1~18.04`
- `libbinutils:amd64=2.30-21ubuntu1~18.04`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.30-21ubuntu1~18.04
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.30-21ubuntu1~18.04.dsc' binutils_2.30-21ubuntu1~18.04.dsc 11624 SHA256:4ffc258658dd2eeb10c3672bad9e0748d9cba59fc0651e9fd034aa386e7c5a71
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.30.orig.tar.xz' binutils_2.30.orig.tar.xz 20286700 SHA256:6e46b8aeae2f727a36f0bd9505e405768a72218f1796f0d09757d45209871ae6
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.30-21ubuntu1~18.04.debian.tar.xz' binutils_2.30-21ubuntu1~18.04.debian.tar.xz 559720 SHA256:e9bbd94d4afb31007b9729c1022bd4018a3279a7daf6d521b768b0e09881838e
```

### `dpkg` source package: `boost-defaults=1.65.1.0ubuntu1`

Binary Packages:

- `libboost-all-dev=1.65.1.0ubuntu1`
- `libboost-atomic-dev:amd64=1.65.1.0ubuntu1`
- `libboost-chrono-dev:amd64=1.65.1.0ubuntu1`
- `libboost-container-dev:amd64=1.65.1.0ubuntu1`
- `libboost-context-dev:amd64=1.65.1.0ubuntu1`
- `libboost-coroutine-dev:amd64=1.65.1.0ubuntu1`
- `libboost-date-time-dev:amd64=1.65.1.0ubuntu1`
- `libboost-dev:amd64=1.65.1.0ubuntu1`
- `libboost-exception-dev:amd64=1.65.1.0ubuntu1`
- `libboost-fiber-dev:amd64=1.65.1.0ubuntu1`
- `libboost-filesystem-dev:amd64=1.65.1.0ubuntu1`
- `libboost-graph-dev:amd64=1.65.1.0ubuntu1`
- `libboost-graph-parallel-dev=1.65.1.0ubuntu1`
- `libboost-iostreams-dev:amd64=1.65.1.0ubuntu1`
- `libboost-locale-dev:amd64=1.65.1.0ubuntu1`
- `libboost-log-dev=1.65.1.0ubuntu1`
- `libboost-math-dev:amd64=1.65.1.0ubuntu1`
- `libboost-mpi-dev=1.65.1.0ubuntu1`
- `libboost-mpi-python-dev=1.65.1.0ubuntu1`
- `libboost-numpy-dev=1.65.1.0ubuntu1`
- `libboost-program-options-dev:amd64=1.65.1.0ubuntu1`
- `libboost-python-dev=1.65.1.0ubuntu1`
- `libboost-random-dev:amd64=1.65.1.0ubuntu1`
- `libboost-regex-dev:amd64=1.65.1.0ubuntu1`
- `libboost-serialization-dev:amd64=1.65.1.0ubuntu1`
- `libboost-signals-dev:amd64=1.65.1.0ubuntu1`
- `libboost-stacktrace-dev:amd64=1.65.1.0ubuntu1`
- `libboost-system-dev:amd64=1.65.1.0ubuntu1`
- `libboost-test-dev:amd64=1.65.1.0ubuntu1`
- `libboost-thread-dev:amd64=1.65.1.0ubuntu1`
- `libboost-timer-dev:amd64=1.65.1.0ubuntu1`
- `libboost-tools-dev=1.65.1.0ubuntu1`
- `libboost-type-erasure-dev:amd64=1.65.1.0ubuntu1`
- `libboost-wave-dev:amd64=1.65.1.0ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris boost-defaults=1.65.1.0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost-defaults/boost-defaults_1.65.1.0ubuntu1.dsc' boost-defaults_1.65.1.0ubuntu1.dsc 4037 SHA256:0e1e6bde4468c802a8cb0795e15a3deb56ef29288f051f539a18a0b1b24edd6c
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost-defaults/boost-defaults_1.65.1.0ubuntu1.tar.gz' boost-defaults_1.65.1.0ubuntu1.tar.gz 12172 SHA256:2554c6a67a4b6939d2090d37445cc0fc366c1448c4080f62ebe2ca189d691a7a
```

### `dpkg` source package: `boost1.65.1=1.65.1+dfsg-0ubuntu5`

Binary Packages:

- `libboost-atomic1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-atomic1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-chrono1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-chrono1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-container1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-container1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-context1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-context1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-coroutine1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-coroutine1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-date-time1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-date-time1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-exception1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-fiber1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-fiber1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-filesystem1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-filesystem1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-graph-parallel1.65-dev=1.65.1+dfsg-0ubuntu5`
- `libboost-graph-parallel1.65.1=1.65.1+dfsg-0ubuntu5`
- `libboost-graph1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-graph1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-iostreams1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-iostreams1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-locale1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-locale1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-log1.65-dev=1.65.1+dfsg-0ubuntu5`
- `libboost-log1.65.1=1.65.1+dfsg-0ubuntu5`
- `libboost-math1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-math1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-mpi-python1.65-dev=1.65.1+dfsg-0ubuntu5`
- `libboost-mpi-python1.65.1=1.65.1+dfsg-0ubuntu5`
- `libboost-mpi1.65-dev=1.65.1+dfsg-0ubuntu5`
- `libboost-mpi1.65.1=1.65.1+dfsg-0ubuntu5`
- `libboost-numpy1.65-dev=1.65.1+dfsg-0ubuntu5`
- `libboost-numpy1.65.1=1.65.1+dfsg-0ubuntu5`
- `libboost-program-options1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-program-options1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-python1.65-dev=1.65.1+dfsg-0ubuntu5`
- `libboost-python1.65.1=1.65.1+dfsg-0ubuntu5`
- `libboost-random1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-random1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-regex1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-regex1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-serialization1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-serialization1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-signals1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-signals1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-stacktrace1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-stacktrace1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-system1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-system1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-test1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-test1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-thread1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-thread1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-timer1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-timer1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-type-erasure1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-type-erasure1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-wave1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost-wave1.65.1:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost1.65-dev:amd64=1.65.1+dfsg-0ubuntu5`
- `libboost1.65-tools-dev=1.65.1+dfsg-0ubuntu5`

Licenses: (parsed from: `/usr/share/doc/libboost-atomic1.65-dev/copyright`, `/usr/share/doc/libboost-atomic1.65.1/copyright`, `/usr/share/doc/libboost-chrono1.65-dev/copyright`, `/usr/share/doc/libboost-chrono1.65.1/copyright`, `/usr/share/doc/libboost-container1.65-dev/copyright`, `/usr/share/doc/libboost-container1.65.1/copyright`, `/usr/share/doc/libboost-context1.65-dev/copyright`, `/usr/share/doc/libboost-context1.65.1/copyright`, `/usr/share/doc/libboost-coroutine1.65-dev/copyright`, `/usr/share/doc/libboost-coroutine1.65.1/copyright`, `/usr/share/doc/libboost-date-time1.65-dev/copyright`, `/usr/share/doc/libboost-date-time1.65.1/copyright`, `/usr/share/doc/libboost-exception1.65-dev/copyright`, `/usr/share/doc/libboost-fiber1.65-dev/copyright`, `/usr/share/doc/libboost-fiber1.65.1/copyright`, `/usr/share/doc/libboost-filesystem1.65-dev/copyright`, `/usr/share/doc/libboost-filesystem1.65.1/copyright`, `/usr/share/doc/libboost-graph-parallel1.65-dev/copyright`, `/usr/share/doc/libboost-graph-parallel1.65.1/copyright`, `/usr/share/doc/libboost-graph1.65-dev/copyright`, `/usr/share/doc/libboost-graph1.65.1/copyright`, `/usr/share/doc/libboost-iostreams1.65-dev/copyright`, `/usr/share/doc/libboost-iostreams1.65.1/copyright`, `/usr/share/doc/libboost-locale1.65-dev/copyright`, `/usr/share/doc/libboost-locale1.65.1/copyright`, `/usr/share/doc/libboost-log1.65-dev/copyright`, `/usr/share/doc/libboost-log1.65.1/copyright`, `/usr/share/doc/libboost-math1.65-dev/copyright`, `/usr/share/doc/libboost-math1.65.1/copyright`, `/usr/share/doc/libboost-mpi-python1.65-dev/copyright`, `/usr/share/doc/libboost-mpi-python1.65.1/copyright`, `/usr/share/doc/libboost-mpi1.65-dev/copyright`, `/usr/share/doc/libboost-mpi1.65.1/copyright`, `/usr/share/doc/libboost-numpy1.65-dev/copyright`, `/usr/share/doc/libboost-numpy1.65.1/copyright`, `/usr/share/doc/libboost-program-options1.65-dev/copyright`, `/usr/share/doc/libboost-program-options1.65.1/copyright`, `/usr/share/doc/libboost-python1.65-dev/copyright`, `/usr/share/doc/libboost-python1.65.1/copyright`, `/usr/share/doc/libboost-random1.65-dev/copyright`, `/usr/share/doc/libboost-random1.65.1/copyright`, `/usr/share/doc/libboost-regex1.65-dev/copyright`, `/usr/share/doc/libboost-regex1.65.1/copyright`, `/usr/share/doc/libboost-serialization1.65-dev/copyright`, `/usr/share/doc/libboost-serialization1.65.1/copyright`, `/usr/share/doc/libboost-signals1.65-dev/copyright`, `/usr/share/doc/libboost-signals1.65.1/copyright`, `/usr/share/doc/libboost-stacktrace1.65-dev/copyright`, `/usr/share/doc/libboost-stacktrace1.65.1/copyright`, `/usr/share/doc/libboost-system1.65-dev/copyright`, `/usr/share/doc/libboost-system1.65.1/copyright`, `/usr/share/doc/libboost-test1.65-dev/copyright`, `/usr/share/doc/libboost-test1.65.1/copyright`, `/usr/share/doc/libboost-thread1.65-dev/copyright`, `/usr/share/doc/libboost-thread1.65.1/copyright`, `/usr/share/doc/libboost-timer1.65-dev/copyright`, `/usr/share/doc/libboost-timer1.65.1/copyright`, `/usr/share/doc/libboost-type-erasure1.65-dev/copyright`, `/usr/share/doc/libboost-type-erasure1.65.1/copyright`, `/usr/share/doc/libboost-wave1.65-dev/copyright`, `/usr/share/doc/libboost-wave1.65.1/copyright`, `/usr/share/doc/libboost1.65-dev/copyright`, `/usr/share/doc/libboost1.65-tools-dev/copyright`)

- `Boost`
- `bjam`
- `boostbook`

Source:

```console
$ apt-get source -qq --print-uris boost1.65.1=1.65.1+dfsg-0ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.65.1/boost1.65.1_1.65.1+dfsg-0ubuntu5.dsc' boost1.65.1_1.65.1+dfsg-0ubuntu5.dsc 7825 SHA256:e046822facd57a5810416328f6e440f5ae5a4017215d1ea3ca7bec59e090c598
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.65.1/boost1.65.1_1.65.1+dfsg.orig.tar.bz2' boost1.65.1_1.65.1+dfsg.orig.tar.bz2 82120283 SHA256:c7709bf6b416e0609fac4bcc0c0093a890ccbeaeebbeabe45877cffc5d06f43c
'http://archive.ubuntu.com/ubuntu/pool/main/b/boost1.65.1/boost1.65.1_1.65.1+dfsg-0ubuntu5.debian.tar.xz' boost1.65.1_1.65.1+dfsg-0ubuntu5.debian.tar.xz 105524 SHA256:c238e8a63c232911402cef6f8ea7763bddf572f7062b5353147ee9ed9a79afdb
```

### `dpkg` source package: `build-essential=12.4ubuntu1`

Binary Packages:

- `build-essential=12.4ubuntu1`

Licenses: (parsed from: `/usr/share/doc/build-essential/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris build-essential=12.4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/build-essential/build-essential_12.4ubuntu1.dsc' build-essential_12.4ubuntu1.dsc 2032 SHA256:93ee6ef55a672f52722fbc37d1ec3172e685226ee7f44f028db43bea0791c30e
'http://archive.ubuntu.com/ubuntu/pool/main/b/build-essential/build-essential_12.4ubuntu1.tar.gz' build-essential_12.4ubuntu1.tar.gz 64966 SHA256:890a4bb7b72ffa4fa152d6bb0a9cca8835b9e9c0f4e110c487a22de9903dce0a
```

### `dpkg` source package: `bzip2=1.0.6-8.1`

Binary Packages:

- `bzip2=1.0.6-8.1`
- `bzip2-doc=1.0.6-8.1`
- `libbz2-1.0:amd64=1.0.6-8.1`
- `libbz2-dev:amd64=1.0.6-8.1`

Licenses: (parsed from: `/usr/share/doc/bzip2/copyright`, `/usr/share/doc/bzip2-doc/copyright`, `/usr/share/doc/libbz2-1.0/copyright`, `/usr/share/doc/libbz2-dev/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris bzip2=1.0.6-8.1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-8.1.dsc' bzip2_1.0.6-8.1.dsc 2082 SHA256:d80deed11a1419ad090cb486dd2335850fd8719b809c32002dea04b485f55dbd
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA256:d70a9ccd8bdf47e302d96c69fecd54925f45d9c7b966bb4ef5f56b770960afa7
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-8.1.debian.tar.bz2' bzip2_1.0.6-8.1.debian.tar.bz2 59875 SHA256:bdbe7bf29e014e44d79bb7c733fe63cae990ab50882a4a07867cf69c61ad72b7
```

### `dpkg` source package: `bzr=2.7.0+bzr6622-10`

Binary Packages:

- `bzr=2.7.0+bzr6622-10`
- `python-bzrlib=2.7.0+bzr6622-10`

Licenses: (parsed from: `/usr/share/doc/bzr/copyright`, `/usr/share/doc/python-bzrlib/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris bzr=2.7.0+bzr6622-10
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.7.0+bzr6622-10.dsc' bzr_2.7.0+bzr6622-10.dsc 2521 SHA256:658f59aaaa101288369e96ab766f5344e31eaa835fa008ad56df2ed65d11903e
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.7.0+bzr6622.orig.tar.gz' bzr_2.7.0+bzr6622.orig.tar.gz 10948360 SHA256:08bba3e76cba9beb6b686e71253045beeab9db94753ddbcafa0f8ed1cba377ff
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzr/bzr_2.7.0+bzr6622-10.debian.tar.xz' bzr_2.7.0+bzr6622-10.debian.tar.xz 92572 SHA256:0e35de0eea3cb6910e3dfef330502afd01be60c4cd0b9ca3d5f77e9bb0f406aa
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20180409.dsc' ca-certificates_20180409.dsc 1420 SHA256:cd1f6540d0dab28f897e0e0cb2191130cdbf897f8ce3f52c8e483b2ed1555d30
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20180409.tar.xz' ca-certificates_20180409.tar.xz 246908 SHA256:7af6f5bfc619fd29cbf0258c1d95107c38ce840ad6274e343e1e0d971fc72b51
```

### `dpkg` source package: `cdebconf=0.213ubuntu1`

Binary Packages:

- `libdebconfclient0:amd64=0.213ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.213ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.213ubuntu1.dsc' cdebconf_0.213ubuntu1.dsc 2769 SHA256:76cb3f0b1685629220b0e4c3105757b95714f7350df4e7863d5310f1f581fee0
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.213ubuntu1.tar.xz' cdebconf_0.213ubuntu1.tar.xz 272596 SHA256:624feaf9e7e5f407271f99e06e54d5002fcce51345553a626caf7b4a65f0afd1
```

### `dpkg` source package: `cmake=3.10.2-1ubuntu2`

Binary Packages:

- `cmake=3.10.2-1ubuntu2`
- `cmake-data=3.10.2-1ubuntu2`

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
$ apt-get source -qq --print-uris cmake=3.10.2-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_3.10.2-1ubuntu2.dsc' cmake_3.10.2-1ubuntu2.dsc 3064 SHA256:7be9f9d50948156490a438988b504e51863229b0af2272c6d9617042f9f40dfe
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_3.10.2.orig.tar.gz' cmake_3.10.2.orig.tar.gz 7824452 SHA256:80d0faad4ab56de07aa21a7fc692c88c4ce6156d42b0579c6962004a70a3218b
'http://archive.ubuntu.com/ubuntu/pool/main/c/cmake/cmake_3.10.2-1ubuntu2.debian.tar.xz' cmake_3.10.2-1ubuntu2.debian.tar.xz 29008 SHA256:c8b5e980882128f085757500c109865773e9145ac7d9bf01abe91f50f8b24fe1
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

### `dpkg` source package: `console-bridge=0.4.0+dfsg-2`

Binary Packages:

- `libconsole-bridge-dev:amd64=0.4.0+dfsg-2`
- `libconsole-bridge0.4:amd64=0.4.0+dfsg-2`

Licenses: (parsed from: `/usr/share/doc/libconsole-bridge-dev/copyright`, `/usr/share/doc/libconsole-bridge0.4/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris console-bridge=0.4.0+dfsg-2
'http://archive.ubuntu.com/ubuntu/pool/universe/c/console-bridge/console-bridge_0.4.0+dfsg-2.dsc' console-bridge_0.4.0+dfsg-2.dsc 1949 SHA256:5cfb1b8f43d210c5c1c72bdccb909092b40f361759372211331f75859f29ff91
'http://archive.ubuntu.com/ubuntu/pool/universe/c/console-bridge/console-bridge_0.4.0+dfsg.orig.tar.gz' console-bridge_0.4.0+dfsg.orig.tar.gz 6042 SHA256:172eecc6c185de2f6d43aed10c3110b8573e53a49f77c48c3f81a83e0e6e63c2
'http://archive.ubuntu.com/ubuntu/pool/universe/c/console-bridge/console-bridge_0.4.0+dfsg-2.debian.tar.xz' console-bridge_0.4.0+dfsg-2.debian.tar.xz 3628 SHA256:56bdfbf50a6e7a83c1f4d1f9052b5b605b8f61846cce7042af0bb6ab661707f7
```

### `dpkg` source package: `coreutils=8.28-1ubuntu1`

Binary Packages:

- `coreutils=8.28-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.28-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.28-1ubuntu1.dsc' coreutils_8.28-1ubuntu1.dsc 2302 SHA256:9a7154fd8a458295b686383767f9305095e6ea929a08c8f56cf51640c3fe209f
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.28.orig.tar.xz' coreutils_8.28.orig.tar.xz 5252336 SHA256:1117b1a16039ddd84d51a9923948307cfa28c2cea03d1a2438742253df0a0c65
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.28.orig.tar.xz.asc' coreutils_8.28.orig.tar.xz.asc 1196 SHA256:505b1a530a55732a9ed659d419ff4973d1b15059078d2060675927058db9607d
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.28-1ubuntu1.debian.tar.xz' coreutils_8.28-1ubuntu1.debian.tar.xz 37940 SHA256:71ba2e83edc675a79e1e0556aff326ab2ae812332692e3db29615e8ed1b427f4
```

### `dpkg` source package: `curl=7.58.0-2ubuntu3.5`

Binary Packages:

- `libcurl3-gnutls:amd64=7.58.0-2ubuntu3.5`
- `libcurl4:amd64=7.58.0-2ubuntu3.5`

Licenses: (parsed from: `/usr/share/doc/libcurl3-gnutls/copyright`, `/usr/share/doc/libcurl4/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.58.0-2ubuntu3.5
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.58.0-2ubuntu3.5.dsc' curl_7.58.0-2ubuntu3.5.dsc 2777 SHA256:452b48935c1f8188f716ffe6efe1c5fa6213d9a57f92e96c0bd825182836443c
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.58.0.orig.tar.gz' curl_7.58.0.orig.tar.gz 3879728 SHA256:cc245bf9a1a42a45df491501d97d5593392a03f7b4f07b952793518d97666115
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.58.0-2ubuntu3.5.debian.tar.xz' curl_7.58.0-2ubuntu3.5.debian.tar.xz 37444 SHA256:dbce6d663e68afcee5c818fd9302d3059983763bfcc4a3f7edba328b7aacf0bc
```

### `dpkg` source package: `cyrus-sasl2=2.1.27~101-g0780600+dfsg-3ubuntu2`

Binary Packages:

- `libsasl2-2:amd64=2.1.27~101-g0780600+dfsg-3ubuntu2`
- `libsasl2-modules:amd64=2.1.27~101-g0780600+dfsg-3ubuntu2`
- `libsasl2-modules-db:amd64=2.1.27~101-g0780600+dfsg-3ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.27~101-g0780600+dfsg-3ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~101-g0780600+dfsg-3ubuntu2.dsc' cyrus-sasl2_2.1.27~101-g0780600+dfsg-3ubuntu2.dsc 2980 SHA256:32afa6474bf5e4468a262aa0d5bc9ab3c547754c58ef3a4d91e43a60ea19730d
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~101-g0780600+dfsg.orig.tar.xz' cyrus-sasl2_2.1.27~101-g0780600+dfsg.orig.tar.xz 1143888 SHA256:69f34971f768e7ee6a6b647ec2d16a5a72a854ecd4602b019d5f79ba61063fdc
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~101-g0780600+dfsg-3ubuntu2.debian.tar.xz' cyrus-sasl2_2.1.27~101-g0780600+dfsg-3ubuntu2.debian.tar.xz 95284 SHA256:8e2d9e1935deb64ff7344271062999ff26f129606fa752a2a86641af95e31e04
```

### `dpkg` source package: `dash=0.5.8-2.10`

Binary Packages:

- `dash=0.5.8-2.10`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.8-2.10
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8-2.10.dsc' dash_0.5.8-2.10.dsc 1618 SHA256:1e8fdac0880d57d8ed5eb11f9f1750a67c71a7200180cf3ed5aa3e74dab3e4c5
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8.orig.tar.gz' dash_0.5.8.orig.tar.gz 223028 SHA256:c6db3a237747b02d20382a761397563d813b306c020ae28ce25a1c3915fac60f
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8-2.10.debian.tar.xz' dash_0.5.8-2.10.debian.tar.xz 43920 SHA256:0d870b0cf9b3ad40e4d4f1e3d4d9097f4d62151693a48f34cb1d49865fd4abdb
```

### `dpkg` source package: `db5.3=5.3.28-13.1ubuntu1`

Binary Packages:

- `libdb5.3:amd64=5.3.28-13.1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28-13.1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-13.1ubuntu1.dsc' db5.3_5.3.28-13.1ubuntu1.dsc 3113 SHA256:af89bf00a4732155c8cf253cbadf6e0e0738d747eb08641f8432ec831d06fc94
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz' db5.3_5.3.28.orig.tar.xz 24154920 SHA256:e1f85c8b6ebd0ed3ca72fa0ae97b65006f6d0bd0cd6f4ac24bed103cb5497bf5
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-13.1ubuntu1.debian.tar.xz' db5.3_5.3.28-13.1ubuntu1.debian.tar.xz 28560 SHA256:17b85931297dd02cfa775b94324f8ab611115d8da983828746b30e34ea06fb28
```

### `dpkg` source package: `debconf=1.5.66`

Binary Packages:

- `debconf=1.5.66`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.66
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.66.dsc' debconf_1.5.66.dsc 2059 SHA256:5b8586443a0a5a85b745b2c6b97a8aeab65be403d3f6a9ff42a7f79508a393cb
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.66.tar.xz' debconf_1.5.66.tar.xz 572936 SHA256:e2ba95f6e6229e4c6c8e12b8f193491b48c10479074e8de7aeb7fca2176cd657
```

### `dpkg` source package: `debianutils=4.8.4`

Binary Packages:

- `debianutils=4.8.4`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.8.4
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.8.4.dsc' debianutils_4.8.4.dsc 1764 SHA256:8b12921fe6e4f51d295bfd4213706d588a6c9b8bab659b0ee1fe525f37e9fbcc
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.8.4.tar.xz' debianutils_4.8.4.tar.xz 156344 SHA256:c061ab99aea61f892043b7624b021ab5b193e9c6bbfd474da0fbcdd506be1eb2
```

### `dpkg` source package: `defusedxml=0.5.0-1ubuntu1`

Binary Packages:

- `python-defusedxml=0.5.0-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/python-defusedxml/copyright`)

- `Python`

Source:

```console
$ apt-get source -qq --print-uris defusedxml=0.5.0-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/defusedxml/defusedxml_0.5.0-1ubuntu1.dsc' defusedxml_0.5.0-1ubuntu1.dsc 2272 SHA256:053ec3c34cd46a2a8f9513180622110fa9331b3092fcfcacbb8bbb370345de0b
'http://archive.ubuntu.com/ubuntu/pool/main/d/defusedxml/defusedxml_0.5.0.orig.tar.gz' defusedxml_0.5.0.orig.tar.gz 60405 SHA256:24d7f2f94f7f3cb6061acb215685e5125fbcdc40a857eff9de22518820b0a4f4
'http://archive.ubuntu.com/ubuntu/pool/main/d/defusedxml/defusedxml_0.5.0-1ubuntu1.debian.tar.xz' defusedxml_0.5.0-1ubuntu1.debian.tar.xz 89668 SHA256:b44231646f08618496da99bc7b014524e9ac0d789eb174f4765cd154ee0971c2
```

### `dpkg` source package: `dh-python=3.20180325ubuntu2`

Binary Packages:

- `dh-python=3.20180325ubuntu2`

Licenses: (parsed from: `/usr/share/doc/dh-python/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris dh-python=3.20180325ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/dh-python/dh-python_3.20180325ubuntu2.dsc' dh-python_3.20180325ubuntu2.dsc 1935 SHA256:9600437f909a29468d5e2037e08bf9a2f29869922376a680212bf80c2061de6d
'http://archive.ubuntu.com/ubuntu/pool/main/d/dh-python/dh-python_3.20180325ubuntu2.tar.xz' dh-python_3.20180325ubuntu2.tar.xz 95292 SHA256:aee28c975e9ee74608fad868c1bdfcfacb8c9d771733b210e13b51c9fc5b99d1
```

### `dpkg` source package: `diffutils=1:3.6-1`

Binary Packages:

- `diffutils=1:3.6-1`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris diffutils=1:3.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.6-1.dsc' diffutils_3.6-1.dsc 1453 SHA256:26fe7690b45748dc92cee6af224192e78db2ac574e16ae0aeb8ed6a472c883cd
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.6.orig.tar.xz' diffutils_3.6.orig.tar.xz 1398296 SHA256:d621e8bdd4b573918c8145f7ae61817d1be9deb4c8d2328a65cea8e11d783bd6
'http://archive.ubuntu.com/ubuntu/pool/main/d/diffutils/diffutils_3.6-1.debian.tar.xz' diffutils_3.6-1.debian.tar.xz 10808 SHA256:f6ab546a134bde18a87ca8e3c98919680e79d81a65a24801ae06ef69b33f24d8
```

### `dpkg` source package: `distro-info-data=0.37ubuntu0.2`

Binary Packages:

- `distro-info-data=0.37ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/distro-info-data/copyright`)

- `ISC`

Source:

```console
$ apt-get source -qq --print-uris distro-info-data=0.37ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/d/distro-info-data/distro-info-data_0.37ubuntu0.2.dsc' distro-info-data_0.37ubuntu0.2.dsc 1441 SHA256:2f45b2bf501386a2ff64fc87d9d25ccc38741a0a4a8b50e3866510c99e75fa60
'http://archive.ubuntu.com/ubuntu/pool/main/d/distro-info-data/distro-info-data_0.37ubuntu0.2.tar.xz' distro-info-data_0.37ubuntu0.2.tar.xz 6772 SHA256:ce7a876ec904c9d3a8190572e1865609e816abe4ed2bc93799112cab81716a87
```

### `dpkg` source package: `dpkg=1.19.0.5ubuntu2.1`

Binary Packages:

- `dpkg=1.19.0.5ubuntu2.1`
- `dpkg-dev=1.19.0.5ubuntu2.1`
- `libdpkg-perl=1.19.0.5ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.19.0.5ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.19.0.5ubuntu2.1.dsc' dpkg_1.19.0.5ubuntu2.1.dsc 2140 SHA256:98044f3fb11b12c8e08930adc3a3057f8e4f542d11aee929a6e2a7dea0d4cd9b
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.19.0.5ubuntu2.1.tar.xz' dpkg_1.19.0.5ubuntu2.1.tar.xz 4570912 SHA256:3e8bd743f1b953095bba765bfb75eaaa68a6aba3bc8de97e3f9d1dff754addaa
```

### `dpkg` source package: `e2fsprogs=1.44.1-1ubuntu1`

Binary Packages:

- `e2fsprogs=1.44.1-1ubuntu1`
- `libcom-err2:amd64=1.44.1-1ubuntu1`
- `libext2fs2:amd64=1.44.1-1ubuntu1`
- `libss2:amd64=1.44.1-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `elfutils=0.170-0.4`

Binary Packages:

- `libelf1:amd64=0.170-0.4`

Licenses: (parsed from: `/usr/share/doc/libelf1/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-`

Source:

```console
$ apt-get source -qq --print-uris elfutils=0.170-0.4
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.170-0.4.dsc' elfutils_0.170-0.4.dsc 2332 SHA256:d9ccf2b3fe282ef41d590b6f1f079d4b1758c3244104a39202e81cae42f59927
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.170.orig.tar.bz2' elfutils_0.170.orig.tar.bz2 8358001 SHA256:1f844775576b79bdc9f9c717a50058d08620323c1e935458223a12f249c9e066
'http://archive.ubuntu.com/ubuntu/pool/main/e/elfutils/elfutils_0.170-0.4.debian.tar.xz' elfutils_0.170-0.4.debian.tar.xz 45208 SHA256:d5b2934893ef975bf3dfb0772624a5cff1a96a226f4d60f0dbe7296870508aaa
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

### `dpkg` source package: `enum34=1.1.6-2`

Binary Packages:

- `python-enum34=1.1.6-2`

Licenses: (parsed from: `/usr/share/doc/python-enum34/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris enum34=1.1.6-2
'http://archive.ubuntu.com/ubuntu/pool/main/e/enum34/enum34_1.1.6-2.dsc' enum34_1.1.6-2.dsc 2194 SHA256:b3a8c78fd3289f68e6d2f4a21797ed74503c9cfd90d0e427ecb4a0106f3b1143
'http://archive.ubuntu.com/ubuntu/pool/main/e/enum34/enum34_1.1.6.orig.tar.gz' enum34_1.1.6.orig.tar.gz 40048 SHA256:8ad8c4783bf61ded74527bffb48ed9b54166685e4230386a9ed9b1279e2df5b1
'http://archive.ubuntu.com/ubuntu/pool/main/e/enum34/enum34_1.1.6-2.debian.tar.xz' enum34_1.1.6-2.debian.tar.xz 4036 SHA256:2b2a7b18652a66a81c23b665b9dfcc35bfd3d3d6d2262b6b4faf32cf0bc97ab7
```

### `dpkg` source package: `expat=2.2.5-3`

Binary Packages:

- `libexpat1:amd64=2.2.5-3`
- `libexpat1-dev:amd64=2.2.5-3`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`, `/usr/share/doc/libexpat1-dev/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.2.5-3
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.5-3.dsc' expat_2.2.5-3.dsc 2099 SHA256:21c9f507f332a388a8224ebe19e030bd04a9627d255138acc3efef467604c55f
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.5.orig.tar.gz' expat_2.2.5.orig.tar.gz 8273003 SHA256:b3781742738611eaa737543ee94264dd511c52a3ba7e53111f7d705f6bff65a8
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.5-3.debian.tar.xz' expat_2.2.5-3.debian.tar.xz 10640 SHA256:497d14ac905cb70fc4cacc1e4d92bcccf792237b31fc506a5ea7c4d3aa6c8235
```

### `dpkg` source package: `fakeroot=1.22-2ubuntu1`

Binary Packages:

- `fakeroot=1.22-2ubuntu1`
- `libfakeroot:amd64=1.22-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/fakeroot/copyright`, `/usr/share/doc/libfakeroot/copyright`)

- `Artistic`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris fakeroot=1.22-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fakeroot/fakeroot_1.22-2ubuntu1.dsc' fakeroot_1.22-2ubuntu1.dsc 2045 SHA256:ecfa77196d71e4d2720bd61808cbd08b14dc34d8a8173c372456824f5a77c19c
'http://archive.ubuntu.com/ubuntu/pool/main/f/fakeroot/fakeroot_1.22.orig.tar.bz2' fakeroot_1.22.orig.tar.bz2 338238 SHA256:bd806a4a1e641203eb3d4571a10089e8a038c10ec7e492fa1e061b03ae3ec6fe
'http://archive.ubuntu.com/ubuntu/pool/main/f/fakeroot/fakeroot_1.22-2ubuntu1.debian.tar.xz' fakeroot_1.22-2ubuntu1.debian.tar.xz 44960 SHA256:ffcfc108ec282b729937ada529729b1ab071e10d70f0e3f6977a1bfddc75f172
```

### `dpkg` source package: `file=1:5.32-2ubuntu0.1`

Binary Packages:

- `file=1:5.32-2ubuntu0.1`
- `libmagic-mgc=1:5.32-2ubuntu0.1`
- `libmagic1:amd64=1:5.32-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/file/copyright`, `/usr/share/doc/libmagic-mgc/copyright`, `/usr/share/doc/libmagic1/copyright`)

- `BSD-2-Clause-alike`
- `BSD-2-Clause-netbsd`
- `BSD-2-Clause-regents`
- `MIT-Old-Style-with-legal-disclaimer-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris file=1:5.32-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.32-2ubuntu0.1.dsc' file_5.32-2ubuntu0.1.dsc 1972 SHA256:9a51e2699d9868215f103a43073d67264523bef725e41ecc5a70fe6e6aa6b5e1
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.32.orig.tar.xz' file_5.32.orig.tar.xz 584352 SHA256:07627dc16c9a5b64352b00f24afb8d328b9ecade82afe2e2fa55201d324fd360
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.32-2ubuntu0.1.debian.tar.xz' file_5.32-2ubuntu0.1.debian.tar.xz 31976 SHA256:9ccbc392cd885ed276ae5680e817a8332912be1f8b4f5709fa0c2dea6df8c0cc
```

### `dpkg` source package: `findutils=4.6.0+git+20170828-2`

Binary Packages:

- `findutils=4.6.0+git+20170828-2`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.6.0+git+20170828-2
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0+git+20170828-2.dsc' findutils_4.6.0+git+20170828-2.dsc 2221 SHA256:6997072de2f1b24457073275f7b8f15ad2f0569389dcb277ebe99dd1846e2ee9
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0+git+20170828.orig.tar.xz' findutils_4.6.0+git+20170828.orig.tar.xz 1865192 SHA256:8d6571ffd5105307bcb1b20c4b7d5c2d0b5152e463b082801268bd3ec9e2bbfd
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0+git+20170828-2.debian.tar.xz' findutils_4.6.0+git+20170828-2.debian.tar.xz 26532 SHA256:5b13792a14edec982fddcf74fe01b4380b909703d76aaba2860da51c6248de73
```

### `dpkg` source package: `freetype=2.8.1-2ubuntu2`

Binary Packages:

- `libfreetype6:amd64=2.8.1-2ubuntu2`

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
$ apt-get source -qq --print-uris freetype=2.8.1-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.8.1-2ubuntu2.dsc' freetype_2.8.1-2ubuntu2.dsc 2288 SHA256:f7a1e8715cc35405d814fd97478e37ff22fad2bb639c049e058298c9f5847015
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.8.1.orig.tar.gz' freetype_2.8.1.orig.tar.gz 4242784 SHA256:a7531cb8c2f6b709896f018380ad97e677e243847ff8a098d1b8b5d23e9d74d7
'http://archive.ubuntu.com/ubuntu/pool/main/f/freetype/freetype_2.8.1-2ubuntu2.diff.gz' freetype_2.8.1-2ubuntu2.diff.gz 44335 SHA256:ec498da97b3c1715b67f8d6ed85e6d9a2eb8b709cabce38519a8ab5ca995b85a
```

### `dpkg` source package: `gcc-4.8=4.8.5-4ubuntu8`

Binary Packages:

- `gcc-4.8-base:amd64=4.8.5-4ubuntu8`
- `libasan0:amd64=4.8.5-4ubuntu8`
- `libgcc-4.8-dev:amd64=4.8.5-4ubuntu8`
- `libstdc++-4.8-dev:amd64=4.8.5-4ubuntu8`

Licenses: (parsed from: `/usr/share/doc/gcc-4.8-base/copyright`, `/usr/share/doc/libasan0/copyright`, `/usr/share/doc/libgcc-4.8-dev/copyright`, `/usr/share/doc/libstdc++-4.8-dev/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris gcc-4.8=4.8.5-4ubuntu8
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gcc-4.8/gcc-4.8_4.8.5-4ubuntu8.dsc' gcc-4.8_4.8.5-4ubuntu8.dsc 11436 SHA256:6a5d88d7bead454f851a4fefa473d2c0cb93edae13a6c7c8aa00939f8d9ad5a7
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gcc-4.8/gcc-4.8_4.8.5.orig.tar.gz' gcc-4.8_4.8.5.orig.tar.gz 66569326 SHA256:9c3263058e5fc8a89147fdc03afafcf1cfc6912c3d034e2ceabe40966d4bb4f7
'http://archive.ubuntu.com/ubuntu/pool/universe/g/gcc-4.8/gcc-4.8_4.8.5-4ubuntu8.diff.gz' gcc-4.8_4.8.5-4ubuntu8.diff.gz 975822 SHA256:fc707c27b4298e69cbc2765cfa2f1f418f5f666fe528e606cca458318a9d00d4
```

### `dpkg` source package: `gcc-7=7.3.0-27ubuntu1~18.04`

Binary Packages:

- `cpp-7=7.3.0-27ubuntu1~18.04`
- `g++-7=7.3.0-27ubuntu1~18.04`
- `gcc-7=7.3.0-27ubuntu1~18.04`
- `gcc-7-base:amd64=7.3.0-27ubuntu1~18.04`
- `libasan4:amd64=7.3.0-27ubuntu1~18.04`
- `libcilkrts5:amd64=7.3.0-27ubuntu1~18.04`
- `libgcc-7-dev:amd64=7.3.0-27ubuntu1~18.04`
- `libgfortran4:amd64=7.3.0-27ubuntu1~18.04`
- `libstdc++-7-dev:amd64=7.3.0-27ubuntu1~18.04`
- `libubsan0:amd64=7.3.0-27ubuntu1~18.04`

Licenses: (parsed from: `/usr/share/doc/cpp-7/copyright`, `/usr/share/doc/g++-7/copyright`, `/usr/share/doc/gcc-7/copyright`, `/usr/share/doc/gcc-7-base/copyright`, `/usr/share/doc/libasan4/copyright`, `/usr/share/doc/libcilkrts5/copyright`, `/usr/share/doc/libgcc-7-dev/copyright`, `/usr/share/doc/libgfortran4/copyright`, `/usr/share/doc/libstdc++-7-dev/copyright`, `/usr/share/doc/libubsan0/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-7=7.3.0-27ubuntu1~18.04
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-7/gcc-7_7.3.0-27ubuntu1~18.04.dsc' gcc-7_7.3.0-27ubuntu1~18.04.dsc 28285 SHA256:5374b6648fdc46ff2d9b5267d9b03bbf6c9d7a48e273f666d3a14bcdb01f2ce0
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-7/gcc-7_7.3.0.orig.tar.gz' gcc-7_7.3.0.orig.tar.gz 73555852 SHA256:9e29793395d3012c0d71ee5f680642c594bf1dee0184cd74d2e0e67c70598283
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-7/gcc-7_7.3.0-27ubuntu1~18.04.diff.gz' gcc-7_7.3.0-27ubuntu1~18.04.diff.gz 996303 SHA256:ad7f083469cd4b7dad8796ed779504e742caae862ac13351ca6fb0b27d745a56
```

### `dpkg` source package: `gcc-8=8.2.0-1ubuntu2~18.04`

Binary Packages:

- `gcc-8-base:amd64=8.2.0-1ubuntu2~18.04`
- `libatomic1:amd64=8.2.0-1ubuntu2~18.04`
- `libcc1-0:amd64=8.2.0-1ubuntu2~18.04`
- `libgcc1:amd64=1:8.2.0-1ubuntu2~18.04`
- `libgomp1:amd64=8.2.0-1ubuntu2~18.04`
- `libitm1:amd64=8.2.0-1ubuntu2~18.04`
- `liblsan0:amd64=8.2.0-1ubuntu2~18.04`
- `libmpx2:amd64=8.2.0-1ubuntu2~18.04`
- `libquadmath0:amd64=8.2.0-1ubuntu2~18.04`
- `libstdc++6:amd64=8.2.0-1ubuntu2~18.04`
- `libtsan0:amd64=8.2.0-1ubuntu2~18.04`

Licenses: (parsed from: `/usr/share/doc/gcc-8-base/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libmpx2/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan0/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-8=8.2.0-1ubuntu2~18.04
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-8/gcc-8_8.2.0-1ubuntu2~18.04.dsc' gcc-8_8.2.0-1ubuntu2~18.04.dsc 36291 SHA256:73af7438517e473ce305701bab7d9fa764e59432317f8244112046bda9633136
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-8/gcc-8_8.2.0.orig.tar.gz' gcc-8_8.2.0.orig.tar.gz 75164400 SHA256:e1009caeec1d024f278de02238d3a558bc23b0cd3ae08c885c36fe5a44b3269d
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-8/gcc-8_8.2.0-1ubuntu2~18.04.diff.gz' gcc-8_8.2.0-1ubuntu2~18.04.diff.gz 3960987 SHA256:0d9d73f1de12d04fcfe9042f32fc97a19e0f5439b2d553ce450405642a3494f5
```

### `dpkg` source package: `gcc-defaults=1.176ubuntu2.1`

Binary Packages:

- `cpp=4:7.3.0-3ubuntu2.1`
- `g++=4:7.3.0-3ubuntu2.1`
- `gcc=4:7.3.0-3ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/gcc/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.176ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.176ubuntu2.1.dsc' gcc-defaults_1.176ubuntu2.1.dsc 15556 SHA256:f6d94600f03ddcaa7f51278abd22486146fb96efdcdbdab73e2e28f8ae4b6208
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.176ubuntu2.1.tar.gz' gcc-defaults_1.176ubuntu2.1.tar.gz 208462 SHA256:b2130b006973d6a723a2961e94d96c524cabf5e6c839d14adcab21aea9c87004
```

### `dpkg` source package: `gdbm=1.14.1-6`

Binary Packages:

- `libgdbm-compat4:amd64=1.14.1-6`
- `libgdbm5:amd64=1.14.1-6`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4/copyright`, `/usr/share/doc/libgdbm5/copyright`)

- `GFDL-1.3+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.14.1-6
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.14.1-6.dsc' gdbm_1.14.1-6.dsc 2293 SHA256:85fc353e81fc54b49d9c13c71f4247836fb1aac2693e98416a6821de8cfe7b41
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.14.1.orig.tar.gz' gdbm_1.14.1.orig.tar.gz 894412 SHA256:cdceff00ffe014495bed3aed71c7910aa88bf29379f795abc0f46d4ee5f8bc5f
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.14.1-6.debian.tar.xz' gdbm_1.14.1-6.debian.tar.xz 27492 SHA256:c9da59f11d5e40ecd877f1256c53ea4750b9d614c7885800e42d0f1885996658
```

### `dpkg` source package: `git=1:2.17.1-1ubuntu0.4`

Binary Packages:

- `git=1:2.17.1-1ubuntu0.4`
- `git-man=1:2.17.1-1ubuntu0.4`

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
$ apt-get source -qq --print-uris git=1:2.17.1-1ubuntu0.4
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.17.1-1ubuntu0.4.dsc' git_2.17.1-1ubuntu0.4.dsc 2943 SHA256:15b2496e63c2234fd6e9a4b03dac9e93bb6939bc5e432917afaf6b93a082224d
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.17.1.orig.tar.xz' git_2.17.1.orig.tar.xz 5015484 SHA256:79136e7aa83abae4d8a25c8111f113d3c5a63aeb5fd93cc72c26d49c6d5ba65e
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.17.1-1ubuntu0.4.debian.tar.xz' git_2.17.1-1ubuntu0.4.debian.tar.xz 574144 SHA256:58099c54314f64626f42a3e03469ffff9e63c877b0452818c8aebfb93b0fc7a0
```

### `dpkg` source package: `glib2.0=2.56.3-0ubuntu0.18.04.1`

Binary Packages:

- `libglib2.0-0:amd64=2.56.3-0ubuntu0.18.04.1`
- `libglib2.0-bin=2.56.3-0ubuntu0.18.04.1`
- `libglib2.0-data=2.56.3-0ubuntu0.18.04.1`
- `libglib2.0-dev:amd64=2.56.3-0ubuntu0.18.04.1`
- `libglib2.0-dev-bin=2.56.3-0ubuntu0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`, `/usr/share/doc/libglib2.0-bin/copyright`, `/usr/share/doc/libglib2.0-data/copyright`, `/usr/share/doc/libglib2.0-dev/copyright`, `/usr/share/doc/libglib2.0-dev-bin/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.56.3-0ubuntu0.18.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.56.3-0ubuntu0.18.04.1.dsc' glib2.0_2.56.3-0ubuntu0.18.04.1.dsc 3583 SHA256:59acbed92f28ed082ca91eebfaa0a7c46a5b4e26657942184e422e3a57540686
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.56.3.orig.tar.xz' glib2.0_2.56.3.orig.tar.xz 7009912 SHA256:a9a4c5b4c81b6c75bc140bdf5e32120ef3ce841b7413214ecf5f987acec74cb2
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.56.3-0ubuntu0.18.04.1.debian.tar.xz' glib2.0_2.56.3-0ubuntu0.18.04.1.debian.tar.xz 79184 SHA256:dfb6fd85913758841461f5e6318597fd57f4fc6a95b9bbde66b608cf4638f1f3
```

### `dpkg` source package: `glibc=2.27-3ubuntu1`

Binary Packages:

- `libc-bin=2.27-3ubuntu1`
- `libc-dev-bin=2.27-3ubuntu1`
- `libc6:amd64=2.27-3ubuntu1`
- `libc6-dev:amd64=2.27-3ubuntu1`
- `multiarch-support=2.27-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`, `/usr/share/doc/multiarch-support/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.27-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.27-3ubuntu1.dsc' glibc_2.27-3ubuntu1.dsc 9356 SHA256:b0006ab99aac50bcedadf9bf8c74b81a4daee6c4cbc2e983c29a07d419d0bcb4
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.27.orig.tar.xz' glibc_2.27.orig.tar.xz 15923832 SHA256:0e9826488e3ffedb4d14a426d741b7b1cf15f6973ab30762af9a188ad47633ed
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.27-3ubuntu1.debian.tar.xz' glibc_2.27-3ubuntu1.debian.tar.xz 1007844 SHA256:7f4e1f935974e18c497ea8bd1cd165c7a37b3579fe05262f72992fdfa3b56376
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.2+dfsg-2.dsc' gmp_6.1.2+dfsg-2.dsc 2152 SHA256:d1e7b69c619c2d07b3eaf9f051159cde1884cf9c68109f1dee278bf7a59b632b
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.2+dfsg.orig.tar.xz' gmp_6.1.2+dfsg.orig.tar.xz 1804424 SHA256:18016f718f621e7641ddd4e57f8e140391c5183252e5998263ffff59198a65b7
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.2+dfsg-2.debian.tar.xz' gmp_6.1.2+dfsg-2.debian.tar.xz 20744 SHA256:33cf6cc65827c9df744e4e07b216ca2d02eb57327a949f80a7b7dddd0485ee85
```

### `dpkg` source package: `gnupg2=2.2.4-1ubuntu1.2`

Binary Packages:

- `dirmngr=2.2.4-1ubuntu1.2`
- `gnupg=2.2.4-1ubuntu1.2`
- `gnupg-l10n=2.2.4-1ubuntu1.2`
- `gnupg-utils=2.2.4-1ubuntu1.2`
- `gnupg2=2.2.4-1ubuntu1.2`
- `gpg=2.2.4-1ubuntu1.2`
- `gpg-agent=2.2.4-1ubuntu1.2`
- `gpg-wks-client=2.2.4-1ubuntu1.2`
- `gpg-wks-server=2.2.4-1ubuntu1.2`
- `gpgconf=2.2.4-1ubuntu1.2`
- `gpgsm=2.2.4-1ubuntu1.2`
- `gpgv=2.2.4-1ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/dirmngr/copyright`, `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gnupg-l10n/copyright`, `/usr/share/doc/gnupg-utils/copyright`, `/usr/share/doc/gnupg2/copyright`, `/usr/share/doc/gpg/copyright`, `/usr/share/doc/gpg-agent/copyright`, `/usr/share/doc/gpg-wks-client/copyright`, `/usr/share/doc/gpg-wks-server/copyright`, `/usr/share/doc/gpgconf/copyright`, `/usr/share/doc/gpgsm/copyright`, `/usr/share/doc/gpgv/copyright`)

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
$ apt-get source -qq --print-uris gnupg2=2.2.4-1ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.4-1ubuntu1.2.dsc' gnupg2_2.2.4-1ubuntu1.2.dsc 3816 SHA256:3b5821e3a8c95653140d0bbc791098ab6c08d6fc7206857a21b25e291e79f2bc
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.4.orig.tar.bz2' gnupg2_2.2.4.orig.tar.bz2 6571487 SHA256:401a3e64780fdfa6d7670de0880aa5c9d589b3db7a7098979d7606cec546f2ec
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.4.orig.tar.bz2.asc' gnupg2_2.2.4.orig.tar.bz2.asc 952 SHA256:30dd26e12b451e8f6799ba3a81449ed18db3d3e747820b237a39745ab264c899
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.4-1ubuntu1.2.debian.tar.bz2' gnupg2_2.2.4-1ubuntu1.2.debian.tar.bz2 82238 SHA256:ad2e70205e5d5f52c092c58e619ee58e5f5bc2b44f44a2c462296fc34a1960de
```

### `dpkg` source package: `gnutls28=3.5.18-1ubuntu1`

Binary Packages:

- `libgnutls30:amd64=3.5.18-1ubuntu1`

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
$ apt-get source -qq --print-uris gnutls28=3.5.18-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.5.18-1ubuntu1.dsc' gnutls28_3.5.18-1ubuntu1.dsc 3455 SHA256:1bda752730abcbe4b4fd1ca2a1717c8937c4fe1cf462a9ad6044c765fab3f8d8
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.5.18.orig.tar.xz' gnutls28_3.5.18.orig.tar.xz 7261980 SHA256:ae2248d9e78747cf9c469dde81ff8f90b56838b707a0637f3f7d4eee90e80234
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.5.18.orig.tar.xz.asc' gnutls28_3.5.18.orig.tar.xz.asc 534 SHA256:50bb942469be0639bbab925de630fb921aa8cac5f40072cb1c2cf1fb7ae7977b
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.5.18-1ubuntu1.debian.tar.xz' gnutls28_3.5.18-1ubuntu1.debian.tar.xz 66900 SHA256:c14acc84669e0c570dc8edcd5847ba2a1fd7cc2a942be467342743824a827406
```

### `dpkg` source package: `gobject-introspection=1.56.1-1`

Binary Packages:

- `gir1.2-glib-2.0:amd64=1.56.1-1`
- `libgirepository-1.0-1:amd64=1.56.1-1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-glib-2.0/copyright`, `/usr/share/doc/libgirepository-1.0-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris gobject-introspection=1.56.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.56.1-1.dsc' gobject-introspection_1.56.1-1.dsc 2915 SHA256:978c16c9988d7bc6fed4f112012d9027d5add7e783d405057c4757e8d377a5a5
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.56.1.orig.tar.xz' gobject-introspection_1.56.1.orig.tar.xz 1397812 SHA256:5b2875ccff99ff7baab63a34b67f8c920def240e178ff50add809e267d9ea24b
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.56.1-1.debian.tar.xz' gobject-introspection_1.56.1-1.debian.tar.xz 20460 SHA256:20fb97a39c69106ab3b008b31e0409bc6de47989a888004c24dba64397151d86
```

### `dpkg` source package: `googletest=1.8.0-6`

Binary Packages:

- `google-mock:amd64=1.8.0-6`
- `googletest:amd64=1.8.0-6`
- `libgtest-dev:amd64=1.8.0-6`

Licenses: (parsed from: `/usr/share/doc/google-mock/copyright`, `/usr/share/doc/googletest/copyright`, `/usr/share/doc/libgtest-dev/copyright`)

- `Apache`
- `BSD-C3`
- `GAP`

Source:

```console
$ apt-get source -qq --print-uris googletest=1.8.0-6
'http://archive.ubuntu.com/ubuntu/pool/universe/g/googletest/googletest_1.8.0-6.dsc' googletest_1.8.0-6.dsc 2077 SHA256:80407dd39851eee21860f05b4f3d88e9c3fb905d3aa33c4a19496ddc33da66d4
'http://archive.ubuntu.com/ubuntu/pool/universe/g/googletest/googletest_1.8.0.orig.tar.gz' googletest_1.8.0.orig.tar.gz 1281617 SHA256:58a6f4277ca2bc8565222b3bbd58a177609e9c488e8a72649359ba51450db7d8
'http://archive.ubuntu.com/ubuntu/pool/universe/g/googletest/googletest_1.8.0-6.debian.tar.xz' googletest_1.8.0-6.debian.tar.xz 8492 SHA256:0b11f825aae0c84d1b0be43ffc3e6b288d2c3b064f94ac5f241a72493a51b253
```

### `dpkg` source package: `gpgme1.0=1.10.0-1ubuntu2`

Binary Packages:

- `libgpgme-dev=1.10.0-1ubuntu2`
- `libgpgme11:amd64=1.10.0-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libgpgme-dev/copyright`, `/usr/share/doc/libgpgme11/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `LGPL-2`
- `LGPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `LGPL-3`
- `LGPL-3+`

Source:

```console
$ apt-get source -qq --print-uris gpgme1.0=1.10.0-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgme1.0/gpgme1.0_1.10.0-1ubuntu2.dsc' gpgme1.0_1.10.0-1ubuntu2.dsc 3046 SHA256:fe60f76894d4f8b089e456762978f7fb5e78592cf0fa039b8980edca72c3448b
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgme1.0/gpgme1.0_1.10.0.orig.tar.bz2' gpgme1.0_1.10.0.orig.tar.bz2 1370162 SHA256:1a8fed1197c3b99c35f403066bb344a26224d292afc048cfdfc4ccd5690a0693
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgme1.0/gpgme1.0_1.10.0.orig.tar.bz2.asc' gpgme1.0_1.10.0.orig.tar.bz2.asc 534 SHA256:a7058cd592ae81c35fc05bcc6b32019a025ab5ef65a01402ceeb533a104a50b5
'http://archive.ubuntu.com/ubuntu/pool/main/g/gpgme1.0/gpgme1.0_1.10.0-1ubuntu2.debian.tar.xz' gpgme1.0_1.10.0-1ubuntu2.debian.tar.xz 18372 SHA256:792b744cc5b0a8af5f125641e5bc4a86c3862b7a9cf3ae6ba74ee0f16d3553c1
```

### `dpkg` source package: `graphite2=1.3.11-2`

Binary Packages:

- `libgraphite2-3:amd64=1.3.11-2`
- `libgraphite2-dev:amd64=1.3.11-2`

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
$ apt-get source -qq --print-uris graphite2=1.3.11-2
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.11-2.dsc' graphite2_1.3.11-2.dsc 2367 SHA256:3c2f5ed2b6021e9a18456215d5d01354434f14577dbc862f7f53c8ce62200d71
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.11.orig.tar.gz' graphite2_1.3.11.orig.tar.gz 4236768 SHA256:945c01d3647b355d68e5541773fc99a7f29ede6a264bcbd735156a7c493459ff
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.11-2.debian.tar.xz' graphite2_1.3.11-2.debian.tar.xz 14068 SHA256:c47ef4ae6edfa6ce02483f347e67786b0fce089515087370ccc10f22ad711f90
```

### `dpkg` source package: `grep=3.1-2`

Binary Packages:

- `grep=3.1-2`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=3.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.1-2.dsc' grep_3.1-2.dsc 2046 SHA256:b75ef8eb1399a49274bafe972679680b7add1500a4ee82eedaa0372f8ed744a0
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.1.orig.tar.xz' grep_3.1.orig.tar.xz 1370880 SHA256:db625c7ab3bb3ee757b3926a5cfa8d9e1c3991ad24707a83dde8a5ef2bf7a07e
'http://archive.ubuntu.com/ubuntu/pool/main/g/grep/grep_3.1-2.debian.tar.bz2' grep_3.1-2.debian.tar.bz2 110067 SHA256:f09ce7a3c860a5de8939ebceb5fcd85d00d1537ad9f998dae5f623d9bcfe4e40
```

### `dpkg` source package: `gzip=1.6-5ubuntu1`

Binary Packages:

- `gzip=1.6-5ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.6-5ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-5ubuntu1.dsc' gzip_1.6-5ubuntu1.dsc 2023 SHA256:439e340fce084b9b30e22a5537712f9b4727a20e77952addeea7633a4e9ef073
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6.orig.tar.gz' gzip_1.6.orig.tar.gz 1074924 SHA256:97eb83b763d9e5ad35f351fe5517e6b71521d7aac7acf3e3cacdb6b1496d8f7e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-5ubuntu1.debian.tar.xz' gzip_1.6-5ubuntu1.debian.tar.xz 15516 SHA256:db01e3f2195cf0ebcf43ad38d07a70059b6b5b292706f2412de34928b9146db5
```

### `dpkg` source package: `harfbuzz=1.7.2-1ubuntu1`

Binary Packages:

- `gir1.2-harfbuzz-0.0:amd64=1.7.2-1ubuntu1`
- `libharfbuzz-dev:amd64=1.7.2-1ubuntu1`
- `libharfbuzz-gobject0:amd64=1.7.2-1ubuntu1`
- `libharfbuzz-icu0:amd64=1.7.2-1ubuntu1`
- `libharfbuzz0b:amd64=1.7.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-harfbuzz-0.0/copyright`, `/usr/share/doc/libharfbuzz-dev/copyright`, `/usr/share/doc/libharfbuzz-gobject0/copyright`, `/usr/share/doc/libharfbuzz-icu0/copyright`, `/usr/share/doc/libharfbuzz0b/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris harfbuzz=1.7.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.7.2-1ubuntu1.dsc' harfbuzz_1.7.2-1ubuntu1.dsc 2825 SHA256:0222317c07eecbb164a537694dcb01ff4c658a56e577f9667cbb8ec144d287fa
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.7.2.orig.tar.bz2' harfbuzz_1.7.2.orig.tar.bz2 1708416 SHA256:a790585e35c1a87f0dcc23580c84b7cc2324e6f67a2946178d278c2a36c790cb
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.7.2-1ubuntu1.debian.tar.xz' harfbuzz_1.7.2-1ubuntu1.debian.tar.xz 9168 SHA256:f94a2a0990fd0b39fdef14444fa39b0bd1d15f6c79e74b697856ba2cef06b0bf
```

### `dpkg` source package: `heimdal=7.5.0+dfsg-1`

Binary Packages:

- `libasn1-8-heimdal:amd64=7.5.0+dfsg-1`
- `libgssapi3-heimdal:amd64=7.5.0+dfsg-1`
- `libhcrypto4-heimdal:amd64=7.5.0+dfsg-1`
- `libheimbase1-heimdal:amd64=7.5.0+dfsg-1`
- `libheimntlm0-heimdal:amd64=7.5.0+dfsg-1`
- `libhx509-5-heimdal:amd64=7.5.0+dfsg-1`
- `libkrb5-26-heimdal:amd64=7.5.0+dfsg-1`
- `libroken18-heimdal:amd64=7.5.0+dfsg-1`
- `libwind0-heimdal:amd64=7.5.0+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libasn1-8-heimdal/copyright`, `/usr/share/doc/libgssapi3-heimdal/copyright`, `/usr/share/doc/libhcrypto4-heimdal/copyright`, `/usr/share/doc/libheimbase1-heimdal/copyright`, `/usr/share/doc/libheimntlm0-heimdal/copyright`, `/usr/share/doc/libhx509-5-heimdal/copyright`, `/usr/share/doc/libkrb5-26-heimdal/copyright`, `/usr/share/doc/libroken18-heimdal/copyright`, `/usr/share/doc/libwind0-heimdal/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `custom`
- `none`

Source:

```console
$ apt-get source -qq --print-uris heimdal=7.5.0+dfsg-1
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_7.5.0+dfsg-1.dsc' heimdal_7.5.0+dfsg-1.dsc 3674 SHA256:98ce6bf21ac01400ec10a3620fe3c047da4cf63269f521ba96c59bbcaed822bf
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_7.5.0+dfsg.orig.tar.gz' heimdal_7.5.0+dfsg.orig.tar.gz 8955005 SHA256:489119b7a1a900b88163765654dc59cba9a321b078fafc76629e2b85ef140867
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_7.5.0+dfsg-1.debian.tar.xz' heimdal_7.5.0+dfsg-1.debian.tar.xz 125776 SHA256:7ad6c3f3968989ff06181409e1515a3feaf5a630d27ade7f2f018c9241f8c225
```

### `dpkg` source package: `hostname=3.20`

Binary Packages:

- `hostname=3.20`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.20
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.20.dsc' hostname_3.20.dsc 1429 SHA256:1fd7b0b2b61e58aa0e50de4d375072c938cb3cc4b722bc73e085e3a3691d9114
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.20.tar.gz' hostname_3.20.tar.gz 13336 SHA256:e7ed56f8c532573ff34d9bd6e7a10d04fbbb2c7fae187898805868e5fed24ab0
```

### `dpkg` source package: `hwloc=1.11.9-1`

Binary Packages:

- `libhwloc-dev:amd64=1.11.9-1`
- `libhwloc-plugins=1.11.9-1`
- `libhwloc5:amd64=1.11.9-1`

Licenses: (parsed from: `/usr/share/doc/libhwloc-dev/copyright`, `/usr/share/doc/libhwloc-plugins/copyright`, `/usr/share/doc/libhwloc5/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris hwloc=1.11.9-1
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hwloc/hwloc_1.11.9-1.dsc' hwloc_1.11.9-1.dsc 2661 SHA256:96705c8bef41c088d215dab615f4a813658cdb4ad5b6d18ec8d463eac6bf88f5
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hwloc/hwloc_1.11.9.orig.tar.bz2' hwloc_1.11.9.orig.tar.bz2 4221902 SHA256:394333184248d63cb2708a976e57f05337d03bb50c33aa3097ff5c5a74a85164
'http://archive.ubuntu.com/ubuntu/pool/universe/h/hwloc/hwloc_1.11.9-1.debian.tar.bz2' hwloc_1.11.9-1.debian.tar.bz2 10200 SHA256:82d20f317a796b196e19c1b6029a2c694a95aaee59be7f36c04a3021efa83ef6
```

### `dpkg` source package: `icu-le-hb=1.0.3+git161113-4`

Binary Packages:

- `libicu-le-hb-dev:amd64=1.0.3+git161113-4`
- `libicu-le-hb0:amd64=1.0.3+git161113-4`

Licenses: (parsed from: `/usr/share/doc/libicu-le-hb-dev/copyright`, `/usr/share/doc/libicu-le-hb0/copyright`)

- `GPL-3`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris icu-le-hb=1.0.3+git161113-4
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu-le-hb/icu-le-hb_1.0.3+git161113-4.dsc' icu-le-hb_1.0.3+git161113-4.dsc 1929 SHA256:e486c93a9795a26347607ea19ad2ca97e043b6de3dcbbc8bf70b0826d740ed50
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu-le-hb/icu-le-hb_1.0.3+git161113.orig.tar.xz' icu-le-hb_1.0.3+git161113.orig.tar.xz 31460 SHA256:777cdb6fecedb6400cab85894a8407bb70771e38a0e99b837ccf9e4a55f8578c
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu-le-hb/icu-le-hb_1.0.3+git161113-4.debian.tar.xz' icu-le-hb_1.0.3+git161113-4.debian.tar.xz 3176 SHA256:e140404464ff5c26af2f7f2f974cb4447e833a64f4529e85564ad367fb483ee5
```

### `dpkg` source package: `icu=60.2-3ubuntu3`

Binary Packages:

- `icu-devtools=60.2-3ubuntu3`
- `libicu-dev=60.2-3ubuntu3`
- `libicu60:amd64=60.2-3ubuntu3`
- `libiculx60:amd64=60.2-3ubuntu3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris icu=60.2-3ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_60.2-3ubuntu3.dsc' icu_60.2-3ubuntu3.dsc 1816 SHA256:6b733a4a14704048ccd62b404bd1dac5321f0b9ddc3248322594b0c1146fa0c3
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_60.2.orig.tar.gz' icu_60.2.orig.tar.gz 23315541 SHA256:a8c2ddbdf2be01c7ddcfded837afe46362e1069ea6093f66816b2d1caa8272ae
'http://archive.ubuntu.com/ubuntu/pool/main/i/icu/icu_60.2-3ubuntu3.debian.tar.xz' icu_60.2-3ubuntu3.debian.tar.xz 27588 SHA256:f9f9a7aa4a70c8ce4e2f324956b9883ce4faeecfc3799800595594620824140e
```

### `dpkg` source package: `infinipath-psm=3.3+20.604758e7-5`

Binary Packages:

- `libpsm-infinipath1=3.3+20.604758e7-5`

Licenses: (parsed from: `/usr/share/doc/libpsm-infinipath1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris infinipath-psm=3.3+20.604758e7-5
'http://archive.ubuntu.com/ubuntu/pool/universe/i/infinipath-psm/infinipath-psm_3.3+20.604758e7-5.dsc' infinipath-psm_3.3+20.604758e7-5.dsc 2284 SHA256:5b42b5d421a2bcc86999a019adfeeb0194584ac586374a285d6ae54ac018e2ac
'http://archive.ubuntu.com/ubuntu/pool/universe/i/infinipath-psm/infinipath-psm_3.3+20.604758e7.orig.tar.xz' infinipath-psm_3.3+20.604758e7.orig.tar.xz 287112 SHA256:2fb37b3436866b7f6d7244edded875bf7ebc89e7a09a1f372ace548d0f90481d
'http://archive.ubuntu.com/ubuntu/pool/universe/i/infinipath-psm/infinipath-psm_3.3+20.604758e7-5.debian.tar.xz' infinipath-psm_3.3+20.604758e7-5.debian.tar.xz 9312 SHA256:d1cc95c8f929d86ebdd3ea12214ee7a9d4493db1f2cd2b9332f89c56ccab0a63
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.51.dsc' init-system-helpers_1.51.dsc 1963 SHA256:82f0e30fef2ad14c65f9c7d8ccafd43549451041fdf661dca28b963a6cef02e4
'http://archive.ubuntu.com/ubuntu/pool/main/i/init-system-helpers/init-system-helpers_1.51.tar.xz' init-system-helpers_1.51.tar.xz 37468 SHA256:e18b28efe8df087146d9c1e4e9c25386ee1b7312f518d48a2a38469a6c661be0
```

### `dpkg` source package: `isl=0.19-1`

Binary Packages:

- `libisl19:amd64=0.19-1`

Licenses: (parsed from: `/usr/share/doc/libisl19/copyright`)

- `BSD-2-clause`
- `LGPL-2`
- `LGPL-2.1+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris isl=0.19-1
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.19-1.dsc' isl_0.19-1.dsc 1833 SHA256:f9786677430e2ea7295c6ad9480e7e710582f84b5b850a5ddfe1f21b3d726b0f
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.19.orig.tar.xz' isl_0.19.orig.tar.xz 1515156 SHA256:6d6c1aa00e2a6dfc509fa46d9a9dbe93af0c451e196a670577a148feecf6b8a5
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.19-1.debian.tar.xz' isl_0.19-1.debian.tar.xz 22388 SHA256:aa034a5700c63867aae836a1f985fccc50ccacd1abe57a2a016e076fa745feb0
```

### `dpkg` source package: `keyutils=1.5.9-9.2ubuntu2`

Binary Packages:

- `libkeyutils1:amd64=1.5.9-9.2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.5.9-9.2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9-9.2ubuntu2.dsc' keyutils_1.5.9-9.2ubuntu2.dsc 2237 SHA256:67cb7c4b1dadc2c0ca85286ef8f11f7e71f91b67d47fca58ecd41e1bd83271ad
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9.orig.tar.bz2' keyutils_1.5.9.orig.tar.bz2 74683 SHA256:4da2c5552c688b65ab14d4fd40fbdf720c8b396d8ece643e040cf6e707e083ae
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9-9.2ubuntu2.debian.tar.xz' keyutils_1.5.9-9.2ubuntu2.debian.tar.xz 18492 SHA256:51706bd0d480913584d3fa8fcfe32dcf210742bb75c08e6a2d5f022748654086
```

### `dpkg` source package: `krb5=1.16-2ubuntu0.1`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.16-2ubuntu0.1`
- `libk5crypto3:amd64=1.16-2ubuntu0.1`
- `libkrb5-3:amd64=1.16-2ubuntu0.1`
- `libkrb5support0:amd64=1.16-2ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.16-2ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.16-2ubuntu0.1.dsc' krb5_1.16-2ubuntu0.1.dsc 3563 SHA256:2c955da3464e506961ee80a769bd5139b2df6770ed51947a510f48f451be70c0
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.16.orig.tar.gz' krb5_1.16.orig.tar.gz 9474479 SHA256:faeb125f83b0fb4cdb2f99f088140631bb47d975982de0956d18c85842969e08
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.16-2ubuntu0.1.debian.tar.xz' krb5_1.16-2ubuntu0.1.debian.tar.xz 99820 SHA256:9e3a973805af340fab23cd28737187567214adb98452d1564ada05652036fc0c
```

### `dpkg` source package: `lapack=3.7.1-4ubuntu1`

Binary Packages:

- `libblas3:amd64=3.7.1-4ubuntu1`
- `liblapack3:amd64=3.7.1-4ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libblas3/copyright`, `/usr/share/doc/liblapack3/copyright`)

- `BSD-3-clause`
- `BSD-3-clause-intel`

Source:

```console
$ apt-get source -qq --print-uris lapack=3.7.1-4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.7.1-4ubuntu1.dsc' lapack_3.7.1-4ubuntu1.dsc 2920 SHA256:e33bcdea935109083a85442f1826cb4fef865c7e56fb5b38e75a08a8defc3fcd
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.7.1.orig.tar.gz' lapack_3.7.1.orig.tar.gz 9137261 SHA256:f6c53fd9f56932f3ddb3d5e24c1c07e4cd9b3b08e7f89de9c867125eecc9a1c8
'http://archive.ubuntu.com/ubuntu/pool/main/l/lapack/lapack_3.7.1-4ubuntu1.debian.tar.xz' lapack_3.7.1-4ubuntu1.debian.tar.xz 20956 SHA256:0b981a911d7a8cde6b1addd3d823be88d29807f50c19e71e1a8a233e469c3a6d
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

### `dpkg` source package: `libalgorithm-diff-xs-perl=0.04-5`

Binary Packages:

- `libalgorithm-diff-xs-perl=0.04-5`

Licenses: (parsed from: `/usr/share/doc/libalgorithm-diff-xs-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libalgorithm-diff-xs-perl=0.04-5
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-diff-xs-perl/libalgorithm-diff-xs-perl_0.04-5.dsc' libalgorithm-diff-xs-perl_0.04-5.dsc 2184 SHA256:f4d410349217b173909c69c81bf0dc4f545572db203658a7f94c44012520e221
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-diff-xs-perl/libalgorithm-diff-xs-perl_0.04.orig.tar.gz' libalgorithm-diff-xs-perl_0.04.orig.tar.gz 47699 SHA256:cea89b47e1f70fa78f55f3c405491ce36d3effd9980f5c5491edffa31aa77153
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libalgorithm-diff-xs-perl/libalgorithm-diff-xs-perl_0.04-5.debian.tar.xz' libalgorithm-diff-xs-perl_0.04-5.debian.tar.xz 2716 SHA256:3935af413d77cc00436d9f99f9369b5349e716223d79ca249a2f61a4c5ad51e0
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

### `dpkg` source package: `libarchive=3.2.2-3.1ubuntu0.2`

Binary Packages:

- `libarchive13:amd64=3.2.2-3.1ubuntu0.2`

Licenses: (parsed from: `/usr/share/doc/libarchive13/copyright`)

- `Apache-2.0`
- `BSD-1-clause-UCB`
- `BSD-124-clause-UCB`
- `BSD-2-clause`
- `BSD-3-clause-UCB`
- `BSD-4-clause-UCB`
- `Expat`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris libarchive=3.2.2-3.1ubuntu0.2
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.2.2-3.1ubuntu0.2.dsc' libarchive_3.2.2-3.1ubuntu0.2.dsc 2457 SHA256:045d05e149d105deaf431763a87add61a742be4e5766f0861c92780eadb8f248
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.2.2.orig.tar.gz' libarchive_3.2.2.orig.tar.gz 5458241 SHA256:691c194ee132d1f0f7a42541f091db811bc2e56f7107e9121be2bc8c04f1060f
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libarchive/libarchive_3.2.2-3.1ubuntu0.2.debian.tar.xz' libarchive_3.2.2-3.1ubuntu0.2.debian.tar.xz 20200 SHA256:da99ae224f2d7b2c8545514e6ddb7af85d21f1a59c6a4f5ffc118e3a50c4f2b6
```

### `dpkg` source package: `libassuan=2.5.1-2`

Binary Packages:

- `libassuan-dev=2.5.1-2`
- `libassuan0:amd64=2.5.1-2`

Licenses: (parsed from: `/usr/share/doc/libassuan-dev/copyright`, `/usr/share/doc/libassuan0/copyright`)

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
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.1-2.dsc' libassuan_2.5.1-2.dsc 2215 SHA256:e954a7ef30815e62832ca4a1d2959142e264795e7ec78ba369752353135beb68
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.1.orig.tar.bz2' libassuan_2.5.1.orig.tar.bz2 564857 SHA256:47f96c37b4f2aac289f0bc1bacfa8bd8b4b209a488d3d15e2229cb6cc9b26449
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.1-2.debian.tar.xz' libassuan_2.5.1-2.debian.tar.xz 15236 SHA256:4a67901dcb0e92cd40e0d5d7148ebe6f929378671df373eb68b48acb560d641f
```

### `dpkg` source package: `libcap-ng=0.7.7-3.1`

Binary Packages:

- `libcap-ng0:amd64=0.7.7-3.1`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.7.7-3.1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.7-3.1.dsc' libcap-ng_0.7.7-3.1.dsc 2266 SHA256:f545d107ed3e6160b16aac09e242d1ccc054bfca76f6d70731a83c031b416f53
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.7.orig.tar.gz' libcap-ng_0.7.7.orig.tar.gz 420178 SHA256:615549ce39b333f6b78baee0c0b4ef18bc726c6bf1cca123dfd89dd963f6d06b
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.7-3.1.debian.tar.xz' libcap-ng_0.7.7-3.1.debian.tar.xz 5432 SHA256:074bf729c3081af729e7e0fbbe3354ddecc16e045245e7d4f44003b9f1f1adc6
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17025-1.dsc' liberror-perl_0.17025-1.dsc 2077 SHA256:994800c0123fe452ca1f1019e5bf71755c3200231d84999a31dd19be16ada41b
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17025.orig.tar.gz' liberror-perl_0.17025.orig.tar.gz 32013 SHA256:6c9f474ad3d4fe0cabff6b6be532cb1dd348245986d4a6b600ad921d5cfdefaf
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17025-1.debian.tar.xz' liberror-perl_0.17025-1.debian.tar.xz 4108 SHA256:0288dcf7eeff5cddfaf8c6bdfbe9fc170a1d333bb6d88489ca8158c929a44f76
```

### `dpkg` source package: `libfabric=1.5.3-1`

Binary Packages:

- `libfabric1=1.5.3-1`

Licenses: (parsed from: `/usr/share/doc/libfabric1/copyright`)

- `BSD-2-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libfabric=1.5.3-1
'http://archive.ubuntu.com/ubuntu/pool/universe/libf/libfabric/libfabric_1.5.3-1.dsc' libfabric_1.5.3-1.dsc 2143 SHA256:4dcd9d9a757fa4a0896ee2072a0339c3402e6b1e3243d3ed85b93b63ff76a827
'http://archive.ubuntu.com/ubuntu/pool/universe/libf/libfabric/libfabric_1.5.3.orig.tar.xz' libfabric_1.5.3.orig.tar.xz 930228 SHA256:68bf2b4e465ff08a0403175553d535dccee39d6597f2b0a4619b43c522c29128
'http://archive.ubuntu.com/ubuntu/pool/universe/libf/libfabric/libfabric_1.5.3-1.debian.tar.xz' libfabric_1.5.3-1.debian.tar.xz 8836 SHA256:630681fa87d7dbd91190f42fe39946794e20727f2a35fb51ea108cec5c4d70df
```

### `dpkg` source package: `libffi=3.2.1-8`

Binary Packages:

- `libffi6:amd64=3.2.1-8`

Licenses: (parsed from: `/usr/share/doc/libffi6/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.2.1-8
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-8.dsc' libffi_3.2.1-8.dsc 1959 SHA256:a07201eb5374cfab35703a6f4c88a494bb23ece91da5481497bc25404c57eaf4
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1.orig.tar.gz' libffi_3.2.1.orig.tar.gz 940837 SHA256:d06ebb8e1d9a22d19e38d63fdb83954253f39bedc5d46232a05645685722ca37
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-8.debian.tar.xz' libffi_3.2.1-8.debian.tar.xz 11660 SHA256:1eb0b13e0c0fc989ed98011d18dcddf8a05af17380fe1258883761a8d16586b4
```

### `dpkg` source package: `libfile-fcntllock-perl=0.22-3build2`

Binary Packages:

- `libfile-fcntllock-perl=0.22-3build2`

Licenses: (parsed from: `/usr/share/doc/libfile-fcntllock-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris libfile-fcntllock-perl=0.22-3build2
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfile-fcntllock-perl/libfile-fcntllock-perl_0.22-3build2.dsc' libfile-fcntllock-perl_0.22-3build2.dsc 2143 SHA256:28a24ceaa143e8691e1132d0384755a5432ebd0769dff3632244694b31d4ea34
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfile-fcntllock-perl/libfile-fcntllock-perl_0.22.orig.tar.gz' libfile-fcntllock-perl_0.22.orig.tar.gz 16994 SHA256:9a9abb2efff93ab73741a128d3f700e525273546c15d04e7c51c704ab09dbcdf
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libfile-fcntllock-perl/libfile-fcntllock-perl_0.22-3build2.debian.tar.xz' libfile-fcntllock-perl_0.22-3build2.debian.tar.xz 2552 SHA256:0bfaefac775dfcad90e1810d5d13156c1dcfdd1c26206cb1a8f7b44f0ef2084c
```

### `dpkg` source package: `libgcrypt20=1.8.1-4ubuntu1.1`

Binary Packages:

- `libgcrypt20:amd64=1.8.1-4ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.8.1-4ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1-4ubuntu1.1.dsc' libgcrypt20_1.8.1-4ubuntu1.1.dsc 3035 SHA256:45b6a3177046c0a9a78187b817e374d5fffd6d37e28efb98d7a6c3a0c292ace8
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1.orig.tar.bz2' libgcrypt20_1.8.1.orig.tar.bz2 2967344 SHA256:7a2875f8b1ae0301732e878c0cca2c9664ff09ef71408f085c50e332656a78b3
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1.orig.tar.bz2.asc' libgcrypt20_1.8.1.orig.tar.bz2.asc 310 SHA256:9e08f467824855084594a14c4a0455963dac9a359d543e8c2a91ca3498ad031b
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1-4ubuntu1.1.debian.tar.xz' libgcrypt20_1.8.1-4ubuntu1.1.debian.tar.xz 31408 SHA256:897cb9aacc7d1cc8c1de6f81c2690eb8cdcb5d6a5fa8dc99b56275d9c00c511b
```

### `dpkg` source package: `libgpg-error=1.27-6`

Binary Packages:

- `libgpg-error-dev=1.27-6`
- `libgpg-error0:amd64=1.27-6`

Licenses: (parsed from: `/usr/share/doc/libgpg-error-dev/copyright`, `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.27-6
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.27-6.dsc' libgpg-error_1.27-6.dsc 2343 SHA256:d4cc2c1691b295f558d5b347df8a8ad2f0260cf57146180bed223b94ffacafbb
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.27.orig.tar.bz2' libgpg-error_1.27.orig.tar.bz2 813060 SHA256:4f93aac6fecb7da2b92871bb9ee33032be6a87b174f54abf8ddf0911a22d29d2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.27-6.debian.tar.xz' libgpg-error_1.27-6.debian.tar.xz 20556 SHA256:89bc57dc3df449febf037226daf1aee830455c4efa493c0e3bdeab2a48971479
```

### `dpkg` source package: `libidn2=2.0.4-1.1build2`

Binary Packages:

- `libidn2-0:amd64=2.0.4-1.1build2`

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
$ apt-get source -qq --print-uris libidn2=2.0.4-1.1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.0.4-1.1build2.dsc' libidn2_2.0.4-1.1build2.dsc 2284 SHA256:1a2ebdd471b5d3da5674337594d28213b134464c53d0f5ae529a4bc53f2115fe
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.0.4.orig.tar.gz' libidn2_2.0.4.orig.tar.gz 2008524 SHA256:644b6b03b285fb0ace02d241d59483d98bc462729d8bb3608d5cad5532f3d2f0
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.0.4-1.1build2.debian.tar.xz' libidn2_2.0.4-1.1build2.debian.tar.xz 10285784 SHA256:fd3d28167dba38fcfd2951f09a6dc5408fa0a62c68597e743bb20e6b0a0367d1
```

### `dpkg` source package: `libjsoncpp=1.7.4-3`

Binary Packages:

- `libjsoncpp1:amd64=1.7.4-3`

Licenses: (parsed from: `/usr/share/doc/libjsoncpp1/copyright`)

- `Expat_or_PublicDomain_or_DualExpatPD`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libjsoncpp=1.7.4-3
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.7.4-3.dsc' libjsoncpp_1.7.4-3.dsc 2137 SHA256:8f8d17cb824b288e140988e489b953f7ca084b094a06cc39867a4af1faf1f421
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.7.4.orig.tar.gz' libjsoncpp_1.7.4.orig.tar.gz 205752 SHA256:10dcd0677e80727e572a1e462193e51a5fde3e023b99e144b2ee1a469835f769
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjsoncpp/libjsoncpp_1.7.4-3.debian.tar.xz' libjsoncpp_1.7.4-3.debian.tar.xz 7828 SHA256:4d99ab057737a02512e75404315ee0b723823f6caed4401c25e46925c4c8857e
```

### `dpkg` source package: `libksba=1.3.5-2`

Binary Packages:

- `libksba8:amd64=1.3.5-2`

Licenses: (parsed from: `/usr/share/doc/libksba8/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris libksba=1.3.5-2
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.3.5-2.dsc' libksba_1.3.5-2.dsc 2526 SHA256:4fd08fd129f97ab1df86c220b88b7b2c6e4e04aa90bfd3ae364d18022256bef8
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.3.5.orig.tar.bz2' libksba_1.3.5.orig.tar.bz2 620649 SHA256:41444fd7a6ff73a79ad9728f985e71c9ba8cd3e5e53358e70d5f066d35c1a340
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.3.5.orig.tar.bz2.asc' libksba_1.3.5.orig.tar.bz2.asc 287 SHA256:a954b03144ee882c838853da24fd7b6868b78df72a18c71079217d968698a76f
'http://archive.ubuntu.com/ubuntu/pool/main/libk/libksba/libksba_1.3.5-2.debian.tar.xz' libksba_1.3.5-2.debian.tar.xz 13852 SHA256:98c985bff973be1aecc702fa15887ff1e5b8de481d1dc3e99423a587754eaabd
```

### `dpkg` source package: `liblocale-gettext-perl=1.07-3build2`

Binary Packages:

- `liblocale-gettext-perl=1.07-3build2`

Licenses: (parsed from: `/usr/share/doc/liblocale-gettext-perl/copyright`)

- `Artistic`
- `GPL-1`
- `GPL-1+`

Source:

```console
$ apt-get source -qq --print-uris liblocale-gettext-perl=1.07-3build2
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblocale-gettext-perl/liblocale-gettext-perl_1.07-3build2.dsc' liblocale-gettext-perl_1.07-3build2.dsc 2216 SHA256:25a6cfd1acaa2cb396fc1977ec5b87f4c0cb7b0b6801e9290d66a56c1eadf021
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblocale-gettext-perl/liblocale-gettext-perl_1.07.orig.tar.gz' liblocale-gettext-perl_1.07.orig.tar.gz 8651 SHA256:909d47954697e7c04218f972915b787bd1244d75e3bd01620bc167d5bbc49c15
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblocale-gettext-perl/liblocale-gettext-perl_1.07-3build2.debian.tar.xz' liblocale-gettext-perl_1.07-3build2.debian.tar.xz 5648 SHA256:6f6dbd0989c29f6d8bb47d157f4e0a9f8f700c71bbb859cdd512d8dd425d38b5
```

### `dpkg` source package: `libnl3=3.2.29-0ubuntu3`

Binary Packages:

- `libnl-3-200:amd64=3.2.29-0ubuntu3`
- `libnl-route-3-200:amd64=3.2.29-0ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libnl-3-200/copyright`, `/usr/share/doc/libnl-route-3-200/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libnl3=3.2.29-0ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/libn/libnl3/libnl3_3.2.29-0ubuntu3.dsc' libnl3_3.2.29-0ubuntu3.dsc 3149 SHA256:4b342949deb676eab1475ab10e7ff088ce2bba798fdb87b800b0a821c8ad65e4
'http://archive.ubuntu.com/ubuntu/pool/main/libn/libnl3/libnl3_3.2.29.orig.tar.gz' libnl3_3.2.29.orig.tar.gz 963681 SHA256:0beb593dc6abfffa18a5c787b27884979c1b7e7f1fd468c801e3cc938a685922
'http://archive.ubuntu.com/ubuntu/pool/main/libn/libnl3/libnl3_3.2.29-0ubuntu3.debian.tar.xz' libnl3_3.2.29-0ubuntu3.debian.tar.xz 20156 SHA256:77b157013f0274525580b17d97b057c1600eda8a256eec07cbd0d2e9cc442d6b
```

### `dpkg` source package: `libpciaccess=0.14-1`

Binary Packages:

- `libpciaccess0:amd64=0.14-1`

Licenses: (parsed from: `/usr/share/doc/libpciaccess0/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libpciaccess=0.14-1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpciaccess/libpciaccess_0.14-1.dsc' libpciaccess_0.14-1.dsc 2062 SHA256:1cbfd426e4efcc958b6c9fd4889877b533035175370fa0505f361b89e1aeaa4f
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpciaccess/libpciaccess_0.14.orig.tar.gz' libpciaccess_0.14.orig.tar.gz 461764 SHA256:8d86e64893917be3dfb1c5e837888d1275399c818783474002203d751312b03c
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpciaccess/libpciaccess_0.14-1.diff.gz' libpciaccess_0.14-1.diff.gz 25039 SHA256:fea9483fbfb202040a8e5eef3ec3b434b3e897f301e735753568db2106e1512d
```

### `dpkg` source package: `libpipeline=1.5.0-1`

Binary Packages:

- `libpipeline1:amd64=1.5.0-1`

Licenses: (parsed from: `/usr/share/doc/libpipeline1/copyright`)

- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris libpipeline=1.5.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpipeline/libpipeline_1.5.0-1.dsc' libpipeline_1.5.0-1.dsc 2122 SHA256:01a641434be2d8feb6a1dfa79c0a10fcc8268620eb12f04cc8418d53daba3ef1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpipeline/libpipeline_1.5.0.orig.tar.gz' libpipeline_1.5.0.orig.tar.gz 828765 SHA256:0d72e12e4f2afff67fd7b9df0a24d7ba42b5a7c9211ac5b3dcccc5cd8b286f2b
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpipeline/libpipeline_1.5.0-1.debian.tar.xz' libpipeline_1.5.0-1.debian.tar.xz 197352 SHA256:a5875fbb453df5570ad91f943574758b586b83f7fa8778d956d082e2ec3f70ce
```

### `dpkg` source package: `libpng1.6=1.6.34-1ubuntu0.18.04.1`

Binary Packages:

- `libpng16-16:amd64=1.6.34-1ubuntu0.18.04.1`

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
$ apt-get source -qq --print-uris libpng1.6=1.6.34-1ubuntu0.18.04.1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.34-1ubuntu0.18.04.1.dsc' libpng1.6_1.6.34-1ubuntu0.18.04.1.dsc 2346 SHA256:2b227336bc96188c0a09c90817f8e97a84d92b81f5b7cd71b7c74a5e6a786190
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.34.orig.tar.xz' libpng1.6_1.6.34.orig.tar.xz 997968 SHA256:2f1e960d92ce3b3abd03d06dfec9637dfbd22febf107a536b44f7a47c60659f6
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.34-1ubuntu0.18.04.1.debian.tar.xz' libpng1.6_1.6.34-1ubuntu0.18.04.1.debian.tar.xz 24128 SHA256:e1766dbb7bb0344a3ad4776ec6cfaf0314e25e4af12f5322e62df076bdf17015
```

### `dpkg` source package: `libpsl=0.19.1-5build1`

Binary Packages:

- `libpsl5:amd64=0.19.1-5build1`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.19.1-5build1
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.19.1-5build1.dsc' libpsl_0.19.1-5build1.dsc 2229 SHA256:cb9bcc439b8e37ee27bd3e69a8afa6dd2a59c90ba45de4d533df256f61c8a4f5
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.19.1.orig.tar.gz' libpsl_0.19.1.orig.tar.gz 8578385 SHA256:e370181114b8ef9daf2bb6db49b1edb842335839c15a088e7ec0a35e04e9a227
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.19.1-5build1.debian.tar.xz' libpsl_0.19.1-5build1.debian.tar.xz 9860 SHA256:53285bee66ac22a25dd41f7778cc4e94ae3d61929eb6701a8064a38a964e40e2
```

### `dpkg` source package: `libseccomp=2.3.1-2.1ubuntu4`

Binary Packages:

- `libseccomp2:amd64=2.3.1-2.1ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2`
- `LGPL-2.0+`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.3.1-2.1ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.3.1-2.1ubuntu4.dsc' libseccomp_2.3.1-2.1ubuntu4.dsc 2248 SHA256:ad6ca3804ad758a00401f11d1a0a6a2e1da132bfcd47b58a60d0c83929271d96
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.3.1.orig.tar.gz' libseccomp_2.3.1.orig.tar.gz 552299 SHA256:ff5bdd2168790f1979e24eaa498f8606c2f2d96f08a8dc4006a2e88affa4562b
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.3.1-2.1ubuntu4.debian.tar.xz' libseccomp_2.3.1-2.1ubuntu4.debian.tar.xz 17516 SHA256:1acba6ca57b66015a876fbb342b1a1a22721c410fa1c597b08498369edc607f5
```

### `dpkg` source package: `libselinux=2.7-2build2`

Binary Packages:

- `libselinux1:amd64=2.7-2build2`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.7-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.7-2build2.dsc' libselinux_2.7-2build2.dsc 2468 SHA256:86f2d8422230927aa3274773e2b8a9ed15cb539804c378e75515afcd28545c37
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.7.orig.tar.gz' libselinux_2.7.orig.tar.gz 187574 SHA256:d0fec0769b3ad60aa7baf9b9a4b7a056827769dc2dadda0dc0eb59b3d1c18c57
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.7-2build2.debian.tar.xz' libselinux_2.7-2build2.debian.tar.xz 23176 SHA256:ef7a781c247797b66f4d68907d8dd6fec7188d0a08e2a8541437d5f7f6796105
```

### `dpkg` source package: `libsemanage=2.7-2build2`

Binary Packages:

- `libsemanage-common=2.7-2build2`
- `libsemanage1:amd64=2.7-2build2`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.7-2build2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.7-2build2.dsc' libsemanage_2.7-2build2.dsc 2555 SHA256:4454d11e7228df1e5166907867bbd1be4e6cc8b20c6834dc690fb0dcf19d1c43
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.7.orig.tar.gz' libsemanage_2.7.orig.tar.gz 153465 SHA256:07e9477714ce6a4557a1fe924ea4cb06501b62d0fa0e3c0dc32a2cf47cb8d476
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsemanage/libsemanage_2.7-2build2.debian.tar.xz' libsemanage_2.7-2build2.debian.tar.xz 17136 SHA256:d6d11ecc5687baa3b07a2a2360a9cbc4b93424a9728aa17b81cd9faf13855c3a
```

### `dpkg` source package: `libsepol=2.7-1`

Binary Packages:

- `libsepol1:amd64=2.7-1`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.7-1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.7-1.dsc' libsepol_2.7-1.dsc 1814 SHA256:7de809477acd60d256eca160d5fc6986e5e65227706b1cdb23f8139bb49d2782
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.7.orig.tar.gz' libsepol_2.7.orig.tar.gz 471147 SHA256:d69d3bd8ec901a3bd5adf2be2fb47fb1a685ed73066ab482e7e505371a48f9e7
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.7-1.debian.tar.xz' libsepol_2.7-1.debian.tar.xz 13944 SHA256:56b1c2b0e492b2089f23a0d7a95a260377a0e3adefc60e90c0ff6eff6be08450
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.13-2.dsc' libtasn1-6_4.13-2.dsc 2574 SHA256:8f583c0ae8568ccf7fcf66c387963ef949d644cfca56d66512a17cb91c3a44fd
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.13.orig.tar.gz' libtasn1-6_4.13.orig.tar.gz 1891703 SHA256:7e528e8c317ddd156230c4e31d082cd13e7ddeb7a54824be82632209550c8cca
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.13.orig.tar.gz.asc' libtasn1-6_4.13.orig.tar.gz.asc 774 SHA256:90261376528edf44831d1369847088cc2fb48669860d343961daca42e674b226
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.13-2.debian.tar.xz' libtasn1-6_4.13-2.debian.tar.xz 63332 SHA256:f36a43fb898c031b6b1a5f43b35af1aea95ac164bb2b57c7f07d1c098ed9f7eb
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6-2.dsc' libtool_2.4.6-2.dsc 2324 SHA256:caa2b9d5c32e491388d0627e2f808b6cb2f260dd1b0b9fdafc9bff957f05bb29
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz' libtool_2.4.6.orig.tar.xz 973080 SHA256:7c87a8c2c8c0fc9cd5019e402bed4292462d00a718a7cd5f11218153bf28b26f
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6.orig.tar.xz.asc' libtool_2.4.6.orig.tar.xz.asc 380 SHA256:ab68ebc45d60128a71fc36167cd29dcf3c3d6d639fd28663905ebaf3e2f43d6a
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtool/libtool_2.4.6-2.debian.tar.xz' libtool_2.4.6-2.debian.tar.xz 36024 SHA256:6227fb1240a90ef06855567e71ee96e4950dd53c4399348f36c1ec39367cd8ea
```

### `dpkg` source package: `libunistring=0.9.9-0ubuntu1`

Binary Packages:

- `libunistring2:amd64=0.9.9-0ubuntu1`

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
$ apt-get source -qq --print-uris libunistring=0.9.9-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.9-0ubuntu1.dsc' libunistring_0.9.9-0ubuntu1.dsc 1974 SHA256:ae7c9c50fd8ba84a19b4304deb7e924e3c51e5285909a373d5bccb3b6f85b6fb
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.9.orig.tar.xz' libunistring_0.9.9.orig.tar.xz 2042992 SHA256:a4d993ecfce16cf503ff7579f5da64619cee66226fb3b998dafb706190d9a833
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.9-0ubuntu1.debian.tar.xz' libunistring_0.9.9-0ubuntu1.debian.tar.xz 40024 SHA256:86f14f6266d66b9aa613ac2263b6d73163ab3865144c1a68fc6fb401e52360dc
```

### `dpkg` source package: `libuv1=1.18.0-3`

Binary Packages:

- `libuv1:amd64=1.18.0-3`

Licenses: (parsed from: `/usr/share/doc/libuv1/copyright`)

- `BSD-1-clause`
- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`
- `ISC`

Source:

```console
$ apt-get source -qq --print-uris libuv1=1.18.0-3
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libuv1/libuv1_1.18.0-3.dsc' libuv1_1.18.0-3.dsc 2053 SHA256:92f4dfae07b870fc4190fcc5bf53edf963ee978b9f9dbc999ad169c9679482da
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libuv1/libuv1_1.18.0.orig.tar.gz' libuv1_1.18.0.orig.tar.gz 1167975 SHA256:0b9aef32e63619c328b65d85583653e295ca091cf9b15315c3c518e02a59c17c
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libuv1/libuv1_1.18.0-3.debian.tar.xz' libuv1_1.18.0-3.debian.tar.xz 12380 SHA256:9ae1087c696cc2612f406eb0041264aaa9c36efa4cbfb5026dbaf7d9f4626b0a
```

### `dpkg` source package: `libxml2=2.9.4+dfsg1-6.1ubuntu1.2`

Binary Packages:

- `libxml2:amd64=2.9.4+dfsg1-6.1ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/libxml2/copyright`)

- `ISC`
- `MIT-1`

Source:

```console
$ apt-get source -qq --print-uris libxml2=2.9.4+dfsg1-6.1ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1-6.1ubuntu1.2.dsc' libxml2_2.9.4+dfsg1-6.1ubuntu1.2.dsc 3151 SHA256:65ab821da16cb5b2b2e89675364b3023fc14a34585d080e96220aba66b57024b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1.orig.tar.xz' libxml2_2.9.4+dfsg1.orig.tar.xz 2446412 SHA256:a74ad55e346aa0b2b41903e66d21f8f3d2a736b3f41e32496376861ab484184e
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2_2.9.4+dfsg1-6.1ubuntu1.2.debian.tar.xz' libxml2_2.9.4+dfsg1-6.1ubuntu1.2.debian.tar.xz 39036 SHA256:10680785de98ddac3ca7152851b8d6a5222e8d7eeb1f051b69e59e8455318487
```

### `dpkg` source package: `libyaml=0.1.7-2ubuntu3`

Binary Packages:

- `libyaml-0-2:amd64=0.1.7-2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.1.7-2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.7-2ubuntu3.dsc' libyaml_0.1.7-2ubuntu3.dsc 2019 SHA256:122f3c4ddc6b6f069382587fdde2ba9ed4800b303bce92c3d11d4fee1c1c0c5c
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.7.orig.tar.gz' libyaml_0.1.7.orig.tar.gz 527518 SHA256:8088e457264a98ba451a90b8661fcb4f9d6f478f7265d48322a196cec2480729
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.7-2ubuntu3.debian.tar.xz' libyaml_0.1.7-2ubuntu3.debian.tar.xz 4288 SHA256:d1b9caa9e645c2c306417068bcdd85e56e6065d74771c15cc970652e52f8259b
```

### `dpkg` source package: `libzstd=1.3.3+dfsg-2ubuntu1`

Binary Packages:

- `libzstd1:amd64=1.3.3+dfsg-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause-with-patent-grant`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.3.3+dfsg-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.3.3+dfsg-2ubuntu1.dsc' libzstd_1.3.3+dfsg-2ubuntu1.dsc 2073 SHA256:c28c88103e3b8eecd5361bf38b185d1ac4a02712e153786ea4d01d26fea6eeb0
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.3.3+dfsg.orig.tar.xz' libzstd_1.3.3+dfsg.orig.tar.xz 1333584 SHA256:e236191547a0ab53cc52c0207ead0d51305dbe9452b5f34d4ea9eb1f51031a93
'http://archive.ubuntu.com/ubuntu/pool/main/libz/libzstd/libzstd_1.3.3+dfsg-2ubuntu1.debian.tar.xz' libzstd_1.3.3+dfsg-2ubuntu1.debian.tar.xz 11124 SHA256:34a1ce5f77815f20941f962019cef0ad6ed0da77179f05609a5c67274485b477
```

### `dpkg` source package: `linux=4.15.0-43.46`

Binary Packages:

- `linux-libc-dev:amd64=4.15.0-43.46`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `lksctp-tools=1.0.17+dfsg-2`

Binary Packages:

- `libsctp-dev:amd64=1.0.17+dfsg-2`
- `libsctp1:amd64=1.0.17+dfsg-2`

Licenses: (parsed from: `/usr/share/doc/libsctp-dev/copyright`, `/usr/share/doc/libsctp1/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris lksctp-tools=1.0.17+dfsg-2
'http://archive.ubuntu.com/ubuntu/pool/main/l/lksctp-tools/lksctp-tools_1.0.17+dfsg-2.dsc' lksctp-tools_1.0.17+dfsg-2.dsc 2014 SHA256:f9180a1d047ac7bdb853a000cd4c4f6a53143f2604bd7cd08bc0800a36abd0e7
'http://archive.ubuntu.com/ubuntu/pool/main/l/lksctp-tools/lksctp-tools_1.0.17+dfsg.orig.tar.gz' lksctp-tools_1.0.17+dfsg.orig.tar.gz 556428 SHA256:f7c537bc08bf57a8eddf49b232f19920e51b0e4ca55e7d47377ce64546d04e1d
'http://archive.ubuntu.com/ubuntu/pool/main/l/lksctp-tools/lksctp-tools_1.0.17+dfsg-2.debian.tar.xz' lksctp-tools_1.0.17+dfsg-2.debian.tar.xz 9436 SHA256:c8e05a29ffbca99428cf2c59a50dd26a4bf73f42487db8231b810882a5f5c779
```

### `dpkg` source package: `log4cxx=0.10.0-13ubuntu2`

Binary Packages:

- `liblog4cxx-dev:amd64=0.10.0-13ubuntu2`
- `liblog4cxx10v5:amd64=0.10.0-13ubuntu2`

Licenses: (parsed from: `/usr/share/doc/liblog4cxx-dev/copyright`, `/usr/share/doc/liblog4cxx10v5/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris log4cxx=0.10.0-13ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/universe/l/log4cxx/log4cxx_0.10.0-13ubuntu2.dsc' log4cxx_0.10.0-13ubuntu2.dsc 2262 SHA256:79dbfa3b2684e6aaec543e7b4cd23520fc56d351606439127cee8b1b11df933c
'http://archive.ubuntu.com/ubuntu/pool/universe/l/log4cxx/log4cxx_0.10.0.orig.tar.gz' log4cxx_0.10.0.orig.tar.gz 1667425 SHA256:0de0396220a9566a580166e66b39674cb40efd2176f52ad2c65486c99c920c8c
'http://archive.ubuntu.com/ubuntu/pool/universe/l/log4cxx/log4cxx_0.10.0-13ubuntu2.debian.tar.xz' log4cxx_0.10.0-13ubuntu2.debian.tar.xz 16488 SHA256:4303722b0541512cda99c39212074528fd96aff81f5e4c0b8837eb89adddce05
```

### `dpkg` source package: `lsb=9.20170808ubuntu1`

Binary Packages:

- `lsb-base=9.20170808ubuntu1`
- `lsb-release=9.20170808ubuntu1`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`, `/usr/share/doc/lsb-release/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=9.20170808ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_9.20170808ubuntu1.dsc' lsb_9.20170808ubuntu1.dsc 2126 SHA256:9b98df7b442472d172612bf6855b4dbc3cd6d5892d8073605dda786fec94af5f
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_9.20170808ubuntu1.tar.xz' lsb_9.20170808ubuntu1.tar.xz 45492 SHA256:b26bcb746e0bff05ad3e15dfbeb0ba7ea2a8d031f765a6cfa568c57d14c522c4
```

### `dpkg` source package: `lz4=0.0~r131-2ubuntu3`

Binary Packages:

- `liblz4-1:amd64=0.0~r131-2ubuntu3`
- `liblz4-dev:amd64=0.0~r131-2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`, `/usr/share/doc/liblz4-dev/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=0.0~r131-2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0~r131-2ubuntu3.dsc' lz4_0.0~r131-2ubuntu3.dsc 2129 SHA256:b6f9a71053ff1414f695790833e689dc8bd4c48169b05a8df8de47edba7a7b58
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0~r131.orig.tar.gz' lz4_0.0~r131.orig.tar.gz 133784 SHA256:9d4d00614d6b9dec3114b33d1224b6262b99ace24434c53487a0c8fd0b18cfed
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_0.0~r131-2ubuntu3.debian.tar.xz' lz4_0.0~r131-2ubuntu3.debian.tar.xz 5340 SHA256:94834bac922397529ffc185f9c4c7e7a6eb1ef3bc527f3fcd26e36fc9430afa7
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

### `dpkg` source package: `make-dfsg=4.1-9.1ubuntu1`

Binary Packages:

- `make=4.1-9.1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.1-9.1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1-9.1ubuntu1.dsc' make-dfsg_4.1-9.1ubuntu1.dsc 2079 SHA256:d8ca40c89cb2b808b28264b7097a001f00a517a68d5bc2657b5c5e1bbfd0ce8b
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1.orig.tar.gz' make-dfsg_4.1.orig.tar.gz 1350231 SHA256:b3ed04fb6718289e4a430afbe2df6ecba9177aad9f6d09aaf38e5409262ca8a3
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1-9.1ubuntu1.diff.gz' make-dfsg_4.1-9.1ubuntu1.diff.gz 46399 SHA256:6adc229835bd4cf04cefab0767534f9e6934989413002dd5525ec557010af5e8
```

### `dpkg` source package: `manpages=4.15-1`

Binary Packages:

- `manpages=4.15-1`
- `manpages-dev=4.15-1`

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
$ apt-get source -qq --print-uris manpages=4.15-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/manpages/manpages_4.15-1.dsc' manpages_4.15-1.dsc 1920 SHA256:df3144dbe878623168f0a06a94ce7570c88107a88e23a13e53802742a8d8e961
'http://archive.ubuntu.com/ubuntu/pool/main/m/manpages/manpages_4.15.orig.tar.gz' manpages_4.15.orig.tar.gz 2572651 SHA256:e62cc43bea97dbde70e08645148d2727965b91f66dc347f677604b8865cadc41
'http://archive.ubuntu.com/ubuntu/pool/main/m/manpages/manpages_4.15-1.debian.tar.xz' manpages_4.15-1.debian.tar.xz 75852 SHA256:d9961fd52b81c67b5a8e30fb2842e0b3551828b4d268f819a621dbf93935270e
```

### `dpkg` source package: `mawk=1.3.3-17ubuntu3`

Binary Packages:

- `mawk=1.3.3-17ubuntu3`

Licenses: (parsed from: `/usr/share/doc/mawk/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris mawk=1.3.3-17ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3-17ubuntu3.dsc' mawk_1.3.3-17ubuntu3.dsc 1970 SHA256:2893a0c18b75c41d480be67d5d4edb7124ed7e9b5ed643d2670aa34481f7a77c
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3.orig.tar.gz' mawk_1.3.3.orig.tar.gz 209942 SHA256:32649c46063d4ef0777a12ae6e9a26bcc920833d54e1abca7edb8d37481e7485
'http://archive.ubuntu.com/ubuntu/pool/main/m/mawk/mawk_1.3.3-17ubuntu3.diff.gz' mawk_1.3.3-17ubuntu3.diff.gz 64052 SHA256:d1be148525885cb1869e35514f55005b5043f3310b08c444625005a3e14c81fc
```

### `dpkg` source package: `mercurial=4.5.3-1ubuntu2.1`

Binary Packages:

- `mercurial=4.5.3-1ubuntu2.1`
- `mercurial-common=4.5.3-1ubuntu2.1`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mercurial=4.5.3-1ubuntu2.1
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_4.5.3-1ubuntu2.1.dsc' mercurial_4.5.3-1ubuntu2.1.dsc 2760 SHA256:b2acaf07c4ef5aa7c3d347fcf880089821dc13e7e35ed2bf6f61fddefb5b6e34
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_4.5.3.orig.tar.gz' mercurial_4.5.3.orig.tar.gz 5884837 SHA256:9c4cb257ef1e59e9aba693cc285a6136f7bb4e8300f598ff50ff8b6fc77808fc
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_4.5.3.orig.tar.gz.asc' mercurial_4.5.3.orig.tar.gz.asc 833 SHA256:578a21314a0ab790777c88ae4af6bab66f8cf72e94f2d09580f9dfa3197ce326
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_4.5.3-1ubuntu2.1.debian.tar.xz' mercurial_4.5.3-1ubuntu2.1.debian.tar.xz 61912 SHA256:d6026337786d4ee3e94a2f91312444e2a6668d6606c1a721f20ec177d0e1891b
```

### `dpkg` source package: `mime-support=3.60ubuntu1`

Binary Packages:

- `mime-support=3.60ubuntu1`

Licenses: (parsed from: `/usr/share/doc/mime-support/copyright`)

- `Bellcore`
- `ad-hoc`

Source:

```console
$ apt-get source -qq --print-uris mime-support=3.60ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mime-support/mime-support_3.60ubuntu1.dsc' mime-support_3.60ubuntu1.dsc 1712 SHA256:1e58e26d0f87f25ebe6c08007e9d354a24457ab73d40a1eb3b9ab62ea0d366d5
'http://archive.ubuntu.com/ubuntu/pool/main/m/mime-support/mime-support_3.60ubuntu1.tar.gz' mime-support_3.60ubuntu1.tar.gz 37743 SHA256:cb1bc122ac2dc7046f6c0c06146ac0897a3c1c02e7e5e53cdd30817db2c62d33
```

### `dpkg` source package: `mpclib3=1.1.0-1`

Binary Packages:

- `libmpc3:amd64=1.1.0-1`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris mpclib3=1.1.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.1.0-1.dsc' mpclib3_1.1.0-1.dsc 1990 SHA256:bb57824015b735bf72399a53f8c6a241e6a8bd402753b0fdcdaa5b99d0aef790
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.1.0.orig.tar.gz' mpclib3_1.1.0.orig.tar.gz 701263 SHA256:6985c538143c1208dcb1ac42cedad6ff52e267b47e5f970183a3e75125b43c2e
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.1.0-1.diff.gz' mpclib3_1.1.0-1.diff.gz 3794 SHA256:84b10a4ae958b3015e136b75be5fee22961255d19be655f7d0adae8d4f3bc977
```

### `dpkg` source package: `mpdecimal=2.4.2-1ubuntu1`

Binary Packages:

- `libmpdec2:amd64=2.4.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libmpdec2/copyright`)

- `BSD`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mpdecimal=2.4.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2-1ubuntu1.dsc' mpdecimal_2.4.2-1ubuntu1.dsc 2051 SHA256:6a1a2c1b839492e178d601dc6b9de26a3173124b35659ccd21362167a4fabda9
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2.orig.tar.gz' mpdecimal_2.4.2.orig.tar.gz 2271529 SHA256:83c628b90f009470981cf084c5418329c88b19835d8af3691b930afccb7d79c7
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpdecimal/mpdecimal_2.4.2-1ubuntu1.debian.tar.xz' mpdecimal_2.4.2-1ubuntu1.debian.tar.xz 5328 SHA256:091414d364411f1d05b496f877e04d8ad22d52441cb698d739929907e94e0fc7
```

### `dpkg` source package: `mpfr4=4.0.1-1`

Binary Packages:

- `libmpfr6:amd64=4.0.1-1`

Licenses: (parsed from: `/usr/share/doc/libmpfr6/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=4.0.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.0.1-1.dsc' mpfr4_4.0.1-1.dsc 1972 SHA256:85d8dad92d3f9ace96ac78b2f4ec00eafef228fa53e0344ae4255fc4d3f75626
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.0.1.orig.tar.xz' mpfr4_4.0.1.orig.tar.xz 1412692 SHA256:67874a60826303ee2fb6affc6dc0ddd3e749e9bfcb4c8655e3953d0458a6e16e
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_4.0.1-1.debian.tar.xz' mpfr4_4.0.1-1.debian.tar.xz 10460 SHA256:9e0d582dea7e88958b8bc1f3782ada59b9c7175f01b4e06e8487fc6cbfc5a2d7
```

### `dpkg` source package: `mpi-defaults=1.10`

Binary Packages:

- `mpi-default-bin=1.10`
- `mpi-default-dev=1.10`

Licenses: (parsed from: `/usr/share/doc/mpi-default-bin/copyright`, `/usr/share/doc/mpi-default-dev/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mpi-defaults=1.10
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mpi-defaults/mpi-defaults_1.10.dsc' mpi-defaults_1.10.dsc 2680 SHA256:fa42bc3bff329ad4b8f028c47f492a7b61d8c63f2467e7e02f043dfe7e9dfb8d
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mpi-defaults/mpi-defaults_1.10.tar.xz' mpi-defaults_1.10.tar.xz 4864 SHA256:ca4410036cc8f63ce7e3205238612b25a32b300b9bce73ec8d5b00738e0902c4
```

### `dpkg` source package: `mysql-5.7=5.7.24-0ubuntu0.18.04.1`

Binary Packages:

- `libmysqlclient-dev=5.7.24-0ubuntu0.18.04.1`
- `libmysqlclient20:amd64=5.7.24-0ubuntu0.18.04.1`

Licenses: (parsed from: `/usr/share/doc/libmysqlclient-dev/copyright`, `/usr/share/doc/libmysqlclient20/copyright`)

- `Artistic`
- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-like`
- `Boost-1.0`
- `GPL-2`
- `GPL-2+`
- `ISC`
- `LGPL`
- `LGPL-2`
- `SWsoft`
- `public-domain`
- `zlib/libpng`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-defaults/mysql-defaults_1.0.4.dsc' mysql-defaults_1.0.4.dsc 2213 SHA256:c0cb0ba90874c858c30cfc71ccbd078c1fb1b45fbfdc6414af75811101d6f01f
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-defaults/mysql-defaults_1.0.4.tar.xz' mysql-defaults_1.0.4.tar.xz 7084 SHA256:01b92a09aaa08fd589610c0d7cbe55e05dce64db57ff2dfa6f794bcf857e002a
```

### `dpkg` source package: `ncurses=6.1-1ubuntu1.18.04`

Binary Packages:

- `libncurses5:amd64=6.1-1ubuntu1.18.04`
- `libncursesw5:amd64=6.1-1ubuntu1.18.04`
- `libtinfo5:amd64=6.1-1ubuntu1.18.04`
- `ncurses-base=6.1-1ubuntu1.18.04`
- `ncurses-bin=6.1-1ubuntu1.18.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=6.1-1ubuntu1.18.04
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.1-1ubuntu1.18.04.dsc' ncurses_6.1-1ubuntu1.18.04.dsc 4702 SHA256:9ff732e257304efa8ab3e5dba1ee85f6a360866466261c6a19f1a5d45b62d8f7
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.1.orig.tar.gz' ncurses_6.1.orig.tar.gz 3365395 SHA256:aa057eeeb4a14d470101eff4597d5833dcef5965331be3528c08d99cebaa0d17
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.1.orig.tar.gz.asc' ncurses_6.1.orig.tar.gz.asc 251 SHA256:47fd6ab5c2b08758f9c372c2bb75f2f0dbcd5cf58ae30b08f791a903da0259a4
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.1-1ubuntu1.18.04.debian.tar.xz' ncurses_6.1-1ubuntu1.18.04.debian.tar.xz 57464 SHA256:5f6822a052024372aa181f32dbe689ba3efd47920b5ffd3bae3c57c07f913983
```

### `dpkg` source package: `netifaces=0.10.4-0.1build4`

Binary Packages:

- `python-netifaces=0.10.4-0.1build4`

Licenses: (parsed from: `/usr/share/doc/python-netifaces/copyright`)

- `MIT-style`

Source:

```console
$ apt-get source -qq --print-uris netifaces=0.10.4-0.1build4
'http://archive.ubuntu.com/ubuntu/pool/main/n/netifaces/netifaces_0.10.4-0.1build4.dsc' netifaces_0.10.4-0.1build4.dsc 2445 SHA256:f2d0307065fb71ad2859aa356983134dca48cc131ecd9b23973a96012241f8f7
'http://archive.ubuntu.com/ubuntu/pool/main/n/netifaces/netifaces_0.10.4.orig.tar.gz' netifaces_0.10.4.orig.tar.gz 22969 SHA256:9656a169cb83da34d732b0eb72b39373d48774aee009a3d1272b7ea2ce109cde
'http://archive.ubuntu.com/ubuntu/pool/main/n/netifaces/netifaces_0.10.4-0.1build4.debian.tar.xz' netifaces_0.10.4-0.1build4.debian.tar.xz 8436 SHA256:516521d6ac087265a5a40225f36ffdc969a15f715eed0ecdf80a1039c9eb5835
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.4-1.dsc' nettle_3.4-1.dsc 2238 SHA256:0ceb4600fdedf43916e95fb6b354ebb4038f00f5814433582d0481b510310e86
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.4.orig.tar.gz' nettle_3.4.orig.tar.gz 1935069 SHA256:ae7a42df026550b85daca8389b6a60ba6313b0567f374392e54918588a411e94
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.4.orig.tar.gz.asc' nettle_3.4.orig.tar.gz.asc 1238 SHA256:86d7441c7334dd95d16b1ca488fd94ec45ed6406714d4ed9887c7212e337eb2a
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.4-1.debian.tar.xz' nettle_3.4-1.debian.tar.xz 19884 SHA256:9bfc25562ed36449e75741b0473e0e558bc9ef5c20ca24e7c650fea87d631c03
```

### `dpkg` source package: `nghttp2=1.30.0-1ubuntu1`

Binary Packages:

- `libnghttp2-14:amd64=1.30.0-1ubuntu1`

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
$ apt-get source -qq --print-uris nghttp2=1.30.0-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.30.0-1ubuntu1.dsc' nghttp2_1.30.0-1ubuntu1.dsc 2674 SHA256:1848fdc28933b7ee23dbebe3c9dcd0ca9182f95a278d627758d5ccfa2e0b44ad
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.30.0.orig.tar.bz2' nghttp2_1.30.0.orig.tar.bz2 1839714 SHA256:f66918dd03773f4847da1d069295c758ce478cbd1fe58298a37d65e1dce056d8
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.30.0-1ubuntu1.debian.tar.xz' nghttp2_1.30.0-1ubuntu1.debian.tar.xz 13244 SHA256:eb99f2c10cd872ce750964fc59734aa70b89ad04179291a23bfbee0e1a2903d3
```

### `dpkg` source package: `nose=1.3.7-3`

Binary Packages:

- `python-nose=1.3.7-3`

Licenses: (parsed from: `/usr/share/doc/python-nose/copyright`)

- `Expat`
- `LGPL`
- `LGPL-2`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris nose=1.3.7-3
'http://archive.ubuntu.com/ubuntu/pool/universe/n/nose/nose_1.3.7-3.dsc' nose_1.3.7-3.dsc 2334 SHA256:0b50c376c21270ec857fcf28516f49d250d5ddb4db4f93a2181687bba3d776ff
'http://archive.ubuntu.com/ubuntu/pool/universe/n/nose/nose_1.3.7.orig.tar.gz' nose_1.3.7.orig.tar.gz 280488 SHA256:f1bffef9cbc82628f6e7d7b40d7e255aefaa1adb6a1b1d26c69a8b79e6208a98
'http://archive.ubuntu.com/ubuntu/pool/universe/n/nose/nose_1.3.7-3.debian.tar.xz' nose_1.3.7-3.debian.tar.xz 12080 SHA256:5e1f6fa1ce29d8a4ad6315544d5d7db634be5233ec9900e21540b890b5058338
```

### `dpkg` source package: `npth=1.5-3`

Binary Packages:

- `libnpth0:amd64=1.5-3`

Licenses: (parsed from: `/usr/share/doc/libnpth0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris npth=1.5-3
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.5-3.dsc' npth_1.5-3.dsc 1954 SHA256:98e02623d39451685321ab638e12cd0b85f7829f6b174d03dbb806b8d899ae3f
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.5.orig.tar.bz2' npth_1.5.orig.tar.bz2 299308 SHA256:294a690c1f537b92ed829d867bee537e46be93fbd60b16c04630fbbfcd9db3c2
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.5-3.debian.tar.xz' npth_1.5-3.debian.tar.xz 10480 SHA256:5cbaf91c95c90ab82053110eeec5ac72f5a3cab36829edb0579f1fb759ec5fec
```

### `dpkg` source package: `numactl=2.0.11-2.1`

Binary Packages:

- `libnuma-dev:amd64=2.0.11-2.1`
- `libnuma1:amd64=2.0.11-2.1`

Licenses: (parsed from: `/usr/share/doc/libnuma-dev/copyright`, `/usr/share/doc/libnuma1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris numactl=2.0.11-2.1
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.11-2.1.dsc' numactl_2.0.11-2.1.dsc 1613 SHA256:3462c9e9a53e1cdbec095092859fdd2448e629a687b6dac511f83708cecbbfe3
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.11.orig.tar.gz' numactl_2.0.11.orig.tar.gz 408175 SHA256:450c091235f891ee874a8651b179c30f57a1391ca5c4673354740ba65e527861
'http://archive.ubuntu.com/ubuntu/pool/main/n/numactl/numactl_2.0.11-2.1.debian.tar.xz' numactl_2.0.11-2.1.debian.tar.xz 6760 SHA256:1dc86f99e7b2d8d652a2af34b14d66b7a3637316403789a3c10f09b490cf89d8
```

### `dpkg` source package: `ocl-icd=2.2.11-1ubuntu1`

Binary Packages:

- `ocl-icd-libopencl1:amd64=2.2.11-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/ocl-icd-libopencl1/copyright`)

- `BSD-2-Clause`

Source:

```console
$ apt-get source -qq --print-uris ocl-icd=2.2.11-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/o/ocl-icd/ocl-icd_2.2.11-1ubuntu1.dsc' ocl-icd_2.2.11-1ubuntu1.dsc 2101 SHA256:e786ea5edf5223f3ad32fa4b8d9a4455507b376e45342954ec5b36b21cb4904d
'http://archive.ubuntu.com/ubuntu/pool/main/o/ocl-icd/ocl-icd_2.2.11.orig.tar.gz' ocl-icd_2.2.11.orig.tar.gz 455800 SHA256:02fa41da98ae2807e92742196831d320e3fc2f4cb1118d0061d9f51dda867730
'http://archive.ubuntu.com/ubuntu/pool/main/o/ocl-icd/ocl-icd_2.2.11-1ubuntu1.debian.tar.xz' ocl-icd_2.2.11-1ubuntu1.debian.tar.xz 11204 SHA256:2baece01c46beada400992cfcbe5b0facb822bae07bda5d98f1a7ad4d474415c
```

### `dpkg` source package: `openldap=2.4.45+dfsg-1ubuntu1.1`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.45+dfsg-1ubuntu1.1`
- `libldap-common=2.4.45+dfsg-1ubuntu1.1`
- `libldap2-dev:amd64=2.4.45+dfsg-1ubuntu1.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.45+dfsg-1ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.45+dfsg-1ubuntu1.1.dsc' openldap_2.4.45+dfsg-1ubuntu1.1.dsc 2805 SHA256:9f673c1afea3e40d7c0c0510b772c7fb897e33e253ae6703ea6197401bd13086
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.45+dfsg.orig.tar.gz' openldap_2.4.45+dfsg.orig.tar.gz 4846458 SHA256:d51c70423aa0554d454fd3d43e7f2e940523b4ef07979305b48c233ae44b2b32
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.45+dfsg-1ubuntu1.1.debian.tar.xz' openldap_2.4.45+dfsg-1ubuntu1.1.debian.tar.xz 175268 SHA256:9440833280fe408c38bdcd9a58f3644d10c2ab3ef40871875fd644c559a8085a
```

### `dpkg` source package: `openmpi=2.1.1-8`

Binary Packages:

- `libopenmpi-dev=2.1.1-8`
- `libopenmpi2:amd64=2.1.1-8`
- `openmpi-bin=2.1.1-8`
- `openmpi-common=2.1.1-8`

Licenses: (parsed from: `/usr/share/doc/libopenmpi-dev/copyright`, `/usr/share/doc/libopenmpi2/copyright`, `/usr/share/doc/openmpi-bin/copyright`, `/usr/share/doc/openmpi-common/copyright`)

- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris openmpi=2.1.1-8
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openmpi/openmpi_2.1.1-8.dsc' openmpi_2.1.1-8.dsc 2618 SHA256:2133456247dc953bf4c5d5c4cbeb8727498b11be044a0c96d7d470f2ebaa6339
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openmpi/openmpi_2.1.1.orig.tar.xz' openmpi_2.1.1.orig.tar.xz 5419544 SHA256:0a64746082725ee25f36b79956da30297dd18d4d27b38ab5b74e2faad694574b
'http://archive.ubuntu.com/ubuntu/pool/universe/o/openmpi/openmpi_2.1.1-8.debian.tar.xz' openmpi_2.1.1-8.debian.tar.xz 60008 SHA256:33ee9c1ebc8c5c5a8c60faa25efbcc8abfea101331b9318abae2e3a458fc937f
```

### `dpkg` source package: `openssl=1.1.0g-2ubuntu4.3`

Binary Packages:

- `libssl-dev:amd64=1.1.0g-2ubuntu4.3`
- `libssl-doc=1.1.0g-2ubuntu4.3`
- `libssl1.1:amd64=1.1.0g-2ubuntu4.3`
- `openssl=1.1.0g-2ubuntu4.3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.1.0g-2ubuntu4.3
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.0g-2ubuntu4.3.dsc' openssl_1.1.0g-2ubuntu4.3.dsc 2698 SHA256:80ac13c31b09a3412a4db6086961ee3a44ed924c5e08d9176daa4f873ad5af64
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.0g.orig.tar.gz' openssl_1.1.0g.orig.tar.gz 5404748 SHA256:de4d501267da39310905cb6dc8c6121f7a2cad45a7707f76df828fe1b85073af
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.0g.orig.tar.gz.asc' openssl_1.1.0g.orig.tar.gz.asc 455 SHA256:2a7532e6722aab8989644049ba5c1d3a5fce417aa4b18235eec901224098bbed
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.0g-2ubuntu4.3.debian.tar.xz' openssl_1.1.0g-2ubuntu4.3.debian.tar.xz 86600 SHA256:debb83bc324b415fdcc521600dafa527897213492bca8dfcdd46133d8d9ed9da
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.9-2.dsc' p11-kit_0.23.9-2.dsc 2458 SHA256:e4c271a89abf52a95d23cca02bd6fb6ea5d5611b139ac63b0db728e7d9895449
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.9.orig.tar.gz' p11-kit_0.23.9.orig.tar.gz 1091561 SHA256:e1c1649c335107a8d33cf3762eb7f57b2d0681f0c7d8353627293a58d6b4db63
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.9.orig.tar.gz.asc' p11-kit_0.23.9.orig.tar.gz.asc 900 SHA256:334562f6a37f96339173a33a90b246466e0b2673e03658b205d75ebbb63bad10
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.9-2.debian.tar.xz' p11-kit_0.23.9-2.debian.tar.xz 21704 SHA256:fa6af69f96f6ccdce95d61e39662a38768b05f8872b2b2008d56cc4fff0ed3fd
```

### `dpkg` source package: `pam=1.1.8-3.6ubuntu2`

Binary Packages:

- `libpam-modules:amd64=1.1.8-3.6ubuntu2`
- `libpam-modules-bin=1.1.8-3.6ubuntu2`
- `libpam-runtime=1.1.8-3.6ubuntu2`
- `libpam0g:amd64=1.1.8-3.6ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.1.8-3.6ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8-3.6ubuntu2.dsc' pam_1.1.8-3.6ubuntu2.dsc 2221 SHA256:dd47a8f0d53ccf5cf4e80819cca127c28f7e2bda9312a34c311b0bb90565fc0c
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8-3.6ubuntu2.tar.gz' pam_1.1.8-3.6ubuntu2.tar.gz 1989104 SHA256:3244f99b6bd0a3501c692102d897c013a6736ab8f9656fe2411cacffcaaba20e
```

### `dpkg` source package: `paramiko=2.0.0-1ubuntu1.2`

Binary Packages:

- `python-paramiko=2.0.0-1ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/python-paramiko/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris paramiko=2.0.0-1ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/p/paramiko/paramiko_2.0.0-1ubuntu1.2.dsc' paramiko_2.0.0-1ubuntu1.2.dsc 2511 SHA256:ac7f549d431683b6c3464e855bd9f9794d1b89d919157b4372e712fdd95b80d3
'http://archive.ubuntu.com/ubuntu/pool/main/p/paramiko/paramiko_2.0.0.orig.tar.gz' paramiko_2.0.0.orig.tar.gz 273791 SHA256:acf3866621794d68ce42bd5bcb769b6f9ff7e362cc1064e1b1af4185cdc4ed3b
'http://archive.ubuntu.com/ubuntu/pool/main/p/paramiko/paramiko_2.0.0-1ubuntu1.2.debian.tar.xz' paramiko_2.0.0-1ubuntu1.2.debian.tar.xz 12624 SHA256:b9f85f391a3499a860e7e19bc666750327494a1c929514f8b7e15fbed415b543
```

### `dpkg` source package: `patch=2.7.6-2ubuntu1`

Binary Packages:

- `patch=2.7.6-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris patch=2.7.6-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.6-2ubuntu1.dsc' patch_2.7.6-2ubuntu1.dsc 1774 SHA256:8f0dc0c31ffeac22ec21ea69756e1aa56ac5b77a4c12e05023f2751ba868e785
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.6.orig.tar.xz' patch_2.7.6.orig.tar.xz 783756 SHA256:ac610bda97abe0d9f6b7c963255a11dcb196c25e337c61f94e4778d632f1d8fd
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.6-2ubuntu1.debian.tar.xz' patch_2.7.6-2ubuntu1.debian.tar.xz 10968 SHA256:9b62482c9506567398b3234a1f1f67e04ff6c813c524911b22df16adbe8ccc13
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-9.dsc' pcre3_8.39-9.dsc 2224 SHA256:cfbe37b2022027f62f236d74bb6af90befd2964161d77b2fd459c75ae7c36e36
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA256:b858099f82483031ee02092711689e7245586ada49e534a06e678b8ea9549e8b
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-9.debian.tar.gz' pcre3_8.39-9.debian.tar.gz 26333 SHA256:68be90799b722a8d5a075c3d2f48718cb21e2e736e0edf1e7e46a87c51215f55
```

### `dpkg` source package: `perl=5.26.1-6ubuntu0.3`

Binary Packages:

- `libperl5.26:amd64=5.26.1-6ubuntu0.3`
- `perl=5.26.1-6ubuntu0.3`
- `perl-base=5.26.1-6ubuntu0.3`
- `perl-modules-5.26=5.26.1-6ubuntu0.3`

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
$ apt-get source -qq --print-uris perl=5.26.1-6ubuntu0.3
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.26.1-6ubuntu0.3.dsc' perl_5.26.1-6ubuntu0.3.dsc 2768 SHA256:76badc610c519409d121d4c9b965614a798f6a681d8427d5a63a898ef3f963e8
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.26.1.orig-regen-configure.tar.gz' perl_5.26.1.orig-regen-configure.tar.gz 712883 SHA256:918f054a64b2835bc1c6ed79c1e082e7dcdb76735a95b54ee39c25ea9e245ca4
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.26.1.orig.tar.xz' perl_5.26.1.orig.tar.xz 11922848 SHA256:fe8208133e73e47afc3251c08d2c21c5a60160165a8ab8b669c43a420e4ec680
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.26.1-6ubuntu0.3.debian.tar.xz' perl_5.26.1-6ubuntu0.3.debian.tar.xz 174240 SHA256:9f509fc771c8b46cea480cf464f4ddb83bd33160673607a02431e42a7fba9d61
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.0-1.dsc' pinentry_1.1.0-1.dsc 2910 SHA256:8cda3442923c0e18f9c3d5a2817a97a54db7447046b9c469e890abd19c680247
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.0.orig.tar.bz2' pinentry_1.1.0.orig.tar.bz2 467702 SHA256:68076686fa724a290ea49cdf0d1c0c1500907d1b759a3bcbfbec0293e8f56570
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.0.orig.tar.bz2.asc' pinentry_1.1.0.orig.tar.bz2.asc 534 SHA256:0e3a7633b9fddf9c01c3dcf74aeb94888cc6d5d233f0b8357b0b9c1a1fed9a73
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.0-1.debian.tar.xz' pinentry_1.1.0-1.debian.tar.xz 15408 SHA256:ddee92638e762f125ac09b86b4f3b31e2d240e8d2dcce940302293bb2ea0873e
```

### `dpkg` source package: `pkg-config=0.29.1-0ubuntu2`

Binary Packages:

- `pkg-config=0.29.1-0ubuntu2`

Licenses: (parsed from: `/usr/share/doc/pkg-config/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pkg-config=0.29.1-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1-0ubuntu2.dsc' pkg-config_0.29.1-0ubuntu2.dsc 1824 SHA256:91f07d5a80083fbe86c93d9f107890920f4740df8f3d1e6b162a5d703afc3b89
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1.orig.tar.gz' pkg-config_0.29.1.orig.tar.gz 2013454 SHA256:beb43c9e064555469bd4390dcfd8030b1536e0aa103f08d7abf7ae8cac0cb001
'http://archive.ubuntu.com/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1-0ubuntu2.diff.gz' pkg-config_0.29.1-0ubuntu2.diff.gz 12715 SHA256:8d5645ccad7bdbcaf3bd83b1b18c7f7d0e2a813e9813b5d4603aa646fc5ff5ea
```

### `dpkg` source package: `poco=1.8.0.1-1ubuntu4`

Binary Packages:

- `libpoco-dev=1.8.0.1-1ubuntu4`
- `libpococrypto50=1.8.0.1-1ubuntu4`
- `libpocodata50=1.8.0.1-1ubuntu4`
- `libpocodatamysql50=1.8.0.1-1ubuntu4`
- `libpocodataodbc50=1.8.0.1-1ubuntu4`
- `libpocodatasqlite50=1.8.0.1-1ubuntu4`
- `libpocofoundation50=1.8.0.1-1ubuntu4`
- `libpocojson50=1.8.0.1-1ubuntu4`
- `libpocomongodb50=1.8.0.1-1ubuntu4`
- `libpoconet50=1.8.0.1-1ubuntu4`
- `libpoconetssl50=1.8.0.1-1ubuntu4`
- `libpocoredis50=1.8.0.1-1ubuntu4`
- `libpocoutil50=1.8.0.1-1ubuntu4`
- `libpocoxml50=1.8.0.1-1ubuntu4`
- `libpocozip50=1.8.0.1-1ubuntu4`

Licenses: (parsed from: `/usr/share/doc/libpoco-dev/copyright`, `/usr/share/doc/libpococrypto50/copyright`, `/usr/share/doc/libpocodata50/copyright`, `/usr/share/doc/libpocodatamysql50/copyright`, `/usr/share/doc/libpocodataodbc50/copyright`, `/usr/share/doc/libpocodatasqlite50/copyright`, `/usr/share/doc/libpocofoundation50/copyright`, `/usr/share/doc/libpocojson50/copyright`, `/usr/share/doc/libpocomongodb50/copyright`, `/usr/share/doc/libpoconet50/copyright`, `/usr/share/doc/libpoconetssl50/copyright`, `/usr/share/doc/libpocoredis50/copyright`, `/usr/share/doc/libpocoutil50/copyright`, `/usr/share/doc/libpocoxml50/copyright`, `/usr/share/doc/libpocozip50/copyright`)

- `BSD-3-clause`
- `BSL-1.0`
- `Expat`
- `MIT`
- `RSA-MD`
- `Zlib`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris poco=1.8.0.1-1ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/universe/p/poco/poco_1.8.0.1-1ubuntu4.dsc' poco_1.8.0.1-1ubuntu4.dsc 3051 SHA256:fe990610bab8ca4c3c05b0af1ddb52eba946f43439a9e1e094936c03d214339d
'http://archive.ubuntu.com/ubuntu/pool/universe/p/poco/poco_1.8.0.1.orig.tar.bz2' poco_1.8.0.1.orig.tar.bz2 4520334 SHA256:61f1e26e25af2201295b6a58a8e2bf74063ad3bf49c8e969ba08af42310716c2
'http://archive.ubuntu.com/ubuntu/pool/universe/p/poco/poco_1.8.0.1-1ubuntu4.debian.tar.xz' poco_1.8.0.1-1ubuntu4.debian.tar.xz 12716 SHA256:f45010c5cf15a5fe434f007bb4ada1088b3e3cecbe0788fe116649f12ac0efd2
```

### `dpkg` source package: `procps=2:3.3.12-3ubuntu1.1`

Binary Packages:

- `libprocps6:amd64=2:3.3.12-3ubuntu1.1`
- `procps=2:3.3.12-3ubuntu1.1`

Licenses: (parsed from: `/usr/share/doc/libprocps6/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.12-3ubuntu1.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.12-3ubuntu1.1.dsc' procps_3.3.12-3ubuntu1.1.dsc 2265 SHA256:7a6d2a3970943c7fd5019ced8e36f36983bc159c4807b13900b575fa8a1ba5af
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.12.orig.tar.xz' procps_3.3.12.orig.tar.xz 840540 SHA256:042fcc93e1850aee4c193c51c03f369293fb64fe47e37b38852be6693d12a3af
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.12-3ubuntu1.1.debian.tar.xz' procps_3.3.12-3ubuntu1.1.debian.tar.xz 37388 SHA256:58f388522d4def486730a00107a64b7f0948ee9a6fa6b058c555718d5f339151
```

### `dpkg` source package: `pyasn1=0.4.2-3`

Binary Packages:

- `python-pyasn1=0.4.2-3`

Licenses: (parsed from: `/usr/share/doc/python-pyasn1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris pyasn1=0.4.2-3
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyasn1/pyasn1_0.4.2-3.dsc' pyasn1_0.4.2-3.dsc 2233 SHA256:888517922336ade422fa159960d48a58bc2bc971a9242b3b32f531b7ab7bfd3c
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyasn1/pyasn1_0.4.2.orig.tar.gz' pyasn1_0.4.2.orig.tar.gz 118404 SHA256:d258b0a71994f7770599835249cece1caef3c70def868c4915e6e5ca49b67d15
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyasn1/pyasn1_0.4.2-3.debian.tar.xz' pyasn1_0.4.2-3.debian.tar.xz 5404 SHA256:c4769523a4353d9aabda5728f456c22882c242ff49aa3457595f0685c5d065a2
```

### `dpkg` source package: `pyparsing=2.2.0+dfsg1-2`

Binary Packages:

- `python-pyparsing=2.2.0+dfsg1-2`

Licenses: (parsed from: `/usr/share/doc/python-pyparsing/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-3`
- `ellis-and-grant`
- `salvolainen`

Source:

```console
$ apt-get source -qq --print-uris pyparsing=2.2.0+dfsg1-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyparsing/pyparsing_2.2.0+dfsg1-2.dsc' pyparsing_2.2.0+dfsg1-2.dsc 2429 SHA256:fb7dbda8c89bbddf2d96fab4bf770a59f53b08a8f727652556de98e20e1e74ea
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyparsing/pyparsing_2.2.0+dfsg1.orig.tar.gz' pyparsing_2.2.0+dfsg1.orig.tar.gz 1146636 SHA256:8cf2bde582aa28b854cb96d225606caae902956136e5050ca62125371b06ef8c
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyparsing/pyparsing_2.2.0+dfsg1-2.debian.tar.xz' pyparsing_2.2.0+dfsg1-2.debian.tar.xz 7984 SHA256:f968a17566c942a919fe7024a15bbbb2f1cce5af9c50e01e57ad9580b1e12591
```

### `dpkg` source package: `python-catkin-pkg-modules=0.4.10-1`

Binary Packages:

- `python-catkin-pkg-modules=0.4.10-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-catkin-pkg-modules=0.4.10-1
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-catkin-pkg-modules/python-catkin-pkg-modules_0.4.10-1.debian.tar.xz' python-catkin-pkg-modules_0.4.10-1.debian.tar.xz 1944 SHA512:4c76a2a1d99b6590c42186593a76a2e04bddfab22d5db5a95dff7fc4bdc1aaae04c8bb6575a3ce7b9790bb6165d82d4ff705e60210c7be8145cbf85d66ea60e8
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-catkin-pkg-modules/python-catkin-pkg-modules_0.4.10-1.dsc' python-catkin-pkg-modules_0.4.10-1.dsc 1050 SHA512:893146573a4523538af43a9de3631fa45720e792ecee9a1bfa42103229b8a5f47f4f150dc0f80a29baf508798a001aa5bf42e04a8dba1f7085a895c33d52d6e9
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-catkin-pkg-modules/python-catkin-pkg-modules_0.4.10.orig.tar.gz' python-catkin-pkg-modules_0.4.10.orig.tar.gz 58599 SHA512:e1d5f3aaea8aad2a74733bb7478c8099f93fcbb6ac0ac5c7ddb52b8534dd0483dff7c53c4c05b011f98c312fd1bd25a098d348430671ed1f8e7787d5bd0ab2f9
```

### `dpkg` source package: `python-catkin-pkg=0.4.10-100`

Binary Packages:

- `python-catkin-pkg=0.4.10-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-catkin-pkg=0.4.10-100
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-catkin-pkg/python-catkin-pkg_0.4.10-100.debian.tar.xz' python-catkin-pkg_0.4.10-100.debian.tar.xz 1916 SHA512:3ddfe0464dfe5ef275335c15144fe02d6aae20848abc4abf24dbd9b6e92a22a05689407486dc1580c75eda736b7243ffe08b4e7c95c53d02edf74050279a3f36
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-catkin-pkg/python-catkin-pkg_0.4.10-100.dsc' python-catkin-pkg_0.4.10-100.dsc 986 SHA512:2fa447117806fcf594ebe8d4b59e59184def08fe4cc11933d3ccfc15842623bf25b1841a73a5638de22085aa8b4b989891065b6def99826ce8b5a026685b8c2b
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-catkin-pkg/python-catkin-pkg_0.4.10.orig.tar.gz' python-catkin-pkg_0.4.10.orig.tar.gz 13169 SHA512:463f25e6bc2c8c7709144fc585113fc65f56b01939c87b56504edcd53e7d3f3288ff1f2b644af6a12cea624ad52f1d2a3c267dd181dcea6ac3be247f3850a951
```

### `dpkg` source package: `python-cffi=1.11.5-1`

Binary Packages:

- `python-cffi-backend=1.11.5-1`

Licenses: (parsed from: `/usr/share/doc/python-cffi-backend/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-cffi=1.11.5-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cffi/python-cffi_1.11.5-1.dsc' python-cffi_1.11.5-1.dsc 2566 SHA256:ea78c9d66e5e6f567e96e7ce940766234efb60b9acfc58b1e144ae8ab6c541c2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cffi/python-cffi_1.11.5.orig.tar.gz' python-cffi_1.11.5.orig.tar.gz 438498 SHA256:e90f17980e6ab0f3c2f3730e56d1fe9bcba1891eeea58966e89d352492cc74f4
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cffi/python-cffi_1.11.5-1.debian.tar.xz' python-cffi_1.11.5-1.debian.tar.xz 5692 SHA256:e4771d799b765f449ce46bc20e671b771bfcc7b5e4d829ffb26280e6de215648
```

### `dpkg` source package: `python-crypto=2.6.1-8ubuntu2`

Binary Packages:

- `python-crypto=2.6.1-8ubuntu2`

Licenses: (parsed from: `/usr/share/doc/python-crypto/copyright`)

- `BSD-3-clause`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris python-crypto=2.6.1-8ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-crypto/python-crypto_2.6.1-8ubuntu2.dsc' python-crypto_2.6.1-8ubuntu2.dsc 2495 SHA256:e73cbbe44e99efd46eb97fcc894c48f35c29f32438c40fed1a1c35fc2a53aa79
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-crypto/python-crypto_2.6.1.orig.tar.gz' python-crypto_2.6.1.orig.tar.gz 446240 SHA256:f2ce1e989b272cfcb677616763e0a2e7ec659effa67a88aa92b3a65528f60a3c
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-crypto/python-crypto_2.6.1-8ubuntu2.debian.tar.xz' python-crypto_2.6.1-8ubuntu2.debian.tar.xz 23396 SHA256:b947640445028a42f2727f09857fc942e5f855f21ac5958ad49ca7eb1e06ce88
```

### `dpkg` source package: `python-cryptography=2.1.4-1ubuntu1.2`

Binary Packages:

- `python-cryptography=2.1.4-1ubuntu1.2`

Licenses: (parsed from: `/usr/share/doc/python-cryptography/copyright`)

- `Apache`
- `Apache-2.0`
- `Expat`

Source:

```console
$ apt-get source -qq --print-uris python-cryptography=2.1.4-1ubuntu1.2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cryptography/python-cryptography_2.1.4-1ubuntu1.2.dsc' python-cryptography_2.1.4-1ubuntu1.2.dsc 3629 SHA256:3dedfe1b432ae6be254bb44e8d479a377c50de3294975543b2e8b9a2dfc24f02
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cryptography/python-cryptography_2.1.4.orig.tar.gz' python-cryptography_2.1.4.orig.tar.gz 441557 SHA256:e4d967371c5b6b2e67855066471d844c5d52d210c36c28d49a8507b96e2c5291
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-cryptography/python-cryptography_2.1.4-1ubuntu1.2.debian.tar.xz' python-cryptography_2.1.4-1ubuntu1.2.debian.tar.xz 26792 SHA256:2c3076b00604e360b766b3df6c66ddb354a3f02225488d90fd2a26d16f96c569
```

### `dpkg` source package: `python-dateutil=2.6.1-1`

Binary Packages:

- `python-dateutil=2.6.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-dateutil=2.6.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-dateutil/python-dateutil_2.6.1-1.dsc' python-dateutil_2.6.1-1.dsc 2128 SHA256:17e9a795c53c1c4e4832e8926cb321138934b4d09457dfff45194182b937a311
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-dateutil/python-dateutil_2.6.1.orig.tar.gz' python-dateutil_2.6.1.orig.tar.gz 241428 SHA256:891c38b2a02f5bb1be3e4793866c8df49c7d19baabf9c1bad62547e0b4866aca
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-dateutil/python-dateutil_2.6.1-1.debian.tar.xz' python-dateutil_2.6.1-1.debian.tar.xz 13648 SHA256:ef4fcc1f8a6fc095b15953986d1dd24d05f51c167f0ee212e3f8fef772c43f26
```

### `dpkg` source package: `python-defaults=2.7.15~rc1-1`

Binary Packages:

- `libpython-dev:amd64=2.7.15~rc1-1`
- `libpython-stdlib:amd64=2.7.15~rc1-1`
- `python=2.7.15~rc1-1`
- `python-dev=2.7.15~rc1-1`
- `python-minimal=2.7.15~rc1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-defaults=2.7.15~rc1-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-defaults/python-defaults_2.7.15~rc1-1.dsc' python-defaults_2.7.15~rc1-1.dsc 2633 SHA256:1089e25a274fb86e8dfbab1b661ecb5ef2b7610e1b6e3fbf8388f875758f7c2c
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-defaults/python-defaults_2.7.15~rc1-1.tar.gz' python-defaults_2.7.15~rc1-1.tar.gz 1958015 SHA256:f3bed2b81091821d2e514c2e17c6846f7e744487fd15f7d3c48fa1c91b9cd49b
```

### `dpkg` source package: `python-docutils=0.14+dfsg-3`

Binary Packages:

- `docutils-common=0.14+dfsg-3`
- `python-docutils=0.14+dfsg-3`

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
$ apt-get source -qq --print-uris python-docutils=0.14+dfsg-3
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-docutils/python-docutils_0.14+dfsg-3.dsc' python-docutils_0.14+dfsg-3.dsc 2446 SHA256:400dc1214c70e86c13dd34dd134e4ece07fbbc0119f2c7ed0bf173fb7618bd5d
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-docutils/python-docutils_0.14+dfsg.orig.tar.gz' python-docutils_0.14+dfsg.orig.tar.gz 1739255 SHA256:9731d30e7d958c7fe8fcc20c1689064e130053c954e61df20ac5362eb6305760
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-docutils/python-docutils_0.14+dfsg-3.debian.tar.xz' python-docutils_0.14+dfsg-3.debian.tar.xz 31188 SHA256:3e73e6211785b227dc0c9258e1a69b0adbbd129a401b5b09886981789569e024
```

### `dpkg` source package: `python-gnupg=0.4.1-1ubuntu1`

Binary Packages:

- `python-gnupg=0.4.1-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/python-gnupg/copyright`)

- `BSD-3-clause`
- `pycrypto`

Source:

```console
$ apt-get source -qq --print-uris python-gnupg=0.4.1-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-gnupg/python-gnupg_0.4.1-1ubuntu1.dsc' python-gnupg_0.4.1-1ubuntu1.dsc 2199 SHA256:a8f9586e2bfce96fb13f08e66fee5cd49c98e9d977f53528fcabc19dcadb7a5c
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-gnupg/python-gnupg_0.4.1.orig.tar.gz' python-gnupg_0.4.1.orig.tar.gz 44534 SHA256:ef47b02eaf41dee3cf4b02ddf83130827318de9fe3eae89d01a3f05859e20e1a
'http://archive.ubuntu.com/ubuntu/pool/universe/p/python-gnupg/python-gnupg_0.4.1-1ubuntu1.debian.tar.xz' python-gnupg_0.4.1-1ubuntu1.debian.tar.xz 7964 SHA256:820a6391d27acb68ab7e8c8208762b21bc4f80a2dcd9746a0378eee49828f869
```

### `dpkg` source package: `python-idna=2.6-1`

Binary Packages:

- `python-idna=2.6-1`

Licenses: (parsed from: `/usr/share/doc/python-idna/copyright`)

- `BSD-3-clause`
- `PSF-2`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris python-idna=2.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-idna/python-idna_2.6-1.dsc' python-idna_2.6-1.dsc 2211 SHA256:e53dc537db7f178ca67efb2e728985644234290aea8b3ae03dfe393181b8a825
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-idna/python-idna_2.6.orig.tar.gz' python-idna_2.6.orig.tar.gz 135992 SHA256:2c6a5de3089009e3da7c5dde64a141dbc8551d5b7f6cf4ed7c2568d0cc520a8f
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-idna/python-idna_2.6-1.debian.tar.xz' python-idna_2.6-1.debian.tar.xz 4472 SHA256:64740dad9d18032de36a6f81f0bcbbc3356a27705b65da792673be510929ae8c
```

### `dpkg` source package: `python-ipaddress=1.0.17-1`

Binary Packages:

- `python-ipaddress=1.0.17-1`

Licenses: (parsed from: `/usr/share/doc/python-ipaddress/copyright`)

- `Expat`
- `PSF-2`

Source:

```console
$ apt-get source -qq --print-uris python-ipaddress=1.0.17-1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-ipaddress/python-ipaddress_1.0.17-1.dsc' python-ipaddress_1.0.17-1.dsc 2146 SHA256:c2737119d84971270b25ff6ddcbdd37d33cf364e24d9861beeffb06c164e83e4
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-ipaddress/python-ipaddress_1.0.17.orig.tar.gz' python-ipaddress_1.0.17.orig.tar.gz 32434 SHA256:3a21c5a15f433710aaa26f1ae174b615973a25182006ae7f9c26de151cd51716
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-ipaddress/python-ipaddress_1.0.17-1.debian.tar.xz' python-ipaddress_1.0.17-1.debian.tar.xz 3624 SHA256:0eb6e0b886d4c6cae9274fdd3aacf78dc7efb559bd2fea2612c312095f9a3f0c
```

### `dpkg` source package: `python-numpy=1:1.13.3-2ubuntu1`

Binary Packages:

- `python-numpy=1:1.13.3-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/python-numpy/copyright`)

- `PSF`

Source:

```console
$ apt-get source -qq --print-uris python-numpy=1:1.13.3-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-numpy/python-numpy_1.13.3-2ubuntu1.dsc' python-numpy_1.13.3-2ubuntu1.dsc 3000 SHA256:5cbbdaa075dc0a5732bf4dc703a49c5c4f0a4c3c0af2616e773be339fa5cdca3
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-numpy/python-numpy_1.13.3.orig.tar.gz' python-numpy_1.13.3.orig.tar.gz 4520295 SHA256:5e3cb4c3797a4f0da082cab65ab00fa4a9d7552391876e2bb53f39a35bdc78cf
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-numpy/python-numpy_1.13.3-2ubuntu1.debian.tar.xz' python-numpy_1.13.3-2ubuntu1.debian.tar.xz 144196 SHA256:7dc98e90991b19f413137e8289a81ec2a9bfc7679719235d914af98d96dea33f
```

### `dpkg` source package: `python-roman=2.0.0-3`

Binary Packages:

- `python-roman=2.0.0-3`

Licenses: (parsed from: `/usr/share/doc/python-roman/copyright`)

- `Python-2.1.1`
- `ZPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris python-roman=2.0.0-3
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-roman/python-roman_2.0.0-3.dsc' python-roman_2.0.0-3.dsc 2132 SHA256:0470c89ad49bfbcf20bb59cb86f5de4d2f7d597ffc7519ecb07064ef313f252e
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-roman/python-roman_2.0.0.orig.tar.gz' python-roman_2.0.0.orig.tar.gz 4968 SHA256:98f2c0fb3cdcfba465d12c85b3b7139fc4cd2177f1325f1bacfe00878c8fa7b9
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-roman/python-roman_2.0.0-3.debian.tar.xz' python-roman_2.0.0-3.debian.tar.xz 8596 SHA256:fa6c16b3e4d328a8cfe16fbed994add1a2c9cb5a5955bff374244794a6cddf31
```

### `dpkg` source package: `python-rosdep=0.14.0-1`

Binary Packages:

- `python-rosdep=0.14.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python-rosdistro-modules=0.7.1-1`

Binary Packages:

- `python-rosdistro-modules=0.7.1-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python-rosdistro=0.7.1-100`

Binary Packages:

- `python-rosdistro=0.7.1-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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

### `dpkg` source package: `python-rospkg-modules=1.1.7-1`

Binary Packages:

- `python-rospkg-modules=1.1.7-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-rospkg-modules=1.1.7-1
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rospkg-modules/python-rospkg-modules_1.1.7-1.dsc' python-rospkg-modules_1.1.7-1.dsc 953 SHA256:33b4aa87fe81014a4e75af693eaf774ad50a130db6606398b09d3493d9fa1ade
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rospkg-modules/python-rospkg-modules_1.1.7.orig.tar.gz' python-rospkg-modules_1.1.7.orig.tar.gz 39986 SHA256:9317ac27b68e807884781a07339123ea7b2c3911bbf8a0a2f321e7c7de1f904e
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rospkg-modules/python-rospkg-modules_1.1.7-1.debian.tar.xz' python-rospkg-modules_1.1.7-1.debian.tar.xz 1144 SHA256:2cc798fb32dc340f1b640e8be0ef9e1ad6f0d8a10099c5ddb4b98e7a45b360ee
```

### `dpkg` source package: `python-rospkg=1.1.7-100`

Binary Packages:

- `python-rospkg=1.1.7-100`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-rospkg=1.1.7-100
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rospkg/python-rospkg_1.1.7-100.dsc' python-rospkg_1.1.7-100.dsc 889 SHA256:91196293547af117a86a3a6530841fe2ccf85332d5ba1574f96546f65bc822fb
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rospkg/python-rospkg_1.1.7.orig.tar.gz' python-rospkg_1.1.7.orig.tar.gz 16920 SHA256:caf4f2615c9bdff92d92f3a0fb6a2e42f5085099d90a635ec7134c869ea23a1c
'http://packages.ros.org/ros/ubuntu/pool/main/p/python-rospkg/python-rospkg_1.1.7-100.debian.tar.xz' python-rospkg_1.1.7-100.debian.tar.xz 1140 SHA256:722cf76cbd9c81734874ccdb101fc10cbd94b6e7edb2e304718688e182195731
```

### `dpkg` source package: `python-setuptools=39.0.1-2`

Binary Packages:

- `python-pkg-resources=39.0.1-2`
- `python-setuptools=39.0.1-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-setuptools=39.0.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-setuptools/python-setuptools_39.0.1-2.dsc' python-setuptools_39.0.1-2.dsc 2394 SHA256:ff5d172461544d2d847e6d3ecef3356141a4487dcc3047a88db61744986cf999
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-setuptools/python-setuptools_39.0.1.orig.tar.xz' python-setuptools_39.0.1.orig.tar.xz 454544 SHA256:b79bf38d5d74f348f534ba92b49ca21f124046acbb66d54f845aa910af49adff
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-setuptools/python-setuptools_39.0.1-2.debian.tar.xz' python-setuptools_39.0.1-2.debian.tar.xz 15040 SHA256:2e997b64dd6b9ff88672eb965c23ab505558ca45b34d47c87a18e90751fe189a
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

### `dpkg` source package: `python2.7=2.7.15~rc1-1ubuntu0.1`

Binary Packages:

- `libpython2.7:amd64=2.7.15~rc1-1ubuntu0.1`
- `libpython2.7-dev:amd64=2.7.15~rc1-1ubuntu0.1`
- `libpython2.7-minimal:amd64=2.7.15~rc1-1ubuntu0.1`
- `libpython2.7-stdlib:amd64=2.7.15~rc1-1ubuntu0.1`
- `python2.7=2.7.15~rc1-1ubuntu0.1`
- `python2.7-dev=2.7.15~rc1-1ubuntu0.1`
- `python2.7-minimal=2.7.15~rc1-1ubuntu0.1`

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
$ apt-get source -qq --print-uris python2.7=2.7.15~rc1-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.15~rc1-1ubuntu0.1.dsc' python2.7_2.7.15~rc1-1ubuntu0.1.dsc 3480 SHA256:98f51fba2a970d76de4e52aacd682a7643b4b19082f860bb1af4f7aaf96effcc
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.15~rc1.orig.tar.gz' python2.7_2.7.15~rc1.orig.tar.gz 17496421 SHA256:8a0c4ce73d351d73dc105cb8dadd2b5b0aa91956353a558dff10962f543f5d8b
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.15~rc1-1ubuntu0.1.diff.gz' python2.7_2.7.15~rc1-1ubuntu0.1.diff.gz 286551 SHA256:5759321345df298f17dbb5405a22929ac6d33eb3646fe6516027bf43893e6973
```

### `dpkg` source package: `python3-defaults=3.6.7-1~18.04`

Binary Packages:

- `libpython3-dev:amd64=3.6.7-1~18.04`
- `libpython3-stdlib:amd64=3.6.7-1~18.04`
- `python3=3.6.7-1~18.04`
- `python3-dev=3.6.7-1~18.04`
- `python3-minimal=3.6.7-1~18.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.6.7-1~18.04
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.6.7-1~18.04.dsc' python3-defaults_3.6.7-1~18.04.dsc 2896 SHA256:a4dad3f3681c698e3f1232a4e56934877954e39c21e330f4491ba8e916bb1655
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.6.7-1~18.04.tar.gz' python3-defaults_3.6.7-1~18.04.tar.gz 137600 SHA256:df14f4993ac87537415f1abaa69d80790fb01e51033416bc123038f731286ed4
```

### `dpkg` source package: `python3-stdlib-extensions=3.6.7-1~18.04`

Binary Packages:

- `python3-distutils=3.6.7-1~18.04`
- `python3-lib2to3=3.6.7-1~18.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-stdlib-extensions=3.6.7-1~18.04
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.6.7-1~18.04.dsc' python3-stdlib-extensions_3.6.7-1~18.04.dsc 2547 SHA256:64daa6d5f363816f81cf432a0d742febb20c106ab71add15848028bb8e1ce201
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.6.7.orig.tar.xz' python3-stdlib-extensions_3.6.7.orig.tar.xz 1037436 SHA256:e89e3bd96044b0c1463fef487c47c72268176ed9efd1901e60b1571f2d315aa0
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.6.7-1~18.04.debian.tar.xz' python3-stdlib-extensions_3.6.7-1~18.04.debian.tar.xz 15924 SHA256:ba6c0cd9a5f92042032b30ce10a887f08a15db0029909bfc430ab21cd56f5646
```

### `dpkg` source package: `python3.6=3.6.7-1~18.04`

Binary Packages:

- `libpython3.6:amd64=3.6.7-1~18.04`
- `libpython3.6-dev:amd64=3.6.7-1~18.04`
- `libpython3.6-minimal:amd64=3.6.7-1~18.04`
- `libpython3.6-stdlib:amd64=3.6.7-1~18.04`
- `python3.6=3.6.7-1~18.04`
- `python3.6-dev=3.6.7-1~18.04`
- `python3.6-minimal=3.6.7-1~18.04`

Licenses: (parsed from: `/usr/share/doc/libpython3.6/copyright`, `/usr/share/doc/libpython3.6-dev/copyright`, `/usr/share/doc/libpython3.6-minimal/copyright`, `/usr/share/doc/libpython3.6-stdlib/copyright`, `/usr/share/doc/python3.6/copyright`, `/usr/share/doc/python3.6-dev/copyright`, `/usr/share/doc/python3.6-minimal/copyright`)

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

Source:

```console
$ apt-get source -qq --print-uris python3.6=3.6.7-1~18.04
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.6/python3.6_3.6.7-1~18.04.dsc' python3.6_3.6.7-1~18.04.dsc 3444 SHA256:8bc3934884824d0c9c2b8b97e231390c193702f8b079ffa87164da789ca7ebb2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.6/python3.6_3.6.7.orig.tar.xz' python3.6_3.6.7.orig.tar.xz 17178476 SHA256:81fd1401a9d66533b0a3e9e3f4ea1c7c6702d57d5b90d659f971e6f1b745f77d
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.6/python3.6_3.6.7-1~18.04.debian.tar.xz' python3.6_3.6.7-1~18.04.debian.tar.xz 207092 SHA256:973992c49be74f3212957cb3a38e8c88b7c2ab6a3582839c60bbd694d778d322
```

### `dpkg` source package: `pyyaml=3.12-1build2`

Binary Packages:

- `python-yaml=3.12-1build2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pyyaml=3.12-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyyaml/pyyaml_3.12-1build2.dsc' pyyaml_3.12-1build2.dsc 2301 SHA256:05dadbe75f65a9989490de951abf10889e9113cf345e0eb9bf09e65febe5021d
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyyaml/pyyaml_3.12.orig.tar.gz' pyyaml_3.12.orig.tar.gz 253011 SHA256:592766c6303207a20efc445587778322d7f73b161bd994f227adaa341ba212ab
'http://archive.ubuntu.com/ubuntu/pool/main/p/pyyaml/pyyaml_3.12-1build2.debian.tar.xz' pyyaml_3.12-1build2.debian.tar.xz 7272 SHA256:ecaaf2c0725aaa0573ca24f5f477da76af7f3b281e90e2f04496fe4bc86a298b
```

### `dpkg` source package: `rdma-core=17.1-1ubuntu0.1`

Binary Packages:

- `ibverbs-providers:amd64=17.1-1ubuntu0.1`
- `libibverbs-dev:amd64=17.1-1ubuntu0.1`
- `libibverbs1:amd64=17.1-1ubuntu0.1`
- `librdmacm1:amd64=17.1-1ubuntu0.1`

Licenses: (parsed from: `/usr/share/doc/ibverbs-providers/copyright`, `/usr/share/doc/libibverbs-dev/copyright`, `/usr/share/doc/libibverbs1/copyright`, `/usr/share/doc/librdmacm1/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `BSD-MIT`
- `CC0`
- `CPL-1.0`
- `GPL-2`
- `GPL-2+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris rdma-core=17.1-1ubuntu0.1
'http://archive.ubuntu.com/ubuntu/pool/main/r/rdma-core/rdma-core_17.1-1ubuntu0.1.dsc' rdma-core_17.1-1ubuntu0.1.dsc 2762 SHA256:21d0f5db001da07b8723b3b9260abf142c364421e0d2b93ea11ba941859b4d94
'http://archive.ubuntu.com/ubuntu/pool/main/r/rdma-core/rdma-core_17.1.orig.tar.gz' rdma-core_17.1.orig.tar.gz 1027903 SHA256:b47444b7c05d3906deb8771eec3e634984dd83f5e620d5e37d3a83f74f0cc1ba
'http://archive.ubuntu.com/ubuntu/pool/main/r/rdma-core/rdma-core_17.1-1ubuntu0.1.debian.tar.xz' rdma-core_17.1-1ubuntu0.1.debian.tar.xz 17900 SHA256:afb27c3d287cca78b2dda348bae500ee16de68fb6e0b1ab965eb6bf6fa006833
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_7.0-3.dsc' readline_7.0-3.dsc 2538 SHA256:f27a5dc9053b88641e3effc6c03b7840cbbbd887e8dcaf05d9e336c7bc7c6a53
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_7.0.orig.tar.gz' readline_7.0.orig.tar.gz 2910016 SHA256:750d437185286f40a369e1e4f4764eda932b9459b5ec9a731628393dd3d32334
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_7.0-3.debian.tar.xz' readline_7.0-3.debian.tar.xz 30012 SHA256:bf166310d6ca7716f2bd0e9e06cee2458b0157f7989d028730fc305643560175
```

### `dpkg` source package: `rhash=1.3.6-2`

Binary Packages:

- `librhash0:amd64=1.3.6-2`

Licenses: (parsed from: `/usr/share/doc/librhash0/copyright`)

- `RHash`

Source:

```console
$ apt-get source -qq --print-uris rhash=1.3.6-2
'http://archive.ubuntu.com/ubuntu/pool/main/r/rhash/rhash_1.3.6-2.dsc' rhash_1.3.6-2.dsc 1747 SHA256:57e77023e0c769513949dec63b2d0d7368a47b048367d7d252f80b91257c8843
'http://archive.ubuntu.com/ubuntu/pool/main/r/rhash/rhash_1.3.6.orig.tar.gz' rhash_1.3.6.orig.tar.gz 328097 SHA256:964df972b60569b5cb35ec989ced195ab8ea514fc46a74eab98e86569ffbcf92
'http://archive.ubuntu.com/ubuntu/pool/main/r/rhash/rhash_1.3.6-2.debian.tar.xz' rhash_1.3.6-2.debian.tar.xz 9672 SHA256:fcccfa3d3a5a7ac16395ec54fcfb4217a5ccf5718e762f3670276366061e5638
```

### `dpkg` source package: `ros-melodic-actionlib-msgs=1.12.7-0bionic.20181109.223847`

Binary Packages:

- `ros-melodic-actionlib-msgs=1.12.7-0bionic.20181109.223847`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-catkin=0.7.14-0bionic.20180606.171811`

Binary Packages:

- `ros-melodic-catkin=0.7.14-0bionic.20180606.171811`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-class-loader=0.4.1-0bionic.20180606.175726`

Binary Packages:

- `ros-melodic-class-loader=0.4.1-0bionic.20180606.175726`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-cmake-modules=0.4.1-0bionic.20180606.173831`

Binary Packages:

- `ros-melodic-cmake-modules=0.4.1-0bionic.20180606.173831`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-common-msgs=1.12.7-0bionic.20181112.205822`

Binary Packages:

- `ros-melodic-common-msgs=1.12.7-0bionic.20181112.205822`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-cpp-common=0.6.11-0bionic.20180606.172032`

Binary Packages:

- `ros-melodic-cpp-common=0.6.11-0bionic.20180606.172032`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-diagnostic-msgs=1.12.7-0bionic.20181109.223847`

Binary Packages:

- `ros-melodic-diagnostic-msgs=1.12.7-0bionic.20181109.223847`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-gencpp=0.6.0-0bionic.20180606.180745`

Binary Packages:

- `ros-melodic-gencpp=0.6.0-0bionic.20180606.180745`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-geneus=2.2.6-0bionic.20180606.180755`

Binary Packages:

- `ros-melodic-geneus=2.2.6-0bionic.20180606.180755`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-genlisp=0.4.16-0bionic.20180606.180800`

Binary Packages:

- `ros-melodic-genlisp=0.4.16-0bionic.20180606.180800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-genmsg=0.5.11-0bionic.20180606.175935`

Binary Packages:

- `ros-melodic-genmsg=0.5.11-0bionic.20180606.175935`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-gennodejs=2.0.1-0bionic.20180606.180812`

Binary Packages:

- `ros-melodic-gennodejs=2.0.1-0bionic.20180606.180812`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-genpy=0.6.7-0bionic.20180606.180827`

Binary Packages:

- `ros-melodic-genpy=0.6.7-0bionic.20180606.180827`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-geometry-msgs=1.12.7-0bionic.20181109.223847`

Binary Packages:

- `ros-melodic-geometry-msgs=1.12.7-0bionic.20181109.223847`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-message-filters=1.14.3-0bionic.20181112.182550`

Binary Packages:

- `ros-melodic-message-filters=1.14.3-0bionic.20181112.182550`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-message-generation=0.4.0-0bionic.20180606.181147`

Binary Packages:

- `ros-melodic-message-generation=0.4.0-0bionic.20180606.181147`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-message-runtime=0.4.12-0bionic.20180606.182347`

Binary Packages:

- `ros-melodic-message-runtime=0.4.12-0bionic.20180606.182347`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-mk=1.14.4-0bionic.20180606.183206`

Binary Packages:

- `ros-melodic-mk=1.14.4-0bionic.20180606.183206`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-nav-msgs=1.12.7-0bionic.20181109.225243`

Binary Packages:

- `ros-melodic-nav-msgs=1.12.7-0bionic.20181109.225243`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-pluginlib=1.12.1-0bionic.20181112.172345`

Binary Packages:

- `ros-melodic-pluginlib=1.12.1-0bionic.20181112.172345`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-ros-comm=1.14.3-0bionic.20181112.202811`

Binary Packages:

- `ros-melodic-ros-comm=1.14.3-0bionic.20181112.202811`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-ros-core=1.4.1-0bionic.20181112.205903`

Binary Packages:

- `ros-melodic-ros-core=1.4.1-0bionic.20181112.205903`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-ros-environment=1.2.1-0bionic.20180606.180930`

Binary Packages:

- `ros-melodic-ros-environment=1.2.1-0bionic.20180606.180930`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-ros=1.14.4-0bionic.20180906.222138`

Binary Packages:

- `ros-melodic-ros=1.14.4-0bionic.20180906.222138`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosbag-migration-rule=1.0.0-0bionic.20180606.180949`

Binary Packages:

- `ros-melodic-rosbag-migration-rule=1.0.0-0bionic.20180606.180949`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosbag-storage=1.14.3-0bionic.20181112.185327`

Binary Packages:

- `ros-melodic-rosbag-storage=1.14.3-0bionic.20181112.185327`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosbag=1.14.3-0bionic.20181112.185825`

Binary Packages:

- `ros-melodic-rosbag=1.14.3-0bionic.20181112.185825`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosbash=1.14.4-0bionic.20180606.181008`

Binary Packages:

- `ros-melodic-rosbash=1.14.4-0bionic.20180606.181008`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosboost-cfg=1.14.4-0bionic.20180606.181028`

Binary Packages:

- `ros-melodic-rosboost-cfg=1.14.4-0bionic.20180606.181028`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosbuild=1.14.4-0bionic.20180606.182837`

Binary Packages:

- `ros-melodic-rosbuild=1.14.4-0bionic.20180606.182837`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosclean=1.14.4-0bionic.20180606.181032`

Binary Packages:

- `ros-melodic-rosclean=1.14.4-0bionic.20180606.181032`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosconsole-bridge=0.5.2-0bionic.20181112.172001`

Binary Packages:

- `ros-melodic-rosconsole-bridge=0.5.2-0bionic.20181112.172001`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosconsole=1.13.9-0bionic.20181112.171419`

Binary Packages:

- `ros-melodic-rosconsole=1.13.9-0bionic.20181112.171419`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roscpp-core=0.6.11-0bionic.20180606.173011`

Binary Packages:

- `ros-melodic-roscpp-core=0.6.11-0bionic.20180606.173011`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roscpp-serialization=0.6.11-0bionic.20180606.172746`

Binary Packages:

- `ros-melodic-roscpp-serialization=0.6.11-0bionic.20180606.172746`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roscpp-traits=0.6.11-0bionic.20180606.172543`

Binary Packages:

- `ros-melodic-roscpp-traits=0.6.11-0bionic.20180606.172543`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roscpp=1.14.3-0bionic.20181112.172149`

Binary Packages:

- `ros-melodic-roscpp=1.14.3-0bionic.20181112.172149`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roscreate=1.14.4-0bionic.20180606.181043`

Binary Packages:

- `ros-melodic-roscreate=1.14.4-0bionic.20180606.181043`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosgraph-msgs=1.11.2-0bionic.20180606.191800`

Binary Packages:

- `ros-melodic-rosgraph-msgs=1.11.2-0bionic.20180606.191800`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosgraph=1.14.3-0bionic.20180806.185059`

Binary Packages:

- `ros-melodic-rosgraph=1.14.3-0bionic.20180806.185059`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roslang=1.14.4-0bionic.20180606.180834`

Binary Packages:

- `ros-melodic-roslang=1.14.4-0bionic.20180606.180834`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roslaunch=1.14.3-0bionic.20181112.181542`

Binary Packages:

- `ros-melodic-roslaunch=1.14.3-0bionic.20181112.181542`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roslib=1.14.4-0bionic.20180906.221638`

Binary Packages:

- `ros-melodic-roslib=1.14.4-0bionic.20180906.221638`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roslisp=1.9.22-0bionic.20181015.225651`

Binary Packages:

- `ros-melodic-roslisp=1.9.22-0bionic.20181015.225651`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roslz4=1.14.3-0bionic.20180906.222251`

Binary Packages:

- `ros-melodic-roslz4=1.14.3-0bionic.20180906.222251`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosmake=1.14.4-0bionic.20180606.182734`

Binary Packages:

- `ros-melodic-rosmake=1.14.4-0bionic.20180606.182734`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosmaster=1.14.3-0bionic.20180806.185301`

Binary Packages:

- `ros-melodic-rosmaster=1.14.3-0bionic.20180806.185301`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosmsg=1.14.3-0bionic.20181112.195831`

Binary Packages:

- `ros-melodic-rosmsg=1.14.3-0bionic.20181112.195831`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosnode=1.14.3-0bionic.20181112.190825`

Binary Packages:

- `ros-melodic-rosnode=1.14.3-0bionic.20181112.190825`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosout=1.14.3-0bionic.20181112.174738`

Binary Packages:

- `ros-melodic-rosout=1.14.3-0bionic.20181112.174738`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rospack=2.5.2-0bionic.20180906.220829`

Binary Packages:

- `ros-melodic-rospack=2.5.2-0bionic.20180906.220829`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosparam=1.14.3-0bionic.20180806.185423`

Binary Packages:

- `ros-melodic-rosparam=1.14.3-0bionic.20180806.185423`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rospy=1.14.3-0bionic.20181112.174741`

Binary Packages:

- `ros-melodic-rospy=1.14.3-0bionic.20181112.174741`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosservice=1.14.3-0bionic.20181112.202329`

Binary Packages:

- `ros-melodic-rosservice=1.14.3-0bionic.20181112.202329`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rostest=1.14.3-0bionic.20181112.182207`

Binary Packages:

- `ros-melodic-rostest=1.14.3-0bionic.20181112.182207`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rostime=0.6.11-0bionic.20180606.172255`

Binary Packages:

- `ros-melodic-rostime=0.6.11-0bionic.20180606.172255`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rostopic=1.14.3-0bionic.20181112.190405`

Binary Packages:

- `ros-melodic-rostopic=1.14.3-0bionic.20181112.190405`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-rosunit=1.14.4-0bionic.20180906.222048`

Binary Packages:

- `ros-melodic-rosunit=1.14.4-0bionic.20180906.222048`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-roswtf=1.14.3-0bionic.20181112.202445`

Binary Packages:

- `ros-melodic-roswtf=1.14.3-0bionic.20181112.202445`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-sensor-msgs=1.12.7-0bionic.20181112.195813`

Binary Packages:

- `ros-melodic-sensor-msgs=1.12.7-0bionic.20181112.195813`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-shape-msgs=1.12.7-0bionic.20181109.225211`

Binary Packages:

- `ros-melodic-shape-msgs=1.12.7-0bionic.20181109.225211`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-std-msgs=0.5.11-0bionic.20180606.182832`

Binary Packages:

- `ros-melodic-std-msgs=0.5.11-0bionic.20180606.182832`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-std-srvs=1.11.2-0bionic.20180606.182427`

Binary Packages:

- `ros-melodic-std-srvs=1.11.2-0bionic.20180606.182427`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-stereo-msgs=1.12.7-0bionic.20181112.205410`

Binary Packages:

- `ros-melodic-stereo-msgs=1.12.7-0bionic.20181112.205410`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-topic-tools=1.14.3-0bionic.20181112.182554`

Binary Packages:

- `ros-melodic-topic-tools=1.14.3-0bionic.20181112.182554`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-trajectory-msgs=1.12.7-0bionic.20181109.225228`

Binary Packages:

- `ros-melodic-trajectory-msgs=1.12.7-0bionic.20181109.225228`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-visualization-msgs=1.12.7-0bionic.20181109.225021`

Binary Packages:

- `ros-melodic-visualization-msgs=1.12.7-0bionic.20181109.225021`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ros-melodic-xmlrpcpp=1.14.3-0bionic.20180806.185143`

Binary Packages:

- `ros-melodic-xmlrpcpp=1.14.3-0bionic.20180806.185143`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d.1-1`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d.1-1`

Licenses: (parsed from: `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20151223.gitfa8646d.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1-1.dsc' rtmpdump_2.4+20151223.gitfa8646d.1-1.dsc 2315 SHA256:e56822b88625bf6a51f06652fc36fa2a1348b4325ac76541800cd078192aa3d2
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz' rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz 142213 SHA256:5c032f5c8cc2937eb55a81a94effdfed3b0a0304b6376147b86f951e225e3ab5
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1-1.debian.tar.xz' rtmpdump_2.4+20151223.gitfa8646d.1-1.debian.tar.xz 8044 SHA256:675847f5cddb860256cbf2e7d5b85918aa53b59b0fd97a466b39a5c77a399537
```

### `dpkg` source package: `sbcl=2:1.4.5-1`

Binary Packages:

- `sbcl=2:1.4.5-1`

Licenses: (parsed from: `/usr/share/doc/sbcl/copyright`)

- `Apache-2.0`
- `BSD-3-clause`
- `Expat`
- `NTP`
- `NTP~disclaimer`
- `permissive-xerox`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sbcl=2:1.4.5-1
'http://archive.ubuntu.com/ubuntu/pool/universe/s/sbcl/sbcl_1.4.5-1.dsc' sbcl_1.4.5-1.dsc 2352 SHA256:dc7421f1dcd2d7b30393f6846e766efe7bf114aaf411e878e99b8203af924baa
'http://archive.ubuntu.com/ubuntu/pool/universe/s/sbcl/sbcl_1.4.5.orig.tar.bz2' sbcl_1.4.5.orig.tar.bz2 5998856 SHA256:96192effd17f3e457f77bcff0619784ce6e7293e27e0e6c1546a542b3d8ac540
'http://archive.ubuntu.com/ubuntu/pool/universe/s/sbcl/sbcl_1.4.5-1.debian.tar.xz' sbcl_1.4.5-1.debian.tar.xz 71404 SHA256:1dbe1e4d6a6e65e199f8748c098ba8874892399e187ec163784e996c7aeeb681
```

### `dpkg` source package: `sed=4.4-2`

Binary Packages:

- `sed=4.4-2`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris sed=4.4-2
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.4-2.dsc' sed_4.4-2.dsc 2006 SHA256:0e025a69a04c867048f918778771e2ba79d6ddfd62cb5ce6c3a6e255c005706c
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.4.orig.tar.xz' sed_4.4.orig.tar.xz 1181664 SHA256:cbd6ebc5aaf080ed60d0162d7f6aeae58211a1ee9ba9bb25623daa6cd942683b
'http://archive.ubuntu.com/ubuntu/pool/main/s/sed/sed_4.4-2.debian.tar.xz' sed_4.4-2.debian.tar.xz 59600 SHA256:9f9b8bec0438ea0d0bd4315548de519543385c8196bcfcc61362f38f4cc6e7ed
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.12.dsc' sensible-utils_0.0.12.dsc 1732 SHA256:1b62cc5f7561b3f5692a6edaec942e2e97e8368dabff8c865867d428eecb1221
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.12.tar.xz' sensible-utils_0.0.12.tar.xz 62152 SHA256:99ba2ebf8c57447c69d426b99b84ff9dc817be0bc4988ec6890a14558c529e2e
```

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


### `dpkg` source package: `sgml-base=1.29`

Binary Packages:

- `sgml-base=1.29`

Licenses: (parsed from: `/usr/share/doc/sgml-base/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris sgml-base=1.29
'http://archive.ubuntu.com/ubuntu/pool/main/s/sgml-base/sgml-base_1.29.dsc' sgml-base_1.29.dsc 1387 SHA256:5fa519d3de7365d2256c7b9e74b6234a5c81bd115efb6305a53444584c32f8b1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sgml-base/sgml-base_1.29.tar.xz' sgml-base_1.29.tar.xz 12224 SHA256:33808f1d51407ae105d471bf53cab526fe8903b003b78bc7ac4fd1429b7986b4
```

### `dpkg` source package: `shadow=1:4.5-1ubuntu1`

Binary Packages:

- `login=1:4.5-1ubuntu1`
- `passwd=1:4.5-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris shadow=1:4.5-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.5-1ubuntu1.dsc' shadow_4.5-1ubuntu1.dsc 2389 SHA256:0b49e04e8e85866adec2196c299b393883f5cf40358bb92f5168cfa941de4dd0
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.5.orig.tar.xz' shadow_4.5.orig.tar.xz 1344524 SHA256:22b0952dc944b163e2370bb911b11ca275fc80ad024267cf21e496b28c23d500
'http://archive.ubuntu.com/ubuntu/pool/main/s/shadow/shadow_4.5-1ubuntu1.debian.tar.xz' shadow_4.5-1ubuntu1.debian.tar.xz 470524 SHA256:51e534983f0500229b51b3f3ccbee3b041e48d3ea6e5f64c914351a0e996dc05
```

### `dpkg` source package: `shared-mime-info=1.9-2`

Binary Packages:

- `shared-mime-info=1.9-2`

Licenses: (parsed from: `/usr/share/doc/shared-mime-info/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris shared-mime-info=1.9-2
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_1.9-2.dsc' shared-mime-info_1.9-2.dsc 2203 SHA256:0592a6550b9bee8895d4a4fe577a15a28a5a911135765ae74b310abaea5c5b66
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_1.9.orig.tar.xz' shared-mime-info_1.9.orig.tar.xz 607648 SHA256:5c0133ec4e228e41bdf52f726d271a2d821499c2ab97afd3aa3d6cf43efcdc83
'http://archive.ubuntu.com/ubuntu/pool/main/s/shared-mime-info/shared-mime-info_1.9-2.debian.tar.xz' shared-mime-info_1.9-2.debian.tar.xz 9992 SHA256:18cb7e2c0f2a3daa2d55abc87c4619d68f537f268a3bad8510e1fcf0d6b0cd76
```

### `dpkg` source package: `six=1.11.0-2`

Binary Packages:

- `python-six=1.11.0-2`

Licenses: (parsed from: `/usr/share/doc/python-six/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris six=1.11.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.11.0-2.dsc' six_1.11.0-2.dsc 2316 SHA256:c0391b38bc251a3df586bdb163cb250af78aee69bbb27880215a350caaea53f2
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.11.0.orig.tar.gz' six_1.11.0.orig.tar.gz 29860 SHA256:70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.11.0-2.debian.tar.xz' six_1.11.0-2.debian.tar.xz 4176 SHA256:bbd91dcb509a1f083bf531062b77dfdf2cbd2badca0fbe5d81957fe852ac4a7a
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.22.0-1.dsc' sqlite3_3.22.0-1.dsc 2397 SHA256:6a5c95a5062c19abcfb0492b32b4e4f20634a59fb077da2415ab16e1afdc4ff6
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.22.0.orig-www.tar.xz' sqlite3_3.22.0.orig-www.tar.xz 3564688 SHA256:a61a14d6f457bb31ca32f4844398140050597fe4403dc0ee19576111f407e231
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.22.0.orig.tar.xz' sqlite3_3.22.0.orig.tar.xz 6019648 SHA256:f973ba63b5a1ea1d72e80c585bfb945e71d3f8b74fbecccdf345a84f8c91e5d1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.22.0-1.debian.tar.xz' sqlite3_3.22.0-1.debian.tar.xz 17312 SHA256:7fcce88ce9c8fe517fb9fc5b9d67daf14e48da678496fede4b27cbd3ddcbd453
```

### `dpkg` source package: `subversion=1.9.7-4ubuntu1`

Binary Packages:

- `libsvn1:amd64=1.9.7-4ubuntu1`
- `subversion=1.9.7-4ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libsvn1/copyright`, `/usr/share/doc/subversion/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris subversion=1.9.7-4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.9.7-4ubuntu1.dsc' subversion_1.9.7-4ubuntu1.dsc 3118 SHA256:13e18929d55c09986a758d3245ff246996d7f75f9d6f7313c394ba4d0a73b5ed
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.9.7.orig.tar.gz' subversion_1.9.7.orig.tar.gz 10643686 SHA256:c72a209c883e20245f14c4e644803f50ae83ae24652e385ff5e82300a0d06c3c
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.9.7-4ubuntu1.debian.tar.xz' subversion_1.9.7-4ubuntu1.debian.tar.xz 2270568 SHA256:67ea7ddc37e697340eaa9f8fea08980ba01b529f3ab6487eeb8726bc9ae77f29
```

### `dpkg` source package: `systemd=237-3ubuntu10.11`

Binary Packages:

- `libsystemd0:amd64=237-3ubuntu10.11`
- `libudev1:amd64=237-3ubuntu10.11`

Licenses: (parsed from: `/usr/share/doc/libsystemd0/copyright`, `/usr/share/doc/libudev1/copyright`)

- `CC0-1.0`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris systemd=237-3ubuntu10.11
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_237-3ubuntu10.11.dsc' systemd_237-3ubuntu10.11.dsc 4656 SHA256:fe8e56fc87d480d22da44f0d6c260e233f58a9b29f4e2ac3eda76d37fca24cd0
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_237.orig.tar.gz' systemd_237.orig.tar.gz 6871350 SHA256:c83dabbe1c9de6b9db1dafdb7e04140c7d0535705c68842f6c0768653ba4913c
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_237-3ubuntu10.11.debian.tar.xz' systemd_237-3ubuntu10.11.debian.tar.xz 199440 SHA256:c94d76a2379bcddb299287b7ff6d132c128af8be6ee912c581bd1a257a6a61f4
```

### `dpkg` source package: `sysvinit=2.88dsf-59.10ubuntu1`

Binary Packages:

- `sysvinit-utils=2.88dsf-59.10ubuntu1`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.88dsf-59.10ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf-59.10ubuntu1.dsc' sysvinit_2.88dsf-59.10ubuntu1.dsc 2428 SHA256:030f4e8a71381529da3141988344d6e1d0e05ba437e0cdd38d2f3786185bf285
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf.orig.tar.gz' sysvinit_2.88dsf.orig.tar.gz 125330 SHA256:b016f937958d2809a020d407e1287bdc09abf1d44efaa96530e2ea57f544f4e8
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf-59.10ubuntu1.debian.tar.xz' sysvinit_2.88dsf-59.10ubuntu1.debian.tar.xz 132736 SHA256:faee591309aa0065aa43f44a1e840eb01db7f55379af2b45949534bd0317b734
```

### `dpkg` source package: `tar=1.29b-2`

Binary Packages:

- `tar=1.29b-2`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.29b-2
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.29b-2.dsc' tar_1.29b-2.dsc 1965 SHA256:cae92504d2622b0a3d353df387c44beb1e9040ed2d527272a226f0ba247a17f1
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.29b.orig.tar.xz' tar_1.29b.orig.tar.xz 1822008 SHA256:6a59706ebee384a6cd2fb3ee1dbfbfc20c5c66c7efd7cedb28edc054fca8ba00
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.29b-2.debian.tar.xz' tar_1.29b-2.debian.tar.xz 28552 SHA256:caa4e76e821b87e842d0bfc8285abd47103d47d56e93dae0a8df4b787f7c8d72
```

### `dpkg` source package: `tinyxml2=6.0.0+dfsg-1`

Binary Packages:

- `libtinyxml2-6:amd64=6.0.0+dfsg-1`
- `libtinyxml2-dev:amd64=6.0.0+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libtinyxml2-6/copyright`, `/usr/share/doc/libtinyxml2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `zlib/libpng`

Source:

```console
$ apt-get source -qq --print-uris tinyxml2=6.0.0+dfsg-1
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_6.0.0+dfsg-1.dsc' tinyxml2_6.0.0+dfsg-1.dsc 1999 SHA256:d103b12a55f1225e61a87cabf184237be9213233972e3d7bd35a4cc926736aec
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_6.0.0+dfsg.orig.tar.gz' tinyxml2_6.0.0+dfsg.orig.tar.gz 352041 SHA256:ef930de291e18acef913a79bba1d2d8e387cd19cfd9fef7618895a21c909164b
'http://archive.ubuntu.com/ubuntu/pool/universe/t/tinyxml2/tinyxml2_6.0.0+dfsg-1.debian.tar.xz' tinyxml2_6.0.0+dfsg-1.debian.tar.xz 5532 SHA256:6e6052241bc2d7cefbf915b101474185bd5a7369456fbac0f0efa53b8a3c75a6
```

### `dpkg` source package: `tzdata=2018i-0ubuntu0.18.04`

Binary Packages:

- `tzdata=2018i-0ubuntu0.18.04`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tzdata=2018i-0ubuntu0.18.04
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2018i-0ubuntu0.18.04.dsc' tzdata_2018i-0ubuntu0.18.04.dsc 2122 SHA256:f4f73893ab97f73d8a1f68daa91d933b090275c6399b7e7c56960242bd524b21
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2018i.orig.tar.gz' tzdata_2018i.orig.tar.gz 377009 SHA256:82c45ef84ca3bc01d0a4a397ba8adeb8f7f199c6550740587c6ac5a7108c00d9
'http://archive.ubuntu.com/ubuntu/pool/main/t/tzdata/tzdata_2018i-0ubuntu0.18.04.debian.tar.xz' tzdata_2018i-0ubuntu0.18.04.debian.tar.xz 104556 SHA256:ef65b3782fc78a72ef5dc1297173941b3ccf7dfce01f62a375cbb3c7384a8398
```

### `dpkg` source package: `ubuntu-keyring=2018.09.18.1~18.04.0`

Binary Packages:

- `ubuntu-keyring=2018.09.18.1~18.04.0`

Licenses: (parsed from: `/usr/share/doc/ubuntu-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ubuntu-keyring=2018.09.18.1~18.04.0
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2018.09.18.1~18.04.0.dsc' ubuntu-keyring_2018.09.18.1~18.04.0.dsc 1503 SHA256:1c9a599b6b3c98fdc920756c8031678d2556b6267eb55f057d0369cfc64e0263
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2018.09.18.1~18.04.0.tar.gz' ubuntu-keyring_2018.09.18.1~18.04.0.tar.gz 34238 SHA256:7095b786c02816bb6933b3a73ed6c9e302542e8fc1edb8346f7ddab49e95b3bd
```

### `dpkg` source package: `ucf=3.0038`

Binary Packages:

- `ucf=3.0038`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0038
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0038.dsc' ucf_3.0038.dsc 1445 SHA256:5fab6d0af664eac92b3404c6bb62d0a3ceb88cd21a1462b9a262d1292c77328f
'http://archive.ubuntu.com/ubuntu/pool/main/u/ucf/ucf_3.0038.tar.xz' ucf_3.0038.tar.xz 65416 SHA256:262ccd52637c869ac851838a176d76e90db8d3f12373e3b62eb89e217f93fe7e
```

### `dpkg` source package: `unixodbc=2.3.4-1.1ubuntu3`

Binary Packages:

- `libodbc1:amd64=2.3.4-1.1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libodbc1/copyright`)

- `GPL`
- `GPL-2+`
- `LGPL`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris unixodbc=2.3.4-1.1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/u/unixodbc/unixodbc_2.3.4-1.1ubuntu3.dsc' unixodbc_2.3.4-1.1ubuntu3.dsc 2213 SHA256:82ff3dc47665081d287c98f2d8c1390819c176d4d23378a65010b7860827b06f
'http://archive.ubuntu.com/ubuntu/pool/main/u/unixodbc/unixodbc_2.3.4.orig.tar.gz' unixodbc_2.3.4.orig.tar.gz 1830660 SHA256:2e1509a96bb18d248bf08ead0d74804957304ff7c6f8b2e5965309c632421e39
'http://archive.ubuntu.com/ubuntu/pool/main/u/unixodbc/unixodbc_2.3.4-1.1ubuntu3.diff.gz' unixodbc_2.3.4-1.1ubuntu3.diff.gz 19700 SHA256:7b533e947f1a0c49541668924b3679e8fe7dac75a3759081a6ac82f0c55f9184
```

### `dpkg` source package: `util-linux=2.31.1-0.4ubuntu3.3`

Binary Packages:

- `bsdutils=1:2.31.1-0.4ubuntu3.3`
- `fdisk=2.31.1-0.4ubuntu3.3`
- `libblkid1:amd64=2.31.1-0.4ubuntu3.3`
- `libfdisk1:amd64=2.31.1-0.4ubuntu3.3`
- `libmount1:amd64=2.31.1-0.4ubuntu3.3`
- `libsmartcols1:amd64=2.31.1-0.4ubuntu3.3`
- `libuuid1:amd64=2.31.1-0.4ubuntu3.3`
- `mount=2.31.1-0.4ubuntu3.3`
- `util-linux=2.31.1-0.4ubuntu3.3`
- `uuid-dev:amd64=2.31.1-0.4ubuntu3.3`

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
$ apt-get source -qq --print-uris util-linux=2.31.1-0.4ubuntu3.3
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.31.1-0.4ubuntu3.3.dsc' util-linux_2.31.1-0.4ubuntu3.3.dsc 4148 SHA256:04812d13b3420078a683d8a068efe31b104eb70de991bf79207ca0ae1de88dd0
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.31.1.orig.tar.xz' util-linux_2.31.1.orig.tar.xz 4514032 SHA256:cfd5789570e9ff75e079471faeca1511ade1607f650523a6ad25d1e26516ae4e
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.31.1-0.4ubuntu3.3.debian.tar.xz' util-linux_2.31.1-0.4ubuntu3.3.debian.tar.xz 99496 SHA256:9a57b1680f325060f147db00ecfbe6ced03ee563fe20f0d9dcbd22b34f70020e
```

### `dpkg` source package: `xdg-user-dirs=0.17-1ubuntu1`

Binary Packages:

- `xdg-user-dirs=0.17-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/xdg-user-dirs/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris xdg-user-dirs=0.17-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xdg-user-dirs/xdg-user-dirs_0.17-1ubuntu1.dsc' xdg-user-dirs_0.17-1ubuntu1.dsc 2319 SHA256:62400a07ff099ac286502629389843a22b9d71e30179f37b7c05a2bc5ae37d9b
'http://archive.ubuntu.com/ubuntu/pool/main/x/xdg-user-dirs/xdg-user-dirs_0.17.orig.tar.gz' xdg-user-dirs_0.17.orig.tar.gz 257291 SHA256:2a07052823788e8614925c5a19ef5b968d8db734fdee656699ea4f97d132418c
'http://archive.ubuntu.com/ubuntu/pool/main/x/xdg-user-dirs/xdg-user-dirs_0.17-1ubuntu1.debian.tar.xz' xdg-user-dirs_0.17-1ubuntu1.debian.tar.xz 28680 SHA256:1c18dd3208d58ec4be6cbf28c480ebc2f9c349463a2e7765d040172ba6a63c23
```

### `dpkg` source package: `xml-core=0.18`

Binary Packages:

- `xml-core=0.18`

Licenses: (parsed from: `/usr/share/doc/xml-core/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris xml-core=0.18
'http://archive.ubuntu.com/ubuntu/pool/main/x/xml-core/xml-core_0.18.dsc' xml-core_0.18.dsc 1564 SHA256:109b93880b90e7ec07c7efe9508ed74e1c69de72b6be3e77ebff0c8f0ddcf4a9
'http://archive.ubuntu.com/ubuntu/pool/main/x/xml-core/xml-core_0.18.tar.xz' xml-core_0.18.tar.xz 23804 SHA256:353f05dbb03c642649a6bec28b1acf3c57e489ffdd1401f5e9624dcc90af72cd
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2-1.3.dsc' xz-utils_5.2.2-1.3.dsc 2575 SHA256:3ea4e6a32f6265b152f89ceafe78c8839e5f4bb1cad137b159fe2013817f9342
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz' xz-utils_5.2.2.orig.tar.xz 1016404 SHA256:f341b1906ebcdde291dd619399ae944600edc9193619dd0c0110a5f05bfcc89e
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz.asc' xz-utils_5.2.2.orig.tar.xz.asc 543 SHA256:2cc0575556e1331b3f468e6e7dca5969ce86efcc315d62672279b4e68b2e449f
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2-1.3.debian.tar.xz' xz-utils_5.2.2-1.3.debian.tar.xz 108680 SHA256:d76c3acf39d0999c14384695394970e8f98853fd6736ba91972d3e67106bc6f6
```

### `dpkg` source package: `zlib=1:1.2.11.dfsg-0ubuntu2`

Binary Packages:

- `zlib1g:amd64=1:1.2.11.dfsg-0ubuntu2`
- `zlib1g-dev:amd64=1:1.2.11.dfsg-0ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.11.dfsg-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-0ubuntu2.dsc' zlib_1.2.11.dfsg-0ubuntu2.dsc 2676 SHA256:e733161caf3c6864deec55f40f80c0872f7c83bd9c6e9f937472f227ad912281
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg.orig.tar.xz' zlib_1.2.11.dfsg.orig.tar.xz 287216 SHA256:881c8a90f488def83488aa91fd68563c023013a4b9b07a040f6da2727d76ad60
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-0ubuntu2.debian.tar.xz' zlib_1.2.11.dfsg-0ubuntu2.debian.tar.xz 18344 SHA256:afad42904f793d13a0b631e082e575d90a7c7c443973d08a00061a9bbb5ca380
```
