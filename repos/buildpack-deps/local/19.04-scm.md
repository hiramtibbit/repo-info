# `buildpack-deps:disco-scm`

## Docker Metadata

- Image ID: `sha256:038a8f7137de9e1b27a01a3805956840f9037f999f276820907a844571769181`
- Created: `2018-12-28T23:53:05.57228568Z`
- Virtual Size: ~ 241.30 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["/bin/bash"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`

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

### `dpkg` source package: `adduser=3.117ubuntu1`

Binary Packages:

- `adduser=3.117ubuntu1`

Licenses: (parsed from: `/usr/share/doc/adduser/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris adduser=3.117ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.117ubuntu1.dsc' adduser_3.117ubuntu1.dsc 1842 SHA256:9c75361480e3c333b791c19beecd25288e450a89f98c260629f405360b32c9d7
'http://archive.ubuntu.com/ubuntu/pool/main/a/adduser/adduser_3.117ubuntu1.tar.xz' adduser_3.117ubuntu1.tar.xz 217032 SHA256:b4843f5a0c29db24b9eae623db49028d00240a842b8d6bda8af13e5fb65f3e4d
```

### `dpkg` source package: `apr-util=1.6.1-3build1`

Binary Packages:

- `libaprutil1:amd64=1.6.1-3build1`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.6.1-3build1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1-3build1.dsc' apr-util_1.6.1-3build1.dsc 2852 SHA256:d8e687f76bdcc99ebef7f42c176f1e07db23a2e576c6d4cf8c28f7f7205c0327
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2' apr-util_1.6.1.orig.tar.bz2 428595 SHA256:d3e12f7b6ad12687572a3a39475545a072608f4ba03a6ce8a3778f607dd0035b
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2.asc' apr-util_1.6.1.orig.tar.bz2.asc 801 SHA256:47837b605290c0d7659b73734e4a9d5e6c0c24c13185cd4d91837afe63c07ca4
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1-3build1.debian.tar.xz' apr-util_1.6.1-3build1.debian.tar.xz 211980 SHA256:96743a0be06d6b588df2b7f073534607f173f9e707af7d5f1f16cb7928a75f25
```

### `dpkg` source package: `apr=1.6.5-1`

Binary Packages:

- `libapr1:amd64=1.6.5-1`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.6.5-1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.5-1.dsc' apr_1.6.5-1.dsc 2296 SHA256:80c471107d7f90ab5de012e4211559f4f6852ca2b7fd6911f06420aa66d27ec0
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.5.orig.tar.bz2' apr_1.6.5.orig.tar.bz2 855393 SHA256:a67ca9fcf9c4ff59bce7f428a323c8b5e18667fdea7b0ebad47d194371b0a105
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.5.orig.tar.bz2.asc' apr_1.6.5.orig.tar.bz2.asc 801 SHA256:9beff0bb06f4cbbb006176af93258d946d33b7fb54aac13a4c90cfba1cfd0c88
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.5-1.debian.tar.xz' apr_1.6.5-1.debian.tar.xz 213168 SHA256:cb03a6ad0b8c525c67744e7d3f7c52af446e73bd6d4eeb6fd4622677df60db2b
```

### `dpkg` source package: `apt=1.8.0~alpha2ubuntu1`

Binary Packages:

- `apt=1.8.0~alpha2ubuntu1`
- `libapt-pkg5.0:amd64=1.8.0~alpha2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

Source:

```console
$ apt-get source -qq --print-uris apt=1.8.0~alpha2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.8.0~alpha2ubuntu1.dsc' apt_1.8.0~alpha2ubuntu1.dsc 2902 SHA256:ff493c34b1678fdfd92619c6a793732cc672e26e818bab75844343605dc98492
'http://archive.ubuntu.com/ubuntu/pool/main/a/apt/apt_1.8.0~alpha2ubuntu1.tar.xz' apt_1.8.0~alpha2ubuntu1.tar.xz 2160232 SHA256:161e89861a13fcfbf1ae3610d3baffba7990b5235acbdbdbe569a3afb0adab87
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

### `dpkg` source package: `audit=1:2.8.3-1ubuntu3`

Binary Packages:

- `libaudit-common=1:2.8.3-1ubuntu3`
- `libaudit1:amd64=1:2.8.3-1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.8.3-1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.8.3-1ubuntu3.dsc' audit_2.8.3-1ubuntu3.dsc 2936 SHA256:bddf35baadee50ff554f1ecc56eff7300bd91d80ff2446f33e97952427d4d6ee
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.8.3.orig.tar.gz' audit_2.8.3.orig.tar.gz 1107583 SHA256:744945caee27a472f0cc7ecb067f1f33d606e5aebcf9660e701a58f9d3668a1a
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.8.3-1ubuntu3.debian.tar.xz' audit_2.8.3-1ubuntu3.debian.tar.xz 17700 SHA256:14f0df21c3eae3b94611d98b9bc1f5c0d9d7ea857ba3f0f00714a5916f18f47e
```

### `dpkg` source package: `base-files=10.1ubuntu8`

Binary Packages:

- `base-files=10.1ubuntu8`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=10.1ubuntu8
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_10.1ubuntu8.dsc' base-files_10.1ubuntu8.dsc 1612 SHA256:7086536b13fa7434bfb76373ffe2bb199318f819ffbc2a6a6ef6e2a54b18243d
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_10.1ubuntu8.tar.xz' base-files_10.1ubuntu8.tar.xz 78188 SHA256:7150fcb7513b236fc1374538073f62ec4777a2a584b6e3cbaeadc47e66abfead
```

### `dpkg` source package: `base-passwd=3.5.45`

Binary Packages:

- `base-passwd=3.5.45`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.45
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.45.dsc' base-passwd_3.5.45.dsc 1651 SHA256:c5702c8c0fd5f2240d0fad07f1c03cdff86ea9370e80129c7258c40fa12015b9
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-passwd/base-passwd_3.5.45.tar.xz' base-passwd_3.5.45.tar.xz 52748 SHA256:8cd6a713c400cf52f437e5cb14fcec59b0c77d4003a9a4f56526ef27f28ce1fe
```

### `dpkg` source package: `bash=4.4.18-2ubuntu3`

Binary Packages:

- `bash=4.4.18-2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=4.4.18-2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4.18-2ubuntu3.dsc' bash_4.4.18-2ubuntu3.dsc 2101 SHA256:8c071599237fd9c22ab71c67972a383b8072625a489cc0b945918698c0b50cec
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4.18.orig.tar.xz' bash_4.4.18.orig.tar.xz 5036272 SHA256:704143a7170041ac9f1025455d6d23ff0f353711a3dc557b47d6e6322f24cd02
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4.18-2ubuntu3.debian.tar.xz' bash_4.4.18-2ubuntu3.debian.tar.xz 64284 SHA256:a0fbb339eb2cb2ca80c0db60c4ccfd4edc7a4687cb62038e890846d798e02b0b
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-9.dsc' bzip2_1.0.6-9.dsc 2185 SHA256:f27d7febca8dbc1519bdacac3ee0b5a2d9cf9845e50dbb7b13c0e6daa17ab28e
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6.orig.tar.bz2' bzip2_1.0.6.orig.tar.bz2 708737 SHA256:d70a9ccd8bdf47e302d96c69fecd54925f45d9c7b966bb4ef5f56b770960afa7
'http://archive.ubuntu.com/ubuntu/pool/main/b/bzip2/bzip2_1.0.6-9.debian.tar.bz2' bzip2_1.0.6-9.debian.tar.bz2 25873 SHA256:d1a91bf31bc60384f56fa2dd55cfdc07e27dbbbf295db2248b65afed0ca141a2
```

### `dpkg` source package: `bzr=2.7.0+bzr6622-15`

Binary Packages:

- `bzr=2.7.0+bzr6622-15`
- `python-bzrlib=2.7.0+bzr6622-15`

Licenses: (parsed from: `/usr/share/doc/bzr/copyright`, `/usr/share/doc/python-bzrlib/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris bzr=2.7.0+bzr6622-15
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bzr/bzr_2.7.0+bzr6622-15.dsc' bzr_2.7.0+bzr6622-15.dsc 2923 SHA256:ce3ad2a536c52343f06d7393a7f76ef3855bc91daa596e9e8e895bf289d2e43d
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bzr/bzr_2.7.0+bzr6622.orig.tar.gz' bzr_2.7.0+bzr6622.orig.tar.gz 10948360 SHA256:08bba3e76cba9beb6b686e71253045beeab9db94753ddbcafa0f8ed1cba377ff
'http://archive.ubuntu.com/ubuntu/pool/universe/b/bzr/bzr_2.7.0+bzr6622-15.debian.tar.xz' bzr_2.7.0+bzr6622-15.debian.tar.xz 92936 SHA256:d2198b93059cc9d37c551f7bfda19a199c18f4c9c6104a8c40ccd6d0c65e6fd3
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

### `dpkg` source package: `cdebconf=0.244ubuntu1`

Binary Packages:

- `libdebconfclient0:amd64=0.244ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris cdebconf=0.244ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.244ubuntu1.dsc' cdebconf_0.244ubuntu1.dsc 2925 SHA256:3dce646ffaa9620f99de83deef04c6675b723718941f8ac4c23c5cd3ff77353e
'http://archive.ubuntu.com/ubuntu/pool/main/c/cdebconf/cdebconf_0.244ubuntu1.tar.xz' cdebconf_0.244ubuntu1.tar.xz 275568 SHA256:c9c50d04398e86363c51a27d7b6da07f137f93f4da234a8e339970d79398afb6
```

### `dpkg` source package: `configobj=5.0.6-3`

Binary Packages:

- `python-configobj=5.0.6-3`

Licenses: (parsed from: `/usr/share/doc/python-configobj/copyright`)

- `BSD-3-clause`

Source:

```console
$ apt-get source -qq --print-uris configobj=5.0.6-3
'http://archive.ubuntu.com/ubuntu/pool/main/c/configobj/configobj_5.0.6-3.dsc' configobj_5.0.6-3.dsc 2123 SHA256:bb0b6f41099734c9930109acd4473e84fcca47fadb14949710e5ff8032786299
'http://archive.ubuntu.com/ubuntu/pool/main/c/configobj/configobj_5.0.6.orig.tar.gz' configobj_5.0.6.orig.tar.gz 143664 SHA256:2e140354efcca6f558ff9ee941b435ae09a617bc071797bef62c8d6ed2033d5e
'http://archive.ubuntu.com/ubuntu/pool/main/c/configobj/configobj_5.0.6-3.debian.tar.xz' configobj_5.0.6-3.debian.tar.xz 6848 SHA256:8a278320a37b3953a5b372f12f9a6ef6f35b1680c9c7583062f4ab0b01106efc
```

### `dpkg` source package: `coreutils=8.28-1ubuntu2`

Binary Packages:

- `coreutils=8.28-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.28-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.28-1ubuntu2.dsc' coreutils_8.28-1ubuntu2.dsc 2302 SHA256:a9bbed5916bf8ee8fbe1942777be2848ab0bcc8ffdd2202be9069cc7f4490369
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.28.orig.tar.xz' coreutils_8.28.orig.tar.xz 5252336 SHA256:1117b1a16039ddd84d51a9923948307cfa28c2cea03d1a2438742253df0a0c65
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.28.orig.tar.xz.asc' coreutils_8.28.orig.tar.xz.asc 1196 SHA256:505b1a530a55732a9ed659d419ff4973d1b15059078d2060675927058db9607d
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.28-1ubuntu2.debian.tar.xz' coreutils_8.28-1ubuntu2.debian.tar.xz 39892 SHA256:5556e6d2d37504b74d3aea27e8a8a91bc8db5fe9ae6e2d608992f0c7d03efbdf
```

### `dpkg` source package: `curl=7.61.0-1ubuntu2.2`

Binary Packages:

- `curl=7.61.0-1ubuntu2.2`
- `libcurl3-gnutls:amd64=7.61.0-1ubuntu2.2`
- `libcurl4:amd64=7.61.0-1ubuntu2.2`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`, `/usr/share/doc/libcurl4/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.61.0-1ubuntu2.2
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.61.0-1ubuntu2.2.dsc' curl_7.61.0-1ubuntu2.2.dsc 2777 SHA256:eb92ba5348d28ebee8ae5a5544f1d414e5d92467b314fc0a034eeb6f1dd5e168
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.61.0.orig.tar.gz' curl_7.61.0.orig.tar.gz 3964862 SHA256:64141f0db4945268a21b490d58806b97c615d3d0c75bf8c335bbe0efd13b45b5
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.61.0-1ubuntu2.2.debian.tar.xz' curl_7.61.0-1ubuntu2.2.debian.tar.xz 30192 SHA256:5df3a639bae8576f19fe24e5eb6382f7dc0bc827f75b7ba28b4c8dabe51d6707
```

### `dpkg` source package: `cyrus-sasl2=2.1.27~101-g0780600+dfsg-3ubuntu2`

Binary Packages:

- `libsasl2-2:amd64=2.1.27~101-g0780600+dfsg-3ubuntu2`
- `libsasl2-modules-db:amd64=2.1.27~101-g0780600+dfsg-3ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

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

### `dpkg` source package: `dash=0.5.10.2-3ubuntu1`

Binary Packages:

- `dash=0.5.10.2-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.10.2-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.10.2-3ubuntu1.dsc' dash_0.5.10.2-3ubuntu1.dsc 1770 SHA256:f9774c0c2cbcdf8b2a2187698502fc4357bed52e5c3cd61e045ce4ee52a2a514
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.10.2.orig.tar.gz' dash_0.5.10.2.orig.tar.gz 225196 SHA256:3c663919dc5c66ec991da14c7cf7e0be8ad00f3db73986a987c118862b5f6071
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.10.2-3ubuntu1.debian.tar.xz' dash_0.5.10.2-3ubuntu1.debian.tar.xz 42000 SHA256:fbc74a28b57b356d653f711f49c550d3a07c37e1b26f3672253b4c90b994718c
```

### `dpkg` source package: `db5.3=5.3.28+dfsg1-0.2`

Binary Packages:

- `libdb5.3:amd64=5.3.28+dfsg1-0.2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28+dfsg1-0.2
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28+dfsg1-0.2.dsc' db5.3_5.3.28+dfsg1-0.2.dsc 2991 SHA256:f83cb4a68948870bb8ea6cf75c4ce254e7e7618609360f3ba61ee0a710048ff2
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28+dfsg1.orig.tar.xz' db5.3_5.3.28+dfsg1.orig.tar.xz 19723860 SHA256:b19bf3dd8ce74b95a7b215be9a7c8489e8e8f18da60d64d6340a06e75f497749
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28+dfsg1-0.2.debian.tar.xz' db5.3_5.3.28+dfsg1-0.2.debian.tar.xz 29120 SHA256:d94443c370c8a6ef97c0ec01734063bfea3edf6ddf64de43fd9160fffa6eb290
```

### `dpkg` source package: `debconf=1.5.69`

Binary Packages:

- `debconf=1.5.69`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.69
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.69.dsc' debconf_1.5.69.dsc 2047 SHA256:d1d83db20bac5c611fa9c74091d193f8d0e30cdf6afec9395354e6cc8ff8aac4
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.69.tar.xz' debconf_1.5.69.tar.xz 570688 SHA256:728b0df9ba36ee2e090b5be9a79ebb9ff55605e38bd6780b26462a8c8bd0f646
```

### `dpkg` source package: `debianutils=4.8.6`

Binary Packages:

- `debianutils=4.8.6`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.8.6
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.8.6.dsc' debianutils_4.8.6.dsc 1739 SHA256:1b82e438469d8ffe18a2fc4747f24b8f0475ced12f23d952279579ce6b27b108
'http://archive.ubuntu.com/ubuntu/pool/main/d/debianutils/debianutils_4.8.6.tar.xz' debianutils_4.8.6.tar.xz 156532 SHA256:db09047144dadf6a35d0f28977fbef83b0dd60ca32e6c8512cce2444a6423f73
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

### `dpkg` source package: `dpkg=1.19.2ubuntu2`

Binary Packages:

- `dpkg=1.19.2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.19.2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.19.2ubuntu2.dsc' dpkg_1.19.2ubuntu2.dsc 2157 SHA256:b054d56e3c04a6008f4dd365e9974752b59e4dcd6976c8da0201857b1b508d32
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.19.2ubuntu2.tar.xz' dpkg_1.19.2ubuntu2.tar.xz 4622368 SHA256:7ee424727480a3a78f0d447967ff445b26b6e5b33a1e49098a59ad9d5977f627
```

### `dpkg` source package: `e2fsprogs=1.44.4-2ubuntu1`

Binary Packages:

- `e2fsprogs=1.44.4-2ubuntu1`
- `libcom-err2:amd64=1.44.4-2ubuntu1`
- `libext2fs2:amd64=1.44.4-2ubuntu1`
- `libss2:amd64=1.44.4-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `expat=2.2.6-1`

Binary Packages:

- `libexpat1:amd64=2.2.6-1`

Licenses: (parsed from: `/usr/share/doc/libexpat1/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris expat=2.2.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.6-1.dsc' expat_2.2.6-1.dsc 1949 SHA256:e14d5e6658592b65821e52371f5036f6a2bdac525ea95014ac99183106917395
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.6.orig.tar.gz' expat_2.2.6.orig.tar.gz 8275473 SHA256:574499cba22a599393e28d99ecfa1e7fc85be7d6651d543045244d5b561cb7ff
'http://archive.ubuntu.com/ubuntu/pool/main/e/expat/expat_2.2.6-1.debian.tar.xz' expat_2.2.6-1.debian.tar.xz 10688 SHA256:f0bc55f93042b6f517c39b2757021e8f505e19583b1a9d5f11b224825be62037
```

### `dpkg` source package: `findutils=4.6.0+git+20181018-1`

Binary Packages:

- `findutils=4.6.0+git+20181018-1`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.6.0+git+20181018-1
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0+git+20181018-1.dsc' findutils_4.6.0+git+20181018-1.dsc 2137 SHA256:687ced1bbbf612798e52a7beb80c8a15b055b2dc7e1149b5fcc4bdf1031f34bf
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0+git+20181018.orig.tar.xz' findutils_4.6.0+git+20181018.orig.tar.xz 1876992 SHA256:0bb3cb95867959350455ccba6e448305cd1adf44d0faf51fe7e9729abbc19c9e
'http://archive.ubuntu.com/ubuntu/pool/main/f/findutils/findutils_4.6.0+git+20181018-1.debian.tar.xz' findutils_4.6.0+git+20181018-1.debian.tar.xz 26316 SHA256:f180b3d887565e1da084635f130a0495b7e168d6592d3a5a11ceb1c3f23e17f1
```

### `dpkg` source package: `gcc-8=8.2.0-12ubuntu1`

Binary Packages:

- `gcc-8-base:amd64=8.2.0-12ubuntu1`
- `libgcc1:amd64=1:8.2.0-12ubuntu1`
- `libstdc++6:amd64=8.2.0-12ubuntu1`

Licenses: (parsed from: `/usr/share/doc/gcc-8-base/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libstdc++6/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-8=8.2.0-12ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-8/gcc-8_8.2.0-12ubuntu1.dsc' gcc-8_8.2.0-12ubuntu1.dsc 36374 SHA256:bd722196754982adceda988628c8e5ad8897af180553242e4d13ff79e8bd8965
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-8/gcc-8_8.2.0.orig.tar.gz' gcc-8_8.2.0.orig.tar.gz 75164400 SHA256:e1009caeec1d024f278de02238d3a558bc23b0cd3ae08c885c36fe5a44b3269d
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-8/gcc-8_8.2.0-12ubuntu1.diff.gz' gcc-8_8.2.0-12ubuntu1.diff.gz 4463993 SHA256:0abbc3a28e0791dfbbcc52210d85f93f3cfde4da0380700ef9130054c5ce07a6
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.18.1-2.dsc' gdbm_1.18.1-2.dsc 2714 SHA256:b90f42975f7f8e1cfc117cd895334c7ea2e044294e9f7095dfdcd956d897b9cf
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.18.1.orig.tar.gz' gdbm_1.18.1.orig.tar.gz 941863 SHA256:86e613527e5dba544e73208f42b78b7c022d4fa5a6d5498bf18c8d6f745b91dc
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.18.1.orig.tar.gz.asc' gdbm_1.18.1.orig.tar.gz.asc 412 SHA256:3254738e7689e44ac65e78a766806828b8282e6bb1c0e5bb6156a99e567889a5
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.18.1-2.debian.tar.xz' gdbm_1.18.1-2.debian.tar.xz 28032 SHA256:e208756f7b1c57d51303c1b36cd5bc161b67db20544c6e73401df022d3f74b57
```

### `dpkg` source package: `git=1:2.19.1-1ubuntu1`

Binary Packages:

- `git=1:2.19.1-1ubuntu1`
- `git-man=1:2.19.1-1ubuntu1`

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
$ apt-get source -qq --print-uris git=1:2.19.1-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.19.1-1ubuntu1.dsc' git_2.19.1-1ubuntu1.dsc 2951 SHA256:a8e07c208f35da95044e72b6f51c81f4e6039a8e45805cfa374683e1081e4bd0
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.19.1.orig.tar.xz' git_2.19.1.orig.tar.xz 5227908 SHA256:345056aa9b8084280b1b9fe1374d232dec05a34e8849028a20bfdb56e920dbb5
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.19.1-1ubuntu1.debian.tar.xz' git_2.19.1-1ubuntu1.debian.tar.xz 588176 SHA256:d17e65a301f5bb759592fab6226e3d86a9ec112e4b7e97d5bca561aa73062bc8
```

### `dpkg` source package: `glibc=2.28-0ubuntu1`

Binary Packages:

- `libc-bin=2.28-0ubuntu1`
- `libc6:amd64=2.28-0ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc6/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.28-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.28-0ubuntu1.dsc' glibc_2.28-0ubuntu1.dsc 9340 SHA256:ae17989994ced0ed32cca1d60c523d162dbb6aa0881394ca6f5681f3522f9181
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.28.orig.tar.xz' glibc_2.28.orig.tar.xz 16993220 SHA256:5d7c5795a0d52df5a84c94a8e4aaa4c452e845739e1bab6a963f609f6cb75a4b
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.28-0ubuntu1.debian.tar.xz' glibc_2.28-0ubuntu1.debian.tar.xz 863416 SHA256:4fa456ccc2ff5f093016fabc418c18c505a0cb2e14dcd71ba4e2467ac465d6e7
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.2+dfsg-4.dsc' gmp_6.1.2+dfsg-4.dsc 2123 SHA256:5e9c98e1636344bf0c84710ee564ee6032d6a9db26aa5d29857d65b2a979877c
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.2+dfsg.orig.tar.xz' gmp_6.1.2+dfsg.orig.tar.xz 1804424 SHA256:18016f718f621e7641ddd4e57f8e140391c5183252e5998263ffff59198a65b7
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.2+dfsg-4.debian.tar.xz' gmp_6.1.2+dfsg-4.debian.tar.xz 21416 SHA256:cb25b080d915d9e5a641920f0471b4deb5368af739c7675d887cf290c2cffbe2
```

### `dpkg` source package: `gnupg2=2.2.8-3ubuntu1`

Binary Packages:

- `dirmngr=2.2.8-3ubuntu1`
- `gnupg=2.2.8-3ubuntu1`
- `gnupg-l10n=2.2.8-3ubuntu1`
- `gnupg-utils=2.2.8-3ubuntu1`
- `gpg=2.2.8-3ubuntu1`
- `gpg-agent=2.2.8-3ubuntu1`
- `gpg-wks-client=2.2.8-3ubuntu1`
- `gpg-wks-server=2.2.8-3ubuntu1`
- `gpgconf=2.2.8-3ubuntu1`
- `gpgsm=2.2.8-3ubuntu1`
- `gpgv=2.2.8-3ubuntu1`

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
$ apt-get source -qq --print-uris gnupg2=2.2.8-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.8-3ubuntu1.dsc' gnupg2_2.2.8-3ubuntu1.dsc 3597 SHA256:edc0241788c04e3f6f24e69b447574f9e5c66d86e6be2f583bd4fe67680e3ad7
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.8.orig.tar.bz2' gnupg2_2.2.8.orig.tar.bz2 6632465 SHA256:777b4cb8ced21965a5053d4fa20fe11484f0a478f3d011cef508a1a49db50dcd
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.2.8-3ubuntu1.debian.tar.bz2' gnupg2_2.2.8-3ubuntu1.debian.tar.bz2 71891 SHA256:198b30814f02629cbdbcfe7228c5823cd7691bb83dfe5677528900021d20eac4
```

### `dpkg` source package: `gnutls28=3.6.4-2ubuntu2`

Binary Packages:

- `libgnutls30:amd64=3.6.4-2ubuntu2`

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
$ apt-get source -qq --print-uris gnutls28=3.6.4-2ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.6.4-2ubuntu2.dsc' gnutls28_3.6.4-2ubuntu2.dsc 3483 SHA256:d9b1639a417a709b7628e635ceec3092ea851db0bc082af4e2870ca512aed7b7
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.6.4.orig.tar.xz' gnutls28_3.6.4.orig.tar.xz 8076364 SHA256:c663a792fbc84349c27c36059181f2ca86c9442e75ee8b0ad72f5f9b35deab3a
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.6.4.orig.tar.xz.asc' gnutls28_3.6.4.orig.tar.xz.asc 537 SHA256:c1c7b5dba91f2e286fdee2c66ffeda218daf49347af11b783124171f420561cd
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnutls28/gnutls28_3.6.4-2ubuntu2.debian.tar.xz' gnutls28_3.6.4-2ubuntu2.debian.tar.xz 68108 SHA256:33a419c14d9f71454417c36904d5337c78c5f54681b6bf13326e52dc3206963e
```

### `dpkg` source package: `grep=3.1-3`

Binary Packages:

- `grep=3.1-3`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/grep/3.1-3/


### `dpkg` source package: `gzip=1.6-5ubuntu2`

Binary Packages:

- `gzip=1.6-5ubuntu2`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.6-5ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-5ubuntu2.dsc' gzip_1.6-5ubuntu2.dsc 2048 SHA256:d5ab29247800806709dbd9604ee857a75d5292a603d175ef6c7883a5c6059cc9
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6.orig.tar.gz' gzip_1.6.orig.tar.gz 1074924 SHA256:97eb83b763d9e5ad35f351fe5517e6b71521d7aac7acf3e3cacdb6b1496d8f7e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gzip/gzip_1.6-5ubuntu2.debian.tar.xz' gzip_1.6-5ubuntu2.debian.tar.xz 17216 SHA256:7531f543ec2637b8a39bf19a8d81b24d45ea9eaa5dceca2f03b61c76828e17a0
```

### `dpkg` source package: `heimdal=7.5.0+dfsg-2.1`

Binary Packages:

- `libasn1-8-heimdal:amd64=7.5.0+dfsg-2.1`
- `libgssapi3-heimdal:amd64=7.5.0+dfsg-2.1`
- `libhcrypto4-heimdal:amd64=7.5.0+dfsg-2.1`
- `libheimbase1-heimdal:amd64=7.5.0+dfsg-2.1`
- `libheimntlm0-heimdal:amd64=7.5.0+dfsg-2.1`
- `libhx509-5-heimdal:amd64=7.5.0+dfsg-2.1`
- `libkrb5-26-heimdal:amd64=7.5.0+dfsg-2.1`
- `libroken18-heimdal:amd64=7.5.0+dfsg-2.1`
- `libwind0-heimdal:amd64=7.5.0+dfsg-2.1`

Licenses: (parsed from: `/usr/share/doc/libasn1-8-heimdal/copyright`, `/usr/share/doc/libgssapi3-heimdal/copyright`, `/usr/share/doc/libhcrypto4-heimdal/copyright`, `/usr/share/doc/libheimbase1-heimdal/copyright`, `/usr/share/doc/libheimntlm0-heimdal/copyright`, `/usr/share/doc/libhx509-5-heimdal/copyright`, `/usr/share/doc/libkrb5-26-heimdal/copyright`, `/usr/share/doc/libroken18-heimdal/copyright`, `/usr/share/doc/libwind0-heimdal/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`
- `custom`
- `none`

Source:

```console
$ apt-get source -qq --print-uris heimdal=7.5.0+dfsg-2.1
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_7.5.0+dfsg-2.1.dsc' heimdal_7.5.0+dfsg-2.1.dsc 3612 SHA256:8f6ee9da0ef9999145b1575a20d5ace6a9243bbbeafb87f81c7cbca0fd811739
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_7.5.0+dfsg.orig.tar.gz' heimdal_7.5.0+dfsg.orig.tar.gz 8955005 SHA256:489119b7a1a900b88163765654dc59cba9a321b078fafc76629e2b85ef140867
'http://archive.ubuntu.com/ubuntu/pool/main/h/heimdal/heimdal_7.5.0+dfsg-2.1.debian.tar.xz' heimdal_7.5.0+dfsg-2.1.debian.tar.xz 126680 SHA256:f9b8b44e16a903e2a67bc826b016ad5cbd977404bdbc40dcc5f11203c92df05d
```

### `dpkg` source package: `hostname=3.21`

Binary Packages:

- `hostname=3.21`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris hostname=3.21
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.21.dsc' hostname_3.21.dsc 1398 SHA256:8e61f35d7b3e57833d6110ee22a95af6b12e159bf41a5b659e63b21d01e83121
'http://archive.ubuntu.com/ubuntu/pool/main/h/hostname/hostname_3.21.tar.gz' hostname_3.21.tar.gz 13467 SHA256:566193a99f97a58f80b1537efe207c798bb88436c31c7dfc6dd4471d888a4a4f
```

### `dpkg` source package: `init-system-helpers=1.56`

Binary Packages:

- `init-system-helpers=1.56`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/init-system-helpers/1.56/


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
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9-9.3.dsc' keyutils_1.5.9-9.3.dsc 2093 SHA256:65c003c2e0796a14f7dac94a3f3c8676e8a00a0c393136ae29a1e563a1aa5f42
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9.orig.tar.bz2' keyutils_1.5.9.orig.tar.bz2 74683 SHA256:4da2c5552c688b65ab14d4fd40fbdf720c8b396d8ece643e040cf6e707e083ae
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9-9.3.debian.tar.xz' keyutils_1.5.9-9.3.debian.tar.xz 18236 SHA256:2d4d01cb07ac113341b33190a1eba6524768f575ea0c7309daa656a1f1305ac2
```

### `dpkg` source package: `krb5=1.16.1-1ubuntu1`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.16.1-1ubuntu1`
- `libk5crypto3:amd64=1.16.1-1ubuntu1`
- `libkrb5-3:amd64=1.16.1-1ubuntu1`
- `libkrb5support0:amd64=1.16.1-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.16.1-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.16.1-1ubuntu1.dsc' krb5_1.16.1-1ubuntu1.dsc 3659 SHA256:336da42e5ec3f72e5c93f3b28f1a5a942feb566ae36288aa3bfdb86fec29b8d8
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.16.1.orig.tar.gz' krb5_1.16.1.orig.tar.gz 9477480 SHA256:214ffe394e3ad0c730564074ec44f1da119159d94281bbec541dc29168d21117
'http://archive.ubuntu.com/ubuntu/pool/main/k/krb5/krb5_1.16.1-1ubuntu1.debian.tar.xz' krb5_1.16.1-1ubuntu1.debian.tar.xz 97880 SHA256:532b8f2cf2cd4ea6e2a5041f8a722cd017c27977fac19e59a119e5eaf1908020
```

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libassuan/2.5.1-2/


### `dpkg` source package: `libcap-ng=0.7.9-1build1`

Binary Packages:

- `libcap-ng0:amd64=0.7.9-1build1`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.7.9-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.9-1build1.dsc' libcap-ng_0.7.9-1build1.dsc 2282 SHA256:2a9420a6d43d975b1517392646f126bd71de13356e55737807caa111406d6cf0
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.9.orig.tar.gz' libcap-ng_0.7.9.orig.tar.gz 449038 SHA256:4a1532bcf3731aade40936f6d6a586ed5a66ca4c7455e1338d1f6c3e09221328
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcap-ng/libcap-ng_0.7.9-1build1.debian.tar.xz' libcap-ng_0.7.9-1build1.debian.tar.xz 5696 SHA256:ed501a4b3feb67c196d51217e7399d97cb51cbfe69e41178662da97f646c19c5
```

### `dpkg` source package: `libedit=3.1-20180525-1`

Binary Packages:

- `libedit2:amd64=3.1-20180525-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libedit/3.1-20180525-1/


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
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17027-1.dsc' liberror-perl_0.17027-1.dsc 2209 SHA256:28bccf9e1439f16406eeb72c77d53664d05759da712614abac8d499c037c9197
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17027.orig.tar.gz' liberror-perl_0.17027.orig.tar.gz 33260 SHA256:07b2ac8275dfa04144745a6c1900a596280f862b97d22bab0c5ce02682ebd3be
'http://archive.ubuntu.com/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17027-1.debian.tar.xz' liberror-perl_0.17027-1.debian.tar.xz 4788 SHA256:a183e0f2d015ebc97691773f52253786ee085af457a8f96004e59e7c2821982c
```

### `dpkg` source package: `libffi=3.2.1-9`

Binary Packages:

- `libffi6:amd64=3.2.1-9`

Licenses: (parsed from: `/usr/share/doc/libffi6/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.2.1-9
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-9.dsc' libffi_3.2.1-9.dsc 2000 SHA256:28beaed76f2ce4c6a3ce1527eb07534c8ef4bf624a42c803fea045c416f8faa5
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1.orig.tar.gz' libffi_3.2.1.orig.tar.gz 940837 SHA256:d06ebb8e1d9a22d19e38d63fdb83954253f39bedc5d46232a05645685722ca37
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-9.debian.tar.xz' libffi_3.2.1-9.debian.tar.xz 17148 SHA256:26e3cfd358733832da251778bc615a42b908d7779cf8b8d7fc2bdee4660bbbce
```

### `dpkg` source package: `libgcrypt20=1.8.4-3ubuntu1`

Binary Packages:

- `libgcrypt20:amd64=1.8.4-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.8.4-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.4-3ubuntu1.dsc' libgcrypt20_1.8.4-3ubuntu1.dsc 2999 SHA256:c2eec14c7dc75d3ef5bb0e73e2fd030d0b7d8daa2bdfa1c0e9f7aef86172c8a3
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.4.orig.tar.bz2' libgcrypt20_1.8.4.orig.tar.bz2 2990108 SHA256:f638143a0672628fde0cad745e9b14deb85dffb175709cacc1f4fe24b93f2227
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.4.orig.tar.bz2.asc' libgcrypt20_1.8.4.orig.tar.bz2.asc 534 SHA256:97df94317ad273cffce4e78ad34ad0664819b44496f6528818a4298a691209a3
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.4-3ubuntu1.debian.tar.xz' libgcrypt20_1.8.4-3ubuntu1.debian.tar.xz 29840 SHA256:aacd4f738d13bff7ffaf8f2d9d259dd08d0a739fc78e29aa83e471db9b5c9e21
```

### `dpkg` source package: `libgpg-error=1.32-3`

Binary Packages:

- `libgpg-error0:amd64=1.32-3`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.32-3
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.32-3.dsc' libgpg-error_1.32-3.dsc 2133 SHA256:bae1121597e6f262dd73d1d436fd1b068d3efe3dae3d49efbc615aebc3ca657c
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.32.orig.tar.bz2' libgpg-error_1.32.orig.tar.bz2 904382 SHA256:c345c5e73cc2332f8d50db84a2280abfb1d8f6d4f1858b9daa30404db44540ca
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.32.orig.tar.bz2.asc' libgpg-error_1.32.orig.tar.bz2.asc 534 SHA256:dbf20a0c4bbc4fccfe070c55959739e5bf4d1bec01f3c3cd46e262003685b466
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.32-3.debian.tar.xz' libgpg-error_1.32-3.debian.tar.xz 16152 SHA256:ce967f6efdb262f3c2b53badedb4313f0143edc6d9313d7abe4151f4326cfcc3
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.0.5-1.dsc' libidn2_2.0.5-1.dsc 2444 SHA256:e35fbdf3b14d0a46e62ebde16345d6e70700972791cfc59df5d9d9b7088f7284
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.0.5.orig.tar.gz' libidn2_2.0.5.orig.tar.gz 2091929 SHA256:53f69170886f1fa6fa5b332439c7a77a7d22626a82ef17e2c1224858bb4ca2b8
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.0.5-1.debian.tar.xz' libidn2_2.0.5-1.debian.tar.xz 10285396 SHA256:e86f9ef6dfa45a35008851a688e020cbe0a2772437cdaa6381ed2704bf1e774d
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

### `dpkg` source package: `libpsl=0.20.2-2`

Binary Packages:

- `libpsl5:amd64=0.20.2-2`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.20.2-2
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.20.2-2.dsc' libpsl_0.20.2-2.dsc 1637 SHA256:ae401852522d748f1222b91734bc5bd7c6db0de843dd675adc180f2a1884c94d
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.20.2.orig.tar.gz' libpsl_0.20.2.orig.tar.gz 8590430 SHA256:94d2b5e00e9aa761ae7efbaa67edc00d5298487ed9706eb4789e349012993c31
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.20.2-2.debian.tar.xz' libpsl_0.20.2-2.debian.tar.xz 9920 SHA256:1f008454fdb973964202020fb700d5028e001b7eaa4e77eeab8ebc99b749ea51
```

### `dpkg` source package: `libseccomp=2.3.3-3ubuntu2`

Binary Packages:

- `libseccomp2:amd64=2.3.3-3ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.3.3-3ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.3.3-3ubuntu2.dsc' libseccomp_2.3.3-3ubuntu2.dsc 2563 SHA256:010a8dd93ea4450fe13d3598abbdcd2de79e31e303efba37bd1129b288340a07
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.3.3.orig.tar.gz' libseccomp_2.3.3.orig.tar.gz 564546 SHA256:7fc28f4294cc72e61c529bedf97e705c3acf9c479a8f1a3028d4cd2ca9f3b155
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.3.3-3ubuntu2.debian.tar.xz' libseccomp_2.3.3-3ubuntu2.debian.tar.xz 18920 SHA256:92afd35c3b492b2629d1a9b9f82ca52346fd47083120582ae6cc6849af8d259c
```

### `dpkg` source package: `libselinux=2.8-1build2`

Binary Packages:

- `libselinux1:amd64=2.8-1build2`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.8-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.8-1build2.dsc' libselinux_2.8-1build2.dsc 2717 SHA256:a7e82a8971b43be47a01120482a1c3419740259bd6c7e9593304f751345d29ae
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.8.orig.tar.gz' libselinux_2.8.orig.tar.gz 187759 SHA256:31db96ec7643ce10912b3c3f98506a08a9116dcfe151855fd349c3fda96187e1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.8-1build2.debian.tar.xz' libselinux_2.8-1build2.debian.tar.xz 23140 SHA256:9b80b307775d93de7c07e0d7d9d63cede0ad78cd927c21850e01e614d4b03102
```

### `dpkg` source package: `libsemanage=2.8-1build2`

Binary Packages:

- `libsemanage-common=2.8-1build2`
- `libsemanage1:amd64=2.8-1build2`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libsepol=2.8-1`

Binary Packages:

- `libsepol1:amd64=2.8-1`

Licenses: (parsed from: `/usr/share/doc/libsepol1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsepol=2.8-1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.8-1.dsc' libsepol_2.8-1.dsc 1792 SHA256:37b0b79ab0f7533c194272809ccb3f3c5ff788536f66254c0d405e2e8b2b270e
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.8.orig.tar.gz' libsepol_2.8.orig.tar.gz 473384 SHA256:3ad6916a8352bef0bad49acc8037a5f5b48c56f94e4cb4e1959ca475fa9d24d6
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsepol/libsepol_2.8-1.debian.tar.xz' libsepol_2.8-1.debian.tar.xz 14076 SHA256:7b8d0b47396c96830754db2e5b679d294486aeffd93cfd21ac68202031374a00
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.13-3.dsc' libtasn1-6_4.13-3.dsc 2574 SHA256:15a984daba0bc64819a1203cd28a1e869a30e0edde227237e4cdcfbc86131227
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.13.orig.tar.gz' libtasn1-6_4.13.orig.tar.gz 1891703 SHA256:7e528e8c317ddd156230c4e31d082cd13e7ddeb7a54824be82632209550c8cca
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.13.orig.tar.gz.asc' libtasn1-6_4.13.orig.tar.gz.asc 774 SHA256:90261376528edf44831d1369847088cc2fb48669860d343961daca42e674b226
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libtasn1-6/libtasn1-6_4.13-3.debian.tar.xz' libtasn1-6_4.13-3.debian.tar.xz 63384 SHA256:1428c31d3d900d8fa1946fc29d9d2839c73c7a4c0ebff7a2571c134aef53c310
```

### `dpkg` source package: `libunistring=0.9.10-1ubuntu1`

Binary Packages:

- `libunistring2:amd64=0.9.10-1ubuntu1`

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
$ apt-get source -qq --print-uris libunistring=0.9.10-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.10-1ubuntu1.dsc' libunistring_0.9.10-1ubuntu1.dsc 2234 SHA256:edff73f96fb8493119ab2981e393527bf9193285eff4e555b43c2c9583d875be
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.10.orig.tar.xz' libunistring_0.9.10.orig.tar.xz 2051320 SHA256:eb8fb2c3e4b6e2d336608377050892b54c3c983b646c561836550863003c05d7
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.10.orig.tar.xz.asc' libunistring_0.9.10.orig.tar.xz.asc 1310 SHA256:e1606f691034fa21b00e08269622743547c16d21cca6c8a64156b4774a49e78e
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.10-1ubuntu1.debian.tar.xz' libunistring_0.9.10-1ubuntu1.debian.tar.xz 40420 SHA256:a282ceb3a611275a7b1d582d6f8e7b3997dfc48d023e276354ac0f836c967e09
```

### `dpkg` source package: `libzstd=1.3.5+dfsg-1ubuntu1`

Binary Packages:

- `libzstd1:amd64=1.3.5+dfsg-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `zlib`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `lsb=9.20170808ubuntu1`

Binary Packages:

- `lsb-base=9.20170808ubuntu1`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris lsb=9.20170808ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_9.20170808ubuntu1.dsc' lsb_9.20170808ubuntu1.dsc 2126 SHA256:9b98df7b442472d172612bf6855b4dbc3cd6d5892d8073605dda786fec94af5f
'http://archive.ubuntu.com/ubuntu/pool/main/l/lsb/lsb_9.20170808ubuntu1.tar.xz' lsb_9.20170808ubuntu1.tar.xz 45492 SHA256:b26bcb746e0bff05ad3e15dfbeb0ba7ea2a8d031f765a6cfa568c57d14c522c4
```

### `dpkg` source package: `lz4=1.8.2-1ubuntu1`

Binary Packages:

- `liblz4-1:amd64=1.8.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=1.8.2-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.8.2-1ubuntu1.dsc' lz4_1.8.2-1ubuntu1.dsc 2068 SHA256:a7b0a40453184ec996c246c674814dd3fb230eabb1892881860ccac3a7442c94
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.8.2.orig.tar.gz' lz4_1.8.2.orig.tar.gz 320742 SHA256:0963fbe9ee90acd1d15e9f09e826eaaf8ea0312e854803caf2db0a6dd40f4464
'http://archive.ubuntu.com/ubuntu/pool/main/l/lz4/lz4_1.8.2-1ubuntu1.debian.tar.xz' lz4_1.8.2-1ubuntu1.debian.tar.xz 11416 SHA256:38c6c2887355724ee334b8eff368301520119db6cfddc5ad02d0db5c6d690359
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

### `dpkg` source package: `mercurial=4.6.1-1ubuntu1`

Binary Packages:

- `mercurial=4.6.1-1ubuntu1`
- `mercurial-common=4.6.1-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris mercurial=4.6.1-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_4.6.1-1ubuntu1.dsc' mercurial_4.6.1-1ubuntu1.dsc 2757 SHA256:687bbe183ca3bd1be0e617e9e3d36aacf1675ade615f8fbc86c405324dfadd64
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_4.6.1.orig.tar.gz' mercurial_4.6.1.orig.tar.gz 6407380 SHA256:89fa8ecbc8aa6e48e98f9803a1683ba91367124295dba2407b28c34ca621108d
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_4.6.1.orig.tar.gz.asc' mercurial_4.6.1.orig.tar.gz.asc 833 SHA256:a7c61e69edce0c63660a7fe2fec69c981b24c7684495403585de87794a62188b
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_4.6.1-1ubuntu1.debian.tar.xz' mercurial_4.6.1-1ubuntu1.debian.tar.xz 61876 SHA256:6e7c7e358bc07c42814cf8da2532dbfb4d48b9f16649ca37473d32253c9c4a0b
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

### `dpkg` source package: `ncurses=6.1+20180210-4ubuntu1`

Binary Packages:

- `libncurses6:amd64=6.1+20180210-4ubuntu1`
- `libncursesw6:amd64=6.1+20180210-4ubuntu1`
- `libtinfo6:amd64=6.1+20180210-4ubuntu1`
- `ncurses-base=6.1+20180210-4ubuntu1`
- `ncurses-bin=6.1+20180210-4ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=6.1+20180210-4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.1+20180210-4ubuntu1.dsc' ncurses_6.1+20180210-4ubuntu1.dsc 4726 SHA256:bd0f5d25466569bf9875373d3f4afd06dace700eeb82dc6ad75ef7391ede15a1
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.1+20180210.orig.tar.gz' ncurses_6.1+20180210.orig.tar.gz 3383097 SHA256:f1e67ce104ddfa1ec83cd58f143398eb52b5911b91740d755c39f51d26aafd0f
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.1+20180210.orig.tar.gz.asc' ncurses_6.1+20180210.orig.tar.gz.asc 251 SHA256:06bf49c91efa54297e8e5cc6df84267adbe22181a3c903cb008c040257af00b2
'http://archive.ubuntu.com/ubuntu/pool/main/n/ncurses/ncurses_6.1+20180210-4ubuntu1.debian.tar.xz' ncurses_6.1+20180210-4ubuntu1.debian.tar.xz 62924 SHA256:b93fb83a97e2d1b8166a160ba248aa34e392e5e339932cfd8614f4e74e7f7628
```

### `dpkg` source package: `netbase=5.5`

Binary Packages:

- `netbase=5.5`

Licenses: (parsed from: `/usr/share/doc/netbase/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris netbase=5.5
'http://archive.ubuntu.com/ubuntu/pool/main/n/netbase/netbase_5.5.dsc' netbase_5.5.dsc 1297 SHA256:eba0f70b861291aadffc990b4fa39cd59d9cdb0a0ed63399eac2af217b9fc0cd
'http://archive.ubuntu.com/ubuntu/pool/main/n/netbase/netbase_5.5.tar.xz' netbase_5.5.tar.xz 31668 SHA256:309bddc69a43b98e5a450992b70cdfc0e3d1afb9107bc631d04b0714be98f88b
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.4.1~rc1-1.dsc' nettle_3.4.1~rc1-1.dsc 2295 SHA256:ab711e28d9020027e0ceb30f050011b9b8143a5fb2576651aa05cc2d42c730fe
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.4.1~rc1.orig.tar.gz' nettle_3.4.1~rc1.orig.tar.gz 1946834 SHA256:5a380e9a7b5e4dde2c1aff4de090ed365500046c7c24c2de06933ed09262c1b5
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.4.1~rc1.orig.tar.gz.asc' nettle_3.4.1~rc1.orig.tar.gz.asc 619 SHA256:330e8930e9dd4f45a4088ab040efa25d10a9b2cb59063ca633bf577c60f3ac5a
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.4.1~rc1-1.debian.tar.xz' nettle_3.4.1~rc1-1.debian.tar.xz 19944 SHA256:1a1ff44d507291aa6df8a61b1666312fba4b563f94fd44f66d9d5f41583bfe60
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.35.1-1.dsc' nghttp2_1.35.1-1.dsc 2560 SHA256:94fcfae8c2260d727cce48821d4d3b8e84e2049554b6f66a34f72f78becd66f5
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.35.1.orig.tar.bz2' nghttp2_1.35.1.orig.tar.bz2 1896676 SHA256:55edce494fa2e50a730f1c2377f13694b8813a59d7ff43b4f3060dc5664f1308
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.35.1-1.debian.tar.xz' nghttp2_1.35.1-1.debian.tar.xz 12516 SHA256:a8d6bd0c5bde6046430db9dc8087fb3e4683b708d5ca049758c19ca6d7f8f9f4
```

### `dpkg` source package: `npth=1.6-1`

Binary Packages:

- `libnpth0:amd64=1.6-1`

Licenses: (parsed from: `/usr/share/doc/libnpth0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris npth=1.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.6-1.dsc' npth_1.6-1.dsc 1925 SHA256:2c327ce494f702482e79ed620445cba303c4449dd0768fecee3ee7d5ade2544a
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.6.orig.tar.bz2' npth_1.6.orig.tar.bz2 300486 SHA256:1393abd9adcf0762d34798dc34fdcf4d0d22a8410721e76f1e3afcd1daa4e2d1
'http://archive.ubuntu.com/ubuntu/pool/main/n/npth/npth_1.6-1.debian.tar.xz' npth_1.6-1.debian.tar.xz 10532 SHA256:d312d4a3cf1d082e2f2cf3ea752c41d34f7e120f77a941c6c1680e6093834353
```

### `dpkg` source package: `openldap=2.4.46+dfsg-5ubuntu3`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.46+dfsg-5ubuntu3`
- `libldap-common=2.4.46+dfsg-5ubuntu3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.46+dfsg-5ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.46+dfsg-5ubuntu3.dsc' openldap_2.4.46+dfsg-5ubuntu3.dsc 2818 SHA256:e8e9e72b107bb9074f007b89216866c235137dbaa3cecdbc39917a7c2b5101cd
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.46+dfsg.orig.tar.gz' openldap_2.4.46+dfsg.orig.tar.gz 4873832 SHA256:e93cb511f6bce162c27502d0d240e6410a8f14e72c47ddddb4e69b25b7c538e4
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.46+dfsg-5ubuntu3.debian.tar.xz' openldap_2.4.46+dfsg-5ubuntu3.debian.tar.xz 175460 SHA256:a7f637c7c36586245c4222f64e9b82bfb72fdab35b7e436f70c3b363eebfe24d
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_7.9p1-4.dsc' openssh_7.9p1-4.dsc 3177 SHA256:7b9711203267e94b6af7ee58422c77540f708271d6b6baa1d42f925b1bb1e7d8
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_7.9p1.orig.tar.gz' openssh_7.9p1.orig.tar.gz 1565384 SHA256:6b4b3ba2253d84ed3771c8050728d597c91cfce898713beb7b64a305b6f11aad
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_7.9p1.orig.tar.gz.asc' openssh_7.9p1.orig.tar.gz.asc 683 SHA256:4fd584498595450d68f5514b3d79eb14425a3d6aa9e9021d9e928fdd7b4469eb
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_7.9p1-4.debian.tar.xz' openssh_7.9p1-4.debian.tar.xz 163620 SHA256:2e563309ffaf4dac9ef915008bd5f0a501bb4f606e363daae0bee51d8622e022
```

### `dpkg` source package: `openssl=1.1.1a-1ubuntu2`

Binary Packages:

- `libssl1.1:amd64=1.1.1a-1ubuntu2`
- `openssl=1.1.1a-1ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.1.1a-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.1a-1ubuntu2.dsc' openssl_1.1.1a-1ubuntu2.dsc 2396 SHA256:49be03bfbeacc099aff19973d26dfa10e9371afa6dd48190ae087564ad5ebc24
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.1a.orig.tar.gz' openssl_1.1.1a.orig.tar.gz 8350547 SHA256:fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.1a.orig.tar.gz.asc' openssl_1.1.1a.orig.tar.gz.asc 488 SHA256:2e8bbc4766a3d72857538e99074433eae16bf32530b08625d65312bfc569dd7b
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.1.1a-1ubuntu2.debian.tar.xz' openssl_1.1.1a-1ubuntu2.debian.tar.xz 84260 SHA256:f6c88a6d638eb64eb643a4d81cfc227fea6842f991a55273d4cdfca0c513e2c8
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.14-2.dsc' p11-kit_0.23.14-2.dsc 2434 SHA256:2ea1f051714e892ee7a25d90c7f99185a2e33e15e0f7a5dce662eadb7428b66c
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.14.orig.tar.gz' p11-kit_0.23.14.orig.tar.gz 1266595 SHA256:1cb9fa6d237539f25f62f4c3d4ec71a1c8e0772957ec45ec5af92134129e0d70
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.14.orig.tar.gz.asc' p11-kit_0.23.14.orig.tar.gz.asc 900 SHA256:4ddc9b86cfed20c5456eb19ba3bc229ec9e0292a6b556c5727f94872b6039d97
'http://archive.ubuntu.com/ubuntu/pool/main/p/p11-kit/p11-kit_0.23.14-2.debian.tar.xz' p11-kit_0.23.14-2.debian.tar.xz 22068 SHA256:da76f34e8deb921a4efac16ef2f0ddfcfc8c0faecb1293ef70ea364f28e21fe0
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

### `dpkg` source package: `pcre3=2:8.39-11`

Binary Packages:

- `libpcre3:amd64=2:8.39-11`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-11
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-11.dsc' pcre3_8.39-11.dsc 2226 SHA256:50738a8e55d4bdc10fd6eecc623170d0657bd15805e630d82bc90d722fcbc435
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA256:b858099f82483031ee02092711689e7245586ada49e534a06e678b8ea9549e8b
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-11.debian.tar.gz' pcre3_8.39-11.debian.tar.gz 26414 SHA256:de1f66246fe7b4e85fba0f9e3bac69bdf3271a9c5c6b7ac0661b20051c012883
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.28.1-3.dsc' perl_5.28.1-3.dsc 2823 SHA256:f58dbac4eb5cf2bf112dc750a92a8bf4499c2d65ab18df465f068cc5f0e38be3
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.28.1.orig-regen-configure.tar.xz' perl_5.28.1.orig-regen-configure.tar.xz 411944 SHA256:5873b81af4514d3910ab1a8267b15ff8c0e2100dbae4edfd10b65ef72cd31ef8
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.28.1.orig.tar.xz' perl_5.28.1.orig.tar.xz 12372080 SHA256:fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d
'http://archive.ubuntu.com/ubuntu/pool/main/p/perl/perl_5.28.1-3.debian.tar.xz' perl_5.28.1-3.debian.tar.xz 171304 SHA256:3d002ef47e9d6e5b978e96b109e2f1a25e2133a6ce30e58c33493633e655cf45
```

### `dpkg` source package: `pinentry=1.1.0-1build2`

Binary Packages:

- `pinentry-curses=1.1.0-1build2`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pinentry=1.1.0-1build2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.0-1build2.dsc' pinentry_1.1.0-1build2.dsc 2934 SHA256:7d64b1183c3bd53711edc67b28bc75027166d4f274f8634044d9e8d3c41bbeb8
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.0.orig.tar.bz2' pinentry_1.1.0.orig.tar.bz2 467702 SHA256:68076686fa724a290ea49cdf0d1c0c1500907d1b759a3bcbfbec0293e8f56570
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.0.orig.tar.bz2.asc' pinentry_1.1.0.orig.tar.bz2.asc 534 SHA256:0e3a7633b9fddf9c01c3dcf74aeb94888cc6d5d233f0b8357b0b9c1a1fed9a73
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.1.0-1build2.debian.tar.xz' pinentry_1.1.0-1build2.debian.tar.xz 15556 SHA256:c23d527bcf968fa9e9616490dc6bff98c433bdcdfbe2b17185fd1661c7c031cc
```

### `dpkg` source package: `procps=2:3.3.15-2ubuntu1`

Binary Packages:

- `libprocps7:amd64=2:3.3.15-2ubuntu1`
- `procps=2:3.3.15-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libprocps7/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris procps=2:3.3.15-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.15-2ubuntu1.dsc' procps_3.3.15-2ubuntu1.dsc 2240 SHA256:8f911059c003f732e93b17f719b0ddd732861c22ff967072063009b348043f99
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.15.orig.tar.xz' procps_3.3.15.orig.tar.xz 903372 SHA256:82e8aa55b65eac116eee05f00d2a884a6374760d57100edd429d6e9b4953458d
'http://archive.ubuntu.com/ubuntu/pool/main/p/procps/procps_3.3.15-2ubuntu1.debian.tar.xz' procps_3.3.15-2ubuntu1.debian.tar.xz 32060 SHA256:3b46a9c6c143f9d2a6a27983a6d706f127bcb473f2c013e6ee1da1ab5ab707d3
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-defaults/python-defaults_2.7.15-3.dsc' python-defaults_2.7.15-3.dsc 2961 SHA256:a4072c1b0eb94df5516edf2de5faebcc15b8465dc42ed70ea810bddf28a6bb11
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-defaults/python-defaults_2.7.15-3.tar.gz' python-defaults_2.7.15-3.tar.gz 1398803 SHA256:beb52f958d2a17056e145083715fdb9ed4b3422051d9692243cdbb26798a0c8a
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.15-5.dsc' python2.7_2.7.15-5.dsc 3344 SHA256:1e74da7fb9677381eed583dc7110773ec1065127ab7440ee0598346d065ca78f
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.15.orig.tar.gz' python2.7_2.7.15.orig.tar.gz 17496336 SHA256:18617d1f15a380a919d517630a9cd85ce17ea602f9bbdc58ddc672df4b0239db
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.15-5.diff.gz' python2.7_2.7.15-5.diff.gz 565412 SHA256:87adee4eb59bff1b74806a870a55a8a09345a29c12a1499b10428152f1dff095
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_7.0-5.dsc' readline_7.0-5.dsc 2419 SHA256:4a804235e91ced3b957b0772101ca3992f5ad051e6540b8c41a1f98a06e84033
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_7.0.orig.tar.gz' readline_7.0.orig.tar.gz 2910016 SHA256:750d437185286f40a369e1e4f4764eda932b9459b5ec9a731628393dd3d32334
'http://archive.ubuntu.com/ubuntu/pool/main/r/readline/readline_7.0-5.debian.tar.xz' readline_7.0-5.debian.tar.xz 29992 SHA256:5c1cc7396a670ce7e6e4c0bc36e8d3067b7642bea5b30fc3ff22bf8e65d2ee80
```

### `dpkg` source package: `rtmpdump=2.4+20151223.gitfa8646d.1-2`

Binary Packages:

- `librtmp1:amd64=2.4+20151223.gitfa8646d.1-2`

Licenses: (parsed from: `/usr/share/doc/librtmp1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris rtmpdump=2.4+20151223.gitfa8646d.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1-2.dsc' rtmpdump_2.4+20151223.gitfa8646d.1-2.dsc 2299 SHA256:a296819cd2ab5880b67ad963ef0867cb10e462f4403e52565aa863eb05bb1370
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz' rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz 142213 SHA256:5c032f5c8cc2937eb55a81a94effdfed3b0a0304b6376147b86f951e225e3ab5
'http://archive.ubuntu.com/ubuntu/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1-2.debian.tar.xz' rtmpdump_2.4+20151223.gitfa8646d.1-2.debian.tar.xz 8096 SHA256:26d47de07d16285e4ca55b0828cbbf1ba35e671f9b3500a87e301fe755d26882
```

### `dpkg` source package: `sed=4.5-2`

Binary Packages:

- `sed=4.5-2`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/sed/4.5-2/


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

### `dpkg` source package: `sqlite3=3.26.0-3`

Binary Packages:

- `libsqlite3-0:amd64=3.26.0-3`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris sqlite3=3.26.0-3
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.26.0-3.dsc' sqlite3_3.26.0-3.dsc 2397 SHA256:ef8779a2e3f2c7e2669c4009514af2dde10dbedb961d5dac33d3075f577cdf2d
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.26.0.orig-www.tar.xz' sqlite3_3.26.0.orig-www.tar.xz 5572636 SHA256:11c2813fafaae6efbb6a6c62fc4c63425c0de626fb0893bfa90431f295da84bd
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.26.0.orig.tar.xz' sqlite3_3.26.0.orig.tar.xz 6691672 SHA256:f4181c560e02cb435c0396c00eb0645e88f8fc06078ee20fe4a3216f6785d46b
'http://archive.ubuntu.com/ubuntu/pool/main/s/sqlite3/sqlite3_3.26.0-3.debian.tar.xz' sqlite3_3.26.0-3.debian.tar.xz 18984 SHA256:bc1b0bb37ba1e9af32065cb42e0a6d890a5794063efcbcff9e974692590bee25
```

### `dpkg` source package: `subversion=1.10.0-2ubuntu3`

Binary Packages:

- `libsvn1:amd64=1.10.0-2ubuntu3`
- `subversion=1.10.0-2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libsvn1/copyright`, `/usr/share/doc/subversion/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris subversion=1.10.0-2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.10.0-2ubuntu3.dsc' subversion_1.10.0-2ubuntu3.dsc 3438 SHA256:590a682afad0b4af370900d7496fce9c6a9fbbe5d72c3fda972732429b1bcdec
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.10.0.orig.tar.gz' subversion_1.10.0.orig.tar.gz 11338093 SHA256:6c736a8187a195020e181fa1a680847db8373d07401ceb766160e6e39437a9e9
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.10.0.orig.tar.gz.asc' subversion_1.10.0.orig.tar.gz.asc 3428 SHA256:687db774e6b93fcee8b6213627b306e2c62b00aee5855feac6e508044cad966f
'http://archive.ubuntu.com/ubuntu/pool/universe/s/subversion/subversion_1.10.0-2ubuntu3.debian.tar.xz' subversion_1.10.0-2ubuntu3.debian.tar.xz 2407216 SHA256:6ea12d08a1903039e7c58fea862a25352f25da29a6980046f1effbde8ec2c775
```

### `dpkg` source package: `systemd=239-7ubuntu15`

Binary Packages:

- `libsystemd0:amd64=239-7ubuntu15`
- `libudev1:amd64=239-7ubuntu15`

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
$ apt-get source -qq --print-uris systemd=239-7ubuntu15
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_239-7ubuntu15.dsc' systemd_239-7ubuntu15.dsc 4627 SHA256:d9023913beef852ee1956db37d162068ed00c108d45c659ccfa1bda53dfcb5bd
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_239.orig.tar.gz' systemd_239.orig.tar.gz 7157293 SHA256:8a11b1b07d620f4c06a16e95bba4dd2a97e90efdf2a5ba47ed0a935085787a14
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_239-7ubuntu15.debian.tar.xz' systemd_239-7ubuntu15.debian.tar.xz 196800 SHA256:d5abadca0d946e94d7e14da983d1f821773557fca6cec80ac05c3a4e550a02d0
```

### `dpkg` source package: `sysvinit=2.88dsf-59.10ubuntu2`

Binary Packages:

- `sysvinit-utils=2.88dsf-59.10ubuntu2`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.88dsf-59.10ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf-59.10ubuntu2.dsc' sysvinit_2.88dsf-59.10ubuntu2.dsc 2135 SHA256:733c8d1aacc6bb4eaa7c70564ea3ec2b22b3601eabe1542d45bc35eaca5de8c5
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf.orig.tar.gz' sysvinit_2.88dsf.orig.tar.gz 125330 SHA256:b016f937958d2809a020d407e1287bdc09abf1d44efaa96530e2ea57f544f4e8
'http://archive.ubuntu.com/ubuntu/pool/main/s/sysvinit/sysvinit_2.88dsf-59.10ubuntu2.debian.tar.xz' sysvinit_2.88dsf-59.10ubuntu2.debian.tar.xz 132916 SHA256:35b4edffb27e07d1fc9b69a782406cdb58b0b1f6d4503ce4ed8b87c35199e00a
```

### `dpkg` source package: `tar=1.30+dfsg-3`

Binary Packages:

- `tar=1.30+dfsg-3`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.30+dfsg-3
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.30+dfsg-3.dsc' tar_1.30+dfsg-3.dsc 1951 SHA256:27e99fe95519540cb486898b96be3b7c403cecdd3d104545130e3c668ce67af8
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.30+dfsg.orig.tar.xz' tar_1.30+dfsg.orig.tar.xz 1883220 SHA256:c02f3747ffe02017878303dde8b78e79cd220364c5e8048cf92320232e38912d
'http://archive.ubuntu.com/ubuntu/pool/main/t/tar/tar_1.30+dfsg-3.debian.tar.xz' tar_1.30+dfsg-3.debian.tar.xz 19128 SHA256:ca5cd0290b368ecf60023d14228d3030370bbf689c4aa5b4374c8d4ef3818abc
```

### `dpkg` source package: `ubuntu-keyring=2018.09.18.1`

Binary Packages:

- `ubuntu-keyring=2018.09.18.1`

Licenses: (parsed from: `/usr/share/doc/ubuntu-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ubuntu-keyring=2018.09.18.1
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2018.09.18.1.dsc' ubuntu-keyring_2018.09.18.1.dsc 1471 SHA256:326b0cad35b291c233fa09f4ead078c80949080a017442455567207e0e57d4ea
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2018.09.18.1.tar.gz' ubuntu-keyring_2018.09.18.1.tar.gz 34263 SHA256:4e8534bd70274b26d835808095b95b7ee5448f5f10234fb6ec39c92c8c155d33
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

### `dpkg` source package: `utf8proc=2.2.0-1`

Binary Packages:

- `libutf8proc2:amd64=2.2.0-1`

Licenses: (parsed from: `/usr/share/doc/libutf8proc2/copyright`)

- `Expat`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris utf8proc=2.2.0-1
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.2.0-1.dsc' utf8proc_2.2.0-1.dsc 2094 SHA256:e410b68eeb6c16e7b9db86d654b1d96f561d94ecd0b72b3da615e2e1c0b7d611
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.2.0.orig.tar.gz' utf8proc_2.2.0.orig.tar.gz 156334 SHA256:3f8fd1dbdb057ee5ba584a539d5cd1b3952141c0338557cb0bdf8cb9cfed5dbf
'http://archive.ubuntu.com/ubuntu/pool/universe/u/utf8proc/utf8proc_2.2.0-1.debian.tar.xz' utf8proc_2.2.0-1.debian.tar.xz 4992 SHA256:7e4478c75cb1f04b23346d4485a64bd65d7ba8d52387d5fef55c4c4066a8eba0
```

### `dpkg` source package: `util-linux=2.32-0.1ubuntu2`

Binary Packages:

- `bsdutils=1:2.32-0.1ubuntu2`
- `fdisk=2.32-0.1ubuntu2`
- `libblkid1:amd64=2.32-0.1ubuntu2`
- `libfdisk1:amd64=2.32-0.1ubuntu2`
- `libmount1:amd64=2.32-0.1ubuntu2`
- `libsmartcols1:amd64=2.32-0.1ubuntu2`
- `libuuid1:amd64=2.32-0.1ubuntu2`
- `mount=2.32-0.1ubuntu2`
- `util-linux=2.32-0.1ubuntu2`

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
$ apt-get source -qq --print-uris util-linux=2.32-0.1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.32-0.1ubuntu2.dsc' util-linux_2.32-0.1ubuntu2.dsc 4126 SHA256:fd77d4d08bf94005f6c7326d9ad7e6085741a443dae8f85bff920d3abfef0a5d
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.32.orig.tar.xz' util-linux_2.32.orig.tar.xz 4550128 SHA256:6c7397abc764e32e8159c2e96042874a190303e77adceb4ac5bd502a272a4734
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.32-0.1ubuntu2.debian.tar.xz' util-linux_2.32-0.1ubuntu2.debian.tar.xz 82680 SHA256:486ad9016a5ed05565c2ddbf5301ec760ba728b6113f32b8baaac54d0315d3b6
```

### `dpkg` source package: `wget=1.19.5-2ubuntu1`

Binary Packages:

- `wget=1.19.5-2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.19.5-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.19.5-2ubuntu1.dsc' wget_1.19.5-2ubuntu1.dsc 2272 SHA256:09b351293276f73864b871a552797745498e618318db1b956620e72a83fe103c
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.19.5.orig.tar.gz' wget_1.19.5.orig.tar.gz 4455797 SHA256:b39212abe1a73f2b28f4c6cb223c738559caac91d6e416a6d91d4b9d55c9faee
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.19.5.orig.tar.gz.asc' wget_1.19.5.orig.tar.gz.asc 879 SHA256:f2058db1f155fc5564de797d11dc40f5fa721f35e36e02bf06332771db150ef7
'http://archive.ubuntu.com/ubuntu/pool/main/w/wget/wget_1.19.5-2ubuntu1.debian.tar.xz' wget_1.19.5-2ubuntu1.debian.tar.xz 63976 SHA256:c13117e9ddba6d405f24f8f0acf531aae84f6fd080a107e7eef8ea329ee5014f
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2-1.3.dsc' xz-utils_5.2.2-1.3.dsc 2575 SHA256:3ea4e6a32f6265b152f89ceafe78c8839e5f4bb1cad137b159fe2013817f9342
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz' xz-utils_5.2.2.orig.tar.xz 1016404 SHA256:f341b1906ebcdde291dd619399ae944600edc9193619dd0c0110a5f05bfcc89e
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2.orig.tar.xz.asc' xz-utils_5.2.2.orig.tar.xz.asc 543 SHA256:2cc0575556e1331b3f468e6e7dca5969ce86efcc315d62672279b4e68b2e449f
'http://archive.ubuntu.com/ubuntu/pool/main/x/xz-utils/xz-utils_5.2.2-1.3.debian.tar.xz' xz-utils_5.2.2-1.3.debian.tar.xz 108680 SHA256:d76c3acf39d0999c14384695394970e8f98853fd6736ba91972d3e67106bc6f6
```

### `dpkg` source package: `zlib=1:1.2.11.dfsg-0ubuntu2`

Binary Packages:

- `zlib1g:amd64=1:1.2.11.dfsg-0ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris zlib=1:1.2.11.dfsg-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-0ubuntu2.dsc' zlib_1.2.11.dfsg-0ubuntu2.dsc 2676 SHA256:e733161caf3c6864deec55f40f80c0872f7c83bd9c6e9f937472f227ad912281
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg.orig.tar.xz' zlib_1.2.11.dfsg.orig.tar.xz 287216 SHA256:881c8a90f488def83488aa91fd68563c023013a4b9b07a040f6da2727d76ad60
'http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.11.dfsg-0ubuntu2.debian.tar.xz' zlib_1.2.11.dfsg-0ubuntu2.debian.tar.xz 18344 SHA256:afad42904f793d13a0b631e082e575d90a7c7c443973d08a00061a9bbb5ca380
```
