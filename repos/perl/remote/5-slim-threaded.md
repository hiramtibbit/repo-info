## `perl:5-slim-threaded`

```console
$ docker pull perl@sha256:219c0842604d851dfba9f1841d678c764d2346014a6f8d3738f02eabb7875c93
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
$ docker pull perl@sha256:1128d978b7e1e9a2eaca2d380cbb3000f1874be5521d89013606a7ea83ff9dd8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34654896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37dc15d5a5c4a970c06720e6ce074842d59f5ab4e7b11c3106c93c8faabe9bdf`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:21:32 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 07 Feb 2019 01:21:33 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Thu, 07 Feb 2019 01:21:35 GMT
WORKDIR /usr/src/perl
# Thu, 07 Feb 2019 02:02:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Thu, 07 Feb 2019 02:02:58 GMT
WORKDIR /root
# Thu, 07 Feb 2019 02:02:59 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7519d3f2dac60ae2881d8b57a31abdc145696c261108343a4b0011954bb57f5`  
		Last Modified: Thu, 07 Feb 2019 03:58:18 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74496121e61d0e6f426d3ba5b5e750d798fa0b0e79cc812873ff76ddb8626d56`  
		Last Modified: Thu, 07 Feb 2019 03:59:10 GMT  
		Size: 14.3 MB (14304558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim-threaded` - linux; 386

```console
$ docker pull perl@sha256:33b50aaf710d75fed822d545773409c8ad10adc2c703863709061cd9e62cffd1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37168758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a43c2930f4770ea3f6821a2e8514414086161f4a36aaca2b5508d66340775d38`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:23:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Thu, 07 Feb 2019 02:23:21 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Thu, 07 Feb 2019 02:23:21 GMT
WORKDIR /usr/src/perl
# Thu, 07 Feb 2019 02:48:37 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Thu, 07 Feb 2019 02:48:37 GMT
WORKDIR /root
# Thu, 07 Feb 2019 02:48:37 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3f33f096a52741ab1cbe3f4ab655524b7c87bf992e1de9bc575e62e9378df3`  
		Last Modified: Thu, 07 Feb 2019 03:51:15 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfb2da289dadbbe7a98832d2f35f18f54bb989c6cddb72dc8ee13bdd06e6c10`  
		Last Modified: Thu, 07 Feb 2019 03:51:40 GMT  
		Size: 14.0 MB (14021607 bytes)  
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
