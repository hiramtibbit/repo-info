## `swift:latest`

```console
$ docker pull swift@sha256:d4229458a50d200005adde7121d07fed14460614a7d64d18c2053a2ff8edbbf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swift:latest` - linux; amd64

```console
$ docker pull swift@sha256:1b436327bf25dea50e8204c1c7a28f9679b235dbcc10aec80fe80d7d1da2cc12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.0 MB (450972399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9481a9e5ed4de80e6670df73b891e754f580bb7c8e9a884d86da2a8b19d07d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:21:00 GMT
LABEL maintainer=Haris Amin <aminharis7@gmail.com>
# Wed, 22 Aug 2018 18:21:01 GMT
LABEL Description=Docker Container for the Apple's Swift programming language
# Wed, 22 Aug 2018 18:22:32 GMT
RUN apt-get -q update &&     apt-get -q install -y     make     libc6-dev     clang-3.8     curl     libedit-dev     libpython2.7     libicu-dev     libssl-dev     libxml2     tzdata     git     libcurl4-openssl-dev     pkg-config     && update-alternatives --quiet --install /usr/bin/clang clang /usr/bin/clang-3.8 100     && update-alternatives --quiet --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.8 100     && rm -r /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:22:33 GMT
ARG SWIFT_PLATFORM=ubuntu16.04
# Wed, 22 Aug 2018 18:22:34 GMT
ARG SWIFT_BRANCH=swift-4.1.3-release
# Wed, 22 Aug 2018 18:22:34 GMT
ARG SWIFT_VERSION=swift-4.1.3-RELEASE
# Wed, 22 Aug 2018 18:22:34 GMT
ENV SWIFT_PLATFORM=ubuntu16.04 SWIFT_BRANCH=swift-4.1.3-release SWIFT_VERSION=swift-4.1.3-RELEASE
# Wed, 22 Aug 2018 18:23:12 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           8513444E2DA36B7C1659AF4D7638F1FB2B2B08C4           A3BAFD3556A59079C06894BD63BC1CFE91D306C6           5E4DF843FB065D7F7E24FBA2EF5430F071E1B235         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift
# Wed, 22 Aug 2018 18:23:13 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7f6f7a0a2161a21d2987eb7c83b4183ce3b753cf38ce0b920c383cf20ba496`  
		Last Modified: Wed, 22 Aug 2018 18:27:58 GMT  
		Size: 224.5 MB (224485132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ef35434d6e03c48a970ac535c3a5ea005ce6a661ad4a90fe3447abebbce7c6`  
		Last Modified: Wed, 22 Aug 2018 18:27:50 GMT  
		Size: 183.2 MB (183232276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
