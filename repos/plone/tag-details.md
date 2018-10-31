<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `plone`

-	[`plone:4`](#plone4)
-	[`plone:4.3`](#plone43)
-	[`plone:4.3.18`](#plone4318)
-	[`plone:4.3.18-alpine`](#plone4318-alpine)
-	[`plone:4.3-alpine`](#plone43-alpine)
-	[`plone:4-alpine`](#plone4-alpine)
-	[`plone:5`](#plone5)
-	[`plone:5.1`](#plone51)
-	[`plone:5.1.4`](#plone514)
-	[`plone:5.1.4-alpine`](#plone514-alpine)
-	[`plone:5.1-alpine`](#plone51-alpine)
-	[`plone:5-alpine`](#plone5-alpine)
-	[`plone:alpine`](#plonealpine)
-	[`plone:latest`](#plonelatest)

## `plone:4`

```console
$ docker pull plone@sha256:677c99c5905c734f3a72bfe3778037b37eb16d8fd119539011b0e114c1235427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:4` - linux; amd64

```console
$ docker pull plone@sha256:a8512e11e41e77de2e04a940304a6cf0c5aa824abef73f7c1ff0cff622ab966e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151440773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9302cd8797e0f1f5c42f254e3444c77bbc0e800b28a7c27af860fad7782e74`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:12:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 07:12:25 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 08:00:18 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 16 Oct 2018 08:00:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:00:35 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 16 Oct 2018 08:00:36 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 16 Oct 2018 08:04:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 16 Oct 2018 08:04:02 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 16 Oct 2018 08:04:19 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 16 Oct 2018 08:04:20 GMT
CMD ["python2"]
# Wed, 31 Oct 2018 00:41:26 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Wed, 31 Oct 2018 00:41:26 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 31 Oct 2018 00:41:27 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 31 Oct 2018 00:41:27 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Wed, 31 Oct 2018 00:49:12 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 31 Oct 2018 00:49:16 GMT
VOLUME [/data]
# Wed, 31 Oct 2018 00:49:17 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Wed, 31 Oct 2018 00:49:17 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 00:49:18 GMT
WORKDIR /plone/instance
# Wed, 31 Oct 2018 00:49:18 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 31 Oct 2018 00:49:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 00:49:19 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7429ec5d1bbc0d3eb4e4f04fddb9fc56c80365b42fa8e5f6c74e33337584fc15`  
		Last Modified: Tue, 16 Oct 2018 08:33:41 GMT  
		Size: 2.5 MB (2516904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b34d043e88737962d7bde11ea171018cc3cb16af886bfe0a0621a9c43f2d6e`  
		Last Modified: Tue, 16 Oct 2018 08:33:46 GMT  
		Size: 17.1 MB (17100605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d33f4617f37cb6b69706c9aac222151c5aeffe59e5b00006891fe6d6781edd`  
		Last Modified: Tue, 16 Oct 2018 08:33:41 GMT  
		Size: 2.1 MB (2059838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81233cf3df8fa2321906e46704057623a01cf639b61e3da6bd06bf882417546`  
		Last Modified: Wed, 31 Oct 2018 01:07:16 GMT  
		Size: 3.9 KB (3886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456c20a859b6cf540e48376c1f58ededf0000d653b2f2b884dbf6aeb2f833c17`  
		Last Modified: Wed, 31 Oct 2018 01:07:16 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b173ab22497f226ff35fc7061f7f1c52a369092a1c52b04d47ec59d1d1e4b6e`  
		Last Modified: Wed, 31 Oct 2018 01:07:54 GMT  
		Size: 107.3 MB (107270576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb91d2849d244f1bb556a192bca982686b285b04b858d36f340862c3982e7e2a`  
		Last Modified: Wed, 31 Oct 2018 01:07:16 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3`

```console
$ docker pull plone@sha256:677c99c5905c734f3a72bfe3778037b37eb16d8fd119539011b0e114c1235427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:4.3` - linux; amd64

```console
$ docker pull plone@sha256:a8512e11e41e77de2e04a940304a6cf0c5aa824abef73f7c1ff0cff622ab966e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151440773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9302cd8797e0f1f5c42f254e3444c77bbc0e800b28a7c27af860fad7782e74`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:12:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 07:12:25 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 08:00:18 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 16 Oct 2018 08:00:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:00:35 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 16 Oct 2018 08:00:36 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 16 Oct 2018 08:04:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 16 Oct 2018 08:04:02 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 16 Oct 2018 08:04:19 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 16 Oct 2018 08:04:20 GMT
CMD ["python2"]
# Wed, 31 Oct 2018 00:41:26 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Wed, 31 Oct 2018 00:41:26 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 31 Oct 2018 00:41:27 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 31 Oct 2018 00:41:27 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Wed, 31 Oct 2018 00:49:12 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 31 Oct 2018 00:49:16 GMT
VOLUME [/data]
# Wed, 31 Oct 2018 00:49:17 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Wed, 31 Oct 2018 00:49:17 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 00:49:18 GMT
WORKDIR /plone/instance
# Wed, 31 Oct 2018 00:49:18 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 31 Oct 2018 00:49:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 00:49:19 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7429ec5d1bbc0d3eb4e4f04fddb9fc56c80365b42fa8e5f6c74e33337584fc15`  
		Last Modified: Tue, 16 Oct 2018 08:33:41 GMT  
		Size: 2.5 MB (2516904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b34d043e88737962d7bde11ea171018cc3cb16af886bfe0a0621a9c43f2d6e`  
		Last Modified: Tue, 16 Oct 2018 08:33:46 GMT  
		Size: 17.1 MB (17100605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d33f4617f37cb6b69706c9aac222151c5aeffe59e5b00006891fe6d6781edd`  
		Last Modified: Tue, 16 Oct 2018 08:33:41 GMT  
		Size: 2.1 MB (2059838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81233cf3df8fa2321906e46704057623a01cf639b61e3da6bd06bf882417546`  
		Last Modified: Wed, 31 Oct 2018 01:07:16 GMT  
		Size: 3.9 KB (3886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456c20a859b6cf540e48376c1f58ededf0000d653b2f2b884dbf6aeb2f833c17`  
		Last Modified: Wed, 31 Oct 2018 01:07:16 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b173ab22497f226ff35fc7061f7f1c52a369092a1c52b04d47ec59d1d1e4b6e`  
		Last Modified: Wed, 31 Oct 2018 01:07:54 GMT  
		Size: 107.3 MB (107270576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb91d2849d244f1bb556a192bca982686b285b04b858d36f340862c3982e7e2a`  
		Last Modified: Wed, 31 Oct 2018 01:07:16 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.18`

```console
$ docker pull plone@sha256:677c99c5905c734f3a72bfe3778037b37eb16d8fd119539011b0e114c1235427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:4.3.18` - linux; amd64

```console
$ docker pull plone@sha256:a8512e11e41e77de2e04a940304a6cf0c5aa824abef73f7c1ff0cff622ab966e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151440773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9302cd8797e0f1f5c42f254e3444c77bbc0e800b28a7c27af860fad7782e74`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:12:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 07:12:25 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 08:00:18 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 16 Oct 2018 08:00:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:00:35 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 16 Oct 2018 08:00:36 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 16 Oct 2018 08:04:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 16 Oct 2018 08:04:02 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 16 Oct 2018 08:04:19 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 16 Oct 2018 08:04:20 GMT
CMD ["python2"]
# Wed, 31 Oct 2018 00:41:26 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Wed, 31 Oct 2018 00:41:26 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 31 Oct 2018 00:41:27 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 31 Oct 2018 00:41:27 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Wed, 31 Oct 2018 00:49:12 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 31 Oct 2018 00:49:16 GMT
VOLUME [/data]
# Wed, 31 Oct 2018 00:49:17 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Wed, 31 Oct 2018 00:49:17 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 00:49:18 GMT
WORKDIR /plone/instance
# Wed, 31 Oct 2018 00:49:18 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 31 Oct 2018 00:49:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 00:49:19 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7429ec5d1bbc0d3eb4e4f04fddb9fc56c80365b42fa8e5f6c74e33337584fc15`  
		Last Modified: Tue, 16 Oct 2018 08:33:41 GMT  
		Size: 2.5 MB (2516904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b34d043e88737962d7bde11ea171018cc3cb16af886bfe0a0621a9c43f2d6e`  
		Last Modified: Tue, 16 Oct 2018 08:33:46 GMT  
		Size: 17.1 MB (17100605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d33f4617f37cb6b69706c9aac222151c5aeffe59e5b00006891fe6d6781edd`  
		Last Modified: Tue, 16 Oct 2018 08:33:41 GMT  
		Size: 2.1 MB (2059838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81233cf3df8fa2321906e46704057623a01cf639b61e3da6bd06bf882417546`  
		Last Modified: Wed, 31 Oct 2018 01:07:16 GMT  
		Size: 3.9 KB (3886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:456c20a859b6cf540e48376c1f58ededf0000d653b2f2b884dbf6aeb2f833c17`  
		Last Modified: Wed, 31 Oct 2018 01:07:16 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b173ab22497f226ff35fc7061f7f1c52a369092a1c52b04d47ec59d1d1e4b6e`  
		Last Modified: Wed, 31 Oct 2018 01:07:54 GMT  
		Size: 107.3 MB (107270576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb91d2849d244f1bb556a192bca982686b285b04b858d36f340862c3982e7e2a`  
		Last Modified: Wed, 31 Oct 2018 01:07:16 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.18-alpine`

```console
$ docker pull plone@sha256:a65098a412ee62514d71a7b08d68188d5cd657b108921efaefa882a905da560c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:4.3.18-alpine` - linux; amd64

```console
$ docker pull plone@sha256:d64df58623ceb19bff2a66e15694b1e446abfe4a3318863d2f413a591111c8c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101336658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a6b1ee57eb662c19d4b9b41c81624d709cb86e6fc5e2c38c814fb31561c4e2d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:16:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:10:16 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 02:39:46 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 02:39:47 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 02:39:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 02:39:47 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 02:42:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 09 Oct 2018 22:39:42 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:39:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 09 Oct 2018 22:39:47 GMT
CMD ["python2"]
# Wed, 31 Oct 2018 00:49:42 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Wed, 31 Oct 2018 00:49:53 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 31 Oct 2018 00:49:54 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 31 Oct 2018 00:49:54 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Wed, 31 Oct 2018 01:02:45 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 31 Oct 2018 01:02:51 GMT
VOLUME [/data]
# Wed, 31 Oct 2018 01:02:52 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Wed, 31 Oct 2018 01:02:52 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 01:02:52 GMT
WORKDIR /plone/instance
# Wed, 31 Oct 2018 01:02:53 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 31 Oct 2018 01:02:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 01:02:54 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa69c832a12b3a00775c938b0fa6e3ec3b0e007e2ba733fefbb9393ea96d78d`  
		Last Modified: Wed, 12 Sep 2018 02:52:48 GMT  
		Size: 308.3 KB (308310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0581302b23ff94d20dd0e9cca6426fd366af977be616943d196c5fcb2da4fb87`  
		Last Modified: Wed, 12 Sep 2018 02:52:53 GMT  
		Size: 17.7 MB (17678982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f88dc6218e6a2a3ca6c513586a91510c9efc9cba9ef1d8a4b7919d605d51996`  
		Last Modified: Tue, 09 Oct 2018 22:55:30 GMT  
		Size: 1.8 MB (1776861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfdf611814c9220ab4080118694692250328c8ed4549f41592cbf362df691aeb`  
		Last Modified: Wed, 31 Oct 2018 01:08:50 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0228128c0761e2ae9144918c1e375983772275886b9ecf5e92e07ccd50c90c30`  
		Last Modified: Wed, 31 Oct 2018 01:08:50 GMT  
		Size: 669.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8bcfa47edf1bbd8285d7723f4928f2a2591a7b62d71283188fadae769fce1b`  
		Last Modified: Wed, 31 Oct 2018 01:09:13 GMT  
		Size: 79.5 MB (79461079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6bf2c2bea6dc2cda6ee5baee198e0e462e088c33f566daab69fa05ccebb4623`  
		Last Modified: Wed, 31 Oct 2018 01:08:50 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3-alpine`

```console
$ docker pull plone@sha256:a65098a412ee62514d71a7b08d68188d5cd657b108921efaefa882a905da560c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:4.3-alpine` - linux; amd64

```console
$ docker pull plone@sha256:d64df58623ceb19bff2a66e15694b1e446abfe4a3318863d2f413a591111c8c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101336658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a6b1ee57eb662c19d4b9b41c81624d709cb86e6fc5e2c38c814fb31561c4e2d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:16:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:10:16 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 02:39:46 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 02:39:47 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 02:39:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 02:39:47 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 02:42:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 09 Oct 2018 22:39:42 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:39:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 09 Oct 2018 22:39:47 GMT
CMD ["python2"]
# Wed, 31 Oct 2018 00:49:42 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Wed, 31 Oct 2018 00:49:53 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 31 Oct 2018 00:49:54 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 31 Oct 2018 00:49:54 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Wed, 31 Oct 2018 01:02:45 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 31 Oct 2018 01:02:51 GMT
VOLUME [/data]
# Wed, 31 Oct 2018 01:02:52 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Wed, 31 Oct 2018 01:02:52 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 01:02:52 GMT
WORKDIR /plone/instance
# Wed, 31 Oct 2018 01:02:53 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 31 Oct 2018 01:02:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 01:02:54 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa69c832a12b3a00775c938b0fa6e3ec3b0e007e2ba733fefbb9393ea96d78d`  
		Last Modified: Wed, 12 Sep 2018 02:52:48 GMT  
		Size: 308.3 KB (308310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0581302b23ff94d20dd0e9cca6426fd366af977be616943d196c5fcb2da4fb87`  
		Last Modified: Wed, 12 Sep 2018 02:52:53 GMT  
		Size: 17.7 MB (17678982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f88dc6218e6a2a3ca6c513586a91510c9efc9cba9ef1d8a4b7919d605d51996`  
		Last Modified: Tue, 09 Oct 2018 22:55:30 GMT  
		Size: 1.8 MB (1776861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfdf611814c9220ab4080118694692250328c8ed4549f41592cbf362df691aeb`  
		Last Modified: Wed, 31 Oct 2018 01:08:50 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0228128c0761e2ae9144918c1e375983772275886b9ecf5e92e07ccd50c90c30`  
		Last Modified: Wed, 31 Oct 2018 01:08:50 GMT  
		Size: 669.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8bcfa47edf1bbd8285d7723f4928f2a2591a7b62d71283188fadae769fce1b`  
		Last Modified: Wed, 31 Oct 2018 01:09:13 GMT  
		Size: 79.5 MB (79461079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6bf2c2bea6dc2cda6ee5baee198e0e462e088c33f566daab69fa05ccebb4623`  
		Last Modified: Wed, 31 Oct 2018 01:08:50 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4-alpine`

```console
$ docker pull plone@sha256:a65098a412ee62514d71a7b08d68188d5cd657b108921efaefa882a905da560c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:4-alpine` - linux; amd64

```console
$ docker pull plone@sha256:d64df58623ceb19bff2a66e15694b1e446abfe4a3318863d2f413a591111c8c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101336658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a6b1ee57eb662c19d4b9b41c81624d709cb86e6fc5e2c38c814fb31561c4e2d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:16:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:10:16 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 02:39:46 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 02:39:47 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 02:39:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 02:39:47 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 02:42:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 09 Oct 2018 22:39:42 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:39:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 09 Oct 2018 22:39:47 GMT
CMD ["python2"]
# Wed, 31 Oct 2018 00:49:42 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Wed, 31 Oct 2018 00:49:53 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 31 Oct 2018 00:49:54 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 31 Oct 2018 00:49:54 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Wed, 31 Oct 2018 01:02:45 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 31 Oct 2018 01:02:51 GMT
VOLUME [/data]
# Wed, 31 Oct 2018 01:02:52 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Wed, 31 Oct 2018 01:02:52 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 01:02:52 GMT
WORKDIR /plone/instance
# Wed, 31 Oct 2018 01:02:53 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 31 Oct 2018 01:02:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 01:02:54 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa69c832a12b3a00775c938b0fa6e3ec3b0e007e2ba733fefbb9393ea96d78d`  
		Last Modified: Wed, 12 Sep 2018 02:52:48 GMT  
		Size: 308.3 KB (308310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0581302b23ff94d20dd0e9cca6426fd366af977be616943d196c5fcb2da4fb87`  
		Last Modified: Wed, 12 Sep 2018 02:52:53 GMT  
		Size: 17.7 MB (17678982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f88dc6218e6a2a3ca6c513586a91510c9efc9cba9ef1d8a4b7919d605d51996`  
		Last Modified: Tue, 09 Oct 2018 22:55:30 GMT  
		Size: 1.8 MB (1776861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfdf611814c9220ab4080118694692250328c8ed4549f41592cbf362df691aeb`  
		Last Modified: Wed, 31 Oct 2018 01:08:50 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0228128c0761e2ae9144918c1e375983772275886b9ecf5e92e07ccd50c90c30`  
		Last Modified: Wed, 31 Oct 2018 01:08:50 GMT  
		Size: 669.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8bcfa47edf1bbd8285d7723f4928f2a2591a7b62d71283188fadae769fce1b`  
		Last Modified: Wed, 31 Oct 2018 01:09:13 GMT  
		Size: 79.5 MB (79461079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6bf2c2bea6dc2cda6ee5baee198e0e462e088c33f566daab69fa05ccebb4623`  
		Last Modified: Wed, 31 Oct 2018 01:08:50 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5`

```console
$ docker pull plone@sha256:737ea973e5345a00e1551d71594af6d2ed3b2f67f832377d5dfc52ee65ae409b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5` - linux; amd64

```console
$ docker pull plone@sha256:0a0e029c17768ce8b2de775afa4db0516cb7db65c3a2582480ff68b011c7eed2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174127631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7f54112dfbff717d7ee8209cb24fb308d1158e07cd26d87c7dccc406fa94a6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:12:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 07:12:25 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 08:00:18 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 16 Oct 2018 08:00:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:00:35 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 16 Oct 2018 08:00:36 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 16 Oct 2018 08:04:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 16 Oct 2018 08:04:02 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 16 Oct 2018 08:04:19 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 16 Oct 2018 08:04:20 GMT
CMD ["python2"]
# Wed, 31 Oct 2018 00:26:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Wed, 31 Oct 2018 00:26:06 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 31 Oct 2018 00:26:07 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 31 Oct 2018 00:26:07 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Wed, 31 Oct 2018 00:31:56 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 31 Oct 2018 00:31:57 GMT
VOLUME [/data]
# Wed, 31 Oct 2018 00:31:58 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Wed, 31 Oct 2018 00:31:58 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 00:31:59 GMT
WORKDIR /plone/instance
# Wed, 31 Oct 2018 00:31:59 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 31 Oct 2018 00:31:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 00:32:00 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7429ec5d1bbc0d3eb4e4f04fddb9fc56c80365b42fa8e5f6c74e33337584fc15`  
		Last Modified: Tue, 16 Oct 2018 08:33:41 GMT  
		Size: 2.5 MB (2516904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b34d043e88737962d7bde11ea171018cc3cb16af886bfe0a0621a9c43f2d6e`  
		Last Modified: Tue, 16 Oct 2018 08:33:46 GMT  
		Size: 17.1 MB (17100605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d33f4617f37cb6b69706c9aac222151c5aeffe59e5b00006891fe6d6781edd`  
		Last Modified: Tue, 16 Oct 2018 08:33:41 GMT  
		Size: 2.1 MB (2059838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f897a61ed3d92e2b723e9b4960a75e67651892428400e5ac338c8e1c757429`  
		Last Modified: Wed, 31 Oct 2018 01:03:24 GMT  
		Size: 3.9 KB (3885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9a8ec59eb84a7659ba37165ca2d7e81ec3c06cfdff9ad8f61b0932d977862f`  
		Last Modified: Wed, 31 Oct 2018 01:03:24 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac06b88db6a7f397948b39e7b41672789389a3b24ade5b74e42ff9f65ef6cf4c`  
		Last Modified: Wed, 31 Oct 2018 01:04:05 GMT  
		Size: 130.0 MB (129957434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36dbee38013d9c326e8a06f63e8dd122b0f3989db3f98c072489de1310c4eb38`  
		Last Modified: Wed, 31 Oct 2018 01:03:24 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1`

```console
$ docker pull plone@sha256:737ea973e5345a00e1551d71594af6d2ed3b2f67f832377d5dfc52ee65ae409b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5.1` - linux; amd64

```console
$ docker pull plone@sha256:0a0e029c17768ce8b2de775afa4db0516cb7db65c3a2582480ff68b011c7eed2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174127631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7f54112dfbff717d7ee8209cb24fb308d1158e07cd26d87c7dccc406fa94a6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:12:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 07:12:25 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 08:00:18 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 16 Oct 2018 08:00:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:00:35 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 16 Oct 2018 08:00:36 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 16 Oct 2018 08:04:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 16 Oct 2018 08:04:02 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 16 Oct 2018 08:04:19 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 16 Oct 2018 08:04:20 GMT
CMD ["python2"]
# Wed, 31 Oct 2018 00:26:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Wed, 31 Oct 2018 00:26:06 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 31 Oct 2018 00:26:07 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 31 Oct 2018 00:26:07 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Wed, 31 Oct 2018 00:31:56 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 31 Oct 2018 00:31:57 GMT
VOLUME [/data]
# Wed, 31 Oct 2018 00:31:58 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Wed, 31 Oct 2018 00:31:58 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 00:31:59 GMT
WORKDIR /plone/instance
# Wed, 31 Oct 2018 00:31:59 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 31 Oct 2018 00:31:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 00:32:00 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7429ec5d1bbc0d3eb4e4f04fddb9fc56c80365b42fa8e5f6c74e33337584fc15`  
		Last Modified: Tue, 16 Oct 2018 08:33:41 GMT  
		Size: 2.5 MB (2516904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b34d043e88737962d7bde11ea171018cc3cb16af886bfe0a0621a9c43f2d6e`  
		Last Modified: Tue, 16 Oct 2018 08:33:46 GMT  
		Size: 17.1 MB (17100605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d33f4617f37cb6b69706c9aac222151c5aeffe59e5b00006891fe6d6781edd`  
		Last Modified: Tue, 16 Oct 2018 08:33:41 GMT  
		Size: 2.1 MB (2059838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f897a61ed3d92e2b723e9b4960a75e67651892428400e5ac338c8e1c757429`  
		Last Modified: Wed, 31 Oct 2018 01:03:24 GMT  
		Size: 3.9 KB (3885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9a8ec59eb84a7659ba37165ca2d7e81ec3c06cfdff9ad8f61b0932d977862f`  
		Last Modified: Wed, 31 Oct 2018 01:03:24 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac06b88db6a7f397948b39e7b41672789389a3b24ade5b74e42ff9f65ef6cf4c`  
		Last Modified: Wed, 31 Oct 2018 01:04:05 GMT  
		Size: 130.0 MB (129957434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36dbee38013d9c326e8a06f63e8dd122b0f3989db3f98c072489de1310c4eb38`  
		Last Modified: Wed, 31 Oct 2018 01:03:24 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1.4`

```console
$ docker pull plone@sha256:737ea973e5345a00e1551d71594af6d2ed3b2f67f832377d5dfc52ee65ae409b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5.1.4` - linux; amd64

```console
$ docker pull plone@sha256:0a0e029c17768ce8b2de775afa4db0516cb7db65c3a2582480ff68b011c7eed2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174127631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7f54112dfbff717d7ee8209cb24fb308d1158e07cd26d87c7dccc406fa94a6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:12:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 07:12:25 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 08:00:18 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 16 Oct 2018 08:00:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:00:35 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 16 Oct 2018 08:00:36 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 16 Oct 2018 08:04:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 16 Oct 2018 08:04:02 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 16 Oct 2018 08:04:19 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 16 Oct 2018 08:04:20 GMT
CMD ["python2"]
# Wed, 31 Oct 2018 00:26:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Wed, 31 Oct 2018 00:26:06 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 31 Oct 2018 00:26:07 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 31 Oct 2018 00:26:07 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Wed, 31 Oct 2018 00:31:56 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 31 Oct 2018 00:31:57 GMT
VOLUME [/data]
# Wed, 31 Oct 2018 00:31:58 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Wed, 31 Oct 2018 00:31:58 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 00:31:59 GMT
WORKDIR /plone/instance
# Wed, 31 Oct 2018 00:31:59 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 31 Oct 2018 00:31:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 00:32:00 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7429ec5d1bbc0d3eb4e4f04fddb9fc56c80365b42fa8e5f6c74e33337584fc15`  
		Last Modified: Tue, 16 Oct 2018 08:33:41 GMT  
		Size: 2.5 MB (2516904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b34d043e88737962d7bde11ea171018cc3cb16af886bfe0a0621a9c43f2d6e`  
		Last Modified: Tue, 16 Oct 2018 08:33:46 GMT  
		Size: 17.1 MB (17100605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d33f4617f37cb6b69706c9aac222151c5aeffe59e5b00006891fe6d6781edd`  
		Last Modified: Tue, 16 Oct 2018 08:33:41 GMT  
		Size: 2.1 MB (2059838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f897a61ed3d92e2b723e9b4960a75e67651892428400e5ac338c8e1c757429`  
		Last Modified: Wed, 31 Oct 2018 01:03:24 GMT  
		Size: 3.9 KB (3885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9a8ec59eb84a7659ba37165ca2d7e81ec3c06cfdff9ad8f61b0932d977862f`  
		Last Modified: Wed, 31 Oct 2018 01:03:24 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac06b88db6a7f397948b39e7b41672789389a3b24ade5b74e42ff9f65ef6cf4c`  
		Last Modified: Wed, 31 Oct 2018 01:04:05 GMT  
		Size: 130.0 MB (129957434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36dbee38013d9c326e8a06f63e8dd122b0f3989db3f98c072489de1310c4eb38`  
		Last Modified: Wed, 31 Oct 2018 01:03:24 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1.4-alpine`

```console
$ docker pull plone@sha256:96840b0e705ed421452beb61b6d88381e4da56e4612baa399ae56e0bac40cc7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5.1.4-alpine` - linux; amd64

```console
$ docker pull plone@sha256:05ee036a905f1c48ca68fe2df906056c9781a812ba6d58d35886366c3ef410e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124122697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a374f108e48b17fec72f9d6fdf7a8d6965da1d776d700197dcf91b7a786026dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:16:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:10:16 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 02:39:46 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 02:39:47 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 02:39:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 02:39:47 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 02:42:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 09 Oct 2018 22:39:42 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:39:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 09 Oct 2018 22:39:47 GMT
CMD ["python2"]
# Wed, 31 Oct 2018 00:32:20 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Wed, 31 Oct 2018 00:32:21 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 31 Oct 2018 00:32:21 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 31 Oct 2018 00:32:22 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Wed, 31 Oct 2018 00:40:54 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 31 Oct 2018 00:40:57 GMT
VOLUME [/data]
# Wed, 31 Oct 2018 00:40:58 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Wed, 31 Oct 2018 00:40:58 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 00:40:58 GMT
WORKDIR /plone/instance
# Wed, 31 Oct 2018 00:40:59 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 31 Oct 2018 00:40:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 00:40:59 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa69c832a12b3a00775c938b0fa6e3ec3b0e007e2ba733fefbb9393ea96d78d`  
		Last Modified: Wed, 12 Sep 2018 02:52:48 GMT  
		Size: 308.3 KB (308310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0581302b23ff94d20dd0e9cca6426fd366af977be616943d196c5fcb2da4fb87`  
		Last Modified: Wed, 12 Sep 2018 02:52:53 GMT  
		Size: 17.7 MB (17678982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f88dc6218e6a2a3ca6c513586a91510c9efc9cba9ef1d8a4b7919d605d51996`  
		Last Modified: Tue, 09 Oct 2018 22:55:30 GMT  
		Size: 1.8 MB (1776861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bc9ef57b60389e61e639336b86df8e493bc40757a9a7fcda012d3f4732cc44`  
		Last Modified: Wed, 31 Oct 2018 01:05:22 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2264dbdb0e2ec7985fd08f10c36b113a8d1766a72561b798f640891bbbf362d`  
		Last Modified: Wed, 31 Oct 2018 01:05:22 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4dc640823927296f1aa92167514035a9b537d7748fb5b2b1b85f235472d541`  
		Last Modified: Wed, 31 Oct 2018 01:05:58 GMT  
		Size: 102.2 MB (102247119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5388df5dbe30504499982b73accb90b504f394a0f71033ca2301e31299554e8c`  
		Last Modified: Wed, 31 Oct 2018 01:05:22 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1-alpine`

```console
$ docker pull plone@sha256:96840b0e705ed421452beb61b6d88381e4da56e4612baa399ae56e0bac40cc7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5.1-alpine` - linux; amd64

```console
$ docker pull plone@sha256:05ee036a905f1c48ca68fe2df906056c9781a812ba6d58d35886366c3ef410e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124122697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a374f108e48b17fec72f9d6fdf7a8d6965da1d776d700197dcf91b7a786026dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:16:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:10:16 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 02:39:46 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 02:39:47 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 02:39:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 02:39:47 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 02:42:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 09 Oct 2018 22:39:42 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:39:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 09 Oct 2018 22:39:47 GMT
CMD ["python2"]
# Wed, 31 Oct 2018 00:32:20 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Wed, 31 Oct 2018 00:32:21 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 31 Oct 2018 00:32:21 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 31 Oct 2018 00:32:22 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Wed, 31 Oct 2018 00:40:54 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 31 Oct 2018 00:40:57 GMT
VOLUME [/data]
# Wed, 31 Oct 2018 00:40:58 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Wed, 31 Oct 2018 00:40:58 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 00:40:58 GMT
WORKDIR /plone/instance
# Wed, 31 Oct 2018 00:40:59 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 31 Oct 2018 00:40:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 00:40:59 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa69c832a12b3a00775c938b0fa6e3ec3b0e007e2ba733fefbb9393ea96d78d`  
		Last Modified: Wed, 12 Sep 2018 02:52:48 GMT  
		Size: 308.3 KB (308310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0581302b23ff94d20dd0e9cca6426fd366af977be616943d196c5fcb2da4fb87`  
		Last Modified: Wed, 12 Sep 2018 02:52:53 GMT  
		Size: 17.7 MB (17678982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f88dc6218e6a2a3ca6c513586a91510c9efc9cba9ef1d8a4b7919d605d51996`  
		Last Modified: Tue, 09 Oct 2018 22:55:30 GMT  
		Size: 1.8 MB (1776861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bc9ef57b60389e61e639336b86df8e493bc40757a9a7fcda012d3f4732cc44`  
		Last Modified: Wed, 31 Oct 2018 01:05:22 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2264dbdb0e2ec7985fd08f10c36b113a8d1766a72561b798f640891bbbf362d`  
		Last Modified: Wed, 31 Oct 2018 01:05:22 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4dc640823927296f1aa92167514035a9b537d7748fb5b2b1b85f235472d541`  
		Last Modified: Wed, 31 Oct 2018 01:05:58 GMT  
		Size: 102.2 MB (102247119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5388df5dbe30504499982b73accb90b504f394a0f71033ca2301e31299554e8c`  
		Last Modified: Wed, 31 Oct 2018 01:05:22 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5-alpine`

```console
$ docker pull plone@sha256:96840b0e705ed421452beb61b6d88381e4da56e4612baa399ae56e0bac40cc7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5-alpine` - linux; amd64

```console
$ docker pull plone@sha256:05ee036a905f1c48ca68fe2df906056c9781a812ba6d58d35886366c3ef410e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124122697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a374f108e48b17fec72f9d6fdf7a8d6965da1d776d700197dcf91b7a786026dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:16:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:10:16 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 02:39:46 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 02:39:47 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 02:39:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 02:39:47 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 02:42:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 09 Oct 2018 22:39:42 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:39:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 09 Oct 2018 22:39:47 GMT
CMD ["python2"]
# Wed, 31 Oct 2018 00:32:20 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Wed, 31 Oct 2018 00:32:21 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 31 Oct 2018 00:32:21 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 31 Oct 2018 00:32:22 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Wed, 31 Oct 2018 00:40:54 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 31 Oct 2018 00:40:57 GMT
VOLUME [/data]
# Wed, 31 Oct 2018 00:40:58 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Wed, 31 Oct 2018 00:40:58 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 00:40:58 GMT
WORKDIR /plone/instance
# Wed, 31 Oct 2018 00:40:59 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 31 Oct 2018 00:40:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 00:40:59 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa69c832a12b3a00775c938b0fa6e3ec3b0e007e2ba733fefbb9393ea96d78d`  
		Last Modified: Wed, 12 Sep 2018 02:52:48 GMT  
		Size: 308.3 KB (308310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0581302b23ff94d20dd0e9cca6426fd366af977be616943d196c5fcb2da4fb87`  
		Last Modified: Wed, 12 Sep 2018 02:52:53 GMT  
		Size: 17.7 MB (17678982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f88dc6218e6a2a3ca6c513586a91510c9efc9cba9ef1d8a4b7919d605d51996`  
		Last Modified: Tue, 09 Oct 2018 22:55:30 GMT  
		Size: 1.8 MB (1776861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bc9ef57b60389e61e639336b86df8e493bc40757a9a7fcda012d3f4732cc44`  
		Last Modified: Wed, 31 Oct 2018 01:05:22 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2264dbdb0e2ec7985fd08f10c36b113a8d1766a72561b798f640891bbbf362d`  
		Last Modified: Wed, 31 Oct 2018 01:05:22 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4dc640823927296f1aa92167514035a9b537d7748fb5b2b1b85f235472d541`  
		Last Modified: Wed, 31 Oct 2018 01:05:58 GMT  
		Size: 102.2 MB (102247119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5388df5dbe30504499982b73accb90b504f394a0f71033ca2301e31299554e8c`  
		Last Modified: Wed, 31 Oct 2018 01:05:22 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:alpine`

```console
$ docker pull plone@sha256:96840b0e705ed421452beb61b6d88381e4da56e4612baa399ae56e0bac40cc7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:alpine` - linux; amd64

```console
$ docker pull plone@sha256:05ee036a905f1c48ca68fe2df906056c9781a812ba6d58d35886366c3ef410e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124122697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a374f108e48b17fec72f9d6fdf7a8d6965da1d776d700197dcf91b7a786026dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:16:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:10:16 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 02:39:46 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 02:39:47 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 02:39:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 02:39:47 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 02:42:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 09 Oct 2018 22:39:42 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:39:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 09 Oct 2018 22:39:47 GMT
CMD ["python2"]
# Wed, 31 Oct 2018 00:32:20 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Wed, 31 Oct 2018 00:32:21 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 31 Oct 2018 00:32:21 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 31 Oct 2018 00:32:22 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Wed, 31 Oct 2018 00:40:54 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 31 Oct 2018 00:40:57 GMT
VOLUME [/data]
# Wed, 31 Oct 2018 00:40:58 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Wed, 31 Oct 2018 00:40:58 GMT
EXPOSE 8080/tcp
# Wed, 31 Oct 2018 00:40:58 GMT
WORKDIR /plone/instance
# Wed, 31 Oct 2018 00:40:59 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 31 Oct 2018 00:40:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 00:40:59 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa69c832a12b3a00775c938b0fa6e3ec3b0e007e2ba733fefbb9393ea96d78d`  
		Last Modified: Wed, 12 Sep 2018 02:52:48 GMT  
		Size: 308.3 KB (308310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0581302b23ff94d20dd0e9cca6426fd366af977be616943d196c5fcb2da4fb87`  
		Last Modified: Wed, 12 Sep 2018 02:52:53 GMT  
		Size: 17.7 MB (17678982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f88dc6218e6a2a3ca6c513586a91510c9efc9cba9ef1d8a4b7919d605d51996`  
		Last Modified: Tue, 09 Oct 2018 22:55:30 GMT  
		Size: 1.8 MB (1776861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21bc9ef57b60389e61e639336b86df8e493bc40757a9a7fcda012d3f4732cc44`  
		Last Modified: Wed, 31 Oct 2018 01:05:22 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2264dbdb0e2ec7985fd08f10c36b113a8d1766a72561b798f640891bbbf362d`  
		Last Modified: Wed, 31 Oct 2018 01:05:22 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4dc640823927296f1aa92167514035a9b537d7748fb5b2b1b85f235472d541`  
		Last Modified: Wed, 31 Oct 2018 01:05:58 GMT  
		Size: 102.2 MB (102247119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5388df5dbe30504499982b73accb90b504f394a0f71033ca2301e31299554e8c`  
		Last Modified: Wed, 31 Oct 2018 01:05:22 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:latest`

```console
$ docker pull plone@sha256:e858929619abec77d8ae86a76a930408cd35a194c7fdc4c91b96dd5fd1f582bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `plone:latest` - linux; amd64

```console
$ docker pull plone@sha256:6b2356c6c819083b6e9f77d48ad5e7f038e30f7970cd1feac9487c647b5018b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160424641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ba2713a25fdb19d54986f5d567a56098a87889d80c8d629e0bb04d10b3de5a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 03:27:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:27:49 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 04:48:48 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 04:49:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 04:49:04 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 04:49:04 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 04:52:05 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 04:52:06 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 04:52:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 04:52:17 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 17:38:48 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 05 Sep 2018 17:38:48 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 17:38:49 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 17:38:49 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 17:44:38 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 17:44:39 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 17:44:40 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 05 Sep 2018 17:44:40 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 17:44:40 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 17:44:41 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 17:44:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 17:44:41 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b2d5f7ed73c4fd71ea92a844e3f1854b9c54fec8fa82aec312e77e7b805604`  
		Last Modified: Wed, 05 Sep 2018 05:18:55 GMT  
		Size: 2.5 MB (2516913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1073a127cf8978b9b0f42032c0f88afcd4cac60bb4bbb9c39a0e52100fe28a39`  
		Last Modified: Wed, 05 Sep 2018 05:18:58 GMT  
		Size: 17.1 MB (17100575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90283f3dc1cdd1003d7d20e7e57ceb2e0c1403d24c64778bcc532c71eaef557f`  
		Last Modified: Wed, 05 Sep 2018 05:18:54 GMT  
		Size: 2.1 MB (2068491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c6296c2cc3bd54ea1f1a0bea02617fdbe393d799dea2a761a4b6e9f001fde2`  
		Last Modified: Wed, 05 Sep 2018 18:08:49 GMT  
		Size: 3.9 KB (3886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162da4aaaeae4ae309965233cb023ad52461266a62dcbf65eee918a1fdb10cc2`  
		Last Modified: Wed, 05 Sep 2018 18:08:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911916f3ce5b50501955e8b9135c2c224b3f1e937636d58169e3899d4430637f`  
		Last Modified: Wed, 05 Sep 2018 18:09:15 GMT  
		Size: 116.2 MB (116246159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9885bf286168449882b6f11d814123f702b96a30c1e3364d85588fb49024b09`  
		Last Modified: Wed, 05 Sep 2018 18:08:49 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; arm variant v5

```console
$ docker pull plone@sha256:32122ea57d0cea909e91edc946f6b15c8d98b0c18dd4c15e1dd7ccedd93999ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.3 MB (151318229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8732e2d1b6519584676353668299968198b549e67f7e0929bf9b5a813fd17328`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:20:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:20:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 11:15:31 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 11:15:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:15:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 11:15:45 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 11:19:21 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 11:19:21 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 11:19:46 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 11:19:46 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 14:51:49 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 05 Sep 2018 14:51:50 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 14:51:51 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 14:51:52 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 15:07:34 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 15:07:37 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 15:07:38 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 05 Sep 2018 15:07:38 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 15:07:39 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 15:07:39 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 15:07:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:07:40 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7269f056d3d5b16a85965aeb4149129ab0fc3dd77453c7955c15011eb7f9fec3`  
		Last Modified: Wed, 05 Sep 2018 11:42:24 GMT  
		Size: 2.2 MB (2248332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b999803d14943f9deff153205c79187ff70b3a1fe2fc2264c2942f7ff43524`  
		Last Modified: Wed, 05 Sep 2018 11:42:28 GMT  
		Size: 16.6 MB (16551182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9959186b2236bf43c266c9d252cc1101fe9415503c349ef6728ba0637592b19c`  
		Last Modified: Wed, 05 Sep 2018 11:42:24 GMT  
		Size: 2.1 MB (2067852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dd93397241179c4c9d8a516c762554cdd6b068504f7bd217c120bc629e7879e`  
		Last Modified: Wed, 05 Sep 2018 15:23:37 GMT  
		Size: 3.9 KB (3926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6772e34090c9feaac6fdaf06d09a11ef49a4a0a64526da8cc562791b7ec2134`  
		Last Modified: Wed, 05 Sep 2018 15:23:36 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7186d9aadadeeafd2adfeff5b42a31c1244a1758290ed181b5dc8ee9478446a9`  
		Last Modified: Wed, 05 Sep 2018 15:24:17 GMT  
		Size: 109.3 MB (109281413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7202df7975ccd93fc13fbb47cd4e1b3a434c6ace4dc7f71bd662288587b914e5`  
		Last Modified: Wed, 05 Sep 2018 15:23:36 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; arm variant v7

```console
$ docker pull plone@sha256:0ced9b4cd3014005f6bc23018c6a51171ea6c1f6295190b364cad9ff7c2ea84c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147620455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3d0c788ca371b8cb65336311eb42fd71dcd0a5e56da7faff61981979984ffe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:12:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:12:03 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 16:05:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 16:06:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:06:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 16:06:07 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 16:09:22 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 16:09:22 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 16:09:44 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 16:09:44 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 18:06:02 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 05 Sep 2018 18:06:03 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 18:06:04 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 18:06:04 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 18:20:22 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 18:20:24 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 18:20:25 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 05 Sep 2018 18:20:26 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 18:20:26 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 18:20:27 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 18:20:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 18:20:28 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6549c83740ca5aef12063b3461b49ccc1cbebfd49a044fc6c03db9c3f6fb83ec`  
		Last Modified: Wed, 05 Sep 2018 16:32:15 GMT  
		Size: 2.2 MB (2169723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2926385d55b7f8de4bb286d6b4f26aa122be08c410f4501f415a40d5c3365deb`  
		Last Modified: Wed, 05 Sep 2018 16:32:19 GMT  
		Size: 16.1 MB (16134334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d57acfdac0a2742f4b066cfe0b1ffded646b735273424232028f17b0965b7a0`  
		Last Modified: Wed, 05 Sep 2018 16:32:15 GMT  
		Size: 2.1 MB (2067847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ae240ae032a64df85ec2ea19186ae8a2f85c1007e0cbcb8fbd412af6de635c`  
		Last Modified: Wed, 05 Sep 2018 18:34:50 GMT  
		Size: 3.9 KB (3928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232cb91c5cb544dd448a5345552001d8ea449fe6d7a52707c0b332163abdcc32`  
		Last Modified: Wed, 05 Sep 2018 18:34:49 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58d355b746552cdbe5294d406dcdfb229d306affe1d9fa3a456dfac15f33c1d`  
		Last Modified: Wed, 05 Sep 2018 18:35:34 GMT  
		Size: 108.0 MB (107971805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfdcc7a93174c2c0ed4187b4420ad2d5fe1066eeba028eb07c83a352c38b436`  
		Last Modified: Wed, 05 Sep 2018 18:34:50 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:875c39427ea492d71e8394479fd929adb5169db3ae7acbf5e34335c595c4f4ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150268184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5b2e5c5cc99d8f4525549d3651ccd2e16ca744e7b69f09feb92d2c5576c311`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 19:55:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 19:55:17 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 21:16:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 21:17:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 21:17:19 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 21:17:20 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 21:27:54 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 21:27:55 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 21:28:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 21:28:50 GMT
CMD ["python2"]
# Thu, 06 Sep 2018 09:31:22 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Thu, 06 Sep 2018 09:31:23 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 06 Sep 2018 09:31:26 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 06 Sep 2018 09:31:49 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 06 Sep 2018 10:02:02 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 06 Sep 2018 10:02:06 GMT
VOLUME [/data]
# Thu, 06 Sep 2018 10:02:08 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Thu, 06 Sep 2018 10:02:10 GMT
EXPOSE 8080/tcp
# Thu, 06 Sep 2018 10:02:11 GMT
WORKDIR /plone/instance
# Thu, 06 Sep 2018 10:02:13 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 06 Sep 2018 10:02:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Sep 2018 10:02:15 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ef667fc5927e3c200f89a5d7690020ed5e4e96079722777f963d28307a8c0c`  
		Last Modified: Wed, 05 Sep 2018 21:47:29 GMT  
		Size: 2.2 MB (2225828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41fe74c0fb3d4df36bba1d8142b46fd8b6664d188808341d38ec741204ed90e`  
		Last Modified: Wed, 05 Sep 2018 21:47:36 GMT  
		Size: 16.9 MB (16866232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8fa231ee56770259ccee5057012cfc995df081536517d837d6b49bb28e08eb`  
		Last Modified: Wed, 05 Sep 2018 21:47:29 GMT  
		Size: 2.1 MB (2069134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d97a8e993ff2625349fd10898fdede73342f283240f95516fc4294428d86c01`  
		Last Modified: Thu, 06 Sep 2018 10:36:00 GMT  
		Size: 3.9 KB (3889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da613039d7f1f6f4ef169b582f1005b0d676f0a3a0d6712ec2818bbd9438571`  
		Last Modified: Thu, 06 Sep 2018 10:35:58 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d032c180a2ec2a79700d1f47dfb4c0d069789e6a6ca1e3bdbfd1b837ccf0d106`  
		Last Modified: Thu, 06 Sep 2018 10:36:50 GMT  
		Size: 108.8 MB (108768808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17571133f67b2b8d92ef7ee3b43640d263485aba098cceaae195b2e7b2b31d9`  
		Last Modified: Thu, 06 Sep 2018 10:35:59 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; 386

```console
$ docker pull plone@sha256:98a08f2589d7e68d6435c7ad0c0d2d4015abd2d6a7d32d537ed3f2185a61684b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160417120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fdcb53563d79fc93ada6dc82f4ef3db0bd416d03cfb373e5b084d738f6a1994`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 22:00:45 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 22:00:45 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 23:07:56 GMT
ENV PYTHONIOENCODING=UTF-8
# Thu, 06 Sep 2018 23:08:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 23:08:05 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 06 Sep 2018 23:08:05 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 06 Sep 2018 23:10:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 06 Sep 2018 23:10:42 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 23:10:55 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 06 Sep 2018 23:10:55 GMT
CMD ["python2"]
# Fri, 07 Sep 2018 07:49:41 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Fri, 07 Sep 2018 07:49:41 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 07 Sep 2018 07:49:42 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 07 Sep 2018 07:49:42 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Fri, 07 Sep 2018 07:55:32 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 07 Sep 2018 07:55:33 GMT
VOLUME [/data]
# Fri, 07 Sep 2018 07:55:34 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Fri, 07 Sep 2018 07:55:34 GMT
EXPOSE 8080/tcp
# Fri, 07 Sep 2018 07:55:34 GMT
WORKDIR /plone/instance
# Fri, 07 Sep 2018 07:55:34 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 07 Sep 2018 07:55:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Sep 2018 07:55:35 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472f569a166c1ad135c92a0ace23ba5f20bf0405f97ebb6cb35d86a40f8b1810`  
		Last Modified: Thu, 06 Sep 2018 23:35:04 GMT  
		Size: 2.5 MB (2517315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479ac45e47a67269530904754fc080d3e416d810d8f87866bfcd7df270b893c1`  
		Last Modified: Thu, 06 Sep 2018 23:35:09 GMT  
		Size: 16.3 MB (16297808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d7e02027cf39395cee1de69cec56ef6b589cc15badd13b4200999a1f72f1dd`  
		Last Modified: Thu, 06 Sep 2018 23:35:03 GMT  
		Size: 2.1 MB (2068148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7100336f7ec11ea162e6c166eb9f0a04d3644397e05d13f2c317730d395e75ee`  
		Last Modified: Fri, 07 Sep 2018 08:21:29 GMT  
		Size: 3.9 KB (3878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2922366590d39d8897753a413dfcf2ff501c787655b35fa89d324a3ae9f1a904`  
		Last Modified: Fri, 07 Sep 2018 08:21:29 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8894617f714da8a61bb279f1f9cbded3fc06addd43ae61aa8606a461b0b14b8e`  
		Last Modified: Fri, 07 Sep 2018 08:22:03 GMT  
		Size: 116.4 MB (116400830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60954e7f37a55b48f7b411bf90387ce6e594d177de1824c2afdd58834cbbb9e8`  
		Last Modified: Fri, 07 Sep 2018 08:21:29 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; ppc64le

```console
$ docker pull plone@sha256:fbac8edc3d4164284d46a5be13d8786844be42575a2e7c0ad6239f9c70d575de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.4 MB (154432704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97d2d9b03ca720c84f5367a205e64c13d8bb7ccedd335fe442a4ace3f21d409c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:16:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 13:16:52 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 14:06:05 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 14:06:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:06:25 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 14:06:26 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 14:12:43 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 14:12:45 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 14:13:42 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 14:13:44 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 20:39:21 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 05 Sep 2018 20:39:22 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 20:39:24 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 20:39:31 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 20:56:36 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 20:56:40 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 20:56:46 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 05 Sep 2018 20:56:47 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 20:56:48 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 20:56:49 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 20:56:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 20:56:51 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c3b44d14c843566c757c9e84bf26ae4ede0e56c6a6d1e6072fe254ae1a02f5`  
		Last Modified: Wed, 05 Sep 2018 15:17:05 GMT  
		Size: 2.2 MB (2181764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:038b6f0e17ec3047bf22cd2f6c867f33da5aeadb73838591464fb7aa425a74ca`  
		Last Modified: Wed, 05 Sep 2018 15:17:13 GMT  
		Size: 17.3 MB (17280804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09f2619ca5221b8451fdcd5f964d9637ccc01b5cf22df48bf3a9f51aadbc969`  
		Last Modified: Wed, 05 Sep 2018 15:17:05 GMT  
		Size: 2.1 MB (2069147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a690b52c3b4053d74b6c0189cec3cce88d2f82840e84eec0d08f9e1ffaf7bb0e`  
		Last Modified: Wed, 05 Sep 2018 21:13:40 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cc0d047dbaa553853f482547fa9f92d73d869bae2b7e32ba4cb505497f58a6`  
		Last Modified: Wed, 05 Sep 2018 21:13:39 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e9343aa09c9bf8a752ad1db2e10baae4cc52e57bcfa170bd5e1ee4417362a3`  
		Last Modified: Wed, 05 Sep 2018 21:14:16 GMT  
		Size: 110.2 MB (110153860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c38bf52c570af432ae738ceb0dce49dd702d8ab253170e7075936a83e4ea9c`  
		Last Modified: Wed, 05 Sep 2018 21:13:40 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
