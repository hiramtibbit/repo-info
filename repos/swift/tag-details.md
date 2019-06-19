<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `swift`

-	[`swift:3`](#swift3)
-	[`swift:3.1`](#swift31)
-	[`swift:3.1.1`](#swift311)
-	[`swift:4`](#swift4)
-	[`swift:4.0`](#swift40)
-	[`swift:4.0.3`](#swift403)
-	[`swift:4.1`](#swift41)
-	[`swift:4.1.3`](#swift413)
-	[`swift:4.2`](#swift42)
-	[`swift:4.2.4`](#swift424)
-	[`swift:5.0`](#swift50)
-	[`swift:5.0.1`](#swift501)
-	[`swift:5.0.1-bionic`](#swift501-bionic)
-	[`swift:5.0.1-xenial`](#swift501-xenial)
-	[`swift:5.0-bionic`](#swift50-bionic)
-	[`swift:5.0-xenial`](#swift50-xenial)
-	[`swift:bionic`](#swiftbionic)
-	[`swift:latest`](#swiftlatest)
-	[`swift:xenial`](#swiftxenial)

## `swift:3`

```console
$ docker pull swift@sha256:92e58682d9272f87ecb8d1e26ec140d8553ced0d1d3f648663fea95070af50c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:3` - linux; amd64

```console
$ docker pull swift@sha256:bff8c4260917678eb254435e157514a35d25443c24fb11adf26fca5048389f05
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.4 MB (393431568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23454eb76a55c39335617be0665e02ce0a2d234d5f8bdcdfd42e6753ea40473f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 03:04:06 GMT
LABEL maintainer=Haris Amin <aminharis7@gmail.com>
# Wed, 19 Jun 2019 03:04:07 GMT
LABEL Description=Docker Container for the Apple's Swift programming language
# Wed, 19 Jun 2019 03:04:56 GMT
RUN apt-get -q update &&     apt-get -q install -y     make     libc6-dev     clang-3.8     curl     libedit-dev     libpython2.7     libicu-dev     libssl-dev     libxml2     tzdata     git     libcurl4-openssl-dev     pkg-config     && update-alternatives --quiet --install /usr/bin/clang clang /usr/bin/clang-3.8 100     && update-alternatives --quiet --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.8 100     && rm -r /var/lib/apt/lists/*
# Wed, 19 Jun 2019 03:04:56 GMT
ARG SWIFT_PLATFORM=ubuntu16.04
# Wed, 19 Jun 2019 03:06:43 GMT
ARG SWIFT_BRANCH=swift-3.1.1-release
# Wed, 19 Jun 2019 03:06:43 GMT
ARG SWIFT_VERSION=swift-3.1.1-RELEASE
# Wed, 19 Jun 2019 03:06:43 GMT
ENV SWIFT_PLATFORM=ubuntu16.04 SWIFT_BRANCH=swift-3.1.1-release SWIFT_VERSION=swift-3.1.1-RELEASE
# Wed, 19 Jun 2019 03:07:13 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           8513444E2DA36B7C1659AF4D7638F1FB2B2B08C4           A3BAFD3556A59079C06894BD63BC1CFE91D306C6           5E4DF843FB065D7F7E24FBA2EF5430F071E1B235         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 19 Jun 2019 03:07:14 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b39c1990ca14d3493d18c96412ab58f428e715171e3add3d5ab9037c3e303e4`  
		Last Modified: Wed, 19 Jun 2019 03:12:13 GMT  
		Size: 224.5 MB (224484061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb200253b78d255b69e9571e6d255da616e55615467422a60235b05a044fc6f`  
		Last Modified: Wed, 19 Jun 2019 03:13:26 GMT  
		Size: 125.1 MB (125108201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swift:3.1`

```console
$ docker pull swift@sha256:92e58682d9272f87ecb8d1e26ec140d8553ced0d1d3f648663fea95070af50c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:3.1` - linux; amd64

```console
$ docker pull swift@sha256:bff8c4260917678eb254435e157514a35d25443c24fb11adf26fca5048389f05
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.4 MB (393431568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23454eb76a55c39335617be0665e02ce0a2d234d5f8bdcdfd42e6753ea40473f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 03:04:06 GMT
LABEL maintainer=Haris Amin <aminharis7@gmail.com>
# Wed, 19 Jun 2019 03:04:07 GMT
LABEL Description=Docker Container for the Apple's Swift programming language
# Wed, 19 Jun 2019 03:04:56 GMT
RUN apt-get -q update &&     apt-get -q install -y     make     libc6-dev     clang-3.8     curl     libedit-dev     libpython2.7     libicu-dev     libssl-dev     libxml2     tzdata     git     libcurl4-openssl-dev     pkg-config     && update-alternatives --quiet --install /usr/bin/clang clang /usr/bin/clang-3.8 100     && update-alternatives --quiet --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.8 100     && rm -r /var/lib/apt/lists/*
# Wed, 19 Jun 2019 03:04:56 GMT
ARG SWIFT_PLATFORM=ubuntu16.04
# Wed, 19 Jun 2019 03:06:43 GMT
ARG SWIFT_BRANCH=swift-3.1.1-release
# Wed, 19 Jun 2019 03:06:43 GMT
ARG SWIFT_VERSION=swift-3.1.1-RELEASE
# Wed, 19 Jun 2019 03:06:43 GMT
ENV SWIFT_PLATFORM=ubuntu16.04 SWIFT_BRANCH=swift-3.1.1-release SWIFT_VERSION=swift-3.1.1-RELEASE
# Wed, 19 Jun 2019 03:07:13 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           8513444E2DA36B7C1659AF4D7638F1FB2B2B08C4           A3BAFD3556A59079C06894BD63BC1CFE91D306C6           5E4DF843FB065D7F7E24FBA2EF5430F071E1B235         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 19 Jun 2019 03:07:14 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b39c1990ca14d3493d18c96412ab58f428e715171e3add3d5ab9037c3e303e4`  
		Last Modified: Wed, 19 Jun 2019 03:12:13 GMT  
		Size: 224.5 MB (224484061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb200253b78d255b69e9571e6d255da616e55615467422a60235b05a044fc6f`  
		Last Modified: Wed, 19 Jun 2019 03:13:26 GMT  
		Size: 125.1 MB (125108201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swift:3.1.1`

```console
$ docker pull swift@sha256:92e58682d9272f87ecb8d1e26ec140d8553ced0d1d3f648663fea95070af50c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:3.1.1` - linux; amd64

```console
$ docker pull swift@sha256:bff8c4260917678eb254435e157514a35d25443c24fb11adf26fca5048389f05
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.4 MB (393431568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23454eb76a55c39335617be0665e02ce0a2d234d5f8bdcdfd42e6753ea40473f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 03:04:06 GMT
LABEL maintainer=Haris Amin <aminharis7@gmail.com>
# Wed, 19 Jun 2019 03:04:07 GMT
LABEL Description=Docker Container for the Apple's Swift programming language
# Wed, 19 Jun 2019 03:04:56 GMT
RUN apt-get -q update &&     apt-get -q install -y     make     libc6-dev     clang-3.8     curl     libedit-dev     libpython2.7     libicu-dev     libssl-dev     libxml2     tzdata     git     libcurl4-openssl-dev     pkg-config     && update-alternatives --quiet --install /usr/bin/clang clang /usr/bin/clang-3.8 100     && update-alternatives --quiet --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.8 100     && rm -r /var/lib/apt/lists/*
# Wed, 19 Jun 2019 03:04:56 GMT
ARG SWIFT_PLATFORM=ubuntu16.04
# Wed, 19 Jun 2019 03:06:43 GMT
ARG SWIFT_BRANCH=swift-3.1.1-release
# Wed, 19 Jun 2019 03:06:43 GMT
ARG SWIFT_VERSION=swift-3.1.1-RELEASE
# Wed, 19 Jun 2019 03:06:43 GMT
ENV SWIFT_PLATFORM=ubuntu16.04 SWIFT_BRANCH=swift-3.1.1-release SWIFT_VERSION=swift-3.1.1-RELEASE
# Wed, 19 Jun 2019 03:07:13 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           8513444E2DA36B7C1659AF4D7638F1FB2B2B08C4           A3BAFD3556A59079C06894BD63BC1CFE91D306C6           5E4DF843FB065D7F7E24FBA2EF5430F071E1B235         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 19 Jun 2019 03:07:14 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b39c1990ca14d3493d18c96412ab58f428e715171e3add3d5ab9037c3e303e4`  
		Last Modified: Wed, 19 Jun 2019 03:12:13 GMT  
		Size: 224.5 MB (224484061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb200253b78d255b69e9571e6d255da616e55615467422a60235b05a044fc6f`  
		Last Modified: Wed, 19 Jun 2019 03:13:26 GMT  
		Size: 125.1 MB (125108201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swift:4`

```console
$ docker pull swift@sha256:005e617f4d14e2d5af07bf11ce8ab6437f55209270676bdb3aaff177f9ac9fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:4` - linux; amd64

```console
$ docker pull swift@sha256:c945a746c03f5ec45ee49d539e750ac601d371791b2689a05f4ea7f7c282a569
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.5 MB (496490107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce1fe933c29743d4f70730da868dccab195c4516a363f8e761b9c52f6d471282`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 03:00:09 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@swift.org>
# Wed, 19 Jun 2019 03:00:10 GMT
LABEL Description=Docker Container for the Swift programming language
# Wed, 19 Jun 2019 03:03:11 GMT
RUN apt-get -q update &&     apt-get -q install -y     make     libc6-dev     clang-3.8     curl     libedit-dev     libpython2.7     libicu-dev     libssl-dev     libxml2     tzdata     git     libcurl4-openssl-dev     pkg-config     && update-alternatives --quiet --install /usr/bin/clang clang /usr/bin/clang-3.8 100     && update-alternatives --quiet --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.8 100     && rm -r /var/lib/apt/lists/*
# Wed, 19 Jun 2019 03:03:12 GMT
ARG SWIFT_PLATFORM=ubuntu16.04
# Wed, 19 Jun 2019 03:03:12 GMT
ARG SWIFT_BRANCH=swift-4.2.4-release
# Wed, 19 Jun 2019 03:03:12 GMT
ARG SWIFT_VERSION=swift-4.2.4-RELEASE
# Wed, 19 Jun 2019 03:03:12 GMT
ENV SWIFT_PLATFORM=ubuntu16.04 SWIFT_BRANCH=swift-4.2.4-release SWIFT_VERSION=swift-4.2.4-RELEASE
# Wed, 19 Jun 2019 03:03:57 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           8513444E2DA36B7C1659AF4D7638F1FB2B2B08C4           A3BAFD3556A59079C06894BD63BC1CFE91D306C6           5E4DF843FB065D7F7E24FBA2EF5430F071E1B235         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 19 Jun 2019 03:04:03 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27091b9239303c52b84c70d894535fa2a6d8a03525484ca24c8d4254df7d09d6`  
		Last Modified: Wed, 19 Jun 2019 03:11:09 GMT  
		Size: 224.5 MB (224484643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185615147f60b6be72a62aee0b20df4889a2d11906d7e94ff7577e048000a769`  
		Last Modified: Wed, 19 Jun 2019 03:11:08 GMT  
		Size: 228.2 MB (228166158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swift:4.0`

```console
$ docker pull swift@sha256:69e8e77a91fdfb8b0c2ceaa0c7c7de50de18979f80e84da1b1541a80e3c63702
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:4.0` - linux; amd64

```console
$ docker pull swift@sha256:d23cb1e4406f1aca62515e6d2b5dacfa6292adfabf472fc5b8cfbfec082b19a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.0 MB (438961303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a7acb490fef87ec46c57145d5de6786de81d262a4dc4f8d7842ee26a3121a3b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 03:04:06 GMT
LABEL maintainer=Haris Amin <aminharis7@gmail.com>
# Wed, 19 Jun 2019 03:04:07 GMT
LABEL Description=Docker Container for the Apple's Swift programming language
# Wed, 19 Jun 2019 03:04:56 GMT
RUN apt-get -q update &&     apt-get -q install -y     make     libc6-dev     clang-3.8     curl     libedit-dev     libpython2.7     libicu-dev     libssl-dev     libxml2     tzdata     git     libcurl4-openssl-dev     pkg-config     && update-alternatives --quiet --install /usr/bin/clang clang /usr/bin/clang-3.8 100     && update-alternatives --quiet --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.8 100     && rm -r /var/lib/apt/lists/*
# Wed, 19 Jun 2019 03:04:56 GMT
ARG SWIFT_PLATFORM=ubuntu16.04
# Wed, 19 Jun 2019 03:05:51 GMT
ARG SWIFT_BRANCH=swift-4.0.3-release
# Wed, 19 Jun 2019 03:05:51 GMT
ARG SWIFT_VERSION=swift-4.0.3-RELEASE
# Wed, 19 Jun 2019 03:05:51 GMT
ENV SWIFT_PLATFORM=ubuntu16.04 SWIFT_BRANCH=swift-4.0.3-release SWIFT_VERSION=swift-4.0.3-RELEASE
# Wed, 19 Jun 2019 03:06:35 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           8513444E2DA36B7C1659AF4D7638F1FB2B2B08C4           A3BAFD3556A59079C06894BD63BC1CFE91D306C6           5E4DF843FB065D7F7E24FBA2EF5430F071E1B235         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 19 Jun 2019 03:06:38 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b39c1990ca14d3493d18c96412ab58f428e715171e3add3d5ab9037c3e303e4`  
		Last Modified: Wed, 19 Jun 2019 03:12:13 GMT  
		Size: 224.5 MB (224484061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745c0c48c830ddc1f90b3edf13f65eed0d1ade22dfc61233a291c69cd05e7518`  
		Last Modified: Wed, 19 Jun 2019 03:12:57 GMT  
		Size: 170.6 MB (170637936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swift:4.0.3`

```console
$ docker pull swift@sha256:69e8e77a91fdfb8b0c2ceaa0c7c7de50de18979f80e84da1b1541a80e3c63702
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:4.0.3` - linux; amd64

```console
$ docker pull swift@sha256:d23cb1e4406f1aca62515e6d2b5dacfa6292adfabf472fc5b8cfbfec082b19a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.0 MB (438961303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a7acb490fef87ec46c57145d5de6786de81d262a4dc4f8d7842ee26a3121a3b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 03:04:06 GMT
LABEL maintainer=Haris Amin <aminharis7@gmail.com>
# Wed, 19 Jun 2019 03:04:07 GMT
LABEL Description=Docker Container for the Apple's Swift programming language
# Wed, 19 Jun 2019 03:04:56 GMT
RUN apt-get -q update &&     apt-get -q install -y     make     libc6-dev     clang-3.8     curl     libedit-dev     libpython2.7     libicu-dev     libssl-dev     libxml2     tzdata     git     libcurl4-openssl-dev     pkg-config     && update-alternatives --quiet --install /usr/bin/clang clang /usr/bin/clang-3.8 100     && update-alternatives --quiet --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.8 100     && rm -r /var/lib/apt/lists/*
# Wed, 19 Jun 2019 03:04:56 GMT
ARG SWIFT_PLATFORM=ubuntu16.04
# Wed, 19 Jun 2019 03:05:51 GMT
ARG SWIFT_BRANCH=swift-4.0.3-release
# Wed, 19 Jun 2019 03:05:51 GMT
ARG SWIFT_VERSION=swift-4.0.3-RELEASE
# Wed, 19 Jun 2019 03:05:51 GMT
ENV SWIFT_PLATFORM=ubuntu16.04 SWIFT_BRANCH=swift-4.0.3-release SWIFT_VERSION=swift-4.0.3-RELEASE
# Wed, 19 Jun 2019 03:06:35 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           8513444E2DA36B7C1659AF4D7638F1FB2B2B08C4           A3BAFD3556A59079C06894BD63BC1CFE91D306C6           5E4DF843FB065D7F7E24FBA2EF5430F071E1B235         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 19 Jun 2019 03:06:38 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b39c1990ca14d3493d18c96412ab58f428e715171e3add3d5ab9037c3e303e4`  
		Last Modified: Wed, 19 Jun 2019 03:12:13 GMT  
		Size: 224.5 MB (224484061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745c0c48c830ddc1f90b3edf13f65eed0d1ade22dfc61233a291c69cd05e7518`  
		Last Modified: Wed, 19 Jun 2019 03:12:57 GMT  
		Size: 170.6 MB (170637936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swift:4.1`

```console
$ docker pull swift@sha256:7b3c948d631b945a4d505240b29f81905c525cc6f35f9dc3311ae5657691219e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:4.1` - linux; amd64

```console
$ docker pull swift@sha256:c3f082c3a7a42769b1c68040163f53bad9c2b9b23e90483e50db64b241cee6ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.6 MB (451555635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c60156837010d68bc852673a0c3df70b9df1d972c6d8da465f18a792ae054f6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 03:04:06 GMT
LABEL maintainer=Haris Amin <aminharis7@gmail.com>
# Wed, 19 Jun 2019 03:04:07 GMT
LABEL Description=Docker Container for the Apple's Swift programming language
# Wed, 19 Jun 2019 03:04:56 GMT
RUN apt-get -q update &&     apt-get -q install -y     make     libc6-dev     clang-3.8     curl     libedit-dev     libpython2.7     libicu-dev     libssl-dev     libxml2     tzdata     git     libcurl4-openssl-dev     pkg-config     && update-alternatives --quiet --install /usr/bin/clang clang /usr/bin/clang-3.8 100     && update-alternatives --quiet --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.8 100     && rm -r /var/lib/apt/lists/*
# Wed, 19 Jun 2019 03:04:56 GMT
ARG SWIFT_PLATFORM=ubuntu16.04
# Wed, 19 Jun 2019 03:04:57 GMT
ARG SWIFT_BRANCH=swift-4.1.3-release
# Wed, 19 Jun 2019 03:04:57 GMT
ARG SWIFT_VERSION=swift-4.1.3-RELEASE
# Wed, 19 Jun 2019 03:04:57 GMT
ENV SWIFT_PLATFORM=ubuntu16.04 SWIFT_BRANCH=swift-4.1.3-release SWIFT_VERSION=swift-4.1.3-RELEASE
# Wed, 19 Jun 2019 03:05:36 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           8513444E2DA36B7C1659AF4D7638F1FB2B2B08C4           A3BAFD3556A59079C06894BD63BC1CFE91D306C6           5E4DF843FB065D7F7E24FBA2EF5430F071E1B235         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 19 Jun 2019 03:05:38 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b39c1990ca14d3493d18c96412ab58f428e715171e3add3d5ab9037c3e303e4`  
		Last Modified: Wed, 19 Jun 2019 03:12:13 GMT  
		Size: 224.5 MB (224484061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e5dfc932058e24819f8953d5d2606b47ac6e93bfa650d078044ea7856f77e2`  
		Last Modified: Wed, 19 Jun 2019 03:12:04 GMT  
		Size: 183.2 MB (183232268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swift:4.1.3`

```console
$ docker pull swift@sha256:7b3c948d631b945a4d505240b29f81905c525cc6f35f9dc3311ae5657691219e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:4.1.3` - linux; amd64

```console
$ docker pull swift@sha256:c3f082c3a7a42769b1c68040163f53bad9c2b9b23e90483e50db64b241cee6ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.6 MB (451555635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c60156837010d68bc852673a0c3df70b9df1d972c6d8da465f18a792ae054f6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 03:04:06 GMT
LABEL maintainer=Haris Amin <aminharis7@gmail.com>
# Wed, 19 Jun 2019 03:04:07 GMT
LABEL Description=Docker Container for the Apple's Swift programming language
# Wed, 19 Jun 2019 03:04:56 GMT
RUN apt-get -q update &&     apt-get -q install -y     make     libc6-dev     clang-3.8     curl     libedit-dev     libpython2.7     libicu-dev     libssl-dev     libxml2     tzdata     git     libcurl4-openssl-dev     pkg-config     && update-alternatives --quiet --install /usr/bin/clang clang /usr/bin/clang-3.8 100     && update-alternatives --quiet --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.8 100     && rm -r /var/lib/apt/lists/*
# Wed, 19 Jun 2019 03:04:56 GMT
ARG SWIFT_PLATFORM=ubuntu16.04
# Wed, 19 Jun 2019 03:04:57 GMT
ARG SWIFT_BRANCH=swift-4.1.3-release
# Wed, 19 Jun 2019 03:04:57 GMT
ARG SWIFT_VERSION=swift-4.1.3-RELEASE
# Wed, 19 Jun 2019 03:04:57 GMT
ENV SWIFT_PLATFORM=ubuntu16.04 SWIFT_BRANCH=swift-4.1.3-release SWIFT_VERSION=swift-4.1.3-RELEASE
# Wed, 19 Jun 2019 03:05:36 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           8513444E2DA36B7C1659AF4D7638F1FB2B2B08C4           A3BAFD3556A59079C06894BD63BC1CFE91D306C6           5E4DF843FB065D7F7E24FBA2EF5430F071E1B235         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 19 Jun 2019 03:05:38 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b39c1990ca14d3493d18c96412ab58f428e715171e3add3d5ab9037c3e303e4`  
		Last Modified: Wed, 19 Jun 2019 03:12:13 GMT  
		Size: 224.5 MB (224484061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e5dfc932058e24819f8953d5d2606b47ac6e93bfa650d078044ea7856f77e2`  
		Last Modified: Wed, 19 Jun 2019 03:12:04 GMT  
		Size: 183.2 MB (183232268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swift:4.2`

```console
$ docker pull swift@sha256:005e617f4d14e2d5af07bf11ce8ab6437f55209270676bdb3aaff177f9ac9fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:4.2` - linux; amd64

```console
$ docker pull swift@sha256:c945a746c03f5ec45ee49d539e750ac601d371791b2689a05f4ea7f7c282a569
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.5 MB (496490107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce1fe933c29743d4f70730da868dccab195c4516a363f8e761b9c52f6d471282`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 03:00:09 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@swift.org>
# Wed, 19 Jun 2019 03:00:10 GMT
LABEL Description=Docker Container for the Swift programming language
# Wed, 19 Jun 2019 03:03:11 GMT
RUN apt-get -q update &&     apt-get -q install -y     make     libc6-dev     clang-3.8     curl     libedit-dev     libpython2.7     libicu-dev     libssl-dev     libxml2     tzdata     git     libcurl4-openssl-dev     pkg-config     && update-alternatives --quiet --install /usr/bin/clang clang /usr/bin/clang-3.8 100     && update-alternatives --quiet --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.8 100     && rm -r /var/lib/apt/lists/*
# Wed, 19 Jun 2019 03:03:12 GMT
ARG SWIFT_PLATFORM=ubuntu16.04
# Wed, 19 Jun 2019 03:03:12 GMT
ARG SWIFT_BRANCH=swift-4.2.4-release
# Wed, 19 Jun 2019 03:03:12 GMT
ARG SWIFT_VERSION=swift-4.2.4-RELEASE
# Wed, 19 Jun 2019 03:03:12 GMT
ENV SWIFT_PLATFORM=ubuntu16.04 SWIFT_BRANCH=swift-4.2.4-release SWIFT_VERSION=swift-4.2.4-RELEASE
# Wed, 19 Jun 2019 03:03:57 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           8513444E2DA36B7C1659AF4D7638F1FB2B2B08C4           A3BAFD3556A59079C06894BD63BC1CFE91D306C6           5E4DF843FB065D7F7E24FBA2EF5430F071E1B235         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 19 Jun 2019 03:04:03 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27091b9239303c52b84c70d894535fa2a6d8a03525484ca24c8d4254df7d09d6`  
		Last Modified: Wed, 19 Jun 2019 03:11:09 GMT  
		Size: 224.5 MB (224484643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185615147f60b6be72a62aee0b20df4889a2d11906d7e94ff7577e048000a769`  
		Last Modified: Wed, 19 Jun 2019 03:11:08 GMT  
		Size: 228.2 MB (228166158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swift:4.2.4`

```console
$ docker pull swift@sha256:005e617f4d14e2d5af07bf11ce8ab6437f55209270676bdb3aaff177f9ac9fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:4.2.4` - linux; amd64

```console
$ docker pull swift@sha256:c945a746c03f5ec45ee49d539e750ac601d371791b2689a05f4ea7f7c282a569
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.5 MB (496490107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce1fe933c29743d4f70730da868dccab195c4516a363f8e761b9c52f6d471282`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 03:00:09 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@swift.org>
# Wed, 19 Jun 2019 03:00:10 GMT
LABEL Description=Docker Container for the Swift programming language
# Wed, 19 Jun 2019 03:03:11 GMT
RUN apt-get -q update &&     apt-get -q install -y     make     libc6-dev     clang-3.8     curl     libedit-dev     libpython2.7     libicu-dev     libssl-dev     libxml2     tzdata     git     libcurl4-openssl-dev     pkg-config     && update-alternatives --quiet --install /usr/bin/clang clang /usr/bin/clang-3.8 100     && update-alternatives --quiet --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.8 100     && rm -r /var/lib/apt/lists/*
# Wed, 19 Jun 2019 03:03:12 GMT
ARG SWIFT_PLATFORM=ubuntu16.04
# Wed, 19 Jun 2019 03:03:12 GMT
ARG SWIFT_BRANCH=swift-4.2.4-release
# Wed, 19 Jun 2019 03:03:12 GMT
ARG SWIFT_VERSION=swift-4.2.4-RELEASE
# Wed, 19 Jun 2019 03:03:12 GMT
ENV SWIFT_PLATFORM=ubuntu16.04 SWIFT_BRANCH=swift-4.2.4-release SWIFT_VERSION=swift-4.2.4-RELEASE
# Wed, 19 Jun 2019 03:03:57 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           8513444E2DA36B7C1659AF4D7638F1FB2B2B08C4           A3BAFD3556A59079C06894BD63BC1CFE91D306C6           5E4DF843FB065D7F7E24FBA2EF5430F071E1B235         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 19 Jun 2019 03:04:03 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27091b9239303c52b84c70d894535fa2a6d8a03525484ca24c8d4254df7d09d6`  
		Last Modified: Wed, 19 Jun 2019 03:11:09 GMT  
		Size: 224.5 MB (224484643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185615147f60b6be72a62aee0b20df4889a2d11906d7e94ff7577e048000a769`  
		Last Modified: Wed, 19 Jun 2019 03:11:08 GMT  
		Size: 228.2 MB (228166158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swift:5.0`

```console
$ docker pull swift@sha256:2f6451d66ffd2bedd71575a8b5e2e15d2a2491537aa53eddb2e602e029dc249f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:5.0` - linux; amd64

```console
$ docker pull swift@sha256:c42a0d2181c051d6e72502e2cb02766e97b036dc4773e20a5a7afd8458ec46ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.4 MB (462386623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc0d914ebd9aaece2c1a626c719a7dace83fbbca0868fca59da9ae49ac02a17`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:51:33 GMT
ADD file:4e6b5d9ca371eb881c581574b8dc4f5391eff2872db364af0f8d9804e4890098 in / 
# Tue, 18 Jun 2019 22:51:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:51:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:51:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:51:38 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:57:55 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@swift.org>
# Wed, 19 Jun 2019 02:57:55 GMT
LABEL Description=Docker Container for the Swift programming language
# Wed, 19 Jun 2019 02:58:37 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libatomic1     libbsd0     libcurl4     libxml2     libedit2     libsqlite3-0     libc6-dev     binutils     libgcc-5-dev     libstdc++-5-dev     libpython2.7     tzdata     git     pkg-config     && rm -r /var/lib/apt/lists/*
# Wed, 19 Jun 2019 02:58:38 GMT
ARG SWIFT_PLATFORM=ubuntu18.04
# Wed, 19 Jun 2019 02:58:38 GMT
ARG SWIFT_BRANCH=swift-5.0.1-release
# Wed, 19 Jun 2019 02:58:38 GMT
ARG SWIFT_VERSION=swift-5.0.1-RELEASE
# Wed, 19 Jun 2019 02:58:38 GMT
ENV SWIFT_PLATFORM=ubuntu18.04 SWIFT_BRANCH=swift-5.0.1-release SWIFT_VERSION=swift-5.0.1-RELEASE
# Wed, 19 Jun 2019 02:59:51 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && apt-get update     && apt-get install -y curl     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && apt-get purge -y curl     && apt-get -y autoremove     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           A62AE125BBBFBB96A6E042EC925CC1CCED3D1561         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 19 Jun 2019 02:59:52 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:5b7339215d1d5f8e68622d584a224f60339f5bef41dbd74330d081e912f0cddd`  
		Last Modified: Thu, 13 Jun 2019 00:24:57 GMT  
		Size: 26.7 MB (26684508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ca88e9f6723ce82bc14b241cda8634f6d19677184691d086662641ab96fe68`  
		Last Modified: Tue, 18 Jun 2019 22:53:58 GMT  
		Size: 35.4 KB (35352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31c3b1caad473a474d574283741f880e37c708cc06ee620d3e93fa602125ee0`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a26005b7f3b032577f811421fab5ec3b42ce45a4012dfa00cf6ed6191b0f`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4165913364cf00f185d124aa8335ace375de3e1ca3b6298816bb376ef2a2c48a`  
		Last Modified: Wed, 19 Jun 2019 03:08:09 GMT  
		Size: 117.5 MB (117543691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9389153ca2bb412b4c1392a0ab2b81ba5839fbcaa2da2ec8d7ba115ad489bb`  
		Last Modified: Wed, 19 Jun 2019 03:08:42 GMT  
		Size: 318.1 MB (318122061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swift:5.0.1`

```console
$ docker pull swift@sha256:2f6451d66ffd2bedd71575a8b5e2e15d2a2491537aa53eddb2e602e029dc249f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:5.0.1` - linux; amd64

```console
$ docker pull swift@sha256:c42a0d2181c051d6e72502e2cb02766e97b036dc4773e20a5a7afd8458ec46ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.4 MB (462386623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc0d914ebd9aaece2c1a626c719a7dace83fbbca0868fca59da9ae49ac02a17`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:51:33 GMT
ADD file:4e6b5d9ca371eb881c581574b8dc4f5391eff2872db364af0f8d9804e4890098 in / 
# Tue, 18 Jun 2019 22:51:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:51:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:51:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:51:38 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:57:55 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@swift.org>
# Wed, 19 Jun 2019 02:57:55 GMT
LABEL Description=Docker Container for the Swift programming language
# Wed, 19 Jun 2019 02:58:37 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libatomic1     libbsd0     libcurl4     libxml2     libedit2     libsqlite3-0     libc6-dev     binutils     libgcc-5-dev     libstdc++-5-dev     libpython2.7     tzdata     git     pkg-config     && rm -r /var/lib/apt/lists/*
# Wed, 19 Jun 2019 02:58:38 GMT
ARG SWIFT_PLATFORM=ubuntu18.04
# Wed, 19 Jun 2019 02:58:38 GMT
ARG SWIFT_BRANCH=swift-5.0.1-release
# Wed, 19 Jun 2019 02:58:38 GMT
ARG SWIFT_VERSION=swift-5.0.1-RELEASE
# Wed, 19 Jun 2019 02:58:38 GMT
ENV SWIFT_PLATFORM=ubuntu18.04 SWIFT_BRANCH=swift-5.0.1-release SWIFT_VERSION=swift-5.0.1-RELEASE
# Wed, 19 Jun 2019 02:59:51 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && apt-get update     && apt-get install -y curl     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && apt-get purge -y curl     && apt-get -y autoremove     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           A62AE125BBBFBB96A6E042EC925CC1CCED3D1561         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 19 Jun 2019 02:59:52 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:5b7339215d1d5f8e68622d584a224f60339f5bef41dbd74330d081e912f0cddd`  
		Last Modified: Thu, 13 Jun 2019 00:24:57 GMT  
		Size: 26.7 MB (26684508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ca88e9f6723ce82bc14b241cda8634f6d19677184691d086662641ab96fe68`  
		Last Modified: Tue, 18 Jun 2019 22:53:58 GMT  
		Size: 35.4 KB (35352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31c3b1caad473a474d574283741f880e37c708cc06ee620d3e93fa602125ee0`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a26005b7f3b032577f811421fab5ec3b42ce45a4012dfa00cf6ed6191b0f`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4165913364cf00f185d124aa8335ace375de3e1ca3b6298816bb376ef2a2c48a`  
		Last Modified: Wed, 19 Jun 2019 03:08:09 GMT  
		Size: 117.5 MB (117543691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9389153ca2bb412b4c1392a0ab2b81ba5839fbcaa2da2ec8d7ba115ad489bb`  
		Last Modified: Wed, 19 Jun 2019 03:08:42 GMT  
		Size: 318.1 MB (318122061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swift:5.0.1-bionic`

```console
$ docker pull swift@sha256:2f6451d66ffd2bedd71575a8b5e2e15d2a2491537aa53eddb2e602e029dc249f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:5.0.1-bionic` - linux; amd64

```console
$ docker pull swift@sha256:c42a0d2181c051d6e72502e2cb02766e97b036dc4773e20a5a7afd8458ec46ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.4 MB (462386623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc0d914ebd9aaece2c1a626c719a7dace83fbbca0868fca59da9ae49ac02a17`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:51:33 GMT
ADD file:4e6b5d9ca371eb881c581574b8dc4f5391eff2872db364af0f8d9804e4890098 in / 
# Tue, 18 Jun 2019 22:51:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:51:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:51:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:51:38 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:57:55 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@swift.org>
# Wed, 19 Jun 2019 02:57:55 GMT
LABEL Description=Docker Container for the Swift programming language
# Wed, 19 Jun 2019 02:58:37 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libatomic1     libbsd0     libcurl4     libxml2     libedit2     libsqlite3-0     libc6-dev     binutils     libgcc-5-dev     libstdc++-5-dev     libpython2.7     tzdata     git     pkg-config     && rm -r /var/lib/apt/lists/*
# Wed, 19 Jun 2019 02:58:38 GMT
ARG SWIFT_PLATFORM=ubuntu18.04
# Wed, 19 Jun 2019 02:58:38 GMT
ARG SWIFT_BRANCH=swift-5.0.1-release
# Wed, 19 Jun 2019 02:58:38 GMT
ARG SWIFT_VERSION=swift-5.0.1-RELEASE
# Wed, 19 Jun 2019 02:58:38 GMT
ENV SWIFT_PLATFORM=ubuntu18.04 SWIFT_BRANCH=swift-5.0.1-release SWIFT_VERSION=swift-5.0.1-RELEASE
# Wed, 19 Jun 2019 02:59:51 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && apt-get update     && apt-get install -y curl     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && apt-get purge -y curl     && apt-get -y autoremove     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           A62AE125BBBFBB96A6E042EC925CC1CCED3D1561         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 19 Jun 2019 02:59:52 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:5b7339215d1d5f8e68622d584a224f60339f5bef41dbd74330d081e912f0cddd`  
		Last Modified: Thu, 13 Jun 2019 00:24:57 GMT  
		Size: 26.7 MB (26684508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ca88e9f6723ce82bc14b241cda8634f6d19677184691d086662641ab96fe68`  
		Last Modified: Tue, 18 Jun 2019 22:53:58 GMT  
		Size: 35.4 KB (35352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31c3b1caad473a474d574283741f880e37c708cc06ee620d3e93fa602125ee0`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a26005b7f3b032577f811421fab5ec3b42ce45a4012dfa00cf6ed6191b0f`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4165913364cf00f185d124aa8335ace375de3e1ca3b6298816bb376ef2a2c48a`  
		Last Modified: Wed, 19 Jun 2019 03:08:09 GMT  
		Size: 117.5 MB (117543691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9389153ca2bb412b4c1392a0ab2b81ba5839fbcaa2da2ec8d7ba115ad489bb`  
		Last Modified: Wed, 19 Jun 2019 03:08:42 GMT  
		Size: 318.1 MB (318122061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swift:5.0.1-xenial`

```console
$ docker pull swift@sha256:a6684a21579ec949918b3525280570c436f1af6c14b20ba34b8c52c5b058e4b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:5.0.1-xenial` - linux; amd64

```console
$ docker pull swift@sha256:f71951737d39112b196c67db0ae1b41d3c6859ddcfe6f5f17098e3cdc895171c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **477.2 MB (477208539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d7c47193901b5a0c5319b51dc8d96c0d29dc8bd08e3f89ea80b14515a3ccf1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 03:00:09 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@swift.org>
# Wed, 19 Jun 2019 03:00:10 GMT
LABEL Description=Docker Container for the Swift programming language
# Wed, 19 Jun 2019 03:00:51 GMT
RUN apt-get -q update &&     apt-get -q install -y     libatomic1     libbsd0     libcurl3     libxml2     libedit2     libsqlite3-0     libc6-dev     binutils     libgcc-5-dev     libstdc++-5-dev     libpython2.7     tzdata     git     pkg-config     && rm -r /var/lib/apt/lists/*
# Wed, 19 Jun 2019 03:00:52 GMT
ARG SWIFT_PLATFORM=ubuntu16.04
# Wed, 19 Jun 2019 03:00:52 GMT
ARG SWIFT_BRANCH=swift-5.0.1-release
# Wed, 19 Jun 2019 03:00:52 GMT
ARG SWIFT_VERSION=swift-5.0.1-RELEASE
# Wed, 19 Jun 2019 03:00:52 GMT
ENV SWIFT_PLATFORM=ubuntu16.04 SWIFT_BRANCH=swift-5.0.1-release SWIFT_VERSION=swift-5.0.1-RELEASE
# Wed, 19 Jun 2019 03:01:56 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && apt-get -q update     && apt-get -q install -y curl     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && apt-get purge -y curl     && apt-get -y autoremove     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           A62AE125BBBFBB96A6E042EC925CC1CCED3D1561         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 19 Jun 2019 03:02:02 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0e643d5b2b5a54c905c1e84834b4fc1449158b2d58c947f3105926103cda87`  
		Last Modified: Wed, 19 Jun 2019 03:09:26 GMT  
		Size: 111.4 MB (111408638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d79a7a93b4438644af7364b24399ccd68ab6ca80bb15851d3e305878888d9a`  
		Last Modified: Wed, 19 Jun 2019 03:10:04 GMT  
		Size: 322.0 MB (321960595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swift:5.0-bionic`

```console
$ docker pull swift@sha256:2f6451d66ffd2bedd71575a8b5e2e15d2a2491537aa53eddb2e602e029dc249f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:5.0-bionic` - linux; amd64

```console
$ docker pull swift@sha256:c42a0d2181c051d6e72502e2cb02766e97b036dc4773e20a5a7afd8458ec46ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.4 MB (462386623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc0d914ebd9aaece2c1a626c719a7dace83fbbca0868fca59da9ae49ac02a17`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:51:33 GMT
ADD file:4e6b5d9ca371eb881c581574b8dc4f5391eff2872db364af0f8d9804e4890098 in / 
# Tue, 18 Jun 2019 22:51:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:51:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:51:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:51:38 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:57:55 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@swift.org>
# Wed, 19 Jun 2019 02:57:55 GMT
LABEL Description=Docker Container for the Swift programming language
# Wed, 19 Jun 2019 02:58:37 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libatomic1     libbsd0     libcurl4     libxml2     libedit2     libsqlite3-0     libc6-dev     binutils     libgcc-5-dev     libstdc++-5-dev     libpython2.7     tzdata     git     pkg-config     && rm -r /var/lib/apt/lists/*
# Wed, 19 Jun 2019 02:58:38 GMT
ARG SWIFT_PLATFORM=ubuntu18.04
# Wed, 19 Jun 2019 02:58:38 GMT
ARG SWIFT_BRANCH=swift-5.0.1-release
# Wed, 19 Jun 2019 02:58:38 GMT
ARG SWIFT_VERSION=swift-5.0.1-RELEASE
# Wed, 19 Jun 2019 02:58:38 GMT
ENV SWIFT_PLATFORM=ubuntu18.04 SWIFT_BRANCH=swift-5.0.1-release SWIFT_VERSION=swift-5.0.1-RELEASE
# Wed, 19 Jun 2019 02:59:51 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && apt-get update     && apt-get install -y curl     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && apt-get purge -y curl     && apt-get -y autoremove     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           A62AE125BBBFBB96A6E042EC925CC1CCED3D1561         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 19 Jun 2019 02:59:52 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:5b7339215d1d5f8e68622d584a224f60339f5bef41dbd74330d081e912f0cddd`  
		Last Modified: Thu, 13 Jun 2019 00:24:57 GMT  
		Size: 26.7 MB (26684508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ca88e9f6723ce82bc14b241cda8634f6d19677184691d086662641ab96fe68`  
		Last Modified: Tue, 18 Jun 2019 22:53:58 GMT  
		Size: 35.4 KB (35352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31c3b1caad473a474d574283741f880e37c708cc06ee620d3e93fa602125ee0`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a26005b7f3b032577f811421fab5ec3b42ce45a4012dfa00cf6ed6191b0f`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4165913364cf00f185d124aa8335ace375de3e1ca3b6298816bb376ef2a2c48a`  
		Last Modified: Wed, 19 Jun 2019 03:08:09 GMT  
		Size: 117.5 MB (117543691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9389153ca2bb412b4c1392a0ab2b81ba5839fbcaa2da2ec8d7ba115ad489bb`  
		Last Modified: Wed, 19 Jun 2019 03:08:42 GMT  
		Size: 318.1 MB (318122061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swift:5.0-xenial`

```console
$ docker pull swift@sha256:a6684a21579ec949918b3525280570c436f1af6c14b20ba34b8c52c5b058e4b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:5.0-xenial` - linux; amd64

```console
$ docker pull swift@sha256:f71951737d39112b196c67db0ae1b41d3c6859ddcfe6f5f17098e3cdc895171c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **477.2 MB (477208539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d7c47193901b5a0c5319b51dc8d96c0d29dc8bd08e3f89ea80b14515a3ccf1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 03:00:09 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@swift.org>
# Wed, 19 Jun 2019 03:00:10 GMT
LABEL Description=Docker Container for the Swift programming language
# Wed, 19 Jun 2019 03:00:51 GMT
RUN apt-get -q update &&     apt-get -q install -y     libatomic1     libbsd0     libcurl3     libxml2     libedit2     libsqlite3-0     libc6-dev     binutils     libgcc-5-dev     libstdc++-5-dev     libpython2.7     tzdata     git     pkg-config     && rm -r /var/lib/apt/lists/*
# Wed, 19 Jun 2019 03:00:52 GMT
ARG SWIFT_PLATFORM=ubuntu16.04
# Wed, 19 Jun 2019 03:00:52 GMT
ARG SWIFT_BRANCH=swift-5.0.1-release
# Wed, 19 Jun 2019 03:00:52 GMT
ARG SWIFT_VERSION=swift-5.0.1-RELEASE
# Wed, 19 Jun 2019 03:00:52 GMT
ENV SWIFT_PLATFORM=ubuntu16.04 SWIFT_BRANCH=swift-5.0.1-release SWIFT_VERSION=swift-5.0.1-RELEASE
# Wed, 19 Jun 2019 03:01:56 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && apt-get -q update     && apt-get -q install -y curl     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && apt-get purge -y curl     && apt-get -y autoremove     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           A62AE125BBBFBB96A6E042EC925CC1CCED3D1561         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 19 Jun 2019 03:02:02 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0e643d5b2b5a54c905c1e84834b4fc1449158b2d58c947f3105926103cda87`  
		Last Modified: Wed, 19 Jun 2019 03:09:26 GMT  
		Size: 111.4 MB (111408638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d79a7a93b4438644af7364b24399ccd68ab6ca80bb15851d3e305878888d9a`  
		Last Modified: Wed, 19 Jun 2019 03:10:04 GMT  
		Size: 322.0 MB (321960595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swift:bionic`

```console
$ docker pull swift@sha256:2f6451d66ffd2bedd71575a8b5e2e15d2a2491537aa53eddb2e602e029dc249f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:bionic` - linux; amd64

```console
$ docker pull swift@sha256:c42a0d2181c051d6e72502e2cb02766e97b036dc4773e20a5a7afd8458ec46ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.4 MB (462386623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc0d914ebd9aaece2c1a626c719a7dace83fbbca0868fca59da9ae49ac02a17`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:51:33 GMT
ADD file:4e6b5d9ca371eb881c581574b8dc4f5391eff2872db364af0f8d9804e4890098 in / 
# Tue, 18 Jun 2019 22:51:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:51:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:51:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:51:38 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:57:55 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@swift.org>
# Wed, 19 Jun 2019 02:57:55 GMT
LABEL Description=Docker Container for the Swift programming language
# Wed, 19 Jun 2019 02:58:37 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libatomic1     libbsd0     libcurl4     libxml2     libedit2     libsqlite3-0     libc6-dev     binutils     libgcc-5-dev     libstdc++-5-dev     libpython2.7     tzdata     git     pkg-config     && rm -r /var/lib/apt/lists/*
# Wed, 19 Jun 2019 02:58:38 GMT
ARG SWIFT_PLATFORM=ubuntu18.04
# Wed, 19 Jun 2019 02:58:38 GMT
ARG SWIFT_BRANCH=swift-5.0.1-release
# Wed, 19 Jun 2019 02:58:38 GMT
ARG SWIFT_VERSION=swift-5.0.1-RELEASE
# Wed, 19 Jun 2019 02:58:38 GMT
ENV SWIFT_PLATFORM=ubuntu18.04 SWIFT_BRANCH=swift-5.0.1-release SWIFT_VERSION=swift-5.0.1-RELEASE
# Wed, 19 Jun 2019 02:59:51 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && apt-get update     && apt-get install -y curl     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && apt-get purge -y curl     && apt-get -y autoremove     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           A62AE125BBBFBB96A6E042EC925CC1CCED3D1561         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 19 Jun 2019 02:59:52 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:5b7339215d1d5f8e68622d584a224f60339f5bef41dbd74330d081e912f0cddd`  
		Last Modified: Thu, 13 Jun 2019 00:24:57 GMT  
		Size: 26.7 MB (26684508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ca88e9f6723ce82bc14b241cda8634f6d19677184691d086662641ab96fe68`  
		Last Modified: Tue, 18 Jun 2019 22:53:58 GMT  
		Size: 35.4 KB (35352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31c3b1caad473a474d574283741f880e37c708cc06ee620d3e93fa602125ee0`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a26005b7f3b032577f811421fab5ec3b42ce45a4012dfa00cf6ed6191b0f`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4165913364cf00f185d124aa8335ace375de3e1ca3b6298816bb376ef2a2c48a`  
		Last Modified: Wed, 19 Jun 2019 03:08:09 GMT  
		Size: 117.5 MB (117543691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9389153ca2bb412b4c1392a0ab2b81ba5839fbcaa2da2ec8d7ba115ad489bb`  
		Last Modified: Wed, 19 Jun 2019 03:08:42 GMT  
		Size: 318.1 MB (318122061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swift:latest`

```console
$ docker pull swift@sha256:2f6451d66ffd2bedd71575a8b5e2e15d2a2491537aa53eddb2e602e029dc249f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:latest` - linux; amd64

```console
$ docker pull swift@sha256:c42a0d2181c051d6e72502e2cb02766e97b036dc4773e20a5a7afd8458ec46ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.4 MB (462386623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc0d914ebd9aaece2c1a626c719a7dace83fbbca0868fca59da9ae49ac02a17`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:51:33 GMT
ADD file:4e6b5d9ca371eb881c581574b8dc4f5391eff2872db364af0f8d9804e4890098 in / 
# Tue, 18 Jun 2019 22:51:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:51:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:51:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:51:38 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:57:55 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@swift.org>
# Wed, 19 Jun 2019 02:57:55 GMT
LABEL Description=Docker Container for the Swift programming language
# Wed, 19 Jun 2019 02:58:37 GMT
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get -q update &&     apt-get -q install -y     libatomic1     libbsd0     libcurl4     libxml2     libedit2     libsqlite3-0     libc6-dev     binutils     libgcc-5-dev     libstdc++-5-dev     libpython2.7     tzdata     git     pkg-config     && rm -r /var/lib/apt/lists/*
# Wed, 19 Jun 2019 02:58:38 GMT
ARG SWIFT_PLATFORM=ubuntu18.04
# Wed, 19 Jun 2019 02:58:38 GMT
ARG SWIFT_BRANCH=swift-5.0.1-release
# Wed, 19 Jun 2019 02:58:38 GMT
ARG SWIFT_VERSION=swift-5.0.1-RELEASE
# Wed, 19 Jun 2019 02:58:38 GMT
ENV SWIFT_PLATFORM=ubuntu18.04 SWIFT_BRANCH=swift-5.0.1-release SWIFT_VERSION=swift-5.0.1-RELEASE
# Wed, 19 Jun 2019 02:59:51 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && apt-get update     && apt-get install -y curl     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && apt-get purge -y curl     && apt-get -y autoremove     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           A62AE125BBBFBB96A6E042EC925CC1CCED3D1561         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 19 Jun 2019 02:59:52 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:5b7339215d1d5f8e68622d584a224f60339f5bef41dbd74330d081e912f0cddd`  
		Last Modified: Thu, 13 Jun 2019 00:24:57 GMT  
		Size: 26.7 MB (26684508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ca88e9f6723ce82bc14b241cda8634f6d19677184691d086662641ab96fe68`  
		Last Modified: Tue, 18 Jun 2019 22:53:58 GMT  
		Size: 35.4 KB (35352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31c3b1caad473a474d574283741f880e37c708cc06ee620d3e93fa602125ee0`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a26005b7f3b032577f811421fab5ec3b42ce45a4012dfa00cf6ed6191b0f`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4165913364cf00f185d124aa8335ace375de3e1ca3b6298816bb376ef2a2c48a`  
		Last Modified: Wed, 19 Jun 2019 03:08:09 GMT  
		Size: 117.5 MB (117543691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9389153ca2bb412b4c1392a0ab2b81ba5839fbcaa2da2ec8d7ba115ad489bb`  
		Last Modified: Wed, 19 Jun 2019 03:08:42 GMT  
		Size: 318.1 MB (318122061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swift:xenial`

```console
$ docker pull swift@sha256:a6684a21579ec949918b3525280570c436f1af6c14b20ba34b8c52c5b058e4b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:xenial` - linux; amd64

```console
$ docker pull swift@sha256:f71951737d39112b196c67db0ae1b41d3c6859ddcfe6f5f17098e3cdc895171c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **477.2 MB (477208539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d7c47193901b5a0c5319b51dc8d96c0d29dc8bd08e3f89ea80b14515a3ccf1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 03:00:09 GMT
LABEL maintainer=Swift Infrastructure <swift-infrastructure@swift.org>
# Wed, 19 Jun 2019 03:00:10 GMT
LABEL Description=Docker Container for the Swift programming language
# Wed, 19 Jun 2019 03:00:51 GMT
RUN apt-get -q update &&     apt-get -q install -y     libatomic1     libbsd0     libcurl3     libxml2     libedit2     libsqlite3-0     libc6-dev     binutils     libgcc-5-dev     libstdc++-5-dev     libpython2.7     tzdata     git     pkg-config     && rm -r /var/lib/apt/lists/*
# Wed, 19 Jun 2019 03:00:52 GMT
ARG SWIFT_PLATFORM=ubuntu16.04
# Wed, 19 Jun 2019 03:00:52 GMT
ARG SWIFT_BRANCH=swift-5.0.1-release
# Wed, 19 Jun 2019 03:00:52 GMT
ARG SWIFT_VERSION=swift-5.0.1-RELEASE
# Wed, 19 Jun 2019 03:00:52 GMT
ENV SWIFT_PLATFORM=ubuntu16.04 SWIFT_BRANCH=swift-5.0.1-release SWIFT_VERSION=swift-5.0.1-RELEASE
# Wed, 19 Jun 2019 03:01:56 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && apt-get -q update     && apt-get -q install -y curl     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && apt-get purge -y curl     && apt-get -y autoremove     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           A62AE125BBBFBB96A6E042EC925CC1CCED3D1561         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 19 Jun 2019 03:02:02 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0e643d5b2b5a54c905c1e84834b4fc1449158b2d58c947f3105926103cda87`  
		Last Modified: Wed, 19 Jun 2019 03:09:26 GMT  
		Size: 111.4 MB (111408638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d79a7a93b4438644af7364b24399ccd68ab6ca80bb15851d3e305878888d9a`  
		Last Modified: Wed, 19 Jun 2019 03:10:04 GMT  
		Size: 322.0 MB (321960595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
