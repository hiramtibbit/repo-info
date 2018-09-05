## `perl:5-slim`

```console
$ docker pull perl@sha256:0bce409389bf5cb4fd4fa75e0978543c9497d5326ddeb4c0a32fd196974f36db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `perl:5-slim` - linux; amd64

```console
$ docker pull perl@sha256:bf4ad8b5ccc340f09a9c1519ac17f709fa8d20045f472d376e6e5121a91b71c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 MB (36953914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6bf0920c3a860c20816d901f870b7bdd52c7b5aadc36f65d1571746e5b26c8`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:31:29 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 05 Sep 2018 01:31:30 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 05 Sep 2018 01:31:30 GMT
WORKDIR /usr/src/perl
# Wed, 05 Sep 2018 01:39:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 05 Sep 2018 01:39:41 GMT
WORKDIR /root
# Wed, 05 Sep 2018 01:39:41 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a13c5461eefc9f45f3ac36d26834fc71bb2c6d30efa168ae1fc1956a69b877a`  
		Last Modified: Wed, 05 Sep 2018 03:21:02 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229e073f856c3c1c5af69bef0b4751f6febb87c7fb973ea9a9f39aa059d14d9e`  
		Last Modified: Wed, 05 Sep 2018 03:21:07 GMT  
		Size: 14.5 MB (14467773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim` - linux; arm variant v7

```console
$ docker pull perl@sha256:a53eb0144b524f45a8bd38ec0399a4319a4e43c273f55f19b21898f6e1d0942b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32868174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c3c43a7ec587736d524d2b7b5f9d051e023e219c53cc203c6e7e674da3c8101`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 14 Aug 2018 12:09:08 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 14 Aug 2018 12:09:09 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Tue, 14 Aug 2018 12:09:09 GMT
WORKDIR /usr/src/perl
# Tue, 14 Aug 2018 12:17:37 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 14 Aug 2018 12:17:38 GMT
WORKDIR /root
# Tue, 14 Aug 2018 12:17:40 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beab1d20b0ee8a2c14d3368c1493b8e32a0f7d6d91313c11365df7747fa95511`  
		Last Modified: Tue, 14 Aug 2018 13:32:05 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b517e3c7053590117ed88b1588b5ec99130c47d1c20db4d0e7afdee30cb4f1`  
		Last Modified: Tue, 14 Aug 2018 13:32:11 GMT  
		Size: 13.6 MB (13597788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim` - linux; arm64 variant v8

```console
$ docker pull perl@sha256:bf59d89da4eae3682b86092a30a0c3c1dce00ce509fa2b93e5c9d248904d95ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34617534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b966555beb4dfc3846f59c93c97089b336a16e75a476e7727ea86ae5a1d5585`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 14 Aug 2018 09:48:36 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 14 Aug 2018 09:48:37 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Tue, 14 Aug 2018 09:48:38 GMT
WORKDIR /usr/src/perl
# Tue, 14 Aug 2018 10:01:55 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 14 Aug 2018 10:01:56 GMT
WORKDIR /root
# Tue, 14 Aug 2018 10:01:57 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8097c0a0f6d7180b06221cc71d6d6897b3fa6589fe438cc6f5337e25cc2ae3`  
		Last Modified: Tue, 14 Aug 2018 12:10:42 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3fcf96285cf1732d8fef27478eb62c6ced10328592157092edad077fe01ec8d`  
		Last Modified: Tue, 14 Aug 2018 12:10:49 GMT  
		Size: 14.3 MB (14285707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim` - linux; 386

```console
$ docker pull perl@sha256:a325bbb2144a48fc19b3cadcbee03f436d8f56aec7363584aa6309dfd22b57dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37077344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f6f385bf42e8b280b26fe3ab625daa50381742abb5a36fa56fe289b1c3e043f`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 14 Aug 2018 11:23:39 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 14 Aug 2018 11:23:40 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Tue, 14 Aug 2018 11:23:40 GMT
WORKDIR /usr/src/perl
# Tue, 14 Aug 2018 11:29:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 14 Aug 2018 11:29:50 GMT
WORKDIR /root
# Tue, 14 Aug 2018 11:29:50 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb67c01a0c8128ae6f089092c25d70d92af3a49bdf349c3f9d5a0330cf2cbe3`  
		Last Modified: Tue, 14 Aug 2018 12:42:54 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bac3ffd8f4fe1c49aab91c6fc2e4e879aefc3b5ca3bc20d95089fbb8a166b61`  
		Last Modified: Tue, 14 Aug 2018 12:43:03 GMT  
		Size: 14.0 MB (13950789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim` - linux; ppc64le

```console
$ docker pull perl@sha256:40dc0f53fd0932cdce8154b41ff4fd0ffeb81073382fce360a0370a1959c64fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37071137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1f40fd86fa805c9ddad5335cc6a2fcb17cdbf2402fdc52a50ed660884fa617`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:04:45 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Wed, 05 Sep 2018 10:04:46 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Wed, 05 Sep 2018 10:04:48 GMT
WORKDIR /usr/src/perl
# Wed, 05 Sep 2018 10:12:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Wed, 05 Sep 2018 10:12:02 GMT
WORKDIR /root
# Wed, 05 Sep 2018 10:12:03 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c134e1c297890408579fc41b0bb4be6bf510d73337ab9709531a303c410ddf`  
		Last Modified: Wed, 05 Sep 2018 11:24:58 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d2af04706c6ecc571e0b425e9dc1de30d39f5561fbe3ae5b312103f8667b369`  
		Last Modified: Wed, 05 Sep 2018 11:25:04 GMT  
		Size: 14.3 MB (14330401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `perl:5-slim` - linux; s390x

```console
$ docker pull perl@sha256:7a8ad21d2e931b8ce31b6304bc6a21fcef3513896033c0e03e3949e252f0009c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37243544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b79d3638fd7d5cfe4cbbc0eb48c79c1ef77f350d28e3db9fbc03e8b3608cb0c3`
-	Default Command: `["perl5.28.0","-de0"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Tue, 14 Aug 2018 12:24:11 GMT
LABEL maintainer=Peter Martini <PeterCMartini@GMail.com>, Zak B. Elep <zakame@cpan.org>
# Tue, 14 Aug 2018 12:24:12 GMT
COPY file:2be96a0b9a6d4b3ea837439f6ea05fc01b773b4b26dd6bd7635bd489469d0075 in /usr/src/perl/ 
# Tue, 14 Aug 2018 12:24:12 GMT
WORKDIR /usr/src/perl
# Tue, 14 Aug 2018 12:29:34 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends        bzip2        ca-certificates        curl        dpkg-dev        gcc        libc6-dev        make        netbase        patch        xz-utils     && curl -SL https://www.cpan.org/src/5.0/perl-5.28.0.tar.xz -o perl-5.28.0.tar.xz     && echo '059b3cb69970d8c8c5964caced0335b4af34ac990c8e61f7e3f90cd1c2d11e49 *perl-5.28.0.tar.xz' | sha256sum -c -     && tar --strip-components=1 -xaf perl-5.28.0.tar.xz -C /usr/src/perl     && rm perl-5.28.0.tar.xz     && cat *.patch | patch -p1     && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"     && archBits="$(dpkg-architecture --query DEB_BUILD_ARCH_BITS)"     && archFlag="$([ "$archBits" = '64' ] && echo '-Duse64bitall' || echo '-Duse64bitint')"     && ./Configure -Darchname="$gnuArch" "$archFlag" -Duseshrplib -Dvendorprefix=/usr/local  -des     && make -j$(nproc)     && TEST_JOBS=$(nproc) make test_harness     && make install     && cd /usr/src     && curl -LO http://www.cpan.org/authors/id/M/MI/MIYAGAWA/App-cpanminus-1.7044.tar.gz     && echo '9b60767fe40752ef7a9d3f13f19060a63389a5c23acc3e9827e19b75500f81f3 *App-cpanminus-1.7044.tar.gz' | sha256sum -c -     && tar -xzf App-cpanminus-1.7044.tar.gz && cd App-cpanminus-1.7044 && perl bin/cpanm . && cd /root     && savedPackages="make netbase"     && apt-mark auto '.*' > /dev/null     && apt-mark manual $savedPackages     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && rm -fr /var/cache/apt/* /var/lib/apt/lists/*     && rm -fr ./cpanm /root/.cpanm /usr/src/perl /usr/src/App-cpanminus-1.7044* /tmp/*
# Tue, 14 Aug 2018 12:29:34 GMT
WORKDIR /root
# Tue, 14 Aug 2018 12:29:34 GMT
CMD ["perl5.28.0" "-de0"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b026cfa9a6831bb3e9b28a52bd0391aea0350088416c88dd59fba3d691f64`  
		Last Modified: Tue, 14 Aug 2018 13:42:10 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:321ed690420b0ad30824442abd0c26ef584b65abd70132700e2800902a6eb6c6`  
		Last Modified: Tue, 14 Aug 2018 13:42:14 GMT  
		Size: 14.9 MB (14908847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
