# `r-base:3.5.2`

## Docker Metadata

- Image ID: `sha256:880eb7da671bcf69e0e7711df22b8cefc11031bb8faee295b7823b9c3b1285a0`
- Created: `2019-03-05T02:19:40.087201477Z`
- Virtual Size: ~ 654.61 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Command: `["R"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `LC_ALL=en_US.UTF-8`
  - `LANG=en_US.UTF-8`
  - `R_BASE_VERSION=3.5.2`
- Labels:
  - `maintainer=Dirk Eddelbuettel <edd@debian.org>`
  - `org.label-schema.license=GPL-2.0`
  - `org.label-schema.vcs-url=https://github.com/rocker-org/r-base`
  - `org.label-schema.vendor=Rocker Project`

## `dpkg` (`.deb`-based packages)

### `dpkg` source package: `acl=2.2.52-5`

Binary Packages:

- `libacl1:amd64=2.2.52-5`

Licenses: (parsed from: `/usr/share/doc/libacl1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris acl=2.2.52-5
'http://http.debian.net/debian/pool/main/a/acl/acl_2.2.52-5.dsc' acl_2.2.52-5.dsc 2032 SHA256:42ef634c4aaf7a1152b701a8e10958c81a5af4d1f9a34ebb22e4aecfdc38025d
'http://http.debian.net/debian/pool/main/a/acl/acl_2.2.52.orig.tar.bz2' acl_2.2.52.orig.tar.bz2 312128 SHA256:59d05b38af76baf2eddccbf08c7968a17451cc785ffecc657fcb46ce32b2631d
'http://http.debian.net/debian/pool/main/a/acl/acl_2.2.52-5.debian.tar.xz' acl_2.2.52-5.debian.tar.xz 12464 SHA256:aa35bec0b734a30a41562196c0205ef4217e015e2ee1c1c8bcf4ca0cfceaec6f
```

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

### `dpkg` source package: `apt=1.8.0~rc3`

Binary Packages:

- `apt=1.8.0~rc3`
- `libapt-pkg5.0:amd64=1.8.0~rc3`

Licenses: (parsed from: `/usr/share/doc/apt/copyright`, `/usr/share/doc/libapt-pkg5.0/copyright`)

- `GPL-2`
- `GPLv2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/apt/1.8.0~rc3/


### `dpkg` source package: `attr=1:2.4.47-4`

Binary Packages:

- `libattr1:amd64=1:2.4.47-4`

Licenses: (parsed from: `/usr/share/doc/libattr1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris attr=1:2.4.47-4
'http://http.debian.net/debian/pool/main/a/attr/attr_2.4.47-4.dsc' attr_2.4.47-4.dsc 2113 SHA256:709a477dcfa02169db1990b2fab0cee570fbb6b28c2bda0edbb9dea0ede9eb9d
'http://http.debian.net/debian/pool/main/a/attr/attr_2.4.47.orig.tar.bz2' attr_2.4.47.orig.tar.bz2 281877 SHA256:6c1208035757f5ce9b516402dd45b8299a53ae4d69ad2c352116f9cb8d7bc274
'http://http.debian.net/debian/pool/main/a/attr/attr_2.4.47-4.debian.tar.xz' attr_2.4.47-4.debian.tar.xz 9544 SHA256:7895894f14fe2085df061a945d1def8f8098cfacfada8d552d7288d96d01b54c
```

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

### `dpkg` source package: `base-passwd=3.5.46`

Binary Packages:

- `base-passwd=3.5.46`

Licenses: (parsed from: `/usr/share/doc/base-passwd/copyright`)

- `GPL-2`
- `PD`

Source:

```console
$ apt-get source -qq --print-uris base-passwd=3.5.46
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.46.dsc' base-passwd_3.5.46.dsc 1651 SHA256:98b5d79c9f06e05e9f41013f8fee48b08d0ffe398653b6f8bbd93c1ae1f24bd4
'http://deb.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.46.tar.xz' base-passwd_3.5.46.tar.xz 52780 SHA256:da15e380557b5a00cdc14018e3da6cbeaaadc786f2c3cb5b8f1fb4acc150b3da
```

Other potentially useful URLs:

- https://sources.debian.net/src/base-passwd/3.5.46/ (for browsing the source)
- https://sources.debian.net/src/base-passwd/3.5.46/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/base-passwd/3.5.46/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `bash=5.0-2`

Binary Packages:

- `bash=5.0-2`

Licenses: (parsed from: `/usr/share/doc/bash/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris bash=5.0-2
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.0-2.dsc' bash_5.0-2.dsc 2305 SHA256:bab9c02f6d3145025fa43f3051fa7aebe90d35429ad86c6efec128352713f86c
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.0.orig.tar.xz' bash_5.0.orig.tar.xz 5554808 SHA256:893858ba233d65bda38039e99dd96a4102b2f6a2d5e6c1c546e0794a60beed97
'http://deb.debian.org/debian/pool/main/b/bash/bash_5.0-2.debian.tar.xz' bash_5.0-2.debian.tar.xz 90056 SHA256:59eceaf5bb39396c2034c146211b9969d3bea5d78c2c75d9e0f91f111b2ef677
```

Other potentially useful URLs:

- https://sources.debian.net/src/bash/5.0-2/ (for browsing the source)
- https://sources.debian.net/src/bash/5.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/bash/5.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `binutils=2.31.1-15`

Binary Packages:

- `binutils=2.31.1-15`
- `binutils-common:amd64=2.31.1-15`
- `binutils-x86-64-linux-gnu=2.31.1-15`
- `libbinutils:amd64=2.31.1-15`

Licenses: (parsed from: `/usr/share/doc/binutils/copyright`, `/usr/share/doc/binutils-common/copyright`, `/usr/share/doc/binutils-x86-64-linux-gnu/copyright`, `/usr/share/doc/libbinutils/copyright`)

- `GFDL`
- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris binutils=2.31.1-15
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.31.1-15.dsc' binutils_2.31.1-15.dsc 11421 SHA256:1439ad304887e0d5dfda02829ffb07bc09872e95154ca20badfe8a57c010ddb0
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.31.1.orig.tar.xz' binutils_2.31.1.orig.tar.xz 21649228 SHA256:e398a2d579faa0f2b5a988add5f7481af8e21a21f63b6ea5702e6f517960c5eb
'http://deb.debian.org/debian/pool/main/b/binutils/binutils_2.31.1-15.debian.tar.xz' binutils_2.31.1-15.debian.tar.xz 126980 SHA256:b4df43410d4cc73b1bd30ca90591a222025ddf7b038623690fb7761b12678f3b
```

Other potentially useful URLs:

- https://sources.debian.net/src/binutils/2.31.1-15/ (for browsing the source)
- https://sources.debian.net/src/binutils/2.31.1-15/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/binutils/2.31.1-15/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `boot=1.3-20-2`

Binary Packages:

- `r-cran-boot=1.3-20-2`

Licenses: (parsed from: `/usr/share/doc/r-cran-boot/copyright`)

- `'unlimited distribution'`

Source:

```console
$ apt-get source -qq --print-uris boot=1.3-20-2
'http://deb.debian.org/debian/pool/main/b/boot/boot_1.3-20-2.dsc' boot_1.3-20-2.dsc 1796 SHA256:96182973b23ce3d81bf4954aed09d06707492e3044265e3f5a2eaf8dc4adeb89
'http://deb.debian.org/debian/pool/main/b/boot/boot_1.3-20.orig.tar.gz' boot_1.3-20.orig.tar.gz 231855 SHA256:adcb90b72409705e3f9c69ea6c15673dcb649b464fed06723fe0930beac5212a
'http://deb.debian.org/debian/pool/main/b/boot/boot_1.3-20-2.debian.tar.xz' boot_1.3-20-2.debian.tar.xz 5072 SHA256:78a07481b8c2451fa4f015a62ef842dbfe071b53db141e904c89c373fff6dfed
```

Other potentially useful URLs:

- https://sources.debian.net/src/boot/1.3-20-2/ (for browsing the source)
- https://sources.debian.net/src/boot/1.3-20-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/boot/1.3-20-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `build-essential=12.6`

Binary Packages:

- `build-essential=12.6`

Licenses: (parsed from: `/usr/share/doc/build-essential/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris build-essential=12.6
'http://deb.debian.org/debian/pool/main/b/build-essential/build-essential_12.6.dsc' build-essential_12.6.dsc 2476 SHA256:0c453158bb01eff3ef6baaacd12eb09ca504f616ca98a3381ed9566b460c49ac
'http://deb.debian.org/debian/pool/main/b/build-essential/build-essential_12.6.tar.xz' build-essential_12.6.tar.xz 51352 SHA256:97677f90407a34987f260be09fda3d923990155d67508b4ec9311e0530d22beb
```

Other potentially useful URLs:

- https://sources.debian.net/src/build-essential/12.6/ (for browsing the source)
- https://sources.debian.net/src/build-essential/12.6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/build-essential/12.6/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `ca-certificates=20190110`

Binary Packages:

- `ca-certificates=20190110`

Licenses: (parsed from: `/usr/share/doc/ca-certificates/copyright`)

- `GPL-2`
- `GPL-2+`
- `MPL-2.0`

Source:

```console
$ apt-get source -qq --print-uris ca-certificates=20190110
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20190110.dsc' ca-certificates_20190110.dsc 1805 SHA256:bffbfe63a1ad2a07c6094502f05899c65edba93aefe58682f440e000fc65f6f0
'http://deb.debian.org/debian/pool/main/c/ca-certificates/ca-certificates_20190110.tar.xz' ca-certificates_20190110.tar.xz 243472 SHA256:ee4bf0f4c6398005f5b5ca4e0b87b82837ac5c3b0280a1cb3a63c47555c3a675
```

Other potentially useful URLs:

- https://sources.debian.net/src/ca-certificates/20190110/ (for browsing the source)
- https://sources.debian.net/src/ca-certificates/20190110/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ca-certificates/20190110/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cairo=1.16.0-3`

Binary Packages:

- `libcairo2:amd64=1.16.0-3`

Licenses: (parsed from: `/usr/share/doc/libcairo2/copyright`)

- `LGPL-2.1`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/cairo/1.16.0-3/


### `dpkg` source package: `cdebconf=0.247`

Binary Packages:

- `libdebconfclient0:amd64=0.247`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/cdebconf/0.247/


### `dpkg` source package: `cluster=2.0.7-1-1`

Binary Packages:

- `r-cran-cluster=2.0.7-1-1+b3`

Licenses: (parsed from: `/usr/share/doc/r-cran-cluster/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris cluster=2.0.7-1-1
'http://deb.debian.org/debian/pool/main/c/cluster/cluster_2.0.7-1-1.dsc' cluster_2.0.7-1-1.dsc 1842 SHA256:1bc2708af80642c6320e76e50a9fdb6ee293d47f48ddd0709c3e1d9fb37761b5
'http://deb.debian.org/debian/pool/main/c/cluster/cluster_2.0.7-1.orig.tar.gz' cluster_2.0.7-1.orig.tar.gz 324660 SHA256:b10141090cf3c2b62260611a0ea822eb2f7bab9f4fd656c48bdc12b65c5c3dbf
'http://deb.debian.org/debian/pool/main/c/cluster/cluster_2.0.7-1-1.debian.tar.xz' cluster_2.0.7-1-1.debian.tar.xz 4052 SHA256:1b018520ac9321f181e8252efdfc1b17de103eb338406abb2c2a3e3786bf18ce
```

Other potentially useful URLs:

- https://sources.debian.net/src/cluster/2.0.7-1-1/ (for browsing the source)
- https://sources.debian.net/src/cluster/2.0.7-1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cluster/2.0.7-1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `codetools=0.2-16-1`

Binary Packages:

- `r-cran-codetools=0.2-16-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-codetools/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris codetools=0.2-16-1
'http://deb.debian.org/debian/pool/main/c/codetools/codetools_0.2-16-1.dsc' codetools_0.2-16-1.dsc 1853 SHA256:5eaed4fad2982f378437e325deb6c93354ae6e85f22434d96ed7a6f6b36f4565
'http://deb.debian.org/debian/pool/main/c/codetools/codetools_0.2-16.orig.tar.gz' codetools_0.2-16.orig.tar.gz 12996 SHA256:f67a66175cb5d8882457d1e9b91ea2f16813d554fa74f80c1fd6e17cf1877501
'http://deb.debian.org/debian/pool/main/c/codetools/codetools_0.2-16-1.debian.tar.xz' codetools_0.2-16-1.debian.tar.xz 2808 SHA256:2e11884ab7d03836f0ddd4933577348e6cb884ad8f775d7c9627abc09bfab059
```

Other potentially useful URLs:

- https://sources.debian.net/src/codetools/0.2-16-1/ (for browsing the source)
- https://sources.debian.net/src/codetools/0.2-16-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/codetools/0.2-16-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `coreutils=8.30-1`

Binary Packages:

- `coreutils=8.30-1`

Licenses: (parsed from: `/usr/share/doc/coreutils/copyright`)

- `GPL-3`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/coreutils/8.30-1/


### `dpkg` source package: `curl=7.64.0-1`

Binary Packages:

- `libcurl4:amd64=7.64.0-1`

Licenses: (parsed from: `/usr/share/doc/libcurl4/copyright`)

- `BSD-3-Clause`
- `BSD-4-Clause`
- `ISC`
- `curl`
- `other`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris curl=7.64.0-1
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.64.0-1.dsc' curl_7.64.0-1.dsc 2687 SHA256:7cef86f07f054916dd23e46d9401f163b1632d64f879cbbf5e1b1d6f98c44123
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.64.0.orig.tar.gz' curl_7.64.0.orig.tar.gz 4032645 SHA256:cb90d2eb74d4e358c1ed1489f8e3af96b50ea4374ad71f143fa4595e998d81b5
'http://deb.debian.org/debian/pool/main/c/curl/curl_7.64.0-1.debian.tar.xz' curl_7.64.0-1.debian.tar.xz 29112 SHA256:515caa9c81f07225371411f4059d78a52159e03827119a74db2ac42dd3d73d6a
```

Other potentially useful URLs:

- https://sources.debian.net/src/curl/7.64.0-1/ (for browsing the source)
- https://sources.debian.net/src/curl/7.64.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/curl/7.64.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `cyrus-sasl2=2.1.27+dfsg-1`

Binary Packages:

- `libsasl2-2:amd64=2.1.27+dfsg-1`
- `libsasl2-modules-db:amd64=2.1.27+dfsg-1`

Licenses: (parsed from: `/usr/share/doc/libsasl2-2/copyright`, `/usr/share/doc/libsasl2-modules-db/copyright`)

- `BSD-4-clause`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris cyrus-sasl2=2.1.27+dfsg-1
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27+dfsg-1.dsc' cyrus-sasl2_2.1.27+dfsg-1.dsc 3523 SHA256:21ff8887f688917ba77cee10f9e7295f00a7fa99d815eeafe40f321ed085d0bc
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27+dfsg.orig.tar.xz' cyrus-sasl2_2.1.27+dfsg.orig.tar.xz 2058596 SHA256:108b0c691c423837264f05abb559ea76c3dfdd91246555e8abe87c129a6e37cd
'http://deb.debian.org/debian/pool/main/c/cyrus-sasl2/cyrus-sasl2_2.1.27+dfsg-1.debian.tar.xz' cyrus-sasl2_2.1.27+dfsg-1.debian.tar.xz 99624 SHA256:d0f8305c97cb430bed5127c2809c98c510c74cb5ec404ed66f7f1fa97851324c
```

Other potentially useful URLs:

- https://sources.debian.net/src/cyrus-sasl2/2.1.27+dfsg-1/ (for browsing the source)
- https://sources.debian.net/src/cyrus-sasl2/2.1.27+dfsg-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/cyrus-sasl2/2.1.27+dfsg-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `dash=0.5.10.2-5`

Binary Packages:

- `dash=0.5.10.2-5`

Licenses: (parsed from: `/usr/share/doc/dash/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris dash=0.5.10.2-5
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.10.2-5.dsc' dash_0.5.10.2-5.dsc 1756 SHA256:6255cf35f61df5122637856ad0912986de1c20875177932de1c971b7bbbbd848
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.10.2.orig.tar.gz' dash_0.5.10.2.orig.tar.gz 225196 SHA256:3c663919dc5c66ec991da14c7cf7e0be8ad00f3db73986a987c118862b5f6071
'http://deb.debian.org/debian/pool/main/d/dash/dash_0.5.10.2-5.debian.tar.xz' dash_0.5.10.2-5.debian.tar.xz 41804 SHA256:fabf27bd78778b151143ed598a6b65019cfce5dd087d9693b848346459951d24
```

Other potentially useful URLs:

- https://sources.debian.net/src/dash/0.5.10.2-5/ (for browsing the source)
- https://sources.debian.net/src/dash/0.5.10.2-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dash/0.5.10.2-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `db5.3=5.3.28+dfsg1-0.3`

Binary Packages:

- `libdb5.3:amd64=5.3.28+dfsg1-0.3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/db5.3/5.3.28+dfsg1-0.3/


### `dpkg` source package: `debconf=1.5.70`

Binary Packages:

- `debconf=1.5.70`

Licenses: (parsed from: `/usr/share/doc/debconf/copyright`)

- `BSD-2-clause`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/debconf/1.5.70/


### `dpkg` source package: `debian-archive-keyring=2018.1`

Binary Packages:

- `debian-archive-keyring=2018.1`

Licenses: (parsed from: `/usr/share/doc/debian-archive-keyring/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debian-archive-keyring=2018.1
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2018.1.dsc' debian-archive-keyring_2018.1.dsc 1785 SHA256:6eaa621bab104d8ea9962f212425876969a9c4fe8ed8dfe202343a3d267e7aca
'http://deb.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2018.1.tar.xz' debian-archive-keyring_2018.1.tar.xz 80512 SHA256:521bc76f9323119375aa9d7ecfba19fe15270c388d9495f26b013b55014b302d
```

Other potentially useful URLs:

- https://sources.debian.net/src/debian-archive-keyring/2018.1/ (for browsing the source)
- https://sources.debian.net/src/debian-archive-keyring/2018.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debian-archive-keyring/2018.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `debianutils=4.8.6.1`

Binary Packages:

- `debianutils=4.8.6.1`

Licenses: (parsed from: `/usr/share/doc/debianutils/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris debianutils=4.8.6.1
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.8.6.1.dsc' debianutils_4.8.6.1.dsc 1625 SHA256:fa869200410510cdefc85c89755d21ac054836a18b6916aedeba472e4b0567bb
'http://deb.debian.org/debian/pool/main/d/debianutils/debianutils_4.8.6.1.tar.xz' debianutils_4.8.6.1.tar.xz 156604 SHA256:099f1e8a7278b26145a2ba2dda84c4118403bfab38c8d7070a6235a7ffcb55ed
```

Other potentially useful URLs:

- https://sources.debian.net/src/debianutils/4.8.6.1/ (for browsing the source)
- https://sources.debian.net/src/debianutils/4.8.6.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/debianutils/4.8.6.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `diffutils=1:3.6-1`

Binary Packages:

- `diffutils=1:3.6-1`

Licenses: (parsed from: `/usr/share/doc/diffutils/copyright`)

- `GFDL`
- `GPL`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/diffutils/1:3.6-1/


### `dpkg` source package: `dpkg=1.19.5`

Binary Packages:

- `dpkg=1.19.5`
- `dpkg-dev=1.19.5`
- `libdpkg-perl=1.19.5`

Licenses: (parsed from: `/usr/share/doc/dpkg/copyright`, `/usr/share/doc/dpkg-dev/copyright`, `/usr/share/doc/libdpkg-perl/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`
- `public-domain-md5`
- `public-domain-s-s-d`

Source:

```console
$ apt-get source -qq --print-uris dpkg=1.19.5
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.19.5.dsc' dpkg_1.19.5.dsc 2103 SHA256:a799548f5b991d6b3701d4fea798811aa50cef9c6e87a89a14522e2a206d39e1
'http://deb.debian.org/debian/pool/main/d/dpkg/dpkg_1.19.5.tar.xz' dpkg_1.19.5.tar.xz 4699096 SHA256:ed327c9973610a695e1950613861c734974d9476e76ef713724558601ce63544
```

Other potentially useful URLs:

- https://sources.debian.net/src/dpkg/1.19.5/ (for browsing the source)
- https://sources.debian.net/src/dpkg/1.19.5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/dpkg/1.19.5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `e2fsprogs=1.44.5-1`

Binary Packages:

- `e2fsprogs=1.44.5-1`
- `libcom-err2:amd64=1.44.5-1`
- `libext2fs2:amd64=1.44.5-1`
- `libss2:amd64=1.44.5-1`

Licenses: (parsed from: `/usr/share/doc/e2fsprogs/copyright`, `/usr/share/doc/libcom-err2/copyright`, `/usr/share/doc/libext2fs2/copyright`, `/usr/share/doc/libss2/copyright`)

- `GPL-2`
- `LGPL-2`

Source:

```console
$ apt-get source -qq --print-uris e2fsprogs=1.44.5-1
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.44.5-1.dsc' e2fsprogs_1.44.5-1.dsc 2747 SHA256:119cb2a7901e48bb282b6335121388f7e5849b40664dae0c05c03491236db5bb
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.44.5.orig.tar.gz' e2fsprogs_1.44.5.orig.tar.gz 7619237 SHA256:2e211fae27ef74d5af4a4e40b10b8df7f87c655933bd171aab4889bfc4e6d1cc
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.44.5.orig.tar.gz.asc' e2fsprogs_1.44.5.orig.tar.gz.asc 488 SHA256:c0e3e4e51f46c005890963b005015b784b2f19e291a16a15681b9906528f557e
'http://deb.debian.org/debian/pool/main/e/e2fsprogs/e2fsprogs_1.44.5-1.debian.tar.xz' e2fsprogs_1.44.5-1.debian.tar.xz 78056 SHA256:287dd7f311a98c99e984500d7cfd2860aa0c5409672f35515f0a31412799d0dc
```

Other potentially useful URLs:

- https://sources.debian.net/src/e2fsprogs/1.44.5-1/ (for browsing the source)
- https://sources.debian.net/src/e2fsprogs/1.44.5-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/e2fsprogs/1.44.5-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ed=1.15-1`

Binary Packages:

- `ed=1.15-1`

Licenses: (parsed from: `/usr/share/doc/ed/copyright`)

- `BSD-2-Clause`
- `FCONF`
- `FDOC`
- `FLOG`
- `GFDL-1.3`
- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris ed=1.15-1
'http://deb.debian.org/debian/pool/main/e/ed/ed_1.15-1.dsc' ed_1.15-1.dsc 1812 SHA256:d35971d9500f0b80f697bc7d83f8f660d4e66dd5051743816df84cb4b65a4c72
'http://deb.debian.org/debian/pool/main/e/ed/ed_1.15.orig.tar.gz' ed_1.15.orig.tar.gz 89274 SHA256:e829e81399f467a7070728cfb1bf894713125935f539e6a0e4a5c5f3be637873
'http://deb.debian.org/debian/pool/main/e/ed/ed_1.15-1.debian.tar.xz' ed_1.15-1.debian.tar.xz 8384 SHA256:624980719d5de2f4ee059d7f50b1a633062e7bb132cb5a3e3bea8b230f835c30
```

Other potentially useful URLs:

- https://sources.debian.net/src/ed/1.15-1/ (for browsing the source)
- https://sources.debian.net/src/ed/1.15-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ed/1.15-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `elfutils=0.176-1`

Binary Packages:

- `libelf1:amd64=0.176-1`

Licenses: (parsed from: `/usr/share/doc/libelf1/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-`

Source:

```console
$ apt-get source -qq --print-uris elfutils=0.176-1
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.176-1.dsc' elfutils_0.176-1.dsc 2568 SHA256:04188a6d3e83332d462a6b8f5add8fc5f37e4f95cf5d602ad74b574b6f61fc4f
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.176.orig.tar.bz2' elfutils_0.176.orig.tar.bz2 8646075 SHA256:eb5747c371b0af0f71e86215a5ebb88728533c3a104a43d4231963f308cd1023
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.176.orig.tar.bz2.asc' elfutils_0.176.orig.tar.bz2.asc 455 SHA256:51474b579b25fc799de0777e241c83605427d2903f8d28524ef6af42f75931fd
'http://deb.debian.org/debian/pool/main/e/elfutils/elfutils_0.176-1.debian.tar.xz' elfutils_0.176-1.debian.tar.xz 31492 SHA256:f19d4982d9c98be2effac6846db55b67d99f152d52babb83592355e497f7dc71
```

Other potentially useful URLs:

- https://sources.debian.net/src/elfutils/0.176-1/ (for browsing the source)
- https://sources.debian.net/src/elfutils/0.176-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/elfutils/0.176-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `findutils=4.6.0+git+20190209-2`

Binary Packages:

- `findutils=4.6.0+git+20190209-2`

Licenses: (parsed from: `/usr/share/doc/findutils/copyright`)

- `GFDL-1.3`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris findutils=4.6.0+git+20190209-2
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0+git+20190209-2.dsc' findutils_4.6.0+git+20190209-2.dsc 2137 SHA256:e09430f44f976ee0e51e3226543247668b4ef88c05d14a84ed2d5a6f1bd07421
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0+git+20190209.orig.tar.xz' findutils_4.6.0+git+20190209.orig.tar.xz 1893084 SHA256:6832b3f6ddc0e2718795e6732ea40cc5309b948505f55fb9935919d6aaac7e9d
'http://deb.debian.org/debian/pool/main/f/findutils/findutils_4.6.0+git+20190209-2.debian.tar.xz' findutils_4.6.0+git+20190209-2.debian.tar.xz 26628 SHA256:d6f4c6fedc27cf5d616c9fbf41a46b8fb8b078f1f21045b484419b145037e849
```

Other potentially useful URLs:

- https://sources.debian.net/src/findutils/4.6.0+git+20190209-2/ (for browsing the source)
- https://sources.debian.net/src/findutils/4.6.0+git+20190209-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/findutils/4.6.0+git+20190209-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `fontconfig=2.13.1-2`

Binary Packages:

- `fontconfig=2.13.1-2`
- `fontconfig-config=2.13.1-2`
- `libfontconfig1:amd64=2.13.1-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris fontconfig=2.13.1-2
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.13.1-2.dsc' fontconfig_2.13.1-2.dsc 2185 SHA256:4c9ee914941b8f129ab54a13ecc889eb3165588bf4a7b3ae049226c7972ac486
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.13.1.orig.tar.bz2' fontconfig_2.13.1.orig.tar.bz2 1723639 SHA256:f655dd2a986d7aa97e052261b36aa67b0a64989496361eca8d604e6414006741
'http://deb.debian.org/debian/pool/main/f/fontconfig/fontconfig_2.13.1-2.debian.tar.xz' fontconfig_2.13.1-2.debian.tar.xz 53600 SHA256:9da208343c570b2e8d48c6c8b4cf49b0647ae334df505b2ec6a171e73453e498
```

Other potentially useful URLs:

- https://sources.debian.net/src/fontconfig/2.13.1-2/ (for browsing the source)
- https://sources.debian.net/src/fontconfig/2.13.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fontconfig/2.13.1-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `foreign=0.8.71-1`

Binary Packages:

- `r-cran-foreign=0.8.71-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-foreign/copyright`)

- `GPL`
- `GPL `

Source:

```console
$ apt-get source -qq --print-uris foreign=0.8.71-1
'http://deb.debian.org/debian/pool/main/f/foreign/foreign_0.8.71-1.dsc' foreign_0.8.71-1.dsc 1832 SHA256:68e87cdaa107ad59f4a1e787d34100fc338d559c0ec842e63e89aa9e8a53b4b8
'http://deb.debian.org/debian/pool/main/f/foreign/foreign_0.8.71.orig.tar.gz' foreign_0.8.71.orig.tar.gz 347295 SHA256:3bd2392fbcd9dd4f385ac1418a5e454b9769e6414a21fbb5ae1e7ce6072760d7
'http://deb.debian.org/debian/pool/main/f/foreign/foreign_0.8.71-1.debian.tar.xz' foreign_0.8.71-1.debian.tar.xz 4100 SHA256:e50931cacfd72003d6fa2c00d71dc1a30f6fbe9f6f1d0ec2c9f5b525925643e1
```

Other potentially useful URLs:

- https://sources.debian.net/src/foreign/0.8.71-1/ (for browsing the source)
- https://sources.debian.net/src/foreign/0.8.71-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/foreign/0.8.71-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `freetype=2.9.1-3`

Binary Packages:

- `libfreetype6:amd64=2.9.1-3`

Licenses: (parsed from: `/usr/share/doc/libfreetype6/copyright`)

- `BSD-3-Clause`
- `Catharon-OSL`
- `FSFUL`
- `FSFULLR`
- `FTL`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`
- `MIT`
- `OpenGroup-BSD-like`
- `Permissive`
- `Public-Domain`
- `Zlib`

Source:

```console
$ apt-get source -qq --print-uris freetype=2.9.1-3
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.9.1-3.dsc' freetype_2.9.1-3.dsc 3658 SHA256:ea31c2a7b696c1d0f56ee850cc292bea04642cbc2f22b5db621b01658b5a4105
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.9.1.orig-ft2demos.tar.gz' freetype_2.9.1.orig-ft2demos.tar.gz 294850 SHA256:3d440aad3481285c7455f1593577e375c9d5792c800bbaba68d46fd75130fab9
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.9.1.orig-ft2demos.tar.gz.asc' freetype_2.9.1.orig-ft2demos.tar.gz.asc 359 SHA256:665b8357378dc715fbac964d05cdcc2a2f7fd1e9d7918a27bf50f4d0a17f0d30
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.9.1.orig-ft2docs.tar.gz' freetype_2.9.1.orig-ft2docs.tar.gz 2123920 SHA256:f57c1297f5ad2ad4764f491317fa0f548bd307c4513185d4a0602412e83b1dc9
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.9.1.orig-ft2docs.tar.gz.asc' freetype_2.9.1.orig-ft2docs.tar.gz.asc 359 SHA256:c4c674db43603f719018716970569d1722d0de46fa94757eb7f39266d72cdbd1
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.9.1.orig.tar.gz' freetype_2.9.1.orig.tar.gz 2533956 SHA256:ec391504e55498adceb30baceebd147a6e963f636eb617424bcfc47a169898ce
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.9.1.orig.tar.gz.asc' freetype_2.9.1.orig.tar.gz.asc 359 SHA256:2c2c5ae3b3838053b94366639e802b18bc4761003ea15ce73402d276baec424d
'http://deb.debian.org/debian/pool/main/f/freetype/freetype_2.9.1-3.debian.tar.xz' freetype_2.9.1-3.debian.tar.xz 111532 SHA256:62fc9a54db8315c10bb2fdc528bca3a22380556210dd0409bef4f565754ef221
```

Other potentially useful URLs:

- https://sources.debian.net/src/freetype/2.9.1-3/ (for browsing the source)
- https://sources.debian.net/src/freetype/2.9.1-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/freetype/2.9.1-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `fribidi=1.0.5-3.1`

Binary Packages:

- `libfribidi0:amd64=1.0.5-3.1`

Licenses: (parsed from: `/usr/share/doc/libfribidi0/copyright`)

- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris fribidi=1.0.5-3.1
'http://deb.debian.org/debian/pool/main/f/fribidi/fribidi_1.0.5-3.1.dsc' fribidi_1.0.5-3.1.dsc 2289 SHA256:189f702ee524774f17199f9bceedf35d7744f447bf6f259797bf2edef224b840
'http://deb.debian.org/debian/pool/main/f/fribidi/fribidi_1.0.5.orig.tar.bz2' fribidi_1.0.5.orig.tar.bz2 2082617 SHA256:6a64f2a687f5c4f203a46fa659f43dd43d1f8b845df8d723107e8a7e6158e4ce
'http://deb.debian.org/debian/pool/main/f/fribidi/fribidi_1.0.5-3.1.debian.tar.xz' fribidi_1.0.5-3.1.debian.tar.xz 9212 SHA256:77345023d3e5f29aec20bf2dd743ff6d4cfab61f4ec3b7006e57d962e98d6d85
```

Other potentially useful URLs:

- https://sources.debian.net/src/fribidi/1.0.5-3.1/ (for browsing the source)
- https://sources.debian.net/src/fribidi/1.0.5-3.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/fribidi/1.0.5-3.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-8=8.3.0-2`

Binary Packages:

- `cpp-8=8.3.0-2`
- `g++-8=8.3.0-2`
- `gcc-8=8.3.0-2`
- `gcc-8-base:amd64=8.3.0-2`
- `gfortran-8=8.3.0-2`
- `libasan5:amd64=8.3.0-2`
- `libatomic1:amd64=8.3.0-2`
- `libcc1-0:amd64=8.3.0-2`
- `libgcc-8-dev:amd64=8.3.0-2`
- `libgcc1:amd64=1:8.3.0-2`
- `libgfortran-8-dev:amd64=8.3.0-2`
- `libgfortran5:amd64=8.3.0-2`
- `libgomp1:amd64=8.3.0-2`
- `libitm1:amd64=8.3.0-2`
- `liblsan0:amd64=8.3.0-2`
- `libmpx2:amd64=8.3.0-2`
- `libquadmath0:amd64=8.3.0-2`
- `libstdc++-8-dev:amd64=8.3.0-2`
- `libstdc++6:amd64=8.3.0-2`
- `libtsan0:amd64=8.3.0-2`
- `libubsan1:amd64=8.3.0-2`

Licenses: (parsed from: `/usr/share/doc/cpp-8/copyright`, `/usr/share/doc/g++-8/copyright`, `/usr/share/doc/gcc-8/copyright`, `/usr/share/doc/gcc-8-base/copyright`, `/usr/share/doc/gfortran-8/copyright`, `/usr/share/doc/libasan5/copyright`, `/usr/share/doc/libatomic1/copyright`, `/usr/share/doc/libcc1-0/copyright`, `/usr/share/doc/libgcc-8-dev/copyright`, `/usr/share/doc/libgcc1/copyright`, `/usr/share/doc/libgfortran-8-dev/copyright`, `/usr/share/doc/libgfortran5/copyright`, `/usr/share/doc/libgomp1/copyright`, `/usr/share/doc/libitm1/copyright`, `/usr/share/doc/liblsan0/copyright`, `/usr/share/doc/libmpx2/copyright`, `/usr/share/doc/libquadmath0/copyright`, `/usr/share/doc/libstdc++-8-dev/copyright`, `/usr/share/doc/libstdc++6/copyright`, `/usr/share/doc/libtsan0/copyright`, `/usr/share/doc/libubsan1/copyright`)

- `Artistic`
- `GFDL-1.2`
- `GPL`
- `GPL-2`
- `GPL-3`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-8=8.3.0-2
'http://deb.debian.org/debian/pool/main/g/gcc-8/gcc-8_8.3.0-2.dsc' gcc-8_8.3.0-2.dsc 32433 SHA256:62d90a80b7e7c78f46965f3fad6f67c6e14c69a5eb0000f50675e8d7f7aff736
'http://deb.debian.org/debian/pool/main/g/gcc-8/gcc-8_8.3.0.orig.tar.gz' gcc-8_8.3.0.orig.tar.gz 87764363 SHA256:ee3fd608f66e5737f20cf71b176cfbf58f7c1d190ad6def33d57610cdae8eac2
'http://deb.debian.org/debian/pool/main/g/gcc-8/gcc-8_8.3.0-2.diff.gz' gcc-8_8.3.0-2.diff.gz 637923 SHA256:caf1916ad3ae547960b007021b185df6f1c9fa458fc648565cb4b3c5d182a710
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-8/8.3.0-2/ (for browsing the source)
- https://sources.debian.net/src/gcc-8/8.3.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-8/8.3.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gcc-defaults=1.181`

Binary Packages:

- `cpp=4:8.3.0-1`
- `g++=4:8.3.0-1`
- `gcc=4:8.3.0-1`
- `gfortran=4:8.3.0-1`

Licenses: (parsed from: `/usr/share/doc/cpp/copyright`, `/usr/share/doc/g++/copyright`, `/usr/share/doc/gcc/copyright`, `/usr/share/doc/gfortran/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gcc-defaults=1.181
'http://deb.debian.org/debian/pool/main/g/gcc-defaults/gcc-defaults_1.181.dsc' gcc-defaults_1.181.dsc 15508 SHA256:d89d80502009816bac8e77c423c3f7d4e6fb4b684f036fae785dacf4454ddc75
'http://deb.debian.org/debian/pool/main/g/gcc-defaults/gcc-defaults_1.181.tar.gz' gcc-defaults_1.181.tar.gz 72227 SHA256:39c34b070fc29223ba42ae6d53653a8f02fdbc0e9d6ca3245de9b19d2c6e9d07
```

Other potentially useful URLs:

- https://sources.debian.net/src/gcc-defaults/1.181/ (for browsing the source)
- https://sources.debian.net/src/gcc-defaults/1.181/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gcc-defaults/1.181/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gdbm=1.18.1-3`

Binary Packages:

- `libgdbm-compat4:amd64=1.18.1-3`
- `libgdbm6:amd64=1.18.1-3`

Licenses: (parsed from: `/usr/share/doc/libgdbm-compat4/copyright`, `/usr/share/doc/libgdbm6/copyright`)

- `GFDL-NIV-1.3+`
- `GPL-2`
- `GPL-2+`
- `GPL-3`
- `GPL-3+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/gdbm/1.18.1-3/


### `dpkg` source package: `glib2.0=2.58.3-1`

Binary Packages:

- `libglib2.0-0:amd64=2.58.3-1`

Licenses: (parsed from: `/usr/share/doc/libglib2.0-0/copyright`)

- `Apache-2.0`
- `Expat`
- `GPL-2+`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris glib2.0=2.58.3-1
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.58.3-1.dsc' glib2.0_2.58.3-1.dsc 3243 SHA256:f64a6915e037a5cdf894e4c41910d661240ba0cd90a0efefcb838a7aa33e7714
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.58.3.orig.tar.xz' glib2.0_2.58.3.orig.tar.xz 4863648 SHA256:8f43c31767e88a25da72b52a40f3301fefc49a665b56dc10ee7cc9565cbe7481
'http://deb.debian.org/debian/pool/main/g/glib2.0/glib2.0_2.58.3-1.debian.tar.xz' glib2.0_2.58.3-1.debian.tar.xz 84860 SHA256:414bb187db65d2cccff39fb31a7711d7928b3ae766b9db0777d1de68e4c7e4d7
```

Other potentially useful URLs:

- https://sources.debian.net/src/glib2.0/2.58.3-1/ (for browsing the source)
- https://sources.debian.net/src/glib2.0/2.58.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glib2.0/2.58.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glibc=2.28-7`

Binary Packages:

- `libc-bin=2.28-7`
- `libc-l10n=2.28-7`
- `locales=2.28-7`

Licenses: (parsed from: `/usr/share/doc/libc-bin/copyright`, `/usr/share/doc/libc-l10n/copyright`, `/usr/share/doc/locales/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.28-7
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.28-7.dsc' glibc_2.28-7.dsc 8872 SHA256:487e3c830de9a4b9d85ff7ed2dc61f7a07c9145f31ff521f03d9e95c2b01291b
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.28.orig.tar.xz' glibc_2.28.orig.tar.xz 17061292 SHA256:53d3c1c7bff0fb25d4c7874bf13435dc44a71fd7dd5ffc9bfdcb513cdfc36854
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.28-7.debian.tar.xz' glibc_2.28-7.debian.tar.xz 873088 SHA256:522c8338ad53bfd71d7c1d5d037e446d2ed7ffebb76db1f79c8c46f604162d75
```

Other potentially useful URLs:

- https://sources.debian.net/src/glibc/2.28-7/ (for browsing the source)
- https://sources.debian.net/src/glibc/2.28-7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glibc/2.28-7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `glibc=2.28-8`

Binary Packages:

- `libc-dev-bin=2.28-8`
- `libc6:amd64=2.28-8`
- `libc6-dev:amd64=2.28-8`

Licenses: (parsed from: `/usr/share/doc/libc-dev-bin/copyright`, `/usr/share/doc/libc6/copyright`, `/usr/share/doc/libc6-dev/copyright`)

- `GPL-2`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris glibc=2.28-8
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.28-8.dsc' glibc_2.28-8.dsc 8885 SHA256:761cdb28592f2c805fdc580c66753c90e9118b8631e0c738b283c77a9120ff3c
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.28.orig.tar.xz' glibc_2.28.orig.tar.xz 17061292 SHA256:53d3c1c7bff0fb25d4c7874bf13435dc44a71fd7dd5ffc9bfdcb513cdfc36854
'http://deb.debian.org/debian/pool/main/g/glibc/glibc_2.28-8.debian.tar.xz' glibc_2.28-8.debian.tar.xz 881916 SHA256:fac6b18552dbd2271e6db03c5a91b01b072f91f5b64ee782c874d0f0ea9d9d2f
```

Other potentially useful URLs:

- https://sources.debian.net/src/glibc/2.28-8/ (for browsing the source)
- https://sources.debian.net/src/glibc/2.28-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/glibc/2.28-8/ (for access to the source package after it no longer exists in the archive)

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
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2+dfsg-4.dsc' gmp_6.1.2+dfsg-4.dsc 2123 SHA256:5e9c98e1636344bf0c84710ee564ee6032d6a9db26aa5d29857d65b2a979877c
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2+dfsg.orig.tar.xz' gmp_6.1.2+dfsg.orig.tar.xz 1804424 SHA256:18016f718f621e7641ddd4e57f8e140391c5183252e5998263ffff59198a65b7
'http://deb.debian.org/debian/pool/main/g/gmp/gmp_6.1.2+dfsg-4.debian.tar.xz' gmp_6.1.2+dfsg-4.debian.tar.xz 21416 SHA256:cb25b080d915d9e5a641920f0471b4deb5368af739c7675d887cf290c2cffbe2
```

Other potentially useful URLs:

- https://sources.debian.net/src/gmp/2:6.1.2+dfsg-4/ (for browsing the source)
- https://sources.debian.net/src/gmp/2:6.1.2+dfsg-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gmp/2:6.1.2+dfsg-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnupg2=2.2.12-1`

Binary Packages:

- `gpgv=2.2.12-1`

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

Source:

```console
$ apt-get source -qq --print-uris gnupg2=2.2.12-1
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.12-1.dsc' gnupg2_2.2.12-1.dsc 3139 SHA256:480cba4feb4466b29e5d69f15ad49361722a11bb59ce311c091f6d86004a7b22
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.12.orig.tar.bz2' gnupg2_2.2.12.orig.tar.bz2 6682303 SHA256:db030f8b4c98640e91300d36d516f1f4f8fe09514a94ea9fc7411ee1a34082cb
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.12.orig.tar.bz2.asc' gnupg2_2.2.12.orig.tar.bz2.asc 3204 SHA256:97c8dc25c4c2fe9a39b2ffd81b65b6f3dc4ad359c9a81ca4bb9b4bdeb6167c60
'http://deb.debian.org/debian/pool/main/g/gnupg2/gnupg2_2.2.12-1.debian.tar.xz' gnupg2_2.2.12-1.debian.tar.xz 63368 SHA256:a48bbabcb393459fecd2128304c147d093143784913b302cff1181718e4a82dc
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnupg2/2.2.12-1/ (for browsing the source)
- https://sources.debian.net/src/gnupg2/2.2.12-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnupg2/2.2.12-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gnutls28=3.6.6-2`

Binary Packages:

- `libgnutls30:amd64=3.6.6-2`

Licenses: (parsed from: `/usr/share/doc/libgnutls30/copyright`)

- `Apache-2.0`
- `CC0 license`
- `GFDL-1.3`
- `GPL`
- `GPL-3`
- `GPLv3+`
- `LGPL`
- `LGPL-3`
- `LGPLv3+_or_GPLv2+`
- `The MIT License (MIT)`
- `The main library is licensed under GNU Lesser`

Source:

```console
$ apt-get source -qq --print-uris gnutls28=3.6.6-2
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.6.6-2.dsc' gnutls28_3.6.6-2.dsc 3322 SHA256:1645cf20c290fac811d0d3eaad7f90bff53510f4b338825ae355955757f85bc8
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.6.6.orig.tar.xz' gnutls28_3.6.6.orig.tar.xz 8257612 SHA256:bb9acab8af2ac430edf45faaaa4ed2c51f86e57cb57689be6701aceef4732ca7
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.6.6.orig.tar.xz.asc' gnutls28_3.6.6.orig.tar.xz.asc 534 SHA256:58b6c181e5a51b8021fb5177eed0dd2e867b638921cb0a20fb5972db6c50acc4
'http://deb.debian.org/debian/pool/main/g/gnutls28/gnutls28_3.6.6-2.debian.tar.xz' gnutls28_3.6.6-2.debian.tar.xz 66604 SHA256:ea71f2911fa6d745888ffa48a158b1220f0687b3bb9ce161714c23c64d3e0035
```

Other potentially useful URLs:

- https://sources.debian.net/src/gnutls28/3.6.6-2/ (for browsing the source)
- https://sources.debian.net/src/gnutls28/3.6.6-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gnutls28/3.6.6-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `graphite2=1.3.13-7`

Binary Packages:

- `libgraphite2-3:amd64=1.3.13-7`

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
$ apt-get source -qq --print-uris graphite2=1.3.13-7
'http://deb.debian.org/debian/pool/main/g/graphite2/graphite2_1.3.13-7.dsc' graphite2_1.3.13-7.dsc 2552 SHA256:0c646f75bfaee6b2447fc065dd3db3008c51896bfd3c1ff51919c14a34c6d831
'http://deb.debian.org/debian/pool/main/g/graphite2/graphite2_1.3.13.orig.tar.gz' graphite2_1.3.13.orig.tar.gz 6664941 SHA256:2f9f609deeddfe2b193502adc8df3b0396694b799a433c36e85fd1242e654cd9
'http://deb.debian.org/debian/pool/main/g/graphite2/graphite2_1.3.13-7.debian.tar.xz' graphite2_1.3.13-7.debian.tar.xz 11972 SHA256:6577d43c7b40f8bcf4b18cb86284eec973029a341c1155754649557526304534
```

Other potentially useful URLs:

- https://sources.debian.net/src/graphite2/1.3.13-7/ (for browsing the source)
- https://sources.debian.net/src/graphite2/1.3.13-7/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/graphite2/1.3.13-7/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `grep=3.3-1`

Binary Packages:

- `grep=3.3-1`

Licenses: (parsed from: `/usr/share/doc/grep/copyright`)

- `GPL-3`
- `GPL-3+`

Source:

```console
$ apt-get source -qq --print-uris grep=3.3-1
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.3-1.dsc' grep_3.3-1.dsc 2038 SHA256:4a019e5634f0a3a15715140fe8639af4cff0f2f7af8cee9b95b0607740ba9b25
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.3.orig.tar.xz' grep_3.3.orig.tar.xz 1473056 SHA256:b960541c499619efd6afe1fa795402e4733c8e11ebf9fafccc0bb4bccdc5b514
'http://deb.debian.org/debian/pool/main/g/grep/grep_3.3-1.debian.tar.xz' grep_3.3-1.debian.tar.xz 104280 SHA256:2cea85fdfe3c70855019c3d9ed9346363137bf3f9931103d9b38514828c8989f
```

Other potentially useful URLs:

- https://sources.debian.net/src/grep/3.3-1/ (for browsing the source)
- https://sources.debian.net/src/grep/3.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/grep/3.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `gzip=1.9-3`

Binary Packages:

- `gzip=1.9-3`

Licenses: (parsed from: `/usr/share/doc/gzip/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris gzip=1.9-3
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.9-3.dsc' gzip_1.9-3.dsc 1960 SHA256:fb4702653d4d5475db22dc5cb054b7321b9dc2ca2067540e31d9460bc11246c2
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.9.orig.tar.gz' gzip_1.9.orig.tar.gz 1181937 SHA256:5d2d3a3432ef32f24cdb060d278834507b481a75adeca18850c73592f778f6ad
'http://deb.debian.org/debian/pool/main/g/gzip/gzip_1.9-3.debian.tar.xz' gzip_1.9-3.debian.tar.xz 14420 SHA256:45996a08643cad9339a30606c9f523984b2f421c6d58e5949471efab75c1ac52
```

Other potentially useful URLs:

- https://sources.debian.net/src/gzip/1.9-3/ (for browsing the source)
- https://sources.debian.net/src/gzip/1.9-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/gzip/1.9-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `harfbuzz=2.3.1-1`

Binary Packages:

- `libharfbuzz0b:amd64=2.3.1-1`

Licenses: (parsed from: `/usr/share/doc/libharfbuzz0b/copyright`)

- `MIT`

Source:

```console
$ apt-get source -qq --print-uris harfbuzz=2.3.1-1
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_2.3.1-1.dsc' harfbuzz_2.3.1-1.dsc 2298 SHA256:6d70022d4af66c44f7d225c21f656468304abaa3789e5a149dae8772816ba0a6
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_2.3.1.orig.tar.bz2' harfbuzz_2.3.1.orig.tar.bz2 17942960 SHA256:f205699d5b91374008d6f8e36c59e419ae2d9a7bb8c5d9f34041b9a5abcae468
'http://deb.debian.org/debian/pool/main/h/harfbuzz/harfbuzz_2.3.1-1.debian.tar.xz' harfbuzz_2.3.1-1.debian.tar.xz 9696 SHA256:aa4b07e617c0042c4346ef0fd1e58db4492cb7076583be1f0e9e394571e0d270
```

Other potentially useful URLs:

- https://sources.debian.net/src/harfbuzz/2.3.1-1/ (for browsing the source)
- https://sources.debian.net/src/harfbuzz/2.3.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/harfbuzz/2.3.1-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `icu=63.1-6`

Binary Packages:

- `icu-devtools=63.1-6`
- `libicu-dev:amd64=63.1-6`
- `libicu63:amd64=63.1-6`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris icu=63.1-6
'http://deb.debian.org/debian/pool/main/i/icu/icu_63.1-6.dsc' icu_63.1-6.dsc 1965 SHA256:dfb3387f8e80c7de6704967694cf74ef7dd407c562b8cc7653156308e924404f
'http://deb.debian.org/debian/pool/main/i/icu/icu_63.1.orig.tar.xz' icu_63.1.orig.tar.xz 13638120 SHA256:347d0e6c39c3538b812c10c6c83815d4a089d578380387ae7d94c5b820948e82
'http://deb.debian.org/debian/pool/main/i/icu/icu_63.1-6.debian.tar.xz' icu_63.1-6.debian.tar.xz 24624 SHA256:c63fc607cb6420136d78f706baf17b7ca68346386e82ca4f30dacc81e1e56681
```

Other potentially useful URLs:

- https://sources.debian.net/src/icu/63.1-6/ (for browsing the source)
- https://sources.debian.net/src/icu/63.1-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/icu/63.1-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `init-system-helpers=1.56+nmu1`

Binary Packages:

- `init-system-helpers=1.56+nmu1`

Licenses: (parsed from: `/usr/share/doc/init-system-helpers/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris init-system-helpers=1.56+nmu1
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.56+nmu1.dsc' init-system-helpers_1.56+nmu1.dsc 1945 SHA256:96f7d1c696faf801eb5990223b2782dedaf4092efb9b0dcc13d038b91dbb1a51
'http://deb.debian.org/debian/pool/main/i/init-system-helpers/init-system-helpers_1.56+nmu1.tar.xz' init-system-helpers_1.56+nmu1.tar.xz 40488 SHA256:ecb5b9a0dbf0b7e83ef41bfc15bf9d41868642d4d5f817a0962aa1b980a56368
```

Other potentially useful URLs:

- https://sources.debian.net/src/init-system-helpers/1.56+nmu1/ (for browsing the source)
- https://sources.debian.net/src/init-system-helpers/1.56+nmu1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/init-system-helpers/1.56+nmu1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `iproute2=4.20.0-2`

Binary Packages:

- `iproute2=4.20.0-2`

Licenses: (parsed from: `/usr/share/doc/iproute2/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris iproute2=4.20.0-2
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.20.0-2.dsc' iproute2_4.20.0-2.dsc 1884 SHA256:006d839d17b2871c8e8b655782b59311b2b56ed883760011173bb4df2da1a0fb
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.20.0.orig.tar.xz' iproute2_4.20.0.orig.tar.xz 707016 SHA256:c8adaa6a40f888476b23acb283cfa30c0dd55f07b5aa20663ed5ba2ef1f6fda8
'http://deb.debian.org/debian/pool/main/i/iproute2/iproute2_4.20.0-2.debian.tar.xz' iproute2_4.20.0-2.debian.tar.xz 144416 SHA256:32220902a0bfdae209ffa7aee610cd70d49c759eeada1d9008b84782d1515e00
```

Other potentially useful URLs:

- https://sources.debian.net/src/iproute2/4.20.0-2/ (for browsing the source)
- https://sources.debian.net/src/iproute2/4.20.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/iproute2/4.20.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `iptables=1.8.2-3`

Binary Packages:

- `libxtables12:amd64=1.8.2-3`

Licenses: (parsed from: `/usr/share/doc/libxtables12/copyright`)

- `Artistic-2`
- `GPL-2`
- `GPL-2+`
- `custom`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/iptables/1.8.2-3/


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

### `dpkg` source package: `kernsmooth=2.23-15-3`

Binary Packages:

- `r-cran-kernsmooth=2.23-15-3+b4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris kernsmooth=2.23-15-3
'http://deb.debian.org/debian/pool/main/k/kernsmooth/kernsmooth_2.23-15-3.dsc' kernsmooth_2.23-15-3.dsc 1686 SHA256:c9a41db32a486837694ce74b5d791e24f2a586d953c8021ff66cf6898e9ae49d
'http://deb.debian.org/debian/pool/main/k/kernsmooth/kernsmooth_2.23-15.orig.tar.gz' kernsmooth_2.23-15.orig.tar.gz 24572 SHA256:8b72d23ed121a54af188b2cda4441e3ce2646359309885f6455b82c0275210f6
'http://deb.debian.org/debian/pool/main/k/kernsmooth/kernsmooth_2.23-15-3.diff.gz' kernsmooth_2.23-15-3.diff.gz 2939 SHA256:d17aa055156049370e420ffe548ad0fef941129b6f2e2283203419801e369326
```

Other potentially useful URLs:

- https://sources.debian.net/src/kernsmooth/2.23-15-3/ (for browsing the source)
- https://sources.debian.net/src/kernsmooth/2.23-15-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/kernsmooth/2.23-15-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `keyutils=1.6-5`

Binary Packages:

- `libkeyutils1:amd64=1.6-5`

Licenses: (parsed from: `/usr/share/doc/libkeyutils1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2`
- `LGPL-2+`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/keyutils/1.6-5/


### `dpkg` source package: `krb5=1.17-2`

Binary Packages:

- `libgssapi-krb5-2:amd64=1.17-2`
- `libk5crypto3:amd64=1.17-2`
- `libkrb5-3:amd64=1.17-2`
- `libkrb5support0:amd64=1.17-2`

Licenses: (parsed from: `/usr/share/doc/libgssapi-krb5-2/copyright`, `/usr/share/doc/libk5crypto3/copyright`, `/usr/share/doc/libkrb5-3/copyright`, `/usr/share/doc/libkrb5support0/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris krb5=1.17-2
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.17-2.dsc' krb5_1.17-2.dsc 3302 SHA256:73e4cd5e11f34716606dbb576c8e7ef7c4a11d890845effb9c28101b19833d4d
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.17.orig.tar.gz' krb5_1.17.orig.tar.gz 8761763 SHA256:5a6e2284a53de5702d3dc2be3b9339c963f9b5397d3fbbc53beb249380a781f5
'http://deb.debian.org/debian/pool/main/k/krb5/krb5_1.17-2.debian.tar.xz' krb5_1.17-2.debian.tar.xz 97812 SHA256:1b62fbebb304a3e3415ea7fcf91bb8827379939ce74ce6879f78536cec2ce752
```

Other potentially useful URLs:

- https://sources.debian.net/src/krb5/1.17-2/ (for browsing the source)
- https://sources.debian.net/src/krb5/1.17-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/krb5/1.17-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lapack=3.8.0-2`

Binary Packages:

- `libblas-dev:amd64=3.8.0-2`
- `libblas3:amd64=3.8.0-2`
- `liblapack-dev:amd64=3.8.0-2`
- `liblapack3:amd64=3.8.0-2`

Licenses: (parsed from: `/usr/share/doc/libblas-dev/copyright`, `/usr/share/doc/libblas3/copyright`, `/usr/share/doc/liblapack-dev/copyright`, `/usr/share/doc/liblapack3/copyright`)

- `BSD-3-clause`
- `BSD-3-clause-intel`

Source:

```console
$ apt-get source -qq --print-uris lapack=3.8.0-2
'http://deb.debian.org/debian/pool/main/l/lapack/lapack_3.8.0-2.dsc' lapack_3.8.0-2.dsc 2776 SHA256:8cf38ceb9d86e1c51cbf213da566d1415eb040fa94aceefa5df86b4a6488dc6c
'http://deb.debian.org/debian/pool/main/l/lapack/lapack_3.8.0.orig.tar.gz' lapack_3.8.0.orig.tar.gz 7426094 SHA256:deb22cc4a6120bff72621155a9917f485f96ef8319ac074a7afbc68aab88bcf6
'http://deb.debian.org/debian/pool/main/l/lapack/lapack_3.8.0-2.debian.tar.xz' lapack_3.8.0-2.debian.tar.xz 21076 SHA256:ac34773cb9f3f8b9659062fc5b6fd68790acc0b93e9bb0cac8a622cf409451c3
```

Other potentially useful URLs:

- https://sources.debian.net/src/lapack/3.8.0-2/ (for browsing the source)
- https://sources.debian.net/src/lapack/3.8.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lapack/3.8.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lattice=0.20-38-1`

Binary Packages:

- `r-cran-lattice=0.20-38-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-lattice/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris lattice=0.20-38-1
'http://deb.debian.org/debian/pool/main/l/lattice/lattice_0.20-38-1.dsc' lattice_0.20-38-1.dsc 1839 SHA256:1f9dd0241cfde5fc35a4bcc50b9911807bf7d3f5296f8c3bf97f98d82a917215
'http://deb.debian.org/debian/pool/main/l/lattice/lattice_0.20-38.orig.tar.gz' lattice_0.20-38.orig.tar.gz 359031 SHA256:fdeb5e3e50dbbd9d3c5e2fa3eef865132b3eef30fbe53a10c24c7b7dfe5c0a2d
'http://deb.debian.org/debian/pool/main/l/lattice/lattice_0.20-38-1.debian.tar.xz' lattice_0.20-38-1.debian.tar.xz 5120 SHA256:9b863452c0c431244bd38a810f3cfcc96d61a0ac3f0880e2c1650c79b006b235
```

Other potentially useful URLs:

- https://sources.debian.net/src/lattice/0.20-38-1/ (for browsing the source)
- https://sources.debian.net/src/lattice/0.20-38-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lattice/0.20-38-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `less=487-0.1`

Binary Packages:

- `less=487-0.1+b1`

Licenses: (parsed from: `/usr/share/doc/less/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris less=487-0.1
'http://deb.debian.org/debian/pool/main/l/less/less_487-0.1.dsc' less_487-0.1.dsc 1748 SHA256:daeac4ed838871cdc428a02bc831b5f225d29632fc8a2417f39d7ec06bed8dab
'http://deb.debian.org/debian/pool/main/l/less/less_487.orig.tar.gz' less_487.orig.tar.gz 318488 SHA256:f3dc8455cb0b2b66e0c6b816c00197a71bf6d1787078adeee0bcf2aea4b12706
'http://deb.debian.org/debian/pool/main/l/less/less_487-0.1.debian.tar.xz' less_487-0.1.debian.tar.xz 19536 SHA256:36e9ef0b7cdfac578c02a98502fe7e58f4bc8cf2e720735e5fbb5b3cb08ac482
```

Other potentially useful URLs:

- https://sources.debian.net/src/less/487-0.1/ (for browsing the source)
- https://sources.debian.net/src/less/487-0.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/less/487-0.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libbsd=0.9.1-2`

Binary Packages:

- `libbsd0:amd64=0.9.1-2`

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
$ apt-get source -qq --print-uris libbsd=0.9.1-2
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.9.1-2.dsc' libbsd_0.9.1-2.dsc 2181 SHA256:abbba409f21d592c0232eab2641fb3f3181702ce0dce00a5357805d5b2d07d18
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.9.1.orig.tar.xz' libbsd_0.9.1.orig.tar.xz 387180 SHA256:56d835742327d69faccd16955a60b6dcf30684a8da518c4eca0ac713b9e0a7a4
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.9.1.orig.tar.xz.asc' libbsd_0.9.1.orig.tar.xz.asc 833 SHA256:a34a81f40bfef37242943cb1c4c446e75d57f31be3317c887d8a5f2cbfb5577d
'http://deb.debian.org/debian/pool/main/libb/libbsd/libbsd_0.9.1-2.debian.tar.xz' libbsd_0.9.1-2.debian.tar.xz 16456 SHA256:87c37138ffc1f3dc9fcc1a1a0486d87834c71b6ccce255cda7beb1d8ed5e9a65
```

Other potentially useful URLs:

- https://sources.debian.net/src/libbsd/0.9.1-2/ (for browsing the source)
- https://sources.debian.net/src/libbsd/0.9.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libbsd/0.9.1-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcap-ng=0.7.9-2`

Binary Packages:

- `libcap-ng0:amd64=0.7.9-2`

Licenses: (parsed from: `/usr/share/doc/libcap-ng0/copyright`)

- `GPL-2`
- `GPL-3`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libcap-ng=0.7.9-2
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.9-2.dsc' libcap-ng_0.7.9-2.dsc 1912 SHA256:e787ebb86a7c9fdcfe429c20f2b17528d084917a34b5efc0022619e1e11572a4
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.9.orig.tar.gz' libcap-ng_0.7.9.orig.tar.gz 449038 SHA256:4a1532bcf3731aade40936f6d6a586ed5a66ca4c7455e1338d1f6c3e09221328
'http://deb.debian.org/debian/pool/main/libc/libcap-ng/libcap-ng_0.7.9-2.debian.tar.xz' libcap-ng_0.7.9-2.debian.tar.xz 6220 SHA256:1ce4d5f7ee041b01f254e9d12ae86fef563566871bc457579c70b058b071ae22
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcap-ng/0.7.9-2/ (for browsing the source)
- https://sources.debian.net/src/libcap-ng/0.7.9-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcap-ng/0.7.9-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libcap2=1:2.25-2`

Binary Packages:

- `libcap2:amd64=1:2.25-2`
- `libcap2-bin=1:2.25-2`

Licenses: (parsed from: `/usr/share/doc/libcap2/copyright`, `/usr/share/doc/libcap2-bin/copyright`)

- `BSD-3-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris libcap2=1:2.25-2
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.25-2.dsc' libcap2_2.25-2.dsc 2196 SHA256:28adc8b721b5a3151afdddc2081149473ec07f362777e25bfc29b3b96ec432f8
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.25.orig.tar.xz' libcap2_2.25.orig.tar.xz 63672 SHA256:693c8ac51e983ee678205571ef272439d83afe62dd8e424ea14ad9790bc35162
'http://deb.debian.org/debian/pool/main/libc/libcap2/libcap2_2.25-2.debian.tar.xz' libcap2_2.25-2.debian.tar.xz 24876 SHA256:2581cdcaa27cf7e50b8e9f402a8b35ebbf78dd2697fb96bf78f411cd11110a82
```

Other potentially useful URLs:

- https://sources.debian.net/src/libcap2/1:2.25-2/ (for browsing the source)
- https://sources.debian.net/src/libcap2/1:2.25-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libcap2/1:2.25-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libdatrie=0.2.12-2`

Binary Packages:

- `libdatrie1:amd64=0.2.12-2`

Licenses: (parsed from: `/usr/share/doc/libdatrie1/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libdatrie=0.2.12-2
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.12-2.dsc' libdatrie_0.2.12-2.dsc 2262 SHA256:f51cade98e90d09e181d19e9fa6f976779cfd912215fb8e0f5f451e06e051f26
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.12.orig.tar.xz' libdatrie_0.2.12.orig.tar.xz 310236 SHA256:452dcc4d3a96c01f80f7c291b42be11863cd1554ff78b93e110becce6e00b149
'http://deb.debian.org/debian/pool/main/libd/libdatrie/libdatrie_0.2.12-2.debian.tar.xz' libdatrie_0.2.12-2.debian.tar.xz 8996 SHA256:78b1bb1549cd9cf998442830132f401b100f8f3581415c7588521d164a814e38
```

Other potentially useful URLs:

- https://sources.debian.net/src/libdatrie/0.2.12-2/ (for browsing the source)
- https://sources.debian.net/src/libdatrie/0.2.12-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libdatrie/0.2.12-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libffi=3.2.1-9`

Binary Packages:

- `libffi6:amd64=3.2.1-9`

Licenses: (parsed from: `/usr/share/doc/libffi6/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris libffi=3.2.1-9
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.2.1-9.dsc' libffi_3.2.1-9.dsc 2000 SHA256:28beaed76f2ce4c6a3ce1527eb07534c8ef4bf624a42c803fea045c416f8faa5
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.2.1.orig.tar.gz' libffi_3.2.1.orig.tar.gz 940837 SHA256:d06ebb8e1d9a22d19e38d63fdb83954253f39bedc5d46232a05645685722ca37
'http://deb.debian.org/debian/pool/main/libf/libffi/libffi_3.2.1-9.debian.tar.xz' libffi_3.2.1-9.debian.tar.xz 17148 SHA256:26e3cfd358733832da251778bc615a42b908d7779cf8b8d7fc2bdee4660bbbce
```

Other potentially useful URLs:

- https://sources.debian.net/src/libffi/3.2.1-9/ (for browsing the source)
- https://sources.debian.net/src/libffi/3.2.1-9/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libffi/3.2.1-9/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgcrypt20=1.8.4-5`

Binary Packages:

- `libgcrypt20:amd64=1.8.4-5`

Licenses: (parsed from: `/usr/share/doc/libgcrypt20/copyright`)

- `GPL-2`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libgcrypt20=1.8.4-5
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.4-5.dsc' libgcrypt20_1.8.4-5.dsc 2806 SHA256:9450f74a867017adbce0dece0653ced251c742947e5d14721c6021a74b78bf65
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.4.orig.tar.bz2' libgcrypt20_1.8.4.orig.tar.bz2 2990108 SHA256:f638143a0672628fde0cad745e9b14deb85dffb175709cacc1f4fe24b93f2227
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.4.orig.tar.bz2.asc' libgcrypt20_1.8.4.orig.tar.bz2.asc 534 SHA256:97df94317ad273cffce4e78ad34ad0664819b44496f6528818a4298a691209a3
'http://deb.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.4-5.debian.tar.xz' libgcrypt20_1.8.4-5.debian.tar.xz 29372 SHA256:bb65f021c13ef1296e575d176bcf073208067c59e0647fb47e33c01e04d24027
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgcrypt20/1.8.4-5/ (for browsing the source)
- https://sources.debian.net/src/libgcrypt20/1.8.4-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgcrypt20/1.8.4-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libgpg-error=1.35-1`

Binary Packages:

- `libgpg-error0:amd64=1.35-1`

Licenses: (parsed from: `/usr/share/doc/libgpg-error0/copyright`)

- `BSD-3-clause`
- `GPL-3`
- `GPL-3+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `g10-permissive`

Source:

```console
$ apt-get source -qq --print-uris libgpg-error=1.35-1
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.35-1.dsc' libgpg-error_1.35-1.dsc 2155 SHA256:1d5e455ea385f522a0cf39510291945d42b95fafc8a1f05537cef3863c1d6c16
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.35.orig.tar.bz2' libgpg-error_1.35.orig.tar.bz2 918408 SHA256:cbd5ee62a8a8c88d48c158fff4fc9ead4132aacd1b4a56eb791f9f997d07e067
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.35.orig.tar.bz2.asc' libgpg-error_1.35.orig.tar.bz2.asc 534 SHA256:f6bfdc64a84245437c443f83faea85407d051d0487550515a4a279573589944d
'http://deb.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error_1.35-1.debian.tar.xz' libgpg-error_1.35-1.debian.tar.xz 16056 SHA256:e600a34c09e6a3e8ec63d6145f4a11b16d92dc0ddeff1ba94cba08a8fecf0b66
```

Other potentially useful URLs:

- https://sources.debian.net/src/libgpg-error/1.35-1/ (for browsing the source)
- https://sources.debian.net/src/libgpg-error/1.35-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libgpg-error/1.35-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libice=2:1.0.9-2`

Binary Packages:

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

### `dpkg` source package: `libpaper=1.1.26`

Binary Packages:

- `libpaper-utils=1.1.26`
- `libpaper1:amd64=1.1.26`

Licenses: (parsed from: `/usr/share/doc/libpaper-utils/copyright`, `/usr/share/doc/libpaper1/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris libpaper=1.1.26
'http://deb.debian.org/debian/pool/main/libp/libpaper/libpaper_1.1.26.dsc' libpaper_1.1.26.dsc 1604 SHA256:ccc3995316d28e35f301f0374b65c035ac3007d3f370d816a3dcedc95ad0b6fb
'http://deb.debian.org/debian/pool/main/libp/libpaper/libpaper_1.1.26.tar.gz' libpaper_1.1.26.tar.gz 42304 SHA256:a6950b67df66a53e974ffe0baec9a52775b909dd2c51497139af2af4e46519b1
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpaper/1.1.26/ (for browsing the source)
- https://sources.debian.net/src/libpaper/1.1.26/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpaper/1.1.26/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpng1.6=1.6.36-5`

Binary Packages:

- `libpng-dev:amd64=1.6.36-5`
- `libpng16-16:amd64=1.6.36-5`

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
$ apt-get source -qq --print-uris libpng1.6=1.6.36-5
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.36-5.dsc' libpng1.6_1.6.36-5.dsc 2197 SHA256:5eddce67639092a956aa093f16da987b49b24ba825efcaf40af2edeea94e42e2
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.36.orig.tar.xz' libpng1.6_1.6.36.orig.tar.xz 1012544 SHA256:eceb924c1fa6b79172fdfd008d335f0e59172a86a66481e09d4089df872aa319
'http://deb.debian.org/debian/pool/main/libp/libpng1.6/libpng1.6_1.6.36-5.debian.tar.xz' libpng1.6_1.6.36-5.debian.tar.xz 37152 SHA256:b82f840d88d7c548f2a1f2590ba012fd090c1be4be428902224b5aab06866be7
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpng1.6/1.6.36-5/ (for browsing the source)
- https://sources.debian.net/src/libpng1.6/1.6.36-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpng1.6/1.6.36-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libpsl=0.20.2-2`

Binary Packages:

- `libpsl5:amd64=0.20.2-2`

Licenses: (parsed from: `/usr/share/doc/libpsl5/copyright`)

- `Chromium`
- `MIT`

Source:

```console
$ apt-get source -qq --print-uris libpsl=0.20.2-2
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.20.2-2.dsc' libpsl_0.20.2-2.dsc 1637 SHA256:ae401852522d748f1222b91734bc5bd7c6db0de843dd675adc180f2a1884c94d
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.20.2.orig.tar.gz' libpsl_0.20.2.orig.tar.gz 8590430 SHA256:94d2b5e00e9aa761ae7efbaa67edc00d5298487ed9706eb4789e349012993c31
'http://deb.debian.org/debian/pool/main/libp/libpsl/libpsl_0.20.2-2.debian.tar.xz' libpsl_0.20.2-2.debian.tar.xz 9920 SHA256:1f008454fdb973964202020fb700d5028e001b7eaa4e77eeab8ebc99b749ea51
```

Other potentially useful URLs:

- https://sources.debian.net/src/libpsl/0.20.2-2/ (for browsing the source)
- https://sources.debian.net/src/libpsl/0.20.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libpsl/0.20.2-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libseccomp=2.3.3-4`

Binary Packages:

- `libseccomp2:amd64=2.3.3-4`

Licenses: (parsed from: `/usr/share/doc/libseccomp2/copyright`)

- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris libseccomp=2.3.3-4
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.3.3-4.dsc' libseccomp_2.3.3-4.dsc 2500 SHA256:1443086c253ffacdad635aeb27a37b21958119833782290ae868b897eb9f6ab0
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.3.3.orig.tar.gz' libseccomp_2.3.3.orig.tar.gz 564546 SHA256:7fc28f4294cc72e61c529bedf97e705c3acf9c479a8f1a3028d4cd2ca9f3b155
'http://deb.debian.org/debian/pool/main/libs/libseccomp/libseccomp_2.3.3-4.debian.tar.xz' libseccomp_2.3.3-4.debian.tar.xz 12104 SHA256:deab2e069e145bf31d0a5569ad3adb2b94217623e02a25d4c9fa0d298073769e
```

Other potentially useful URLs:

- https://sources.debian.net/src/libseccomp/2.3.3-4/ (for browsing the source)
- https://sources.debian.net/src/libseccomp/2.3.3-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libseccomp/2.3.3-4/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libsemanage=2.8-2`

Binary Packages:

- `libsemanage-common=2.8-2`
- `libsemanage1:amd64=2.8-2`

Licenses: (parsed from: `/usr/share/doc/libsemanage-common/copyright`, `/usr/share/doc/libsemanage1/copyright`)

- `GPL`
- `LGPL`

Source:

```console
$ apt-get source -qq --print-uris libsemanage=2.8-2
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.8-2.dsc' libsemanage_2.8-2.dsc 2434 SHA256:f7cbe0594c098808a449804a357159bec4db54389df0319c2b5306b10ec2e707
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.8.orig.tar.gz' libsemanage_2.8.orig.tar.gz 154200 SHA256:1c0de8d2c51e5460926c21e371105c84a39087dfd8f8e9f0cc1d017e4cbea8e2
'http://deb.debian.org/debian/pool/main/libs/libsemanage/libsemanage_2.8-2.debian.tar.xz' libsemanage_2.8-2.debian.tar.xz 17756 SHA256:02315ffeb2b0a24b7c3bc8fa0c0e1e217e4a7b284bb88f64b0bf613e76d125e2
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsemanage/2.8-2/ (for browsing the source)
- https://sources.debian.net/src/libsemanage/2.8-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsemanage/2.8-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libsm=2:1.2.3-1`

Binary Packages:

- `libsm6:amd64=2:1.2.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libsm=2:1.2.3-1
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.3-1.dsc' libsm_1.2.3-1.dsc 2063 SHA256:5488f8de81d53c32cbb5f062b6a6f262cd067283b8082041392dc60f0d04002c
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.3.orig.tar.gz' libsm_1.2.3.orig.tar.gz 445362 SHA256:1e92408417cb6c6c477a8a6104291001a40b3bb56a4a60608fdd9cd2c5a0f320
'http://deb.debian.org/debian/pool/main/libs/libsm/libsm_1.2.3-1.diff.gz' libsm_1.2.3-1.diff.gz 8929 SHA256:7eb99ab50b19f26d1470f89e4b46891f6a697cb1794a58ed0d1376cceaf1b6a9
```

Other potentially useful URLs:

- https://sources.debian.net/src/libsm/2:1.2.3-1/ (for browsing the source)
- https://sources.debian.net/src/libsm/2:1.2.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libsm/2:1.2.3-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libthai=0.1.28-2`

Binary Packages:

- `libthai-data=0.1.28-2`
- `libthai0:amd64=0.1.28-2`

Licenses: (parsed from: `/usr/share/doc/libthai-data/copyright`, `/usr/share/doc/libthai0/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`

Source:

```console
$ apt-get source -qq --print-uris libthai=0.1.28-2
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.28-2.dsc' libthai_0.1.28-2.dsc 2348 SHA256:93e36d78cb14add1ff913f27957719bf08c8a87b4611ad1eef5961ce2cc45a43
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.28.orig.tar.xz' libthai_0.1.28.orig.tar.xz 413592 SHA256:ffe0a17b4b5aa11b153c15986800eca19f6c93a4025ffa5cf2cab2dcdf1ae911
'http://deb.debian.org/debian/pool/main/libt/libthai/libthai_0.1.28-2.debian.tar.xz' libthai_0.1.28-2.debian.tar.xz 11952 SHA256:6cf7601099f2401bf206f988db523f1c06901432ae0ace720541209a93735ccd
```

Other potentially useful URLs:

- https://sources.debian.net/src/libthai/0.1.28-2/ (for browsing the source)
- https://sources.debian.net/src/libthai/0.1.28-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libthai/0.1.28-2/ (for access to the source package after it no longer exists in the archive)

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

- `libwebp6:amd64=0.6.1-2`

Licenses: (parsed from: `/usr/share/doc/libwebp6/copyright`)

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

### `dpkg` source package: `libx11=2:1.6.7-1`

Binary Packages:

- `libx11-6:amd64=2:1.6.7-1`
- `libx11-data=2:1.6.7-1`

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

### `dpkg` source package: `libxcb=1.13.1-2`

Binary Packages:

- `libxcb-render0:amd64=1.13.1-2`
- `libxcb-shm0:amd64=1.13.1-2`
- `libxcb1:amd64=1.13.1-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxcb=1.13.1-2
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.13.1-2.dsc' libxcb_1.13.1-2.dsc 5375 SHA256:08ee999e42e93af418ab27e772c7e1b464950ea2cbe8cd7ee6759e9a170dd9e8
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.13.1.orig.tar.gz' libxcb_1.13.1.orig.tar.gz 636748 SHA256:f09a76971437780a602303170fd51b5f7474051722bc39d566a272d2c4bde1b5
'http://deb.debian.org/debian/pool/main/libx/libxcb/libxcb_1.13.1-2.diff.gz' libxcb_1.13.1-2.diff.gz 25487 SHA256:8ee5244ada4bf1e9af0bbd43463877f6185d63942e89e5800613ee4a2627a016
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxcb/1.13.1-2/ (for browsing the source)
- https://sources.debian.net/src/libxcb/1.13.1-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxcb/1.13.1-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libxmu=2:1.1.2-2`

Binary Packages:

- `libxmuu1:amd64=2:1.1.2-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxmu=2:1.1.2-2
'http://deb.debian.org/debian/pool/main/libx/libxmu/libxmu_1.1.2-2.dsc' libxmu_1.1.2-2.dsc 2291 SHA256:5e3333a3fe9dbed9d0df596d964b94aa1d45d56a0475a8b66b3f69d60ab29504
'http://deb.debian.org/debian/pool/main/libx/libxmu/libxmu_1.1.2.orig.tar.gz' libxmu_1.1.2.orig.tar.gz 469019 SHA256:e5fd4bacef068f9509b8226017205040e38d3fba8d2de55037200e7176c13dba
'http://deb.debian.org/debian/pool/main/libx/libxmu/libxmu_1.1.2-2.diff.gz' libxmu_1.1.2-2.diff.gz 6054 SHA256:c01cbd09a15e71c0418d2689a0fd0b946bf4e40d1dbe9f594beb00a4818f0740
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxmu/2:1.1.2-2/ (for browsing the source)
- https://sources.debian.net/src/libxmu/2:1.1.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxmu/2:1.1.2-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `libxss=1:1.2.3-1`

Binary Packages:

- `libxss1:amd64=1:1.2.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris libxss=1:1.2.3-1
'http://deb.debian.org/debian/pool/main/libx/libxss/libxss_1.2.3-1.dsc' libxss_1.2.3-1.dsc 2203 SHA256:783dbcd49a0934d994693af676ee98734dad070ab2434a6afe831c2de0ecca1d
'http://deb.debian.org/debian/pool/main/libx/libxss/libxss_1.2.3.orig.tar.gz' libxss_1.2.3.orig.tar.gz 385215 SHA256:4f74e7e412144591d8e0616db27f433cfc9f45aae6669c6c4bb03e6bf9be809a
'http://deb.debian.org/debian/pool/main/libx/libxss/libxss_1.2.3.orig.tar.gz.asc' libxss_1.2.3.orig.tar.gz.asc 705 SHA256:4e900524d56c8e7263365267efa91bb3671110c9eb28ccab58f70e2188f0b91b
'http://deb.debian.org/debian/pool/main/libx/libxss/libxss_1.2.3-1.diff.gz' libxss_1.2.3-1.diff.gz 7145 SHA256:9d381b48f1377f27c506113e1f9b7d6ee286b856421f7f2b27017f01dccfef04
```

Other potentially useful URLs:

- https://sources.debian.net/src/libxss/1:1.2.3-1/ (for browsing the source)
- https://sources.debian.net/src/libxss/1:1.2.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libxss/1:1.2.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `libxt=1:1.1.5-1`

Binary Packages:

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

### `dpkg` source package: `libzstd=1.3.8+dfsg-3`

Binary Packages:

- `libzstd1:amd64=1.3.8+dfsg-3`

Licenses: (parsed from: `/usr/share/doc/libzstd1/copyright`)

- `BSD-3-clause`
- `Expat`
- `GPL-2`
- `GPL-2+`
- `zlib`

Source:

```console
$ apt-get source -qq --print-uris libzstd=1.3.8+dfsg-3
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.3.8+dfsg-3.dsc' libzstd_1.3.8+dfsg-3.dsc 2285 SHA256:d5a46f4c8ecaffac70eb8799a7a221cf8c877d830bb2803364aeb6c825afa6e3
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.3.8+dfsg.orig.tar.xz' libzstd_1.3.8+dfsg.orig.tar.xz 1299276 SHA256:03851f2c26ffbf1d43633df3f98966f3c62e698e91ef4dc90523915bc934e5f7
'http://deb.debian.org/debian/pool/main/libz/libzstd/libzstd_1.3.8+dfsg-3.debian.tar.xz' libzstd_1.3.8+dfsg-3.debian.tar.xz 10396 SHA256:392a971d6bba30b6cb3e5ff04efb10c45b052e458dfc6631ede9e024341321f9
```

Other potentially useful URLs:

- https://sources.debian.net/src/libzstd/1.3.8+dfsg-3/ (for browsing the source)
- https://sources.debian.net/src/libzstd/1.3.8+dfsg-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/libzstd/1.3.8+dfsg-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `linux=4.19.20-1`

Binary Packages:

- `linux-libc-dev:amd64=4.19.20-1`

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
$ apt-get source -qq --print-uris linux=4.19.20-1
'http://deb.debian.org/debian/pool/main/l/linux/linux_4.19.20-1.dsc' linux_4.19.20-1.dsc 190493 SHA256:9ec41b6203948a2a336e40f9f1ebb4d6ec93786266b34106da11d2314d6b07c1
'http://deb.debian.org/debian/pool/main/l/linux/linux_4.19.20.orig.tar.xz' linux_4.19.20.orig.tar.xz 107151480 SHA256:f01ac2719d7b9b4fc18f2809cad715cb30c5377f9e1c3bd3e896e9a31dbdd77b
'http://deb.debian.org/debian/pool/main/l/linux/linux_4.19.20-1.debian.tar.xz' linux_4.19.20-1.debian.tar.xz 1118360 SHA256:c869bee37dda8f6ff4fa513b17624585591241d586de249dcd2fbe4d12d2709e
```

Other potentially useful URLs:

- https://sources.debian.net/src/linux/4.19.20-1/ (for browsing the source)
- https://sources.debian.net/src/linux/4.19.20-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/linux/4.19.20-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `littler=0.3.6-1`

Binary Packages:

- `littler=0.3.6-1`
- `r-cran-littler=0.3.6-1`

Licenses: (parsed from: `/usr/share/doc/littler/copyright`, `/usr/share/doc/r-cran-littler/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris littler=0.3.6-1
'http://deb.debian.org/debian/pool/main/l/littler/littler_0.3.6-1.dsc' littler_0.3.6-1.dsc 1889 SHA256:ceaeba82af1ff9357b42fea673fad618ccbb19ff8d91b9f3be517f7a278e20ab
'http://deb.debian.org/debian/pool/main/l/littler/littler_0.3.6.orig.tar.gz' littler_0.3.6.orig.tar.gz 646211 SHA256:83e6b12907e529cff0ee655bdd40fad5a3b60452cb7f5b203ca669e6c6c3177e
'http://deb.debian.org/debian/pool/main/l/littler/littler_0.3.6-1.debian.tar.xz' littler_0.3.6-1.debian.tar.xz 6756 SHA256:853c97ab0baa66b4c20b7f97c4ba1d4d2081e6e4e0b2a327a0c8f983c3687217
```

Other potentially useful URLs:

- https://sources.debian.net/src/littler/0.3.6-1/ (for browsing the source)
- https://sources.debian.net/src/littler/0.3.6-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/littler/0.3.6-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `lsb=10.2018112800`

Binary Packages:

- `lsb-base=10.2018112800`

Licenses: (parsed from: `/usr/share/doc/lsb-base/copyright`)

- `BSD-3-clause`
- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/lsb/10.2018112800/


### `dpkg` source package: `lz4=1.8.3-1`

Binary Packages:

- `liblz4-1:amd64=1.8.3-1`

Licenses: (parsed from: `/usr/share/doc/liblz4-1/copyright`)

- `BSD-2-clause`
- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris lz4=1.8.3-1
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.8.3-1.dsc' lz4_1.8.3-1.dsc 1932 SHA256:fed178383bc99451256cedf0d39731d106f70103125c043e4ef7112a642190b5
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.8.3.orig.tar.gz' lz4_1.8.3.orig.tar.gz 327897 SHA256:33af5936ac06536805f9745e0b6d61da606a1f8b4cc5c04dd3cbaca3b9b4fc43
'http://deb.debian.org/debian/pool/main/l/lz4/lz4_1.8.3-1.debian.tar.xz' lz4_1.8.3-1.debian.tar.xz 11336 SHA256:e98f02ec04236c616ea003d0a0e50818b2a959436fcd833ba1bcfc14664ab156
```

Other potentially useful URLs:

- https://sources.debian.net/src/lz4/1.8.3-1/ (for browsing the source)
- https://sources.debian.net/src/lz4/1.8.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/lz4/1.8.3-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `mgcv=1.8-27-1`

Binary Packages:

- `r-cran-mgcv=1.8-27-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-mgcv/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris mgcv=1.8-27-1
'http://deb.debian.org/debian/pool/main/m/mgcv/mgcv_1.8-27-1.dsc' mgcv_1.8-27-1.dsc 1827 SHA256:c15db0f02c6832f9b7b2d7a7f3f2a6451ffb0f14683b30471514765a55a68643
'http://deb.debian.org/debian/pool/main/m/mgcv/mgcv_1.8-27.orig.tar.gz' mgcv_1.8-27.orig.tar.gz 915013 SHA256:c88b99fb518decd7e9cd17a4c267e74f98a78172f056784194b5b127ca0f7d1b
'http://deb.debian.org/debian/pool/main/m/mgcv/mgcv_1.8-27-1.debian.tar.xz' mgcv_1.8-27-1.debian.tar.xz 5164 SHA256:6eb436ed77669e60c9e7e7643ab40a0609ca87f8d8c5696128f59d99edcd091b
```

Other potentially useful URLs:

- https://sources.debian.net/src/mgcv/1.8-27-1/ (for browsing the source)
- https://sources.debian.net/src/mgcv/1.8-27-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mgcv/1.8-27-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `mpfr4=4.0.2-1`

Binary Packages:

- `libmpfr6:amd64=4.0.2-1`

Licenses: (parsed from: `/usr/share/doc/libmpfr6/copyright`)

- `GFDL-1.2`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris mpfr4=4.0.2-1
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_4.0.2-1.dsc' mpfr4_4.0.2-1.dsc 1972 SHA256:9021ec2462ed0e73ea1379266740473abf5f826be819226497729f6c6b02e672
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_4.0.2.orig.tar.xz' mpfr4_4.0.2.orig.tar.xz 1441996 SHA256:1d3be708604eae0e42d578ba93b390c2a145f17743a744d8f3f8c2ad5855a38a
'http://deb.debian.org/debian/pool/main/m/mpfr4/mpfr4_4.0.2-1.debian.tar.xz' mpfr4_4.0.2-1.debian.tar.xz 10544 SHA256:99c4d35654f33340f0efdec67142a34753157b20334cadad9018f5eab29738da
```

Other potentially useful URLs:

- https://sources.debian.net/src/mpfr4/4.0.2-1/ (for browsing the source)
- https://sources.debian.net/src/mpfr4/4.0.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/mpfr4/4.0.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `ncurses=6.1+20181013-2`

Binary Packages:

- `libncurses-dev:amd64=6.1+20181013-2`
- `libncurses5-dev:amd64=6.1+20181013-2`
- `libncurses6:amd64=6.1+20181013-2`
- `libncursesw6:amd64=6.1+20181013-2`
- `libtinfo6:amd64=6.1+20181013-2`
- `ncurses-base=6.1+20181013-2`
- `ncurses-bin=6.1+20181013-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris ncurses=6.1+20181013-2
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.1+20181013-2.dsc' ncurses_6.1+20181013-2.dsc 4147 SHA256:6064bfdaf4ea1d88312456b27040880d3049364aab1b1893207779350944bf06
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.1+20181013.orig.tar.gz' ncurses_6.1+20181013.orig.tar.gz 3411288 SHA256:aeb1d098ee90b39a763b57b00da19ff5bbb573dea077f98fbd85d59444bb3b59
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.1+20181013.orig.tar.gz.asc' ncurses_6.1+20181013.orig.tar.gz.asc 251 SHA256:865931406e519909a4d0ab87b14d0c6d3ebccb7b3e0dac5c6095f0dfce5e14cf
'http://deb.debian.org/debian/pool/main/n/ncurses/ncurses_6.1+20181013-2.debian.tar.xz' ncurses_6.1+20181013-2.debian.tar.xz 60344 SHA256:f09890449cb8152bad5fd0b784a8818648adc09318d51ef3ecc64c9a6526fd7c
```

Other potentially useful URLs:

- https://sources.debian.net/src/ncurses/6.1+20181013-2/ (for browsing the source)
- https://sources.debian.net/src/ncurses/6.1+20181013-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ncurses/6.1+20181013-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nettle=3.4.1-1`

Binary Packages:

- `libhogweed4:amd64=3.4.1-1`
- `libnettle6:amd64=3.4.1-1`

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
$ apt-get source -qq --print-uris nettle=3.4.1-1
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.4.1-1.dsc' nettle_3.4.1-1.dsc 2258 SHA256:829d6f504938a22a704042211fe351f2e27c52d3811f42c508e95421a9c634fb
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.4.1.orig.tar.gz' nettle_3.4.1.orig.tar.gz 1947053 SHA256:f941cf1535cd5d1819be5ccae5babef01f6db611f9b5a777bae9c7604b8a92ad
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.4.1.orig.tar.gz.asc' nettle_3.4.1.orig.tar.gz.asc 2476 SHA256:07b265366b46bc67950da3f34687235eaa85c45b326e42bb7c9b58830b651d28
'http://deb.debian.org/debian/pool/main/n/nettle/nettle_3.4.1-1.debian.tar.xz' nettle_3.4.1-1.debian.tar.xz 19988 SHA256:0339933966853cc0c3b2a9721f44116ee31d136d9983d33275d1beb291c11edb
```

Other potentially useful URLs:

- https://sources.debian.net/src/nettle/3.4.1-1/ (for browsing the source)
- https://sources.debian.net/src/nettle/3.4.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nettle/3.4.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nghttp2=1.36.0-2`

Binary Packages:

- `libnghttp2-14:amd64=1.36.0-2`

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
$ apt-get source -qq --print-uris nghttp2=1.36.0-2
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.36.0-2.dsc' nghttp2_1.36.0-2.dsc 2569 SHA256:0c6a71127f2844ade6c07d8be031c2894faacce46864cc77d514915c974d9c47
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.36.0.orig.tar.bz2' nghttp2_1.36.0.orig.tar.bz2 1919021 SHA256:16a734d7414062911e23989e243ca76e7722cb3c60273723e3e3ae4c21e71ceb
'http://deb.debian.org/debian/pool/main/n/nghttp2/nghttp2_1.36.0-2.debian.tar.xz' nghttp2_1.36.0-2.debian.tar.xz 12572 SHA256:be1fa967c1ab752cc73640f45757c9ed0fcbeeef1fb505ab04bb7bc46f1b287a
```

Other potentially useful URLs:

- https://sources.debian.net/src/nghttp2/1.36.0-2/ (for browsing the source)
- https://sources.debian.net/src/nghttp2/1.36.0-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nghttp2/1.36.0-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `nlme=3.1.137-1`

Binary Packages:

- `r-cran-nlme=3.1.137-1+b3`

Licenses: (parsed from: `/usr/share/doc/r-cran-nlme/copyright`)

- `GPL`
- `GPL `

Source:

```console
$ apt-get source -qq --print-uris nlme=3.1.137-1
'http://deb.debian.org/debian/pool/main/n/nlme/nlme_3.1.137-1.dsc' nlme_3.1.137-1.dsc 1837 SHA256:c3d58adc3d85fd7d875de6cd012fe5b28981079d6ad42470c3776f120799f6bd
'http://deb.debian.org/debian/pool/main/n/nlme/nlme_3.1.137.orig.tar.gz' nlme_3.1.137.orig.tar.gz 786769 SHA256:01049bb9c53826ff4ec5ba7117d766b17a0108c85f80871a5adb0c0b58ef7e87
'http://deb.debian.org/debian/pool/main/n/nlme/nlme_3.1.137-1.debian.tar.xz' nlme_3.1.137-1.debian.tar.xz 6904 SHA256:0c445d1ab901e76f94d418c56480011f751037df150eda4f217bbdc11028ab80
```

Other potentially useful URLs:

- https://sources.debian.net/src/nlme/3.1.137-1/ (for browsing the source)
- https://sources.debian.net/src/nlme/3.1.137-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/nlme/3.1.137-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openldap=2.4.47+dfsg-3`

Binary Packages:

- `libldap-2.4-2:amd64=2.4.47+dfsg-3`
- `libldap-common=2.4.47+dfsg-3`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openldap=2.4.47+dfsg-3
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.47+dfsg-3.dsc' openldap_2.4.47+dfsg-3.dsc 2856 SHA256:600e5dd8b689ebc2fc7344ddecf167f6ae91641c9f28aed6728b37f6473cdd40
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.47+dfsg.orig.tar.gz' openldap_2.4.47+dfsg.orig.tar.gz 4872293 SHA256:8f1ac7a4be7dd8ef158361efbfe16509756d3d9b396f5f378c3cf5c727807651
'http://deb.debian.org/debian/pool/main/o/openldap/openldap_2.4.47+dfsg-3.debian.tar.xz' openldap_2.4.47+dfsg-3.debian.tar.xz 165576 SHA256:46de6b021bddbfd8e6ba2b06173b72b6180ec5d8561d4fba1739fa31f7ee2f8d
```

Other potentially useful URLs:

- https://sources.debian.net/src/openldap/2.4.47+dfsg-3/ (for browsing the source)
- https://sources.debian.net/src/openldap/2.4.47+dfsg-3/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openldap/2.4.47+dfsg-3/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `openssl=1.1.1a-1`

Binary Packages:

- `libssl1.1:amd64=1.1.1a-1`
- `openssl=1.1.1a-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris openssl=1.1.1a-1
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1a-1.dsc' openssl_1.1.1a-1.dsc 2614 SHA256:eac8539af9649140a1bdfb6b01e13bcda48de293c2f71130ac3db2f31d77d64d
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1a.orig.tar.gz' openssl_1.1.1a.orig.tar.gz 8350547 SHA256:fc20130f8b7cbd2fb918b2f14e2f429e109c31ddd0fb38fc5d71d9ffed3f9f41
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1a.orig.tar.gz.asc' openssl_1.1.1a.orig.tar.gz.asc 488 SHA256:2e8bbc4766a3d72857538e99074433eae16bf32530b08625d65312bfc569dd7b
'http://deb.debian.org/debian/pool/main/o/openssl/openssl_1.1.1a-1.debian.tar.xz' openssl_1.1.1a-1.debian.tar.xz 83672 SHA256:30e1d3c9ca2ccba55df25622a0b48df702cd3339a25f1b3e9b6b601d126be00d
```

Other potentially useful URLs:

- https://sources.debian.net/src/openssl/1.1.1a-1/ (for browsing the source)
- https://sources.debian.net/src/openssl/1.1.1a-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/openssl/1.1.1a-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `p11-kit=0.23.15-2`

Binary Packages:

- `libp11-kit0:amd64=0.23.15-2`

Licenses: (parsed from: `/usr/share/doc/libp11-kit0/copyright`)

- `BSD-3-Clause`
- `ISC`
- `ISC+IBM`
- `permissive-like-automake-output`
- `same-as-rest-of-p11kit`

Source:

```console
$ apt-get source -qq --print-uris p11-kit=0.23.15-2
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.15-2.dsc' p11-kit_0.23.15-2.dsc 2420 SHA256:c4a856c207f95510c5ba978394cf3c2e3867c1e857e965f89c321515844fe52c
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.15.orig.tar.gz' p11-kit_0.23.15.orig.tar.gz 1276733 SHA256:f7c139a0c77a1f0012619003e542060ba8f94799a0ef463026db390680e4d798
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.15.orig.tar.gz.asc' p11-kit_0.23.15.orig.tar.gz.asc 879 SHA256:e28bd948178e2f91e18fbb4387d7b6532aa44eb92ac4c67a6485bc9cd9c79db8
'http://deb.debian.org/debian/pool/main/p/p11-kit/p11-kit_0.23.15-2.debian.tar.xz' p11-kit_0.23.15-2.debian.tar.xz 22820 SHA256:878675cf4c1e73c2d53960ca9e6e558470acb64aad9ad5b55dc556e90e80bf8e
```

Other potentially useful URLs:

- https://sources.debian.net/src/p11-kit/0.23.15-2/ (for browsing the source)
- https://sources.debian.net/src/p11-kit/0.23.15-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/p11-kit/0.23.15-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pam=1.3.1-5`

Binary Packages:

- `libpam-modules:amd64=1.3.1-5`
- `libpam-modules-bin=1.3.1-5`
- `libpam-runtime=1.3.1-5`
- `libpam0g:amd64=1.3.1-5`

Licenses: (parsed from: `/usr/share/doc/libpam-modules/copyright`, `/usr/share/doc/libpam-modules-bin/copyright`, `/usr/share/doc/libpam-runtime/copyright`, `/usr/share/doc/libpam0g/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pam=1.3.1-5
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.3.1-5.dsc' pam_1.3.1-5.dsc 2648 SHA256:6be33a9db415ff3e474a10d1a0c41fca3dbe90ae8c9ddd9a4a997892b11d67ab
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.3.1.orig.tar.xz' pam_1.3.1.orig.tar.xz 912332 SHA256:eff47a4ecd833fbf18de9686632a70ee8d0794b79aecb217ebd0ce11db4cd0db
'http://deb.debian.org/debian/pool/main/p/pam/pam_1.3.1-5.debian.tar.xz' pam_1.3.1-5.debian.tar.xz 114384 SHA256:be2c2b27efd6bea02f9d102d7d8c58374557beb7245b2a9d75ecc829e9449f62
```

Other potentially useful URLs:

- https://sources.debian.net/src/pam/1.3.1-5/ (for browsing the source)
- https://sources.debian.net/src/pam/1.3.1-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pam/1.3.1-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pango1.0=1.42.4-6`

Binary Packages:

- `libpango-1.0-0:amd64=1.42.4-6`
- `libpangocairo-1.0-0:amd64=1.42.4-6`
- `libpangoft2-1.0-0:amd64=1.42.4-6`

Licenses: (parsed from: `/usr/share/doc/libpango-1.0-0/copyright`, `/usr/share/doc/libpangocairo-1.0-0/copyright`, `/usr/share/doc/libpangoft2-1.0-0/copyright`)

- `Example`
- `ICU`
- `LGPL-2`
- `LGPL-2+`
- `TCL`
- `Unicode`

Source:

```console
$ apt-get source -qq --print-uris pango1.0=1.42.4-6
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.42.4-6.dsc' pango1.0_1.42.4-6.dsc 3269 SHA256:b89fd6a3afdf694b686decc0ed2711295894e4800df58e8a223d53f3b6ecf69b
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.42.4.orig.tar.xz' pango1.0_1.42.4.orig.tar.xz 833876 SHA256:1d2b74cd63e8bd41961f2f8d952355aa0f9be6002b52c8aa7699d9f5da597c9d
'http://deb.debian.org/debian/pool/main/p/pango1.0/pango1.0_1.42.4-6.debian.tar.xz' pango1.0_1.42.4-6.debian.tar.xz 50032 SHA256:a80d227022fcb54e027b7a4ae2ed67aad1cf712ea959ae43be77db90ecae42c3
```

Other potentially useful URLs:

- https://sources.debian.net/src/pango1.0/1.42.4-6/ (for browsing the source)
- https://sources.debian.net/src/pango1.0/1.42.4-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pango1.0/1.42.4-6/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `pcre2=10.32-4`

Binary Packages:

- `libpcre2-8-0:amd64=10.32-4`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pcre2=10.32-4
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.32-4.dsc' pcre2_10.32-4.dsc 2342 SHA256:a777361a7da85a5ea9918fd7e8469f7dea9ade77fdd65edd82a78a03d1ce05eb
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.32.orig.tar.gz' pcre2_10.32.orig.tar.gz 2169349 SHA256:9ca9be72e1a04f22be308323caa8c06ebd0c51efe99ee11278186cafbc4fe3af
'http://deb.debian.org/debian/pool/main/p/pcre2/pcre2_10.32-4.diff.gz' pcre2_10.32-4.diff.gz 4897 SHA256:722fb789ac655910e7af706566d0b33b69bfa846f60a4da1a5c9c8ef8dc865ef
```

Other potentially useful URLs:

- https://sources.debian.net/src/pcre2/10.32-4/ (for browsing the source)
- https://sources.debian.net/src/pcre2/10.32-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pcre2/10.32-4/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `perl=5.28.1-4`

Binary Packages:

- `libperl5.28:amd64=5.28.1-4`
- `perl=5.28.1-4`
- `perl-base=5.28.1-4`
- `perl-modules-5.28=5.28.1-4`

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
$ apt-get source -qq --print-uris perl=5.28.1-4
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.28.1-4.dsc' perl_5.28.1-4.dsc 2823 SHA256:8aa8c2b3a8bacbc23a1fbfc6365c86076f109142c0520eeb3a871ea979fab3b5
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.28.1.orig-regen-configure.tar.xz' perl_5.28.1.orig-regen-configure.tar.xz 411944 SHA256:5873b81af4514d3910ab1a8267b15ff8c0e2100dbae4edfd10b65ef72cd31ef8
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.28.1.orig.tar.xz' perl_5.28.1.orig.tar.xz 12372080 SHA256:fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d
'http://deb.debian.org/debian/pool/main/p/perl/perl_5.28.1-4.debian.tar.xz' perl_5.28.1-4.debian.tar.xz 175692 SHA256:a73c9b6ca3ef3358506e04d369378a3ecbc6efce4850c9fbaa3d31a585ccfce5
```

Other potentially useful URLs:

- https://sources.debian.net/src/perl/5.28.1-4/ (for browsing the source)
- https://sources.debian.net/src/perl/5.28.1-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/perl/5.28.1-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pixman=0.36.0-1`

Binary Packages:

- `libpixman-1-0:amd64=0.36.0-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris pixman=0.36.0-1
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.36.0-1.dsc' pixman_0.36.0-1.dsc 2040 SHA256:cd14652763bce32b699778c9a2d73d1bd01384754b1c259ab86cebba083c4aaf
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.36.0.orig.tar.gz' pixman_0.36.0.orig.tar.gz 881544 SHA256:1ca19c8d4d37682adfbc42741d24977903fec1169b4153ec05bb690d4acf9fae
'http://deb.debian.org/debian/pool/main/p/pixman/pixman_0.36.0-1.diff.gz' pixman_0.36.0-1.diff.gz 322741 SHA256:59b44243d485e97bd47ffa845da9e300a18bce37e4cb49793eb0cd2ac5c6de43
```

Other potentially useful URLs:

- https://sources.debian.net/src/pixman/0.36.0-1/ (for browsing the source)
- https://sources.debian.net/src/pixman/0.36.0-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pixman/0.36.0-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `pkg-config=0.29-6`

Binary Packages:

- `pkg-config=0.29-6`

Licenses: (parsed from: `/usr/share/doc/pkg-config/copyright`)

- `GPL`

Source:

```console
$ apt-get source -qq --print-uris pkg-config=0.29-6
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.29-6.dsc' pkg-config_0.29-6.dsc 1757 SHA256:a5f1a8f976f3d8ad579341ba73514eb3af9dbc6bad8d2b5828699ac24196624f
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.29.orig.tar.gz' pkg-config_0.29.orig.tar.gz 1973875 SHA256:c8507705d2a10c67f385d66ca2aae31e81770cc0734b4191eb8c489e864a006b
'http://deb.debian.org/debian/pool/main/p/pkg-config/pkg-config_0.29-6.diff.gz' pkg-config_0.29-6.diff.gz 8145 SHA256:c06146d878fb7faa4ac3edb5e45188b184cc650a752384d5c1053f41edf590bc
```

Other potentially useful URLs:

- https://sources.debian.net/src/pkg-config/0.29-6/ (for browsing the source)
- https://sources.debian.net/src/pkg-config/0.29-6/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/pkg-config/0.29-6/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `r-base=3.5.2-1`

Binary Packages:

- `r-base=3.5.2-1`
- `r-base-core=3.5.2-1`
- `r-base-dev=3.5.2-1`
- `r-recommended=3.5.2-1`

Licenses: (parsed from: `/usr/share/doc/r-base/copyright`, `/usr/share/doc/r-base-core/copyright`, `/usr/share/doc/r-base-dev/copyright`, `/usr/share/doc/r-recommended/copyright`)

- `Artistic`
- `GPL-2`
- `GPL-3`
- `LGPL-2`
- `LGPL-2.1`
- `LGPL-3`

Source:

```console
$ apt-get source -qq --print-uris r-base=3.5.2-1
'http://deb.debian.org/debian/pool/main/r/r-base/r-base_3.5.2-1.dsc' r-base_3.5.2-1.dsc 3008 SHA256:7d88e52a0af2816fb2599d4a12d2754ffa42a0f1cccf5a625b9cc9ae751618e4
'http://deb.debian.org/debian/pool/main/r/r-base/r-base_3.5.2.orig.tar.gz' r-base_3.5.2.orig.tar.gz 30186438 SHA256:e53d8c3cf20f2b8d7a9c1631b6f6a22874506fb392034758b3bb341c586c5b62
'http://deb.debian.org/debian/pool/main/r/r-base/r-base_3.5.2-1.debian.tar.xz' r-base_3.5.2-1.debian.tar.xz 88304 SHA256:10a7e638a267f277dc03644c11dcfe282bc522133f804b1232b2be40d199b419
```

Other potentially useful URLs:

- https://sources.debian.net/src/r-base/3.5.2-1/ (for browsing the source)
- https://sources.debian.net/src/r-base/3.5.2-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/r-base/3.5.2-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `r-cran-class=7.3-15-1`

Binary Packages:

- `r-cran-class=7.3-15-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-class/copyright`)

- `GPL-2`
- `GPL-2 | GPL-3`

Source:

```console
$ apt-get source -qq --print-uris r-cran-class=7.3-15-1
'http://deb.debian.org/debian/pool/main/r/r-cran-class/r-cran-class_7.3-15-1.dsc' r-cran-class_7.3-15-1.dsc 1870 SHA256:0f32f7aced1004c1c028e899a1fd94d4b6575ee42dc9584bc535df1ded4cc88f
'http://deb.debian.org/debian/pool/main/r/r-cran-class/r-cran-class_7.3-15.orig.tar.gz' r-cran-class_7.3-15.orig.tar.gz 19757 SHA256:f6bf33d610c726d58622b6cea78a808c7d6a317d02409d27c17741dfd1c730f4
'http://deb.debian.org/debian/pool/main/r/r-cran-class/r-cran-class_7.3-15-1.debian.tar.xz' r-cran-class_7.3-15-1.debian.tar.xz 3084 SHA256:97b5f0a1d48086b956d42d4fa1a3a52f1e2caef5a4f95fa92be2520f9fe958b3
```

Other potentially useful URLs:

- https://sources.debian.net/src/r-cran-class/7.3-15-1/ (for browsing the source)
- https://sources.debian.net/src/r-cran-class/7.3-15-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/r-cran-class/7.3-15-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `r-cran-mass=7.3-51.1-1`

Binary Packages:

- `r-cran-mass=7.3-51.1-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-mass/copyright`)

- `GPL-2`
- `GPL-2 | GPL-3`

Source:

```console
$ apt-get source -qq --print-uris r-cran-mass=7.3-51.1-1
'http://deb.debian.org/debian/pool/main/r/r-cran-mass/r-cran-mass_7.3-51.1-1.dsc' r-cran-mass_7.3-51.1-1.dsc 1858 SHA256:808c02c2090ff62bf37be926063f06276ed6c46a3a236be849f551465979b06d
'http://deb.debian.org/debian/pool/main/r/r-cran-mass/r-cran-mass_7.3-51.1.orig.tar.gz' r-cran-mass_7.3-51.1.orig.tar.gz 487241 SHA256:d82f3f1cee4326a14619b3a1947e99d3acd2831331e81ceeb8150582543c2091
'http://deb.debian.org/debian/pool/main/r/r-cran-mass/r-cran-mass_7.3-51.1-1.debian.tar.xz' r-cran-mass_7.3-51.1-1.debian.tar.xz 6140 SHA256:2663a2c143462c7960b518e40c7c860ab15b7fcec06ebb5b81a1b6cdc0e08515
```

Other potentially useful URLs:

- https://sources.debian.net/src/r-cran-mass/7.3-51.1-1/ (for browsing the source)
- https://sources.debian.net/src/r-cran-mass/7.3-51.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/r-cran-mass/7.3-51.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `r-cran-nnet=7.3-12-2`

Binary Packages:

- `r-cran-nnet=7.3-12-2+b2`

Licenses: (parsed from: `/usr/share/doc/r-cran-nnet/copyright`)

- `GPL-2`
- `GPL-2 | GPL-3`

Source:

```console
$ apt-get source -qq --print-uris r-cran-nnet=7.3-12-2
'http://deb.debian.org/debian/pool/main/r/r-cran-nnet/r-cran-nnet_7.3-12-2.dsc' r-cran-nnet_7.3-12-2.dsc 1726 SHA256:abe64b8ddcb5319ba72a782f1bc5582d9e30bd641f87166ed74e273e169f2a18
'http://deb.debian.org/debian/pool/main/r/r-cran-nnet/r-cran-nnet_7.3-12.orig.tar.gz' r-cran-nnet_7.3-12.orig.tar.gz 28521 SHA256:2723523e8581cc0e2215435ac773033577a16087a3f41d111757dd96b8c5559d
'http://deb.debian.org/debian/pool/main/r/r-cran-nnet/r-cran-nnet_7.3-12-2.diff.gz' r-cran-nnet_7.3-12-2.diff.gz 2782 SHA256:272d1f8dddd22695c056c4a5347928279a3df1bd6a6c7aced957549dd7a00862
```

Other potentially useful URLs:

- https://sources.debian.net/src/r-cran-nnet/7.3-12-2/ (for browsing the source)
- https://sources.debian.net/src/r-cran-nnet/7.3-12-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/r-cran-nnet/7.3-12-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `r-cran-spatial=7.3-11-2`

Binary Packages:

- `r-cran-spatial=7.3-11-2+b2`

Licenses: (parsed from: `/usr/share/doc/r-cran-spatial/copyright`)

- `GPL-2`
- `GPL-2 | GPL-3`

Source:

```console
$ apt-get source -qq --print-uris r-cran-spatial=7.3-11-2
'http://deb.debian.org/debian/pool/main/r/r-cran-spatial/r-cran-spatial_7.3-11-2.dsc' r-cran-spatial_7.3-11-2.dsc 1756 SHA256:4078c53bc1dd35bec632d28c973bc8fd8b443d23a75ba899e9f06ea834345359
'http://deb.debian.org/debian/pool/main/r/r-cran-spatial/r-cran-spatial_7.3-11.orig.tar.gz' r-cran-spatial_7.3-11.orig.tar.gz 44666 SHA256:624448d2ac22e1798097d09fc5dc4605908a33f490b8ec971fc6ea318a445c11
'http://deb.debian.org/debian/pool/main/r/r-cran-spatial/r-cran-spatial_7.3-11-2.diff.gz' r-cran-spatial_7.3-11-2.diff.gz 2752 SHA256:fa4cc5f8ea2992f39dce43008eaef4198709c80fc8efe0c09e82cf300c6ca928
```

Other potentially useful URLs:

- https://sources.debian.net/src/r-cran-spatial/7.3-11-2/ (for browsing the source)
- https://sources.debian.net/src/r-cran-spatial/7.3-11-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/r-cran-spatial/7.3-11-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `rmatrix=1.2-15-1`

Binary Packages:

- `r-cran-matrix=1.2-15-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-matrix/copyright`)

- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`

Source:

```console
$ apt-get source -qq --print-uris rmatrix=1.2-15-1
'http://deb.debian.org/debian/pool/main/r/rmatrix/rmatrix_1.2-15-1.dsc' rmatrix_1.2-15-1.dsc 1864 SHA256:acab7c9d8cb9e1905ddfd072e911d79e4f14e591c4d504494e522c87716e83b0
'http://deb.debian.org/debian/pool/main/r/rmatrix/rmatrix_1.2-15.orig.tar.gz' rmatrix_1.2-15.orig.tar.gz 1861654 SHA256:7b2624036cefd22948ec8c55cd0e553488cd41ec4b5174d348b046a3a28750d7
'http://deb.debian.org/debian/pool/main/r/rmatrix/rmatrix_1.2-15-1.debian.tar.xz' rmatrix_1.2-15-1.debian.tar.xz 5472 SHA256:c5c2113d2e61a395bc0d9a382681140eb77988b8fadf80b684c6af40f7fba0e3
```

Other potentially useful URLs:

- https://sources.debian.net/src/rmatrix/1.2-15-1/ (for browsing the source)
- https://sources.debian.net/src/rmatrix/1.2-15-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/rmatrix/1.2-15-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `rpart=4.1-13-1`

Binary Packages:

- `r-cran-rpart=4.1-13-1+b1`

Licenses: (parsed from: `/usr/share/doc/r-cran-rpart/copyright`)

- `GPL-2`
- `GPL-2 | license included below`

Source:

```console
$ apt-get source -qq --print-uris rpart=4.1-13-1
'http://deb.debian.org/debian/pool/main/r/rpart/rpart_4.1-13-1.dsc' rpart_4.1-13-1.dsc 1653 SHA256:c3bb77a8a12754844edfd2c1012cc87ca545c153dc46fe3738106b76077bd143
'http://deb.debian.org/debian/pool/main/r/rpart/rpart_4.1-13.orig.tar.gz' rpart_4.1-13.orig.tar.gz 818290 SHA256:8e11a6552224e0fbe23a85aba95acd21a0889a3fe48277f3d345de3147c7494c
'http://deb.debian.org/debian/pool/main/r/rpart/rpart_4.1-13-1.diff.gz' rpart_4.1-13-1.diff.gz 4123 SHA256:1d33c29a4ed40028edb3491821ee885889bc4ff3caa60221e83e6c6fed3c6914
```

Other potentially useful URLs:

- https://sources.debian.net/src/rpart/4.1-13-1/ (for browsing the source)
- https://sources.debian.net/src/rpart/4.1-13-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/rpart/4.1-13-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `sed=4.7-1`

Binary Packages:

- `sed=4.7-1`

Licenses: (parsed from: `/usr/share/doc/sed/copyright`)

- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris sed=4.7-1
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.7-1.dsc' sed_4.7-1.dsc 1880 SHA256:dd0e8daed987929920f7729771f9c7a5b48d094923aaf686efd2ab19db776108
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.7.orig.tar.xz' sed_4.7.orig.tar.xz 1298316 SHA256:2885768cd0a29ff8d58a6280a270ff161f6a3deb5690b2be6c49f46d4c67bd6a
'http://deb.debian.org/debian/pool/main/s/sed/sed_4.7-1.debian.tar.xz' sed_4.7-1.debian.tar.xz 59824 SHA256:a2ab8d50807fd2242f86d6c6257399e790445ab6f8932f7f487d34361b4fc483
```

Other potentially useful URLs:

- https://sources.debian.net/src/sed/4.7-1/ (for browsing the source)
- https://sources.debian.net/src/sed/4.7-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sed/4.7-1/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `survival=2.43-3-1`

Binary Packages:

- `r-cran-survival=2.43-3-1`

Licenses: (parsed from: `/usr/share/doc/r-cran-survival/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris survival=2.43-3-1
'http://deb.debian.org/debian/pool/main/s/survival/survival_2.43-3-1.dsc' survival_2.43-3-1.dsc 1862 SHA256:072f00b98e129a35ce26f12c163e001d43e0e4dd01f2c9b44134a492dcab7791
'http://deb.debian.org/debian/pool/main/s/survival/survival_2.43-3.orig.tar.gz' survival_2.43-3.orig.tar.gz 4413954 SHA256:996ccd1430b1d997ed1015c58260a15a94b9e5a9ef2d0a580c96c8169494b951
'http://deb.debian.org/debian/pool/main/s/survival/survival_2.43-3-1.debian.tar.xz' survival_2.43-3-1.debian.tar.xz 5880 SHA256:518abd94ded3c5b1864af940b5fbce2a7ab7e38f4150fb38f3c6648e7cacfbdb
```

Other potentially useful URLs:

- https://sources.debian.net/src/survival/2.43-3-1/ (for browsing the source)
- https://sources.debian.net/src/survival/2.43-3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/survival/2.43-3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `systemd=240-6`

Binary Packages:

- `libsystemd0:amd64=240-6`
- `libudev1:amd64=240-6`

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

- http://snapshot.debian.org/package/systemd/240-6/


### `dpkg` source package: `sysvinit=2.93-8`

Binary Packages:

- `sysvinit-utils=2.93-8`

Licenses: (parsed from: `/usr/share/doc/sysvinit-utils/copyright`)

- `GPL-2`
- `GPL-2+`

Source:

```console
$ apt-get source -qq --print-uris sysvinit=2.93-8
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.93-8.dsc' sysvinit_2.93-8.dsc 2657 SHA256:84aa66bfa1c7963c179da26c015468d489b39bde19c85096b4d3e261e5fc043d
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.93.orig.tar.xz' sysvinit_2.93.orig.tar.xz 117580 SHA256:472d460e233d981488509a167125a82925c8c9aba6b5608cb22598fdf326a8ff
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.93.orig.tar.xz.asc' sysvinit_2.93.orig.tar.xz.asc 1076 SHA256:cf2b374a96276a16e3ef07ad2be596420f0d8d77227aad3144d7ab4ea165a4af
'http://deb.debian.org/debian/pool/main/s/sysvinit/sysvinit_2.93-8.debian.tar.xz' sysvinit_2.93-8.debian.tar.xz 127136 SHA256:2db2ae46048acf743445545151cbc0bc5530eca1f2eec51df3175d8ab26edfa6
```

Other potentially useful URLs:

- https://sources.debian.net/src/sysvinit/2.93-8/ (for browsing the source)
- https://sources.debian.net/src/sysvinit/2.93-8/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/sysvinit/2.93-8/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tar=1.30+dfsg-5`

Binary Packages:

- `tar=1.30+dfsg-5`

Licenses: (parsed from: `/usr/share/doc/tar/copyright`)

- `GPL-2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris tar=1.30+dfsg-5
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.30+dfsg-5.dsc' tar_1.30+dfsg-5.dsc 1995 SHA256:8faec309fceffb61078a4a95489505db53c15e8d5ed4c0ac75c645e565295d29
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.30+dfsg.orig.tar.xz' tar_1.30+dfsg.orig.tar.xz 1883220 SHA256:c02f3747ffe02017878303dde8b78e79cd220364c5e8048cf92320232e38912d
'http://deb.debian.org/debian/pool/main/t/tar/tar_1.30+dfsg-5.debian.tar.xz' tar_1.30+dfsg-5.debian.tar.xz 22092 SHA256:a05b1f8178ff409bfd6559d05d8d3ec698a33264df8eaea260de25168235376e
```

Other potentially useful URLs:

- https://sources.debian.net/src/tar/1.30+dfsg-5/ (for browsing the source)
- https://sources.debian.net/src/tar/1.30+dfsg-5/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tar/1.30+dfsg-5/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tcl8.6=8.6.9+dfsg-2`

Binary Packages:

- `libtcl8.6:amd64=8.6.9+dfsg-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tcl8.6=8.6.9+dfsg-2
'http://deb.debian.org/debian/pool/main/t/tcl8.6/tcl8.6_8.6.9+dfsg-2.dsc' tcl8.6_8.6.9+dfsg-2.dsc 2111 SHA256:eec45c5a639d6b9c4f10225f98f75fe7ad2169f58225c700fe7ec0e1f16524a2
'http://deb.debian.org/debian/pool/main/t/tcl8.6/tcl8.6_8.6.9+dfsg.orig.tar.gz' tcl8.6_8.6.9+dfsg.orig.tar.gz 5934065 SHA256:e0a220012a61fd4bd07e0e6b3391a8884c16608b37a00f22726614d721c50659
'http://deb.debian.org/debian/pool/main/t/tcl8.6/tcl8.6_8.6.9+dfsg-2.debian.tar.xz' tcl8.6_8.6.9+dfsg-2.debian.tar.xz 15360 SHA256:22f6a224965b542bc028e949cf120c883735274cb7e2a29a1f09a3444a4ffa83
```

Other potentially useful URLs:

- https://sources.debian.net/src/tcl8.6/8.6.9+dfsg-2/ (for browsing the source)
- https://sources.debian.net/src/tcl8.6/8.6.9+dfsg-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tcl8.6/8.6.9+dfsg-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tex-gyre=20180621-2`

Binary Packages:

- `fonts-texgyre=20180621-2`

Licenses: (parsed from: `/usr/share/doc/fonts-texgyre/copyright`)

- `GPL-2`

**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/tex-gyre/20180621-2/


### `dpkg` source package: `tiff=4.0.10-4`

Binary Packages:

- `libtiff5:amd64=4.0.10-4`

Licenses: (parsed from: `/usr/share/doc/libtiff5/copyright`)

- `Hylafax`

Source:

```console
$ apt-get source -qq --print-uris tiff=4.0.10-4
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.0.10-4.dsc' tiff_4.0.10-4.dsc 2173 SHA256:3c5d339cd5dbb59c1e97bf8687c36e0ed75aefe79fc248f749931897060a641e
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.0.10.orig.tar.gz' tiff_4.0.10.orig.tar.gz 2402867 SHA256:2c52d11ccaf767457db0c46795d9c7d1a8d8f76f68b0b800a3dfe45786b996e4
'http://deb.debian.org/debian/pool/main/t/tiff/tiff_4.0.10-4.debian.tar.xz' tiff_4.0.10-4.debian.tar.xz 21580 SHA256:eed80359456ae1437426be3894ed594ac6d6051306afee6093abdc65a07887b0
```

Other potentially useful URLs:

- https://sources.debian.net/src/tiff/4.0.10-4/ (for browsing the source)
- https://sources.debian.net/src/tiff/4.0.10-4/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tiff/4.0.10-4/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tk8.6=8.6.9-2`

Binary Packages:

- `libtk8.6:amd64=8.6.9-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris tk8.6=8.6.9-2
'http://deb.debian.org/debian/pool/main/t/tk8.6/tk8.6_8.6.9-2.dsc' tk8.6_8.6.9-2.dsc 2157 SHA256:2c6e6ab2c5de580ee1ff9d1552f4c32eef5774a854d4558c6db7cb2c45d9f712
'http://deb.debian.org/debian/pool/main/t/tk8.6/tk8.6_8.6.9.orig.tar.gz' tk8.6_8.6.9.orig.tar.gz 4364606 SHA256:d3f9161e8ba0f107fe8d4df1f6d3a14c30cc3512dfc12a795daa367a27660dac
'http://deb.debian.org/debian/pool/main/t/tk8.6/tk8.6_8.6.9-2.debian.tar.xz' tk8.6_8.6.9-2.debian.tar.xz 11664 SHA256:0654d3701f8349d3eedb55f26ff112122953b397c84a07b019d4c9f65e1c5304
```

Other potentially useful URLs:

- https://sources.debian.net/src/tk8.6/8.6.9-2/ (for browsing the source)
- https://sources.debian.net/src/tk8.6/8.6.9-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/tk8.6/8.6.9-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `tzdata=2018i-1`

Binary Packages:

- `tzdata=2018i-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


**WARNING:** unable to find source (`apt-get source` failed or returned no results)!  
This is *usually* due to a new package version being released and the old version being removed.

The source package *may* still be available for download from:

- http://snapshot.debian.org/package/tzdata/2018i-1/


### `dpkg` source package: `ucf=3.0038+nmu1`

Binary Packages:

- `ucf=3.0038+nmu1`

Licenses: (parsed from: `/usr/share/doc/ucf/copyright`)

- `GPL-2`

Source:

```console
$ apt-get source -qq --print-uris ucf=3.0038+nmu1
'http://deb.debian.org/debian/pool/main/u/ucf/ucf_3.0038+nmu1.dsc' ucf_3.0038+nmu1.dsc 1420 SHA256:89b6f921a30e04a946f62e6996be7c16f2f7c383d20783cd4704b502c6d5b125
'http://deb.debian.org/debian/pool/main/u/ucf/ucf_3.0038+nmu1.tar.xz' ucf_3.0038+nmu1.tar.xz 65860 SHA256:d00bc3dd8d2f91317f52b5352fe129023c72babad55bc0dd4ece7b34183c7436
```

Other potentially useful URLs:

- https://sources.debian.net/src/ucf/3.0038+nmu1/ (for browsing the source)
- https://sources.debian.net/src/ucf/3.0038+nmu1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/ucf/3.0038+nmu1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `unzip=6.0-22`

Binary Packages:

- `unzip=6.0-22`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris unzip=6.0-22
'http://deb.debian.org/debian/pool/main/u/unzip/unzip_6.0-22.dsc' unzip_6.0-22.dsc 1344 SHA256:22cf3115ada5ad5e9c232d8bc39e4452a1891f75e64e95053f696e80938e94c7
'http://deb.debian.org/debian/pool/main/u/unzip/unzip_6.0.orig.tar.gz' unzip_6.0.orig.tar.gz 1376845 SHA256:036d96991646d0449ed0aa952e4fbe21b476ce994abc276e49d30e686708bd37
'http://deb.debian.org/debian/pool/main/u/unzip/unzip_6.0-22.debian.tar.xz' unzip_6.0-22.debian.tar.xz 18212 SHA256:f3c80c1e3917d59cb2fe72f0431159c919f2df7fc96f5b539c91cc96fc02ecfa
```

Other potentially useful URLs:

- https://sources.debian.net/src/unzip/6.0-22/ (for browsing the source)
- https://sources.debian.net/src/unzip/6.0-22/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/unzip/6.0-22/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `util-linux=2.33.1-0.1`

Binary Packages:

- `bsdutils=1:2.33.1-0.1`
- `fdisk=2.33.1-0.1`
- `libblkid1:amd64=2.33.1-0.1`
- `libfdisk1:amd64=2.33.1-0.1`
- `libmount1:amd64=2.33.1-0.1`
- `libsmartcols1:amd64=2.33.1-0.1`
- `libuuid1:amd64=2.33.1-0.1`
- `mount=2.33.1-0.1`
- `util-linux=2.33.1-0.1`

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
$ apt-get source -qq --print-uris util-linux=2.33.1-0.1
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.33.1-0.1.dsc' util-linux_2.33.1-0.1.dsc 3988 SHA256:b5ee1ff0a8de37c3e4d7c0c29b7571b30ba4bea1d37e55e3d1dac3a3cbc50827
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.33.1.orig.tar.xz' util-linux_2.33.1.orig.tar.xz 4650936 SHA256:c14bd9f3b6e1792b90db87696e87ec643f9d63efa0a424f092a5a6b2f2dbef21
'http://deb.debian.org/debian/pool/main/u/util-linux/util-linux_2.33.1-0.1.debian.tar.xz' util-linux_2.33.1-0.1.debian.tar.xz 81780 SHA256:07bfeb8298fab559dec2091463cab343785853bcae6c92c0806b7639e105913a
```

Other potentially useful URLs:

- https://sources.debian.net/src/util-linux/2.33.1-0.1/ (for browsing the source)
- https://sources.debian.net/src/util-linux/2.33.1-0.1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/util-linux/2.33.1-0.1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `vim=2:8.1.0875-2`

Binary Packages:

- `vim-common=2:8.1.0875-2`
- `vim-tiny=2:8.1.0875-2`
- `xxd=2:8.1.0875-2`

Licenses: (parsed from: `/usr/share/doc/vim-common/copyright`, `/usr/share/doc/vim-tiny/copyright`, `/usr/share/doc/xxd/copyright`)

- `Apache`
- `Apache-2.0`
- `Artistic`
- `Artistic-1`
- `BSD-2-clause`
- `BSD-3-clause`
- `Compaq`
- `EDL-1`
- `Expat`
- `GPL-1`
- `GPL-1+`
- `GPL-2`
- `GPL-2+`
- `LGPL-2.1`
- `LGPL-2.1+`
- `OPL-1+`
- `SRA`
- `UC`
- `Vim`
- `Vim-Regexp`
- `X11`
- `XPM`
- `public-domain`

Source:

```console
$ apt-get source -qq --print-uris vim=2:8.1.0875-2
'http://deb.debian.org/debian/pool/main/v/vim/vim_8.1.0875-2.dsc' vim_8.1.0875-2.dsc 2918 SHA256:1756c9fba2a1dbb71b4a74de5224835047c6f8bb66c07b4ef8d5499fe2adb818
'http://deb.debian.org/debian/pool/main/v/vim/vim_8.1.0875.orig.tar.gz' vim_8.1.0875.orig.tar.gz 14067291 SHA256:fb5b487f424d3a4d17b7c74fe64bf1faa9dc9a65da6da246e6d8c02489ba8b0b
'http://deb.debian.org/debian/pool/main/v/vim/vim_8.1.0875-2.debian.tar.xz' vim_8.1.0875-2.debian.tar.xz 173480 SHA256:b00079369aab4035a2426818bf77b2b2958a3391c9ff7068a97b919a7b7f9fa5
```

Other potentially useful URLs:

- https://sources.debian.net/src/vim/2:8.1.0875-2/ (for browsing the source)
- https://sources.debian.net/src/vim/2:8.1.0875-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/vim/2:8.1.0875-2/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `wget=1.20.1-1`

Binary Packages:

- `wget=1.20.1-1`

Licenses: (parsed from: `/usr/share/doc/wget/copyright`)

- `GFDL-1.2`
- `GPL-3`

Source:

```console
$ apt-get source -qq --print-uris wget=1.20.1-1
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.20.1-1.dsc' wget_1.20.1-1.dsc 2170 SHA256:3b2e8f276796eeaa7deb267f132aa7e03b0ac9e9afff1b900a2a3688496528a3
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.20.1.orig.tar.gz' wget_1.20.1.orig.tar.gz 4392853 SHA256:b783b390cb571c837b392857945f5a1f00ec6b043177cc42abb8ee1b542ee1b3
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.20.1.orig.tar.gz.asc' wget_1.20.1.orig.tar.gz.asc 1241 SHA256:c3591a4e5602d15c43fa693c791732c1c087399ac11bda8a90975cc887a37bc8
'http://deb.debian.org/debian/pool/main/w/wget/wget_1.20.1-1.debian.tar.xz' wget_1.20.1-1.debian.tar.xz 60384 SHA256:2750c9c8d29ec8c1c7b1e9721a3e82647ea059418f6bb9fb35539464a867c110
```

Other potentially useful URLs:

- https://sources.debian.net/src/wget/1.20.1-1/ (for browsing the source)
- https://sources.debian.net/src/wget/1.20.1-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/wget/1.20.1-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xauth=1:1.0.10-1`

Binary Packages:

- `xauth=1:1.0.10-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xauth=1:1.0.10-1
'http://deb.debian.org/debian/pool/main/x/xauth/xauth_1.0.10-1.dsc' xauth_1.0.10-1.dsc 1891 SHA256:4bcb2b5fcc8b174bebea9584b3a06e16027b58d8e1b31e6d7704b6fd0df5c6e3
'http://deb.debian.org/debian/pool/main/x/xauth/xauth_1.0.10.orig.tar.gz' xauth_1.0.10.orig.tar.gz 204259 SHA256:5196821221d824b9bc278fa6505c595acee1d374518a52217d9b64d3c63dedd0
'http://deb.debian.org/debian/pool/main/x/xauth/xauth_1.0.10-1.diff.gz' xauth_1.0.10-1.diff.gz 12303 SHA256:a8212a5cc9607c542d30abd880eb3a69870e642e3c45880c1ab86836008f4ede
```

Other potentially useful URLs:

- https://sources.debian.net/src/xauth/1:1.0.10-1/ (for browsing the source)
- https://sources.debian.net/src/xauth/1:1.0.10-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xauth/1:1.0.10-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xdg-utils=1.1.3-1`

Binary Packages:

- `xdg-utils=1.1.3-1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xdg-utils=1.1.3-1
'http://deb.debian.org/debian/pool/main/x/xdg-utils/xdg-utils_1.1.3-1.dsc' xdg-utils_1.1.3-1.dsc 2059 SHA256:60a01003f5688462347e664fd42762a24578b8f325f473effd956e3bcc958ae5
'http://deb.debian.org/debian/pool/main/x/xdg-utils/xdg-utils_1.1.3.orig.tar.gz' xdg-utils_1.1.3.orig.tar.gz 297170 SHA256:d798b08af8a8e2063ddde6c9fa3398ca81484f27dec642c5627ffcaa0d4051d9
'http://deb.debian.org/debian/pool/main/x/xdg-utils/xdg-utils_1.1.3-1.debian.tar.xz' xdg-utils_1.1.3-1.debian.tar.xz 9876 SHA256:71f5241bac2216c0ba650563b09e3b03be51c4818e532cac8ffad3c0f8d27057
```

Other potentially useful URLs:

- https://sources.debian.net/src/xdg-utils/1.1.3-1/ (for browsing the source)
- https://sources.debian.net/src/xdg-utils/1.1.3-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xdg-utils/1.1.3-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `xft=2.3.2-2`

Binary Packages:

- `libxft2:amd64=2.3.2-2`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris xft=2.3.2-2
'http://deb.debian.org/debian/pool/main/x/xft/xft_2.3.2-2.dsc' xft_2.3.2-2.dsc 2000 SHA256:56c1f34591cdc307e83abaabb28e22e190cabcf528241e18dfcd5dca9e530f89
'http://deb.debian.org/debian/pool/main/x/xft/xft_2.3.2.orig.tar.gz' xft_2.3.2.orig.tar.gz 402454 SHA256:26cdddcc70b187833cbe9dc54df1864ba4c03a7175b2ca9276de9f05dce74507
'http://deb.debian.org/debian/pool/main/x/xft/xft_2.3.2-2.diff.gz' xft_2.3.2-2.diff.gz 10327 SHA256:e94bd505f05507b5691dca9380c2bd4595ba1fd267c09831ab6e3be4bfd87062
```

Other potentially useful URLs:

- https://sources.debian.net/src/xft/2.3.2-2/ (for browsing the source)
- https://sources.debian.net/src/xft/2.3.2-2/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xft/2.3.2-2/ (for access to the source package after it no longer exists in the archive)

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

### `dpkg` source package: `xz-utils=5.2.4-1`

Binary Packages:

- `liblzma-dev:amd64=5.2.4-1`
- `liblzma5:amd64=5.2.4-1`
- `xz-utils=5.2.4-1`

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
$ apt-get source -qq --print-uris xz-utils=5.2.4-1
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.4-1.dsc' xz-utils_5.2.4-1.dsc 2518 SHA256:b1572c4efb3c8ebf6f0e044b70e1e0451c919a99d3f80be03b624a54dd7ea593
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.4.orig.tar.xz' xz-utils_5.2.4.orig.tar.xz 1053868 SHA256:9717ae363760dedf573dad241420c5fea86256b65bc21d2cf71b2b12f0544f4b
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.4.orig.tar.xz.asc' xz-utils_5.2.4.orig.tar.xz.asc 879 SHA256:88290c1deeaf674ae2a4821f4373fe0e4cc2a94199eae6dcc26df1e70cc15303
'http://deb.debian.org/debian/pool/main/x/xz-utils/xz-utils_5.2.4-1.debian.tar.xz' xz-utils_5.2.4-1.debian.tar.xz 135296 SHA256:d37b558444b76e88a69601df008cf1c0343c58cb7765b7bbb2099b0a19619361
```

Other potentially useful URLs:

- https://sources.debian.net/src/xz-utils/5.2.4-1/ (for browsing the source)
- https://sources.debian.net/src/xz-utils/5.2.4-1/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/xz-utils/5.2.4-1/ (for access to the source package after it no longer exists in the archive)

### `dpkg` source package: `zip=3.0-11`

Binary Packages:

- `zip=3.0-11+b1`

**WARNING:** unable to detect licenses! (package likely not compliant with DEP-5)  
If source is available (seen below), check the contents of `debian/copyright` within it.


Source:

```console
$ apt-get source -qq --print-uris zip=3.0-11
'http://deb.debian.org/debian/pool/main/z/zip/zip_3.0-11.dsc' zip_3.0-11.dsc 1306 SHA256:9f7df6a4276dfc79cfc8c49212d702965cef18e3f5433fba70b72577946e7604
'http://deb.debian.org/debian/pool/main/z/zip/zip_3.0.orig.tar.gz' zip_3.0.orig.tar.gz 1118845 SHA256:f0e8bb1f9b7eb0b01285495a2699df3a4b766784c1765a8f1aeedf63c0806369
'http://deb.debian.org/debian/pool/main/z/zip/zip_3.0-11.debian.tar.xz' zip_3.0-11.debian.tar.xz 8260 SHA256:c5c0714a88592f9e02146bfe4a8d26cd9bd97e8d33b1efc8b37784997caa40ed
```

Other potentially useful URLs:

- https://sources.debian.net/src/zip/3.0-11/ (for browsing the source)
- https://sources.debian.net/src/zip/3.0-11/debian/copyright/ (for direct copyright/license information)
- http://snapshot.debian.org/package/zip/3.0-11/ (for access to the source package after it no longer exists in the archive)

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
