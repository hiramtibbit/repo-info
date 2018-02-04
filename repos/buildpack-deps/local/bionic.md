# `buildpack-deps:bionic`

## Docker Metadata

- Image ID: `sha256:a10db5eab42e5da4fb714cd63abc9c6185923f69ea384143f1221c14d5df00f2`
- Created: `2018-01-25T23:08:18.006883486Z`
- Virtual Size: ~ 621.97 Mb  
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

### `dpkg` source package: `apr-util=1.6.1-1`

Binary Packages:

- `libaprutil1:amd64=1.6.1-1`

Licenses: (parsed from: `/usr/share/doc/libaprutil1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr-util=1.6.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1-1.dsc' apr-util_1.6.1-1.dsc 2865 SHA256:4c9f454e9750b5acda7e8959700b725a0f6256d7da0cb54ae6d5a4b61aac8deb
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2' apr-util_1.6.1.orig.tar.bz2 428595 SHA256:d3e12f7b6ad12687572a3a39475545a072608f4ba03a6ce8a3778f607dd0035b
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1.orig.tar.bz2.asc' apr-util_1.6.1.orig.tar.bz2.asc 801 SHA256:47837b605290c0d7659b73734e4a9d5e6c0c24c13185cd4d91837afe63c07ca4
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr-util/apr-util_1.6.1-1.debian.tar.xz' apr-util_1.6.1-1.debian.tar.xz 210872 SHA256:5d0446d5832a62d6428ff408c571ff693f2aba604b2606c8f2463b2a6d8ae217
```

### `dpkg` source package: `apr=1.6.3-1`

Binary Packages:

- `libapr1:amd64=1.6.3-1`

Licenses: (parsed from: `/usr/share/doc/libapr1/copyright`)

- `Apache-2.0`

Source:

```console
$ apt-get source -qq --print-uris apr=1.6.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.3-1.dsc' apr_1.6.3-1.dsc 2319 SHA256:4053fe879e73b58b85b9faef47f88f3f2f5b416ea57df2eb9617e6313e16b33d
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.3.orig.tar.bz2' apr_1.6.3.orig.tar.bz2 854100 SHA256:131f06d16d7aabd097fa992a33eec2b6af3962f93e6d570a9bd4d85e95993172
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.3.orig.tar.bz2.asc' apr_1.6.3.orig.tar.bz2.asc 801 SHA256:33db39162f7ca9acdccaa4f19630a67045542791b262116d3512c8b5d7c3fca1
'http://archive.ubuntu.com/ubuntu/pool/main/a/apr/apr_1.6.3-1.debian.tar.xz' apr_1.6.3-1.debian.tar.xz 212956 SHA256:81c13e7277db373f6b72279caa576c9cd91a9902c8798d628e2c2d504962eb8e
```

### `dpkg` source package: `apt=1.6~alpha5`

Binary Packages:

- `apt=1.6~alpha5`
- `libapt-pkg5.0:amd64=1.6~alpha5`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/apt/1.6~alpha5/


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

### `dpkg` source package: `audit=1:2.7.7-1ubuntu2`

Binary Packages:

- `libaudit-common=1:2.7.7-1ubuntu2`
- `libaudit1:amd64=1:2.7.7-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libaudit-common/copyright`, `/usr/share/doc/libaudit1/copyright`)

- `GPL-1`
- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris audit=1:2.7.7-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.7.7-1ubuntu2.dsc' audit_2.7.7-1ubuntu2.dsc 2899 SHA256:f6d689987ee0d5572aa4952fd219dadf6a939d874ba50dafb7e331d7527bb6d3
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.7.7.orig.tar.gz' audit_2.7.7.orig.tar.gz 1110512 SHA256:98e22549444c313187dc98c2e137f36a9882efa0874b559b0457e5f87ae178ef
'http://archive.ubuntu.com/ubuntu/pool/main/a/audit/audit_2.7.7-1ubuntu2.debian.tar.xz' audit_2.7.7-1ubuntu2.debian.tar.xz 20808 SHA256:694eaf7e000362d899cbf672ab2ed8ba1da2df2404840cb59ffd4fd307756c6a
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.69-11.dsc' autoconf_2.69-11.dsc 1948 SHA256:249d25370d4f4d1d0cf7b37bfd178bb6fa87011566dd82230991f64814a39dde
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.69.orig.tar.xz' autoconf_2.69.orig.tar.xz 1214744 SHA256:64ebcec9f8ac5b2487125a86a7760d2591ac9e1d3dbd59489633f9de62a57684
'http://archive.ubuntu.com/ubuntu/pool/main/a/autoconf/autoconf_2.69-11.debian.tar.xz' autoconf_2.69-11.debian.tar.xz 23540 SHA256:885b3947fdead5b737f6437b80a90a41c5d611791573c5d0cfef50a59c943c1b
```

### `dpkg` source package: `automake-1.15=1:1.15.1-3ubuntu1`

Binary Packages:

- `automake=1:1.15.1-3ubuntu1`

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
$ apt-get source -qq --print-uris automake-1.15=1:1.15.1-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.15/automake-1.15_1.15.1-3ubuntu1.dsc' automake-1.15_1.15.1-3ubuntu1.dsc 2648 SHA256:811d8541f6aed32b18652a7345bf9f2783623279b265e38e0cd76cd916be0275
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.15/automake-1.15_1.15.1.orig.tar.xz' automake-1.15_1.15.1.orig.tar.xz 1509496 SHA256:af6ba39142220687c500f79b4aa2f181d9b24e4f8d8ec497cea4ba26c64bedaf
'http://archive.ubuntu.com/ubuntu/pool/main/a/automake-1.15/automake-1.15_1.15.1-3ubuntu1.debian.tar.xz' automake-1.15_1.15.1-3ubuntu1.debian.tar.xz 14532 SHA256:d11317b081337920e5ffd2c1d2b3504cf4efc2385304b33f5eb91cf577af6c5a
```

### `dpkg` source package: `autotools-dev=20171216.1`

Binary Packages:

- `autotools-dev=20171216.1`

Licenses: (parsed from: `/usr/share/doc/autotools-dev/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris autotools-dev=20171216.1
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20171216.1.dsc' autotools-dev_20171216.1.dsc 1655 SHA256:79c644f3d06efd476083f8c68b2b23f4fd1c12b85d8816d6d029683e12ed93d3
'http://archive.ubuntu.com/ubuntu/pool/main/a/autotools-dev/autotools-dev_20171216.1.tar.xz' autotools-dev_20171216.1.tar.xz 67188 SHA256:c5327639b386eceeb84709b826e625d80c0a7255f9344ff39104297f21d6ecd3
```

### `dpkg` source package: `base-files=10ubuntu1`

Binary Packages:

- `base-files=10ubuntu1`

Licenses: (parsed from: `/usr/share/doc/base-files/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris base-files=10ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_10ubuntu1.dsc' base-files_10ubuntu1.dsc 1572 SHA256:df06490d19d5a5d9043aee549c01b454598df94177aa77ed1ea046b9f1cc53c2
'http://archive.ubuntu.com/ubuntu/pool/main/b/base-files/base-files_10ubuntu1.tar.xz' base-files_10ubuntu1.tar.xz 75028 SHA256:87c13ea0973a4ad9a3c0588b1309fb908a8ea5d735f65f392907b05343ae2467
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

### `dpkg` source package: `bash=4.4-5ubuntu1`

Binary Packages:

- `bash=4.4-5ubuntu1`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=4.4-5ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4-5ubuntu1.dsc' bash_4.4-5ubuntu1.dsc 2319 SHA256:ca55dd1450d860bb1e9810b314133d7bd84afdb0b2c4c2c0900fa41004df4c07
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4.orig.tar.xz' bash_4.4.orig.tar.xz 4878580 SHA256:819ebb6a23799e9e4ca56ac579778c46902005bd5ade4f131ed293d9f77108e7
'http://archive.ubuntu.com/ubuntu/pool/main/b/bash/bash_4.4-5ubuntu1.debian.tar.xz' bash_4.4-5ubuntu1.debian.tar.xz 71084 SHA256:b902f0c2168e16d54f004e0f903933a08b8471cd3a12ad7556bafc6156484ec1
```

### `dpkg` source package: `binutils=2.29.1-12ubuntu1`

Binary Packages:

- `binutils=2.29.1-12ubuntu1`
- `binutils-common:amd64=2.29.1-12ubuntu1`
- `binutils-x86-64-linux-gnu=2.29.1-12ubuntu1`
- `libbinutils:amd64=2.29.1-12ubuntu1`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.29.1-12ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.29.1-12ubuntu1.dsc' binutils_2.29.1-12ubuntu1.dsc 11140 SHA256:0c6b88e9794521d9cbfe550c9e51b18e3ce4ff8382059d97dcabb1fd10f83b80
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.29.1.orig.tar.xz' binutils_2.29.1.orig.tar.xz 20053224 SHA256:f87b21bb0b0fe91b5a5b2f801ea462917f4e68251b78ce6599f28e5edae33a8e
'http://archive.ubuntu.com/ubuntu/pool/main/b/binutils/binutils_2.29.1-12ubuntu1.debian.tar.xz' binutils_2.29.1-12ubuntu1.debian.tar.xz 192484 SHA256:29fd626bca36bb0157a40a59bcf47bf1cefb18c5d208cd31330f9f69b0c46805
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20170717.dsc' ca-certificates_20170717.dsc 1506 SHA256:da6268ff88e05c85c23c62add13d3d127087467d0c7e83974ca28db5543a252a
'http://archive.ubuntu.com/ubuntu/pool/main/c/ca-certificates/ca-certificates_20170717.tar.xz' ca-certificates_20170717.tar.xz 293028 SHA256:e487639b641fa75445174734dd6e9d600373e3248b3d86a7e3c6d0f6977decd2
```

### `dpkg` source package: `cairo=1.15.8-3`

Binary Packages:

- `libcairo-gobject2:amd64=1.15.8-3`
- `libcairo-script-interpreter2:amd64=1.15.8-3`
- `libcairo2:amd64=1.15.8-3`
- `libcairo2-dev=1.15.8-3`

Licenses: (parsed from: `/usr/share/doc/libcairo-gobject2/copyright`, `/usr/share/doc/libcairo-script-interpreter2/copyright`, `/usr/share/doc/libcairo2/copyright`, `/usr/share/doc/libcairo2-dev/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris cairo=1.15.8-3
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.15.8-3.dsc' cairo_1.15.8-3.dsc 2852 SHA256:c8565598d33dd48a9aad77314dcae1654d729e2d825238e42dfc6fa1b523a9e0
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.15.8.orig.tar.xz' cairo_1.15.8.orig.tar.xz 41841808 SHA256:3224260a4f8e22e7ea95faf706ae111b974833dd74185be1db5ebc7618a98464
'http://archive.ubuntu.com/ubuntu/pool/main/c/cairo/cairo_1.15.8-3.debian.tar.xz' cairo_1.15.8-3.debian.tar.xz 29304 SHA256:8383c05d7a15bc62456107a997a9e365ea8e73ea2499702f085faa711db1878d
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

### `dpkg` source package: `coreutils=8.26-3ubuntu4`

Binary Packages:

- `coreutils=8.26-3ubuntu4`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris coreutils=8.26-3ubuntu4
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.26-3ubuntu4.dsc' coreutils_8.26-3ubuntu4.dsc 2085 SHA256:82879cfea92b4743d8b992ed17bc1350457e363370ab7af3b4985b07cea6f8e0
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.26.orig.tar.xz' coreutils_8.26.orig.tar.xz 5810244 SHA256:155e94d748f8e2bc327c66e0cbebdb8d6ab265d2f37c3c928f7bf6c3beba9a8e
'http://archive.ubuntu.com/ubuntu/pool/main/c/coreutils/coreutils_8.26-3ubuntu4.debian.tar.xz' coreutils_8.26-3ubuntu4.debian.tar.xz 29708 SHA256:e09ca24c1147538cb822a9d66388c5f24b6ae10a5b9ce4d51f2bb27a402d15c2
```

### `dpkg` source package: `curl=7.57.0-1ubuntu1`

Binary Packages:

- `curl=7.57.0-1ubuntu1`
- `libcurl3:amd64=7.57.0-1ubuntu1`
- `libcurl3-gnutls:amd64=7.57.0-1ubuntu1`
- `libcurl4-openssl-dev:amd64=7.57.0-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/curl/copyright`, `/usr/share/doc/libcurl3/copyright`, `/usr/share/doc/libcurl3-gnutls/copyright`, `/usr/share/doc/libcurl4-openssl-dev/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.57.0-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.57.0-1ubuntu1.dsc' curl_7.57.0-1ubuntu1.dsc 2781 SHA256:480fb1e2d1bcf51d2d64b6e7197a3ff23b4828b9c55c9b639971bf54dcc116d3
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.57.0.orig.tar.gz' curl_7.57.0.orig.tar.gz 3828358 SHA256:7ce35f207562674e71dbada6891b37e3f043c1e7a82915cb9c2a17ad3a9d659b
'http://archive.ubuntu.com/ubuntu/pool/main/c/curl/curl_7.57.0-1ubuntu1.debian.tar.xz' curl_7.57.0-1ubuntu1.debian.tar.xz 31432 SHA256:e25219721ee5b6f8fe274718e7b691afe2161eb8984b42dd43875fd3c9aafbae
```

### `dpkg` source package: `cyrus-sasl2=2.1.27~101-g0780600+dfsg-3ubuntu1`

Binary Packages:

- `libsasl2-2:amd64=2.1.27~101-g0780600+dfsg-3ubuntu1`
- `libsasl2-modules-db:amd64=2.1.27~101-g0780600+dfsg-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.27~101-g0780600+dfsg-3ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~101-g0780600+dfsg-3ubuntu1.dsc' cyrus-sasl2_2.1.27~101-g0780600+dfsg-3ubuntu1.dsc 2968 SHA256:4213a3d76c21c60faab81a07c87e3c39496be1a50bd53af3bcb328869eeacb21
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~101-g0780600+dfsg.orig.tar.xz' cyrus-sasl2_2.1.27~101-g0780600+dfsg.orig.tar.xz 1143888 SHA256:69f34971f768e7ee6a6b647ec2d16a5a72a854ecd4602b019d5f79ba61063fdc
'http://archive.ubuntu.com/ubuntu/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27~101-g0780600+dfsg-3ubuntu1.debian.tar.xz' cyrus-sasl2_2.1.27~101-g0780600+dfsg-3ubuntu1.debian.tar.xz 95232 SHA256:6deb959751f6111cc2dda02e7b18dc795b0293c386b0ee0bdc81218c64ca869f
```

### `dpkg` source package: `dash=0.5.8-2.9ubuntu1`

Binary Packages:

- `dash=0.5.8-2.9ubuntu1`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.8-2.9ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8-2.9ubuntu1.dsc' dash_0.5.8-2.9ubuntu1.dsc 1967 SHA256:a9b9945e42d6ed621782c4c1681bf69387d764b1dffa30c630500b0a7cacf0d0
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8.orig.tar.gz' dash_0.5.8.orig.tar.gz 223028 SHA256:c6db3a237747b02d20382a761397563d813b306c020ae28ce25a1c3915fac60f
'http://archive.ubuntu.com/ubuntu/pool/main/d/dash/dash_0.5.8-2.9ubuntu1.debian.tar.xz' dash_0.5.8-2.9ubuntu1.debian.tar.xz 57616 SHA256:4bccf49a1f780068d8bf8614140e7350676dd217a76dfc9271cc4acb13ccb9d1
```

### `dpkg` source package: `db-defaults=1:5.3.21~exp1ubuntu2`

Binary Packages:

- `libdb-dev:amd64=1:5.3.21~exp1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libdb-dev/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris db-defaults=1:5.3.21~exp1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/d/db-defaults/db-defaults_5.3.21~exp1ubuntu2.dsc' db-defaults_5.3.21~exp1ubuntu2.dsc 2044 SHA256:1960179af0244d410f368653e32d594c8e9331e2046422d05c33edc7f0d248b6
'http://archive.ubuntu.com/ubuntu/pool/main/d/db-defaults/db-defaults_5.3.21~exp1ubuntu2.tar.xz' db-defaults_5.3.21~exp1ubuntu2.tar.xz 3032 SHA256:03c2bba2824a4f5042960a4712630e35d2cbf885a22d24f2b27b2ca28ad6f46a
```

### `dpkg` source package: `db5.3=5.3.28-13.1`

Binary Packages:

- `libdb5.3:amd64=5.3.28-13.1`
- `libdb5.3-dev=5.3.28-13.1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris db5.3=5.3.28-13.1
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-13.1.dsc' db5.3_5.3.28-13.1.dsc 3124 SHA256:8941edcad8e16fe6bc76ffcbe86dbdaadc654b5ed994654689cf5408602a84f3
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz' db5.3_5.3.28.orig.tar.xz 24154920 SHA256:e1f85c8b6ebd0ed3ca72fa0ae97b65006f6d0bd0cd6f4ac24bed103cb5497bf5
'http://archive.ubuntu.com/ubuntu/pool/main/d/db5.3/db5.3_5.3.28-13.1.debian.tar.xz' db5.3_5.3.28-13.1.debian.tar.xz 28180 SHA256:9e04b9269be51de4e73536584addc61e19b29e34f769e263c180228064c72ec9
```

### `dpkg` source package: `debconf=1.5.65`

Binary Packages:

- `debconf=1.5.65`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

Source:

```console
$ apt-get source -qq --print-uris debconf=1.5.65
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.65.dsc' debconf_1.5.65.dsc 2072 SHA256:22264a2eac5f08278151db18270ab9d62e81c0a5517799f9934f34bc3a7f7162
'http://archive.ubuntu.com/ubuntu/pool/main/d/debconf/debconf_1.5.65.tar.xz' debconf_1.5.65.tar.xz 571760 SHA256:4e20e7469819e399629811b7fcc9b867f9ee7ea4d8a2a04d18b30e3a1a7cf8df
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

### `dpkg` source package: `dh-python=2.20170125`

Binary Packages:

- `dh-python=2.20170125`

Licenses: (parsed from: `/usr/share/doc/dh-python/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris dh-python=2.20170125
'http://archive.ubuntu.com/ubuntu/pool/main/d/dh-python/dh-python_2.20170125.dsc' dh-python_2.20170125.dsc 1908 SHA256:ef4f2951cea36ae4aac29126a1017505f98b595432fb5bdac0f21b4b4d72c1b4
'http://archive.ubuntu.com/ubuntu/pool/main/d/dh-python/dh-python_2.20170125.tar.xz' dh-python_2.20170125.tar.xz 91332 SHA256:2e09c162ee2442a03511b7ebe83896e1e3c1df79ce97a22d2f8a8b4cfec9f1e3
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
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.27.1-8.dsc' djvulibre_3.5.27.1-8.dsc 2409 SHA256:5738076776f1f197bbed13160315c9c84fe8bac7c6e175138b87ca8319f12e68
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.27.1.orig.tar.gz' djvulibre_3.5.27.1.orig.tar.gz 3231662 SHA256:77f07de3f1039aa19eba2eb3170d9ce9a0918ba7b704a59cfaf08f42fcc52144
'http://archive.ubuntu.com/ubuntu/pool/main/d/djvulibre/djvulibre_3.5.27.1-8.debian.tar.xz' djvulibre_3.5.27.1-8.debian.tar.xz 56112 SHA256:d0b0af368b8e410b0015fd7d618daa545c76d381de17f9a500830a1141cb9742
```

### `dpkg` source package: `dpkg=1.19.0.4ubuntu1`

Binary Packages:

- `dpkg=1.19.0.4ubuntu1`
- `dpkg-dev=1.19.0.4ubuntu1`
- `libdpkg-perl=1.19.0.4ubuntu1`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.19.0.4ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.19.0.4ubuntu1.dsc' dpkg_1.19.0.4ubuntu1.dsc 2052 SHA256:26725402d902306aa6839b8cea38eaa13348079087cce88b7e3235fc3fe2c02e
'http://archive.ubuntu.com/ubuntu/pool/main/d/dpkg/dpkg_1.19.0.4ubuntu1.tar.xz' dpkg_1.19.0.4ubuntu1.tar.xz 4571364 SHA256:84f615657e1721cd274bfa8090cebe62fef6489b1bd9263b524dbaede0bd3014
```

### `dpkg` source package: `e2fsprogs=1.43.8-1ubuntu1`

Binary Packages:

- `comerr-dev:amd64=2.1-1.43.8-1ubuntu1`
- `e2fslibs:amd64=1.43.8-1ubuntu1`
- `e2fsprogs=1.43.8-1ubuntu1`
- `libcomerr2:amd64=1.43.8-1ubuntu1`
- `libss2:amd64=1.43.8-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/comerr-dev/copyright`, `/usr/share/doc/e2fslibs/copyright`, `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcomerr2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `elfutils=0.170-0.2`

Binary Packages:

- `libelf1:amd64=0.170-0.2`

Licenses: (parsed from: `/usr/share/doc/libelf1/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/elfutils/0.170-0.2/


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

### `dpkg` source package: `fftw3=3.3.7-1`

Binary Packages:

- `libfftw3-double3:amd64=3.3.7-1`

Licenses: (parsed from: `/usr/share/doc/libfftw3-double3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris fftw3=3.3.7-1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.7-1.dsc' fftw3_3.3.7-1.dsc 2941 SHA256:65568aacf8b55d87392aeb640ca9bcd37b0d9f1fe2312b298c43c18764e8470a
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.7.orig.tar.xz' fftw3_3.3.7.orig.tar.xz 2354860 SHA256:1eb677807ec114a3b1dbbae5d866683b71de2977101cb116063a753365465498
'http://archive.ubuntu.com/ubuntu/pool/main/f/fftw3/fftw3_3.3.7-1.debian.tar.xz' fftw3_3.3.7-1.debian.tar.xz 13628 SHA256:5b3763ecfa0177e7c43bf330038b4b2c4d71a5b8c9c33b3e89ccfa4e59f2011b
```

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

Source:

```console
$ apt-get source -qq --print-uris file=1:5.32-1
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.32-1.dsc' file_5.32-1.dsc 2124 SHA256:86d4ea1ff36d73c501c786e74641755a14a711d6a7159756ba484d4c0961d9b4
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.32.orig.tar.xz' file_5.32.orig.tar.xz 584352 SHA256:07627dc16c9a5b64352b00f24afb8d328b9ecade82afe2e2fa55201d324fd360
'http://archive.ubuntu.com/ubuntu/pool/main/f/file/file_5.32-1.debian.tar.xz' file_5.32-1.debian.tar.xz 31948 SHA256:be112d3500f7ea6f3c12e7159e1c0624e175593b3609a9c242472a4e03221268
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

### `dpkg` source package: `fontconfig=2.12.6-0ubuntu1`

Binary Packages:

- `fontconfig=2.12.6-0ubuntu1`
- `fontconfig-config=2.12.6-0ubuntu1`
- `libfontconfig1:amd64=2.12.6-0ubuntu1`
- `libfontconfig1-dev:amd64=2.12.6-0ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.12.6-0ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.12.6-0ubuntu1.dsc' fontconfig_2.12.6-0ubuntu1.dsc 2352 SHA256:3dbe2810515ea673d02ade9143efc0187e7b2c04cea567a16cbdeee2e4e0368e
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.12.6.orig.tar.bz2' fontconfig_2.12.6.orig.tar.bz2 1624683 SHA256:cf0c30807d08f6a28ab46c61b8dbd55c97d2f292cf88f3a07d3384687f31f017
'http://archive.ubuntu.com/ubuntu/pool/main/f/fontconfig/fontconfig_2.12.6-0ubuntu1.debian.tar.xz' fontconfig_2.12.6-0ubuntu1.debian.tar.xz 28188 SHA256:6e44e884856924986ec3637cc38d0a759934d4d065ffd65fa25dd8c9d36bc844
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-1.dsc' fonts-dejavu_2.37-1.dsc 2575 SHA256:f35ff7b2c8dbfda6564c9dedf088ba06cc6d279fdd8e7cccbd1ae08ded1bb71c
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37.orig.tar.bz2' fonts-dejavu_2.37.orig.tar.bz2 12050109 SHA256:4b21c5203f792343d5e90ab1cb0cf07e99887218abe3d83cd9a98cea9085e799
'http://archive.ubuntu.com/ubuntu/pool/main/f/fonts-dejavu/fonts-dejavu_2.37-1.debian.tar.xz' fonts-dejavu_2.37-1.debian.tar.xz 10424 SHA256:5105cdbfc086f4a83ab6871eb39cc904bf02aa52762402b7cacf33d0938122f7
```

### `dpkg` source package: `freetype=2.8-0.2ubuntu2`

Binary Packages:

- `libfreetype6:amd64=2.8-0.2ubuntu2`
- `libfreetype6-dev:amd64=2.8-0.2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libfreetype6/copyright`, `/usr/share/doc/libfreetype6-dev/copyright`)

- `BSD-2-Clause`
- `BSD-3-Clause`
- `Catharon-OSL`
- `FTL`
- `GPL-2`
- `GPL-2+`
- `GZip`
- `OpenGroup-BSD-like`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `gcc-7=7.2.0-18ubuntu2`

Binary Packages:

- `cpp-7=7.2.0-18ubuntu2`
- `g++-7=7.2.0-18ubuntu2`
- `gcc-7=7.2.0-18ubuntu2`
- `gcc-7-base:amd64=7.2.0-18ubuntu2`
- `libasan4:amd64=7.2.0-18ubuntu2`
- `libatomic1:amd64=7.2.0-18ubuntu2`
- `libcc1-0:amd64=7.2.0-18ubuntu2`
- `libcilkrts5:amd64=7.2.0-18ubuntu2`
- `libgcc-7-dev:amd64=7.2.0-18ubuntu2`
- `libgcc1:amd64=1:7.2.0-18ubuntu2`
- `libgomp1:amd64=7.2.0-18ubuntu2`
- `libitm1:amd64=7.2.0-18ubuntu2`
- `liblsan0:amd64=7.2.0-18ubuntu2`
- `libmpx2:amd64=7.2.0-18ubuntu2`
- `libquadmath0:amd64=7.2.0-18ubuntu2`
- `libstdc++-7-dev:amd64=7.2.0-18ubuntu2`
- `libstdc++6:amd64=7.2.0-18ubuntu2`
- `libtsan0:amd64=7.2.0-18ubuntu2`
- `libubsan0:amd64=7.2.0-18ubuntu2`

Licenses: (parsed from: `/usr/share/doc/cpp-7/copyright`, `/usr/share/doc/g++-7/copyright`, `/usr/share/doc/gcc-7/copyright`, `/usr/share/doc/gcc-7-base/copyright`, `/usr/share/doc/libasan4/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libcilkrts5/copyright`, `/usr/share/doc/libgcc-7-dev/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libmpx2/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++-7-dev/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan0/copyright`, `/usr/share/doc/libubsan0/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-7=7.2.0-18ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-7/gcc-7_7.2.0-18ubuntu2.dsc' gcc-7_7.2.0-18ubuntu2.dsc 37381 SHA256:9523ca941bdc81fd43393a9fce0c0232ff775ec7cc12656f71dad0a5a2c0fb50
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-7/gcc-7_7.2.0.orig.tar.gz' gcc-7_7.2.0.orig.tar.gz 73406637 SHA256:aa50238ecb3a1ae463739e0ff5d31bb2fdf4e339456403bd58b765f57f237aa3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-7/gcc-7_7.2.0-18ubuntu2.diff.gz' gcc-7_7.2.0-18ubuntu2.diff.gz 2782331 SHA256:4a5b56ff868a3ec279937733d6f93d039a0b871bc5eb2338b729a05a90a12d77
```

### `dpkg` source package: `gcc-defaults=1.173ubuntu1`

Binary Packages:

- `cpp=4:7.2.0-1ubuntu1`
- `g++=4:7.2.0-1ubuntu1`
- `gcc=4:7.2.0-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/gcc/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.173ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.173ubuntu1.dsc' gcc-defaults_1.173ubuntu1.dsc 10984 SHA256:fc402dea274827e86981d79751ccf88c366a3d75c15d4058c417b078172ceba8
'http://archive.ubuntu.com/ubuntu/pool/main/g/gcc-defaults/gcc-defaults_1.173ubuntu1.tar.gz' gcc-defaults_1.173ubuntu1.tar.gz 204854 SHA256:abbadca469dd0b459fe8193d460bc8745f5bdf3507ec1494404e7b049798a53b
```

### `dpkg` source package: `gdbm=1.8.3-14`

Binary Packages:

- `libgdbm-dev:amd64=1.8.3-14`
- `libgdbm3:amd64=1.8.3-14`

Licenses: (parsed from: `/usr/share/doc/libgdbm-dev/copyright`, `/usr/share/doc/libgdbm3/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris gdbm=1.8.3-14
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3-14.dsc' gdbm_1.8.3-14.dsc 1841 SHA256:312d3d28e287d287ee66e8ae3f25769676b1680ec1adc8c0815b5e9808405b13
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3.orig.tar.bz2' gdbm_1.8.3.orig.tar.bz2 172796 SHA256:1d5995b6e9e6be4ff62c8126d019f184a083dd8e6f75f6c74b9fe023b5b9440e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdbm/gdbm_1.8.3-14.debian.tar.xz' gdbm_1.8.3-14.debian.tar.xz 15308 SHA256:1c0570dd53947ea5980111f51b67356d647c4f21c502443b02397041dde0bf31
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.11-1.dsc' gdk-pixbuf_2.36.11-1.dsc 2893 SHA256:51c30d563a34fedf4b3a4ad32ab9147598a2f7b266186bc9e625566779432b95
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.11.orig.tar.xz' gdk-pixbuf_2.36.11.orig.tar.xz 5675908 SHA256:ae62ab87250413156ed72ef756347b10208c00e76b222d82d9ed361ed9dde2f3
'http://archive.ubuntu.com/ubuntu/pool/main/g/gdk-pixbuf/gdk-pixbuf_2.36.11-1.debian.tar.xz' gdk-pixbuf_2.36.11-1.debian.tar.xz 13540 SHA256:0af4f3d5d41e051327e516492f197ca56a03b64c462cc8ca0bea66df3d75d8d5
```

### `dpkg` source package: `geoip=1.6.11-3`

Binary Packages:

- `geoip-bin=1.6.11-3`
- `libgeoip-dev=1.6.11-3`
- `libgeoip1:amd64=1.6.11-3`

Licenses: (parsed from: `/usr/share/doc/geoip-bin/copyright`, `/usr/share/doc/libgeoip-dev/copyright`, `/usr/share/doc/libgeoip1/copyright`)

- `ISC`
- `LGPL-2.1`
- `LGPL-2.1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/geoip/1.6.11-3/


### `dpkg` source package: `git=1:2.15.1-1ubuntu2`

Binary Packages:

- `git=1:2.15.1-1ubuntu2`
- `git-man=1:2.15.1-1ubuntu2`

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
$ apt-get source -qq --print-uris git=1:2.15.1-1ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.15.1-1ubuntu2.dsc' git_2.15.1-1ubuntu2.dsc 2539 SHA256:af61ad0ef6217d58626b5a5c273d5c875dc074f212f7a2739a51580d7d379e75
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.15.1.orig.tar.xz' git_2.15.1.orig.tar.xz 4894768 SHA256:999c90fd7d45066992cdb87dda35bdff6dfc1d01496118ea718dfb866da4045c
'http://archive.ubuntu.com/ubuntu/pool/main/g/git/git_2.15.1-1ubuntu2.debian.tar.xz' git_2.15.1-1ubuntu2.debian.tar.xz 555596 SHA256:ee876845488cc0cbb11751f1acc960b76c35efe9fa058e2e778fc102d6c7c7e2
```

### `dpkg` source package: `glib2.0=2.54.1-1ubuntu1`

Binary Packages:

- `libglib2.0-0:amd64=2.54.1-1ubuntu1`
- `libglib2.0-bin=2.54.1-1ubuntu1`
- `libglib2.0-data=2.54.1-1ubuntu1`
- `libglib2.0-dev:amd64=2.54.1-1ubuntu1`
- `libglib2.0-dev-bin=2.54.1-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`, `/usr/share/doc/libglib2.0-bin/copyright`, `/usr/share/doc/libglib2.0-data/copyright`, `/usr/share/doc/libglib2.0-dev/copyright`, `/usr/share/doc/libglib2.0-dev-bin/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.54.1-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.54.1-1ubuntu1.dsc' glib2.0_2.54.1-1ubuntu1.dsc 2734 SHA256:0053fec2863f7dd59081a389ce781347e2c03375342b1890e1219197558aa221
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.54.1.orig.tar.xz' glib2.0_2.54.1.orig.tar.xz 7829104 SHA256:50c01b1419324f10fbf9b9709ec2164b18586968bdce7540583bf32302cf47a3
'http://archive.ubuntu.com/ubuntu/pool/main/g/glib2.0/glib2.0_2.54.1-1ubuntu1.debian.tar.xz' glib2.0_2.54.1-1ubuntu1.debian.tar.xz 75252 SHA256:aab799877787337ea87e03cb713f6c2a9dcef11aac9bf481ac9384a63cedcf11
```

### `dpkg` source package: `glibc=2.26-0ubuntu2`

Binary Packages:

- `libc-bin=2.26-0ubuntu2`
- `libc-dev-bin=2.26-0ubuntu2`
- `libc6:amd64=2.26-0ubuntu2`
- `libc6-dev:amd64=2.26-0ubuntu2`
- `multiarch-support=2.26-0ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`, `/usr/share/doc/multiarch-support/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.26-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.26-0ubuntu2.dsc' glibc_2.26-0ubuntu2.dsc 8688 SHA256:e1ae0693f1113b8bf4ef2b8721b2f104584b7b95763e1f595beb3d85c14184dd
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.26.orig.tar.xz' glibc_2.26.orig.tar.xz 15207960 SHA256:cdfbf4634e016f2b8f279634329baf8a721aa2549cf016e75cea7db938d2dd6e
'http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/glibc_2.26-0ubuntu2.debian.tar.xz' glibc_2.26-0ubuntu2.debian.tar.xz 996080 SHA256:25218986f8e550872ae207d00f3b3cb69548f2cbc7034a5ec961d892c7cd1c41
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.2+dfsg-1.dsc' gmp_6.1.2+dfsg-1.dsc 2183 SHA256:3a53f6c74c9b2465c1c61446aa9bdc6182fdec8b04075849d4cbf224a73b6fbe
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.2+dfsg.orig.tar.xz' gmp_6.1.2+dfsg.orig.tar.xz 1804424 SHA256:18016f718f621e7641ddd4e57f8e140391c5183252e5998263ffff59198a65b7
'http://archive.ubuntu.com/ubuntu/pool/main/g/gmp/gmp_6.1.2+dfsg-1.debian.tar.xz' gmp_6.1.2+dfsg-1.debian.tar.xz 20652 SHA256:79e73f74197e7628b2f0c02edf01b6eea3716c13152044ed8e0e0ee4178394df
```

### `dpkg` source package: `gnupg2=2.1.15-1ubuntu8`

Binary Packages:

- `gnupg=2.1.15-1ubuntu8`
- `gnupg-agent=2.1.15-1ubuntu8`
- `gpgv=2.1.15-1ubuntu8`

Licenses: (parsed from: `/usr/share/doc/gnupg/copyright`, `/usr/share/doc/gnupg-agent/copyright`, `/usr/share/doc/gpgv/copyright`)

- `BSD-3-clause`
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
$ apt-get source -qq --print-uris gnupg2=2.1.15-1ubuntu8
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.1.15-1ubuntu8.dsc' gnupg2_2.1.15-1ubuntu8.dsc 2808 SHA256:9db945006643b2ca85fe09eb05cd5ebca27a9bf07935e00d4f2b79b4f9e507df
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.1.15.orig.tar.bz2' gnupg2_2.1.15.orig.tar.bz2 5723689 SHA256:c28c1a208f1b8ad63bdb6b88d252f6734ff4d33de6b54e38494b11d49e00ffdd
'http://archive.ubuntu.com/ubuntu/pool/main/g/gnupg2/gnupg2_2.1.15-1ubuntu8.debian.tar.bz2' gnupg2_2.1.15-1ubuntu8.debian.tar.bz2 42721 SHA256:ebe79020eb4553a731dca27aef5f7514e78799d1abc12a41871c5bdf07e83196
```

### `dpkg` source package: `gnutls28=3.5.8-6ubuntu3`

Binary Packages:

- `libgnutls30:amd64=3.5.8-6ubuntu3`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.54.1-4.dsc' gobject-introspection_1.54.1-4.dsc 2878 SHA256:ec5a80c2aa20211d8f8a5f01d8a9e7f31a889502d44b8bb00aa1482e11bcc05d
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.54.1.orig.tar.xz' gobject-introspection_1.54.1.orig.tar.xz 1392504 SHA256:b88ded5e5f064ab58a93aadecd6d58db2ec9d970648534c63807d4f9a7bb877e
'http://archive.ubuntu.com/ubuntu/pool/main/g/gobject-introspection/gobject-introspection_1.54.1-4.debian.tar.xz' gobject-introspection_1.54.1-4.debian.tar.xz 20256 SHA256:02558637c7c2c6271e58b39c85d1aa51da2d01c7d01e217715e3bd5b3c92b146
```

### `dpkg` source package: `graphite2=1.3.10-8`

Binary Packages:

- `libgraphite2-3:amd64=1.3.10-8`
- `libgraphite2-dev:amd64=1.3.10-8`

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
$ apt-get source -qq --print-uris graphite2=1.3.10-8
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.10-8.dsc' graphite2_1.3.10-8.dsc 2379 SHA256:4fdc372bd74965337a7fd3db9081caf8a349ad41317d95f8f04c257aa71918ad
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.10.orig.tar.gz' graphite2_1.3.10.orig.tar.gz 3889647 SHA256:90fde3b2f9ea95d68ffb19278d07d9b8a7efa5ba0e413bebcea802ce05cda1ae
'http://archive.ubuntu.com/ubuntu/pool/main/g/graphite2/graphite2_1.3.10-8.debian.tar.xz' graphite2_1.3.10-8.debian.tar.xz 11792 SHA256:53ec37195cd657535514da04f2067fed0bed9bab47f4f9101c2d1eb6e3cd5277
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

### `dpkg` source package: `harfbuzz=1.7.2-1`

Binary Packages:

- `gir1.2-harfbuzz-0.0:amd64=1.7.2-1`
- `libharfbuzz-dev:amd64=1.7.2-1`
- `libharfbuzz-gobject0:amd64=1.7.2-1`
- `libharfbuzz-icu0:amd64=1.7.2-1`
- `libharfbuzz0b:amd64=1.7.2-1`

Licenses: (parsed from: `/usr/share/doc/gir1.2-harfbuzz-0.0/copyright`, `/usr/share/doc/libharfbuzz-dev/copyright`, `/usr/share/doc/libharfbuzz-gobject0/copyright`, `/usr/share/doc/libharfbuzz-icu0/copyright`, `/usr/share/doc/libharfbuzz0b/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris harfbuzz=1.7.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.7.2-1.dsc' harfbuzz_1.7.2-1.dsc 2280 SHA256:edc57d3aae36501ec509aa20df686539dcb2bf82f25ed43e86f6f9f380d947c4
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.7.2.orig.tar.bz2' harfbuzz_1.7.2.orig.tar.bz2 1708416 SHA256:a790585e35c1a87f0dcc23580c84b7cc2324e6f67a2946178d278c2a36c790cb
'http://archive.ubuntu.com/ubuntu/pool/main/h/harfbuzz/harfbuzz_1.7.2-1.debian.tar.xz' harfbuzz_1.7.2-1.debian.tar.xz 8912 SHA256:b7fe86314450d2989e63c3d48d40316d062ef4eedba634431379e5e2d28ffa98
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

### `dpkg` source package: `hicolor-icon-theme=0.17-1`

Binary Packages:

- `hicolor-icon-theme=0.17-1`

Licenses: (parsed from: `/usr/share/doc/hicolor-icon-theme/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris hicolor-icon-theme=0.17-1
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17-1.dsc' hicolor-icon-theme_0.17-1.dsc 1592 SHA256:c60867c2937f943439da5b567bf7344dbef4834ed5af85ead84c091a17f1312c
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17.orig.tar.xz' hicolor-icon-theme_0.17.orig.tar.xz 53016 SHA256:317484352271d18cbbcfac3868eab798d67fff1b8402e740baa6ff41d588a9d8
'http://archive.ubuntu.com/ubuntu/pool/main/h/hicolor-icon-theme/hicolor-icon-theme_0.17-1.debian.tar.xz' hicolor-icon-theme_0.17-1.debian.tar.xz 3408 SHA256:3318c99b4a7dda3bc7b6a912c951ce5366cc46773c41dddd2ea0599f47357c56
```

### `dpkg` source package: `hostname=3.18`

Binary Packages:

- `hostname=3.18`

Licenses: (parsed from: `/usr/share/doc/hostname/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/hostname/3.18/


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

### `dpkg` source package: `icu=60.2-1ubuntu1`

Binary Packages:

- `icu-devtools=60.2-1ubuntu1`
- `libicu-dev=60.2-1ubuntu1`
- `libicu60:amd64=60.2-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `ilmbase=2.2.0-11ubuntu2`

Binary Packages:

- `libilmbase-dev=2.2.0-11ubuntu2`
- `libilmbase12:amd64=2.2.0-11ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libilmbase-dev/copyright`, `/usr/share/doc/libilmbase12/copyright`)

- `boost`
- `ilmbase`

Source:

```console
$ apt-get source -qq --print-uris ilmbase=2.2.0-11ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/i/ilmbase/ilmbase_2.2.0-11ubuntu2.dsc' ilmbase_2.2.0-11ubuntu2.dsc 2099 SHA256:894cddbe71ecaa8be9d1a348962270882dbe6c339f65e6b702db2fa07d4c9c2d
'http://archive.ubuntu.com/ubuntu/pool/main/i/ilmbase/ilmbase_2.2.0.orig.tar.gz' ilmbase_2.2.0.orig.tar.gz 525289 SHA256:ecf815b60695555c1fbc73679e84c7c9902f4e8faa6e8000d2f905b8b86cedc7
'http://archive.ubuntu.com/ubuntu/pool/main/i/ilmbase/ilmbase_2.2.0-11ubuntu2.debian.tar.xz' ilmbase_2.2.0-11ubuntu2.debian.tar.xz 13400 SHA256:400b77a32f7a04d78ff0462f32dc1e4073f5e1225ed070c63fa6a0ec619905c5
```

### `dpkg` source package: `imagemagick=8:6.9.7.4+dfsg-16ubuntu5`

Binary Packages:

- `imagemagick=8:6.9.7.4+dfsg-16ubuntu5`
- `imagemagick-6-common=8:6.9.7.4+dfsg-16ubuntu5`
- `imagemagick-6.q16=8:6.9.7.4+dfsg-16ubuntu5`
- `libmagickcore-6-arch-config:amd64=8:6.9.7.4+dfsg-16ubuntu5`
- `libmagickcore-6-headers=8:6.9.7.4+dfsg-16ubuntu5`
- `libmagickcore-6.q16-3:amd64=8:6.9.7.4+dfsg-16ubuntu5`
- `libmagickcore-6.q16-3-extra:amd64=8:6.9.7.4+dfsg-16ubuntu5`
- `libmagickcore-6.q16-dev:amd64=8:6.9.7.4+dfsg-16ubuntu5`
- `libmagickcore-dev=8:6.9.7.4+dfsg-16ubuntu5`
- `libmagickwand-6-headers=8:6.9.7.4+dfsg-16ubuntu5`
- `libmagickwand-6.q16-3:amd64=8:6.9.7.4+dfsg-16ubuntu5`
- `libmagickwand-6.q16-dev:amd64=8:6.9.7.4+dfsg-16ubuntu5`
- `libmagickwand-dev=8:6.9.7.4+dfsg-16ubuntu5`

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

Source:

```console
$ apt-get source -qq --print-uris imagemagick=8:6.9.7.4+dfsg-16ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/i/imagemagick/imagemagick_6.9.7.4+dfsg-16ubuntu5.dsc' imagemagick_6.9.7.4+dfsg-16ubuntu5.dsc 5218 SHA256:76b69d6c889889947d7aad2b6dbc6faaab75d1f422edc9f4c5d63abd1d20b2d0
'http://archive.ubuntu.com/ubuntu/pool/main/i/imagemagick/imagemagick_6.9.7.4+dfsg.orig.tar.xz' imagemagick_6.9.7.4+dfsg.orig.tar.xz 8929800 SHA256:47fb2cdd26f5913318c4504f16ea363e04d1f400dda9ec52e461ab661d724026
'http://archive.ubuntu.com/ubuntu/pool/main/i/imagemagick/imagemagick_6.9.7.4+dfsg-16ubuntu5.debian.tar.xz' imagemagick_6.9.7.4+dfsg-16ubuntu5.debian.tar.xz 257296 SHA256:cb36cee855f4e768a809f98019808c4bb81ef81dd9f7bfdb961f6eaeaa5a4bae
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
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.18-1.dsc' isl_0.18-1.dsc 1882 SHA256:aed8295d019805686fd795652d930b1440bc0ae3be4373332d97784645d7c583
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.18.orig.tar.xz' isl_0.18.orig.tar.xz 1475708 SHA256:0f35051cc030b87c673ac1f187de40e386a1482a0cfdf2c552dd6031b307ddc4
'http://archive.ubuntu.com/ubuntu/pool/main/i/isl/isl_0.18-1.debian.tar.xz' isl_0.18-1.debian.tar.xz 21860 SHA256:eac951311a871bb6d7886c98068290f771aaf78616516855b472d2500b84f53c
```

### `dpkg` source package: `jbigkit=2.1-3.1`

Binary Packages:

- `libjbig-dev:amd64=2.1-3.1`
- `libjbig0:amd64=2.1-3.1`

Licenses: (parsed from: `/usr/share/doc/libjbig-dev/copyright`, `/usr/share/doc/libjbig0/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris jbigkit=2.1-3.1
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-3.1.dsc' jbigkit_2.1-3.1.dsc 1299 SHA256:62c8812d508958c5d35f2b1579dc3052fb5bd8d2e77d023fad064c4b48c8c3f8
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1.orig.tar.gz' jbigkit_2.1.orig.tar.gz 438710 SHA256:de7106b6bfaf495d6865c7dd7ac6ca1381bd12e0d81405ea81e7f2167263d932
'http://archive.ubuntu.com/ubuntu/pool/main/j/jbigkit/jbigkit_2.1-3.1.debian.tar.xz' jbigkit_2.1-3.1.debian.tar.xz 7600 SHA256:ebc3c52deaf37d52baea54d648a713640dc262926abda7bf05cd08e7db5dd1ee
```

### `dpkg` source package: `keyutils=1.5.9-9.2ubuntu1`

Binary Packages:

- `libkeyutils1:amd64=1.5.9-9.2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

Source:

```console
$ apt-get source -qq --print-uris keyutils=1.5.9-9.2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9-9.2ubuntu1.dsc' keyutils_1.5.9-9.2ubuntu1.dsc 2089 SHA256:e86a8bacd32a9c510f7b9f31bf3476a7f55746e631bfbe7fe87dd0fd18e99ed7
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9.orig.tar.bz2' keyutils_1.5.9.orig.tar.bz2 74683 SHA256:4da2c5552c688b65ab14d4fd40fbdf720c8b396d8ece643e040cf6e707e083ae
'http://archive.ubuntu.com/ubuntu/pool/main/k/keyutils/keyutils_1.5.9-9.2ubuntu1.debian.tar.xz' keyutils_1.5.9-9.2ubuntu1.debian.tar.xz 18140 SHA256:f9190ac67cce32952b05b2917e8c69b74b34a475e31c98388242c3ce8b9aa500
```

### `dpkg` source package: `krb5=1.15.1-2`

Binary Packages:

- `krb5-multidev=1.15.1-2`
- `libgssapi-krb5-2:amd64=1.15.1-2`
- `libgssrpc4:amd64=1.15.1-2`
- `libk5crypto3:amd64=1.15.1-2`
- `libkadm5clnt-mit11:amd64=1.15.1-2`
- `libkadm5srv-mit11:amd64=1.15.1-2`
- `libkdb5-8:amd64=1.15.1-2`
- `libkrb5-3:amd64=1.15.1-2`
- `libkrb5-dev=1.15.1-2`
- `libkrb5support0:amd64=1.15.1-2`

Licenses: (parsed from: `/usr/share/doc/krb5-multidev/copyright`, `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libgssrpc4/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkadm5clnt-mit11/copyright`, `/usr/share/doc/libkadm5srv-mit11/copyright`, `/usr/share/doc/libkdb5-8/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5-dev/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/krb5/1.15.1-2/


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
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.9-1.dsc' lcms2_2.9-1.dsc 1985 SHA256:6c47df15d0a6434d33a48a2232ed9b59dac8840fac106ae7570fabcfef44380f
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.9.orig.tar.gz' lcms2_2.9.orig.tar.gz 10974649 SHA256:48c6fdf98396fa245ed86e622028caf49b96fa22f3e5734f853f806fbc8e7d20
'http://archive.ubuntu.com/ubuntu/pool/main/l/lcms2/lcms2_2.9-1.debian.tar.xz' lcms2_2.9-1.debian.tar.xz 10040 SHA256:e2a48d8d302fc85f14439b67c9f66f341453558a16cef1991096b3acfe618b13
```

### `dpkg` source package: `libassuan=2.5.1-1`

Binary Packages:

- `libassuan0:amd64=2.5.1-1`

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
$ apt-get source -qq --print-uris libassuan=2.5.1-1
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.1-1.dsc' libassuan_2.5.1-1.dsc 2237 SHA256:a0ae22bf2a6fb7c1ffba39bd1dc4a9206e567f31cc0305cd63f207ef4281dd5c
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.1.orig.tar.bz2' libassuan_2.5.1.orig.tar.bz2 564857 SHA256:47f96c37b4f2aac289f0bc1bacfa8bd8b4b209a488d3d15e2229cb6cc9b26449
'http://archive.ubuntu.com/ubuntu/pool/main/liba/libassuan/libassuan_2.5.1-1.debian.tar.xz' libassuan_2.5.1-1.debian.tar.xz 15168 SHA256:ab454b6dd51c1ab7130478476a235c1e94bb745fef8f4d4913f030e0be84e926
```

### `dpkg` source package: `libbsd=0.8.6-3`

Binary Packages:

- `libbsd0:amd64=0.8.6-3`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libbsd/0.8.6-3/


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

### `dpkg` source package: `libcroco=0.6.12-2`

Binary Packages:

- `libcroco3:amd64=0.6.12-2`

Licenses: (parsed from: `/usr/share/doc/libcroco3/copyright`)

- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libcroco=0.6.12-2
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcroco/libcroco_0.6.12-2.dsc' libcroco_0.6.12-2.dsc 2204 SHA256:46e81715670968edd1d71cd878a5426ea2b28513bc4975f0b1975185adb69c9e
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcroco/libcroco_0.6.12.orig.tar.xz' libcroco_0.6.12.orig.tar.xz 482028 SHA256:ddc4b5546c9fb4280a5017e2707fbd4839034ed1aba5b7d4372212f34f84f860
'http://archive.ubuntu.com/ubuntu/pool/main/libc/libcroco/libcroco_0.6.12-2.debian.tar.xz' libcroco_0.6.12-2.debian.tar.xz 8076 SHA256:038c42873794d314fb40c9d0a78c49b841b9ac8f3a947f3fee5f7928e7d155b0
```

### `dpkg` source package: `libdatrie=0.2.10-6`

Binary Packages:

- `libdatrie1:amd64=0.2.10-6`

Licenses: (parsed from: `/usr/share/doc/libdatrie1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libdatrie=0.2.10-6
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.10-6.dsc' libdatrie_0.2.10-6.dsc 2285 SHA256:a7aa81f1f45520f3c009502381553799a7adaa4e528023fd35ffcc38ff54babb
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.10.orig.tar.xz' libdatrie_0.2.10.orig.tar.xz 294380 SHA256:180eff7b0309ca19a02d5864e744185d715f021398a096fec6cf960f8ebfaa2b
'http://archive.ubuntu.com/ubuntu/pool/main/libd/libdatrie/libdatrie_0.2.10-6.debian.tar.xz' libdatrie_0.2.10-6.debian.tar.xz 8488 SHA256:fc8080def08c6314bc70a014ec527e660ed4c13a140da58e1f493a183a03ea78
```

### `dpkg` source package: `libedit=3.1-20170329-1`

Binary Packages:

- `libedit2:amd64=3.1-20170329-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libedit=3.1-20170329-1
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20170329-1.dsc' libedit_3.1-20170329-1.dsc 2269 SHA256:1e657cfcfbbe5c550b844f17cfeb1d8591136fa57300e6cff2b56e5a3e25ad3f
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20170329.orig.tar.gz' libedit_3.1-20170329.orig.tar.gz 508504 SHA256:91f2d90fbd2a048ff6dad7131d9a39e690fd8a8fd982a353f1333dd4017dd4be
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libedit/libedit_3.1-20170329-1.debian.tar.bz2' libedit_3.1-20170329-1.debian.tar.bz2 11267 SHA256:7dd7a23b07b082d058b7fb741d3b750b80699472e7c8efd1935a9e7c59a49a39
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
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.8-stable-4.dsc' libevent_2.1.8-stable-4.dsc 2328 SHA256:4d2c3f7943219dd13ae711c6d3e8589c6211d2cec15c18ccfd1d1426542519b0
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.8-stable.orig.tar.gz' libevent_2.1.8-stable.orig.tar.gz 1026485 SHA256:965cc5a8bb46ce4199a47e9b2c9e1cae3b137e8356ffdad6d94d3b9069b71dc2
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libevent/libevent_2.1.8-stable-4.debian.tar.xz' libevent_2.1.8-stable-4.debian.tar.xz 12060 SHA256:c1334029455256b62e201ba333a8616a1709e0f3caada753d35376b88aca2d5e
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.21-4.dsc' libexif_0.6.21-4.dsc 2127 SHA256:4f655b8f217e5f906b236c9b054ef192c2691cab6c532893dc713a128450eac4
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.21.orig.tar.gz' libexif_0.6.21.orig.tar.gz 2081615 SHA256:edb7eb13664cf950a6edd132b75e99afe61c5effe2f16494e6d27bc404b287bf
'http://archive.ubuntu.com/ubuntu/pool/main/libe/libexif/libexif_0.6.21-4.debian.tar.xz' libexif_0.6.21-4.debian.tar.xz 10020 SHA256:cb770f6df2805bad039cb5f768412ebde916804d3e3ebda5d3959106812109c5
```

### `dpkg` source package: `libffi=3.2.1-6`

Binary Packages:

- `libffi-dev:amd64=3.2.1-6`
- `libffi6:amd64=3.2.1-6`

Licenses: (parsed from: `/usr/share/doc/libffi-dev/copyright`, `/usr/share/doc/libffi6/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.2.1-6
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-6.dsc' libffi_3.2.1-6.dsc 1923 SHA256:f901298b078c7d7f3f75459b5ff74cc804f6f2cfd65ed619d2082d5f77089954
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1.orig.tar.gz' libffi_3.2.1.orig.tar.gz 940837 SHA256:d06ebb8e1d9a22d19e38d63fdb83954253f39bedc5d46232a05645685722ca37
'http://archive.ubuntu.com/ubuntu/pool/main/libf/libffi/libffi_3.2.1-6.debian.tar.xz' libffi_3.2.1-6.debian.tar.xz 11252 SHA256:477709fa90f8c7631fa226a48cdf38737c9f195f3686f62aa76714bcffaee512
```

### `dpkg` source package: `libgcrypt20=1.8.1-4`

Binary Packages:

- `libgcrypt20:amd64=1.8.1-4`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.8.1-4
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1-4.dsc' libgcrypt20_1.8.1-4.dsc 2920 SHA256:8dfd2d17b969a6c5d4b7ffdf4bdcd330f643f483d2c1fc20b5fca493db195d9c
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1.orig.tar.bz2' libgcrypt20_1.8.1.orig.tar.bz2 2967344 SHA256:7a2875f8b1ae0301732e878c0cca2c9664ff09ef71408f085c50e332656a78b3
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1.orig.tar.bz2.asc' libgcrypt20_1.8.1.orig.tar.bz2.asc 310 SHA256:9e08f467824855084594a14c4a0455963dac9a359d543e8c2a91ca3498ad031b
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgcrypt20/libgcrypt20_1.8.1-4.debian.tar.xz' libgcrypt20_1.8.1-4.debian.tar.xz 30072 SHA256:c653e5742b3975c6b3a8572a40f433826895ed2c1ab24a2f09172cb6dab4a470
```

### `dpkg` source package: `libgpg-error=1.27-5`

Binary Packages:

- `libgpg-error0:amd64=1.27-5`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.27-5
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.27-5.dsc' libgpg-error_1.27-5.dsc 2365 SHA256:8b3a822cb8508dcb069b7b2d46c75b567f3aabf25ee5efdce0f223db3ca02f4e
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.27.orig.tar.bz2' libgpg-error_1.27.orig.tar.bz2 813060 SHA256:4f93aac6fecb7da2b92871bb9ee33032be6a87b174f54abf8ddf0911a22d29d2
'http://archive.ubuntu.com/ubuntu/pool/main/libg/libgpg-error/libgpg-error_1.27-5.debian.tar.xz' libgpg-error_1.27-5.debian.tar.xz 17712 SHA256:73f348981bb4ffdfbc25a00325d9a209a7d722a3215a1145716b4a5bbbd6b58a
```

### `dpkg` source package: `libice=2:1.0.9-2`

Binary Packages:

- `libice-dev:amd64=2:1.0.9-2`
- `libice6:amd64=2:1.0.9-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libice=2:1.0.9-2
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.9-2.dsc' libice_1.0.9-2.dsc 2130 SHA256:116595cd54be23edad0b55e1cd4bc1929f277fa5c2d00d8f187b0bc5dd39ad6c
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.9.orig.tar.gz' libice_1.0.9.orig.tar.gz 455871 SHA256:7812a824a66dd654c830d21982749b3b563d9c2dfe0b88b203cefc14a891edc0
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libice/libice_1.0.9-2.diff.gz' libice_1.0.9-2.diff.gz 6384 SHA256:777f13e08aada3103c32a0b93a26782ca959027bcd98c2c1ddaade8f944fa40a
```

### `dpkg` source package: `libidn2=2.0.4-1`

Binary Packages:

- `libidn2-0:amd64=2.0.4-1`

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
$ apt-get source -qq --print-uris libidn2=2.0.4-1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.0.4-1.dsc' libidn2_2.0.4-1.dsc 2405 SHA256:1a3f798c046e5d190b5895662bb73888688ca4617ad622c9ea91b72fb6fca8b7
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.0.4.orig.tar.gz' libidn2_2.0.4.orig.tar.gz 2008524 SHA256:644b6b03b285fb0ace02d241d59483d98bc462729d8bb3608d5cad5532f3d2f0
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn2/libidn2_2.0.4-1.debian.tar.xz' libidn2_2.0.4-1.debian.tar.xz 10284628 SHA256:179d3c8e13f450ccd4d70db4b8acd9f80c5ab08c0202ef757e6e3ab0d61a0e5a
```

### `dpkg` source package: `libidn=1.33-2.1`

Binary Packages:

- `libidn11:amd64=1.33-2.1`

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
$ apt-get source -qq --print-uris libidn=1.33-2.1
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.33-2.1.dsc' libidn_1.33-2.1.dsc 2202 SHA256:76a26734d5acbe294bd3bac0e0715c1f1e88b8c2ead3eb8004b2d283f2c46660
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.33.orig.tar.gz' libidn_1.33.orig.tar.gz 3501056 SHA256:44a7aab635bb721ceef6beecc4d49dfd19478325e1b47f3196f7d2acc4930e19
'http://archive.ubuntu.com/ubuntu/pool/main/libi/libidn/libidn_1.33-2.1.debian.tar.xz' libidn_1.33-2.1.debian.tar.xz 65368 SHA256:f847492acbcb7e2211cebc66326a640396039aa0b51ad63208a8451003c0f039
```

### `dpkg` source package: `libjpeg-turbo=1.5.2-0ubuntu5`

Binary Packages:

- `libjpeg-turbo8:amd64=1.5.2-0ubuntu5`
- `libjpeg-turbo8-dev:amd64=1.5.2-0ubuntu5`

Licenses: (parsed from: `/usr/share/doc/libjpeg-turbo8/copyright`, `/usr/share/doc/libjpeg-turbo8-dev/copyright`)

- `JPEG`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libjpeg-turbo=1.5.2-0ubuntu5
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.5.2-0ubuntu5.dsc' libjpeg-turbo_1.5.2-0ubuntu5.dsc 2351 SHA256:407626cd876e1319aed847442c660691c18954ea8b668d55bc4a4b7aedd0e3c9
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.5.2.orig.tar.gz' libjpeg-turbo_1.5.2.orig.tar.gz 1657235 SHA256:9098943b270388727ae61de82adec73cf9f0dbb240b3bc8b172595ebf405b528
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg-turbo/libjpeg-turbo_1.5.2-0ubuntu5.debian.tar.xz' libjpeg-turbo_1.5.2-0ubuntu5.debian.tar.xz 24408 SHA256:04856802684638068784cdd58fb3cbc8894b82bf392eab1476a76374ce52d086
```

### `dpkg` source package: `libjpeg8-empty=8c-2ubuntu8`

Binary Packages:

- `libjpeg-dev:amd64=8c-2ubuntu8`
- `libjpeg8:amd64=8c-2ubuntu8`
- `libjpeg8-dev:amd64=8c-2ubuntu8`

Licenses: (parsed from: `/usr/share/doc/libjpeg-dev/copyright`, `/usr/share/doc/libjpeg8/copyright`, `/usr/share/doc/libjpeg8-dev/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libjpeg8-empty=8c-2ubuntu8
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu8.dsc' libjpeg8-empty_8c-2ubuntu8.dsc 1637 SHA256:e7f575dcb3e0d462513b6f928179baa0ff1d145273934b1041b714515096b407
'http://archive.ubuntu.com/ubuntu/pool/main/libj/libjpeg8-empty/libjpeg8-empty_8c-2ubuntu8.tar.gz' libjpeg8-empty_8c-2ubuntu8.tar.gz 1770 SHA256:48a4227e9fc70851a4f304b10624e02875bf6f4e2debfcbe4ba0dd85a3ec05c6
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
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblqr/liblqr_0.4.2-2.1.dsc' liblqr_0.4.2-2.1.dsc 2095 SHA256:c54c34cd2f7470a29366eeacde2ca4859a97d684a406fb81a918b970c01d617c
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblqr/liblqr_0.4.2.orig.tar.gz' liblqr_0.4.2.orig.tar.gz 439884 SHA256:d4c22373432cca749e4326cd41fce365e6ff857c0bfd7a5302b8eb34b69f0336
'http://archive.ubuntu.com/ubuntu/pool/main/libl/liblqr/liblqr_0.4.2-2.1.debian.tar.xz' liblqr_0.4.2-2.1.debian.tar.xz 5300 SHA256:284a002f1ecac63ac17b1aafbb230da9ce7bd9efe2d5b94e8cad49b607eb2564
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.34-1.dsc' libpng1.6_1.6.34-1.dsc 2191 SHA256:e491569d9015036d43c7a9dfcf2d835abde8c9817b057d55d929cb78501d5a30
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.34.orig.tar.xz' libpng1.6_1.6.34.orig.tar.xz 997968 SHA256:2f1e960d92ce3b3abd03d06dfec9637dfbd22febf107a536b44f7a47c60659f6
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng1.6/libpng1.6_1.6.34-1.debian.tar.xz' libpng1.6_1.6.34-1.debian.tar.xz 23568 SHA256:8ca33d2930b340412f04d76cac3159f6b3b823cff33b35b72426a75f3f02a8a0
```

### `dpkg` source package: `libpsl=0.19.1-4`

Binary Packages:

- `libpsl5:amd64=0.19.1-4`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.19.1-4
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.19.1-4.dsc' libpsl_0.19.1-4.dsc 2205 SHA256:c782695b32092fbe38f5e11228e0efcd41c0260ac5b5a503fe0b59ba40b86e7e
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.19.1.orig.tar.gz' libpsl_0.19.1.orig.tar.gz 8578385 SHA256:e370181114b8ef9daf2bb6db49b1edb842335839c15a088e7ec0a35e04e9a227
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpsl/libpsl_0.19.1-4.debian.tar.xz' libpsl_0.19.1-4.debian.tar.xz 9444 SHA256:f289b1ef5e33dc96c64edb384f597f7ddd74f1f0e7e8091155c62bd451ea1fc2
```

### `dpkg` source package: `libpthread-stubs=0.3-4`

Binary Packages:

- `libpthread-stubs0-dev:amd64=0.3-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libpthread-stubs=0.3-4
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3-4.dsc' libpthread-stubs_0.3-4.dsc 1925 SHA256:e72310a5492e641076c199561977703947174c6acc3633073d909f6f5ab3c676
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3.orig.tar.gz' libpthread-stubs_0.3.orig.tar.gz 272939 SHA256:3031f466cf0b06de6b3ccbf2019d15c4fcf75229b7d226a711bc1885b3a82cde
'http://archive.ubuntu.com/ubuntu/pool/main/libp/libpthread-stubs/libpthread-stubs_0.3-4.diff.gz' libpthread-stubs_0.3-4.diff.gz 2413 SHA256:ce3eb8bdc0f1a4347d42c5736d056973fae46908b764a9f2be83e1bd210f2024
```

### `dpkg` source package: `librsvg=2.40.18-2`

Binary Packages:

- `gir1.2-rsvg-2.0:amd64=2.40.18-2`
- `librsvg2-2:amd64=2.40.18-2`
- `librsvg2-common:amd64=2.40.18-2`
- `librsvg2-dev:amd64=2.40.18-2`

Licenses: (parsed from: `/usr/share/doc/gir1.2-rsvg-2.0/copyright`, `/usr/share/doc/librsvg2-2/copyright`, `/usr/share/doc/librsvg2-common/copyright`, `/usr/share/doc/librsvg2-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/librsvg/2.40.18-2/


### `dpkg` source package: `libseccomp=2.3.1-2.1ubuntu3`

Binary Packages:

- `libseccomp2:amd64=2.3.1-2.1ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2`
- `LGPL-2.0+`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.3.1-2.1ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.3.1-2.1ubuntu3.dsc' libseccomp_2.3.1-2.1ubuntu3.dsc 2248 SHA256:ddc380e7904869ec534851d4f14e2627be77d9230882a09832f9a59e74d08ddf
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.3.1.orig.tar.gz' libseccomp_2.3.1.orig.tar.gz 552299 SHA256:ff5bdd2168790f1979e24eaa498f8606c2f2d96f08a8dc4006a2e88affa4562b
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libseccomp/libseccomp_2.3.1-2.1ubuntu3.debian.tar.xz' libseccomp_2.3.1-2.1ubuntu3.debian.tar.xz 17312 SHA256:67e68066e9b3971fbf063cbafe3a339c50086253e8f5d87e7b9ed9c65d09e35c
```

### `dpkg` source package: `libselinux=2.7-2`

Binary Packages:

- `libselinux1:amd64=2.7-2`

Licenses: (parsed from: `/usr/share/doc/libselinux1/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libselinux=2.7-2
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.7-2.dsc' libselinux_2.7-2.dsc 2369 SHA256:09e23dce37d309751db1b5a411a330c6fac9f392a67e56ce943bad88757af1df
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.7.orig.tar.gz' libselinux_2.7.orig.tar.gz 187574 SHA256:d0fec0769b3ad60aa7baf9b9a4b7a056827769dc2dadda0dc0eb59b3d1c18c57
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux_2.7-2.debian.tar.xz' libselinux_2.7-2.debian.tar.xz 23044 SHA256:acd5c8f6607a5b10aeaa705214ea4924939cbe2de7cce174eccf5973c6f92771
```

### `dpkg` source package: `libsemanage=2.7-2`

Binary Packages:

- `libsemanage-common=2.7-2`
- `libsemanage1:amd64=2.7-2`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/libsemanage/2.7-2/


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

### `dpkg` source package: `libsigsegv=2.11-1`

Binary Packages:

- `libsigsegv2:amd64=2.11-1`

Licenses: (parsed from: `/usr/share/doc/libsigsegv2/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libsigsegv=2.11-1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.11-1.dsc' libsigsegv_2.11-1.dsc 2365 SHA256:b2b5064cee7730302ccdda9788709b8fbb270ebbad6899be1a8bb7e491ff14dd
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.11.orig.tar.gz' libsigsegv_2.11.orig.tar.gz 256573 SHA256:b8eadcfa513f9127f672082b5348a834299760e3d17ef99cf9c712fb8c068c73
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsigsegv/libsigsegv_2.11-1.debian.tar.xz' libsigsegv_2.11-1.debian.tar.xz 10212 SHA256:d253b4314b3348c000ecfa260c467c27135c80c5cd2597b9920fef5379ac70cb
```

### `dpkg` source package: `libsm=2:1.2.2-1`

Binary Packages:

- `libsm-dev:amd64=2:1.2.2-1`
- `libsm6:amd64=2:1.2.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libsm=2:1.2.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.2-1.dsc' libsm_1.2.2-1.dsc 2107 SHA256:1347efa550751179c0a3f1042a9f8ae43ee0c22cf0c2283921fa83e52a68433f
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.2.orig.tar.gz' libsm_1.2.2.orig.tar.gz 415990 SHA256:14bb7c669ce2b8ff712fbdbf48120e3742a77edcd5e025d6b3325ed30cf120f4
'http://archive.ubuntu.com/ubuntu/pool/main/libs/libsm/libsm_1.2.2-1.diff.gz' libsm_1.2.2-1.diff.gz 6183 SHA256:9848714292ead15fcc48ab2d337f2cc5fc08910abbdfaf69d3ef1b89d3fdb2d5
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
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.27-1.dsc' libthai_0.1.27-1.dsc 2371 SHA256:df7d639eab614ebb04ee4c9ca3df400e43e04d419f77fe268b33ba4dc02b80b0
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.27.orig.tar.xz' libthai_0.1.27.orig.tar.xz 410360 SHA256:1659fa1b7b1d6562102d7feb8c8c3fd94bb2dc5761ed7dbaae4f300e1c03eff6
'http://archive.ubuntu.com/ubuntu/pool/main/libt/libthai/libthai_0.1.27-1.debian.tar.xz' libthai_0.1.27-1.debian.tar.xz 11572 SHA256:cef56b2a4c7dad215de0ce222dfab1b723a5a2becc630d58c21763861a7a8289
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

### `dpkg` source package: `libunistring=0.9.3-5.2ubuntu1`

Binary Packages:

- `libunistring0:amd64=0.9.3-5.2ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libunistring0/copyright`)

- `GFDL-1.2`
- `GFDL-1.2+`
- `GPL-2`
- `GPL-2+`
- `GPL-2+ with exception`
- `GPL-3`
- `GPL-3+`
- `LGPL-3`
- `LGPL-3+`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libunistring=0.9.3-5.2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.3-5.2ubuntu1.dsc' libunistring_0.9.3-5.2ubuntu1.dsc 2166 SHA256:2c0ed2e6d2f55951888ced9edd78cfb7b437d235f89b725c13ea68e479b6a910
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.3.orig.tar.gz' libunistring_0.9.3.orig.tar.gz 2555215 SHA256:610d3ec724fbdaa654afe3cff20b9f4d504be3fd296fded2e0f7f764041006a3
'http://archive.ubuntu.com/ubuntu/pool/main/libu/libunistring/libunistring_0.9.3-5.2ubuntu1.debian.tar.xz' libunistring_0.9.3-5.2ubuntu1.debian.tar.xz 5640 SHA256:30624eb1a6627f7e2dde66700a99fdd79487d1585c5dd0fa75eb5ab03f84840b
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.6.0-4.dsc' libwebp_0.6.0-4.dsc 2014 SHA256:74a2c81782e16ffbe7ce4656bc2af013c44aff62d752f154e1cc35e5d3ae3234
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.6.0.orig.tar.gz' libwebp_0.6.0.orig.tar.gz 1302881 SHA256:c928119229d4f8f35e20113ffb61f281eda267634a8dc2285af4b0ee27cf2b40
'http://archive.ubuntu.com/ubuntu/pool/main/libw/libwebp/libwebp_0.6.0-4.debian.tar.xz' libwebp_0.6.0-4.debian.tar.xz 6228 SHA256:13e9434d5f83df4440b451422e2b0c8b3e94c7935be49ead4d71462fa64d961e
```

### `dpkg` source package: `libwmf=0.2.8.4-10.6ubuntu2`

Binary Packages:

- `libwmf-dev=0.2.8.4-10.6ubuntu2`
- `libwmf0.2-7:amd64=0.2.8.4-10.6ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libwmf-dev/copyright`, `/usr/share/doc/libwmf0.2-7/copyright`)

- `LGPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.4-3.dsc' libx11_1.6.4-3.dsc 2397 SHA256:4c5d6add2ba969067ca111c827ae94264e4c22776e22f318d264545dc1c6a300
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.4.orig.tar.gz' libx11_1.6.4.orig.tar.gz 3095115 SHA256:5d7fbb9e15c27900ea8963218a59750b674a8d7c94161b66e96fcfbdaa1c6263
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libx11/libx11_1.6.4-3.diff.gz' libx11_1.6.4-3.diff.gz 41366 SHA256:2c936827bca63eaf5b66683bdcd0ecf013d152c35439f792475db85c5c2338fd
```

### `dpkg` source package: `libxau=1:1.0.8-1`

Binary Packages:

- `libxau-dev:amd64=1:1.0.8-1`
- `libxau6:amd64=1:1.0.8-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxau=1:1.0.8-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.8-1.dsc' libxau_1.0.8-1.dsc 2040 SHA256:3ddb5f2c7a49ef7507b8d1e63e891238db877b4d1bb1c5486a3e3242c8523602
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.8.orig.tar.gz' libxau_1.0.8.orig.tar.gz 362044 SHA256:c343b4ef66d66a6b3e0e27aa46b37ad5cab0f11a5c565eafb4a1c7590bc71d7b
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxau/libxau_1.0.8-1.diff.gz' libxau_1.0.8-1.diff.gz 15287 SHA256:b493479d6a52a0e753dd357ad8a4bc5c4296015f3f7b96cf546f7c5c5843cbb0
```

### `dpkg` source package: `libxcb=1.12-1ubuntu1`

Binary Packages:

- `libxcb-render0:amd64=1.12-1ubuntu1`
- `libxcb-render0-dev:amd64=1.12-1ubuntu1`
- `libxcb-shm0:amd64=1.12-1ubuntu1`
- `libxcb-shm0-dev:amd64=1.12-1ubuntu1`
- `libxcb1:amd64=1.12-1ubuntu1`
- `libxcb1-dev:amd64=1.12-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.12-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.12-1ubuntu1.dsc' libxcb_1.12-1ubuntu1.dsc 6730 SHA256:b27e023130ebddd52b195810a114cd4b4b131b61544ac28c9804c4d2eae77bd1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.12.orig.tar.gz' libxcb_1.12.orig.tar.gz 745984 SHA256:092f147149d8a6410647a848378aaae749304d5b73e028ccb8306aa8a9e26f06
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxcb/libxcb_1.12-1ubuntu1.diff.gz' libxcb_1.12-1ubuntu1.diff.gz 26303 SHA256:b2f2a7cd120ab4b48eea6704e9d069ce982fa9af3bc058186cb914fdbf727a89
```

### `dpkg` source package: `libxdmcp=1:1.1.2-3`

Binary Packages:

- `libxdmcp-dev:amd64=1:1.1.2-3`
- `libxdmcp6:amd64=1:1.1.2-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxdmcp=1:1.1.2-3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.2-3.dsc' libxdmcp_1.1.2-3.dsc 2145 SHA256:f9697dca6a275aeee9a3eee9fb2d55e0f77485481e8b84efc6950fc9b1988460
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.2.orig.tar.gz' libxdmcp_1.1.2.orig.tar.gz 404115 SHA256:6f7c7e491a23035a26284d247779174dedc67e34e93cc3548b648ffdb6fc57c0
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxdmcp/libxdmcp_1.1.2-3.diff.gz' libxdmcp_1.1.2-3.diff.gz 18017 SHA256:5844df115c17e5ba40ac116f80373304d821c607e763ef6f40562421f5cc0cf3
```

### `dpkg` source package: `libxext=2:1.3.3-1`

Binary Packages:

- `libxext-dev:amd64=2:1.3.3-1`
- `libxext6:amd64=2:1.3.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxext=2:1.3.3-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.3-1.dsc' libxext_1.3.3-1.dsc 2221 SHA256:47106df75b8f3db1e43803e8e94a2e966cd23f7daa8cfc393af739a9e33ef955
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.3.orig.tar.gz' libxext_1.3.3.orig.tar.gz 468441 SHA256:eb0b88050491fef4716da4b06a4d92b4fc9e76f880d6310b2157df604342cfe5
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxext/libxext_1.3.3-1.diff.gz' libxext_1.3.3-1.diff.gz 20763 SHA256:e294a4884eb68acbd151312cb0c973aad63268b637b15ccf1911864b7197557e
```

### `dpkg` source package: `libxml2=2.9.4+dfsg1-5.2ubuntu1`

Binary Packages:

- `libxml2:amd64=2.9.4+dfsg1-5.2ubuntu1`
- `libxml2-dev:amd64=2.9.4+dfsg1-5.2ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `libxrender=1:0.9.10-1`

Binary Packages:

- `libxrender-dev:amd64=1:0.9.10-1`
- `libxrender1:amd64=1:0.9.10-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxrender=1:0.9.10-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.10-1.dsc' libxrender_0.9.10-1.dsc 2064 SHA256:95d6471218b44f4e60c48cea60cfb4865bbe861530add23f6c859515bee92dbd
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.10.orig.tar.gz' libxrender_0.9.10.orig.tar.gz 373717 SHA256:770527cce42500790433df84ec3521e8bf095dfe5079454a92236494ab296adf
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxrender/libxrender_0.9.10-1.diff.gz' libxrender_0.9.10-1.diff.gz 15399 SHA256:ff56a0a00119383adc5f1731e86155ae5c2de069e1d059a9da1d777917430588
```

### `dpkg` source package: `libxslt=1.1.29-5`

Binary Packages:

- `libxslt1-dev:amd64=1.1.29-5`
- `libxslt1.1:amd64=1.1.29-5`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxslt=1.1.29-5
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.29-5.dsc' libxslt_1.1.29-5.dsc 2403 SHA256:bdf606db536cce4bb3318f12379220b6af65fb8837cea58780ce20a4163a157e
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.29.orig.tar.gz' libxslt_1.1.29.orig.tar.gz 3428524 SHA256:b5976e3857837e7617b29f2249ebb5eeac34e249208d31f1fbf7a6ba7a4090ce
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxslt/libxslt_1.1.29-5.debian.tar.xz' libxslt_1.1.29-5.debian.tar.xz 34484 SHA256:1d6d404ed3b045a5f833ec824768270db1dfd1822e3ddaa6f4d69adf1abbfffa
```

### `dpkg` source package: `libxt=1:1.1.5-1`

Binary Packages:

- `libxt-dev:amd64=1:1.1.5-1`
- `libxt6:amd64=1:1.1.5-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxt=1:1.1.5-1
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.1.5-1.dsc' libxt_1.1.5-1.dsc 2109 SHA256:f44ae1393c9fd02c0b3dd03576c7b26e6c7b09de3271a87e018efadeed311639
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.1.5.orig.tar.gz' libxt_1.1.5.orig.tar.gz 962169 SHA256:b59bee38a9935565fa49dc1bfe84cb30173e2e07e1dcdf801430d4b54eb0caa3
'http://archive.ubuntu.com/ubuntu/pool/main/libx/libxt/libxt_1.1.5-1.diff.gz' libxt_1.1.5-1.diff.gz 14462 SHA256:822fe813d1ea9213e6fde91cbb607c0b6874341dc19b77b0f6649b8be8472d82
```

### `dpkg` source package: `libyaml=0.1.7-2ubuntu3`

Binary Packages:

- `libyaml-0-2:amd64=0.1.7-2ubuntu3`
- `libyaml-dev:amd64=0.1.7-2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libyaml-0-2/copyright`, `/usr/share/doc/libyaml-dev/copyright`)

- `Expat`
- `permissive`

Source:

```console
$ apt-get source -qq --print-uris libyaml=0.1.7-2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.7-2ubuntu3.dsc' libyaml_0.1.7-2ubuntu3.dsc 2019 SHA256:122f3c4ddc6b6f069382587fdde2ba9ed4800b303bce92c3d11d4fee1c1c0c5c
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.7.orig.tar.gz' libyaml_0.1.7.orig.tar.gz 527518 SHA256:8088e457264a98ba451a90b8661fcb4f9d6f478f7265d48322a196cec2480729
'http://archive.ubuntu.com/ubuntu/pool/main/liby/libyaml/libyaml_0.1.7-2ubuntu3.debian.tar.xz' libyaml_0.1.7-2ubuntu3.debian.tar.xz 4288 SHA256:d1b9caa9e645c2c306417068bcdd85e56e6065d74771c15cc970652e52f8259b
```

### `dpkg` source package: `linux=4.13.0-25.29`

Binary Packages:

- `linux-libc-dev:amd64=4.13.0-25.29`

Licenses: (parsed from: `/usr/share/doc/linux-libc-dev/copyright`)

- `GPL-2`

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

### `dpkg` source package: `lz4=0.0~r131-2ubuntu2`

Binary Packages:

- `liblz4-1:amd64=0.0~r131-2ubuntu2`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

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

### `dpkg` source package: `m4=1.4.18-1`

Binary Packages:

- `m4=1.4.18-1`

Licenses: (parsed from: `/usr/share/doc/m4/copyright`)

- `GFDL`
- `GPL`

Source:

```console
$ apt-get source -qq --print-uris m4=1.4.18-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.18-1.dsc' m4_1.4.18-1.dsc 1426 SHA256:83a6c5e4b94aa47634b7c988fa485155c01120c17682865e6f032de9adf1090c
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.18.orig.tar.xz' m4_1.4.18.orig.tar.xz 1207688 SHA256:f2c1e86ca0a404ff281631bdc8377638992744b175afb806e25871a24a934e07
'http://archive.ubuntu.com/ubuntu/pool/main/m/m4/m4_1.4.18-1.debian.tar.xz' m4_1.4.18-1.debian.tar.xz 15784 SHA256:55de78acb0272fd6e2637ab933114e64eefa58ba1e97b063629453ae1e163fff
```

### `dpkg` source package: `make-dfsg=4.1-9.1`

Binary Packages:

- `make=4.1-9.1`

Licenses: (parsed from: `/usr/share/doc/make/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris make-dfsg=4.1-9.1
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1-9.1.dsc' make-dfsg_4.1-9.1.dsc 2037 SHA256:3527e91633b0d2830a52f3b85229b2f8bdec5e1e5b77bbff95b20317757ab3a3
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1.orig.tar.gz' make-dfsg_4.1.orig.tar.gz 1350231 SHA256:b3ed04fb6718289e4a430afbe2df6ecba9177aad9f6d09aaf38e5409262ca8a3
'http://archive.ubuntu.com/ubuntu/pool/main/m/make-dfsg/make-dfsg_4.1-9.1.diff.gz' make-dfsg_4.1-9.1.diff.gz 45452 SHA256:ec9d39ed253808378aeb91bb2c34bbd177637ed197682e093c3aadfb97b338a3
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

### `dpkg` source package: `mercurial=4.3.1-2`

Binary Packages:

- `mercurial=4.3.1-2`
- `mercurial-common=4.3.1-2`

Licenses: (parsed from: `/usr/share/doc/mercurial/copyright`, `/usr/share/doc/mercurial-common/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris mercurial=4.3.1-2
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_4.3.1-2.dsc' mercurial_4.3.1-2.dsc 2225 SHA256:f3569ce442f03fa9c63746efdacf18050ede51f193c49591aa6e92906d7828e4
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_4.3.1.orig.tar.gz' mercurial_4.3.1.orig.tar.gz 5475042 SHA256:2b12f02e3a452adff4ec9cf007017bab0cadb3f37eaf12f4b25a662df73618a2
'http://archive.ubuntu.com/ubuntu/pool/universe/m/mercurial/mercurial_4.3.1-2.debian.tar.xz' mercurial_4.3.1-2.debian.tar.xz 54836 SHA256:6e9383eea38e11d2cb4f9365ee88da899d3de7da051d717e5b3480d5dea2d0f6
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

### `dpkg` source package: `mpclib3=1.0.3-2`

Binary Packages:

- `libmpc3:amd64=1.0.3-2`

Licenses: (parsed from: `/usr/share/doc/libmpc3/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris mpclib3=1.0.3-2
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.0.3-2.dsc' mpclib3_1.0.3-2.dsc 1940 SHA256:057957da4e1ac52bc42410f9ff3f2c15374735086bb1c3843068a0f4201821aa
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.0.3.orig.tar.gz' mpclib3_1.0.3.orig.tar.gz 669925 SHA256:617decc6ea09889fb08ede330917a00b16809b8db88c29c31bfbb49cbf88ecc3
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpclib3/mpclib3_1.0.3-2.diff.gz' mpclib3_1.0.3-2.diff.gz 3759 SHA256:abcc38cf102660a9061c187ba2ed07153bb0089e2067e17f20c43c910120ace7
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

### `dpkg` source package: `mpfr4=3.1.6-1`

Binary Packages:

- `libmpfr4:amd64=3.1.6-1`

Licenses: (parsed from: `/usr/share/doc/libmpfr4/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=3.1.6-1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_3.1.6-1.dsc' mpfr4_3.1.6-1.dsc 2004 SHA256:449a287fa9448826c591d87fe92b702e11e6e1cb7be88ef50f36dc7769c92c33
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_3.1.6.orig.tar.xz' mpfr4_3.1.6.orig.tar.xz 1133672 SHA256:7a62ac1a04408614fccdc506e4844b10cf0ad2c2b1677097f8f35d3a1344a950
'http://archive.ubuntu.com/ubuntu/pool/main/m/mpfr4/mpfr4_3.1.6-1.debian.tar.xz' mpfr4_3.1.6-1.debian.tar.xz 9724 SHA256:1ce306a388ab312eb1c62f4c52dc468ae55d8205e124d19eb231ef7d42fc836a
```

### `dpkg` source package: `mysql-5.7=5.7.20-1ubuntu1`

Binary Packages:

- `libmysqlclient-dev=5.7.20-1ubuntu1`
- `libmysqlclient20:amd64=5.7.20-1ubuntu1`

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

Source:

```console
$ apt-get source -qq --print-uris mysql-5.7=5.7.20-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/mysql-5.7_5.7.20-1ubuntu1.dsc' mysql-5.7_5.7.20-1ubuntu1.dsc 3345 SHA256:1aa6a38da762e1c333f2d88b06016b415c1a6f3357835742bb7ccd0c8066ff38
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/mysql-5.7_5.7.20.orig.tar.gz' mysql-5.7_5.7.20.orig.tar.gz 48833145 SHA256:260582844ac18222ce2826f48b6c7ca387990b19ddb88331af26738b394e42a4
'http://archive.ubuntu.com/ubuntu/pool/main/m/mysql-5.7/mysql-5.7_5.7.20-1ubuntu1.debian.tar.xz' mysql-5.7_5.7.20-1ubuntu1.debian.tar.xz 154588 SHA256:1cb805345cd071cf0d6f69764a8d24b6a5f7e3e760acce888af94f3106b17b64
```

### `dpkg` source package: `mysql-defaults=1.0.3`

Binary Packages:

- `default-libmysqlclient-dev:amd64=1.0.3`
- `mysql-common=5.8+1.0.3`

Licenses: (parsed from: `/usr/share/doc/default-libmysqlclient-dev/copyright`, `/usr/share/doc/mysql-common/copyright`)

- `GPL-2`
- `GPL-2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/mysql-defaults/1.0.3/


### `dpkg` source package: `ncurses=6.0+20160625-1ubuntu1`

Binary Packages:

- `libncurses5:amd64=6.0+20160625-1ubuntu1`
- `libncurses5-dev:amd64=6.0+20160625-1ubuntu1`
- `libncursesw5:amd64=6.0+20160625-1ubuntu1`
- `libncursesw5-dev:amd64=6.0+20160625-1ubuntu1`
- `libtinfo-dev:amd64=6.0+20160625-1ubuntu1`
- `libtinfo5:amd64=6.0+20160625-1ubuntu1`
- `ncurses-base=6.0+20160625-1ubuntu1`
- `ncurses-bin=6.0+20160625-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `nettle=3.3-2`

Binary Packages:

- `libhogweed4:amd64=3.3-2`
- `libnettle6:amd64=3.3-2`

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
$ apt-get source -qq --print-uris nettle=3.3-2
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.3-2.dsc' nettle_3.3-2.dsc 2022 SHA256:502530701faa5bcebc73c55aafd53096d650f55c77dec996fab96796a60ac78d
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.3.orig.tar.gz' nettle_3.3.orig.tar.gz 1887927 SHA256:46942627d5d0ca11720fec18d81fc38f7ef837ea4197c1f630e71ce0d470b11e
'http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/nettle_3.3-2.debian.tar.xz' nettle_3.3-2.debian.tar.xz 19812 SHA256:91b1e04d3d0cc188f3490fe8bc7f2ad9ec60b1c6f6b29f53b6a72dbedb40dc0e
```

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

Source:

```console
$ apt-get source -qq --print-uris nghttp2=1.29.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.29.0-1.dsc' nghttp2_1.29.0-1.dsc 2311 SHA256:f061c967541be06b393aea659faa102af988958cf3fc78b45412e9e05104241b
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.29.0.orig.tar.bz2' nghttp2_1.29.0.orig.tar.bz2 1838736 SHA256:b3ced8492dfa65773d566249ffaefa5d4b5a352c01e2fea1e7df615544fd970f
'http://archive.ubuntu.com/ubuntu/pool/main/n/nghttp2/nghttp2_1.29.0-1.debian.tar.xz' nghttp2_1.29.0-1.debian.tar.xz 12412 SHA256:4b5cbb93ac2f79a49e20b4a214928c7ad860946a08c97aceb9a63d2de4fa4c42
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

### `dpkg` source package: `openexr=2.2.0-11ubuntu1`

Binary Packages:

- `libopenexr-dev=2.2.0-11ubuntu1`
- `libopenexr22:amd64=2.2.0-11ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libopenexr-dev/copyright`, `/usr/share/doc/libopenexr22/copyright`)

- `openexr`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `openldap=2.4.45+dfsg-1ubuntu1`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.45+dfsg-1ubuntu1`
- `libldap-common=2.4.45+dfsg-1ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.45+dfsg-1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.45+dfsg-1ubuntu1.dsc' openldap_2.4.45+dfsg-1ubuntu1.dsc 2765 SHA256:d7990a3ad576ff2b6e3ec32e76adf351b54edeb073b9368b1ee84ac71ca8b5b1
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.45+dfsg.orig.tar.gz' openldap_2.4.45+dfsg.orig.tar.gz 4846458 SHA256:d51c70423aa0554d454fd3d43e7f2e940523b4ef07979305b48c233ae44b2b32
'http://archive.ubuntu.com/ubuntu/pool/main/o/openldap/openldap_2.4.45+dfsg-1ubuntu1.debian.tar.xz' openldap_2.4.45+dfsg-1ubuntu1.debian.tar.xz 175800 SHA256:2f6ddef561e986db9ecbf91ee89b9224c81089d2d5ad7c06cb3629539e95ec66
```

### `dpkg` source package: `openssh=1:7.5p1-10`

Binary Packages:

- `openssh-client=1:7.5p1-10`

Licenses: (parsed from: `/usr/share/doc/openssh-client/copyright`)

- `BSD-2-clause`
- `BSD-3-clause`
- `Beer-ware`
- `CORE-SDI-BSD-style`
- `Expat-with-advertising-restriction`
- `Mazieres-BSD-style`
- `OpenSSH`
- `Powell-BSD-style`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris openssh=1:7.5p1-10
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_7.5p1-10.dsc' openssh_7.5p1-10.dsc 2856 SHA256:b4782d7383b5dd7e23a71a28065fd15e6b8aa8cd052f8f45d0078f053efa81be
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_7.5p1.orig.tar.gz' openssh_7.5p1.orig.tar.gz 1510857 SHA256:9846e3c5fab9f0547400b4d2c017992f914222b3fd1f8eee6c7dc6bc5e59f9f0
'http://archive.ubuntu.com/ubuntu/pool/main/o/openssh/openssh_7.5p1-10.debian.tar.xz' openssh_7.5p1-10.debian.tar.xz 159252 SHA256:2eda9f24b25b306cae15a8080018ee4f06679e98e2574725459be0d7e0c7db53
```

### `dpkg` source package: `openssl=1.0.2g-1ubuntu14`

Binary Packages:

- `libssl-dev:amd64=1.0.2g-1ubuntu14`
- `libssl1.0.0:amd64=1.0.2g-1ubuntu14`
- `openssl=1.0.2g-1ubuntu14`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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

### `dpkg` source package: `pam=1.1.8-3.2ubuntu3`

Binary Packages:

- `libpam-modules:amd64=1.1.8-3.2ubuntu3`
- `libpam-modules-bin=1.1.8-3.2ubuntu3`
- `libpam-runtime=1.1.8-3.2ubuntu3`
- `libpam0g:amd64=1.1.8-3.2ubuntu3`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.1.8-3.2ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8-3.2ubuntu3.dsc' pam_1.1.8-3.2ubuntu3.dsc 2571 SHA256:53c883d699241c7ae3546fb241546322ab8fa17a1b1b6f763f49eb0b69f49025
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8.orig.tar.gz' pam_1.1.8.orig.tar.gz 1892765 SHA256:4183409a450708a976eca5af561dbf4f0490141a08e86e4a1e649c7c1b094876
'http://archive.ubuntu.com/ubuntu/pool/main/p/pam/pam_1.1.8-3.2ubuntu3.diff.gz' pam_1.1.8-3.2ubuntu3.diff.gz 198914 SHA256:2c343abda296491619b10e12e3f5e79f97cb1531ae80be4da276ec6a63679787
```

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
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.40.14-1.dsc' pango1.0_1.40.14-1.dsc 3227 SHA256:196da02884c501954773967c932bc31a26c215ad7f5be745153506d57c0c00fc
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.40.14.orig.tar.xz' pango1.0_1.40.14.orig.tar.xz 858388 SHA256:90af1beaa7bf9e4c52db29ec251ec4fd0a8f2cc185d521ad1f88d01b3a6a17e3
'http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/pango1.0_1.40.14-1.debian.tar.xz' pango1.0_1.40.14-1.debian.tar.xz 27748 SHA256:5cf2778fbafeac5a12bfed90a0154ab002bffe338873f39cb391b91c773e40c6
```

### `dpkg` source package: `patch=2.7.5-1build1`

Binary Packages:

- `patch=2.7.5-1build1`

Licenses: (parsed from: `/usr/share/doc/patch/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris patch=2.7.5-1build1
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.5-1build1.dsc' patch_2.7.5-1build1.dsc 1801 SHA256:b79f71ece24112fd5087c8e3fdcda5af20fe0c74699fe3489d488377454200fc
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.5.orig.tar.xz' patch_2.7.5.orig.tar.xz 727704 SHA256:fd95153655d6b95567e623843a0e77b81612d502ecf78a489a4aed7867caa299
'http://archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.5-1build1.debian.tar.xz' patch_2.7.5-1build1.debian.tar.xz 8204 SHA256:f32b8ceba4957a011f24e25354c7895bd822c8811e0af862713338e99d07c66a
```

### `dpkg` source package: `pcre3=2:8.39-8`

Binary Packages:

- `libpcre16-3:amd64=2:8.39-8`
- `libpcre3:amd64=2:8.39-8`
- `libpcre3-dev:amd64=2:8.39-8`
- `libpcre32-3:amd64=2:8.39-8`
- `libpcrecpp0v5:amd64=2:8.39-8`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre3=2:8.39-8
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-8.dsc' pcre3_8.39-8.dsc 2224 SHA256:df5cb56bc8ec81483f6b32eb5560fc58ceb489b9b4f04c86a16d828b4d96ae54
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39.orig.tar.bz2' pcre3_8.39.orig.tar.bz2 1560758 SHA256:b858099f82483031ee02092711689e7245586ada49e534a06e678b8ea9549e8b
'http://archive.ubuntu.com/ubuntu/pool/main/p/pcre3/pcre3_8.39-8.debian.tar.gz' pcre3_8.39-8.debian.tar.gz 26254 SHA256:fc29d4e5b4fc1bd763613afe9f314dad50c57ad930bee616208d016f9699d243
```

### `dpkg` source package: `perl=5.26.1-3`

Binary Packages:

- `libperl5.26:amd64=5.26.1-3`
- `perl=5.26.1-3`
- `perl-base=5.26.1-3`
- `perl-modules-5.26=5.26.1-3`

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

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/perl/5.26.1-3/


### `dpkg` source package: `pinentry=1.0.0-3`

Binary Packages:

- `pinentry-curses=1.0.0-3`

Licenses: (parsed from: `/usr/share/doc/pinentry-curses/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-3`
- `LGPL-3+`
- `X11`

Source:

```console
$ apt-get source -qq --print-uris pinentry=1.0.0-3
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.0.0-3.dsc' pinentry_1.0.0-3.dsc 2608 SHA256:c296bb85066d7a4b0ba33f9fc344b2cf86426d93ad2ff0b2df52c76cef1ca610
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.0.0.orig.tar.bz2' pinentry_1.0.0.orig.tar.bz2 436930 SHA256:1672c2edc1feb036075b187c0773787b2afd0544f55025c645a71b4c2f79275a
'http://archive.ubuntu.com/ubuntu/pool/main/p/pinentry/pinentry_1.0.0-3.debian.tar.xz' pinentry_1.0.0-3.debian.tar.xz 30148 SHA256:da66b517e0f2d2d6dcad80db7b53dfa052b6771ce598443c61529b7bf4143cde
```

### `dpkg` source package: `pixman=0.34.0-2`

Binary Packages:

- `libpixman-1-0:amd64=0.34.0-2`
- `libpixman-1-dev:amd64=0.34.0-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pixman=0.34.0-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.34.0-2.dsc' pixman_0.34.0-2.dsc 2091 SHA256:a2d9b02ea4b0255813197c2266cee166578b083815e255530aec390bbc43d15c
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.34.0.orig.tar.gz' pixman_0.34.0.orig.tar.gz 878784 SHA256:21b6b249b51c6800dc9553b65106e1e37d0e25df942c90531d4c3997aa20a88e
'http://archive.ubuntu.com/ubuntu/pool/main/p/pixman/pixman_0.34.0-2.diff.gz' pixman_0.34.0-2.diff.gz 315460 SHA256:e81ec91d58776d804a2c56cbebb8c80fa3318a45a6a7246005bc96985f7dd805
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

### `dpkg` source package: `postgresql-10=10.1-2`

Binary Packages:

- `libpq-dev=10.1-2`
- `libpq5:amd64=10.1-2`

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
$ apt-get source -qq --print-uris postgresql-10=10.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/postgresql-10/postgresql-10_10.1-2.dsc' postgresql-10_10.1-2.dsc 3500 SHA256:d054932c3ff6e866127f810d5737909688feb0eada494f2f72dbe905edfc08d9
'http://archive.ubuntu.com/ubuntu/pool/main/p/postgresql-10/postgresql-10_10.1.orig.tar.bz2' postgresql-10_10.1.orig.tar.bz2 19669989 SHA256:3ccb4e25fe7a7ea6308dea103cac202963e6b746697366d72ec2900449a5e713
'http://archive.ubuntu.com/ubuntu/pool/main/p/postgresql-10/postgresql-10_10.1-2.debian.tar.xz' postgresql-10_10.1-2.debian.tar.xz 19304 SHA256:e74e95cc57c4fce22687f15c7a3872fe8f92453e2cd46afd462f49d899e29110
```

### `dpkg` source package: `procps=2:3.3.12-1ubuntu2`

Binary Packages:

- `libprocps6:amd64=2:3.3.12-1ubuntu2`
- `procps=2:3.3.12-1ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libprocps6/copyright`, `/usr/share/doc/procps/copyright`)

- `GPL-2`
- `GPL-2.0+`
- `LGPL-2`
- `LGPL-2.0+`
- `LGPL-2.1`
- `LGPL-2.1+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `python-defaults=2.7.14-2ubuntu1`

Binary Packages:

- `libpython-stdlib:amd64=2.7.14-2ubuntu1`
- `python=2.7.14-2ubuntu1`
- `python-minimal=2.7.14-2ubuntu1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python-defaults=2.7.14-2ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-defaults/python-defaults_2.7.14-2ubuntu1.dsc' python-defaults_2.7.14-2ubuntu1.dsc 2772 SHA256:36dd1f3fa50649ad472f716a396cf62014dd35ca521865402bd7f002cd76d321
'http://archive.ubuntu.com/ubuntu/pool/main/p/python-defaults/python-defaults_2.7.14-2ubuntu1.tar.gz' python-defaults_2.7.14-2ubuntu1.tar.gz 275275 SHA256:234581ddf8a7115fce99f619436baafbec7dce9510f75030ab39063e64cdddb5
```

### `dpkg` source package: `python2.7=2.7.14-4`

Binary Packages:

- `libpython2.7-minimal:amd64=2.7.14-4`
- `libpython2.7-stdlib:amd64=2.7.14-4`
- `python2.7=2.7.14-4`
- `python2.7-minimal=2.7.14-4`

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
$ apt-get source -qq --print-uris python2.7=2.7.14-4
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.14-4.dsc' python2.7_2.7.14-4.dsc 3357 SHA256:d9f0ae7a03cefe8d9c7e042f1577f9a2020be3f61f649993a6a13699cbfaf0af
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.14.orig.tar.gz' python2.7_2.7.14.orig.tar.gz 17176758 SHA256:304c9b202ea6fbd0a4a8e0ad3733715fbd4749f2204a9173a58ec53c32ea73e8
'http://archive.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.14-4.diff.gz' python2.7_2.7.14-4.diff.gz 403937 SHA256:0f60b8ff943cc5f9c769daaa69658483def0a365fbbb7b951b011aef191a3542
```

### `dpkg` source package: `python3-defaults=3.6.3-0ubuntu2`

Binary Packages:

- `libpython3-stdlib:amd64=3.6.3-0ubuntu2`
- `python3=3.6.3-0ubuntu2`
- `python3-minimal=3.6.3-0ubuntu2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-defaults=3.6.3-0ubuntu2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.6.3-0ubuntu2.dsc' python3-defaults_3.6.3-0ubuntu2.dsc 2913 SHA256:128b8c27af661d9f36ca3b0b0bde0b32984db1a8eff60e72759f3fd06eaab50b
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-defaults/python3-defaults_3.6.3-0ubuntu2.tar.gz' python3-defaults_3.6.3-0ubuntu2.tar.gz 131212 SHA256:61ee6f3e5a1d7bcd280f0f8b1148a516339fca9188837ede3b9e51caf8bf478f
```

### `dpkg` source package: `python3-stdlib-extensions=3.6.4~rc1-6`

Binary Packages:

- `python3-distutils=3.6.4~rc1-6`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris python3-stdlib-extensions=3.6.4~rc1-6
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.6.4~rc1-6.dsc' python3-stdlib-extensions_3.6.4~rc1-6.dsc 2361 SHA256:2b40135bd47dabdb3ebe7754f74db724c9b27cb309b9b09ed99ee7fe3ac27964
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.6.4~rc1.orig.tar.xz' python3-stdlib-extensions_3.6.4~rc1.orig.tar.xz 925172 SHA256:227a35d87e3064a2c2d22b7fbb41e4691d0ab7d57cd57703dceb5713f3fbf194
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3-stdlib-extensions/python3-stdlib-extensions_3.6.4~rc1-6.debian.tar.xz' python3-stdlib-extensions_3.6.4~rc1-6.debian.tar.xz 14548 SHA256:3177173dbe8a4120dd0b005b5092f9ccd2a0a80f06d7b47cb059b6613ff83208
```

### `dpkg` source package: `python3.6=3.6.4-2`

Binary Packages:

- `libpython3.6-minimal:amd64=3.6.4-2`
- `libpython3.6-stdlib:amd64=3.6.4-2`
- `python3.6=3.6.4-2`
- `python3.6-2to3=3.6.4-2`
- `python3.6-minimal=3.6.4-2`

Licenses: (parsed from: `/usr/share/doc/libpython3.6-minimal/copyright`, `/usr/share/doc/libpython3.6-stdlib/copyright`, `/usr/share/doc/python3.6/copyright`, `/usr/share/doc/python3.6-2to3/copyright`, `/usr/share/doc/python3.6-minimal/copyright`)

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
$ apt-get source -qq --print-uris python3.6=3.6.4-2
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.6/python3.6_3.6.4-2.dsc' python3.6_3.6.4-2.dsc 3446 SHA256:597140652bdfcd87a91f463873733f7f34494c200edecc47b25762c2450c2967
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.6/python3.6_3.6.4.orig.tar.xz' python3.6_3.6.4.orig.tar.xz 16992824 SHA256:159b932bf56aeaa76fd66e7420522d8c8853d486b8567c459b84fe2ed13bcaba
'http://archive.ubuntu.com/ubuntu/pool/main/p/python3.6/python3.6_3.6.4-2.debian.tar.xz' python3.6_3.6.4-2.debian.tar.xz 206992 SHA256:298d7b9bcdc0783b9a6ed4184fe90a8433c0a7faafdea9c018125dd01d3a320c
```

### `dpkg` source package: `readline=7.0-0ubuntu2`

Binary Packages:

- `libreadline-dev:amd64=7.0-0ubuntu2`
- `libreadline7:amd64=7.0-0ubuntu2`
- `readline-common=7.0-0ubuntu2`

Licenses: (parsed from: `/usr/share/doc/libreadline-dev/copyright`, `/usr/share/doc/libreadline7/copyright`, `/usr/share/doc/readline-common/copyright`)

- `GFDL`
- `GPL-3`

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

### `dpkg` source package: `sed=4.4-1`

Binary Packages:

- `sed=4.4-1`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/sed/4.4-1/


### `dpkg` source package: `sensible-utils=0.0.11`

Binary Packages:

- `sensible-utils=0.0.11`

Licenses: (parsed from: `/usr/share/doc/sensible-utils/copyright`)

- `All-permissive`
- `GPL-2`
- `GPL-2+`
- `configure`
- `installsh`

Source:

```console
$ apt-get source -qq --print-uris sensible-utils=0.0.11
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.11.dsc' sensible-utils_0.0.11.dsc 1671 SHA256:00bd8cde4229752593ee06f562f8cd8d91ed3a138b2339417ccd6539e542a5c5
'http://archive.ubuntu.com/ubuntu/pool/main/s/sensible-utils/sensible-utils_0.0.11.tar.xz' sensible-utils_0.0.11.tar.xz 61448 SHA256:f1702bc0c129cfe18fb9ae8c0c7b7aedb5b2e6c0467ab3e1da18a8bbb21fe131
```

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


### `dpkg` source package: `shadow=1:4.2-3.2ubuntu4`

Binary Packages:

- `login=1:4.2-3.2ubuntu4`
- `passwd=1:4.2-3.2ubuntu4`

Licenses: (parsed from: `/usr/share/doc/login/copyright`, `/usr/share/doc/passwd/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


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

### `dpkg` source package: `six=1.11.0-1`

Binary Packages:

- `python-six=1.11.0-1`

Licenses: (parsed from: `/usr/share/doc/python-six/copyright`)

- `Expat`

Source:

```console
$ apt-get source -qq --print-uris six=1.11.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.11.0-1.dsc' six_1.11.0-1.dsc 2249 SHA256:7fd4a0f5c1a41ad899f7f0036191b13022738561234bafd20719a5d4a2ca18ac
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.11.0.orig.tar.gz' six_1.11.0.orig.tar.gz 29860 SHA256:70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9
'http://archive.ubuntu.com/ubuntu/pool/main/s/six/six_1.11.0-1.debian.tar.xz' six_1.11.0-1.debian.tar.xz 4112 SHA256:d9a218d28dff40fb0632a950c61eefe7151573df2da08bf4e2d963b3e511c146
```

### `dpkg` source package: `sqlite3=3.21.0-1`

Binary Packages:

- `libsqlite3-0:amd64=3.21.0-1`
- `libsqlite3-dev:amd64=3.21.0-1`

Licenses: (parsed from: `/usr/share/doc/libsqlite3-0/copyright`, `/usr/share/doc/libsqlite3-dev/copyright`)

- `GPL-2`
- `GPL-2+`
- `public-domain`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/sqlite3/3.21.0-1/


### `dpkg` source package: `subversion=1.9.7-3ubuntu1`

Binary Packages:

- `libsvn1:amd64=1.9.7-3ubuntu1`
- `subversion=1.9.7-3ubuntu1`

Licenses: (parsed from: `/usr/share/doc/libsvn1/copyright`, `/usr/share/doc/subversion/copyright`)

- `Apache-2.0`
- `GPL-2`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `systemd=235-3ubuntu3`

Binary Packages:

- `libsystemd0:amd64=235-3ubuntu3`
- `libudev1:amd64=235-3ubuntu3`

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
$ apt-get source -qq --print-uris systemd=235-3ubuntu3
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_235-3ubuntu3.dsc' systemd_235-3ubuntu3.dsc 4116 SHA256:619165839b2f1413a1227904efb1017752f63218eab13952700acc13c97f6e3f
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_235.orig.tar.gz' systemd_235.orig.tar.gz 6586406 SHA256:25811f96f5a027bf2a4c9383495cf5b623e385d84da31e473cf375932b3e9c52
'http://archive.ubuntu.com/ubuntu/pool/main/s/systemd/systemd_235-3ubuntu3.debian.tar.xz' systemd_235-3ubuntu3.debian.tar.xz 154504 SHA256:b0e9d7201ab72cecfb8450e3799050571d165b48dd2ff381125c6cc14fa5fec3
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

### `dpkg` source package: `tiff=4.0.9-3`

Binary Packages:

- `libtiff-dev=4.0.9-3`
- `libtiff5:amd64=4.0.9-3`
- `libtiff5-dev:amd64=4.0.9-3`
- `libtiffxx5:amd64=4.0.9-3`

Licenses: (parsed from: `/usr/share/doc/libtiff-dev/copyright`, `/usr/share/doc/libtiff5/copyright`, `/usr/share/doc/libtiff5-dev/copyright`, `/usr/share/doc/libtiffxx5/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.0.9-3
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.0.9-3.dsc' tiff_4.0.9-3.dsc 2184 SHA256:c0c57fa7f155918e117a3e6b79e581279d16d19fabc4ed49fa79433b691ddd3a
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.0.9.orig.tar.gz' tiff_4.0.9.orig.tar.gz 2305681 SHA256:6e7bdeec2c310734e734d19aae3a71ebe37a4d842e0e23dbb1b8921c0026cfcd
'http://archive.ubuntu.com/ubuntu/pool/main/t/tiff/tiff_4.0.9-3.debian.tar.xz' tiff_4.0.9-3.debian.tar.xz 18528 SHA256:c413f5b2423b95d8b068adca695f0ddaea5219088a1d38de4800b379bc20ca73
```

### `dpkg` source package: `ubuntu-keyring=2016.10.27`

Binary Packages:

- `ubuntu-keyring=2016.10.27`

Licenses: (parsed from: `/usr/share/doc/ubuntu-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris ubuntu-keyring=2016.10.27
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2016.10.27.dsc' ubuntu-keyring_2016.10.27.dsc 1174 SHA256:21538f4cea9fb0f7faa13277778b4548f9cc359ceaa5fa3fed36d8a75f5530b4
'http://archive.ubuntu.com/ubuntu/pool/main/u/ubuntu-keyring/ubuntu-keyring_2016.10.27.tar.gz' ubuntu-keyring_2016.10.27.tar.gz 19182 SHA256:dc0b83433b28e5acedf39330bedec2cd102547570d1ae135497b15bd6ac85abe
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

### `dpkg` source package: `util-linux=2.30.2-0.1ubuntu1`

Binary Packages:

- `bsdutils=1:2.30.2-0.1ubuntu1`
- `fdisk=2.30.2-0.1ubuntu1`
- `libblkid1:amd64=2.30.2-0.1ubuntu1`
- `libfdisk1:amd64=2.30.2-0.1ubuntu1`
- `libmount1:amd64=2.30.2-0.1ubuntu1`
- `libsmartcols1:amd64=2.30.2-0.1ubuntu1`
- `libuuid1:amd64=2.30.2-0.1ubuntu1`
- `mount=2.30.2-0.1ubuntu1`
- `util-linux=2.30.2-0.1ubuntu1`

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
$ apt-get source -qq --print-uris util-linux=2.30.2-0.1ubuntu1
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.30.2-0.1ubuntu1.dsc' util-linux_2.30.2-0.1ubuntu1.dsc 3667 SHA256:686b9750caa9e8bdab4eeca64aa2e3036ab4568ea73e5dc9a7910361c2df8ffe
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.30.2.orig.tar.xz' util-linux_2.30.2.orig.tar.xz 4442624 SHA256:7b5be5489e9b5b7177832836467aba1c87bf0e9bcbcb5a6f35d76cd4782589dc
'http://archive.ubuntu.com/ubuntu/pool/main/u/util-linux/util-linux_2.30.2-0.1ubuntu1.debian.tar.xz' util-linux_2.30.2-0.1ubuntu1.debian.tar.xz 86648 SHA256:d3c6f1fb53c4a668becf4e09850ca9bca1f31bd65f8775a3c5c625f0bf8a3653
```

### `dpkg` source package: `wget=1.19.2-1ubuntu1`

Binary Packages:

- `wget=1.19.2-1ubuntu1`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `x11proto-core=7.0.31-1`

Binary Packages:

- `x11proto-core-dev=7.0.31-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-core=7.0.31-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-core/x11proto-core_7.0.31-1.dsc' x11proto-core_7.0.31-1.dsc 1949 SHA256:9810fabbded85927d800058431a9168308aeec4bdd4e4fa6dc7f877855c35028
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-core/x11proto-core_7.0.31.orig.tar.gz' x11proto-core_7.0.31.orig.tar.gz 367979 SHA256:6d755eaae27b45c5cc75529a12855fed5de5969b367ed05003944cf901ed43c7
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-core/x11proto-core_7.0.31-1.diff.gz' x11proto-core_7.0.31-1.diff.gz 30387 SHA256:68f5f4e0df06f5fa5ed4a88e1b3899bd9d80313a51b6f314230132f560bcf94e
```

### `dpkg` source package: `x11proto-input=2.3.2-1`

Binary Packages:

- `x11proto-input-dev=2.3.2-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-input=2.3.2-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-input/x11proto-input_2.3.2-1.dsc' x11proto-input_2.3.2-1.dsc 1908 SHA256:6c4fc45a57d001782369ffcdbe29f5ff889d426a1053c67678c3a710dd9d03d2
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-input/x11proto-input_2.3.2.orig.tar.gz' x11proto-input_2.3.2.orig.tar.gz 244334 SHA256:10eaadd531f38f7c92ab59ef0708ca195caf3164a75c4ed99f0c04f2913f6ef3
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-input/x11proto-input_2.3.2-1.diff.gz' x11proto-input_2.3.2-1.diff.gz 6898 SHA256:21f09fce8acfb20e01bd2c90775eb8ae8f43d67dea690874625d1a0bd5a1bff2
```

### `dpkg` source package: `x11proto-kb=1.0.7-1`

Binary Packages:

- `x11proto-kb-dev=1.0.7-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-kb=1.0.7-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-kb/x11proto-kb_1.0.7-1.dsc' x11proto-kb_1.0.7-1.dsc 1929 SHA256:279f1e446457ba50e8950ebbe44446f960362f2247dece08ed276f5181596480
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-kb/x11proto-kb_1.0.7.orig.tar.gz' x11proto-kb_1.0.7.orig.tar.gz 325858 SHA256:828cb275b91268b1a3ea950d5c0c5eb076c678fdf005d517411f89cc8c3bb416
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-kb/x11proto-kb_1.0.7-1.diff.gz' x11proto-kb_1.0.7-1.diff.gz 7467 SHA256:c868adc57853c6633e0379ce25f23e4cd8847f1d67c651ed1d7e63c98574064c
```

### `dpkg` source package: `x11proto-render=2:0.11.1-2`

Binary Packages:

- `x11proto-render-dev=2:0.11.1-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-render=2:0.11.1-2
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-render/x11proto-render_0.11.1-2.dsc' x11proto-render_0.11.1-2.dsc 1979 SHA256:5cebbcce7928bd468b0eb447d9da403e5228af1691549a529a9012d2f7d18948
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-render/x11proto-render_0.11.1.orig.tar.gz' x11proto-render_0.11.1.orig.tar.gz 124436 SHA256:a0a4be3cad9381ae28279ba5582e679491fc2bec9aab8a65993108bf8dbce5fe
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-render/x11proto-render_0.11.1-2.diff.gz' x11proto-render_0.11.1-2.diff.gz 14527 SHA256:614b7adf6f08bdf25bc7fb565f048e2f94e290c3bd056fa2485e093eb887c54f
```

### `dpkg` source package: `x11proto-xext=7.3.0-1`

Binary Packages:

- `x11proto-xext-dev=7.3.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris x11proto-xext=7.3.0-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-xext/x11proto-xext_7.3.0-1.dsc' x11proto-xext_7.3.0-1.dsc 1997 SHA256:4b806c7f17f7dd466901111ce0862117541098025470601c251499d76affe9fc
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-xext/x11proto-xext_7.3.0.orig.tar.gz' x11proto-xext_7.3.0.orig.tar.gz 290814 SHA256:1b1bcdf91221e78c6c33738667a57bd9aaa63d5953174ad8ed9929296741c9f5
'http://archive.ubuntu.com/ubuntu/pool/main/x/x11proto-xext/x11proto-xext_7.3.0-1.diff.gz' x11proto-xext_7.3.0-1.diff.gz 16644 SHA256:68eec9363c7f8bcfbbaba68d6661284eb78fffccbddb293b95a6c85647cfcf6c
```

### `dpkg` source package: `xorg-sgml-doctools=1:1.11-1`

Binary Packages:

- `xorg-sgml-doctools=1:1.11-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xorg-sgml-doctools=1:1.11-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.dsc' xorg-sgml-doctools_1.11-1.dsc 1975 SHA256:1f4a12a38420b0ddab35553b9588fdf43ab39577958aed70fca435c9a747141a
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11.orig.tar.gz' xorg-sgml-doctools_1.11.orig.tar.gz 150367 SHA256:986326d7b4dd2ad298f61d8d41fe3929ac6191c6000d6d7e47a8ffc0c34e7426
'http://archive.ubuntu.com/ubuntu/pool/main/x/xorg-sgml-doctools/xorg-sgml-doctools_1.11-1.diff.gz' xorg-sgml-doctools_1.11-1.diff.gz 3194 SHA256:18eeb355cb0efff9f47f8ed8e852eee322d9733a427419f4b39f43bc4df630c1
```

### `dpkg` source package: `xorg=1:7.7+19ubuntu3`

Binary Packages:

- `x11-common=1:7.7+19ubuntu3`

Licenses: (parsed from: `/usr/share/doc/x11-common/copyright`)

- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.


### `dpkg` source package: `xtrans=1.3.5-1`

Binary Packages:

- `xtrans-dev=1.3.5-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xtrans=1.3.5-1
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.3.5-1.dsc' xtrans_1.3.5-1.dsc 1901 SHA256:64750bc2dd993ac93b9e0a8d6109ce72963ab22296479145eb3f392d238c2280
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.3.5.orig.tar.gz' xtrans_1.3.5.orig.tar.gz 227536 SHA256:b7a577c1b6c75030145e53b4793db9c88f9359ac49e7d771d4385d21b3e5945d
'http://archive.ubuntu.com/ubuntu/pool/main/x/xtrans/xtrans_1.3.5-1.diff.gz' xtrans_1.3.5-1.diff.gz 16122 SHA256:2acb2c4f5958ef1bbae74ca64007d0465261a4f62bfad6ed22f1f144c0e445e1
```

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
