## `fedora:rawhide`

```console
$ docker pull fedora@sha256:271dbc993c916196e23e865efc86f4eb599b7e9b746161088c8230d68f36e224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `fedora:rawhide` - linux; amd64

```console
$ docker pull fedora@sha256:24f78d0b989b20b4aff0ce14f064884957600ae721f281947d28637d703ac75d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87272334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61702be7e76e804abf51a86171aa4de6d00f079f7263412e45a380e127316660`

```dockerfile
# Fri, 07 Sep 2018 14:42:43 GMT
MAINTAINER [Adam Miller <maxamillion@fedoraproject.org>] [Patrick Uiterwijk <patrick@puiterwijk.org>]
# Fri, 07 Sep 2018 19:19:36 GMT
ENV DISTTAG=f30container FGC=f30 FBR=f30
# Wed, 07 Nov 2018 00:22:27 GMT
ADD file:964836758d38cfc647c6ee3676bd70f9c40d516b4f0972dc00ae80a196fe0eb4 in / 
```

-	Layers:
	-	`sha256:0e50f429aee790930bc0869ac8caaa0a8e7456c09604d5c1acbb5ab251af8bce`  
		Last Modified: Wed, 07 Nov 2018 00:24:48 GMT  
		Size: 87.3 MB (87272334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fedora:rawhide` - linux; arm64 variant v8

```console
$ docker pull fedora@sha256:255fd5fa78febc4d7620fe38bd85aaab240dfd6cea6a8bd7fb2602585246d066
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85387611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c56ca67b7da757633c0582ca17c219d7e7d240e3c5e6793bbb41479e2015493a`

```dockerfile
# Fri, 21 Jul 2017 05:00:22 GMT
MAINTAINER [Adam Miller <maxamillion@fedoraproject.org>] [Patrick Uiterwijk <patrick@puiterwijk.org>]
# Sat, 08 Sep 2018 08:58:46 GMT
ENV DISTTAG=f30container FGC=f30 FBR=f30
# Sat, 08 Sep 2018 08:59:03 GMT
ADD file:aee5d8edf0a7cbf861e98009bc375088aeddd3f6ab34167e0aea82ad1dfba113 in / 
```

-	Layers:
	-	`sha256:6cbb25a8152075774b6c9da3dc276c2f71682dbad30b02bb00abc0c4ee7bc495`  
		Last Modified: Sat, 08 Sep 2018 09:03:53 GMT  
		Size: 85.4 MB (85387611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
