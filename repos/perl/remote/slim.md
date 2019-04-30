## `perl:slim`

```console
$ docker pull perl@sha256:d6c15a6b8b4175e4c4b39ff954996871506ecb531a830daf75be6065edecaef8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:slim` - linux; amd64

```console
$ docker pull perl@sha256:0f790c220ded353bec54e05b6a111e12951a2c33b0a2b3606a4d530582555148
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36945834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:209cd45dc30767deb6c7401540ca0e770dabc3ec01a2ea74104e05304b9d10e2`
-	Default Command: `["perl5.28.2","-de0"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 01:22:55 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 27 Mar 2019 01:22:55 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 27 Mar 2019 01:22:56 GMT
WORKDIR /usr/src/perl
# Mon, 29 Apr 2019 18:36:17 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.2.tar.xz -o perl-5.28.2.tar.xz     && echo '0b0189bfa4b2da20e899b4bdd746ac402e8f746a58e4fcf5516484157f2aab07 *perl-5.28.2.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.2.tar.xz -C /usr/src/perl     && rm perl-5.28.2.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Mon, 29 Apr 2019 18:36:18 GMT
WORKDIR /root
# Mon, 29 Apr 2019 18:36:18 GMT
CMD ["perl5.28.2" "-de0"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de047258e000c29d7c958e495092b7032eabbfc500b8abcb0e2fa91d1b52414`  
		Last Modified: Wed, 27 Mar 2019 03:18:54 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363fd891b9e747cadc985577454843d16e185236f1269360e8a28c78e6074ef8`  
		Last Modified: Mon, 29 Apr 2019 19:54:05 GMT  
		Size: 14.4 MB (14449610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim` - linux; arm variant v7

```console
$ docker pull perl@sha256:df12d22b6db2975a82adf9ac6984f1bc95249b8caa52f050f5b684ea9b908493
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32859899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2f68b5800dc48c18bbea6824a99d114d7ab8b7796f3a21bf4058c669d4322a8`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:39:03 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 27 Mar 2019 12:39:05 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 27 Mar 2019 12:39:06 GMT
WORKDIR /usr/src/perl
# Wed, 27 Mar 2019 12:48:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 27 Mar 2019 12:48:18 GMT
WORKDIR /root
# Wed, 27 Mar 2019 12:48:19 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66af3e2a464ccf5ae035577cbd7c3ccfe0916ff3b39a98fde9a2692c1ba245`  
		Last Modified: Wed, 27 Mar 2019 13:39:52 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c8b184a54ccb96916caa9aba9c02e6ace984f9ac8e3bfa9eb690f142b89f5f`  
		Last Modified: Wed, 27 Mar 2019 13:39:59 GMT  
		Size: 13.6 MB (13577256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:d37fe5dfe70059b565b4f02c506007b303da0cadb4162dffbc8ee9d9b3000a2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34617991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad7ccc50870c00a9940fc709bd316d28dd5dfed34ca33c1166a7ebe27c8fbabb`
-	Default Command: `["perl5.28.2","-de0"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:16:44 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 27 Mar 2019 10:16:44 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 27 Mar 2019 10:16:45 GMT
WORKDIR /usr/src/perl
# Tue, 30 Apr 2019 09:38:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.2.tar.xz -o perl-5.28.2.tar.xz     && echo '0b0189bfa4b2da20e899b4bdd746ac402e8f746a58e4fcf5516484157f2aab07 *perl-5.28.2.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.2.tar.xz -C /usr/src/perl     && rm perl-5.28.2.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 30 Apr 2019 09:38:20 GMT
WORKDIR /root
# Tue, 30 Apr 2019 09:38:21 GMT
CMD ["perl5.28.2" "-de0"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa300ff6769fe34bcad586d67aa2eb1c8010de749b206bbfcbc26c0f0d51840e`  
		Last Modified: Wed, 27 Mar 2019 12:52:05 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b8f4a1a84f753db78070b1f4909ff050f5bd438f5a12f8880fdeafe37f4383`  
		Last Modified: Tue, 30 Apr 2019 11:49:47 GMT  
		Size: 14.3 MB (14277634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim` - linux; 386

```console
$ docker pull perl@sha256:da8789fbba6221c3a17b74d0d65ec004677f0d7821b466e6d2b673507e3dfd14
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37060832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c7d641e7d798c409d011ea39a7a8b6f822b21bbe7b61cac12a4760c45da231f`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 14:22:17 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 27 Mar 2019 14:22:17 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 27 Mar 2019 14:22:18 GMT
WORKDIR /usr/src/perl
# Wed, 27 Mar 2019 14:30:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 27 Mar 2019 14:30:08 GMT
WORKDIR /root
# Wed, 27 Mar 2019 14:30:09 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c1e4820cc912dcca8b922ac42c43d1f8284819fb8a2d32332499631a0409a8`  
		Last Modified: Wed, 27 Mar 2019 15:54:57 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846ced87050adff9d8af59d253714082b97d8d0c3cd6571ad5779b380d8f327d`  
		Last Modified: Wed, 27 Mar 2019 15:55:01 GMT  
		Size: 13.9 MB (13934911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim` - linux; ppc64le

```console
$ docker pull perl@sha256:88f1999f9c66486e8ee79b0298781f5adf4a6bb295649de2e23463c095b8e3fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37067203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd92c6e1a2e69db342002d3bf29685efa35f2f95a6d11b9f0d046c2fef0e450`
-	Default Command: `["perl5.28.2","-de0"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:37:22 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 27 Mar 2019 13:37:23 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 27 Mar 2019 13:37:25 GMT
WORKDIR /usr/src/perl
# Tue, 30 Apr 2019 09:10:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.2.tar.xz -o perl-5.28.2.tar.xz     && echo '0b0189bfa4b2da20e899b4bdd746ac402e8f746a58e4fcf5516484157f2aab07 *perl-5.28.2.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.2.tar.xz -C /usr/src/perl     && rm perl-5.28.2.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 30 Apr 2019 09:10:08 GMT
WORKDIR /root
# Tue, 30 Apr 2019 09:10:11 GMT
CMD ["perl5.28.2" "-de0"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce014afe84c326eb89f8481413ea3fbb95f71aa659bdd39df500b8988aa8c0c`  
		Last Modified: Wed, 27 Mar 2019 15:17:06 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b813e722797dbe16ba126f2ee36f8ec5f448d3a2731c07074e317c31b0ece4c`  
		Last Modified: Tue, 30 Apr 2019 10:44:15 GMT  
		Size: 14.3 MB (14315616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim` - linux; s390x

```console
$ docker pull perl@sha256:686c2619ed1adb901b042a83fddd625e874555b58ad49f7637bd6121b3a297fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37237220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba03a967476955b1f747e9ffc3e4f724ad63feb3d1907ba8d2e0d9789681122`
-	Default Command: `["perl5.28.1","-de0"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:57:29 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 27 Mar 2019 13:57:31 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 27 Mar 2019 13:57:33 GMT
WORKDIR /usr/src/perl
# Wed, 27 Mar 2019 14:05:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.1.tar.xz -o perl-5.28.1.tar.xz     && echo 'fea7162d4cca940a387f0587b93f6737d884bf74d8a9d7cfd978bc12cd0b202d *perl-5.28.1.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.1.tar.xz -C /usr/src/perl     && rm perl-5.28.1.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 27 Mar 2019 14:05:42 GMT
WORKDIR /root
# Wed, 27 Mar 2019 14:05:42 GMT
CMD ["perl5.28.1" "-de0"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c859466d48b4033e878b3cceaaeef2ed711e450978dd62e3e343beb5ceb4d0e4`  
		Last Modified: Wed, 27 Mar 2019 15:17:45 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca9607cca38b81ef7fefafa118418ce71bf7fb7cf5818c0df8fec7bf2d9d67a`  
		Last Modified: Wed, 27 Mar 2019 15:17:49 GMT  
		Size: 14.9 MB (14891758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
