## `perl:5-slim-threaded`

```console
$ docker pull perl@sha256:5a7605b3a41666dd9b6c983495089e87fc97585b2d98e39bec9bcf2d505f424c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5-slim-threaded` - linux; amd64

```console
$ docker pull perl@sha256:c19a35614a0d4c1de9f4086c86c4a4ce5d7cba4e74c91978a5bfd5e2195510ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (36999544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a58840dc82290e0618114cad678dfd290981629fdf3206143b02a3e23a785e78`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:21:39 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 06 Feb 2019 09:21:39 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 06 Feb 2019 09:21:40 GMT
WORKDIR /usr/src/perl
# Wed, 06 Feb 2019 09:53:44 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 06 Feb 2019 09:53:44 GMT
WORKDIR /root
# Wed, 06 Feb 2019 09:53:44 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de837d1fb4cab3b43ea3df2ce6faf703f985f1a62b850adaf4c108afb52a260`  
		Last Modified: Wed, 06 Feb 2019 10:59:39 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f55cedaa34abf2c8083affb429e0c35ee2ac936e622a3fc988c286e6a656eb2`  
		Last Modified: Wed, 06 Feb 2019 11:00:00 GMT  
		Size: 14.5 MB (14499079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:75ed2fd22ecf0b13668e49c9ab2b6ddd2b6670da697d19b692057246270d236e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32894641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:665ee828aae1f750cf22e58c5853c8e85abc683aa5fa6948f0148406d75ee9c8`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:24:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:24:11 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:24:11 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 13:32:15 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 13:32:16 GMT
WORKDIR /root
# Tue, 29 Jan 2019 13:32:16 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47665426187e1d8a04089115f194f2a30e046e39dd17d918c6c2974ba97ea9f5`  
		Last Modified: Wed, 23 Jan 2019 16:59:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d48731c7eb67d4ebae532724220ad715a5ee46d6c840c6f5b87e7ce8bb8591b`  
		Last Modified: Tue, 29 Jan 2019 14:34:11 GMT  
		Size: 13.6 MB (13604152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:f0d40ad777c03db6c30d3df126feaff9115336cf90f51d4b9711024c1302e245
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34654953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54c17d175824a519d6c1b04cbb4129fe1fbbc3f7187b404c88080faa7def7d38`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 05:15:35 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Fri, 25 Jan 2019 05:15:35 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Fri, 25 Jan 2019 05:15:36 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 10:44:37 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 10:44:38 GMT
WORKDIR /root
# Tue, 29 Jan 2019 10:44:38 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d714406f0b89753baf918c1505939a2e00f6fbb88451b592959c64145e7d7cf`  
		Last Modified: Fri, 25 Jan 2019 06:45:25 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4227c71ec0b8adfbb4a1953a2349024ae87e3e2740100d2edf667f11425a920a`  
		Last Modified: Tue, 29 Jan 2019 12:21:55 GMT  
		Size: 14.3 MB (14304594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim-threaded` - linux; 386

```console
$ docker pull perl@sha256:1f137f427ae12a40d62cada5e9cfac9aca005c4644d3ea89c3e5573dcd6653e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37168813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:108c47e24ce9403244ee81f69c25fd14dac5d633b8ecf1895f56e5508b8200e3`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:53:00 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 15:53:00 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 15:53:00 GMT
WORKDIR /usr/src/perl
# Tue, 29 Jan 2019 12:21:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 29 Jan 2019 12:21:35 GMT
WORKDIR /root
# Tue, 29 Jan 2019 12:21:35 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc03fca244ff12393c4e5e269484d168e0e5f0a29d5a7f9983f283f3dc7b178`  
		Last Modified: Wed, 23 Jan 2019 17:22:39 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3f3bb0aaee46e4f44707124a399ad4cf05e9b21f5eb0e9c16e8754ef1d88c7`  
		Last Modified: Tue, 29 Jan 2019 13:24:20 GMT  
		Size: 14.0 MB (14021519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:d2c877fd20f2e06f9774c8a9eba487bb19eaf435bf381eb37227628de2d4ad4d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37131240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3016b94fb66057c986b9e9a95fcbed14269c2acee9a9fda15e0ea84a90c6d91e`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 16:40:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 06 Feb 2019 16:40:11 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 06 Feb 2019 16:40:11 GMT
WORKDIR /usr/src/perl
# Wed, 06 Feb 2019 16:58:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 06 Feb 2019 16:59:00 GMT
WORKDIR /root
# Wed, 06 Feb 2019 16:59:01 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0005e7643fa32ac503baaec0e53479be0ce464504b82a22cd9e5dca0e2df0427`  
		Last Modified: Wed, 06 Feb 2019 17:50:30 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e758e50bb2a2a74c08b1fca5f48352ac0f5d53a13c924327ebabf8824e8e762`  
		Last Modified: Wed, 06 Feb 2019 17:51:46 GMT  
		Size: 14.4 MB (14375646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim-threaded` - linux; s390x

```console
$ docker pull perl@sha256:7b286fa155e67bdd9434fa0313227bfbed93a0aa2fa04f6bbc9effb15f270605
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37263057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b0d501207081b692842ce07582f27b8bfb233b6105012f01faf14bb0b37ff01`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:40:11 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 06 Feb 2019 15:40:12 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 06 Feb 2019 15:40:12 GMT
WORKDIR /usr/src/perl
# Wed, 06 Feb 2019 15:55:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 06 Feb 2019 15:55:21 GMT
WORKDIR /root
# Wed, 06 Feb 2019 15:55:22 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47b74480d9a498af184e1e5f2ef653993ba57e0ec3eaaf4c0565ef608b8efcb`  
		Last Modified: Wed, 06 Feb 2019 16:37:39 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b78837549dbe4daecf77cdbbd6b741f53bf37bfbd440fcffc5395cbeb3f3581`  
		Last Modified: Wed, 06 Feb 2019 16:38:03 GMT  
		Size: 14.9 MB (14909543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
