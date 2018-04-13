<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `neurodebian`

-	[`neurodebian:artful`](#neurodebianartful)
-	[`neurodebian:artful-non-free`](#neurodebianartful-non-free)
-	[`neurodebian:buster`](#neurodebianbuster)
-	[`neurodebian:buster-non-free`](#neurodebianbuster-non-free)
-	[`neurodebian:jessie`](#neurodebianjessie)
-	[`neurodebian:jessie-non-free`](#neurodebianjessie-non-free)
-	[`neurodebian:latest`](#neurodebianlatest)
-	[`neurodebian:nd`](#neurodebiannd)
-	[`neurodebian:nd100`](#neurodebiannd100)
-	[`neurodebian:nd100-non-free`](#neurodebiannd100-non-free)
-	[`neurodebian:nd14.04`](#neurodebiannd1404)
-	[`neurodebian:nd14.04-non-free`](#neurodebiannd1404-non-free)
-	[`neurodebian:nd16.04`](#neurodebiannd1604)
-	[`neurodebian:nd16.04-non-free`](#neurodebiannd1604-non-free)
-	[`neurodebian:nd17.10`](#neurodebiannd1710)
-	[`neurodebian:nd17.10-non-free`](#neurodebiannd1710-non-free)
-	[`neurodebian:nd70`](#neurodebiannd70)
-	[`neurodebian:nd70-non-free`](#neurodebiannd70-non-free)
-	[`neurodebian:nd80`](#neurodebiannd80)
-	[`neurodebian:nd80-non-free`](#neurodebiannd80-non-free)
-	[`neurodebian:nd90`](#neurodebiannd90)
-	[`neurodebian:nd90-non-free`](#neurodebiannd90-non-free)
-	[`neurodebian:nd-non-free`](#neurodebiannd-non-free)
-	[`neurodebian:non-free`](#neurodebiannon-free)
-	[`neurodebian:sid`](#neurodebiansid)
-	[`neurodebian:sid-non-free`](#neurodebiansid-non-free)
-	[`neurodebian:stretch`](#neurodebianstretch)
-	[`neurodebian:stretch-non-free`](#neurodebianstretch-non-free)
-	[`neurodebian:trusty`](#neurodebiantrusty)
-	[`neurodebian:trusty-non-free`](#neurodebiantrusty-non-free)
-	[`neurodebian:wheezy`](#neurodebianwheezy)
-	[`neurodebian:wheezy-non-free`](#neurodebianwheezy-non-free)
-	[`neurodebian:xenial`](#neurodebianxenial)
-	[`neurodebian:xenial-non-free`](#neurodebianxenial-non-free)

## `neurodebian:artful`

```console
$ docker pull neurodebian@sha256:d7e1d147d762a97df8dceb96586247cfca8047e9b74ff615bdb113db1c89ea80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:artful` - linux; amd64

```console
$ docker pull neurodebian@sha256:5c74eb1ec06592c9eb044cba1e42f1e00763f5c89d749b202a5452a647240edc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42347649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb49afa408f7b77560e8460c0fcb67cd07e657d73a9463c4154dc32812649e8b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:34:38 GMT
ADD file:468408277a83dbd0949d04a6bd3fe61c1fda31fb15df76257c1f1502c6b2889b in / 
# Thu, 12 Apr 2018 18:34:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:34:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:34:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:34:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:34:41 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:07:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:07:25 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 13 Apr 2018 12:07:25 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian artful main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel artful main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:f56c16792d1e2514d57f86a120f7bff06c8f7ad0f3c26c47f54e8d96f57b1ca7`  
		Last Modified: Thu, 12 Apr 2018 19:14:52 GMT  
		Size: 40.5 MB (40506608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f3fcbcaacdbf8bf99fc9e2cecfae0ca6b637325023b34140d9b328b7cea39a`  
		Last Modified: Thu, 12 Apr 2018 19:14:44 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f1503c00f86eee2f931903a7038268867b9952347e7ae66c8e0bee8a1aff51`  
		Last Modified: Thu, 12 Apr 2018 19:14:41 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ce6675ff396e9b2cffca66df5660189168e4e29a301dbae503425b5bc7095b`  
		Last Modified: Thu, 12 Apr 2018 19:14:41 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29a9bdc981f94e39efbc0aff3f33cffcde04a8fcb08fb1c28d43395451829d6`  
		Last Modified: Thu, 12 Apr 2018 19:14:43 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1352078c74003d2adca3908e6dc6614c8c47f0516f08542f8d3960aeca7b16b5`  
		Last Modified: Fri, 13 Apr 2018 12:27:10 GMT  
		Size: 1.8 MB (1835177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fb56c4c391254ce65a72e576ecc8372d000f2b8024d9b85df2da1f6ca533c6`  
		Last Modified: Fri, 13 Apr 2018 12:27:10 GMT  
		Size: 3.1 KB (3150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e4b1f433db7217fae2bbdedaf78c810dec39297db7999b29e79f8077ae91af`  
		Last Modified: Fri, 13 Apr 2018 12:27:10 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:artful-non-free`

```console
$ docker pull neurodebian@sha256:489924a0c577ba4b0abacdbc7e7bd954af8927f527147240b5a5b160b044362d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:artful-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:3c0a23461f85d4a05a46edd6d3011f6fc356ac1e74c28405538ee5db4b6b390e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42347907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a918ba5c11d5ef5f5100a06d52db369cd66e0668cdbd7a17bf2fe59bddf8e040`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:34:38 GMT
ADD file:468408277a83dbd0949d04a6bd3fe61c1fda31fb15df76257c1f1502c6b2889b in / 
# Thu, 12 Apr 2018 18:34:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:34:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:34:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:34:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:34:41 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:07:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:07:25 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 13 Apr 2018 12:07:25 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian artful main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel artful main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 13 Apr 2018 12:07:46 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' /etc/apt/sources.list || sed -i -e 's,universe *$,universe multiverse,g' /etc/apt/sources.list
```

-	Layers:
	-	`sha256:f56c16792d1e2514d57f86a120f7bff06c8f7ad0f3c26c47f54e8d96f57b1ca7`  
		Last Modified: Thu, 12 Apr 2018 19:14:52 GMT  
		Size: 40.5 MB (40506608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f3fcbcaacdbf8bf99fc9e2cecfae0ca6b637325023b34140d9b328b7cea39a`  
		Last Modified: Thu, 12 Apr 2018 19:14:44 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f1503c00f86eee2f931903a7038268867b9952347e7ae66c8e0bee8a1aff51`  
		Last Modified: Thu, 12 Apr 2018 19:14:41 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ce6675ff396e9b2cffca66df5660189168e4e29a301dbae503425b5bc7095b`  
		Last Modified: Thu, 12 Apr 2018 19:14:41 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29a9bdc981f94e39efbc0aff3f33cffcde04a8fcb08fb1c28d43395451829d6`  
		Last Modified: Thu, 12 Apr 2018 19:14:43 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1352078c74003d2adca3908e6dc6614c8c47f0516f08542f8d3960aeca7b16b5`  
		Last Modified: Fri, 13 Apr 2018 12:27:10 GMT  
		Size: 1.8 MB (1835177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fb56c4c391254ce65a72e576ecc8372d000f2b8024d9b85df2da1f6ca533c6`  
		Last Modified: Fri, 13 Apr 2018 12:27:10 GMT  
		Size: 3.1 KB (3150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e4b1f433db7217fae2bbdedaf78c810dec39297db7999b29e79f8077ae91af`  
		Last Modified: Fri, 13 Apr 2018 12:27:10 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de834202463b9c5e9255c568d55ca02a101e736f0e05b9551205d7080b387cb`  
		Last Modified: Fri, 13 Apr 2018 12:30:16 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:buster`

```console
$ docker pull neurodebian@sha256:13618812510e5d8a4efb178f107a4d9c53fe1af9685cfe01630e028eaa43824c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:buster` - linux; amd64

```console
$ docker pull neurodebian@sha256:7d31408563bba83b479f65beae312471195b11b4efc9a53c37e7ac94921e14da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57752783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910d8f0689c99f0cbfcda855a48eb7e3b6cebead05288ee86c3784b670407a1f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:56:10 GMT
ADD file:2219cecc89ed69975239dfc7c181d32ca55b272939b08410f4213d61a0281f82 in / 
# Tue, 13 Mar 2018 21:56:10 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:36:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:36:25 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:36:25 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:18969b622956cb8bc2c2e169be10942a74c07098134954db39e745d704631ec0`  
		Last Modified: Tue, 13 Mar 2018 22:35:27 GMT  
		Size: 48.2 MB (48158970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba3dc58fe975026f98db1c96f256e66358cd6da1c76ba5ea2c8a6f74ec40f5f`  
		Last Modified: Wed, 14 Mar 2018 09:42:26 GMT  
		Size: 9.6 MB (9590416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f488fa29bb231690784e5512d15dc18513482a28af8a4f1369b88d4efd9fe6da`  
		Last Modified: Wed, 14 Mar 2018 09:42:25 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c759c942996312c7d64fa65e700f56784d68f4a1aadbfb0efa82fc813cb8bb89`  
		Last Modified: Wed, 14 Mar 2018 09:42:25 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:buster-non-free`

```console
$ docker pull neurodebian@sha256:c1a80bc8c23a78ad6840422bf062bfd36d22ccb8c6f47d5691774181b9c44480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:buster-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:229f96d6d87e3d079311f8356c2f47c99831a6e9a85d42694cf77cfaa196fcf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57753091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92a6721ab33e873b9cc841eb46fe7bfb8cd59e5b68894f0764224648cf907576`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:56:10 GMT
ADD file:2219cecc89ed69975239dfc7c181d32ca55b272939b08410f4213d61a0281f82 in / 
# Tue, 13 Mar 2018 21:56:10 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:36:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:36:25 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:36:25 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 14 Mar 2018 09:36:42 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:18969b622956cb8bc2c2e169be10942a74c07098134954db39e745d704631ec0`  
		Last Modified: Tue, 13 Mar 2018 22:35:27 GMT  
		Size: 48.2 MB (48158970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba3dc58fe975026f98db1c96f256e66358cd6da1c76ba5ea2c8a6f74ec40f5f`  
		Last Modified: Wed, 14 Mar 2018 09:42:26 GMT  
		Size: 9.6 MB (9590416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f488fa29bb231690784e5512d15dc18513482a28af8a4f1369b88d4efd9fe6da`  
		Last Modified: Wed, 14 Mar 2018 09:42:25 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c759c942996312c7d64fa65e700f56784d68f4a1aadbfb0efa82fc813cb8bb89`  
		Last Modified: Wed, 14 Mar 2018 09:42:25 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4410fb5a6423ac12eb12db18aef6cecce31c156e14581248922450f5fc4796f6`  
		Last Modified: Wed, 14 Mar 2018 09:43:04 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:jessie`

```console
$ docker pull neurodebian@sha256:ba465c8f4e064260cd25c01b080876e97d67a3245144dce51b5ec35d65b5079a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:jessie` - linux; amd64

```console
$ docker pull neurodebian@sha256:3e28c37ce03982510fc22ca726b9f2c02dd641f7178d4ea9d89af11ab5f38185
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52612210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6e5aa29b03189b974c185c07f6c76b771cce2aa47b51e3eb66a1ac364c81ab8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:34:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:34:36 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:34:37 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f77eedd7989e649d101516c676de9d24a83116045a86b4668f6823201ffab8`  
		Last Modified: Wed, 14 Mar 2018 09:39:25 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d61df763f2e5a3d94d97c58398356ff99c2d224a693418fefa4b83e1f63f0f`  
		Last Modified: Wed, 14 Mar 2018 09:39:24 GMT  
		Size: 3.2 KB (3155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bbb84765ef7a8090ecb6e1e630d7dfd4cce299cd3126b0fd191bfffb98f0d7`  
		Last Modified: Wed, 14 Mar 2018 09:39:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:jessie-non-free`

```console
$ docker pull neurodebian@sha256:034973e1059131eac8a6fcef287ce357151d343c0b9e8fbf8b466e218999fac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:jessie-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:32b174cfb491f551d80786b64168a0b9a2143823ab7b1349460e75f01bab0f9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52612518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e95d90537b3650f5c49067f292ccbd00afbbd402244b65ec755ae723a4ffaa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:34:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:34:36 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:34:37 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 14 Mar 2018 09:34:56 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f77eedd7989e649d101516c676de9d24a83116045a86b4668f6823201ffab8`  
		Last Modified: Wed, 14 Mar 2018 09:39:25 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d61df763f2e5a3d94d97c58398356ff99c2d224a693418fefa4b83e1f63f0f`  
		Last Modified: Wed, 14 Mar 2018 09:39:24 GMT  
		Size: 3.2 KB (3155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bbb84765ef7a8090ecb6e1e630d7dfd4cce299cd3126b0fd191bfffb98f0d7`  
		Last Modified: Wed, 14 Mar 2018 09:39:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051ae630e7066957e6029e9510d69371594fb794c93fd6543cd68d33bc039751`  
		Last Modified: Wed, 14 Mar 2018 09:40:02 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:latest`

```console
$ docker pull neurodebian@sha256:21b942e5f4c21c1c977c2749524dae04c3483f0ac41ad5b03df32964bc5ad412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:latest` - linux; amd64

```console
$ docker pull neurodebian@sha256:ec2f0dd81a8952860ad8c0d6b5e693d693cd1a38fd3e5911fe1ce6efb465bd4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52059623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b62df4d54ea6a4806ebff2fe3934228c8efcfd3de0df6909037fb78be96ad926`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:35:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:35:39 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:35:40 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce230c9f10728a779527dfa18cac47892e9ebc04287b7ad5134fddcd9c5eea5`  
		Last Modified: Wed, 14 Mar 2018 09:40:40 GMT  
		Size: 6.9 MB (6921150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abf4720f0fa80f453840043e3f581297f283f1ec532a06d7d032042bbf54542`  
		Last Modified: Wed, 14 Mar 2018 09:40:39 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86832fe67170eeaf7fc0c58cbf37049378f87e53ee5aa3aa32628d997cf22c13`  
		Last Modified: Wed, 14 Mar 2018 09:40:39 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:1d6453e0f0b9c4bd317ad575143106ff3bab5a757fe8b705d72b25c70a608989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd` - linux; amd64

```console
$ docker pull neurodebian@sha256:d37061b91172806cc6c16a9dc333449d1c7e14171fe4d83ceb40633794ff5451
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57655265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beafd0617c0f985445da273ce83f63c1649adb63308609dca1d1a2c485a47530`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:37:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:37:28 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:37:29 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665aea63a1f82c44ae1945fd455ed17626aaf492c9b52547a76d360e6cd8aaea`  
		Last Modified: Wed, 14 Mar 2018 09:43:42 GMT  
		Size: 9.6 MB (9590387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e968ce1e3cdd2c20fe45620a389c2b519a9e3c6c597b327617d51767b48b9c`  
		Last Modified: Wed, 14 Mar 2018 09:43:41 GMT  
		Size: 3.1 KB (3150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d209f4f15d1f66213d426d70eaa19589161fd326c3e815825224ee0ee10f122e`  
		Last Modified: Wed, 14 Mar 2018 09:43:41 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd100`

```console
$ docker pull neurodebian@sha256:13618812510e5d8a4efb178f107a4d9c53fe1af9685cfe01630e028eaa43824c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd100` - linux; amd64

```console
$ docker pull neurodebian@sha256:7d31408563bba83b479f65beae312471195b11b4efc9a53c37e7ac94921e14da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57752783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:910d8f0689c99f0cbfcda855a48eb7e3b6cebead05288ee86c3784b670407a1f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:56:10 GMT
ADD file:2219cecc89ed69975239dfc7c181d32ca55b272939b08410f4213d61a0281f82 in / 
# Tue, 13 Mar 2018 21:56:10 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:36:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:36:25 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:36:25 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:18969b622956cb8bc2c2e169be10942a74c07098134954db39e745d704631ec0`  
		Last Modified: Tue, 13 Mar 2018 22:35:27 GMT  
		Size: 48.2 MB (48158970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba3dc58fe975026f98db1c96f256e66358cd6da1c76ba5ea2c8a6f74ec40f5f`  
		Last Modified: Wed, 14 Mar 2018 09:42:26 GMT  
		Size: 9.6 MB (9590416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f488fa29bb231690784e5512d15dc18513482a28af8a4f1369b88d4efd9fe6da`  
		Last Modified: Wed, 14 Mar 2018 09:42:25 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c759c942996312c7d64fa65e700f56784d68f4a1aadbfb0efa82fc813cb8bb89`  
		Last Modified: Wed, 14 Mar 2018 09:42:25 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd100-non-free`

```console
$ docker pull neurodebian@sha256:c1a80bc8c23a78ad6840422bf062bfd36d22ccb8c6f47d5691774181b9c44480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd100-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:229f96d6d87e3d079311f8356c2f47c99831a6e9a85d42694cf77cfaa196fcf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57753091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92a6721ab33e873b9cc841eb46fe7bfb8cd59e5b68894f0764224648cf907576`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:56:10 GMT
ADD file:2219cecc89ed69975239dfc7c181d32ca55b272939b08410f4213d61a0281f82 in / 
# Tue, 13 Mar 2018 21:56:10 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:36:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:36:25 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:36:25 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 14 Mar 2018 09:36:42 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:18969b622956cb8bc2c2e169be10942a74c07098134954db39e745d704631ec0`  
		Last Modified: Tue, 13 Mar 2018 22:35:27 GMT  
		Size: 48.2 MB (48158970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba3dc58fe975026f98db1c96f256e66358cd6da1c76ba5ea2c8a6f74ec40f5f`  
		Last Modified: Wed, 14 Mar 2018 09:42:26 GMT  
		Size: 9.6 MB (9590416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f488fa29bb231690784e5512d15dc18513482a28af8a4f1369b88d4efd9fe6da`  
		Last Modified: Wed, 14 Mar 2018 09:42:25 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c759c942996312c7d64fa65e700f56784d68f4a1aadbfb0efa82fc813cb8bb89`  
		Last Modified: Wed, 14 Mar 2018 09:42:25 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4410fb5a6423ac12eb12db18aef6cecce31c156e14581248922450f5fc4796f6`  
		Last Modified: Wed, 14 Mar 2018 09:43:04 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd14.04`

```console
$ docker pull neurodebian@sha256:8e80723f7e8a39ae8c07149739ebf16d2c59a107222cb7914135817f2e2f9335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd14.04` - linux; amd64

```console
$ docker pull neurodebian@sha256:e1a03dcd5552efd4e206cad16c1f42e950032c9579442a993f852604c2e3be62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.1 MB (73142555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10b87654a945792455b8e3066f2288385b5e0938760dcd7b5bb018418b6a091`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 11:49:36 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:49:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 13 Apr 2018 11:49:42 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian trusty main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel trusty main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb50ca2726c5d723e3ff92b641a9e7aa18bb9f5a665e2c24a96683334eba9a5`  
		Last Modified: Fri, 13 Apr 2018 12:08:24 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff374f4a9b1c44f56db9e731938c269289c3d64395a50e6bea53197996f92f9b`  
		Last Modified: Fri, 13 Apr 2018 12:08:24 GMT  
		Size: 3.2 KB (3153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c5887fd48b1a527cb922254d4bbdfd414f1361047853820ad7f1609bfec081`  
		Last Modified: Fri, 13 Apr 2018 12:08:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd14.04-non-free`

```console
$ docker pull neurodebian@sha256:0e5fb1cfde39c50290dd8b63ede10bb2f652be50da6c281c9a35d84159522b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd14.04-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:9d6a67efd908e93699ee8e811321d3947d7e283d5436d53cff01bb615a077cd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.1 MB (73142811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736289ebbbbc8c648ce8f1be6056cfd3b6c4af993ea570b7285867fc0c95c5aa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 11:49:36 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:49:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 13 Apr 2018 11:49:42 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian trusty main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel trusty main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 13 Apr 2018 11:57:42 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' /etc/apt/sources.list || sed -i -e 's,universe *$,universe multiverse,g' /etc/apt/sources.list
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb50ca2726c5d723e3ff92b641a9e7aa18bb9f5a665e2c24a96683334eba9a5`  
		Last Modified: Fri, 13 Apr 2018 12:08:24 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff374f4a9b1c44f56db9e731938c269289c3d64395a50e6bea53197996f92f9b`  
		Last Modified: Fri, 13 Apr 2018 12:08:24 GMT  
		Size: 3.2 KB (3153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c5887fd48b1a527cb922254d4bbdfd414f1361047853820ad7f1609bfec081`  
		Last Modified: Fri, 13 Apr 2018 12:08:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092c542e2fec3d298e1fb8c67f77dc11638e1c2219cda093dab48c0cfc31daac`  
		Last Modified: Fri, 13 Apr 2018 12:13:45 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd16.04`

```console
$ docker pull neurodebian@sha256:86afd7033f5afc7e014d2402e5f964e124c19ae1fc83cda75db59bf3d13ed4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd16.04` - linux; amd64

```console
$ docker pull neurodebian@sha256:3b746ca63fe979336c7d452da1cfe03319d6c35d73d3cea50e3e6920567b9db4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43029014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad9a29136cc04f866ec799fe91bebf69d242694695e53b6f90d6bd5cb6ba158`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:06:24 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:06:26 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 13 Apr 2018 12:06:27 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian xenial main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel xenial main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42f22478cac521c4e9e81c626a1d27e09a021d89c93d411120a019ba136b198`  
		Last Modified: Fri, 13 Apr 2018 12:25:37 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b8b65ce89bd0661034756394740444291749959f2ceb6d2215d79c8d5adf94`  
		Last Modified: Fri, 13 Apr 2018 12:25:37 GMT  
		Size: 3.2 KB (3151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064de1aa428b8215aadb63f76f6c767a13ed56b3f43ab53bd5aa223ea9a0f918`  
		Last Modified: Fri, 13 Apr 2018 12:25:37 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd16.04-non-free`

```console
$ docker pull neurodebian@sha256:c348fc3fc6331045fc520526f9081447fdbdb629efb8d1958f801b2e14945ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd16.04-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:fcbdc3fd8c6a6c86e88d290315351415fa0d08f5dc879d760d73a5b5eb4a640c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43029273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:447cc856b5c4d2c6f426efeae0815f8e399e2a4e293d4d193043ce4e22b019ad`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:06:24 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:06:26 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 13 Apr 2018 12:06:27 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian xenial main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel xenial main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 13 Apr 2018 12:06:49 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' /etc/apt/sources.list || sed -i -e 's,universe *$,universe multiverse,g' /etc/apt/sources.list
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42f22478cac521c4e9e81c626a1d27e09a021d89c93d411120a019ba136b198`  
		Last Modified: Fri, 13 Apr 2018 12:25:37 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b8b65ce89bd0661034756394740444291749959f2ceb6d2215d79c8d5adf94`  
		Last Modified: Fri, 13 Apr 2018 12:25:37 GMT  
		Size: 3.2 KB (3151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064de1aa428b8215aadb63f76f6c767a13ed56b3f43ab53bd5aa223ea9a0f918`  
		Last Modified: Fri, 13 Apr 2018 12:25:37 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87d2c78b1a10537363a09bcf3b6a287dc997307617745942d6947abf57c2b15`  
		Last Modified: Fri, 13 Apr 2018 12:26:25 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd17.10`

```console
$ docker pull neurodebian@sha256:d7e1d147d762a97df8dceb96586247cfca8047e9b74ff615bdb113db1c89ea80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd17.10` - linux; amd64

```console
$ docker pull neurodebian@sha256:5c74eb1ec06592c9eb044cba1e42f1e00763f5c89d749b202a5452a647240edc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42347649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb49afa408f7b77560e8460c0fcb67cd07e657d73a9463c4154dc32812649e8b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:34:38 GMT
ADD file:468408277a83dbd0949d04a6bd3fe61c1fda31fb15df76257c1f1502c6b2889b in / 
# Thu, 12 Apr 2018 18:34:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:34:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:34:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:34:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:34:41 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:07:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:07:25 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 13 Apr 2018 12:07:25 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian artful main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel artful main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:f56c16792d1e2514d57f86a120f7bff06c8f7ad0f3c26c47f54e8d96f57b1ca7`  
		Last Modified: Thu, 12 Apr 2018 19:14:52 GMT  
		Size: 40.5 MB (40506608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f3fcbcaacdbf8bf99fc9e2cecfae0ca6b637325023b34140d9b328b7cea39a`  
		Last Modified: Thu, 12 Apr 2018 19:14:44 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f1503c00f86eee2f931903a7038268867b9952347e7ae66c8e0bee8a1aff51`  
		Last Modified: Thu, 12 Apr 2018 19:14:41 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ce6675ff396e9b2cffca66df5660189168e4e29a301dbae503425b5bc7095b`  
		Last Modified: Thu, 12 Apr 2018 19:14:41 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29a9bdc981f94e39efbc0aff3f33cffcde04a8fcb08fb1c28d43395451829d6`  
		Last Modified: Thu, 12 Apr 2018 19:14:43 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1352078c74003d2adca3908e6dc6614c8c47f0516f08542f8d3960aeca7b16b5`  
		Last Modified: Fri, 13 Apr 2018 12:27:10 GMT  
		Size: 1.8 MB (1835177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fb56c4c391254ce65a72e576ecc8372d000f2b8024d9b85df2da1f6ca533c6`  
		Last Modified: Fri, 13 Apr 2018 12:27:10 GMT  
		Size: 3.1 KB (3150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e4b1f433db7217fae2bbdedaf78c810dec39297db7999b29e79f8077ae91af`  
		Last Modified: Fri, 13 Apr 2018 12:27:10 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd17.10-non-free`

```console
$ docker pull neurodebian@sha256:489924a0c577ba4b0abacdbc7e7bd954af8927f527147240b5a5b160b044362d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd17.10-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:3c0a23461f85d4a05a46edd6d3011f6fc356ac1e74c28405538ee5db4b6b390e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42347907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a918ba5c11d5ef5f5100a06d52db369cd66e0668cdbd7a17bf2fe59bddf8e040`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:34:38 GMT
ADD file:468408277a83dbd0949d04a6bd3fe61c1fda31fb15df76257c1f1502c6b2889b in / 
# Thu, 12 Apr 2018 18:34:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:34:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:34:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:34:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:34:41 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:07:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:07:25 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 13 Apr 2018 12:07:25 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian artful main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel artful main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 13 Apr 2018 12:07:46 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' /etc/apt/sources.list || sed -i -e 's,universe *$,universe multiverse,g' /etc/apt/sources.list
```

-	Layers:
	-	`sha256:f56c16792d1e2514d57f86a120f7bff06c8f7ad0f3c26c47f54e8d96f57b1ca7`  
		Last Modified: Thu, 12 Apr 2018 19:14:52 GMT  
		Size: 40.5 MB (40506608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f3fcbcaacdbf8bf99fc9e2cecfae0ca6b637325023b34140d9b328b7cea39a`  
		Last Modified: Thu, 12 Apr 2018 19:14:44 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f1503c00f86eee2f931903a7038268867b9952347e7ae66c8e0bee8a1aff51`  
		Last Modified: Thu, 12 Apr 2018 19:14:41 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ce6675ff396e9b2cffca66df5660189168e4e29a301dbae503425b5bc7095b`  
		Last Modified: Thu, 12 Apr 2018 19:14:41 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29a9bdc981f94e39efbc0aff3f33cffcde04a8fcb08fb1c28d43395451829d6`  
		Last Modified: Thu, 12 Apr 2018 19:14:43 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1352078c74003d2adca3908e6dc6614c8c47f0516f08542f8d3960aeca7b16b5`  
		Last Modified: Fri, 13 Apr 2018 12:27:10 GMT  
		Size: 1.8 MB (1835177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fb56c4c391254ce65a72e576ecc8372d000f2b8024d9b85df2da1f6ca533c6`  
		Last Modified: Fri, 13 Apr 2018 12:27:10 GMT  
		Size: 3.1 KB (3150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e4b1f433db7217fae2bbdedaf78c810dec39297db7999b29e79f8077ae91af`  
		Last Modified: Fri, 13 Apr 2018 12:27:10 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de834202463b9c5e9255c568d55ca02a101e736f0e05b9551205d7080b387cb`  
		Last Modified: Fri, 13 Apr 2018 12:30:16 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd70`

```console
$ docker pull neurodebian@sha256:5102c2f52081fc188d00d90035312ef387642a086dbf30c115dafd1171a844ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd70` - linux; amd64

```console
$ docker pull neurodebian@sha256:0a28a6d83a355311a4c4c1c949417635a09e6af7590dbd41e6c42972dddca4d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38115196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303b73ef0910c77d5dc34679118024bf9cffe9a7a95f663311a21409e8376e56`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:31:05 GMT
ADD file:fc9ba15f087e646a9d3b72e742eb1233132a118ecfa998e2497b724f3ff84061 in / 
# Tue, 13 Mar 2018 22:31:06 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:33:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:33:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:33:49 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian wheezy main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel wheezy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:4269eaa217cc08668f088a9719d43c993c4644a73eda4eb55921f031a4311060`  
		Last Modified: Tue, 13 Mar 2018 22:58:14 GMT  
		Size: 38.1 MB (38111490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75021124e30f97b6168aa07856eda5541d48ab59ae713f1d63070a01d961af20`  
		Last Modified: Wed, 14 Mar 2018 09:38:11 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce55d73590b556555dbfb791cb8b97775b0dfd20518d63044f59840952ab31e`  
		Last Modified: Wed, 14 Mar 2018 09:38:11 GMT  
		Size: 3.2 KB (3191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5ad126b060bb11ecc6e3b80b9d42525b34c98636044026570ce28e81fd2eb9`  
		Last Modified: Wed, 14 Mar 2018 09:38:11 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd70-non-free`

```console
$ docker pull neurodebian@sha256:f4ff6615f506bea791b03bc029e89f2ca6f6020dea2a9dbe86c7692457e5fd6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd70-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:f07a7a52c1f35fb4e133032c3ee0a1ffeb3984ef39cefde907adcca1eb4f8f9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38115507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dcdc2e1fc2bb540cee772cde212fbf8ca912d40b469a23fffec97857d5b19c8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:31:05 GMT
ADD file:fc9ba15f087e646a9d3b72e742eb1233132a118ecfa998e2497b724f3ff84061 in / 
# Tue, 13 Mar 2018 22:31:06 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:33:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:33:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:33:49 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian wheezy main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel wheezy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 14 Mar 2018 09:34:06 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:4269eaa217cc08668f088a9719d43c993c4644a73eda4eb55921f031a4311060`  
		Last Modified: Tue, 13 Mar 2018 22:58:14 GMT  
		Size: 38.1 MB (38111490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75021124e30f97b6168aa07856eda5541d48ab59ae713f1d63070a01d961af20`  
		Last Modified: Wed, 14 Mar 2018 09:38:11 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce55d73590b556555dbfb791cb8b97775b0dfd20518d63044f59840952ab31e`  
		Last Modified: Wed, 14 Mar 2018 09:38:11 GMT  
		Size: 3.2 KB (3191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5ad126b060bb11ecc6e3b80b9d42525b34c98636044026570ce28e81fd2eb9`  
		Last Modified: Wed, 14 Mar 2018 09:38:11 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7331996f508c992f9f52a69dcfc4c53e206b3fdb0749668849b8e23371035975`  
		Last Modified: Wed, 14 Mar 2018 09:38:48 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd80`

```console
$ docker pull neurodebian@sha256:ba465c8f4e064260cd25c01b080876e97d67a3245144dce51b5ec35d65b5079a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd80` - linux; amd64

```console
$ docker pull neurodebian@sha256:3e28c37ce03982510fc22ca726b9f2c02dd641f7178d4ea9d89af11ab5f38185
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52612210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6e5aa29b03189b974c185c07f6c76b771cce2aa47b51e3eb66a1ac364c81ab8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:34:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:34:36 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:34:37 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f77eedd7989e649d101516c676de9d24a83116045a86b4668f6823201ffab8`  
		Last Modified: Wed, 14 Mar 2018 09:39:25 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d61df763f2e5a3d94d97c58398356ff99c2d224a693418fefa4b83e1f63f0f`  
		Last Modified: Wed, 14 Mar 2018 09:39:24 GMT  
		Size: 3.2 KB (3155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bbb84765ef7a8090ecb6e1e630d7dfd4cce299cd3126b0fd191bfffb98f0d7`  
		Last Modified: Wed, 14 Mar 2018 09:39:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd80-non-free`

```console
$ docker pull neurodebian@sha256:034973e1059131eac8a6fcef287ce357151d343c0b9e8fbf8b466e218999fac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd80-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:32b174cfb491f551d80786b64168a0b9a2143823ab7b1349460e75f01bab0f9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52612518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e95d90537b3650f5c49067f292ccbd00afbbd402244b65ec755ae723a4ffaa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:34:31 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:34:36 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:34:37 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 14 Mar 2018 09:34:56 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f77eedd7989e649d101516c676de9d24a83116045a86b4668f6823201ffab8`  
		Last Modified: Wed, 14 Mar 2018 09:39:25 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d61df763f2e5a3d94d97c58398356ff99c2d224a693418fefa4b83e1f63f0f`  
		Last Modified: Wed, 14 Mar 2018 09:39:24 GMT  
		Size: 3.2 KB (3155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13bbb84765ef7a8090ecb6e1e630d7dfd4cce299cd3126b0fd191bfffb98f0d7`  
		Last Modified: Wed, 14 Mar 2018 09:39:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051ae630e7066957e6029e9510d69371594fb794c93fd6543cd68d33bc039751`  
		Last Modified: Wed, 14 Mar 2018 09:40:02 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd90`

```console
$ docker pull neurodebian@sha256:21b942e5f4c21c1c977c2749524dae04c3483f0ac41ad5b03df32964bc5ad412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd90` - linux; amd64

```console
$ docker pull neurodebian@sha256:ec2f0dd81a8952860ad8c0d6b5e693d693cd1a38fd3e5911fe1ce6efb465bd4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52059623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b62df4d54ea6a4806ebff2fe3934228c8efcfd3de0df6909037fb78be96ad926`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:35:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:35:39 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:35:40 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce230c9f10728a779527dfa18cac47892e9ebc04287b7ad5134fddcd9c5eea5`  
		Last Modified: Wed, 14 Mar 2018 09:40:40 GMT  
		Size: 6.9 MB (6921150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abf4720f0fa80f453840043e3f581297f283f1ec532a06d7d032042bbf54542`  
		Last Modified: Wed, 14 Mar 2018 09:40:39 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86832fe67170eeaf7fc0c58cbf37049378f87e53ee5aa3aa32628d997cf22c13`  
		Last Modified: Wed, 14 Mar 2018 09:40:39 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd90-non-free`

```console
$ docker pull neurodebian@sha256:322c5a59923b85b6a3d978b6b870e60a3d0a77a1b167317f4f841f1aecdc1396
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd90-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:de5e17963fc91065f5cbb6389d78c668c9602795e1a1f2ac4f0ec46450de982f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52059931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a242a3caf979224afbf40e4c77928273e630adc95cb402fc3017641f00bb1f27`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:35:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:35:39 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:35:40 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 14 Mar 2018 09:35:56 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce230c9f10728a779527dfa18cac47892e9ebc04287b7ad5134fddcd9c5eea5`  
		Last Modified: Wed, 14 Mar 2018 09:40:40 GMT  
		Size: 6.9 MB (6921150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abf4720f0fa80f453840043e3f581297f283f1ec532a06d7d032042bbf54542`  
		Last Modified: Wed, 14 Mar 2018 09:40:39 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86832fe67170eeaf7fc0c58cbf37049378f87e53ee5aa3aa32628d997cf22c13`  
		Last Modified: Wed, 14 Mar 2018 09:40:39 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d5a36a198b304130bd32274548a7a9cdbe33a5656860fd71fdfa461174143c`  
		Last Modified: Wed, 14 Mar 2018 09:41:33 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd-non-free`

```console
$ docker pull neurodebian@sha256:7f596ba775d021993af59b648c564e13384a4f0e2f9a968a0e7ac9f096029a3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:5ab23a87bd868341bb5936925c73e0f8eead5d6a7725683dd92396afa079ffa0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57655543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca7a414fb9a79a8b4df42ae2404f0f56b6f933ccbf4ab819c8f1266f15d52d8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:37:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:37:28 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:37:29 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 14 Mar 2018 09:37:45 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665aea63a1f82c44ae1945fd455ed17626aaf492c9b52547a76d360e6cd8aaea`  
		Last Modified: Wed, 14 Mar 2018 09:43:42 GMT  
		Size: 9.6 MB (9590387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e968ce1e3cdd2c20fe45620a389c2b519a9e3c6c597b327617d51767b48b9c`  
		Last Modified: Wed, 14 Mar 2018 09:43:41 GMT  
		Size: 3.1 KB (3150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d209f4f15d1f66213d426d70eaa19589161fd326c3e815825224ee0ee10f122e`  
		Last Modified: Wed, 14 Mar 2018 09:43:41 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccaadf5075de10dd3b01049c79082509aa0259283ebe964817d8b2ee0056c8d2`  
		Last Modified: Wed, 14 Mar 2018 09:44:18 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:non-free`

```console
$ docker pull neurodebian@sha256:322c5a59923b85b6a3d978b6b870e60a3d0a77a1b167317f4f841f1aecdc1396
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:de5e17963fc91065f5cbb6389d78c668c9602795e1a1f2ac4f0ec46450de982f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52059931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a242a3caf979224afbf40e4c77928273e630adc95cb402fc3017641f00bb1f27`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:35:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:35:39 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:35:40 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 14 Mar 2018 09:35:56 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce230c9f10728a779527dfa18cac47892e9ebc04287b7ad5134fddcd9c5eea5`  
		Last Modified: Wed, 14 Mar 2018 09:40:40 GMT  
		Size: 6.9 MB (6921150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abf4720f0fa80f453840043e3f581297f283f1ec532a06d7d032042bbf54542`  
		Last Modified: Wed, 14 Mar 2018 09:40:39 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86832fe67170eeaf7fc0c58cbf37049378f87e53ee5aa3aa32628d997cf22c13`  
		Last Modified: Wed, 14 Mar 2018 09:40:39 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d5a36a198b304130bd32274548a7a9cdbe33a5656860fd71fdfa461174143c`  
		Last Modified: Wed, 14 Mar 2018 09:41:33 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:1d6453e0f0b9c4bd317ad575143106ff3bab5a757fe8b705d72b25c70a608989
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:sid` - linux; amd64

```console
$ docker pull neurodebian@sha256:d37061b91172806cc6c16a9dc333449d1c7e14171fe4d83ceb40633794ff5451
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57655265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beafd0617c0f985445da273ce83f63c1649adb63308609dca1d1a2c485a47530`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:37:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:37:28 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:37:29 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665aea63a1f82c44ae1945fd455ed17626aaf492c9b52547a76d360e6cd8aaea`  
		Last Modified: Wed, 14 Mar 2018 09:43:42 GMT  
		Size: 9.6 MB (9590387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e968ce1e3cdd2c20fe45620a389c2b519a9e3c6c597b327617d51767b48b9c`  
		Last Modified: Wed, 14 Mar 2018 09:43:41 GMT  
		Size: 3.1 KB (3150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d209f4f15d1f66213d426d70eaa19589161fd326c3e815825224ee0ee10f122e`  
		Last Modified: Wed, 14 Mar 2018 09:43:41 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:7f596ba775d021993af59b648c564e13384a4f0e2f9a968a0e7ac9f096029a3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:sid-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:5ab23a87bd868341bb5936925c73e0f8eead5d6a7725683dd92396afa079ffa0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57655543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca7a414fb9a79a8b4df42ae2404f0f56b6f933ccbf4ab819c8f1266f15d52d8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:37:11 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:37:28 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:37:29 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 14 Mar 2018 09:37:45 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665aea63a1f82c44ae1945fd455ed17626aaf492c9b52547a76d360e6cd8aaea`  
		Last Modified: Wed, 14 Mar 2018 09:43:42 GMT  
		Size: 9.6 MB (9590387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e968ce1e3cdd2c20fe45620a389c2b519a9e3c6c597b327617d51767b48b9c`  
		Last Modified: Wed, 14 Mar 2018 09:43:41 GMT  
		Size: 3.1 KB (3150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d209f4f15d1f66213d426d70eaa19589161fd326c3e815825224ee0ee10f122e`  
		Last Modified: Wed, 14 Mar 2018 09:43:41 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccaadf5075de10dd3b01049c79082509aa0259283ebe964817d8b2ee0056c8d2`  
		Last Modified: Wed, 14 Mar 2018 09:44:18 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:stretch`

```console
$ docker pull neurodebian@sha256:21b942e5f4c21c1c977c2749524dae04c3483f0ac41ad5b03df32964bc5ad412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:stretch` - linux; amd64

```console
$ docker pull neurodebian@sha256:ec2f0dd81a8952860ad8c0d6b5e693d693cd1a38fd3e5911fe1ce6efb465bd4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52059623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b62df4d54ea6a4806ebff2fe3934228c8efcfd3de0df6909037fb78be96ad926`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:35:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:35:39 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:35:40 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce230c9f10728a779527dfa18cac47892e9ebc04287b7ad5134fddcd9c5eea5`  
		Last Modified: Wed, 14 Mar 2018 09:40:40 GMT  
		Size: 6.9 MB (6921150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abf4720f0fa80f453840043e3f581297f283f1ec532a06d7d032042bbf54542`  
		Last Modified: Wed, 14 Mar 2018 09:40:39 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86832fe67170eeaf7fc0c58cbf37049378f87e53ee5aa3aa32628d997cf22c13`  
		Last Modified: Wed, 14 Mar 2018 09:40:39 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:stretch-non-free`

```console
$ docker pull neurodebian@sha256:322c5a59923b85b6a3d978b6b870e60a3d0a77a1b167317f4f841f1aecdc1396
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:stretch-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:de5e17963fc91065f5cbb6389d78c668c9602795e1a1f2ac4f0ec46450de982f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52059931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a242a3caf979224afbf40e4c77928273e630adc95cb402fc3017641f00bb1f27`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:35:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:35:39 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:35:40 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 14 Mar 2018 09:35:56 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce230c9f10728a779527dfa18cac47892e9ebc04287b7ad5134fddcd9c5eea5`  
		Last Modified: Wed, 14 Mar 2018 09:40:40 GMT  
		Size: 6.9 MB (6921150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abf4720f0fa80f453840043e3f581297f283f1ec532a06d7d032042bbf54542`  
		Last Modified: Wed, 14 Mar 2018 09:40:39 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86832fe67170eeaf7fc0c58cbf37049378f87e53ee5aa3aa32628d997cf22c13`  
		Last Modified: Wed, 14 Mar 2018 09:40:39 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d5a36a198b304130bd32274548a7a9cdbe33a5656860fd71fdfa461174143c`  
		Last Modified: Wed, 14 Mar 2018 09:41:33 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:trusty`

```console
$ docker pull neurodebian@sha256:8e80723f7e8a39ae8c07149739ebf16d2c59a107222cb7914135817f2e2f9335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:trusty` - linux; amd64

```console
$ docker pull neurodebian@sha256:e1a03dcd5552efd4e206cad16c1f42e950032c9579442a993f852604c2e3be62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.1 MB (73142555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10b87654a945792455b8e3066f2288385b5e0938760dcd7b5bb018418b6a091`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 11:49:36 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:49:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 13 Apr 2018 11:49:42 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian trusty main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel trusty main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb50ca2726c5d723e3ff92b641a9e7aa18bb9f5a665e2c24a96683334eba9a5`  
		Last Modified: Fri, 13 Apr 2018 12:08:24 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff374f4a9b1c44f56db9e731938c269289c3d64395a50e6bea53197996f92f9b`  
		Last Modified: Fri, 13 Apr 2018 12:08:24 GMT  
		Size: 3.2 KB (3153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c5887fd48b1a527cb922254d4bbdfd414f1361047853820ad7f1609bfec081`  
		Last Modified: Fri, 13 Apr 2018 12:08:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:trusty-non-free`

```console
$ docker pull neurodebian@sha256:0e5fb1cfde39c50290dd8b63ede10bb2f652be50da6c281c9a35d84159522b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:trusty-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:9d6a67efd908e93699ee8e811321d3947d7e283d5436d53cff01bb615a077cd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.1 MB (73142811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736289ebbbbc8c648ce8f1be6056cfd3b6c4af993ea570b7285867fc0c95c5aa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 11:49:36 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:49:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 13 Apr 2018 11:49:42 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian trusty main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel trusty main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 13 Apr 2018 11:57:42 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' /etc/apt/sources.list || sed -i -e 's,universe *$,universe multiverse,g' /etc/apt/sources.list
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb50ca2726c5d723e3ff92b641a9e7aa18bb9f5a665e2c24a96683334eba9a5`  
		Last Modified: Fri, 13 Apr 2018 12:08:24 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff374f4a9b1c44f56db9e731938c269289c3d64395a50e6bea53197996f92f9b`  
		Last Modified: Fri, 13 Apr 2018 12:08:24 GMT  
		Size: 3.2 KB (3153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c5887fd48b1a527cb922254d4bbdfd414f1361047853820ad7f1609bfec081`  
		Last Modified: Fri, 13 Apr 2018 12:08:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092c542e2fec3d298e1fb8c67f77dc11638e1c2219cda093dab48c0cfc31daac`  
		Last Modified: Fri, 13 Apr 2018 12:13:45 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:wheezy`

```console
$ docker pull neurodebian@sha256:5102c2f52081fc188d00d90035312ef387642a086dbf30c115dafd1171a844ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:wheezy` - linux; amd64

```console
$ docker pull neurodebian@sha256:0a28a6d83a355311a4c4c1c949417635a09e6af7590dbd41e6c42972dddca4d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38115196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:303b73ef0910c77d5dc34679118024bf9cffe9a7a95f663311a21409e8376e56`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:31:05 GMT
ADD file:fc9ba15f087e646a9d3b72e742eb1233132a118ecfa998e2497b724f3ff84061 in / 
# Tue, 13 Mar 2018 22:31:06 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:33:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:33:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:33:49 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian wheezy main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel wheezy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:4269eaa217cc08668f088a9719d43c993c4644a73eda4eb55921f031a4311060`  
		Last Modified: Tue, 13 Mar 2018 22:58:14 GMT  
		Size: 38.1 MB (38111490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75021124e30f97b6168aa07856eda5541d48ab59ae713f1d63070a01d961af20`  
		Last Modified: Wed, 14 Mar 2018 09:38:11 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce55d73590b556555dbfb791cb8b97775b0dfd20518d63044f59840952ab31e`  
		Last Modified: Wed, 14 Mar 2018 09:38:11 GMT  
		Size: 3.2 KB (3191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5ad126b060bb11ecc6e3b80b9d42525b34c98636044026570ce28e81fd2eb9`  
		Last Modified: Wed, 14 Mar 2018 09:38:11 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:wheezy-non-free`

```console
$ docker pull neurodebian@sha256:f4ff6615f506bea791b03bc029e89f2ca6f6020dea2a9dbe86c7692457e5fd6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:wheezy-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:f07a7a52c1f35fb4e133032c3ee0a1ffeb3984ef39cefde907adcca1eb4f8f9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38115507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dcdc2e1fc2bb540cee772cde212fbf8ca912d40b469a23fffec97857d5b19c8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:31:05 GMT
ADD file:fc9ba15f087e646a9d3b72e742eb1233132a118ecfa998e2497b724f3ff84061 in / 
# Tue, 13 Mar 2018 22:31:06 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:33:46 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:33:48 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:33:49 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian wheezy main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel wheezy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 14 Mar 2018 09:34:06 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:4269eaa217cc08668f088a9719d43c993c4644a73eda4eb55921f031a4311060`  
		Last Modified: Tue, 13 Mar 2018 22:58:14 GMT  
		Size: 38.1 MB (38111490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75021124e30f97b6168aa07856eda5541d48ab59ae713f1d63070a01d961af20`  
		Last Modified: Wed, 14 Mar 2018 09:38:11 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce55d73590b556555dbfb791cb8b97775b0dfd20518d63044f59840952ab31e`  
		Last Modified: Wed, 14 Mar 2018 09:38:11 GMT  
		Size: 3.2 KB (3191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5ad126b060bb11ecc6e3b80b9d42525b34c98636044026570ce28e81fd2eb9`  
		Last Modified: Wed, 14 Mar 2018 09:38:11 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7331996f508c992f9f52a69dcfc4c53e206b3fdb0749668849b8e23371035975`  
		Last Modified: Wed, 14 Mar 2018 09:38:48 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:xenial`

```console
$ docker pull neurodebian@sha256:86afd7033f5afc7e014d2402e5f964e124c19ae1fc83cda75db59bf3d13ed4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:xenial` - linux; amd64

```console
$ docker pull neurodebian@sha256:3b746ca63fe979336c7d452da1cfe03319d6c35d73d3cea50e3e6920567b9db4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43029014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad9a29136cc04f866ec799fe91bebf69d242694695e53b6f90d6bd5cb6ba158`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:06:24 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:06:26 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 13 Apr 2018 12:06:27 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian xenial main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel xenial main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42f22478cac521c4e9e81c626a1d27e09a021d89c93d411120a019ba136b198`  
		Last Modified: Fri, 13 Apr 2018 12:25:37 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b8b65ce89bd0661034756394740444291749959f2ceb6d2215d79c8d5adf94`  
		Last Modified: Fri, 13 Apr 2018 12:25:37 GMT  
		Size: 3.2 KB (3151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064de1aa428b8215aadb63f76f6c767a13ed56b3f43ab53bd5aa223ea9a0f918`  
		Last Modified: Fri, 13 Apr 2018 12:25:37 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:xenial-non-free`

```console
$ docker pull neurodebian@sha256:c348fc3fc6331045fc520526f9081447fdbdb629efb8d1958f801b2e14945ea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:xenial-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:fcbdc3fd8c6a6c86e88d290315351415fa0d08f5dc879d760d73a5b5eb4a640c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.0 MB (43029273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:447cc856b5c4d2c6f426efeae0815f8e399e2a4e293d4d193043ce4e22b019ad`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:06:24 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:06:26 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 13 Apr 2018 12:06:27 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian xenial main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel xenial main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 13 Apr 2018 12:06:49 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' /etc/apt/sources.list || sed -i -e 's,universe *$,universe multiverse,g' /etc/apt/sources.list
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42f22478cac521c4e9e81c626a1d27e09a021d89c93d411120a019ba136b198`  
		Last Modified: Fri, 13 Apr 2018 12:25:37 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b8b65ce89bd0661034756394740444291749959f2ceb6d2215d79c8d5adf94`  
		Last Modified: Fri, 13 Apr 2018 12:25:37 GMT  
		Size: 3.2 KB (3151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064de1aa428b8215aadb63f76f6c767a13ed56b3f43ab53bd5aa223ea9a0f918`  
		Last Modified: Fri, 13 Apr 2018 12:25:37 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87d2c78b1a10537363a09bcf3b6a287dc997307617745942d6947abf57c2b15`  
		Last Modified: Fri, 13 Apr 2018 12:26:25 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
