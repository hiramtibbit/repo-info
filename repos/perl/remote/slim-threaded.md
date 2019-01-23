## `perl:slim-threaded`

```console
$ docker pull perl@sha256:75898a98d734fe90ea2b051e1b93094f67962cfe29973c25cfad5ad3fbeef3e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:slim-threaded` - linux; amd64

```console
$ docker pull perl@sha256:0acdd42801bcb737c055e55a2484a004e82cb01c846ba1de4c1399f8e180baa2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (37025365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04eb69eddf51942d83faf4697a709c08c41bd54f2c604b117a1fd35cdf542220`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:40:02 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 22 Jan 2019 23:40:02 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Tue, 22 Jan 2019 23:40:02 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 00:13:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 00:13:21 GMT
WORKDIR /root
# Wed, 23 Jan 2019 00:13:22 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2d3def7de0c7de15fbc3fc357024cfb8a4c18f63b6737e65d8d5fcea96809c`  
		Last Modified: Wed, 23 Jan 2019 01:28:27 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0292703a55c04b0b2546d7ad8ffc04132360e267db10c2762a362bbbbb5de5c`  
		Last Modified: Wed, 23 Jan 2019 01:28:53 GMT  
		Size: 14.5 MB (14524480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:f128d2ef8e1e95d902a03ad2d2538b283fcf03a960799859bd4f7fcd26ab3a6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32899066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9131cdf3b1e4c43cde26f18dcffb26b3edcadb891ee8b26347cebdfcf7ea95b`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:54:19 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Sat, 29 Dec 2018 14:54:20 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Sat, 29 Dec 2018 14:54:21 GMT
WORKDIR /usr/src/perl
# Sat, 29 Dec 2018 15:20:44 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Sat, 29 Dec 2018 15:20:45 GMT
WORKDIR /root
# Sat, 29 Dec 2018 15:20:45 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32352ca89e7f18c7c692dc0048636f0784c06467af55322dbf1ac9c5f657122a`  
		Last Modified: Sat, 29 Dec 2018 16:35:55 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1713f1f5e761a3d6af1d787f77a9a595163b4af162ad487f51c6a0fe1ff59c4`  
		Last Modified: Sat, 29 Dec 2018 16:36:30 GMT  
		Size: 13.6 MB (13621106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:ddd093ec1713ccccfe4edd9167b542ada6d7940f0a052b583ea8c3efdbec770e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34663824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:498393a91da1734fe1e55eadce550efab54ebf0f401b1dab23f1a57cb8764fa8`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 20:21:35 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Sat, 29 Dec 2018 20:21:36 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Sat, 29 Dec 2018 20:21:36 GMT
WORKDIR /usr/src/perl
# Sat, 29 Dec 2018 21:06:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Sat, 29 Dec 2018 21:06:14 GMT
WORKDIR /root
# Sat, 29 Dec 2018 21:06:15 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcbae82e3213464e90aa465d93323b62ed40d056647142c7b3fe94706403eb7`  
		Last Modified: Sat, 29 Dec 2018 23:02:55 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6af300a65ceeefcb1847aa10af0e8f5a97cd8c49bb19e5a0c2a197c4180fff`  
		Last Modified: Sat, 29 Dec 2018 23:03:56 GMT  
		Size: 14.3 MB (14326131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim-threaded` - linux; 386

```console
$ docker pull perl@sha256:ed0aba7761482456c2892d5978472f91889845a230af60f8b7377d29eb22fa01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37171932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883b03935d7e4fb47f5370a93fa24cc820a337120691919477ee56ef090dc084`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 19:20:21 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Sat, 29 Dec 2018 19:20:21 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Sat, 29 Dec 2018 19:20:21 GMT
WORKDIR /usr/src/perl
# Sat, 29 Dec 2018 19:45:17 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Sat, 29 Dec 2018 19:45:17 GMT
WORKDIR /root
# Sat, 29 Dec 2018 19:45:17 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab49b30426fd0a7b40c22cd44ceea9f6cd5a3abe457a7e80c76491d27be6960`  
		Last Modified: Sat, 29 Dec 2018 20:47:30 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8629df2771148207a25537267350470aef8f81a1f9e58fca96481a1bdf95b52`  
		Last Modified: Sat, 29 Dec 2018 20:47:54 GMT  
		Size: 14.0 MB (14038598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:e28c4110f9205058a43b01b75c040f8dcdbb574ffe038313ece2580967006d4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37138888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbe99d90a0bdf73e91c71ced7b6bec84a72df8e82af8b5d689ab0e5492f79e0e`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:46:16 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Sat, 29 Dec 2018 12:46:19 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Sat, 29 Dec 2018 12:46:25 GMT
WORKDIR /usr/src/perl
# Sat, 29 Dec 2018 13:09:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Sat, 29 Dec 2018 13:09:51 GMT
WORKDIR /root
# Sat, 29 Dec 2018 13:09:53 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2c67c9facf03a05d9d572e65e238eccc171e621addc931e505613f05a87c3a`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b5c728c94e9605665b87f5692ea03862bb0e7d001f72dc7b883dbecb0acc50`  
		Last Modified: Sat, 29 Dec 2018 14:09:09 GMT  
		Size: 14.4 MB (14391858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim-threaded` - linux; s390x

```console
$ docker pull perl@sha256:f1eb0762f4e7a3fc822e58e37e6605cf741b33690f5da9737098cbe4cb730761
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37265041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a574cb1228d0f2f762e9ebb460cb1278520e20b4190b7010261ef5b49c14f3a`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:52 GMT
ADD file:35c030887198a067338539b6bd96e04ff649537c38542febcb7e0ccd2a3d90c8 in / 
# Sat, 29 Dec 2018 12:43:52 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:45:26 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Sat, 29 Dec 2018 14:45:26 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Sat, 29 Dec 2018 14:45:26 GMT
WORKDIR /usr/src/perl
# Sat, 29 Dec 2018 15:01:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Sat, 29 Dec 2018 15:01:44 GMT
WORKDIR /root
# Sat, 29 Dec 2018 15:01:44 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:0e647eff4fda368965291c62c8bc90ae9cbcc84a50a5caed821af7f05ec653d4`  
		Last Modified: Sat, 29 Dec 2018 12:46:52 GMT  
		Size: 22.3 MB (22341416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2c7075ba27b0d47d8f8b266f9a86dfc595855b4748489986c6f8d530b168b6`  
		Last Modified: Sat, 29 Dec 2018 15:45:49 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d665863a5e71b9ec22e07de9a22d39a67e3fa650b2de549b3712e0dc8f7dc138`  
		Last Modified: Sat, 29 Dec 2018 15:46:14 GMT  
		Size: 14.9 MB (14923445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
