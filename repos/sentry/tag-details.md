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
$ docker pull sentry@sha256:1b44c8bfcf3545bf4b71efe3df45921c091d891e5be2a39cdc59307e7e27a9a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

```console
$ docker pull sentry@sha256:4d0d27c9f4e75cd20887d38b50cadd201a3bf56b0ef085f958da77c9da727b45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174116858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf96217509bef43a2b72b0a982af1d925edbfc0c409cb1d2056b3e2794ac0eb8`
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
# Wed, 05 Sep 2018 17:43:35 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Sep 2018 17:43:36 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Sep 2018 17:43:36 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Sep 2018 17:43:36 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:43:36 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Sep 2018 17:43:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:43:37 GMT
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
	-	`sha256:2959af7342ffb8cc2f74874de45bae036b36225f1e78fe20e221945a29894692`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d062432b359d418ba2b24277c0ef5a6f8ad73a639395cc4de8b6b16c6acb62c`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9221413f19388e1569dae8b8410fbaebc1a6f73b671c236ad5144780bafdedf7`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.22`

```console
$ docker pull sentry@sha256:1b44c8bfcf3545bf4b71efe3df45921c091d891e5be2a39cdc59307e7e27a9a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.22` - linux; amd64

```console
$ docker pull sentry@sha256:4d0d27c9f4e75cd20887d38b50cadd201a3bf56b0ef085f958da77c9da727b45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174116858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf96217509bef43a2b72b0a982af1d925edbfc0c409cb1d2056b3e2794ac0eb8`
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
# Wed, 05 Sep 2018 17:43:35 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Sep 2018 17:43:36 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Sep 2018 17:43:36 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Sep 2018 17:43:36 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:43:36 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Sep 2018 17:43:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:43:37 GMT
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
	-	`sha256:2959af7342ffb8cc2f74874de45bae036b36225f1e78fe20e221945a29894692`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d062432b359d418ba2b24277c0ef5a6f8ad73a639395cc4de8b6b16c6acb62c`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9221413f19388e1569dae8b8410fbaebc1a6f73b671c236ad5144780bafdedf7`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.22.0`

```console
$ docker pull sentry@sha256:1b44c8bfcf3545bf4b71efe3df45921c091d891e5be2a39cdc59307e7e27a9a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.22.0` - linux; amd64

```console
$ docker pull sentry@sha256:4d0d27c9f4e75cd20887d38b50cadd201a3bf56b0ef085f958da77c9da727b45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174116858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf96217509bef43a2b72b0a982af1d925edbfc0c409cb1d2056b3e2794ac0eb8`
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
# Wed, 05 Sep 2018 17:43:35 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Sep 2018 17:43:36 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Sep 2018 17:43:36 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Sep 2018 17:43:36 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:43:36 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Sep 2018 17:43:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:43:37 GMT
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
	-	`sha256:2959af7342ffb8cc2f74874de45bae036b36225f1e78fe20e221945a29894692`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d062432b359d418ba2b24277c0ef5a6f8ad73a639395cc4de8b6b16c6acb62c`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9221413f19388e1569dae8b8410fbaebc1a6f73b671c236ad5144780bafdedf7`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.22.0-onbuild`

```console
$ docker pull sentry@sha256:2c6a2f0dba51e2241f57d89ed82457aa676a7d4ad63c8f82e2815372778618c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.22.0-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:bc5a8db4f95636cad963af0bd63a9de274ab7d8f091d9d1daece8d5b56215648
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174116996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e3bc79054bc48c8ff80f5ba2f97e8121a809aa4282b34ff1c1bd27301369f8`
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
# Wed, 05 Sep 2018 17:43:35 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Sep 2018 17:43:36 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Sep 2018 17:43:36 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Sep 2018 17:43:36 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:43:36 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Sep 2018 17:43:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:43:37 GMT
CMD ["run" "web"]
# Wed, 05 Sep 2018 17:43:48 GMT
WORKDIR /usr/src/sentry
# Wed, 05 Sep 2018 17:43:48 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 05 Sep 2018 17:43:48 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 05 Sep 2018 17:43:48 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 05 Sep 2018 17:43:49 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 05 Sep 2018 17:43:49 GMT
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
	-	`sha256:2959af7342ffb8cc2f74874de45bae036b36225f1e78fe20e221945a29894692`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d062432b359d418ba2b24277c0ef5a6f8ad73a639395cc4de8b6b16c6acb62c`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9221413f19388e1569dae8b8410fbaebc1a6f73b671c236ad5144780bafdedf7`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c44bc3fa5a2905209907d830a4ec81de4a8caf7025a2b13fa3b0aa9622579f2`  
		Last Modified: Wed, 05 Sep 2018 17:48:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.22-onbuild`

```console
$ docker pull sentry@sha256:2c6a2f0dba51e2241f57d89ed82457aa676a7d4ad63c8f82e2815372778618c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.22-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:bc5a8db4f95636cad963af0bd63a9de274ab7d8f091d9d1daece8d5b56215648
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174116996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e3bc79054bc48c8ff80f5ba2f97e8121a809aa4282b34ff1c1bd27301369f8`
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
# Wed, 05 Sep 2018 17:43:35 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Sep 2018 17:43:36 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Sep 2018 17:43:36 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Sep 2018 17:43:36 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:43:36 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Sep 2018 17:43:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:43:37 GMT
CMD ["run" "web"]
# Wed, 05 Sep 2018 17:43:48 GMT
WORKDIR /usr/src/sentry
# Wed, 05 Sep 2018 17:43:48 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 05 Sep 2018 17:43:48 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 05 Sep 2018 17:43:48 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 05 Sep 2018 17:43:49 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 05 Sep 2018 17:43:49 GMT
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
	-	`sha256:2959af7342ffb8cc2f74874de45bae036b36225f1e78fe20e221945a29894692`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d062432b359d418ba2b24277c0ef5a6f8ad73a639395cc4de8b6b16c6acb62c`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9221413f19388e1569dae8b8410fbaebc1a6f73b671c236ad5144780bafdedf7`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c44bc3fa5a2905209907d830a4ec81de4a8caf7025a2b13fa3b0aa9622579f2`  
		Last Modified: Wed, 05 Sep 2018 17:48:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:2c6a2f0dba51e2241f57d89ed82457aa676a7d4ad63c8f82e2815372778618c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:bc5a8db4f95636cad963af0bd63a9de274ab7d8f091d9d1daece8d5b56215648
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174116996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62e3bc79054bc48c8ff80f5ba2f97e8121a809aa4282b34ff1c1bd27301369f8`
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
# Wed, 05 Sep 2018 17:43:35 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Sep 2018 17:43:36 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Sep 2018 17:43:36 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Sep 2018 17:43:36 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:43:36 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Sep 2018 17:43:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:43:37 GMT
CMD ["run" "web"]
# Wed, 05 Sep 2018 17:43:48 GMT
WORKDIR /usr/src/sentry
# Wed, 05 Sep 2018 17:43:48 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 05 Sep 2018 17:43:48 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 05 Sep 2018 17:43:48 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 05 Sep 2018 17:43:49 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 05 Sep 2018 17:43:49 GMT
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
	-	`sha256:2959af7342ffb8cc2f74874de45bae036b36225f1e78fe20e221945a29894692`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d062432b359d418ba2b24277c0ef5a6f8ad73a639395cc4de8b6b16c6acb62c`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9221413f19388e1569dae8b8410fbaebc1a6f73b671c236ad5144780bafdedf7`  
		Last Modified: Wed, 05 Sep 2018 17:47:38 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c44bc3fa5a2905209907d830a4ec81de4a8caf7025a2b13fa3b0aa9622579f2`  
		Last Modified: Wed, 05 Sep 2018 17:48:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9`

```console
$ docker pull sentry@sha256:eb1c7dc5186a7311ed6a75499f53d7398c88fb17fd5ee10abb282ec8c50643e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9` - linux; amd64

```console
$ docker pull sentry@sha256:656fcfd8a5d51130ee3c215ed3d31e40fbe2d85b35173dc2406401b4036aa6c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (189006336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c0335092fef8a3a4191b8cc395b4adf24c3329cc8ac23ee9b4593b82b09ec4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 04:55:24 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 04:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 04:55:55 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 04:55:55 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 04:58:56 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 04:58:56 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 04:59:47 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 04:59:47 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 17:43:55 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 05 Sep 2018 17:44:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:44:27 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 05 Sep 2018 17:44:28 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 05 Sep 2018 17:44:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 17:44:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:45:17 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:45:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 05 Sep 2018 17:45:47 GMT
ENV SENTRY_VERSION=9.0.0
# Wed, 05 Sep 2018 17:47:19 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Sep 2018 17:47:20 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Sep 2018 17:47:20 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Sep 2018 17:47:21 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:47:22 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Sep 2018 17:47:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:47:22 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff36f346217c9b6c7b14a8e363ac2076f89d707f0b4562ab120d939d1feaf7e`  
		Last Modified: Wed, 05 Sep 2018 05:19:24 GMT  
		Size: 2.2 MB (2213691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39678279361646a2d02d3c53a84e261fd9ee20082b6ae59462afa818e5ee8232`  
		Last Modified: Wed, 05 Sep 2018 05:19:27 GMT  
		Size: 15.6 MB (15571848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b8c2b90d65d06b0cd9ff7964feb4f0d6e5204035af436cd46878cc5c18429`  
		Last Modified: Wed, 05 Sep 2018 05:19:24 GMT  
		Size: 2.1 MB (2090243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d45710f80659ffe39a5f04cdc8bd1c4c08d1bc7f88b76c5bef85f05343d44ae`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4a3f3b6787c4ac147b6049278e6168d6ecdefb299bf603467584c6d0b8e5bf`  
		Last Modified: Wed, 05 Sep 2018 17:48:39 GMT  
		Size: 53.7 MB (53693567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a536072130763411060034c1bf61241e29972456307f1e2a6178f3ce67796bf4`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 844.9 KB (844945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310bf8486250e4a48308b012f25966ed8c96d148c3f75d8016f1e188a8169974`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 353.2 KB (353178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae41425c787d63ba646180aa28b0ac48d36ba3ce748a105f35039f2eb80f4c06`  
		Last Modified: Wed, 05 Sep 2018 17:48:25 GMT  
		Size: 2.8 MB (2777670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aff86aa9f27afd1317758fba2ff313da591e067a1e920c4d05a0719f3fc239d`  
		Last Modified: Wed, 05 Sep 2018 17:48:43 GMT  
		Size: 81.3 MB (81331141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2361b7aae57bbcc2310628572fd26b7303d93461647ad2763dce9a42071675`  
		Last Modified: Wed, 05 Sep 2018 17:48:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5ef6855f3e000e9b2032ff1f1c540aebe35eb0eb501b3b931db009f6949555`  
		Last Modified: Wed, 05 Sep 2018 17:48:24 GMT  
		Size: 3.4 KB (3409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8174ad884b265c5fe16999ef7ecc5702024b1b55928ca0f7db9da8b504106d6`  
		Last Modified: Wed, 05 Sep 2018 17:48:24 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5f1dfdf6c55fc14787a3ab09a0f4f7e097925e9b17af8ee8d51455a4b0281b`  
		Last Modified: Wed, 05 Sep 2018 17:48:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.0`

```console
$ docker pull sentry@sha256:eb1c7dc5186a7311ed6a75499f53d7398c88fb17fd5ee10abb282ec8c50643e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.0` - linux; amd64

```console
$ docker pull sentry@sha256:656fcfd8a5d51130ee3c215ed3d31e40fbe2d85b35173dc2406401b4036aa6c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (189006336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c0335092fef8a3a4191b8cc395b4adf24c3329cc8ac23ee9b4593b82b09ec4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 04:55:24 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 04:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 04:55:55 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 04:55:55 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 04:58:56 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 04:58:56 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 04:59:47 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 04:59:47 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 17:43:55 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 05 Sep 2018 17:44:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:44:27 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 05 Sep 2018 17:44:28 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 05 Sep 2018 17:44:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 17:44:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:45:17 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:45:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 05 Sep 2018 17:45:47 GMT
ENV SENTRY_VERSION=9.0.0
# Wed, 05 Sep 2018 17:47:19 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Sep 2018 17:47:20 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Sep 2018 17:47:20 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Sep 2018 17:47:21 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:47:22 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Sep 2018 17:47:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:47:22 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff36f346217c9b6c7b14a8e363ac2076f89d707f0b4562ab120d939d1feaf7e`  
		Last Modified: Wed, 05 Sep 2018 05:19:24 GMT  
		Size: 2.2 MB (2213691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39678279361646a2d02d3c53a84e261fd9ee20082b6ae59462afa818e5ee8232`  
		Last Modified: Wed, 05 Sep 2018 05:19:27 GMT  
		Size: 15.6 MB (15571848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b8c2b90d65d06b0cd9ff7964feb4f0d6e5204035af436cd46878cc5c18429`  
		Last Modified: Wed, 05 Sep 2018 05:19:24 GMT  
		Size: 2.1 MB (2090243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d45710f80659ffe39a5f04cdc8bd1c4c08d1bc7f88b76c5bef85f05343d44ae`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4a3f3b6787c4ac147b6049278e6168d6ecdefb299bf603467584c6d0b8e5bf`  
		Last Modified: Wed, 05 Sep 2018 17:48:39 GMT  
		Size: 53.7 MB (53693567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a536072130763411060034c1bf61241e29972456307f1e2a6178f3ce67796bf4`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 844.9 KB (844945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310bf8486250e4a48308b012f25966ed8c96d148c3f75d8016f1e188a8169974`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 353.2 KB (353178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae41425c787d63ba646180aa28b0ac48d36ba3ce748a105f35039f2eb80f4c06`  
		Last Modified: Wed, 05 Sep 2018 17:48:25 GMT  
		Size: 2.8 MB (2777670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aff86aa9f27afd1317758fba2ff313da591e067a1e920c4d05a0719f3fc239d`  
		Last Modified: Wed, 05 Sep 2018 17:48:43 GMT  
		Size: 81.3 MB (81331141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2361b7aae57bbcc2310628572fd26b7303d93461647ad2763dce9a42071675`  
		Last Modified: Wed, 05 Sep 2018 17:48:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5ef6855f3e000e9b2032ff1f1c540aebe35eb0eb501b3b931db009f6949555`  
		Last Modified: Wed, 05 Sep 2018 17:48:24 GMT  
		Size: 3.4 KB (3409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8174ad884b265c5fe16999ef7ecc5702024b1b55928ca0f7db9da8b504106d6`  
		Last Modified: Wed, 05 Sep 2018 17:48:24 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5f1dfdf6c55fc14787a3ab09a0f4f7e097925e9b17af8ee8d51455a4b0281b`  
		Last Modified: Wed, 05 Sep 2018 17:48:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.0.0`

```console
$ docker pull sentry@sha256:eb1c7dc5186a7311ed6a75499f53d7398c88fb17fd5ee10abb282ec8c50643e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.0.0` - linux; amd64

```console
$ docker pull sentry@sha256:656fcfd8a5d51130ee3c215ed3d31e40fbe2d85b35173dc2406401b4036aa6c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (189006336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c0335092fef8a3a4191b8cc395b4adf24c3329cc8ac23ee9b4593b82b09ec4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 04:55:24 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 04:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 04:55:55 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 04:55:55 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 04:58:56 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 04:58:56 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 04:59:47 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 04:59:47 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 17:43:55 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 05 Sep 2018 17:44:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:44:27 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 05 Sep 2018 17:44:28 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 05 Sep 2018 17:44:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 17:44:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:45:17 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:45:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 05 Sep 2018 17:45:47 GMT
ENV SENTRY_VERSION=9.0.0
# Wed, 05 Sep 2018 17:47:19 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Sep 2018 17:47:20 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Sep 2018 17:47:20 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Sep 2018 17:47:21 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:47:22 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Sep 2018 17:47:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:47:22 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff36f346217c9b6c7b14a8e363ac2076f89d707f0b4562ab120d939d1feaf7e`  
		Last Modified: Wed, 05 Sep 2018 05:19:24 GMT  
		Size: 2.2 MB (2213691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39678279361646a2d02d3c53a84e261fd9ee20082b6ae59462afa818e5ee8232`  
		Last Modified: Wed, 05 Sep 2018 05:19:27 GMT  
		Size: 15.6 MB (15571848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b8c2b90d65d06b0cd9ff7964feb4f0d6e5204035af436cd46878cc5c18429`  
		Last Modified: Wed, 05 Sep 2018 05:19:24 GMT  
		Size: 2.1 MB (2090243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d45710f80659ffe39a5f04cdc8bd1c4c08d1bc7f88b76c5bef85f05343d44ae`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4a3f3b6787c4ac147b6049278e6168d6ecdefb299bf603467584c6d0b8e5bf`  
		Last Modified: Wed, 05 Sep 2018 17:48:39 GMT  
		Size: 53.7 MB (53693567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a536072130763411060034c1bf61241e29972456307f1e2a6178f3ce67796bf4`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 844.9 KB (844945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310bf8486250e4a48308b012f25966ed8c96d148c3f75d8016f1e188a8169974`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 353.2 KB (353178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae41425c787d63ba646180aa28b0ac48d36ba3ce748a105f35039f2eb80f4c06`  
		Last Modified: Wed, 05 Sep 2018 17:48:25 GMT  
		Size: 2.8 MB (2777670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aff86aa9f27afd1317758fba2ff313da591e067a1e920c4d05a0719f3fc239d`  
		Last Modified: Wed, 05 Sep 2018 17:48:43 GMT  
		Size: 81.3 MB (81331141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2361b7aae57bbcc2310628572fd26b7303d93461647ad2763dce9a42071675`  
		Last Modified: Wed, 05 Sep 2018 17:48:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5ef6855f3e000e9b2032ff1f1c540aebe35eb0eb501b3b931db009f6949555`  
		Last Modified: Wed, 05 Sep 2018 17:48:24 GMT  
		Size: 3.4 KB (3409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8174ad884b265c5fe16999ef7ecc5702024b1b55928ca0f7db9da8b504106d6`  
		Last Modified: Wed, 05 Sep 2018 17:48:24 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5f1dfdf6c55fc14787a3ab09a0f4f7e097925e9b17af8ee8d51455a4b0281b`  
		Last Modified: Wed, 05 Sep 2018 17:48:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.0.0-onbuild`

```console
$ docker pull sentry@sha256:08fd61439a44562f81fb3eaaa6c489a798c58d1961dcde0db03406141bb32539
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.0.0-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:577f443a47d7400c93a44534ae43b4ca1ee690d6690f6b59b7192a703a307e0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (189006474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93a161e4889e91b49c7d71eabda6b08deb8ecf08a75e77defee221d9ceb6a4b3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 04:55:24 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 04:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 04:55:55 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 04:55:55 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 04:58:56 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 04:58:56 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 04:59:47 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 04:59:47 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 17:43:55 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 05 Sep 2018 17:44:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:44:27 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 05 Sep 2018 17:44:28 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 05 Sep 2018 17:44:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 17:44:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:45:17 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:45:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 05 Sep 2018 17:45:47 GMT
ENV SENTRY_VERSION=9.0.0
# Wed, 05 Sep 2018 17:47:19 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Sep 2018 17:47:20 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Sep 2018 17:47:20 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Sep 2018 17:47:21 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:47:22 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Sep 2018 17:47:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:47:22 GMT
CMD ["run" "web"]
# Wed, 05 Sep 2018 17:47:27 GMT
WORKDIR /usr/src/sentry
# Wed, 05 Sep 2018 17:47:27 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 05 Sep 2018 17:47:28 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 05 Sep 2018 17:47:28 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 05 Sep 2018 17:47:28 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 05 Sep 2018 17:47:28 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff36f346217c9b6c7b14a8e363ac2076f89d707f0b4562ab120d939d1feaf7e`  
		Last Modified: Wed, 05 Sep 2018 05:19:24 GMT  
		Size: 2.2 MB (2213691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39678279361646a2d02d3c53a84e261fd9ee20082b6ae59462afa818e5ee8232`  
		Last Modified: Wed, 05 Sep 2018 05:19:27 GMT  
		Size: 15.6 MB (15571848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b8c2b90d65d06b0cd9ff7964feb4f0d6e5204035af436cd46878cc5c18429`  
		Last Modified: Wed, 05 Sep 2018 05:19:24 GMT  
		Size: 2.1 MB (2090243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d45710f80659ffe39a5f04cdc8bd1c4c08d1bc7f88b76c5bef85f05343d44ae`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4a3f3b6787c4ac147b6049278e6168d6ecdefb299bf603467584c6d0b8e5bf`  
		Last Modified: Wed, 05 Sep 2018 17:48:39 GMT  
		Size: 53.7 MB (53693567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a536072130763411060034c1bf61241e29972456307f1e2a6178f3ce67796bf4`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 844.9 KB (844945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310bf8486250e4a48308b012f25966ed8c96d148c3f75d8016f1e188a8169974`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 353.2 KB (353178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae41425c787d63ba646180aa28b0ac48d36ba3ce748a105f35039f2eb80f4c06`  
		Last Modified: Wed, 05 Sep 2018 17:48:25 GMT  
		Size: 2.8 MB (2777670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aff86aa9f27afd1317758fba2ff313da591e067a1e920c4d05a0719f3fc239d`  
		Last Modified: Wed, 05 Sep 2018 17:48:43 GMT  
		Size: 81.3 MB (81331141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2361b7aae57bbcc2310628572fd26b7303d93461647ad2763dce9a42071675`  
		Last Modified: Wed, 05 Sep 2018 17:48:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5ef6855f3e000e9b2032ff1f1c540aebe35eb0eb501b3b931db009f6949555`  
		Last Modified: Wed, 05 Sep 2018 17:48:24 GMT  
		Size: 3.4 KB (3409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8174ad884b265c5fe16999ef7ecc5702024b1b55928ca0f7db9da8b504106d6`  
		Last Modified: Wed, 05 Sep 2018 17:48:24 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5f1dfdf6c55fc14787a3ab09a0f4f7e097925e9b17af8ee8d51455a4b0281b`  
		Last Modified: Wed, 05 Sep 2018 17:48:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988d118217677929899c61324bc3dad35e33510e3f27568579fb6359bd8427c4`  
		Last Modified: Wed, 05 Sep 2018 17:49:03 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.0-onbuild`

```console
$ docker pull sentry@sha256:08fd61439a44562f81fb3eaaa6c489a798c58d1961dcde0db03406141bb32539
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.0-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:577f443a47d7400c93a44534ae43b4ca1ee690d6690f6b59b7192a703a307e0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (189006474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93a161e4889e91b49c7d71eabda6b08deb8ecf08a75e77defee221d9ceb6a4b3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 04:55:24 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 04:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 04:55:55 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 04:55:55 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 04:58:56 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 04:58:56 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 04:59:47 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 04:59:47 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 17:43:55 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 05 Sep 2018 17:44:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:44:27 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 05 Sep 2018 17:44:28 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 05 Sep 2018 17:44:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 17:44:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:45:17 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:45:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 05 Sep 2018 17:45:47 GMT
ENV SENTRY_VERSION=9.0.0
# Wed, 05 Sep 2018 17:47:19 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Sep 2018 17:47:20 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Sep 2018 17:47:20 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Sep 2018 17:47:21 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:47:22 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Sep 2018 17:47:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:47:22 GMT
CMD ["run" "web"]
# Wed, 05 Sep 2018 17:47:27 GMT
WORKDIR /usr/src/sentry
# Wed, 05 Sep 2018 17:47:27 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 05 Sep 2018 17:47:28 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 05 Sep 2018 17:47:28 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 05 Sep 2018 17:47:28 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 05 Sep 2018 17:47:28 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff36f346217c9b6c7b14a8e363ac2076f89d707f0b4562ab120d939d1feaf7e`  
		Last Modified: Wed, 05 Sep 2018 05:19:24 GMT  
		Size: 2.2 MB (2213691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39678279361646a2d02d3c53a84e261fd9ee20082b6ae59462afa818e5ee8232`  
		Last Modified: Wed, 05 Sep 2018 05:19:27 GMT  
		Size: 15.6 MB (15571848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b8c2b90d65d06b0cd9ff7964feb4f0d6e5204035af436cd46878cc5c18429`  
		Last Modified: Wed, 05 Sep 2018 05:19:24 GMT  
		Size: 2.1 MB (2090243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d45710f80659ffe39a5f04cdc8bd1c4c08d1bc7f88b76c5bef85f05343d44ae`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4a3f3b6787c4ac147b6049278e6168d6ecdefb299bf603467584c6d0b8e5bf`  
		Last Modified: Wed, 05 Sep 2018 17:48:39 GMT  
		Size: 53.7 MB (53693567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a536072130763411060034c1bf61241e29972456307f1e2a6178f3ce67796bf4`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 844.9 KB (844945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310bf8486250e4a48308b012f25966ed8c96d148c3f75d8016f1e188a8169974`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 353.2 KB (353178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae41425c787d63ba646180aa28b0ac48d36ba3ce748a105f35039f2eb80f4c06`  
		Last Modified: Wed, 05 Sep 2018 17:48:25 GMT  
		Size: 2.8 MB (2777670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aff86aa9f27afd1317758fba2ff313da591e067a1e920c4d05a0719f3fc239d`  
		Last Modified: Wed, 05 Sep 2018 17:48:43 GMT  
		Size: 81.3 MB (81331141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2361b7aae57bbcc2310628572fd26b7303d93461647ad2763dce9a42071675`  
		Last Modified: Wed, 05 Sep 2018 17:48:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5ef6855f3e000e9b2032ff1f1c540aebe35eb0eb501b3b931db009f6949555`  
		Last Modified: Wed, 05 Sep 2018 17:48:24 GMT  
		Size: 3.4 KB (3409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8174ad884b265c5fe16999ef7ecc5702024b1b55928ca0f7db9da8b504106d6`  
		Last Modified: Wed, 05 Sep 2018 17:48:24 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5f1dfdf6c55fc14787a3ab09a0f4f7e097925e9b17af8ee8d51455a4b0281b`  
		Last Modified: Wed, 05 Sep 2018 17:48:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988d118217677929899c61324bc3dad35e33510e3f27568579fb6359bd8427c4`  
		Last Modified: Wed, 05 Sep 2018 17:49:03 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9-onbuild`

```console
$ docker pull sentry@sha256:08fd61439a44562f81fb3eaaa6c489a798c58d1961dcde0db03406141bb32539
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:577f443a47d7400c93a44534ae43b4ca1ee690d6690f6b59b7192a703a307e0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (189006474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93a161e4889e91b49c7d71eabda6b08deb8ecf08a75e77defee221d9ceb6a4b3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 04:55:24 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 04:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 04:55:55 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 04:55:55 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 04:58:56 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 04:58:56 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 04:59:47 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 04:59:47 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 17:43:55 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 05 Sep 2018 17:44:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:44:27 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 05 Sep 2018 17:44:28 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 05 Sep 2018 17:44:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 17:44:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:45:17 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:45:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 05 Sep 2018 17:45:47 GMT
ENV SENTRY_VERSION=9.0.0
# Wed, 05 Sep 2018 17:47:19 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Sep 2018 17:47:20 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Sep 2018 17:47:20 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Sep 2018 17:47:21 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:47:22 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Sep 2018 17:47:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:47:22 GMT
CMD ["run" "web"]
# Wed, 05 Sep 2018 17:47:27 GMT
WORKDIR /usr/src/sentry
# Wed, 05 Sep 2018 17:47:27 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 05 Sep 2018 17:47:28 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 05 Sep 2018 17:47:28 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 05 Sep 2018 17:47:28 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 05 Sep 2018 17:47:28 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff36f346217c9b6c7b14a8e363ac2076f89d707f0b4562ab120d939d1feaf7e`  
		Last Modified: Wed, 05 Sep 2018 05:19:24 GMT  
		Size: 2.2 MB (2213691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39678279361646a2d02d3c53a84e261fd9ee20082b6ae59462afa818e5ee8232`  
		Last Modified: Wed, 05 Sep 2018 05:19:27 GMT  
		Size: 15.6 MB (15571848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b8c2b90d65d06b0cd9ff7964feb4f0d6e5204035af436cd46878cc5c18429`  
		Last Modified: Wed, 05 Sep 2018 05:19:24 GMT  
		Size: 2.1 MB (2090243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d45710f80659ffe39a5f04cdc8bd1c4c08d1bc7f88b76c5bef85f05343d44ae`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4a3f3b6787c4ac147b6049278e6168d6ecdefb299bf603467584c6d0b8e5bf`  
		Last Modified: Wed, 05 Sep 2018 17:48:39 GMT  
		Size: 53.7 MB (53693567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a536072130763411060034c1bf61241e29972456307f1e2a6178f3ce67796bf4`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 844.9 KB (844945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310bf8486250e4a48308b012f25966ed8c96d148c3f75d8016f1e188a8169974`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 353.2 KB (353178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae41425c787d63ba646180aa28b0ac48d36ba3ce748a105f35039f2eb80f4c06`  
		Last Modified: Wed, 05 Sep 2018 17:48:25 GMT  
		Size: 2.8 MB (2777670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aff86aa9f27afd1317758fba2ff313da591e067a1e920c4d05a0719f3fc239d`  
		Last Modified: Wed, 05 Sep 2018 17:48:43 GMT  
		Size: 81.3 MB (81331141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2361b7aae57bbcc2310628572fd26b7303d93461647ad2763dce9a42071675`  
		Last Modified: Wed, 05 Sep 2018 17:48:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5ef6855f3e000e9b2032ff1f1c540aebe35eb0eb501b3b931db009f6949555`  
		Last Modified: Wed, 05 Sep 2018 17:48:24 GMT  
		Size: 3.4 KB (3409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8174ad884b265c5fe16999ef7ecc5702024b1b55928ca0f7db9da8b504106d6`  
		Last Modified: Wed, 05 Sep 2018 17:48:24 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5f1dfdf6c55fc14787a3ab09a0f4f7e097925e9b17af8ee8d51455a4b0281b`  
		Last Modified: Wed, 05 Sep 2018 17:48:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988d118217677929899c61324bc3dad35e33510e3f27568579fb6359bd8427c4`  
		Last Modified: Wed, 05 Sep 2018 17:49:03 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:latest`

```console
$ docker pull sentry@sha256:cd5469d34a89ec720189f64987ae4eca2a435815f3210af0a989b5ba304da419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

```console
$ docker pull sentry@sha256:2f47a281cb7ee75771c170f5135ee042ae9ca1dcc30246cf7bc3d357bada5c91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.2 MB (190184114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1b4ff945f5ba0b776f9d8bc1c5fe10bff3e52a6a8545fb5a95e677a3c6bf7a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:43:52 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 00:43:53 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 01:12:39 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 01:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:13:20 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 01:13:20 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 31 Jul 2018 23:10:53 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 31 Jul 2018 23:10:53 GMT
ENV PYTHON_PIP_VERSION=18.0
# Tue, 31 Jul 2018 23:11:57 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 31 Jul 2018 23:11:57 GMT
CMD ["python2"]
# Tue, 31 Jul 2018 23:42:38 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 31 Jul 2018 23:43:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 23:43:43 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 31 Jul 2018 23:43:44 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 31 Jul 2018 23:43:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 23:44:27 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 31 Jul 2018 23:45:09 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 31 Jul 2018 23:46:01 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 31 Jul 2018 23:46:01 GMT
ENV SENTRY_VERSION=9.0.0
# Tue, 31 Jul 2018 23:48:19 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Tue, 31 Jul 2018 23:48:20 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 31 Jul 2018 23:48:21 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 31 Jul 2018 23:48:21 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Tue, 31 Jul 2018 23:48:22 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Tue, 31 Jul 2018 23:48:22 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 31 Jul 2018 23:48:22 GMT
EXPOSE 9000/tcp
# Tue, 31 Jul 2018 23:48:23 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 31 Jul 2018 23:48:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 31 Jul 2018 23:48:23 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fda6075cce46c6b2467c9a72779b5c6d1154667d01ca2313d9c10d757e0e91`  
		Last Modified: Tue, 17 Jul 2018 02:03:30 GMT  
		Size: 2.2 MB (2213426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ef94fd8c8dfb4f208f8d70012d46b6558134eed93c571d6a64c0c802502a95`  
		Last Modified: Tue, 31 Jul 2018 23:25:42 GMT  
		Size: 16.7 MB (16712263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1947af13b710dc7f6693e568565e8d0c27d84910990b6a207185533e67706354`  
		Last Modified: Tue, 31 Jul 2018 23:25:35 GMT  
		Size: 2.1 MB (2088961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af039ba7b37e416adceb1cc4312bdfe308a278b810d2dc0eb1589e0bc88b011`  
		Last Modified: Tue, 31 Jul 2018 23:49:26 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdcd5aee8745afd2c6de63f963ca48e62ea15418924a7e90be5a6e20793add2`  
		Last Modified: Tue, 31 Jul 2018 23:49:44 GMT  
		Size: 53.7 MB (53692906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d564ab57967efd2c8e8e12dcc3e0481cb010c08979da700d36f29716a0889ab7`  
		Last Modified: Tue, 31 Jul 2018 23:49:23 GMT  
		Size: 845.1 KB (845091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00baba3da3fdd6168633916171c8938c0cb83636ff4df0da2cd28bb8b17552d7`  
		Last Modified: Tue, 31 Jul 2018 23:49:23 GMT  
		Size: 353.3 KB (353339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333072f133e5354211ffebf46a2f7b4acc5da2b644360ce49b249002d0d2e07a`  
		Last Modified: Tue, 31 Jul 2018 23:49:24 GMT  
		Size: 2.8 MB (2776936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ecb03b334665b857cbd1e98ad5fa03e25abbc38021b7312f5d87542bf588473`  
		Last Modified: Tue, 31 Jul 2018 23:49:53 GMT  
		Size: 81.4 MB (81371550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fcce88eb88e703db3eedf937fa9ef4227ed78b23038079bf32f8dac51998cc4`  
		Last Modified: Tue, 31 Jul 2018 23:49:20 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f1e95345d73d6feeb4ae113d37514601c0bcd04f4f692891c802a3922bf17b`  
		Last Modified: Tue, 31 Jul 2018 23:49:21 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c7ded0e3961edbe37430b5b87ef76e4fb7028732b419f3a6f7c16a9cd0c4036`  
		Last Modified: Tue, 31 Jul 2018 23:49:21 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a376c677ab3e7716b976c8d71fc5ed5bd48b1abd4509dc8f9b2845d74763f166`  
		Last Modified: Tue, 31 Jul 2018 23:49:21 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:08fd61439a44562f81fb3eaaa6c489a798c58d1961dcde0db03406141bb32539
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:577f443a47d7400c93a44534ae43b4ca1ee690d6690f6b59b7192a703a307e0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (189006474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93a161e4889e91b49c7d71eabda6b08deb8ecf08a75e77defee221d9ceb6a4b3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 04:55:24 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 04:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 04:55:55 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 04:55:55 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 04:58:56 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 04:58:56 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 04:59:47 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 04:59:47 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 17:43:55 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 05 Sep 2018 17:44:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:44:27 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 05 Sep 2018 17:44:28 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 05 Sep 2018 17:44:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 17:44:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:45:17 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 05 Sep 2018 17:45:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 05 Sep 2018 17:45:47 GMT
ENV SENTRY_VERSION=9.0.0
# Wed, 05 Sep 2018 17:47:19 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Sep 2018 17:47:20 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Sep 2018 17:47:20 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Sep 2018 17:47:21 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Sep 2018 17:47:21 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:47:22 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Sep 2018 17:47:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:47:22 GMT
CMD ["run" "web"]
# Wed, 05 Sep 2018 17:47:27 GMT
WORKDIR /usr/src/sentry
# Wed, 05 Sep 2018 17:47:27 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 05 Sep 2018 17:47:28 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 05 Sep 2018 17:47:28 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 05 Sep 2018 17:47:28 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 05 Sep 2018 17:47:28 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff36f346217c9b6c7b14a8e363ac2076f89d707f0b4562ab120d939d1feaf7e`  
		Last Modified: Wed, 05 Sep 2018 05:19:24 GMT  
		Size: 2.2 MB (2213691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39678279361646a2d02d3c53a84e261fd9ee20082b6ae59462afa818e5ee8232`  
		Last Modified: Wed, 05 Sep 2018 05:19:27 GMT  
		Size: 15.6 MB (15571848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b8c2b90d65d06b0cd9ff7964feb4f0d6e5204035af436cd46878cc5c18429`  
		Last Modified: Wed, 05 Sep 2018 05:19:24 GMT  
		Size: 2.1 MB (2090243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d45710f80659ffe39a5f04cdc8bd1c4c08d1bc7f88b76c5bef85f05343d44ae`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4a3f3b6787c4ac147b6049278e6168d6ecdefb299bf603467584c6d0b8e5bf`  
		Last Modified: Wed, 05 Sep 2018 17:48:39 GMT  
		Size: 53.7 MB (53693567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a536072130763411060034c1bf61241e29972456307f1e2a6178f3ce67796bf4`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 844.9 KB (844945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310bf8486250e4a48308b012f25966ed8c96d148c3f75d8016f1e188a8169974`  
		Last Modified: Wed, 05 Sep 2018 17:48:26 GMT  
		Size: 353.2 KB (353178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae41425c787d63ba646180aa28b0ac48d36ba3ce748a105f35039f2eb80f4c06`  
		Last Modified: Wed, 05 Sep 2018 17:48:25 GMT  
		Size: 2.8 MB (2777670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aff86aa9f27afd1317758fba2ff313da591e067a1e920c4d05a0719f3fc239d`  
		Last Modified: Wed, 05 Sep 2018 17:48:43 GMT  
		Size: 81.3 MB (81331141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2361b7aae57bbcc2310628572fd26b7303d93461647ad2763dce9a42071675`  
		Last Modified: Wed, 05 Sep 2018 17:48:25 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5ef6855f3e000e9b2032ff1f1c540aebe35eb0eb501b3b931db009f6949555`  
		Last Modified: Wed, 05 Sep 2018 17:48:24 GMT  
		Size: 3.4 KB (3409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8174ad884b265c5fe16999ef7ecc5702024b1b55928ca0f7db9da8b504106d6`  
		Last Modified: Wed, 05 Sep 2018 17:48:24 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5f1dfdf6c55fc14787a3ab09a0f4f7e097925e9b17af8ee8d51455a4b0281b`  
		Last Modified: Wed, 05 Sep 2018 17:48:23 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988d118217677929899c61324bc3dad35e33510e3f27568579fb6359bd8427c4`  
		Last Modified: Wed, 05 Sep 2018 17:49:03 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
