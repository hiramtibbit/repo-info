<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sentry`

-	[`sentry:9`](#sentry9)
-	[`sentry:9.0`](#sentry90)
-	[`sentry:9.0.0`](#sentry900)
-	[`sentry:9.0.0-onbuild`](#sentry900-onbuild)
-	[`sentry:9.0-onbuild`](#sentry90-onbuild)
-	[`sentry:9.1`](#sentry91)
-	[`sentry:9.1.1`](#sentry911)
-	[`sentry:9.1.1-onbuild`](#sentry911-onbuild)
-	[`sentry:9.1-onbuild`](#sentry91-onbuild)
-	[`sentry:9-onbuild`](#sentry9-onbuild)
-	[`sentry:latest`](#sentrylatest)
-	[`sentry:onbuild`](#sentryonbuild)

## `sentry:9`

```console
$ docker pull sentry@sha256:7bea5eb38d693caba8e6eb14bfd8b5571d67e06c0b53f50faf4568c688f064a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9` - linux; amd64

```console
$ docker pull sentry@sha256:ce5bb4957d4270e767506f944d99a277140ff03c0be9a217640a8a76fbec0e71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258721923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:170a2c5c7cbf7d21fc47ead0918544f1867622c4555c105162b03cbc1527f380`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:34:12 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 08:34:12 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 09:45:43 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 09:46:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:46:08 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 09:46:08 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 09:59:54 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 09:59:54 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 10:00:15 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 10:00:15 GMT
CMD ["python2"]
# Thu, 04 Apr 2019 22:40:28 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Thu, 04 Apr 2019 22:41:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxmlsec1-dev         libxslt-dev         libyaml-dev         pkg-config     && rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 22:41:02 GMT
ENV PIP_NO_CACHE_DIR=off
# Thu, 04 Apr 2019 22:41:02 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Thu, 04 Apr 2019 22:41:10 GMT
RUN set -x     && export GOSU_VERSION=1.11     && fetchDeps="         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $fetchDeps && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       B42F6819007F00F88E364FD4036A9C25BF357DD4     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && gpgconf --kill all     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove $fetchDeps
# Thu, 04 Apr 2019 22:41:18 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && fetchDeps="         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $fetchDeps && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && gpgconf --kill all     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h && apt-get purge -y --auto-remove $fetchDeps
# Mon, 22 Apr 2019 22:28:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1 maxminddb==1.4.1     && python -c 'import librabbitmq'     && python -c 'import maxminddb'     && apt-get purge -y --auto-remove make
# Mon, 22 Apr 2019 22:28:43 GMT
ENV SENTRY_VERSION=9.1.1
# Mon, 22 Apr 2019 22:30:12 GMT
RUN set -x     && buildDeps="         g++         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       D8749766A66DD714236A932C3B2D400CE5BBCA60     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && gpgconf --kill all     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove $buildDeps
# Mon, 22 Apr 2019 22:30:12 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 22 Apr 2019 22:30:13 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 22 Apr 2019 22:30:13 GMT
COPY file:c18ac272afa23195896b144833bf12a9e2e020bd8120dddb9e13f3848f2dace0 in /etc/sentry/ 
# Mon, 22 Apr 2019 22:30:14 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Mon, 22 Apr 2019 22:30:14 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Mon, 22 Apr 2019 22:30:14 GMT
EXPOSE 9000
# Mon, 22 Apr 2019 22:30:14 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 22 Apr 2019 22:30:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Apr 2019 22:30:15 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b35abcb27de3651a8b856a4cbaa752c67fc2fe657be16297a61a236bd94c0ef`  
		Last Modified: Wed, 27 Mar 2019 10:24:22 GMT  
		Size: 2.5 MB (2528316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc6dee9fe4802f03e005a1c8465f3fa2f1aa54b4d870469144cf24fa15eca`  
		Last Modified: Wed, 27 Mar 2019 10:24:26 GMT  
		Size: 17.0 MB (17034081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6a9200356691fc4e8ac35af1e03c78e741fbc917d8e82ead50210415ea65b2`  
		Last Modified: Wed, 27 Mar 2019 10:24:22 GMT  
		Size: 2.1 MB (2092329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba17a774dc509b7040e73bdaac1ee95cd83a046a9b6a7781f5d901f7209bb5be`  
		Last Modified: Thu, 04 Apr 2019 22:43:34 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fff37fdd0487b1f14a6ce7d4dc1bc7fef7a7b5dcd467fe806d3b859f9611be6`  
		Last Modified: Thu, 04 Apr 2019 22:43:56 GMT  
		Size: 116.8 MB (116769347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c6e896cee9fb286c0a731d126f60af560ca68bcbfb1649a7b41b121d638eaa`  
		Last Modified: Thu, 04 Apr 2019 22:43:34 GMT  
		Size: 1.2 MB (1246089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bb600fe0f957d3da6521d54a1e3bc564e6e006ea8240a07234c1e694f5766`  
		Last Modified: Thu, 04 Apr 2019 22:43:33 GMT  
		Size: 354.6 KB (354633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1695f52013a7cf906209df1174ee04f7d46ac3a6caf748c7763472c33a56ff47`  
		Last Modified: Mon, 22 Apr 2019 22:30:36 GMT  
		Size: 2.9 MB (2896101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f691986f7ff1da46d19445c905e08255be5ea8486a7dbaa32522d3b81ea7d405`  
		Last Modified: Mon, 22 Apr 2019 22:30:55 GMT  
		Size: 93.3 MB (93295711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933287ecd96d1845b59feef5bd5f9b31afaf6dcae1ea440cf9fc17ecf601e35c`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed8f8e2366ac06a213c823ebc0459ac38966d9af65e3ceea0706a174f2a5fc9`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 3.5 KB (3515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab8eda3b03942ba7d791dd336632ff0ca6381d2369c2db5708e36f9669f7e34`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d0b11c61d6a1d7e13acc9529a7fcbcf1ebd641abd9460d3e903b6985a08ede`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.0`

```console
$ docker pull sentry@sha256:c48c60365aeaf175a61f041cda0d241307707d08e80b3dc896c00f169cd07038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.0` - linux; amd64

```console
$ docker pull sentry@sha256:4705a80ffc0cdcbb05290d888e9f383a625f477244f70bb05824366043f31071
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (200034239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eac17017f91b3e45e3af53bad9463091db87f37c764ac9853e353eab6d48a1d7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:48 GMT
ADD file:7e1c64289e566a098e45fa330e3fe3be4fb94df824f0287a0317dbadf8c643fd in / 
# Tue, 26 Mar 2019 22:39:48 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:52:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:52:48 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 10:06:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 10:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:09:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 10:09:06 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 10:15:52 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 10:15:52 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 10:19:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 10:19:25 GMT
CMD ["python2"]
# Thu, 04 Apr 2019 22:28:18 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Thu, 04 Apr 2019 22:30:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxmlsec1-dev         libxslt-dev         libyaml-dev         pkg-config     && rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 22:30:24 GMT
ENV PIP_NO_CACHE_DIR=off
# Thu, 04 Apr 2019 22:30:24 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Thu, 04 Apr 2019 22:30:24 GMT
ENV GOSU_VERSION=1.10
# Thu, 04 Apr 2019 22:32:33 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Thu, 04 Apr 2019 22:34:42 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Thu, 04 Apr 2019 22:37:00 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Thu, 04 Apr 2019 22:37:00 GMT
ENV SENTRY_VERSION=9.0.0
# Thu, 04 Apr 2019 22:40:15 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Thu, 04 Apr 2019 22:40:15 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Thu, 04 Apr 2019 22:40:16 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Thu, 04 Apr 2019 22:40:16 GMT
COPY file:c18ac272afa23195896b144833bf12a9e2e020bd8120dddb9e13f3848f2dace0 in /etc/sentry/ 
# Thu, 04 Apr 2019 22:40:16 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Thu, 04 Apr 2019 22:40:17 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Thu, 04 Apr 2019 22:40:17 GMT
EXPOSE 9000
# Thu, 04 Apr 2019 22:40:17 GMT
VOLUME [/var/lib/sentry/files]
# Thu, 04 Apr 2019 22:40:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 Apr 2019 22:40:17 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:2a639da97f77795f2f0ebe3bb2c9fc94b4eee47bd41faaf216118e7a8fa65dd6`  
		Last Modified: Tue, 26 Mar 2019 22:43:17 GMT  
		Size: 30.2 MB (30154581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedba370a317d22fffc56154c19a662fe39792ff5f6f09c3ccbbc98154a7a25e`  
		Last Modified: Wed, 27 Mar 2019 10:24:45 GMT  
		Size: 2.2 MB (2215438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4da32f8805dad9f1400798e69fbbaf0f9a7e9d8ad3550bfb292da971292d516`  
		Last Modified: Wed, 27 Mar 2019 10:24:49 GMT  
		Size: 15.5 MB (15500542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba07069d8179338d511fe2dee616fc3a48a1fd151c1eb86e18d2605a4153bcf1`  
		Last Modified: Wed, 27 Mar 2019 10:24:45 GMT  
		Size: 2.1 MB (2113888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d320f1d7a1dbb2cb3db864f39c8e75c82238072f25bfd2d0ac3273fea187f`  
		Last Modified: Thu, 04 Apr 2019 22:43:08 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cefab1bb95a9699b2c1e86126ac19109756545a83e2e365aa5b77f40dac495f`  
		Last Modified: Thu, 04 Apr 2019 22:43:24 GMT  
		Size: 60.4 MB (60410399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904c907ea6cbb50eefad5bd9a9300371c5fdc39ab52af005136afbe836c9c5bd`  
		Last Modified: Thu, 04 Apr 2019 22:43:07 GMT  
		Size: 855.0 KB (854956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7355881793810f5c8e8b544aa5f823edd291a9a68aaffd5b2acfd4c8d75339`  
		Last Modified: Thu, 04 Apr 2019 22:43:07 GMT  
		Size: 363.7 KB (363710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d5e714477d5813ff15fdbce6828298e5456bcbe367e0b0e6d24234c8cc754a`  
		Last Modified: Thu, 04 Apr 2019 22:43:07 GMT  
		Size: 2.8 MB (2833773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b53a86bc8026fca85a39a0ff83ab3b90b9698dd6eea271f4d13ea48f6af05b5`  
		Last Modified: Thu, 04 Apr 2019 22:43:24 GMT  
		Size: 85.6 MB (85577348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe49c9db7f3dade8c87f75aca8cef0da9d6a510ac9cce37cd12d17e2e345c50`  
		Last Modified: Thu, 04 Apr 2019 22:43:06 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b11d580cbdde98f3cd6ab6bd03fd7cb619c941db9a2edfbadfc2f70743939b0`  
		Last Modified: Thu, 04 Apr 2019 22:43:06 GMT  
		Size: 3.5 KB (3517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059280d9210098849547783b2929e5f64ce144bbd5df10a6e7cfee2f8c5ba554`  
		Last Modified: Thu, 04 Apr 2019 22:43:06 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bae809265e69f68ded9925e135bfd23d9b466e2a26c7bd70e0a5859c40b95e`  
		Last Modified: Thu, 04 Apr 2019 22:43:06 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.0.0`

```console
$ docker pull sentry@sha256:c48c60365aeaf175a61f041cda0d241307707d08e80b3dc896c00f169cd07038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.0.0` - linux; amd64

```console
$ docker pull sentry@sha256:4705a80ffc0cdcbb05290d888e9f383a625f477244f70bb05824366043f31071
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (200034239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eac17017f91b3e45e3af53bad9463091db87f37c764ac9853e353eab6d48a1d7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:48 GMT
ADD file:7e1c64289e566a098e45fa330e3fe3be4fb94df824f0287a0317dbadf8c643fd in / 
# Tue, 26 Mar 2019 22:39:48 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:52:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:52:48 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 10:06:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 10:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:09:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 10:09:06 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 10:15:52 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 10:15:52 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 10:19:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 10:19:25 GMT
CMD ["python2"]
# Thu, 04 Apr 2019 22:28:18 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Thu, 04 Apr 2019 22:30:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxmlsec1-dev         libxslt-dev         libyaml-dev         pkg-config     && rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 22:30:24 GMT
ENV PIP_NO_CACHE_DIR=off
# Thu, 04 Apr 2019 22:30:24 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Thu, 04 Apr 2019 22:30:24 GMT
ENV GOSU_VERSION=1.10
# Thu, 04 Apr 2019 22:32:33 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Thu, 04 Apr 2019 22:34:42 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Thu, 04 Apr 2019 22:37:00 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Thu, 04 Apr 2019 22:37:00 GMT
ENV SENTRY_VERSION=9.0.0
# Thu, 04 Apr 2019 22:40:15 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Thu, 04 Apr 2019 22:40:15 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Thu, 04 Apr 2019 22:40:16 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Thu, 04 Apr 2019 22:40:16 GMT
COPY file:c18ac272afa23195896b144833bf12a9e2e020bd8120dddb9e13f3848f2dace0 in /etc/sentry/ 
# Thu, 04 Apr 2019 22:40:16 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Thu, 04 Apr 2019 22:40:17 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Thu, 04 Apr 2019 22:40:17 GMT
EXPOSE 9000
# Thu, 04 Apr 2019 22:40:17 GMT
VOLUME [/var/lib/sentry/files]
# Thu, 04 Apr 2019 22:40:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 Apr 2019 22:40:17 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:2a639da97f77795f2f0ebe3bb2c9fc94b4eee47bd41faaf216118e7a8fa65dd6`  
		Last Modified: Tue, 26 Mar 2019 22:43:17 GMT  
		Size: 30.2 MB (30154581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedba370a317d22fffc56154c19a662fe39792ff5f6f09c3ccbbc98154a7a25e`  
		Last Modified: Wed, 27 Mar 2019 10:24:45 GMT  
		Size: 2.2 MB (2215438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4da32f8805dad9f1400798e69fbbaf0f9a7e9d8ad3550bfb292da971292d516`  
		Last Modified: Wed, 27 Mar 2019 10:24:49 GMT  
		Size: 15.5 MB (15500542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba07069d8179338d511fe2dee616fc3a48a1fd151c1eb86e18d2605a4153bcf1`  
		Last Modified: Wed, 27 Mar 2019 10:24:45 GMT  
		Size: 2.1 MB (2113888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d320f1d7a1dbb2cb3db864f39c8e75c82238072f25bfd2d0ac3273fea187f`  
		Last Modified: Thu, 04 Apr 2019 22:43:08 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cefab1bb95a9699b2c1e86126ac19109756545a83e2e365aa5b77f40dac495f`  
		Last Modified: Thu, 04 Apr 2019 22:43:24 GMT  
		Size: 60.4 MB (60410399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904c907ea6cbb50eefad5bd9a9300371c5fdc39ab52af005136afbe836c9c5bd`  
		Last Modified: Thu, 04 Apr 2019 22:43:07 GMT  
		Size: 855.0 KB (854956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7355881793810f5c8e8b544aa5f823edd291a9a68aaffd5b2acfd4c8d75339`  
		Last Modified: Thu, 04 Apr 2019 22:43:07 GMT  
		Size: 363.7 KB (363710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d5e714477d5813ff15fdbce6828298e5456bcbe367e0b0e6d24234c8cc754a`  
		Last Modified: Thu, 04 Apr 2019 22:43:07 GMT  
		Size: 2.8 MB (2833773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b53a86bc8026fca85a39a0ff83ab3b90b9698dd6eea271f4d13ea48f6af05b5`  
		Last Modified: Thu, 04 Apr 2019 22:43:24 GMT  
		Size: 85.6 MB (85577348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe49c9db7f3dade8c87f75aca8cef0da9d6a510ac9cce37cd12d17e2e345c50`  
		Last Modified: Thu, 04 Apr 2019 22:43:06 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b11d580cbdde98f3cd6ab6bd03fd7cb619c941db9a2edfbadfc2f70743939b0`  
		Last Modified: Thu, 04 Apr 2019 22:43:06 GMT  
		Size: 3.5 KB (3517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059280d9210098849547783b2929e5f64ce144bbd5df10a6e7cfee2f8c5ba554`  
		Last Modified: Thu, 04 Apr 2019 22:43:06 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bae809265e69f68ded9925e135bfd23d9b466e2a26c7bd70e0a5859c40b95e`  
		Last Modified: Thu, 04 Apr 2019 22:43:06 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.0.0-onbuild`

```console
$ docker pull sentry@sha256:b9ce1efbca2b0db4c1506e8038dd79ae364c4f6a13985b32102987c635fc74e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.0.0-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:6aed48f540b1942a8641c6e8b5ecfcfc1731c38f8ec8bcfe918999540085d726
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (200034377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03af97a3c3fb5e4441dada12441d4a24fe38165bb22004e7c0d7bb66abd73bc6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:48 GMT
ADD file:7e1c64289e566a098e45fa330e3fe3be4fb94df824f0287a0317dbadf8c643fd in / 
# Tue, 26 Mar 2019 22:39:48 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:52:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:52:48 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 10:06:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 10:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:09:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 10:09:06 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 10:15:52 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 10:15:52 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 10:19:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 10:19:25 GMT
CMD ["python2"]
# Thu, 04 Apr 2019 22:28:18 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Thu, 04 Apr 2019 22:30:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxmlsec1-dev         libxslt-dev         libyaml-dev         pkg-config     && rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 22:30:24 GMT
ENV PIP_NO_CACHE_DIR=off
# Thu, 04 Apr 2019 22:30:24 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Thu, 04 Apr 2019 22:30:24 GMT
ENV GOSU_VERSION=1.10
# Thu, 04 Apr 2019 22:32:33 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Thu, 04 Apr 2019 22:34:42 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Thu, 04 Apr 2019 22:37:00 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Thu, 04 Apr 2019 22:37:00 GMT
ENV SENTRY_VERSION=9.0.0
# Thu, 04 Apr 2019 22:40:15 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Thu, 04 Apr 2019 22:40:15 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Thu, 04 Apr 2019 22:40:16 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Thu, 04 Apr 2019 22:40:16 GMT
COPY file:c18ac272afa23195896b144833bf12a9e2e020bd8120dddb9e13f3848f2dace0 in /etc/sentry/ 
# Thu, 04 Apr 2019 22:40:16 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Thu, 04 Apr 2019 22:40:17 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Thu, 04 Apr 2019 22:40:17 GMT
EXPOSE 9000
# Thu, 04 Apr 2019 22:40:17 GMT
VOLUME [/var/lib/sentry/files]
# Thu, 04 Apr 2019 22:40:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 Apr 2019 22:40:17 GMT
CMD ["run" "web"]
# Thu, 04 Apr 2019 22:40:23 GMT
WORKDIR /usr/src/sentry
# Thu, 04 Apr 2019 22:40:24 GMT
ENV PYTHONPATH=/usr/src/sentry
# Thu, 04 Apr 2019 22:40:24 GMT
ONBUILD COPY . /usr/src/sentry
# Thu, 04 Apr 2019 22:40:24 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Thu, 04 Apr 2019 22:40:24 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Thu, 04 Apr 2019 22:40:24 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:2a639da97f77795f2f0ebe3bb2c9fc94b4eee47bd41faaf216118e7a8fa65dd6`  
		Last Modified: Tue, 26 Mar 2019 22:43:17 GMT  
		Size: 30.2 MB (30154581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedba370a317d22fffc56154c19a662fe39792ff5f6f09c3ccbbc98154a7a25e`  
		Last Modified: Wed, 27 Mar 2019 10:24:45 GMT  
		Size: 2.2 MB (2215438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4da32f8805dad9f1400798e69fbbaf0f9a7e9d8ad3550bfb292da971292d516`  
		Last Modified: Wed, 27 Mar 2019 10:24:49 GMT  
		Size: 15.5 MB (15500542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba07069d8179338d511fe2dee616fc3a48a1fd151c1eb86e18d2605a4153bcf1`  
		Last Modified: Wed, 27 Mar 2019 10:24:45 GMT  
		Size: 2.1 MB (2113888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d320f1d7a1dbb2cb3db864f39c8e75c82238072f25bfd2d0ac3273fea187f`  
		Last Modified: Thu, 04 Apr 2019 22:43:08 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cefab1bb95a9699b2c1e86126ac19109756545a83e2e365aa5b77f40dac495f`  
		Last Modified: Thu, 04 Apr 2019 22:43:24 GMT  
		Size: 60.4 MB (60410399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904c907ea6cbb50eefad5bd9a9300371c5fdc39ab52af005136afbe836c9c5bd`  
		Last Modified: Thu, 04 Apr 2019 22:43:07 GMT  
		Size: 855.0 KB (854956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7355881793810f5c8e8b544aa5f823edd291a9a68aaffd5b2acfd4c8d75339`  
		Last Modified: Thu, 04 Apr 2019 22:43:07 GMT  
		Size: 363.7 KB (363710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d5e714477d5813ff15fdbce6828298e5456bcbe367e0b0e6d24234c8cc754a`  
		Last Modified: Thu, 04 Apr 2019 22:43:07 GMT  
		Size: 2.8 MB (2833773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b53a86bc8026fca85a39a0ff83ab3b90b9698dd6eea271f4d13ea48f6af05b5`  
		Last Modified: Thu, 04 Apr 2019 22:43:24 GMT  
		Size: 85.6 MB (85577348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe49c9db7f3dade8c87f75aca8cef0da9d6a510ac9cce37cd12d17e2e345c50`  
		Last Modified: Thu, 04 Apr 2019 22:43:06 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b11d580cbdde98f3cd6ab6bd03fd7cb619c941db9a2edfbadfc2f70743939b0`  
		Last Modified: Thu, 04 Apr 2019 22:43:06 GMT  
		Size: 3.5 KB (3517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059280d9210098849547783b2929e5f64ce144bbd5df10a6e7cfee2f8c5ba554`  
		Last Modified: Thu, 04 Apr 2019 22:43:06 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bae809265e69f68ded9925e135bfd23d9b466e2a26c7bd70e0a5859c40b95e`  
		Last Modified: Thu, 04 Apr 2019 22:43:06 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633b62033105c5162c3dfb618cbd8031b18806eefb773e9d2b0b106f2747e6c7`  
		Last Modified: Thu, 04 Apr 2019 22:43:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.0-onbuild`

```console
$ docker pull sentry@sha256:b9ce1efbca2b0db4c1506e8038dd79ae364c4f6a13985b32102987c635fc74e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.0-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:6aed48f540b1942a8641c6e8b5ecfcfc1731c38f8ec8bcfe918999540085d726
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (200034377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03af97a3c3fb5e4441dada12441d4a24fe38165bb22004e7c0d7bb66abd73bc6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:48 GMT
ADD file:7e1c64289e566a098e45fa330e3fe3be4fb94df824f0287a0317dbadf8c643fd in / 
# Tue, 26 Mar 2019 22:39:48 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:52:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:52:48 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 10:06:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 10:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:09:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 10:09:06 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 10:15:52 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 10:15:52 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 10:19:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 10:19:25 GMT
CMD ["python2"]
# Thu, 04 Apr 2019 22:28:18 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Thu, 04 Apr 2019 22:30:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxmlsec1-dev         libxslt-dev         libyaml-dev         pkg-config     && rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 22:30:24 GMT
ENV PIP_NO_CACHE_DIR=off
# Thu, 04 Apr 2019 22:30:24 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Thu, 04 Apr 2019 22:30:24 GMT
ENV GOSU_VERSION=1.10
# Thu, 04 Apr 2019 22:32:33 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Thu, 04 Apr 2019 22:34:42 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Thu, 04 Apr 2019 22:37:00 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Thu, 04 Apr 2019 22:37:00 GMT
ENV SENTRY_VERSION=9.0.0
# Thu, 04 Apr 2019 22:40:15 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Thu, 04 Apr 2019 22:40:15 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Thu, 04 Apr 2019 22:40:16 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Thu, 04 Apr 2019 22:40:16 GMT
COPY file:c18ac272afa23195896b144833bf12a9e2e020bd8120dddb9e13f3848f2dace0 in /etc/sentry/ 
# Thu, 04 Apr 2019 22:40:16 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Thu, 04 Apr 2019 22:40:17 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Thu, 04 Apr 2019 22:40:17 GMT
EXPOSE 9000
# Thu, 04 Apr 2019 22:40:17 GMT
VOLUME [/var/lib/sentry/files]
# Thu, 04 Apr 2019 22:40:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 Apr 2019 22:40:17 GMT
CMD ["run" "web"]
# Thu, 04 Apr 2019 22:40:23 GMT
WORKDIR /usr/src/sentry
# Thu, 04 Apr 2019 22:40:24 GMT
ENV PYTHONPATH=/usr/src/sentry
# Thu, 04 Apr 2019 22:40:24 GMT
ONBUILD COPY . /usr/src/sentry
# Thu, 04 Apr 2019 22:40:24 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Thu, 04 Apr 2019 22:40:24 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Thu, 04 Apr 2019 22:40:24 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:2a639da97f77795f2f0ebe3bb2c9fc94b4eee47bd41faaf216118e7a8fa65dd6`  
		Last Modified: Tue, 26 Mar 2019 22:43:17 GMT  
		Size: 30.2 MB (30154581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedba370a317d22fffc56154c19a662fe39792ff5f6f09c3ccbbc98154a7a25e`  
		Last Modified: Wed, 27 Mar 2019 10:24:45 GMT  
		Size: 2.2 MB (2215438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4da32f8805dad9f1400798e69fbbaf0f9a7e9d8ad3550bfb292da971292d516`  
		Last Modified: Wed, 27 Mar 2019 10:24:49 GMT  
		Size: 15.5 MB (15500542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba07069d8179338d511fe2dee616fc3a48a1fd151c1eb86e18d2605a4153bcf1`  
		Last Modified: Wed, 27 Mar 2019 10:24:45 GMT  
		Size: 2.1 MB (2113888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167d320f1d7a1dbb2cb3db864f39c8e75c82238072f25bfd2d0ac3273fea187f`  
		Last Modified: Thu, 04 Apr 2019 22:43:08 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cefab1bb95a9699b2c1e86126ac19109756545a83e2e365aa5b77f40dac495f`  
		Last Modified: Thu, 04 Apr 2019 22:43:24 GMT  
		Size: 60.4 MB (60410399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904c907ea6cbb50eefad5bd9a9300371c5fdc39ab52af005136afbe836c9c5bd`  
		Last Modified: Thu, 04 Apr 2019 22:43:07 GMT  
		Size: 855.0 KB (854956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7355881793810f5c8e8b544aa5f823edd291a9a68aaffd5b2acfd4c8d75339`  
		Last Modified: Thu, 04 Apr 2019 22:43:07 GMT  
		Size: 363.7 KB (363710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d5e714477d5813ff15fdbce6828298e5456bcbe367e0b0e6d24234c8cc754a`  
		Last Modified: Thu, 04 Apr 2019 22:43:07 GMT  
		Size: 2.8 MB (2833773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b53a86bc8026fca85a39a0ff83ab3b90b9698dd6eea271f4d13ea48f6af05b5`  
		Last Modified: Thu, 04 Apr 2019 22:43:24 GMT  
		Size: 85.6 MB (85577348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe49c9db7f3dade8c87f75aca8cef0da9d6a510ac9cce37cd12d17e2e345c50`  
		Last Modified: Thu, 04 Apr 2019 22:43:06 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b11d580cbdde98f3cd6ab6bd03fd7cb619c941db9a2edfbadfc2f70743939b0`  
		Last Modified: Thu, 04 Apr 2019 22:43:06 GMT  
		Size: 3.5 KB (3517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059280d9210098849547783b2929e5f64ce144bbd5df10a6e7cfee2f8c5ba554`  
		Last Modified: Thu, 04 Apr 2019 22:43:06 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bae809265e69f68ded9925e135bfd23d9b466e2a26c7bd70e0a5859c40b95e`  
		Last Modified: Thu, 04 Apr 2019 22:43:06 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633b62033105c5162c3dfb618cbd8031b18806eefb773e9d2b0b106f2747e6c7`  
		Last Modified: Thu, 04 Apr 2019 22:43:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.1`

```console
$ docker pull sentry@sha256:7bea5eb38d693caba8e6eb14bfd8b5571d67e06c0b53f50faf4568c688f064a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.1` - linux; amd64

```console
$ docker pull sentry@sha256:ce5bb4957d4270e767506f944d99a277140ff03c0be9a217640a8a76fbec0e71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258721923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:170a2c5c7cbf7d21fc47ead0918544f1867622c4555c105162b03cbc1527f380`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:34:12 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 08:34:12 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 09:45:43 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 09:46:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:46:08 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 09:46:08 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 09:59:54 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 09:59:54 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 10:00:15 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 10:00:15 GMT
CMD ["python2"]
# Thu, 04 Apr 2019 22:40:28 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Thu, 04 Apr 2019 22:41:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxmlsec1-dev         libxslt-dev         libyaml-dev         pkg-config     && rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 22:41:02 GMT
ENV PIP_NO_CACHE_DIR=off
# Thu, 04 Apr 2019 22:41:02 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Thu, 04 Apr 2019 22:41:10 GMT
RUN set -x     && export GOSU_VERSION=1.11     && fetchDeps="         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $fetchDeps && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       B42F6819007F00F88E364FD4036A9C25BF357DD4     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && gpgconf --kill all     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove $fetchDeps
# Thu, 04 Apr 2019 22:41:18 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && fetchDeps="         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $fetchDeps && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && gpgconf --kill all     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h && apt-get purge -y --auto-remove $fetchDeps
# Mon, 22 Apr 2019 22:28:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1 maxminddb==1.4.1     && python -c 'import librabbitmq'     && python -c 'import maxminddb'     && apt-get purge -y --auto-remove make
# Mon, 22 Apr 2019 22:28:43 GMT
ENV SENTRY_VERSION=9.1.1
# Mon, 22 Apr 2019 22:30:12 GMT
RUN set -x     && buildDeps="         g++         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       D8749766A66DD714236A932C3B2D400CE5BBCA60     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && gpgconf --kill all     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove $buildDeps
# Mon, 22 Apr 2019 22:30:12 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 22 Apr 2019 22:30:13 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 22 Apr 2019 22:30:13 GMT
COPY file:c18ac272afa23195896b144833bf12a9e2e020bd8120dddb9e13f3848f2dace0 in /etc/sentry/ 
# Mon, 22 Apr 2019 22:30:14 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Mon, 22 Apr 2019 22:30:14 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Mon, 22 Apr 2019 22:30:14 GMT
EXPOSE 9000
# Mon, 22 Apr 2019 22:30:14 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 22 Apr 2019 22:30:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Apr 2019 22:30:15 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b35abcb27de3651a8b856a4cbaa752c67fc2fe657be16297a61a236bd94c0ef`  
		Last Modified: Wed, 27 Mar 2019 10:24:22 GMT  
		Size: 2.5 MB (2528316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc6dee9fe4802f03e005a1c8465f3fa2f1aa54b4d870469144cf24fa15eca`  
		Last Modified: Wed, 27 Mar 2019 10:24:26 GMT  
		Size: 17.0 MB (17034081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6a9200356691fc4e8ac35af1e03c78e741fbc917d8e82ead50210415ea65b2`  
		Last Modified: Wed, 27 Mar 2019 10:24:22 GMT  
		Size: 2.1 MB (2092329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba17a774dc509b7040e73bdaac1ee95cd83a046a9b6a7781f5d901f7209bb5be`  
		Last Modified: Thu, 04 Apr 2019 22:43:34 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fff37fdd0487b1f14a6ce7d4dc1bc7fef7a7b5dcd467fe806d3b859f9611be6`  
		Last Modified: Thu, 04 Apr 2019 22:43:56 GMT  
		Size: 116.8 MB (116769347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c6e896cee9fb286c0a731d126f60af560ca68bcbfb1649a7b41b121d638eaa`  
		Last Modified: Thu, 04 Apr 2019 22:43:34 GMT  
		Size: 1.2 MB (1246089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bb600fe0f957d3da6521d54a1e3bc564e6e006ea8240a07234c1e694f5766`  
		Last Modified: Thu, 04 Apr 2019 22:43:33 GMT  
		Size: 354.6 KB (354633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1695f52013a7cf906209df1174ee04f7d46ac3a6caf748c7763472c33a56ff47`  
		Last Modified: Mon, 22 Apr 2019 22:30:36 GMT  
		Size: 2.9 MB (2896101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f691986f7ff1da46d19445c905e08255be5ea8486a7dbaa32522d3b81ea7d405`  
		Last Modified: Mon, 22 Apr 2019 22:30:55 GMT  
		Size: 93.3 MB (93295711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933287ecd96d1845b59feef5bd5f9b31afaf6dcae1ea440cf9fc17ecf601e35c`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed8f8e2366ac06a213c823ebc0459ac38966d9af65e3ceea0706a174f2a5fc9`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 3.5 KB (3515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab8eda3b03942ba7d791dd336632ff0ca6381d2369c2db5708e36f9669f7e34`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d0b11c61d6a1d7e13acc9529a7fcbcf1ebd641abd9460d3e903b6985a08ede`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.1.1`

```console
$ docker pull sentry@sha256:7bea5eb38d693caba8e6eb14bfd8b5571d67e06c0b53f50faf4568c688f064a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.1.1` - linux; amd64

```console
$ docker pull sentry@sha256:ce5bb4957d4270e767506f944d99a277140ff03c0be9a217640a8a76fbec0e71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258721923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:170a2c5c7cbf7d21fc47ead0918544f1867622c4555c105162b03cbc1527f380`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:34:12 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 08:34:12 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 09:45:43 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 09:46:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:46:08 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 09:46:08 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 09:59:54 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 09:59:54 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 10:00:15 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 10:00:15 GMT
CMD ["python2"]
# Thu, 04 Apr 2019 22:40:28 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Thu, 04 Apr 2019 22:41:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxmlsec1-dev         libxslt-dev         libyaml-dev         pkg-config     && rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 22:41:02 GMT
ENV PIP_NO_CACHE_DIR=off
# Thu, 04 Apr 2019 22:41:02 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Thu, 04 Apr 2019 22:41:10 GMT
RUN set -x     && export GOSU_VERSION=1.11     && fetchDeps="         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $fetchDeps && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       B42F6819007F00F88E364FD4036A9C25BF357DD4     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && gpgconf --kill all     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove $fetchDeps
# Thu, 04 Apr 2019 22:41:18 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && fetchDeps="         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $fetchDeps && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && gpgconf --kill all     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h && apt-get purge -y --auto-remove $fetchDeps
# Mon, 22 Apr 2019 22:28:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1 maxminddb==1.4.1     && python -c 'import librabbitmq'     && python -c 'import maxminddb'     && apt-get purge -y --auto-remove make
# Mon, 22 Apr 2019 22:28:43 GMT
ENV SENTRY_VERSION=9.1.1
# Mon, 22 Apr 2019 22:30:12 GMT
RUN set -x     && buildDeps="         g++         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       D8749766A66DD714236A932C3B2D400CE5BBCA60     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && gpgconf --kill all     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove $buildDeps
# Mon, 22 Apr 2019 22:30:12 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 22 Apr 2019 22:30:13 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 22 Apr 2019 22:30:13 GMT
COPY file:c18ac272afa23195896b144833bf12a9e2e020bd8120dddb9e13f3848f2dace0 in /etc/sentry/ 
# Mon, 22 Apr 2019 22:30:14 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Mon, 22 Apr 2019 22:30:14 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Mon, 22 Apr 2019 22:30:14 GMT
EXPOSE 9000
# Mon, 22 Apr 2019 22:30:14 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 22 Apr 2019 22:30:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Apr 2019 22:30:15 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b35abcb27de3651a8b856a4cbaa752c67fc2fe657be16297a61a236bd94c0ef`  
		Last Modified: Wed, 27 Mar 2019 10:24:22 GMT  
		Size: 2.5 MB (2528316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc6dee9fe4802f03e005a1c8465f3fa2f1aa54b4d870469144cf24fa15eca`  
		Last Modified: Wed, 27 Mar 2019 10:24:26 GMT  
		Size: 17.0 MB (17034081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6a9200356691fc4e8ac35af1e03c78e741fbc917d8e82ead50210415ea65b2`  
		Last Modified: Wed, 27 Mar 2019 10:24:22 GMT  
		Size: 2.1 MB (2092329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba17a774dc509b7040e73bdaac1ee95cd83a046a9b6a7781f5d901f7209bb5be`  
		Last Modified: Thu, 04 Apr 2019 22:43:34 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fff37fdd0487b1f14a6ce7d4dc1bc7fef7a7b5dcd467fe806d3b859f9611be6`  
		Last Modified: Thu, 04 Apr 2019 22:43:56 GMT  
		Size: 116.8 MB (116769347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c6e896cee9fb286c0a731d126f60af560ca68bcbfb1649a7b41b121d638eaa`  
		Last Modified: Thu, 04 Apr 2019 22:43:34 GMT  
		Size: 1.2 MB (1246089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bb600fe0f957d3da6521d54a1e3bc564e6e006ea8240a07234c1e694f5766`  
		Last Modified: Thu, 04 Apr 2019 22:43:33 GMT  
		Size: 354.6 KB (354633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1695f52013a7cf906209df1174ee04f7d46ac3a6caf748c7763472c33a56ff47`  
		Last Modified: Mon, 22 Apr 2019 22:30:36 GMT  
		Size: 2.9 MB (2896101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f691986f7ff1da46d19445c905e08255be5ea8486a7dbaa32522d3b81ea7d405`  
		Last Modified: Mon, 22 Apr 2019 22:30:55 GMT  
		Size: 93.3 MB (93295711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933287ecd96d1845b59feef5bd5f9b31afaf6dcae1ea440cf9fc17ecf601e35c`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed8f8e2366ac06a213c823ebc0459ac38966d9af65e3ceea0706a174f2a5fc9`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 3.5 KB (3515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab8eda3b03942ba7d791dd336632ff0ca6381d2369c2db5708e36f9669f7e34`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d0b11c61d6a1d7e13acc9529a7fcbcf1ebd641abd9460d3e903b6985a08ede`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.1.1-onbuild`

```console
$ docker pull sentry@sha256:d12332bb7f16900f198e68ca4c9fe6067598213cbf0f108be3dcc1409f02bb18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.1.1-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:427d8cb2d29cc32a28fa2bb3e011e8070113da1ed6023e8a68f0598fc339d98b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258722060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e29f5f66ebdb82770d80443f51fa47beec64128f6f2759965c582e1e8b1a2c6a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:34:12 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 08:34:12 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 09:45:43 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 09:46:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:46:08 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 09:46:08 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 09:59:54 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 09:59:54 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 10:00:15 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 10:00:15 GMT
CMD ["python2"]
# Thu, 04 Apr 2019 22:40:28 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Thu, 04 Apr 2019 22:41:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxmlsec1-dev         libxslt-dev         libyaml-dev         pkg-config     && rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 22:41:02 GMT
ENV PIP_NO_CACHE_DIR=off
# Thu, 04 Apr 2019 22:41:02 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Thu, 04 Apr 2019 22:41:10 GMT
RUN set -x     && export GOSU_VERSION=1.11     && fetchDeps="         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $fetchDeps && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       B42F6819007F00F88E364FD4036A9C25BF357DD4     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && gpgconf --kill all     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove $fetchDeps
# Thu, 04 Apr 2019 22:41:18 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && fetchDeps="         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $fetchDeps && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && gpgconf --kill all     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h && apt-get purge -y --auto-remove $fetchDeps
# Mon, 22 Apr 2019 22:28:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1 maxminddb==1.4.1     && python -c 'import librabbitmq'     && python -c 'import maxminddb'     && apt-get purge -y --auto-remove make
# Mon, 22 Apr 2019 22:28:43 GMT
ENV SENTRY_VERSION=9.1.1
# Mon, 22 Apr 2019 22:30:12 GMT
RUN set -x     && buildDeps="         g++         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       D8749766A66DD714236A932C3B2D400CE5BBCA60     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && gpgconf --kill all     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove $buildDeps
# Mon, 22 Apr 2019 22:30:12 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 22 Apr 2019 22:30:13 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 22 Apr 2019 22:30:13 GMT
COPY file:c18ac272afa23195896b144833bf12a9e2e020bd8120dddb9e13f3848f2dace0 in /etc/sentry/ 
# Mon, 22 Apr 2019 22:30:14 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Mon, 22 Apr 2019 22:30:14 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Mon, 22 Apr 2019 22:30:14 GMT
EXPOSE 9000
# Mon, 22 Apr 2019 22:30:14 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 22 Apr 2019 22:30:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Apr 2019 22:30:15 GMT
CMD ["run" "web"]
# Mon, 22 Apr 2019 22:30:22 GMT
WORKDIR /usr/src/sentry
# Mon, 22 Apr 2019 22:30:22 GMT
ENV PYTHONPATH=/usr/src/sentry
# Mon, 22 Apr 2019 22:30:22 GMT
ONBUILD COPY . /usr/src/sentry
# Mon, 22 Apr 2019 22:30:22 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Mon, 22 Apr 2019 22:30:22 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Mon, 22 Apr 2019 22:30:23 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b35abcb27de3651a8b856a4cbaa752c67fc2fe657be16297a61a236bd94c0ef`  
		Last Modified: Wed, 27 Mar 2019 10:24:22 GMT  
		Size: 2.5 MB (2528316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc6dee9fe4802f03e005a1c8465f3fa2f1aa54b4d870469144cf24fa15eca`  
		Last Modified: Wed, 27 Mar 2019 10:24:26 GMT  
		Size: 17.0 MB (17034081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6a9200356691fc4e8ac35af1e03c78e741fbc917d8e82ead50210415ea65b2`  
		Last Modified: Wed, 27 Mar 2019 10:24:22 GMT  
		Size: 2.1 MB (2092329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba17a774dc509b7040e73bdaac1ee95cd83a046a9b6a7781f5d901f7209bb5be`  
		Last Modified: Thu, 04 Apr 2019 22:43:34 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fff37fdd0487b1f14a6ce7d4dc1bc7fef7a7b5dcd467fe806d3b859f9611be6`  
		Last Modified: Thu, 04 Apr 2019 22:43:56 GMT  
		Size: 116.8 MB (116769347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c6e896cee9fb286c0a731d126f60af560ca68bcbfb1649a7b41b121d638eaa`  
		Last Modified: Thu, 04 Apr 2019 22:43:34 GMT  
		Size: 1.2 MB (1246089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bb600fe0f957d3da6521d54a1e3bc564e6e006ea8240a07234c1e694f5766`  
		Last Modified: Thu, 04 Apr 2019 22:43:33 GMT  
		Size: 354.6 KB (354633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1695f52013a7cf906209df1174ee04f7d46ac3a6caf748c7763472c33a56ff47`  
		Last Modified: Mon, 22 Apr 2019 22:30:36 GMT  
		Size: 2.9 MB (2896101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f691986f7ff1da46d19445c905e08255be5ea8486a7dbaa32522d3b81ea7d405`  
		Last Modified: Mon, 22 Apr 2019 22:30:55 GMT  
		Size: 93.3 MB (93295711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933287ecd96d1845b59feef5bd5f9b31afaf6dcae1ea440cf9fc17ecf601e35c`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed8f8e2366ac06a213c823ebc0459ac38966d9af65e3ceea0706a174f2a5fc9`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 3.5 KB (3515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab8eda3b03942ba7d791dd336632ff0ca6381d2369c2db5708e36f9669f7e34`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d0b11c61d6a1d7e13acc9529a7fcbcf1ebd641abd9460d3e903b6985a08ede`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10975b146b2ce1350263047da6baf62135665d28c05a97ed7862d835b3fde801`  
		Last Modified: Mon, 22 Apr 2019 22:31:02 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.1-onbuild`

```console
$ docker pull sentry@sha256:d12332bb7f16900f198e68ca4c9fe6067598213cbf0f108be3dcc1409f02bb18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.1-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:427d8cb2d29cc32a28fa2bb3e011e8070113da1ed6023e8a68f0598fc339d98b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258722060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e29f5f66ebdb82770d80443f51fa47beec64128f6f2759965c582e1e8b1a2c6a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:34:12 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 08:34:12 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 09:45:43 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 09:46:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:46:08 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 09:46:08 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 09:59:54 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 09:59:54 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 10:00:15 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 10:00:15 GMT
CMD ["python2"]
# Thu, 04 Apr 2019 22:40:28 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Thu, 04 Apr 2019 22:41:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxmlsec1-dev         libxslt-dev         libyaml-dev         pkg-config     && rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 22:41:02 GMT
ENV PIP_NO_CACHE_DIR=off
# Thu, 04 Apr 2019 22:41:02 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Thu, 04 Apr 2019 22:41:10 GMT
RUN set -x     && export GOSU_VERSION=1.11     && fetchDeps="         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $fetchDeps && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       B42F6819007F00F88E364FD4036A9C25BF357DD4     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && gpgconf --kill all     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove $fetchDeps
# Thu, 04 Apr 2019 22:41:18 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && fetchDeps="         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $fetchDeps && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && gpgconf --kill all     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h && apt-get purge -y --auto-remove $fetchDeps
# Mon, 22 Apr 2019 22:28:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1 maxminddb==1.4.1     && python -c 'import librabbitmq'     && python -c 'import maxminddb'     && apt-get purge -y --auto-remove make
# Mon, 22 Apr 2019 22:28:43 GMT
ENV SENTRY_VERSION=9.1.1
# Mon, 22 Apr 2019 22:30:12 GMT
RUN set -x     && buildDeps="         g++         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       D8749766A66DD714236A932C3B2D400CE5BBCA60     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && gpgconf --kill all     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove $buildDeps
# Mon, 22 Apr 2019 22:30:12 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 22 Apr 2019 22:30:13 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 22 Apr 2019 22:30:13 GMT
COPY file:c18ac272afa23195896b144833bf12a9e2e020bd8120dddb9e13f3848f2dace0 in /etc/sentry/ 
# Mon, 22 Apr 2019 22:30:14 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Mon, 22 Apr 2019 22:30:14 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Mon, 22 Apr 2019 22:30:14 GMT
EXPOSE 9000
# Mon, 22 Apr 2019 22:30:14 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 22 Apr 2019 22:30:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Apr 2019 22:30:15 GMT
CMD ["run" "web"]
# Mon, 22 Apr 2019 22:30:22 GMT
WORKDIR /usr/src/sentry
# Mon, 22 Apr 2019 22:30:22 GMT
ENV PYTHONPATH=/usr/src/sentry
# Mon, 22 Apr 2019 22:30:22 GMT
ONBUILD COPY . /usr/src/sentry
# Mon, 22 Apr 2019 22:30:22 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Mon, 22 Apr 2019 22:30:22 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Mon, 22 Apr 2019 22:30:23 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b35abcb27de3651a8b856a4cbaa752c67fc2fe657be16297a61a236bd94c0ef`  
		Last Modified: Wed, 27 Mar 2019 10:24:22 GMT  
		Size: 2.5 MB (2528316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc6dee9fe4802f03e005a1c8465f3fa2f1aa54b4d870469144cf24fa15eca`  
		Last Modified: Wed, 27 Mar 2019 10:24:26 GMT  
		Size: 17.0 MB (17034081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6a9200356691fc4e8ac35af1e03c78e741fbc917d8e82ead50210415ea65b2`  
		Last Modified: Wed, 27 Mar 2019 10:24:22 GMT  
		Size: 2.1 MB (2092329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba17a774dc509b7040e73bdaac1ee95cd83a046a9b6a7781f5d901f7209bb5be`  
		Last Modified: Thu, 04 Apr 2019 22:43:34 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fff37fdd0487b1f14a6ce7d4dc1bc7fef7a7b5dcd467fe806d3b859f9611be6`  
		Last Modified: Thu, 04 Apr 2019 22:43:56 GMT  
		Size: 116.8 MB (116769347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c6e896cee9fb286c0a731d126f60af560ca68bcbfb1649a7b41b121d638eaa`  
		Last Modified: Thu, 04 Apr 2019 22:43:34 GMT  
		Size: 1.2 MB (1246089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bb600fe0f957d3da6521d54a1e3bc564e6e006ea8240a07234c1e694f5766`  
		Last Modified: Thu, 04 Apr 2019 22:43:33 GMT  
		Size: 354.6 KB (354633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1695f52013a7cf906209df1174ee04f7d46ac3a6caf748c7763472c33a56ff47`  
		Last Modified: Mon, 22 Apr 2019 22:30:36 GMT  
		Size: 2.9 MB (2896101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f691986f7ff1da46d19445c905e08255be5ea8486a7dbaa32522d3b81ea7d405`  
		Last Modified: Mon, 22 Apr 2019 22:30:55 GMT  
		Size: 93.3 MB (93295711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933287ecd96d1845b59feef5bd5f9b31afaf6dcae1ea440cf9fc17ecf601e35c`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed8f8e2366ac06a213c823ebc0459ac38966d9af65e3ceea0706a174f2a5fc9`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 3.5 KB (3515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab8eda3b03942ba7d791dd336632ff0ca6381d2369c2db5708e36f9669f7e34`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d0b11c61d6a1d7e13acc9529a7fcbcf1ebd641abd9460d3e903b6985a08ede`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10975b146b2ce1350263047da6baf62135665d28c05a97ed7862d835b3fde801`  
		Last Modified: Mon, 22 Apr 2019 22:31:02 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9-onbuild`

```console
$ docker pull sentry@sha256:d12332bb7f16900f198e68ca4c9fe6067598213cbf0f108be3dcc1409f02bb18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:427d8cb2d29cc32a28fa2bb3e011e8070113da1ed6023e8a68f0598fc339d98b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258722060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e29f5f66ebdb82770d80443f51fa47beec64128f6f2759965c582e1e8b1a2c6a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:34:12 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 08:34:12 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 09:45:43 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 09:46:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:46:08 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 09:46:08 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 09:59:54 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 09:59:54 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 10:00:15 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 10:00:15 GMT
CMD ["python2"]
# Thu, 04 Apr 2019 22:40:28 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Thu, 04 Apr 2019 22:41:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxmlsec1-dev         libxslt-dev         libyaml-dev         pkg-config     && rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 22:41:02 GMT
ENV PIP_NO_CACHE_DIR=off
# Thu, 04 Apr 2019 22:41:02 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Thu, 04 Apr 2019 22:41:10 GMT
RUN set -x     && export GOSU_VERSION=1.11     && fetchDeps="         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $fetchDeps && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       B42F6819007F00F88E364FD4036A9C25BF357DD4     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && gpgconf --kill all     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove $fetchDeps
# Thu, 04 Apr 2019 22:41:18 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && fetchDeps="         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $fetchDeps && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && gpgconf --kill all     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h && apt-get purge -y --auto-remove $fetchDeps
# Mon, 22 Apr 2019 22:28:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1 maxminddb==1.4.1     && python -c 'import librabbitmq'     && python -c 'import maxminddb'     && apt-get purge -y --auto-remove make
# Mon, 22 Apr 2019 22:28:43 GMT
ENV SENTRY_VERSION=9.1.1
# Mon, 22 Apr 2019 22:30:12 GMT
RUN set -x     && buildDeps="         g++         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       D8749766A66DD714236A932C3B2D400CE5BBCA60     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && gpgconf --kill all     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove $buildDeps
# Mon, 22 Apr 2019 22:30:12 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 22 Apr 2019 22:30:13 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 22 Apr 2019 22:30:13 GMT
COPY file:c18ac272afa23195896b144833bf12a9e2e020bd8120dddb9e13f3848f2dace0 in /etc/sentry/ 
# Mon, 22 Apr 2019 22:30:14 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Mon, 22 Apr 2019 22:30:14 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Mon, 22 Apr 2019 22:30:14 GMT
EXPOSE 9000
# Mon, 22 Apr 2019 22:30:14 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 22 Apr 2019 22:30:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Apr 2019 22:30:15 GMT
CMD ["run" "web"]
# Mon, 22 Apr 2019 22:30:22 GMT
WORKDIR /usr/src/sentry
# Mon, 22 Apr 2019 22:30:22 GMT
ENV PYTHONPATH=/usr/src/sentry
# Mon, 22 Apr 2019 22:30:22 GMT
ONBUILD COPY . /usr/src/sentry
# Mon, 22 Apr 2019 22:30:22 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Mon, 22 Apr 2019 22:30:22 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Mon, 22 Apr 2019 22:30:23 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b35abcb27de3651a8b856a4cbaa752c67fc2fe657be16297a61a236bd94c0ef`  
		Last Modified: Wed, 27 Mar 2019 10:24:22 GMT  
		Size: 2.5 MB (2528316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc6dee9fe4802f03e005a1c8465f3fa2f1aa54b4d870469144cf24fa15eca`  
		Last Modified: Wed, 27 Mar 2019 10:24:26 GMT  
		Size: 17.0 MB (17034081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6a9200356691fc4e8ac35af1e03c78e741fbc917d8e82ead50210415ea65b2`  
		Last Modified: Wed, 27 Mar 2019 10:24:22 GMT  
		Size: 2.1 MB (2092329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba17a774dc509b7040e73bdaac1ee95cd83a046a9b6a7781f5d901f7209bb5be`  
		Last Modified: Thu, 04 Apr 2019 22:43:34 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fff37fdd0487b1f14a6ce7d4dc1bc7fef7a7b5dcd467fe806d3b859f9611be6`  
		Last Modified: Thu, 04 Apr 2019 22:43:56 GMT  
		Size: 116.8 MB (116769347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c6e896cee9fb286c0a731d126f60af560ca68bcbfb1649a7b41b121d638eaa`  
		Last Modified: Thu, 04 Apr 2019 22:43:34 GMT  
		Size: 1.2 MB (1246089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bb600fe0f957d3da6521d54a1e3bc564e6e006ea8240a07234c1e694f5766`  
		Last Modified: Thu, 04 Apr 2019 22:43:33 GMT  
		Size: 354.6 KB (354633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1695f52013a7cf906209df1174ee04f7d46ac3a6caf748c7763472c33a56ff47`  
		Last Modified: Mon, 22 Apr 2019 22:30:36 GMT  
		Size: 2.9 MB (2896101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f691986f7ff1da46d19445c905e08255be5ea8486a7dbaa32522d3b81ea7d405`  
		Last Modified: Mon, 22 Apr 2019 22:30:55 GMT  
		Size: 93.3 MB (93295711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933287ecd96d1845b59feef5bd5f9b31afaf6dcae1ea440cf9fc17ecf601e35c`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed8f8e2366ac06a213c823ebc0459ac38966d9af65e3ceea0706a174f2a5fc9`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 3.5 KB (3515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab8eda3b03942ba7d791dd336632ff0ca6381d2369c2db5708e36f9669f7e34`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d0b11c61d6a1d7e13acc9529a7fcbcf1ebd641abd9460d3e903b6985a08ede`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10975b146b2ce1350263047da6baf62135665d28c05a97ed7862d835b3fde801`  
		Last Modified: Mon, 22 Apr 2019 22:31:02 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:latest`

```console
$ docker pull sentry@sha256:7bea5eb38d693caba8e6eb14bfd8b5571d67e06c0b53f50faf4568c688f064a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

```console
$ docker pull sentry@sha256:ce5bb4957d4270e767506f944d99a277140ff03c0be9a217640a8a76fbec0e71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258721923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:170a2c5c7cbf7d21fc47ead0918544f1867622c4555c105162b03cbc1527f380`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:34:12 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 08:34:12 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 09:45:43 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 09:46:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:46:08 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 09:46:08 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 09:59:54 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 09:59:54 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 10:00:15 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 10:00:15 GMT
CMD ["python2"]
# Thu, 04 Apr 2019 22:40:28 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Thu, 04 Apr 2019 22:41:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxmlsec1-dev         libxslt-dev         libyaml-dev         pkg-config     && rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 22:41:02 GMT
ENV PIP_NO_CACHE_DIR=off
# Thu, 04 Apr 2019 22:41:02 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Thu, 04 Apr 2019 22:41:10 GMT
RUN set -x     && export GOSU_VERSION=1.11     && fetchDeps="         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $fetchDeps && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       B42F6819007F00F88E364FD4036A9C25BF357DD4     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && gpgconf --kill all     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove $fetchDeps
# Thu, 04 Apr 2019 22:41:18 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && fetchDeps="         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $fetchDeps && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && gpgconf --kill all     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h && apt-get purge -y --auto-remove $fetchDeps
# Mon, 22 Apr 2019 22:28:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1 maxminddb==1.4.1     && python -c 'import librabbitmq'     && python -c 'import maxminddb'     && apt-get purge -y --auto-remove make
# Mon, 22 Apr 2019 22:28:43 GMT
ENV SENTRY_VERSION=9.1.1
# Mon, 22 Apr 2019 22:30:12 GMT
RUN set -x     && buildDeps="         g++         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       D8749766A66DD714236A932C3B2D400CE5BBCA60     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && gpgconf --kill all     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove $buildDeps
# Mon, 22 Apr 2019 22:30:12 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 22 Apr 2019 22:30:13 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 22 Apr 2019 22:30:13 GMT
COPY file:c18ac272afa23195896b144833bf12a9e2e020bd8120dddb9e13f3848f2dace0 in /etc/sentry/ 
# Mon, 22 Apr 2019 22:30:14 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Mon, 22 Apr 2019 22:30:14 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Mon, 22 Apr 2019 22:30:14 GMT
EXPOSE 9000
# Mon, 22 Apr 2019 22:30:14 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 22 Apr 2019 22:30:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Apr 2019 22:30:15 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b35abcb27de3651a8b856a4cbaa752c67fc2fe657be16297a61a236bd94c0ef`  
		Last Modified: Wed, 27 Mar 2019 10:24:22 GMT  
		Size: 2.5 MB (2528316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc6dee9fe4802f03e005a1c8465f3fa2f1aa54b4d870469144cf24fa15eca`  
		Last Modified: Wed, 27 Mar 2019 10:24:26 GMT  
		Size: 17.0 MB (17034081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6a9200356691fc4e8ac35af1e03c78e741fbc917d8e82ead50210415ea65b2`  
		Last Modified: Wed, 27 Mar 2019 10:24:22 GMT  
		Size: 2.1 MB (2092329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba17a774dc509b7040e73bdaac1ee95cd83a046a9b6a7781f5d901f7209bb5be`  
		Last Modified: Thu, 04 Apr 2019 22:43:34 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fff37fdd0487b1f14a6ce7d4dc1bc7fef7a7b5dcd467fe806d3b859f9611be6`  
		Last Modified: Thu, 04 Apr 2019 22:43:56 GMT  
		Size: 116.8 MB (116769347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c6e896cee9fb286c0a731d126f60af560ca68bcbfb1649a7b41b121d638eaa`  
		Last Modified: Thu, 04 Apr 2019 22:43:34 GMT  
		Size: 1.2 MB (1246089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bb600fe0f957d3da6521d54a1e3bc564e6e006ea8240a07234c1e694f5766`  
		Last Modified: Thu, 04 Apr 2019 22:43:33 GMT  
		Size: 354.6 KB (354633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1695f52013a7cf906209df1174ee04f7d46ac3a6caf748c7763472c33a56ff47`  
		Last Modified: Mon, 22 Apr 2019 22:30:36 GMT  
		Size: 2.9 MB (2896101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f691986f7ff1da46d19445c905e08255be5ea8486a7dbaa32522d3b81ea7d405`  
		Last Modified: Mon, 22 Apr 2019 22:30:55 GMT  
		Size: 93.3 MB (93295711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933287ecd96d1845b59feef5bd5f9b31afaf6dcae1ea440cf9fc17ecf601e35c`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed8f8e2366ac06a213c823ebc0459ac38966d9af65e3ceea0706a174f2a5fc9`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 3.5 KB (3515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab8eda3b03942ba7d791dd336632ff0ca6381d2369c2db5708e36f9669f7e34`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d0b11c61d6a1d7e13acc9529a7fcbcf1ebd641abd9460d3e903b6985a08ede`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:d12332bb7f16900f198e68ca4c9fe6067598213cbf0f108be3dcc1409f02bb18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:427d8cb2d29cc32a28fa2bb3e011e8070113da1ed6023e8a68f0598fc339d98b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258722060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e29f5f66ebdb82770d80443f51fa47beec64128f6f2759965c582e1e8b1a2c6a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:34:12 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 08:34:12 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 09:45:43 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 09:46:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:46:08 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 09:46:08 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 09:59:54 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 09:59:54 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 10:00:15 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 10:00:15 GMT
CMD ["python2"]
# Thu, 04 Apr 2019 22:40:28 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Thu, 04 Apr 2019 22:41:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxmlsec1-dev         libxslt-dev         libyaml-dev         pkg-config     && rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 22:41:02 GMT
ENV PIP_NO_CACHE_DIR=off
# Thu, 04 Apr 2019 22:41:02 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Thu, 04 Apr 2019 22:41:10 GMT
RUN set -x     && export GOSU_VERSION=1.11     && fetchDeps="         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $fetchDeps && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       B42F6819007F00F88E364FD4036A9C25BF357DD4     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && gpgconf --kill all     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove $fetchDeps
# Thu, 04 Apr 2019 22:41:18 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && fetchDeps="         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $fetchDeps && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && gpgconf --kill all     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h && apt-get purge -y --auto-remove $fetchDeps
# Mon, 22 Apr 2019 22:28:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1 maxminddb==1.4.1     && python -c 'import librabbitmq'     && python -c 'import maxminddb'     && apt-get purge -y --auto-remove make
# Mon, 22 Apr 2019 22:28:43 GMT
ENV SENTRY_VERSION=9.1.1
# Mon, 22 Apr 2019 22:30:12 GMT
RUN set -x     && buildDeps="         g++         dirmngr         gnupg         wget     "     && apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && for key in       D8749766A66DD714236A932C3B2D400CE5BBCA60     ; do       gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||       gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||       gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;     done     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && gpgconf --kill all     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove $buildDeps
# Mon, 22 Apr 2019 22:30:12 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 22 Apr 2019 22:30:13 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 22 Apr 2019 22:30:13 GMT
COPY file:c18ac272afa23195896b144833bf12a9e2e020bd8120dddb9e13f3848f2dace0 in /etc/sentry/ 
# Mon, 22 Apr 2019 22:30:14 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Mon, 22 Apr 2019 22:30:14 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Mon, 22 Apr 2019 22:30:14 GMT
EXPOSE 9000
# Mon, 22 Apr 2019 22:30:14 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 22 Apr 2019 22:30:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 22 Apr 2019 22:30:15 GMT
CMD ["run" "web"]
# Mon, 22 Apr 2019 22:30:22 GMT
WORKDIR /usr/src/sentry
# Mon, 22 Apr 2019 22:30:22 GMT
ENV PYTHONPATH=/usr/src/sentry
# Mon, 22 Apr 2019 22:30:22 GMT
ONBUILD COPY . /usr/src/sentry
# Mon, 22 Apr 2019 22:30:22 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Mon, 22 Apr 2019 22:30:22 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Mon, 22 Apr 2019 22:30:23 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b35abcb27de3651a8b856a4cbaa752c67fc2fe657be16297a61a236bd94c0ef`  
		Last Modified: Wed, 27 Mar 2019 10:24:22 GMT  
		Size: 2.5 MB (2528316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc6dee9fe4802f03e005a1c8465f3fa2f1aa54b4d870469144cf24fa15eca`  
		Last Modified: Wed, 27 Mar 2019 10:24:26 GMT  
		Size: 17.0 MB (17034081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6a9200356691fc4e8ac35af1e03c78e741fbc917d8e82ead50210415ea65b2`  
		Last Modified: Wed, 27 Mar 2019 10:24:22 GMT  
		Size: 2.1 MB (2092329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba17a774dc509b7040e73bdaac1ee95cd83a046a9b6a7781f5d901f7209bb5be`  
		Last Modified: Thu, 04 Apr 2019 22:43:34 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fff37fdd0487b1f14a6ce7d4dc1bc7fef7a7b5dcd467fe806d3b859f9611be6`  
		Last Modified: Thu, 04 Apr 2019 22:43:56 GMT  
		Size: 116.8 MB (116769347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c6e896cee9fb286c0a731d126f60af560ca68bcbfb1649a7b41b121d638eaa`  
		Last Modified: Thu, 04 Apr 2019 22:43:34 GMT  
		Size: 1.2 MB (1246089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bb600fe0f957d3da6521d54a1e3bc564e6e006ea8240a07234c1e694f5766`  
		Last Modified: Thu, 04 Apr 2019 22:43:33 GMT  
		Size: 354.6 KB (354633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1695f52013a7cf906209df1174ee04f7d46ac3a6caf748c7763472c33a56ff47`  
		Last Modified: Mon, 22 Apr 2019 22:30:36 GMT  
		Size: 2.9 MB (2896101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f691986f7ff1da46d19445c905e08255be5ea8486a7dbaa32522d3b81ea7d405`  
		Last Modified: Mon, 22 Apr 2019 22:30:55 GMT  
		Size: 93.3 MB (93295711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933287ecd96d1845b59feef5bd5f9b31afaf6dcae1ea440cf9fc17ecf601e35c`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed8f8e2366ac06a213c823ebc0459ac38966d9af65e3ceea0706a174f2a5fc9`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 3.5 KB (3515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab8eda3b03942ba7d791dd336632ff0ca6381d2369c2db5708e36f9669f7e34`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d0b11c61d6a1d7e13acc9529a7fcbcf1ebd641abd9460d3e903b6985a08ede`  
		Last Modified: Mon, 22 Apr 2019 22:30:34 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10975b146b2ce1350263047da6baf62135665d28c05a97ed7862d835b3fde801`  
		Last Modified: Mon, 22 Apr 2019 22:31:02 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
