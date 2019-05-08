## `perl:5-slim-threaded`

```console
$ docker pull perl@sha256:8617456f20e580a1e6204f51369e175e8cb3f0ef452ebbf8d6c530ff95208fc6
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
$ docker pull perl@sha256:57bd54c818d4b49ecd5b936e3aed0a5647794bed17909d4f4359679db39799bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (36995087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1351f0dc2f8a047e029dcdee5b04172dec07ee60132a12ffed3027c1c02488b`
-	Default Command: `["perl5.28.2","-de0"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 03:32:50 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 08 May 2019 03:32:51 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 08 May 2019 03:32:51 GMT
WORKDIR /usr/src/perl
# Wed, 08 May 2019 04:05:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.2.tar.xz -o perl-5.28.2.tar.xz     && echo '0b0189bfa4b2da20e899b4bdd746ac402e8f746a58e4fcf5516484157f2aab07 *perl-5.28.2.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.2.tar.xz -C /usr/src/perl     && rm perl-5.28.2.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 08 May 2019 04:05:44 GMT
WORKDIR /root
# Wed, 08 May 2019 04:05:44 GMT
CMD ["perl5.28.2" "-de0"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1966ffe20ae121e4cd3aac2ec5ad3349558a32ffda6db7314a21d274a644b941`  
		Last Modified: Wed, 08 May 2019 05:18:31 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa54cab4ba5d5b2c3d3f5bec18b2d56901fc193b8e921208b06475e0b1486650`  
		Last Modified: Wed, 08 May 2019 05:18:58 GMT  
		Size: 14.5 MB (14505561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim-threaded` - linux; arm variant v7

```console
$ docker pull perl@sha256:0da278119483f02b9265f8b13451eafc01bce935014da6d33cf0cad14603bc32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32889094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22622423838020a1cfd0370f9c959286cf8800222056752635b23bee40a9b563`
-	Default Command: `["perl5.28.2","-de0"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:26:35 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 08 May 2019 13:26:36 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 08 May 2019 13:26:37 GMT
WORKDIR /usr/src/perl
# Wed, 08 May 2019 13:54:12 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.2.tar.xz -o perl-5.28.2.tar.xz     && echo '0b0189bfa4b2da20e899b4bdd746ac402e8f746a58e4fcf5516484157f2aab07 *perl-5.28.2.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.2.tar.xz -C /usr/src/perl     && rm perl-5.28.2.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 08 May 2019 13:54:13 GMT
WORKDIR /root
# Wed, 08 May 2019 13:54:13 GMT
CMD ["perl5.28.2" "-de0"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e900746d4bd66c34a049c968026a1e637484a45ef89325ca3a1a96af0193b40`  
		Last Modified: Wed, 08 May 2019 15:00:51 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5520ae7301b4b346b6bf3d83d7b664f39d63bc36bca3d79b72c8e3c141d804a2`  
		Last Modified: Wed, 08 May 2019 15:01:31 GMT  
		Size: 13.6 MB (13612675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim-threaded` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:1b64fd78d01fd6b592f8ec57e963881e2ff1b85bdbd3298b784a67e6b63a2227
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34643312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3ee9a6dadc7802649d63d4d6e54c7bd0190b74fe8cb33bf18e215a59e5a8a8a`
-	Default Command: `["perl5.28.2","-de0"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 16:46:09 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 08 May 2019 16:46:10 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 08 May 2019 16:46:10 GMT
WORKDIR /usr/src/perl
# Wed, 08 May 2019 17:32:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.2.tar.xz -o perl-5.28.2.tar.xz     && echo '0b0189bfa4b2da20e899b4bdd746ac402e8f746a58e4fcf5516484157f2aab07 *perl-5.28.2.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.2.tar.xz -C /usr/src/perl     && rm perl-5.28.2.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 08 May 2019 17:32:09 GMT
WORKDIR /root
# Wed, 08 May 2019 17:32:10 GMT
CMD ["perl5.28.2" "-de0"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ffade46a411cd7251cdc597827eb320f9bd5f5d310ceaedaed37a2bbc96d8d`  
		Last Modified: Wed, 08 May 2019 19:30:47 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4867fc6cfacd3e80643d928676117227f8bd1cf015df89f0077472be32ddde96`  
		Last Modified: Wed, 08 May 2019 19:31:37 GMT  
		Size: 14.3 MB (14309318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim-threaded` - linux; 386

```console
$ docker pull perl@sha256:c97f4e2e7b83bee62ac443869b2efe357d967b1f98107789cbb760a4832906c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37149620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ea02bbbffd56df072bbd5b0d6d095ee01b85ab1f62a1ae26192693dbd47eab`
-	Default Command: `["perl5.28.2","-de0"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 20:38:48 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 08 May 2019 20:38:48 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 08 May 2019 20:38:48 GMT
WORKDIR /usr/src/perl
# Wed, 08 May 2019 21:04:17 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.2.tar.xz -o perl-5.28.2.tar.xz     && echo '0b0189bfa4b2da20e899b4bdd746ac402e8f746a58e4fcf5516484157f2aab07 *perl-5.28.2.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.2.tar.xz -C /usr/src/perl     && rm perl-5.28.2.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 08 May 2019 21:04:17 GMT
WORKDIR /root
# Wed, 08 May 2019 21:04:17 GMT
CMD ["perl5.28.2" "-de0"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4d9218fbf539c2cb4d55c373ecb1d0e3d04c44107a41d8669f0862d62cdd80`  
		Last Modified: Wed, 08 May 2019 22:08:29 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff351475a79c6e030f6baeb943f581a918511a306980cf7f26d7c76dbfb980f`  
		Last Modified: Wed, 08 May 2019 22:08:58 GMT  
		Size: 14.0 MB (14028600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim-threaded` - linux; ppc64le

```console
$ docker pull perl@sha256:473262cabc5899871d3d559932b1628f768ddb33c237825c949ad63a8a2af1bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37124149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb3e9206027cb82fad6578ea5b31bf02f5abed848bce31976b60bfb9e9f4550`
-	Default Command: `["perl5.28.2","-de0"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:46:10 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 08 May 2019 11:46:11 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 08 May 2019 11:46:14 GMT
WORKDIR /usr/src/perl
# Wed, 08 May 2019 12:05:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.2.tar.xz -o perl-5.28.2.tar.xz     && echo '0b0189bfa4b2da20e899b4bdd746ac402e8f746a58e4fcf5516484157f2aab07 *perl-5.28.2.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.2.tar.xz -C /usr/src/perl     && rm perl-5.28.2.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 08 May 2019 12:05:47 GMT
WORKDIR /root
# Wed, 08 May 2019 12:05:50 GMT
CMD ["perl5.28.2" "-de0"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e6739aa3ad89f9e29ca02a3021433a2316babf6129e2970e7b10fc5f51cf14`  
		Last Modified: Wed, 08 May 2019 12:57:19 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8fb721806f22c592129cc67a74f09ba13029a78dd789aee6376f99f8d334ae`  
		Last Modified: Wed, 08 May 2019 12:58:13 GMT  
		Size: 14.4 MB (14379032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim-threaded` - linux; s390x

```console
$ docker pull perl@sha256:d71acc26bfae3b322967554f27978d0b6e563ab907232e0edb72426fd1dd31b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37256274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2714b3a6816d65cbf180c4651e2ec6b30b95c6ec4668035567422cf4a19a1a3a`
-	Default Command: `["perl5.28.2","-de0"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:08:11 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 08 May 2019 18:08:13 GMT
COPY file:3744c5cc39cdbdcae10db09a1f0f399005a79f93c237b387a72ff5710cdd458c in /usr/src/perl/ 
# Wed, 08 May 2019 18:08:14 GMT
WORKDIR /usr/src/perl
# Wed, 08 May 2019 19:08:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.2.tar.xz -o perl-5.28.2.tar.xz     && echo '0b0189bfa4b2da20e899b4bdd746ac402e8f746a58e4fcf5516484157f2aab07 *perl-5.28.2.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.2.tar.xz -C /usr/src/perl     && rm perl-5.28.2.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Dusethreads -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO https://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 08 May 2019 19:08:10 GMT
WORKDIR /root
# Wed, 08 May 2019 19:08:12 GMT
CMD ["perl5.28.2" "-de0"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2d706e47813d18df4a5ff329fc5dfe9b1cdecd52e7fe250893e93bf9c8fe98`  
		Last Modified: Wed, 08 May 2019 22:14:54 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a67bd8777e1cfc60d070aec773d7e310b56f48bd56483a063a94d31280d595`  
		Last Modified: Wed, 08 May 2019 22:16:30 GMT  
		Size: 14.9 MB (14917226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
