## `perl:slim`

```console
$ docker pull perl@sha256:ea64409eea8ae44a26915024bd7318903d96072e3b1600b32032c398fa18261f
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
$ docker pull perl@sha256:b7854659b9ed9a5fe7e8aeb4a7c9d5b53e56877fa5abc4903fd584d574575dc1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (36969239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33992ba9ccc0c7813fc576a73eba227fd111ce026c5fd7d2a804f415f0ed7240`
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
# Tue, 22 Jan 2019 23:49:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 22 Jan 2019 23:49:49 GMT
WORKDIR /root
# Tue, 22 Jan 2019 23:49:49 GMT
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
	-	`sha256:aab977427eb89be0e797e0c05eab8bb92cb8e258fc0d58487b7200107b1226e7`  
		Last Modified: Wed, 23 Jan 2019 01:28:32 GMT  
		Size: 14.5 MB (14468354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim` - linux; arm variant v7

```console
$ docker pull perl@sha256:837f1d9fc419e0daa0452c3ebf031388ac5cba75f87ecd6f9b7bc96d34624c1f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32875937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81fca3e1dd756ae07bd82c1d2ef5fba2551bd40c38729eb244994625095e5dbb`
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
# Sat, 29 Dec 2018 15:03:34 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Sat, 29 Dec 2018 15:03:34 GMT
WORKDIR /root
# Sat, 29 Dec 2018 15:03:35 GMT
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
	-	`sha256:f68850b0404de0b8951e65e0ad7b558232018f7b30c6579282f52ee78ab559cc`  
		Last Modified: Sat, 29 Dec 2018 16:36:01 GMT  
		Size: 13.6 MB (13597977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:df5dfbe29177f330578d41aa63ebcd0597ab4ecdd0721d19026d962f537920a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34624017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcee9d7b135242746406e51430ef2fdc444641f66847b7fdb190fa2508f0c37d`
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
# Sat, 29 Dec 2018 20:36:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Sat, 29 Dec 2018 20:36:09 GMT
WORKDIR /root
# Sat, 29 Dec 2018 20:36:12 GMT
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
	-	`sha256:b34e8297669a2d613b4d4dda29f84abb021916a0d23eeb7fb59848bceb7296ba`  
		Last Modified: Sat, 29 Dec 2018 23:03:06 GMT  
		Size: 14.3 MB (14286324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim` - linux; 386

```console
$ docker pull perl@sha256:151e43796d45a8b6245f0b20011f86dd29c2f713bd1a02674cbcb85552d84e01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37084012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ee387f9780752bca6f2f8a6616dc118d67c97c4791317772edba79e15f400db`
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
# Sat, 29 Dec 2018 19:28:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Sat, 29 Dec 2018 19:28:05 GMT
WORKDIR /root
# Sat, 29 Dec 2018 19:28:05 GMT
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
	-	`sha256:caa49dbdb25b9d67013515bfd63839f76d02a17f0c30ed4619747453bc0f1580`  
		Last Modified: Sat, 29 Dec 2018 20:47:34 GMT  
		Size: 14.0 MB (13950678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim` - linux; ppc64le

```console
$ docker pull perl@sha256:ab000d187fe649bbb47d42aa66528d181740eeed5cbef37e88fb8aac64f47aa3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37086048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fed348b246d7099f30cd1b425bbdaba9985216d8ea251db8ca62ee017c15e77`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:59:09 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 11:59:10 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 11:59:13 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 12:07:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 12:07:03 GMT
WORKDIR /root
# Wed, 23 Jan 2019 12:07:05 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035bd760989cc8d79e7dd5094d134f80b4102431a24cf239cf57e5700e36ea0f`  
		Last Modified: Wed, 23 Jan 2019 12:49:08 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe6df91961a21b3ab88dfb89f639155acda535d5bce2c4189eef295b1d3fe91`  
		Last Modified: Wed, 23 Jan 2019 12:49:17 GMT  
		Size: 14.3 MB (14330513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:slim` - linux; s390x

```console
$ docker pull perl@sha256:ed3c785d57a120afb4c8ad5b73967a05b7579295e441b71943fcc7b937d87f93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37262799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed953aa673a5b38d200ade0c43c5cc292fa1e482e492d57da0a1f94622cc5617`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:26:40 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 23 Jan 2019 14:26:40 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 23 Jan 2019 14:26:40 GMT
WORKDIR /usr/src/perl
# Wed, 23 Jan 2019 14:33:40 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 23 Jan 2019 14:33:41 GMT
WORKDIR /root
# Wed, 23 Jan 2019 14:33:41 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0904c1fb0f4931d9c42c4b3704ba9706e4109416a95ed445badf02bb5b22db45`  
		Last Modified: Wed, 23 Jan 2019 15:37:56 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4dca8e96e2b768f94ff337fd0156e3212644173c8868f36093a9963def432e`  
		Last Modified: Wed, 23 Jan 2019 15:38:00 GMT  
		Size: 14.9 MB (14909124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
