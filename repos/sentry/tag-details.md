<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sentry`

-	[`sentry:8`](#sentry8)
-	[`sentry:8.22`](#sentry822)
-	[`sentry:8.22.0`](#sentry8220)
-	[`sentry:8.22.0-onbuild`](#sentry8220-onbuild)
-	[`sentry:8.22-onbuild`](#sentry822-onbuild)
-	[`sentry:8-onbuild`](#sentry8-onbuild)
-	[`sentry:9`](#sentry9)
-	[`sentry:9.0`](#sentry90)
-	[`sentry:9.0.0`](#sentry900)
-	[`sentry:9.0.0-onbuild`](#sentry900-onbuild)
-	[`sentry:9.0-onbuild`](#sentry90-onbuild)
-	[`sentry:9-onbuild`](#sentry9-onbuild)
-	[`sentry:latest`](#sentrylatest)
-	[`sentry:onbuild`](#sentryonbuild)

## `sentry:8`

```console
$ docker pull sentry@sha256:ddc02958d08825bb75c2ff53870f01fed09f655e11ce7a69c85ebe22a220fda3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

```console
$ docker pull sentry@sha256:aed7fdc622c9e7864d2319a341cb290e1ef2945c95ebfa9ac40009350d57ff6a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174116870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0c7c42bbf90e5f9a5d5e4fe8a9efcdb792e2b12c51d04c6d7d2ae9335c3636`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 01 May 2018 22:09:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 22:09:51 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 23:56:17 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 01 May 2018 23:56:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 23:56:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 01 May 2018 23:56:38 GMT
ENV PYTHON_VERSION=2.7.14
# Tue, 01 May 2018 23:58:44 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Tue, 01 May 2018 23:58:44 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 01 May 2018 23:59:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 01 May 2018 23:59:07 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 17:39:59 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 05 Sep 2018 17:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:40:41 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 05 Sep 2018 17:40:41 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 05 Sep 2018 17:40:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 17:41:05 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:41:05 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 05 Sep 2018 17:41:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:41:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 05 Sep 2018 17:41:59 GMT
ENV SENTRY_VERSION=8.22.0
# Wed, 05 Sep 2018 17:43:34 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Sep 2018 17:43:35 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Sep 2018 17:43:35 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 26 Jan 2019 02:09:38 GMT
COPY file:eb9b8cb898c1cb3d4287bcebccb197a2be8b84d026a7f32333cf07190d07ee20 in /etc/sentry/ 
# Sat, 26 Jan 2019 02:09:39 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Sat, 26 Jan 2019 02:09:39 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Sat, 26 Jan 2019 02:09:39 GMT
EXPOSE 9000
# Sat, 26 Jan 2019 02:09:39 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 26 Jan 2019 02:09:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Jan 2019 02:09:40 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59cc4d600672d0001a99d54c4cbfadbfbc5e89fe7fe6d83a530074e41da87c`  
		Last Modified: Wed, 02 May 2018 02:39:49 GMT  
		Size: 2.7 MB (2710710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d9f59a509eee6bd7857b6978e33b71a4fcd7995c4a20420d1c6070379a5a32`  
		Last Modified: Wed, 02 May 2018 02:39:53 GMT  
		Size: 14.9 MB (14935140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a605a5b8783de3f83436831be57753239ba92d8a531f971e9c87c2b9b7cb64`  
		Last Modified: Wed, 02 May 2018 02:39:50 GMT  
		Size: 2.1 MB (2087851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f43ce2e433f7911f14fcd11b42a40c8cb1eae8782bb9bcc31f620e107e3740`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f2f2627937bca6e0ec298207a418f55ca34197a4712f75a4255a7b06adcfc7`  
		Last Modified: Wed, 05 Sep 2018 17:47:54 GMT  
		Size: 56.7 MB (56680455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d558da499cd28e6b31e83502b996b7143d401126bc56682981610892042cf28d`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 845.3 KB (845259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb92f14eab171c6304976767d53f03993171e68c3ce4ef0e5527b1e8989214d4`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 352.6 KB (352613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7aa8259f2cfcdc1f6149ac13d0530d3c0e096c5e6523a4650ac844d48a1a3b`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 2.8 MB (2769819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fe2b13331a72be264e0a7442e451f78809b57d747391c3246320d01bc9b60d`  
		Last Modified: Wed, 05 Sep 2018 17:47:55 GMT  
		Size: 63.6 MB (63598225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94ce70b9585fc7b0cb0a7d36cd8b0540b8aa5b3d3b25360844fc047c7881fd6`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ddc1fae972f4287ad69d1bb03f96489c1f89a40991243ac4d4f96a67c2118b`  
		Last Modified: Sat, 26 Jan 2019 02:22:03 GMT  
		Size: 3.4 KB (3410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291daa21fb7d01190a6abb01ffc953f965e9cd612704c1b1c2140c6cf30dade9`  
		Last Modified: Sat, 26 Jan 2019 02:22:03 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0063c364fa29b1d46809ab9689b32d5d227afa72239d3292e45ab027b3abf1`  
		Last Modified: Sat, 26 Jan 2019 02:22:03 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.22`

```console
$ docker pull sentry@sha256:ddc02958d08825bb75c2ff53870f01fed09f655e11ce7a69c85ebe22a220fda3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.22` - linux; amd64

```console
$ docker pull sentry@sha256:aed7fdc622c9e7864d2319a341cb290e1ef2945c95ebfa9ac40009350d57ff6a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174116870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0c7c42bbf90e5f9a5d5e4fe8a9efcdb792e2b12c51d04c6d7d2ae9335c3636`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 01 May 2018 22:09:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 22:09:51 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 23:56:17 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 01 May 2018 23:56:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 23:56:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 01 May 2018 23:56:38 GMT
ENV PYTHON_VERSION=2.7.14
# Tue, 01 May 2018 23:58:44 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Tue, 01 May 2018 23:58:44 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 01 May 2018 23:59:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 01 May 2018 23:59:07 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 17:39:59 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 05 Sep 2018 17:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:40:41 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 05 Sep 2018 17:40:41 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 05 Sep 2018 17:40:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 17:41:05 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:41:05 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 05 Sep 2018 17:41:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:41:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 05 Sep 2018 17:41:59 GMT
ENV SENTRY_VERSION=8.22.0
# Wed, 05 Sep 2018 17:43:34 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Sep 2018 17:43:35 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Sep 2018 17:43:35 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 26 Jan 2019 02:09:38 GMT
COPY file:eb9b8cb898c1cb3d4287bcebccb197a2be8b84d026a7f32333cf07190d07ee20 in /etc/sentry/ 
# Sat, 26 Jan 2019 02:09:39 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Sat, 26 Jan 2019 02:09:39 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Sat, 26 Jan 2019 02:09:39 GMT
EXPOSE 9000
# Sat, 26 Jan 2019 02:09:39 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 26 Jan 2019 02:09:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Jan 2019 02:09:40 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59cc4d600672d0001a99d54c4cbfadbfbc5e89fe7fe6d83a530074e41da87c`  
		Last Modified: Wed, 02 May 2018 02:39:49 GMT  
		Size: 2.7 MB (2710710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d9f59a509eee6bd7857b6978e33b71a4fcd7995c4a20420d1c6070379a5a32`  
		Last Modified: Wed, 02 May 2018 02:39:53 GMT  
		Size: 14.9 MB (14935140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a605a5b8783de3f83436831be57753239ba92d8a531f971e9c87c2b9b7cb64`  
		Last Modified: Wed, 02 May 2018 02:39:50 GMT  
		Size: 2.1 MB (2087851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f43ce2e433f7911f14fcd11b42a40c8cb1eae8782bb9bcc31f620e107e3740`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f2f2627937bca6e0ec298207a418f55ca34197a4712f75a4255a7b06adcfc7`  
		Last Modified: Wed, 05 Sep 2018 17:47:54 GMT  
		Size: 56.7 MB (56680455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d558da499cd28e6b31e83502b996b7143d401126bc56682981610892042cf28d`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 845.3 KB (845259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb92f14eab171c6304976767d53f03993171e68c3ce4ef0e5527b1e8989214d4`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 352.6 KB (352613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7aa8259f2cfcdc1f6149ac13d0530d3c0e096c5e6523a4650ac844d48a1a3b`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 2.8 MB (2769819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fe2b13331a72be264e0a7442e451f78809b57d747391c3246320d01bc9b60d`  
		Last Modified: Wed, 05 Sep 2018 17:47:55 GMT  
		Size: 63.6 MB (63598225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94ce70b9585fc7b0cb0a7d36cd8b0540b8aa5b3d3b25360844fc047c7881fd6`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ddc1fae972f4287ad69d1bb03f96489c1f89a40991243ac4d4f96a67c2118b`  
		Last Modified: Sat, 26 Jan 2019 02:22:03 GMT  
		Size: 3.4 KB (3410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291daa21fb7d01190a6abb01ffc953f965e9cd612704c1b1c2140c6cf30dade9`  
		Last Modified: Sat, 26 Jan 2019 02:22:03 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0063c364fa29b1d46809ab9689b32d5d227afa72239d3292e45ab027b3abf1`  
		Last Modified: Sat, 26 Jan 2019 02:22:03 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.22.0`

```console
$ docker pull sentry@sha256:ddc02958d08825bb75c2ff53870f01fed09f655e11ce7a69c85ebe22a220fda3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.22.0` - linux; amd64

```console
$ docker pull sentry@sha256:aed7fdc622c9e7864d2319a341cb290e1ef2945c95ebfa9ac40009350d57ff6a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174116870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0c7c42bbf90e5f9a5d5e4fe8a9efcdb792e2b12c51d04c6d7d2ae9335c3636`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 01 May 2018 22:09:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 22:09:51 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 23:56:17 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 01 May 2018 23:56:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 23:56:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 01 May 2018 23:56:38 GMT
ENV PYTHON_VERSION=2.7.14
# Tue, 01 May 2018 23:58:44 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Tue, 01 May 2018 23:58:44 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 01 May 2018 23:59:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 01 May 2018 23:59:07 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 17:39:59 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 05 Sep 2018 17:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:40:41 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 05 Sep 2018 17:40:41 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 05 Sep 2018 17:40:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 17:41:05 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:41:05 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 05 Sep 2018 17:41:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:41:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 05 Sep 2018 17:41:59 GMT
ENV SENTRY_VERSION=8.22.0
# Wed, 05 Sep 2018 17:43:34 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Sep 2018 17:43:35 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Sep 2018 17:43:35 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 26 Jan 2019 02:09:38 GMT
COPY file:eb9b8cb898c1cb3d4287bcebccb197a2be8b84d026a7f32333cf07190d07ee20 in /etc/sentry/ 
# Sat, 26 Jan 2019 02:09:39 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Sat, 26 Jan 2019 02:09:39 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Sat, 26 Jan 2019 02:09:39 GMT
EXPOSE 9000
# Sat, 26 Jan 2019 02:09:39 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 26 Jan 2019 02:09:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Jan 2019 02:09:40 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59cc4d600672d0001a99d54c4cbfadbfbc5e89fe7fe6d83a530074e41da87c`  
		Last Modified: Wed, 02 May 2018 02:39:49 GMT  
		Size: 2.7 MB (2710710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d9f59a509eee6bd7857b6978e33b71a4fcd7995c4a20420d1c6070379a5a32`  
		Last Modified: Wed, 02 May 2018 02:39:53 GMT  
		Size: 14.9 MB (14935140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a605a5b8783de3f83436831be57753239ba92d8a531f971e9c87c2b9b7cb64`  
		Last Modified: Wed, 02 May 2018 02:39:50 GMT  
		Size: 2.1 MB (2087851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f43ce2e433f7911f14fcd11b42a40c8cb1eae8782bb9bcc31f620e107e3740`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f2f2627937bca6e0ec298207a418f55ca34197a4712f75a4255a7b06adcfc7`  
		Last Modified: Wed, 05 Sep 2018 17:47:54 GMT  
		Size: 56.7 MB (56680455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d558da499cd28e6b31e83502b996b7143d401126bc56682981610892042cf28d`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 845.3 KB (845259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb92f14eab171c6304976767d53f03993171e68c3ce4ef0e5527b1e8989214d4`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 352.6 KB (352613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7aa8259f2cfcdc1f6149ac13d0530d3c0e096c5e6523a4650ac844d48a1a3b`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 2.8 MB (2769819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fe2b13331a72be264e0a7442e451f78809b57d747391c3246320d01bc9b60d`  
		Last Modified: Wed, 05 Sep 2018 17:47:55 GMT  
		Size: 63.6 MB (63598225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94ce70b9585fc7b0cb0a7d36cd8b0540b8aa5b3d3b25360844fc047c7881fd6`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ddc1fae972f4287ad69d1bb03f96489c1f89a40991243ac4d4f96a67c2118b`  
		Last Modified: Sat, 26 Jan 2019 02:22:03 GMT  
		Size: 3.4 KB (3410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291daa21fb7d01190a6abb01ffc953f965e9cd612704c1b1c2140c6cf30dade9`  
		Last Modified: Sat, 26 Jan 2019 02:22:03 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0063c364fa29b1d46809ab9689b32d5d227afa72239d3292e45ab027b3abf1`  
		Last Modified: Sat, 26 Jan 2019 02:22:03 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.22.0-onbuild`

```console
$ docker pull sentry@sha256:16c89e9df73f7fcbd9d6b262e63e93fcd3d3233b8855d0d654d097e2a5c50d3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.22.0-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:63eddddc0c826ab6db9a304523fbd01cf01e273e3f30402e37386206609e97ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174117007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b311b97d279edca8205fd4dbe6162e717da57853cb53089a13414513849323e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 01 May 2018 22:09:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 22:09:51 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 23:56:17 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 01 May 2018 23:56:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 23:56:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 01 May 2018 23:56:38 GMT
ENV PYTHON_VERSION=2.7.14
# Tue, 01 May 2018 23:58:44 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Tue, 01 May 2018 23:58:44 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 01 May 2018 23:59:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 01 May 2018 23:59:07 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 17:39:59 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 05 Sep 2018 17:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:40:41 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 05 Sep 2018 17:40:41 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 05 Sep 2018 17:40:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 17:41:05 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:41:05 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 05 Sep 2018 17:41:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:41:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 05 Sep 2018 17:41:59 GMT
ENV SENTRY_VERSION=8.22.0
# Wed, 05 Sep 2018 17:43:34 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Sep 2018 17:43:35 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Sep 2018 17:43:35 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 26 Jan 2019 02:09:38 GMT
COPY file:eb9b8cb898c1cb3d4287bcebccb197a2be8b84d026a7f32333cf07190d07ee20 in /etc/sentry/ 
# Sat, 26 Jan 2019 02:09:39 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Sat, 26 Jan 2019 02:09:39 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Sat, 26 Jan 2019 02:09:39 GMT
EXPOSE 9000
# Sat, 26 Jan 2019 02:09:39 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 26 Jan 2019 02:09:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Jan 2019 02:09:40 GMT
CMD ["run" "web"]
# Sat, 26 Jan 2019 02:09:42 GMT
WORKDIR /usr/src/sentry
# Sat, 26 Jan 2019 02:09:43 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 26 Jan 2019 02:09:43 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 26 Jan 2019 02:09:43 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 26 Jan 2019 02:09:43 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 26 Jan 2019 02:09:44 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59cc4d600672d0001a99d54c4cbfadbfbc5e89fe7fe6d83a530074e41da87c`  
		Last Modified: Wed, 02 May 2018 02:39:49 GMT  
		Size: 2.7 MB (2710710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d9f59a509eee6bd7857b6978e33b71a4fcd7995c4a20420d1c6070379a5a32`  
		Last Modified: Wed, 02 May 2018 02:39:53 GMT  
		Size: 14.9 MB (14935140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a605a5b8783de3f83436831be57753239ba92d8a531f971e9c87c2b9b7cb64`  
		Last Modified: Wed, 02 May 2018 02:39:50 GMT  
		Size: 2.1 MB (2087851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f43ce2e433f7911f14fcd11b42a40c8cb1eae8782bb9bcc31f620e107e3740`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f2f2627937bca6e0ec298207a418f55ca34197a4712f75a4255a7b06adcfc7`  
		Last Modified: Wed, 05 Sep 2018 17:47:54 GMT  
		Size: 56.7 MB (56680455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d558da499cd28e6b31e83502b996b7143d401126bc56682981610892042cf28d`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 845.3 KB (845259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb92f14eab171c6304976767d53f03993171e68c3ce4ef0e5527b1e8989214d4`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 352.6 KB (352613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7aa8259f2cfcdc1f6149ac13d0530d3c0e096c5e6523a4650ac844d48a1a3b`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 2.8 MB (2769819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fe2b13331a72be264e0a7442e451f78809b57d747391c3246320d01bc9b60d`  
		Last Modified: Wed, 05 Sep 2018 17:47:55 GMT  
		Size: 63.6 MB (63598225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94ce70b9585fc7b0cb0a7d36cd8b0540b8aa5b3d3b25360844fc047c7881fd6`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ddc1fae972f4287ad69d1bb03f96489c1f89a40991243ac4d4f96a67c2118b`  
		Last Modified: Sat, 26 Jan 2019 02:22:03 GMT  
		Size: 3.4 KB (3410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291daa21fb7d01190a6abb01ffc953f965e9cd612704c1b1c2140c6cf30dade9`  
		Last Modified: Sat, 26 Jan 2019 02:22:03 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0063c364fa29b1d46809ab9689b32d5d227afa72239d3292e45ab027b3abf1`  
		Last Modified: Sat, 26 Jan 2019 02:22:03 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5c8572f4b993964790e1703c58075634e19d98b53cc7f50157cd8965eea7aa`  
		Last Modified: Sat, 26 Jan 2019 02:22:07 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.22-onbuild`

```console
$ docker pull sentry@sha256:16c89e9df73f7fcbd9d6b262e63e93fcd3d3233b8855d0d654d097e2a5c50d3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.22-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:63eddddc0c826ab6db9a304523fbd01cf01e273e3f30402e37386206609e97ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174117007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b311b97d279edca8205fd4dbe6162e717da57853cb53089a13414513849323e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 01 May 2018 22:09:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 22:09:51 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 23:56:17 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 01 May 2018 23:56:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 23:56:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 01 May 2018 23:56:38 GMT
ENV PYTHON_VERSION=2.7.14
# Tue, 01 May 2018 23:58:44 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Tue, 01 May 2018 23:58:44 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 01 May 2018 23:59:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 01 May 2018 23:59:07 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 17:39:59 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 05 Sep 2018 17:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:40:41 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 05 Sep 2018 17:40:41 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 05 Sep 2018 17:40:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 17:41:05 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:41:05 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 05 Sep 2018 17:41:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:41:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 05 Sep 2018 17:41:59 GMT
ENV SENTRY_VERSION=8.22.0
# Wed, 05 Sep 2018 17:43:34 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Sep 2018 17:43:35 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Sep 2018 17:43:35 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 26 Jan 2019 02:09:38 GMT
COPY file:eb9b8cb898c1cb3d4287bcebccb197a2be8b84d026a7f32333cf07190d07ee20 in /etc/sentry/ 
# Sat, 26 Jan 2019 02:09:39 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Sat, 26 Jan 2019 02:09:39 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Sat, 26 Jan 2019 02:09:39 GMT
EXPOSE 9000
# Sat, 26 Jan 2019 02:09:39 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 26 Jan 2019 02:09:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Jan 2019 02:09:40 GMT
CMD ["run" "web"]
# Sat, 26 Jan 2019 02:09:42 GMT
WORKDIR /usr/src/sentry
# Sat, 26 Jan 2019 02:09:43 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 26 Jan 2019 02:09:43 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 26 Jan 2019 02:09:43 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 26 Jan 2019 02:09:43 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 26 Jan 2019 02:09:44 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59cc4d600672d0001a99d54c4cbfadbfbc5e89fe7fe6d83a530074e41da87c`  
		Last Modified: Wed, 02 May 2018 02:39:49 GMT  
		Size: 2.7 MB (2710710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d9f59a509eee6bd7857b6978e33b71a4fcd7995c4a20420d1c6070379a5a32`  
		Last Modified: Wed, 02 May 2018 02:39:53 GMT  
		Size: 14.9 MB (14935140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a605a5b8783de3f83436831be57753239ba92d8a531f971e9c87c2b9b7cb64`  
		Last Modified: Wed, 02 May 2018 02:39:50 GMT  
		Size: 2.1 MB (2087851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f43ce2e433f7911f14fcd11b42a40c8cb1eae8782bb9bcc31f620e107e3740`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f2f2627937bca6e0ec298207a418f55ca34197a4712f75a4255a7b06adcfc7`  
		Last Modified: Wed, 05 Sep 2018 17:47:54 GMT  
		Size: 56.7 MB (56680455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d558da499cd28e6b31e83502b996b7143d401126bc56682981610892042cf28d`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 845.3 KB (845259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb92f14eab171c6304976767d53f03993171e68c3ce4ef0e5527b1e8989214d4`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 352.6 KB (352613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7aa8259f2cfcdc1f6149ac13d0530d3c0e096c5e6523a4650ac844d48a1a3b`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 2.8 MB (2769819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fe2b13331a72be264e0a7442e451f78809b57d747391c3246320d01bc9b60d`  
		Last Modified: Wed, 05 Sep 2018 17:47:55 GMT  
		Size: 63.6 MB (63598225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94ce70b9585fc7b0cb0a7d36cd8b0540b8aa5b3d3b25360844fc047c7881fd6`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ddc1fae972f4287ad69d1bb03f96489c1f89a40991243ac4d4f96a67c2118b`  
		Last Modified: Sat, 26 Jan 2019 02:22:03 GMT  
		Size: 3.4 KB (3410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291daa21fb7d01190a6abb01ffc953f965e9cd612704c1b1c2140c6cf30dade9`  
		Last Modified: Sat, 26 Jan 2019 02:22:03 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0063c364fa29b1d46809ab9689b32d5d227afa72239d3292e45ab027b3abf1`  
		Last Modified: Sat, 26 Jan 2019 02:22:03 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5c8572f4b993964790e1703c58075634e19d98b53cc7f50157cd8965eea7aa`  
		Last Modified: Sat, 26 Jan 2019 02:22:07 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:16c89e9df73f7fcbd9d6b262e63e93fcd3d3233b8855d0d654d097e2a5c50d3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:63eddddc0c826ab6db9a304523fbd01cf01e273e3f30402e37386206609e97ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174117007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b311b97d279edca8205fd4dbe6162e717da57853cb53089a13414513849323e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 01 May 2018 22:09:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 22:09:51 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 23:56:17 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 01 May 2018 23:56:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 23:56:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 01 May 2018 23:56:38 GMT
ENV PYTHON_VERSION=2.7.14
# Tue, 01 May 2018 23:58:44 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Tue, 01 May 2018 23:58:44 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 01 May 2018 23:59:07 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 01 May 2018 23:59:07 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 17:39:59 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 05 Sep 2018 17:40:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:40:41 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 05 Sep 2018 17:40:41 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 05 Sep 2018 17:40:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 17:41:05 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:41:05 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 05 Sep 2018 17:41:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:41:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 05 Sep 2018 17:41:59 GMT
ENV SENTRY_VERSION=8.22.0
# Wed, 05 Sep 2018 17:43:34 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Sep 2018 17:43:35 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Sep 2018 17:43:35 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 26 Jan 2019 02:09:38 GMT
COPY file:eb9b8cb898c1cb3d4287bcebccb197a2be8b84d026a7f32333cf07190d07ee20 in /etc/sentry/ 
# Sat, 26 Jan 2019 02:09:39 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Sat, 26 Jan 2019 02:09:39 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Sat, 26 Jan 2019 02:09:39 GMT
EXPOSE 9000
# Sat, 26 Jan 2019 02:09:39 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 26 Jan 2019 02:09:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Jan 2019 02:09:40 GMT
CMD ["run" "web"]
# Sat, 26 Jan 2019 02:09:42 GMT
WORKDIR /usr/src/sentry
# Sat, 26 Jan 2019 02:09:43 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 26 Jan 2019 02:09:43 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 26 Jan 2019 02:09:43 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 26 Jan 2019 02:09:43 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 26 Jan 2019 02:09:44 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59cc4d600672d0001a99d54c4cbfadbfbc5e89fe7fe6d83a530074e41da87c`  
		Last Modified: Wed, 02 May 2018 02:39:49 GMT  
		Size: 2.7 MB (2710710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d9f59a509eee6bd7857b6978e33b71a4fcd7995c4a20420d1c6070379a5a32`  
		Last Modified: Wed, 02 May 2018 02:39:53 GMT  
		Size: 14.9 MB (14935140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a605a5b8783de3f83436831be57753239ba92d8a531f971e9c87c2b9b7cb64`  
		Last Modified: Wed, 02 May 2018 02:39:50 GMT  
		Size: 2.1 MB (2087851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f43ce2e433f7911f14fcd11b42a40c8cb1eae8782bb9bcc31f620e107e3740`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f2f2627937bca6e0ec298207a418f55ca34197a4712f75a4255a7b06adcfc7`  
		Last Modified: Wed, 05 Sep 2018 17:47:54 GMT  
		Size: 56.7 MB (56680455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d558da499cd28e6b31e83502b996b7143d401126bc56682981610892042cf28d`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 845.3 KB (845259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb92f14eab171c6304976767d53f03993171e68c3ce4ef0e5527b1e8989214d4`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 352.6 KB (352613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7aa8259f2cfcdc1f6149ac13d0530d3c0e096c5e6523a4650ac844d48a1a3b`  
		Last Modified: Wed, 05 Sep 2018 17:47:40 GMT  
		Size: 2.8 MB (2769819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fe2b13331a72be264e0a7442e451f78809b57d747391c3246320d01bc9b60d`  
		Last Modified: Wed, 05 Sep 2018 17:47:55 GMT  
		Size: 63.6 MB (63598225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94ce70b9585fc7b0cb0a7d36cd8b0540b8aa5b3d3b25360844fc047c7881fd6`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ddc1fae972f4287ad69d1bb03f96489c1f89a40991243ac4d4f96a67c2118b`  
		Last Modified: Sat, 26 Jan 2019 02:22:03 GMT  
		Size: 3.4 KB (3410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291daa21fb7d01190a6abb01ffc953f965e9cd612704c1b1c2140c6cf30dade9`  
		Last Modified: Sat, 26 Jan 2019 02:22:03 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0063c364fa29b1d46809ab9689b32d5d227afa72239d3292e45ab027b3abf1`  
		Last Modified: Sat, 26 Jan 2019 02:22:03 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5c8572f4b993964790e1703c58075634e19d98b53cc7f50157cd8965eea7aa`  
		Last Modified: Sat, 26 Jan 2019 02:22:07 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9`

```console
$ docker pull sentry@sha256:d19e72127dbaa8f2c59403c93da0f4e6dbda6082bf9fee2b03591e4280283094
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9` - linux; amd64

```console
$ docker pull sentry@sha256:b8a4dbc2b878200b291b7e3caa03105593153633a0a5e8b831566aaeb872ac6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191665632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86d184a36c5ddd46fcca2f1ff150d99795937b468b19b019ea214006fb486922`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:43 GMT
ADD file:5ac7d2fc09752a0bae6b0b631692b7ae99220c3957a18be70338e3a63a279c11 in / 
# Wed, 06 Feb 2019 03:27:44 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:45:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 03:45:50 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 04:23:47 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Feb 2019 04:25:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 04:25:35 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Feb 2019 04:25:35 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Feb 2019 04:30:52 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 06 Feb 2019 04:30:52 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Wed, 06 Feb 2019 04:33:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Feb 2019 04:33:49 GMT
CMD ["python2"]
# Wed, 06 Feb 2019 12:16:55 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 06 Feb 2019 12:19:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:19:31 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 06 Feb 2019 12:19:31 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 06 Feb 2019 12:19:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 12:22:16 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 06 Feb 2019 12:24:52 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 06 Feb 2019 12:27:32 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 06 Feb 2019 12:27:32 GMT
ENV SENTRY_VERSION=9.0.0
# Wed, 06 Feb 2019 12:32:54 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 06 Feb 2019 12:32:55 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 06 Feb 2019 12:32:56 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:eb9b8cb898c1cb3d4287bcebccb197a2be8b84d026a7f32333cf07190d07ee20 in /etc/sentry/ 
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Wed, 06 Feb 2019 12:32:58 GMT
EXPOSE 9000
# Wed, 06 Feb 2019 12:32:58 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 06 Feb 2019 12:32:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 12:32:58 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:9a6b35880e8b6f720a2563dacfd85c994ea017630d1bd1e8ba8c0706cd0bdf9e`  
		Last Modified: Wed, 06 Feb 2019 03:33:38 GMT  
		Size: 30.2 MB (30151859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674460582e0a518500d66b6a8191177f3639571ed7f5ee0055b095a24cbb7aab`  
		Last Modified: Wed, 06 Feb 2019 04:35:57 GMT  
		Size: 2.2 MB (2215224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386cf484c54aa86fa10976aba826fd6c34444647303cd2914a8849cc2550ce09`  
		Last Modified: Wed, 06 Feb 2019 04:36:00 GMT  
		Size: 15.6 MB (15571751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b00fbacba5fb16a44f84ad16b250ad3e1e51950078d4b3213fcf086c360b17`  
		Last Modified: Wed, 06 Feb 2019 04:35:57 GMT  
		Size: 2.1 MB (2114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b61efcdd5951285f1d7376643148660527494ad7a638da96af84d9fc42b1d7`  
		Last Modified: Wed, 06 Feb 2019 12:33:27 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb1fd64f0048f244f9e87156d9aa3940fbb8268c21bd8d5f94899a3d227d7dc`  
		Last Modified: Wed, 06 Feb 2019 12:33:41 GMT  
		Size: 53.7 MB (53710311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b685e9a62634d7465837ba7612a112e577a7b1197999795b94ef52faf1477fd9`  
		Last Modified: Wed, 06 Feb 2019 12:33:26 GMT  
		Size: 845.0 KB (845028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e802f55a75e56d2097b94ae93783a02497731f449a6ba83e24084059b5c28e8f`  
		Last Modified: Wed, 06 Feb 2019 12:33:26 GMT  
		Size: 353.3 KB (353299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5304ae3edcb5300ba3164e799cc3f8f1e8351518a1348889455733e4878fbf`  
		Last Modified: Wed, 06 Feb 2019 12:33:27 GMT  
		Size: 2.8 MB (2819722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255233f609e60e75a69f95bf80a010c3f03ba1ffef4960ecbcd97f16e07a1fe1`  
		Last Modified: Wed, 06 Feb 2019 12:33:49 GMT  
		Size: 83.9 MB (83874433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e14b7aef747b0f5d099d58a7353c77a40f2c048fe28313c332f9ba40990ce4`  
		Last Modified: Wed, 06 Feb 2019 12:33:28 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722f9c750fe8de5b3fa2e77def77d587c677a444039352dd30abf5df9055e584`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ba69a0cf42bb3d12e14693492b19e32d936dca82e14baba8aa3ac72a45db1d`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf38fc4d3d58d4ad8514e0cb4bc2e1eda0f21e9288a482917298cebfca9df032`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.0`

```console
$ docker pull sentry@sha256:d19e72127dbaa8f2c59403c93da0f4e6dbda6082bf9fee2b03591e4280283094
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.0` - linux; amd64

```console
$ docker pull sentry@sha256:b8a4dbc2b878200b291b7e3caa03105593153633a0a5e8b831566aaeb872ac6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191665632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86d184a36c5ddd46fcca2f1ff150d99795937b468b19b019ea214006fb486922`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:43 GMT
ADD file:5ac7d2fc09752a0bae6b0b631692b7ae99220c3957a18be70338e3a63a279c11 in / 
# Wed, 06 Feb 2019 03:27:44 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:45:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 03:45:50 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 04:23:47 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Feb 2019 04:25:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 04:25:35 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Feb 2019 04:25:35 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Feb 2019 04:30:52 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 06 Feb 2019 04:30:52 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Wed, 06 Feb 2019 04:33:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Feb 2019 04:33:49 GMT
CMD ["python2"]
# Wed, 06 Feb 2019 12:16:55 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 06 Feb 2019 12:19:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:19:31 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 06 Feb 2019 12:19:31 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 06 Feb 2019 12:19:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 12:22:16 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 06 Feb 2019 12:24:52 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 06 Feb 2019 12:27:32 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 06 Feb 2019 12:27:32 GMT
ENV SENTRY_VERSION=9.0.0
# Wed, 06 Feb 2019 12:32:54 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 06 Feb 2019 12:32:55 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 06 Feb 2019 12:32:56 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:eb9b8cb898c1cb3d4287bcebccb197a2be8b84d026a7f32333cf07190d07ee20 in /etc/sentry/ 
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Wed, 06 Feb 2019 12:32:58 GMT
EXPOSE 9000
# Wed, 06 Feb 2019 12:32:58 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 06 Feb 2019 12:32:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 12:32:58 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:9a6b35880e8b6f720a2563dacfd85c994ea017630d1bd1e8ba8c0706cd0bdf9e`  
		Last Modified: Wed, 06 Feb 2019 03:33:38 GMT  
		Size: 30.2 MB (30151859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674460582e0a518500d66b6a8191177f3639571ed7f5ee0055b095a24cbb7aab`  
		Last Modified: Wed, 06 Feb 2019 04:35:57 GMT  
		Size: 2.2 MB (2215224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386cf484c54aa86fa10976aba826fd6c34444647303cd2914a8849cc2550ce09`  
		Last Modified: Wed, 06 Feb 2019 04:36:00 GMT  
		Size: 15.6 MB (15571751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b00fbacba5fb16a44f84ad16b250ad3e1e51950078d4b3213fcf086c360b17`  
		Last Modified: Wed, 06 Feb 2019 04:35:57 GMT  
		Size: 2.1 MB (2114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b61efcdd5951285f1d7376643148660527494ad7a638da96af84d9fc42b1d7`  
		Last Modified: Wed, 06 Feb 2019 12:33:27 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb1fd64f0048f244f9e87156d9aa3940fbb8268c21bd8d5f94899a3d227d7dc`  
		Last Modified: Wed, 06 Feb 2019 12:33:41 GMT  
		Size: 53.7 MB (53710311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b685e9a62634d7465837ba7612a112e577a7b1197999795b94ef52faf1477fd9`  
		Last Modified: Wed, 06 Feb 2019 12:33:26 GMT  
		Size: 845.0 KB (845028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e802f55a75e56d2097b94ae93783a02497731f449a6ba83e24084059b5c28e8f`  
		Last Modified: Wed, 06 Feb 2019 12:33:26 GMT  
		Size: 353.3 KB (353299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5304ae3edcb5300ba3164e799cc3f8f1e8351518a1348889455733e4878fbf`  
		Last Modified: Wed, 06 Feb 2019 12:33:27 GMT  
		Size: 2.8 MB (2819722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255233f609e60e75a69f95bf80a010c3f03ba1ffef4960ecbcd97f16e07a1fe1`  
		Last Modified: Wed, 06 Feb 2019 12:33:49 GMT  
		Size: 83.9 MB (83874433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e14b7aef747b0f5d099d58a7353c77a40f2c048fe28313c332f9ba40990ce4`  
		Last Modified: Wed, 06 Feb 2019 12:33:28 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722f9c750fe8de5b3fa2e77def77d587c677a444039352dd30abf5df9055e584`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ba69a0cf42bb3d12e14693492b19e32d936dca82e14baba8aa3ac72a45db1d`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf38fc4d3d58d4ad8514e0cb4bc2e1eda0f21e9288a482917298cebfca9df032`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.0.0`

```console
$ docker pull sentry@sha256:d19e72127dbaa8f2c59403c93da0f4e6dbda6082bf9fee2b03591e4280283094
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.0.0` - linux; amd64

```console
$ docker pull sentry@sha256:b8a4dbc2b878200b291b7e3caa03105593153633a0a5e8b831566aaeb872ac6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191665632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86d184a36c5ddd46fcca2f1ff150d99795937b468b19b019ea214006fb486922`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:43 GMT
ADD file:5ac7d2fc09752a0bae6b0b631692b7ae99220c3957a18be70338e3a63a279c11 in / 
# Wed, 06 Feb 2019 03:27:44 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:45:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 03:45:50 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 04:23:47 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Feb 2019 04:25:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 04:25:35 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Feb 2019 04:25:35 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Feb 2019 04:30:52 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 06 Feb 2019 04:30:52 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Wed, 06 Feb 2019 04:33:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Feb 2019 04:33:49 GMT
CMD ["python2"]
# Wed, 06 Feb 2019 12:16:55 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 06 Feb 2019 12:19:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:19:31 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 06 Feb 2019 12:19:31 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 06 Feb 2019 12:19:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 12:22:16 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 06 Feb 2019 12:24:52 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 06 Feb 2019 12:27:32 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 06 Feb 2019 12:27:32 GMT
ENV SENTRY_VERSION=9.0.0
# Wed, 06 Feb 2019 12:32:54 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 06 Feb 2019 12:32:55 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 06 Feb 2019 12:32:56 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:eb9b8cb898c1cb3d4287bcebccb197a2be8b84d026a7f32333cf07190d07ee20 in /etc/sentry/ 
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Wed, 06 Feb 2019 12:32:58 GMT
EXPOSE 9000
# Wed, 06 Feb 2019 12:32:58 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 06 Feb 2019 12:32:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 12:32:58 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:9a6b35880e8b6f720a2563dacfd85c994ea017630d1bd1e8ba8c0706cd0bdf9e`  
		Last Modified: Wed, 06 Feb 2019 03:33:38 GMT  
		Size: 30.2 MB (30151859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674460582e0a518500d66b6a8191177f3639571ed7f5ee0055b095a24cbb7aab`  
		Last Modified: Wed, 06 Feb 2019 04:35:57 GMT  
		Size: 2.2 MB (2215224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386cf484c54aa86fa10976aba826fd6c34444647303cd2914a8849cc2550ce09`  
		Last Modified: Wed, 06 Feb 2019 04:36:00 GMT  
		Size: 15.6 MB (15571751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b00fbacba5fb16a44f84ad16b250ad3e1e51950078d4b3213fcf086c360b17`  
		Last Modified: Wed, 06 Feb 2019 04:35:57 GMT  
		Size: 2.1 MB (2114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b61efcdd5951285f1d7376643148660527494ad7a638da96af84d9fc42b1d7`  
		Last Modified: Wed, 06 Feb 2019 12:33:27 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb1fd64f0048f244f9e87156d9aa3940fbb8268c21bd8d5f94899a3d227d7dc`  
		Last Modified: Wed, 06 Feb 2019 12:33:41 GMT  
		Size: 53.7 MB (53710311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b685e9a62634d7465837ba7612a112e577a7b1197999795b94ef52faf1477fd9`  
		Last Modified: Wed, 06 Feb 2019 12:33:26 GMT  
		Size: 845.0 KB (845028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e802f55a75e56d2097b94ae93783a02497731f449a6ba83e24084059b5c28e8f`  
		Last Modified: Wed, 06 Feb 2019 12:33:26 GMT  
		Size: 353.3 KB (353299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5304ae3edcb5300ba3164e799cc3f8f1e8351518a1348889455733e4878fbf`  
		Last Modified: Wed, 06 Feb 2019 12:33:27 GMT  
		Size: 2.8 MB (2819722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255233f609e60e75a69f95bf80a010c3f03ba1ffef4960ecbcd97f16e07a1fe1`  
		Last Modified: Wed, 06 Feb 2019 12:33:49 GMT  
		Size: 83.9 MB (83874433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e14b7aef747b0f5d099d58a7353c77a40f2c048fe28313c332f9ba40990ce4`  
		Last Modified: Wed, 06 Feb 2019 12:33:28 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722f9c750fe8de5b3fa2e77def77d587c677a444039352dd30abf5df9055e584`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ba69a0cf42bb3d12e14693492b19e32d936dca82e14baba8aa3ac72a45db1d`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf38fc4d3d58d4ad8514e0cb4bc2e1eda0f21e9288a482917298cebfca9df032`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.0.0-onbuild`

```console
$ docker pull sentry@sha256:2d4eabf7bcc2f274e6f065f0414823ec28e681b6fc8c048e011a34f93e21b371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.0.0-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:194a3dc8f89b944148113806008a4d154ee19dd0a50f3a44d7cde2ae1020ca20
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191665769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775a2d620e58a85c4525c0f92d50e84be1f43200d1bccf1842ca936600db1221`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:43 GMT
ADD file:5ac7d2fc09752a0bae6b0b631692b7ae99220c3957a18be70338e3a63a279c11 in / 
# Wed, 06 Feb 2019 03:27:44 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:45:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 03:45:50 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 04:23:47 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Feb 2019 04:25:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 04:25:35 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Feb 2019 04:25:35 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Feb 2019 04:30:52 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 06 Feb 2019 04:30:52 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Wed, 06 Feb 2019 04:33:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Feb 2019 04:33:49 GMT
CMD ["python2"]
# Wed, 06 Feb 2019 12:16:55 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 06 Feb 2019 12:19:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:19:31 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 06 Feb 2019 12:19:31 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 06 Feb 2019 12:19:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 12:22:16 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 06 Feb 2019 12:24:52 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 06 Feb 2019 12:27:32 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 06 Feb 2019 12:27:32 GMT
ENV SENTRY_VERSION=9.0.0
# Wed, 06 Feb 2019 12:32:54 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 06 Feb 2019 12:32:55 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 06 Feb 2019 12:32:56 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:eb9b8cb898c1cb3d4287bcebccb197a2be8b84d026a7f32333cf07190d07ee20 in /etc/sentry/ 
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Wed, 06 Feb 2019 12:32:58 GMT
EXPOSE 9000
# Wed, 06 Feb 2019 12:32:58 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 06 Feb 2019 12:32:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 12:32:58 GMT
CMD ["run" "web"]
# Wed, 06 Feb 2019 12:33:03 GMT
WORKDIR /usr/src/sentry
# Wed, 06 Feb 2019 12:33:03 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 06 Feb 2019 12:33:04 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 06 Feb 2019 12:33:04 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 06 Feb 2019 12:33:04 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 06 Feb 2019 12:33:05 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:9a6b35880e8b6f720a2563dacfd85c994ea017630d1bd1e8ba8c0706cd0bdf9e`  
		Last Modified: Wed, 06 Feb 2019 03:33:38 GMT  
		Size: 30.2 MB (30151859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674460582e0a518500d66b6a8191177f3639571ed7f5ee0055b095a24cbb7aab`  
		Last Modified: Wed, 06 Feb 2019 04:35:57 GMT  
		Size: 2.2 MB (2215224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386cf484c54aa86fa10976aba826fd6c34444647303cd2914a8849cc2550ce09`  
		Last Modified: Wed, 06 Feb 2019 04:36:00 GMT  
		Size: 15.6 MB (15571751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b00fbacba5fb16a44f84ad16b250ad3e1e51950078d4b3213fcf086c360b17`  
		Last Modified: Wed, 06 Feb 2019 04:35:57 GMT  
		Size: 2.1 MB (2114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b61efcdd5951285f1d7376643148660527494ad7a638da96af84d9fc42b1d7`  
		Last Modified: Wed, 06 Feb 2019 12:33:27 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb1fd64f0048f244f9e87156d9aa3940fbb8268c21bd8d5f94899a3d227d7dc`  
		Last Modified: Wed, 06 Feb 2019 12:33:41 GMT  
		Size: 53.7 MB (53710311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b685e9a62634d7465837ba7612a112e577a7b1197999795b94ef52faf1477fd9`  
		Last Modified: Wed, 06 Feb 2019 12:33:26 GMT  
		Size: 845.0 KB (845028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e802f55a75e56d2097b94ae93783a02497731f449a6ba83e24084059b5c28e8f`  
		Last Modified: Wed, 06 Feb 2019 12:33:26 GMT  
		Size: 353.3 KB (353299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5304ae3edcb5300ba3164e799cc3f8f1e8351518a1348889455733e4878fbf`  
		Last Modified: Wed, 06 Feb 2019 12:33:27 GMT  
		Size: 2.8 MB (2819722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255233f609e60e75a69f95bf80a010c3f03ba1ffef4960ecbcd97f16e07a1fe1`  
		Last Modified: Wed, 06 Feb 2019 12:33:49 GMT  
		Size: 83.9 MB (83874433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e14b7aef747b0f5d099d58a7353c77a40f2c048fe28313c332f9ba40990ce4`  
		Last Modified: Wed, 06 Feb 2019 12:33:28 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722f9c750fe8de5b3fa2e77def77d587c677a444039352dd30abf5df9055e584`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ba69a0cf42bb3d12e14693492b19e32d936dca82e14baba8aa3ac72a45db1d`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf38fc4d3d58d4ad8514e0cb4bc2e1eda0f21e9288a482917298cebfca9df032`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347fd1f874583c04f73305722a1b53ae9a2abcb35b93cd19863091a310b5db72`  
		Last Modified: Wed, 06 Feb 2019 12:33:55 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.0-onbuild`

```console
$ docker pull sentry@sha256:2d4eabf7bcc2f274e6f065f0414823ec28e681b6fc8c048e011a34f93e21b371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.0-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:194a3dc8f89b944148113806008a4d154ee19dd0a50f3a44d7cde2ae1020ca20
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191665769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775a2d620e58a85c4525c0f92d50e84be1f43200d1bccf1842ca936600db1221`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:43 GMT
ADD file:5ac7d2fc09752a0bae6b0b631692b7ae99220c3957a18be70338e3a63a279c11 in / 
# Wed, 06 Feb 2019 03:27:44 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:45:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 03:45:50 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 04:23:47 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Feb 2019 04:25:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 04:25:35 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Feb 2019 04:25:35 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Feb 2019 04:30:52 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 06 Feb 2019 04:30:52 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Wed, 06 Feb 2019 04:33:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Feb 2019 04:33:49 GMT
CMD ["python2"]
# Wed, 06 Feb 2019 12:16:55 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 06 Feb 2019 12:19:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:19:31 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 06 Feb 2019 12:19:31 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 06 Feb 2019 12:19:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 12:22:16 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 06 Feb 2019 12:24:52 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 06 Feb 2019 12:27:32 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 06 Feb 2019 12:27:32 GMT
ENV SENTRY_VERSION=9.0.0
# Wed, 06 Feb 2019 12:32:54 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 06 Feb 2019 12:32:55 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 06 Feb 2019 12:32:56 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:eb9b8cb898c1cb3d4287bcebccb197a2be8b84d026a7f32333cf07190d07ee20 in /etc/sentry/ 
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Wed, 06 Feb 2019 12:32:58 GMT
EXPOSE 9000
# Wed, 06 Feb 2019 12:32:58 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 06 Feb 2019 12:32:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 12:32:58 GMT
CMD ["run" "web"]
# Wed, 06 Feb 2019 12:33:03 GMT
WORKDIR /usr/src/sentry
# Wed, 06 Feb 2019 12:33:03 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 06 Feb 2019 12:33:04 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 06 Feb 2019 12:33:04 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 06 Feb 2019 12:33:04 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 06 Feb 2019 12:33:05 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:9a6b35880e8b6f720a2563dacfd85c994ea017630d1bd1e8ba8c0706cd0bdf9e`  
		Last Modified: Wed, 06 Feb 2019 03:33:38 GMT  
		Size: 30.2 MB (30151859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674460582e0a518500d66b6a8191177f3639571ed7f5ee0055b095a24cbb7aab`  
		Last Modified: Wed, 06 Feb 2019 04:35:57 GMT  
		Size: 2.2 MB (2215224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386cf484c54aa86fa10976aba826fd6c34444647303cd2914a8849cc2550ce09`  
		Last Modified: Wed, 06 Feb 2019 04:36:00 GMT  
		Size: 15.6 MB (15571751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b00fbacba5fb16a44f84ad16b250ad3e1e51950078d4b3213fcf086c360b17`  
		Last Modified: Wed, 06 Feb 2019 04:35:57 GMT  
		Size: 2.1 MB (2114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b61efcdd5951285f1d7376643148660527494ad7a638da96af84d9fc42b1d7`  
		Last Modified: Wed, 06 Feb 2019 12:33:27 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb1fd64f0048f244f9e87156d9aa3940fbb8268c21bd8d5f94899a3d227d7dc`  
		Last Modified: Wed, 06 Feb 2019 12:33:41 GMT  
		Size: 53.7 MB (53710311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b685e9a62634d7465837ba7612a112e577a7b1197999795b94ef52faf1477fd9`  
		Last Modified: Wed, 06 Feb 2019 12:33:26 GMT  
		Size: 845.0 KB (845028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e802f55a75e56d2097b94ae93783a02497731f449a6ba83e24084059b5c28e8f`  
		Last Modified: Wed, 06 Feb 2019 12:33:26 GMT  
		Size: 353.3 KB (353299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5304ae3edcb5300ba3164e799cc3f8f1e8351518a1348889455733e4878fbf`  
		Last Modified: Wed, 06 Feb 2019 12:33:27 GMT  
		Size: 2.8 MB (2819722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255233f609e60e75a69f95bf80a010c3f03ba1ffef4960ecbcd97f16e07a1fe1`  
		Last Modified: Wed, 06 Feb 2019 12:33:49 GMT  
		Size: 83.9 MB (83874433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e14b7aef747b0f5d099d58a7353c77a40f2c048fe28313c332f9ba40990ce4`  
		Last Modified: Wed, 06 Feb 2019 12:33:28 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722f9c750fe8de5b3fa2e77def77d587c677a444039352dd30abf5df9055e584`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ba69a0cf42bb3d12e14693492b19e32d936dca82e14baba8aa3ac72a45db1d`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf38fc4d3d58d4ad8514e0cb4bc2e1eda0f21e9288a482917298cebfca9df032`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347fd1f874583c04f73305722a1b53ae9a2abcb35b93cd19863091a310b5db72`  
		Last Modified: Wed, 06 Feb 2019 12:33:55 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9-onbuild`

```console
$ docker pull sentry@sha256:2d4eabf7bcc2f274e6f065f0414823ec28e681b6fc8c048e011a34f93e21b371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:194a3dc8f89b944148113806008a4d154ee19dd0a50f3a44d7cde2ae1020ca20
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191665769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775a2d620e58a85c4525c0f92d50e84be1f43200d1bccf1842ca936600db1221`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:43 GMT
ADD file:5ac7d2fc09752a0bae6b0b631692b7ae99220c3957a18be70338e3a63a279c11 in / 
# Wed, 06 Feb 2019 03:27:44 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:45:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 03:45:50 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 04:23:47 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Feb 2019 04:25:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 04:25:35 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Feb 2019 04:25:35 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Feb 2019 04:30:52 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 06 Feb 2019 04:30:52 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Wed, 06 Feb 2019 04:33:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Feb 2019 04:33:49 GMT
CMD ["python2"]
# Wed, 06 Feb 2019 12:16:55 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 06 Feb 2019 12:19:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:19:31 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 06 Feb 2019 12:19:31 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 06 Feb 2019 12:19:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 12:22:16 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 06 Feb 2019 12:24:52 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 06 Feb 2019 12:27:32 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 06 Feb 2019 12:27:32 GMT
ENV SENTRY_VERSION=9.0.0
# Wed, 06 Feb 2019 12:32:54 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 06 Feb 2019 12:32:55 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 06 Feb 2019 12:32:56 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:eb9b8cb898c1cb3d4287bcebccb197a2be8b84d026a7f32333cf07190d07ee20 in /etc/sentry/ 
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Wed, 06 Feb 2019 12:32:58 GMT
EXPOSE 9000
# Wed, 06 Feb 2019 12:32:58 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 06 Feb 2019 12:32:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 12:32:58 GMT
CMD ["run" "web"]
# Wed, 06 Feb 2019 12:33:03 GMT
WORKDIR /usr/src/sentry
# Wed, 06 Feb 2019 12:33:03 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 06 Feb 2019 12:33:04 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 06 Feb 2019 12:33:04 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 06 Feb 2019 12:33:04 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 06 Feb 2019 12:33:05 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:9a6b35880e8b6f720a2563dacfd85c994ea017630d1bd1e8ba8c0706cd0bdf9e`  
		Last Modified: Wed, 06 Feb 2019 03:33:38 GMT  
		Size: 30.2 MB (30151859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674460582e0a518500d66b6a8191177f3639571ed7f5ee0055b095a24cbb7aab`  
		Last Modified: Wed, 06 Feb 2019 04:35:57 GMT  
		Size: 2.2 MB (2215224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386cf484c54aa86fa10976aba826fd6c34444647303cd2914a8849cc2550ce09`  
		Last Modified: Wed, 06 Feb 2019 04:36:00 GMT  
		Size: 15.6 MB (15571751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b00fbacba5fb16a44f84ad16b250ad3e1e51950078d4b3213fcf086c360b17`  
		Last Modified: Wed, 06 Feb 2019 04:35:57 GMT  
		Size: 2.1 MB (2114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b61efcdd5951285f1d7376643148660527494ad7a638da96af84d9fc42b1d7`  
		Last Modified: Wed, 06 Feb 2019 12:33:27 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb1fd64f0048f244f9e87156d9aa3940fbb8268c21bd8d5f94899a3d227d7dc`  
		Last Modified: Wed, 06 Feb 2019 12:33:41 GMT  
		Size: 53.7 MB (53710311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b685e9a62634d7465837ba7612a112e577a7b1197999795b94ef52faf1477fd9`  
		Last Modified: Wed, 06 Feb 2019 12:33:26 GMT  
		Size: 845.0 KB (845028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e802f55a75e56d2097b94ae93783a02497731f449a6ba83e24084059b5c28e8f`  
		Last Modified: Wed, 06 Feb 2019 12:33:26 GMT  
		Size: 353.3 KB (353299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5304ae3edcb5300ba3164e799cc3f8f1e8351518a1348889455733e4878fbf`  
		Last Modified: Wed, 06 Feb 2019 12:33:27 GMT  
		Size: 2.8 MB (2819722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255233f609e60e75a69f95bf80a010c3f03ba1ffef4960ecbcd97f16e07a1fe1`  
		Last Modified: Wed, 06 Feb 2019 12:33:49 GMT  
		Size: 83.9 MB (83874433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e14b7aef747b0f5d099d58a7353c77a40f2c048fe28313c332f9ba40990ce4`  
		Last Modified: Wed, 06 Feb 2019 12:33:28 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722f9c750fe8de5b3fa2e77def77d587c677a444039352dd30abf5df9055e584`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ba69a0cf42bb3d12e14693492b19e32d936dca82e14baba8aa3ac72a45db1d`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf38fc4d3d58d4ad8514e0cb4bc2e1eda0f21e9288a482917298cebfca9df032`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347fd1f874583c04f73305722a1b53ae9a2abcb35b93cd19863091a310b5db72`  
		Last Modified: Wed, 06 Feb 2019 12:33:55 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:latest`

```console
$ docker pull sentry@sha256:5021e73c5242ad1c257bb5d88a58c09be192eb3c796fcb0d24eac9c9bbf1a172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

```console
$ docker pull sentry@sha256:10536f04750e3f9047fc4c9eb4e123be0824d07617d6989c2c1a6d8d0d05b794
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191655161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df958299987690811042d99226c5d7ccc9aec0a07be18297717c3ed5a7747e81`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 22 Jan 2019 19:24:52 GMT
ADD file:e1259aaf5127eb984e8800180bcdf23aae11a476ace06567c5e0571cba94552d in / 
# Tue, 22 Jan 2019 19:24:52 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 22:57:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Jan 2019 22:57:00 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 03:56:49 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 23 Jan 2019 03:58:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:58:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 23 Jan 2019 03:58:37 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 23 Jan 2019 04:03:58 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 26 Jan 2019 01:47:25 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Sat, 26 Jan 2019 01:50:21 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 26 Jan 2019 01:50:21 GMT
CMD ["python2"]
# Sat, 26 Jan 2019 02:09:47 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 26 Jan 2019 02:11:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 26 Jan 2019 02:11:50 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 26 Jan 2019 02:11:50 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 26 Jan 2019 02:11:50 GMT
ENV GOSU_VERSION=1.10
# Sat, 26 Jan 2019 02:13:56 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 26 Jan 2019 02:16:03 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 26 Jan 2019 02:18:15 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 26 Jan 2019 02:18:16 GMT
ENV SENTRY_VERSION=9.0.0
# Sat, 26 Jan 2019 02:21:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 26 Jan 2019 02:21:40 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 26 Jan 2019 02:21:41 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 26 Jan 2019 02:21:41 GMT
COPY file:eb9b8cb898c1cb3d4287bcebccb197a2be8b84d026a7f32333cf07190d07ee20 in /etc/sentry/ 
# Sat, 26 Jan 2019 02:21:41 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Sat, 26 Jan 2019 02:21:41 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Sat, 26 Jan 2019 02:21:42 GMT
EXPOSE 9000
# Sat, 26 Jan 2019 02:21:42 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 26 Jan 2019 02:21:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 26 Jan 2019 02:21:42 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:a82c8be864555402cbecf293fa92a8b392e48065b42c509fc1bfbb79a2e0d951`  
		Last Modified: Tue, 22 Jan 2019 19:34:49 GMT  
		Size: 30.2 MB (30152186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca3da91d0f72cba0947ee958c34e32b4719017b14167775423a0bd7f8655973`  
		Last Modified: Wed, 23 Jan 2019 20:26:55 GMT  
		Size: 2.2 MB (2215202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab0ca4282ce3fe994aa6f456314f2d5ed73e34881c8d4e08b757a3ee3e685d8`  
		Last Modified: Wed, 23 Jan 2019 20:26:58 GMT  
		Size: 15.6 MB (15571754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6a318a39953875269a1af4fa0ed6badb1bdf5a4fa733b809c05392d62a92e1`  
		Last Modified: Sat, 26 Jan 2019 01:53:54 GMT  
		Size: 2.1 MB (2112274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496b79757d25c6f17b1a46b17cf39cb9e98ee0545b907a3881e724592f514777`  
		Last Modified: Sat, 26 Jan 2019 02:22:15 GMT  
		Size: 4.4 KB (4420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39e344d54934cf9633102d77686e0a63506b28cc58460b1803ad2b12b07c22c`  
		Last Modified: Sat, 26 Jan 2019 02:22:27 GMT  
		Size: 53.7 MB (53710236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369e9b10b57c4919a8eb13cb095de4028eeba8a84b74550e707d4ad618c0120a`  
		Last Modified: Sat, 26 Jan 2019 02:22:14 GMT  
		Size: 845.0 KB (845036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4086b20d67305089ca239b37bac57191639683bca2b21cb372c2bac40f890b61`  
		Last Modified: Sat, 26 Jan 2019 02:22:13 GMT  
		Size: 353.3 KB (353289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968ed5899695cffa0ea13c743de1f62359b75e9c0415a16f8aadd8eb48957cd0`  
		Last Modified: Sat, 26 Jan 2019 02:22:15 GMT  
		Size: 2.8 MB (2810041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62dff172a2dbca5fac072e77b8cca7fee772f1d537a1fb01d6d038bc3f2a235d`  
		Last Modified: Sat, 26 Jan 2019 02:22:32 GMT  
		Size: 83.9 MB (83875638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21738eefceeb2f6ded79420fa6fad9f474109cd6f4d9b629b4deba6ff9786815`  
		Last Modified: Sat, 26 Jan 2019 02:22:12 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b95b8c50df31c39c1db803327844c47fccdbfa537d6e83079671b336cdef329`  
		Last Modified: Sat, 26 Jan 2019 02:22:12 GMT  
		Size: 3.4 KB (3409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2128b7550bf75980fa1b6710fe020abb9d0b12319a30a75af8ce004e5a0b1e15`  
		Last Modified: Sat, 26 Jan 2019 02:22:12 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693f7ddf68aa1716cf27923503f9acb59e83149db5acf0435f5f5de5634e744b`  
		Last Modified: Sat, 26 Jan 2019 02:22:12 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:2d4eabf7bcc2f274e6f065f0414823ec28e681b6fc8c048e011a34f93e21b371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:194a3dc8f89b944148113806008a4d154ee19dd0a50f3a44d7cde2ae1020ca20
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191665769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775a2d620e58a85c4525c0f92d50e84be1f43200d1bccf1842ca936600db1221`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:43 GMT
ADD file:5ac7d2fc09752a0bae6b0b631692b7ae99220c3957a18be70338e3a63a279c11 in / 
# Wed, 06 Feb 2019 03:27:44 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:45:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 03:45:50 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 04:23:47 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Feb 2019 04:25:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 04:25:35 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Feb 2019 04:25:35 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Feb 2019 04:30:52 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 06 Feb 2019 04:30:52 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Wed, 06 Feb 2019 04:33:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Feb 2019 04:33:49 GMT
CMD ["python2"]
# Wed, 06 Feb 2019 12:16:55 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 06 Feb 2019 12:19:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:19:31 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 06 Feb 2019 12:19:31 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 06 Feb 2019 12:19:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 12:22:16 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 06 Feb 2019 12:24:52 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 06 Feb 2019 12:27:32 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 06 Feb 2019 12:27:32 GMT
ENV SENTRY_VERSION=9.0.0
# Wed, 06 Feb 2019 12:32:54 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 06 Feb 2019 12:32:55 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 06 Feb 2019 12:32:56 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:eb9b8cb898c1cb3d4287bcebccb197a2be8b84d026a7f32333cf07190d07ee20 in /etc/sentry/ 
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Wed, 06 Feb 2019 12:32:57 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Wed, 06 Feb 2019 12:32:58 GMT
EXPOSE 9000
# Wed, 06 Feb 2019 12:32:58 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 06 Feb 2019 12:32:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 12:32:58 GMT
CMD ["run" "web"]
# Wed, 06 Feb 2019 12:33:03 GMT
WORKDIR /usr/src/sentry
# Wed, 06 Feb 2019 12:33:03 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 06 Feb 2019 12:33:04 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 06 Feb 2019 12:33:04 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 06 Feb 2019 12:33:04 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 06 Feb 2019 12:33:05 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:9a6b35880e8b6f720a2563dacfd85c994ea017630d1bd1e8ba8c0706cd0bdf9e`  
		Last Modified: Wed, 06 Feb 2019 03:33:38 GMT  
		Size: 30.2 MB (30151859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674460582e0a518500d66b6a8191177f3639571ed7f5ee0055b095a24cbb7aab`  
		Last Modified: Wed, 06 Feb 2019 04:35:57 GMT  
		Size: 2.2 MB (2215224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386cf484c54aa86fa10976aba826fd6c34444647303cd2914a8849cc2550ce09`  
		Last Modified: Wed, 06 Feb 2019 04:36:00 GMT  
		Size: 15.6 MB (15571751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b00fbacba5fb16a44f84ad16b250ad3e1e51950078d4b3213fcf086c360b17`  
		Last Modified: Wed, 06 Feb 2019 04:35:57 GMT  
		Size: 2.1 MB (2114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b61efcdd5951285f1d7376643148660527494ad7a638da96af84d9fc42b1d7`  
		Last Modified: Wed, 06 Feb 2019 12:33:27 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb1fd64f0048f244f9e87156d9aa3940fbb8268c21bd8d5f94899a3d227d7dc`  
		Last Modified: Wed, 06 Feb 2019 12:33:41 GMT  
		Size: 53.7 MB (53710311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b685e9a62634d7465837ba7612a112e577a7b1197999795b94ef52faf1477fd9`  
		Last Modified: Wed, 06 Feb 2019 12:33:26 GMT  
		Size: 845.0 KB (845028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e802f55a75e56d2097b94ae93783a02497731f449a6ba83e24084059b5c28e8f`  
		Last Modified: Wed, 06 Feb 2019 12:33:26 GMT  
		Size: 353.3 KB (353299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5304ae3edcb5300ba3164e799cc3f8f1e8351518a1348889455733e4878fbf`  
		Last Modified: Wed, 06 Feb 2019 12:33:27 GMT  
		Size: 2.8 MB (2819722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255233f609e60e75a69f95bf80a010c3f03ba1ffef4960ecbcd97f16e07a1fe1`  
		Last Modified: Wed, 06 Feb 2019 12:33:49 GMT  
		Size: 83.9 MB (83874433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e14b7aef747b0f5d099d58a7353c77a40f2c048fe28313c332f9ba40990ce4`  
		Last Modified: Wed, 06 Feb 2019 12:33:28 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722f9c750fe8de5b3fa2e77def77d587c677a444039352dd30abf5df9055e584`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ba69a0cf42bb3d12e14693492b19e32d936dca82e14baba8aa3ac72a45db1d`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf38fc4d3d58d4ad8514e0cb4bc2e1eda0f21e9288a482917298cebfca9df032`  
		Last Modified: Wed, 06 Feb 2019 12:33:25 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347fd1f874583c04f73305722a1b53ae9a2abcb35b93cd19863091a310b5db72`  
		Last Modified: Wed, 06 Feb 2019 12:33:55 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
