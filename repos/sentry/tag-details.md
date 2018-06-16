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
-	[`sentry:9.0.0rc1`](#sentry900rc1)
-	[`sentry:9.0.0rc1-onbuild`](#sentry900rc1-onbuild)
-	[`sentry:9.0-onbuild`](#sentry90-onbuild)
-	[`sentry:9-onbuild`](#sentry9-onbuild)
-	[`sentry:latest`](#sentrylatest)
-	[`sentry:onbuild`](#sentryonbuild)

## `sentry:8`

```console
$ docker pull sentry@sha256:741fd9b018742e353c793f3d97edc6a6cd58f07c9635818e399ee3926c8c4a0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

```console
$ docker pull sentry@sha256:7314e14568c3656e26a49a30a08c4d73cb53fae432e98dcb2b252eefef2b602a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172606236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7479e92d251eb72b86f3d34c8dfba46f5cd43f8b27166bea72cd42095d8a8aa`
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
# Sat, 16 Jun 2018 06:20:09 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 16 Jun 2018 06:21:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 16 Jun 2018 06:21:16 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 16 Jun 2018 06:21:17 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 16 Jun 2018 06:21:17 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 06:22:01 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 16 Jun 2018 06:22:01 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 16 Jun 2018 06:22:45 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 16 Jun 2018 06:23:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 16 Jun 2018 06:23:39 GMT
ENV SENTRY_VERSION=8.22.0
# Sat, 16 Jun 2018 06:26:40 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 16 Jun 2018 06:26:41 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 16 Jun 2018 06:26:42 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 16 Jun 2018 06:26:42 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 16 Jun 2018 06:26:42 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 16 Jun 2018 06:26:42 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 16 Jun 2018 06:26:43 GMT
EXPOSE 9000/tcp
# Sat, 16 Jun 2018 06:26:43 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 16 Jun 2018 06:26:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:26:43 GMT
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
	-	`sha256:0f3d1c7ee1ec64376d4d5cd461e5bdea8ba514b530c00f944871828a988622b0`  
		Last Modified: Sat, 16 Jun 2018 06:34:16 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64aa75f3fc33f23be3225935561b94c11f4163c095af0d7f5bcc588ecf2e8553`  
		Last Modified: Sat, 16 Jun 2018 06:34:34 GMT  
		Size: 55.3 MB (55317632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad96b555810d4c451f6cb08d47dc2367e8fac71f6112fdea30a532367f85a859`  
		Last Modified: Sat, 16 Jun 2018 06:34:13 GMT  
		Size: 845.1 KB (845149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4fccd0a58ea6a5e3716d7d7a5d2253839fb2d07656871faddaca039dca0413b`  
		Last Modified: Sat, 16 Jun 2018 06:34:13 GMT  
		Size: 352.5 KB (352478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988706ec76409403230b9b7afd3d58c91f01e28f2107317d457af54760a38b9a`  
		Last Modified: Sat, 16 Jun 2018 06:34:15 GMT  
		Size: 2.8 MB (2769839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30906889d2abb21f13714bd5fd39081bcc4b61ae7600d2f6beac76a1fff91f9`  
		Last Modified: Sat, 16 Jun 2018 06:34:37 GMT  
		Size: 63.5 MB (63450653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2cbd2cfbd0407d6a1de3a0c8d0e7e41569b72365dde0744fde9d27cf464eaf`  
		Last Modified: Sat, 16 Jun 2018 06:34:10 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e659eb7f7692103e2dd3073547379715f7632f2f10eac38cb8cf1f3f4dab05ca`  
		Last Modified: Sat, 16 Jun 2018 06:34:10 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b990cfab3757f62cf814f332ae6681ad847e550f935f92e331676a86b5d4cc`  
		Last Modified: Sat, 16 Jun 2018 06:34:10 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312840f46645e7a0fe38a9e794d5ecd47e4c754b9c9d79bf1382b520b7958f0c`  
		Last Modified: Sat, 16 Jun 2018 06:34:10 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.22`

```console
$ docker pull sentry@sha256:741fd9b018742e353c793f3d97edc6a6cd58f07c9635818e399ee3926c8c4a0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.22` - linux; amd64

```console
$ docker pull sentry@sha256:7314e14568c3656e26a49a30a08c4d73cb53fae432e98dcb2b252eefef2b602a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172606236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7479e92d251eb72b86f3d34c8dfba46f5cd43f8b27166bea72cd42095d8a8aa`
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
# Sat, 16 Jun 2018 06:20:09 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 16 Jun 2018 06:21:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 16 Jun 2018 06:21:16 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 16 Jun 2018 06:21:17 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 16 Jun 2018 06:21:17 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 06:22:01 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 16 Jun 2018 06:22:01 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 16 Jun 2018 06:22:45 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 16 Jun 2018 06:23:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 16 Jun 2018 06:23:39 GMT
ENV SENTRY_VERSION=8.22.0
# Sat, 16 Jun 2018 06:26:40 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 16 Jun 2018 06:26:41 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 16 Jun 2018 06:26:42 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 16 Jun 2018 06:26:42 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 16 Jun 2018 06:26:42 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 16 Jun 2018 06:26:42 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 16 Jun 2018 06:26:43 GMT
EXPOSE 9000/tcp
# Sat, 16 Jun 2018 06:26:43 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 16 Jun 2018 06:26:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:26:43 GMT
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
	-	`sha256:0f3d1c7ee1ec64376d4d5cd461e5bdea8ba514b530c00f944871828a988622b0`  
		Last Modified: Sat, 16 Jun 2018 06:34:16 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64aa75f3fc33f23be3225935561b94c11f4163c095af0d7f5bcc588ecf2e8553`  
		Last Modified: Sat, 16 Jun 2018 06:34:34 GMT  
		Size: 55.3 MB (55317632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad96b555810d4c451f6cb08d47dc2367e8fac71f6112fdea30a532367f85a859`  
		Last Modified: Sat, 16 Jun 2018 06:34:13 GMT  
		Size: 845.1 KB (845149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4fccd0a58ea6a5e3716d7d7a5d2253839fb2d07656871faddaca039dca0413b`  
		Last Modified: Sat, 16 Jun 2018 06:34:13 GMT  
		Size: 352.5 KB (352478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988706ec76409403230b9b7afd3d58c91f01e28f2107317d457af54760a38b9a`  
		Last Modified: Sat, 16 Jun 2018 06:34:15 GMT  
		Size: 2.8 MB (2769839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30906889d2abb21f13714bd5fd39081bcc4b61ae7600d2f6beac76a1fff91f9`  
		Last Modified: Sat, 16 Jun 2018 06:34:37 GMT  
		Size: 63.5 MB (63450653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2cbd2cfbd0407d6a1de3a0c8d0e7e41569b72365dde0744fde9d27cf464eaf`  
		Last Modified: Sat, 16 Jun 2018 06:34:10 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e659eb7f7692103e2dd3073547379715f7632f2f10eac38cb8cf1f3f4dab05ca`  
		Last Modified: Sat, 16 Jun 2018 06:34:10 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b990cfab3757f62cf814f332ae6681ad847e550f935f92e331676a86b5d4cc`  
		Last Modified: Sat, 16 Jun 2018 06:34:10 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312840f46645e7a0fe38a9e794d5ecd47e4c754b9c9d79bf1382b520b7958f0c`  
		Last Modified: Sat, 16 Jun 2018 06:34:10 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.22.0`

```console
$ docker pull sentry@sha256:741fd9b018742e353c793f3d97edc6a6cd58f07c9635818e399ee3926c8c4a0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.22.0` - linux; amd64

```console
$ docker pull sentry@sha256:7314e14568c3656e26a49a30a08c4d73cb53fae432e98dcb2b252eefef2b602a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172606236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7479e92d251eb72b86f3d34c8dfba46f5cd43f8b27166bea72cd42095d8a8aa`
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
# Sat, 16 Jun 2018 06:20:09 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 16 Jun 2018 06:21:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 16 Jun 2018 06:21:16 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 16 Jun 2018 06:21:17 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 16 Jun 2018 06:21:17 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 06:22:01 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 16 Jun 2018 06:22:01 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 16 Jun 2018 06:22:45 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 16 Jun 2018 06:23:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 16 Jun 2018 06:23:39 GMT
ENV SENTRY_VERSION=8.22.0
# Sat, 16 Jun 2018 06:26:40 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 16 Jun 2018 06:26:41 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 16 Jun 2018 06:26:42 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 16 Jun 2018 06:26:42 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 16 Jun 2018 06:26:42 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 16 Jun 2018 06:26:42 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 16 Jun 2018 06:26:43 GMT
EXPOSE 9000/tcp
# Sat, 16 Jun 2018 06:26:43 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 16 Jun 2018 06:26:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:26:43 GMT
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
	-	`sha256:0f3d1c7ee1ec64376d4d5cd461e5bdea8ba514b530c00f944871828a988622b0`  
		Last Modified: Sat, 16 Jun 2018 06:34:16 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64aa75f3fc33f23be3225935561b94c11f4163c095af0d7f5bcc588ecf2e8553`  
		Last Modified: Sat, 16 Jun 2018 06:34:34 GMT  
		Size: 55.3 MB (55317632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad96b555810d4c451f6cb08d47dc2367e8fac71f6112fdea30a532367f85a859`  
		Last Modified: Sat, 16 Jun 2018 06:34:13 GMT  
		Size: 845.1 KB (845149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4fccd0a58ea6a5e3716d7d7a5d2253839fb2d07656871faddaca039dca0413b`  
		Last Modified: Sat, 16 Jun 2018 06:34:13 GMT  
		Size: 352.5 KB (352478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:988706ec76409403230b9b7afd3d58c91f01e28f2107317d457af54760a38b9a`  
		Last Modified: Sat, 16 Jun 2018 06:34:15 GMT  
		Size: 2.8 MB (2769839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30906889d2abb21f13714bd5fd39081bcc4b61ae7600d2f6beac76a1fff91f9`  
		Last Modified: Sat, 16 Jun 2018 06:34:37 GMT  
		Size: 63.5 MB (63450653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2cbd2cfbd0407d6a1de3a0c8d0e7e41569b72365dde0744fde9d27cf464eaf`  
		Last Modified: Sat, 16 Jun 2018 06:34:10 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e659eb7f7692103e2dd3073547379715f7632f2f10eac38cb8cf1f3f4dab05ca`  
		Last Modified: Sat, 16 Jun 2018 06:34:10 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b990cfab3757f62cf814f332ae6681ad847e550f935f92e331676a86b5d4cc`  
		Last Modified: Sat, 16 Jun 2018 06:34:10 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312840f46645e7a0fe38a9e794d5ecd47e4c754b9c9d79bf1382b520b7958f0c`  
		Last Modified: Sat, 16 Jun 2018 06:34:10 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.22.0-onbuild`

```console
$ docker pull sentry@sha256:057496a5eefad3d138d0828bcd8c8d5bb110dbc37e6a612043f7ec52240b5f1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.22.0-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:691efd7993be5920aa7312c39ba3807c433c98a03bb498651eef88688c25f6ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170946886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ebfa5d7c94d7532929143a524eb1bf1fbe98555e31f403060fb452e23d9a867`
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
# Thu, 03 May 2018 21:39:11 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Thu, 03 May 2018 21:39:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 21:39:51 GMT
ENV PIP_NO_CACHE_DIR=off
# Thu, 03 May 2018 21:39:52 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Thu, 03 May 2018 21:39:53 GMT
ENV GOSU_VERSION=1.10
# Thu, 03 May 2018 21:40:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Thu, 03 May 2018 21:40:21 GMT
ENV TINI_VERSION=v0.14.0
# Thu, 03 May 2018 21:40:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Thu, 03 May 2018 21:41:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Thu, 03 May 2018 22:23:11 GMT
ENV SENTRY_VERSION=8.22.0
# Thu, 03 May 2018 22:25:10 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Thu, 03 May 2018 22:25:13 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Thu, 03 May 2018 22:25:15 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Thu, 03 May 2018 22:25:15 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Thu, 03 May 2018 22:25:16 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Thu, 03 May 2018 22:25:16 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Thu, 03 May 2018 22:25:17 GMT
EXPOSE 9000/tcp
# Thu, 03 May 2018 22:25:20 GMT
VOLUME [/var/lib/sentry/files]
# Thu, 03 May 2018 22:25:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 May 2018 22:25:22 GMT
CMD ["run" "web"]
# Thu, 03 May 2018 22:47:02 GMT
WORKDIR /usr/src/sentry
# Thu, 03 May 2018 22:47:03 GMT
ENV PYTHONPATH=/usr/src/sentry
# Thu, 03 May 2018 22:47:07 GMT
ONBUILD COPY . /usr/src/sentry
# Thu, 03 May 2018 22:47:07 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Thu, 03 May 2018 22:47:08 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Thu, 03 May 2018 22:47:16 GMT
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
	-	`sha256:20573e1eb0c26d46f5cbc78c984730deb612195bddba6ab4c612f0ed44a0b2c7`  
		Last Modified: Thu, 03 May 2018 23:09:02 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2c20a7cd033bb11baf51f987cca5337c5a315ad1eeea293b992b39b8a9ffff`  
		Last Modified: Thu, 03 May 2018 23:09:21 GMT  
		Size: 53.7 MB (53674176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e36de020b4b237fe430da21fd61f8ed7cddee907c7a029724918f00924b4740`  
		Last Modified: Thu, 03 May 2018 23:08:59 GMT  
		Size: 844.9 KB (844874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2260abb46adff0026888ca6ffa72f1976a52da45751bb79472980392977ef01a`  
		Last Modified: Thu, 03 May 2018 23:08:58 GMT  
		Size: 352.2 KB (352184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85890978f79215652f22508b182ba8c0173b101bc46e084fd6a53ab2a38bb48`  
		Last Modified: Thu, 03 May 2018 23:08:59 GMT  
		Size: 2.8 MB (2767091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e695fa52ef68b6979de40cf09fbe23e28820f919924380575f2e3c742ef214f3`  
		Last Modified: Thu, 03 May 2018 23:25:17 GMT  
		Size: 63.4 MB (63437935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a165bc9f818a72df3a3f685fbab781ccb591589849c70e0195fde166c9dcdf92`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5faaae5d404b96e08cb3a396c5ec25ed7972649f43d00d8285c5f80f60c40fd`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f7073e55eefacc1c3aa81d6dd95d8cc19d37c619f0df68e96fb3f09bc90b81`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb9d378cc3069a6c44729735004dd17ed578626fbb28aa5d3fdfb1e74864267`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911fd4564be86ff7233b8e3dca1484e286235c073f17166789f04bc5b8b2c790`  
		Last Modified: Thu, 03 May 2018 23:26:57 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.22-onbuild`

```console
$ docker pull sentry@sha256:057496a5eefad3d138d0828bcd8c8d5bb110dbc37e6a612043f7ec52240b5f1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.22-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:691efd7993be5920aa7312c39ba3807c433c98a03bb498651eef88688c25f6ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170946886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ebfa5d7c94d7532929143a524eb1bf1fbe98555e31f403060fb452e23d9a867`
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
# Thu, 03 May 2018 21:39:11 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Thu, 03 May 2018 21:39:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 21:39:51 GMT
ENV PIP_NO_CACHE_DIR=off
# Thu, 03 May 2018 21:39:52 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Thu, 03 May 2018 21:39:53 GMT
ENV GOSU_VERSION=1.10
# Thu, 03 May 2018 21:40:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Thu, 03 May 2018 21:40:21 GMT
ENV TINI_VERSION=v0.14.0
# Thu, 03 May 2018 21:40:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Thu, 03 May 2018 21:41:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Thu, 03 May 2018 22:23:11 GMT
ENV SENTRY_VERSION=8.22.0
# Thu, 03 May 2018 22:25:10 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Thu, 03 May 2018 22:25:13 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Thu, 03 May 2018 22:25:15 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Thu, 03 May 2018 22:25:15 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Thu, 03 May 2018 22:25:16 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Thu, 03 May 2018 22:25:16 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Thu, 03 May 2018 22:25:17 GMT
EXPOSE 9000/tcp
# Thu, 03 May 2018 22:25:20 GMT
VOLUME [/var/lib/sentry/files]
# Thu, 03 May 2018 22:25:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 May 2018 22:25:22 GMT
CMD ["run" "web"]
# Thu, 03 May 2018 22:47:02 GMT
WORKDIR /usr/src/sentry
# Thu, 03 May 2018 22:47:03 GMT
ENV PYTHONPATH=/usr/src/sentry
# Thu, 03 May 2018 22:47:07 GMT
ONBUILD COPY . /usr/src/sentry
# Thu, 03 May 2018 22:47:07 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Thu, 03 May 2018 22:47:08 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Thu, 03 May 2018 22:47:16 GMT
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
	-	`sha256:20573e1eb0c26d46f5cbc78c984730deb612195bddba6ab4c612f0ed44a0b2c7`  
		Last Modified: Thu, 03 May 2018 23:09:02 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2c20a7cd033bb11baf51f987cca5337c5a315ad1eeea293b992b39b8a9ffff`  
		Last Modified: Thu, 03 May 2018 23:09:21 GMT  
		Size: 53.7 MB (53674176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e36de020b4b237fe430da21fd61f8ed7cddee907c7a029724918f00924b4740`  
		Last Modified: Thu, 03 May 2018 23:08:59 GMT  
		Size: 844.9 KB (844874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2260abb46adff0026888ca6ffa72f1976a52da45751bb79472980392977ef01a`  
		Last Modified: Thu, 03 May 2018 23:08:58 GMT  
		Size: 352.2 KB (352184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85890978f79215652f22508b182ba8c0173b101bc46e084fd6a53ab2a38bb48`  
		Last Modified: Thu, 03 May 2018 23:08:59 GMT  
		Size: 2.8 MB (2767091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e695fa52ef68b6979de40cf09fbe23e28820f919924380575f2e3c742ef214f3`  
		Last Modified: Thu, 03 May 2018 23:25:17 GMT  
		Size: 63.4 MB (63437935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a165bc9f818a72df3a3f685fbab781ccb591589849c70e0195fde166c9dcdf92`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5faaae5d404b96e08cb3a396c5ec25ed7972649f43d00d8285c5f80f60c40fd`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f7073e55eefacc1c3aa81d6dd95d8cc19d37c619f0df68e96fb3f09bc90b81`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb9d378cc3069a6c44729735004dd17ed578626fbb28aa5d3fdfb1e74864267`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911fd4564be86ff7233b8e3dca1484e286235c073f17166789f04bc5b8b2c790`  
		Last Modified: Thu, 03 May 2018 23:26:57 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:057496a5eefad3d138d0828bcd8c8d5bb110dbc37e6a612043f7ec52240b5f1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:691efd7993be5920aa7312c39ba3807c433c98a03bb498651eef88688c25f6ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170946886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ebfa5d7c94d7532929143a524eb1bf1fbe98555e31f403060fb452e23d9a867`
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
# Thu, 03 May 2018 21:39:11 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Thu, 03 May 2018 21:39:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 21:39:51 GMT
ENV PIP_NO_CACHE_DIR=off
# Thu, 03 May 2018 21:39:52 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Thu, 03 May 2018 21:39:53 GMT
ENV GOSU_VERSION=1.10
# Thu, 03 May 2018 21:40:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Thu, 03 May 2018 21:40:21 GMT
ENV TINI_VERSION=v0.14.0
# Thu, 03 May 2018 21:40:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Thu, 03 May 2018 21:41:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Thu, 03 May 2018 22:23:11 GMT
ENV SENTRY_VERSION=8.22.0
# Thu, 03 May 2018 22:25:10 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Thu, 03 May 2018 22:25:13 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Thu, 03 May 2018 22:25:15 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Thu, 03 May 2018 22:25:15 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Thu, 03 May 2018 22:25:16 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Thu, 03 May 2018 22:25:16 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Thu, 03 May 2018 22:25:17 GMT
EXPOSE 9000/tcp
# Thu, 03 May 2018 22:25:20 GMT
VOLUME [/var/lib/sentry/files]
# Thu, 03 May 2018 22:25:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 May 2018 22:25:22 GMT
CMD ["run" "web"]
# Thu, 03 May 2018 22:47:02 GMT
WORKDIR /usr/src/sentry
# Thu, 03 May 2018 22:47:03 GMT
ENV PYTHONPATH=/usr/src/sentry
# Thu, 03 May 2018 22:47:07 GMT
ONBUILD COPY . /usr/src/sentry
# Thu, 03 May 2018 22:47:07 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Thu, 03 May 2018 22:47:08 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Thu, 03 May 2018 22:47:16 GMT
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
	-	`sha256:20573e1eb0c26d46f5cbc78c984730deb612195bddba6ab4c612f0ed44a0b2c7`  
		Last Modified: Thu, 03 May 2018 23:09:02 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2c20a7cd033bb11baf51f987cca5337c5a315ad1eeea293b992b39b8a9ffff`  
		Last Modified: Thu, 03 May 2018 23:09:21 GMT  
		Size: 53.7 MB (53674176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e36de020b4b237fe430da21fd61f8ed7cddee907c7a029724918f00924b4740`  
		Last Modified: Thu, 03 May 2018 23:08:59 GMT  
		Size: 844.9 KB (844874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2260abb46adff0026888ca6ffa72f1976a52da45751bb79472980392977ef01a`  
		Last Modified: Thu, 03 May 2018 23:08:58 GMT  
		Size: 352.2 KB (352184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85890978f79215652f22508b182ba8c0173b101bc46e084fd6a53ab2a38bb48`  
		Last Modified: Thu, 03 May 2018 23:08:59 GMT  
		Size: 2.8 MB (2767091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e695fa52ef68b6979de40cf09fbe23e28820f919924380575f2e3c742ef214f3`  
		Last Modified: Thu, 03 May 2018 23:25:17 GMT  
		Size: 63.4 MB (63437935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a165bc9f818a72df3a3f685fbab781ccb591589849c70e0195fde166c9dcdf92`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5faaae5d404b96e08cb3a396c5ec25ed7972649f43d00d8285c5f80f60c40fd`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f7073e55eefacc1c3aa81d6dd95d8cc19d37c619f0df68e96fb3f09bc90b81`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb9d378cc3069a6c44729735004dd17ed578626fbb28aa5d3fdfb1e74864267`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911fd4564be86ff7233b8e3dca1484e286235c073f17166789f04bc5b8b2c790`  
		Last Modified: Thu, 03 May 2018 23:26:57 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9`

```console
$ docker pull sentry@sha256:07d901169c1364ff2fd359a19195612cbe7bdaa3377091c79b9ba1b9e6af6f99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9` - linux; amd64

```console
$ docker pull sentry@sha256:d1c554c80d5baf86aca81c30f9153a61bb563c64b1b1ee3969f08462e62ee72b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190143940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9244d0d8e82309f1a292118f5d99093e66ec90c46fad8e8ed46394071a79e0e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 02:55:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:55:43 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:40:55 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:41:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 03:41:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:41:38 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 03:46:03 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 03:46:03 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 03:46:55 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 03:46:55 GMT
CMD ["python2"]
# Sat, 16 Jun 2018 06:26:58 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 16 Jun 2018 06:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 16 Jun 2018 06:27:56 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 16 Jun 2018 06:27:56 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 16 Jun 2018 06:27:56 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 06:28:42 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 16 Jun 2018 06:29:28 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 16 Jun 2018 06:30:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 16 Jun 2018 06:30:23 GMT
ENV SENTRY_VERSION=9.0.0rc1
# Sat, 16 Jun 2018 06:33:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 16 Jun 2018 06:33:44 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 16 Jun 2018 06:33:44 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 16 Jun 2018 06:33:44 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 16 Jun 2018 06:33:45 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 16 Jun 2018 06:33:45 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 16 Jun 2018 06:33:45 GMT
EXPOSE 9000/tcp
# Sat, 16 Jun 2018 06:33:45 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 16 Jun 2018 06:33:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:33:46 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74269f6be39fd2235ae1b20c1d1442492448209a67fc5232443186055da45ff5`  
		Last Modified: Wed, 06 Jun 2018 04:06:53 GMT  
		Size: 2.7 MB (2722842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a94112eeabefe80232f6f6f705f99cf9ae17f91553d1e000f63332b6254254`  
		Last Modified: Wed, 06 Jun 2018 04:06:58 GMT  
		Size: 15.2 MB (15203271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5111371f79e37e416dd28004591fea9885999a83a98fd917744f314d0d4527`  
		Last Modified: Wed, 06 Jun 2018 04:06:53 GMT  
		Size: 2.1 MB (2089152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4506eab424a2ab0abd1a3ba7c8b85b408fd1e17c515846775f1989e0d45b46f`  
		Last Modified: Sat, 16 Jun 2018 06:36:40 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260262182a31954ef53f2a8680c93caa71b0e7b4b0a939c9fed6f8833a8c4060`  
		Last Modified: Sat, 16 Jun 2018 06:36:59 GMT  
		Size: 55.3 MB (55318198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1a1515202808100e9a344cfdd9b0fb2f1a51f3887a13f3514337eb74a4f118`  
		Last Modified: Sat, 16 Jun 2018 06:36:39 GMT  
		Size: 845.7 KB (845669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18398c1a89ce42a61ef4a6dd687302e98f657f6f334b6ed0aad15dc7fd59766`  
		Last Modified: Sat, 16 Jun 2018 06:36:37 GMT  
		Size: 353.9 KB (353927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256caf4631b8cc29e346a2b702c8768d4845859d32121bd1cda3a16a692950fc`  
		Last Modified: Sat, 16 Jun 2018 06:36:38 GMT  
		Size: 2.8 MB (2772627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8bdf3e27f1ac4f2611f702c1f01ad95ad0bc3852462f2ac6cfdb27976f1366`  
		Last Modified: Sat, 16 Jun 2018 06:37:08 GMT  
		Size: 80.7 MB (80701470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb326c40c96bf07ad4bcae0158ab521cbbe12d7cbf1bea9f2d819e31f5d085dc`  
		Last Modified: Sat, 16 Jun 2018 06:36:35 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1b57ec0987061e5d81f15cc7e87d8a6645646c7473cf23946f335ae5800658`  
		Last Modified: Sat, 16 Jun 2018 06:36:35 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a70bf8dc4218deb0cb0408dae9990552ef6fc79f529f14f5530308987f8dc`  
		Last Modified: Sat, 16 Jun 2018 06:36:35 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd3a88077de77aa9d09622fe2d244acc28e9cc4d5ee9472ba341800a52f844`  
		Last Modified: Sat, 16 Jun 2018 06:36:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.0`

```console
$ docker pull sentry@sha256:07d901169c1364ff2fd359a19195612cbe7bdaa3377091c79b9ba1b9e6af6f99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.0` - linux; amd64

```console
$ docker pull sentry@sha256:d1c554c80d5baf86aca81c30f9153a61bb563c64b1b1ee3969f08462e62ee72b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190143940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9244d0d8e82309f1a292118f5d99093e66ec90c46fad8e8ed46394071a79e0e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 02:55:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:55:43 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:40:55 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:41:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 03:41:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:41:38 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 03:46:03 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 03:46:03 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 03:46:55 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 03:46:55 GMT
CMD ["python2"]
# Sat, 16 Jun 2018 06:26:58 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 16 Jun 2018 06:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 16 Jun 2018 06:27:56 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 16 Jun 2018 06:27:56 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 16 Jun 2018 06:27:56 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 06:28:42 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 16 Jun 2018 06:29:28 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 16 Jun 2018 06:30:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 16 Jun 2018 06:30:23 GMT
ENV SENTRY_VERSION=9.0.0rc1
# Sat, 16 Jun 2018 06:33:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 16 Jun 2018 06:33:44 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 16 Jun 2018 06:33:44 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 16 Jun 2018 06:33:44 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 16 Jun 2018 06:33:45 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 16 Jun 2018 06:33:45 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 16 Jun 2018 06:33:45 GMT
EXPOSE 9000/tcp
# Sat, 16 Jun 2018 06:33:45 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 16 Jun 2018 06:33:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:33:46 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74269f6be39fd2235ae1b20c1d1442492448209a67fc5232443186055da45ff5`  
		Last Modified: Wed, 06 Jun 2018 04:06:53 GMT  
		Size: 2.7 MB (2722842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a94112eeabefe80232f6f6f705f99cf9ae17f91553d1e000f63332b6254254`  
		Last Modified: Wed, 06 Jun 2018 04:06:58 GMT  
		Size: 15.2 MB (15203271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5111371f79e37e416dd28004591fea9885999a83a98fd917744f314d0d4527`  
		Last Modified: Wed, 06 Jun 2018 04:06:53 GMT  
		Size: 2.1 MB (2089152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4506eab424a2ab0abd1a3ba7c8b85b408fd1e17c515846775f1989e0d45b46f`  
		Last Modified: Sat, 16 Jun 2018 06:36:40 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260262182a31954ef53f2a8680c93caa71b0e7b4b0a939c9fed6f8833a8c4060`  
		Last Modified: Sat, 16 Jun 2018 06:36:59 GMT  
		Size: 55.3 MB (55318198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1a1515202808100e9a344cfdd9b0fb2f1a51f3887a13f3514337eb74a4f118`  
		Last Modified: Sat, 16 Jun 2018 06:36:39 GMT  
		Size: 845.7 KB (845669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18398c1a89ce42a61ef4a6dd687302e98f657f6f334b6ed0aad15dc7fd59766`  
		Last Modified: Sat, 16 Jun 2018 06:36:37 GMT  
		Size: 353.9 KB (353927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256caf4631b8cc29e346a2b702c8768d4845859d32121bd1cda3a16a692950fc`  
		Last Modified: Sat, 16 Jun 2018 06:36:38 GMT  
		Size: 2.8 MB (2772627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8bdf3e27f1ac4f2611f702c1f01ad95ad0bc3852462f2ac6cfdb27976f1366`  
		Last Modified: Sat, 16 Jun 2018 06:37:08 GMT  
		Size: 80.7 MB (80701470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb326c40c96bf07ad4bcae0158ab521cbbe12d7cbf1bea9f2d819e31f5d085dc`  
		Last Modified: Sat, 16 Jun 2018 06:36:35 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1b57ec0987061e5d81f15cc7e87d8a6645646c7473cf23946f335ae5800658`  
		Last Modified: Sat, 16 Jun 2018 06:36:35 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a70bf8dc4218deb0cb0408dae9990552ef6fc79f529f14f5530308987f8dc`  
		Last Modified: Sat, 16 Jun 2018 06:36:35 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd3a88077de77aa9d09622fe2d244acc28e9cc4d5ee9472ba341800a52f844`  
		Last Modified: Sat, 16 Jun 2018 06:36:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.0.0rc1`

```console
$ docker pull sentry@sha256:07d901169c1364ff2fd359a19195612cbe7bdaa3377091c79b9ba1b9e6af6f99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.0.0rc1` - linux; amd64

```console
$ docker pull sentry@sha256:d1c554c80d5baf86aca81c30f9153a61bb563c64b1b1ee3969f08462e62ee72b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190143940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9244d0d8e82309f1a292118f5d99093e66ec90c46fad8e8ed46394071a79e0e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 02:55:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:55:43 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:40:55 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:41:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 03:41:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:41:38 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 03:46:03 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 03:46:03 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 03:46:55 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 03:46:55 GMT
CMD ["python2"]
# Sat, 16 Jun 2018 06:26:58 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 16 Jun 2018 06:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 16 Jun 2018 06:27:56 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 16 Jun 2018 06:27:56 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 16 Jun 2018 06:27:56 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 06:28:42 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 16 Jun 2018 06:29:28 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 16 Jun 2018 06:30:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 16 Jun 2018 06:30:23 GMT
ENV SENTRY_VERSION=9.0.0rc1
# Sat, 16 Jun 2018 06:33:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 16 Jun 2018 06:33:44 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 16 Jun 2018 06:33:44 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 16 Jun 2018 06:33:44 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 16 Jun 2018 06:33:45 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 16 Jun 2018 06:33:45 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 16 Jun 2018 06:33:45 GMT
EXPOSE 9000/tcp
# Sat, 16 Jun 2018 06:33:45 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 16 Jun 2018 06:33:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:33:46 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74269f6be39fd2235ae1b20c1d1442492448209a67fc5232443186055da45ff5`  
		Last Modified: Wed, 06 Jun 2018 04:06:53 GMT  
		Size: 2.7 MB (2722842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a94112eeabefe80232f6f6f705f99cf9ae17f91553d1e000f63332b6254254`  
		Last Modified: Wed, 06 Jun 2018 04:06:58 GMT  
		Size: 15.2 MB (15203271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5111371f79e37e416dd28004591fea9885999a83a98fd917744f314d0d4527`  
		Last Modified: Wed, 06 Jun 2018 04:06:53 GMT  
		Size: 2.1 MB (2089152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4506eab424a2ab0abd1a3ba7c8b85b408fd1e17c515846775f1989e0d45b46f`  
		Last Modified: Sat, 16 Jun 2018 06:36:40 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260262182a31954ef53f2a8680c93caa71b0e7b4b0a939c9fed6f8833a8c4060`  
		Last Modified: Sat, 16 Jun 2018 06:36:59 GMT  
		Size: 55.3 MB (55318198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1a1515202808100e9a344cfdd9b0fb2f1a51f3887a13f3514337eb74a4f118`  
		Last Modified: Sat, 16 Jun 2018 06:36:39 GMT  
		Size: 845.7 KB (845669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18398c1a89ce42a61ef4a6dd687302e98f657f6f334b6ed0aad15dc7fd59766`  
		Last Modified: Sat, 16 Jun 2018 06:36:37 GMT  
		Size: 353.9 KB (353927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256caf4631b8cc29e346a2b702c8768d4845859d32121bd1cda3a16a692950fc`  
		Last Modified: Sat, 16 Jun 2018 06:36:38 GMT  
		Size: 2.8 MB (2772627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8bdf3e27f1ac4f2611f702c1f01ad95ad0bc3852462f2ac6cfdb27976f1366`  
		Last Modified: Sat, 16 Jun 2018 06:37:08 GMT  
		Size: 80.7 MB (80701470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb326c40c96bf07ad4bcae0158ab521cbbe12d7cbf1bea9f2d819e31f5d085dc`  
		Last Modified: Sat, 16 Jun 2018 06:36:35 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1b57ec0987061e5d81f15cc7e87d8a6645646c7473cf23946f335ae5800658`  
		Last Modified: Sat, 16 Jun 2018 06:36:35 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a70bf8dc4218deb0cb0408dae9990552ef6fc79f529f14f5530308987f8dc`  
		Last Modified: Sat, 16 Jun 2018 06:36:35 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd3a88077de77aa9d09622fe2d244acc28e9cc4d5ee9472ba341800a52f844`  
		Last Modified: Sat, 16 Jun 2018 06:36:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.0.0rc1-onbuild`

```console
$ docker pull sentry@sha256:bd867bb155451f8a1d4e2bdcdce1e867c13034257ed0c6451708119a711453d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.0.0rc1-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:b36c60f85de0421946c5b894a66fa159723de71ded129f88fc6438ea4f88729f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190144077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3dbdc985a22446a463c2b660d12dcadf7a4c7c35cea69145f01e920233c07cf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 02:55:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:55:43 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:40:55 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:41:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 03:41:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:41:38 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 03:46:03 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 03:46:03 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 03:46:55 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 03:46:55 GMT
CMD ["python2"]
# Sat, 16 Jun 2018 06:26:58 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 16 Jun 2018 06:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 16 Jun 2018 06:27:56 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 16 Jun 2018 06:27:56 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 16 Jun 2018 06:27:56 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 06:28:42 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 16 Jun 2018 06:29:28 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 16 Jun 2018 06:30:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 16 Jun 2018 06:30:23 GMT
ENV SENTRY_VERSION=9.0.0rc1
# Sat, 16 Jun 2018 06:33:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 16 Jun 2018 06:33:44 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 16 Jun 2018 06:33:44 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 16 Jun 2018 06:33:44 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 16 Jun 2018 06:33:45 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 16 Jun 2018 06:33:45 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 16 Jun 2018 06:33:45 GMT
EXPOSE 9000/tcp
# Sat, 16 Jun 2018 06:33:45 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 16 Jun 2018 06:33:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:33:46 GMT
CMD ["run" "web"]
# Sat, 16 Jun 2018 06:33:57 GMT
WORKDIR /usr/src/sentry
# Sat, 16 Jun 2018 06:33:57 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 16 Jun 2018 06:33:57 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 16 Jun 2018 06:33:57 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 16 Jun 2018 06:33:57 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 16 Jun 2018 06:33:57 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74269f6be39fd2235ae1b20c1d1442492448209a67fc5232443186055da45ff5`  
		Last Modified: Wed, 06 Jun 2018 04:06:53 GMT  
		Size: 2.7 MB (2722842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a94112eeabefe80232f6f6f705f99cf9ae17f91553d1e000f63332b6254254`  
		Last Modified: Wed, 06 Jun 2018 04:06:58 GMT  
		Size: 15.2 MB (15203271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5111371f79e37e416dd28004591fea9885999a83a98fd917744f314d0d4527`  
		Last Modified: Wed, 06 Jun 2018 04:06:53 GMT  
		Size: 2.1 MB (2089152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4506eab424a2ab0abd1a3ba7c8b85b408fd1e17c515846775f1989e0d45b46f`  
		Last Modified: Sat, 16 Jun 2018 06:36:40 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260262182a31954ef53f2a8680c93caa71b0e7b4b0a939c9fed6f8833a8c4060`  
		Last Modified: Sat, 16 Jun 2018 06:36:59 GMT  
		Size: 55.3 MB (55318198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1a1515202808100e9a344cfdd9b0fb2f1a51f3887a13f3514337eb74a4f118`  
		Last Modified: Sat, 16 Jun 2018 06:36:39 GMT  
		Size: 845.7 KB (845669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18398c1a89ce42a61ef4a6dd687302e98f657f6f334b6ed0aad15dc7fd59766`  
		Last Modified: Sat, 16 Jun 2018 06:36:37 GMT  
		Size: 353.9 KB (353927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256caf4631b8cc29e346a2b702c8768d4845859d32121bd1cda3a16a692950fc`  
		Last Modified: Sat, 16 Jun 2018 06:36:38 GMT  
		Size: 2.8 MB (2772627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8bdf3e27f1ac4f2611f702c1f01ad95ad0bc3852462f2ac6cfdb27976f1366`  
		Last Modified: Sat, 16 Jun 2018 06:37:08 GMT  
		Size: 80.7 MB (80701470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb326c40c96bf07ad4bcae0158ab521cbbe12d7cbf1bea9f2d819e31f5d085dc`  
		Last Modified: Sat, 16 Jun 2018 06:36:35 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1b57ec0987061e5d81f15cc7e87d8a6645646c7473cf23946f335ae5800658`  
		Last Modified: Sat, 16 Jun 2018 06:36:35 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a70bf8dc4218deb0cb0408dae9990552ef6fc79f529f14f5530308987f8dc`  
		Last Modified: Sat, 16 Jun 2018 06:36:35 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd3a88077de77aa9d09622fe2d244acc28e9cc4d5ee9472ba341800a52f844`  
		Last Modified: Sat, 16 Jun 2018 06:36:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5fb99c3bb757f71c3fc744cd792b2db5561802bc3570469cc0c655ad1f1e6a`  
		Last Modified: Sat, 16 Jun 2018 06:37:48 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9.0-onbuild`

```console
$ docker pull sentry@sha256:bd867bb155451f8a1d4e2bdcdce1e867c13034257ed0c6451708119a711453d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9.0-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:b36c60f85de0421946c5b894a66fa159723de71ded129f88fc6438ea4f88729f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190144077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3dbdc985a22446a463c2b660d12dcadf7a4c7c35cea69145f01e920233c07cf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 02:55:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:55:43 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:40:55 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:41:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 03:41:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:41:38 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 03:46:03 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 03:46:03 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 03:46:55 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 03:46:55 GMT
CMD ["python2"]
# Sat, 16 Jun 2018 06:26:58 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 16 Jun 2018 06:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 16 Jun 2018 06:27:56 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 16 Jun 2018 06:27:56 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 16 Jun 2018 06:27:56 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 06:28:42 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 16 Jun 2018 06:29:28 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 16 Jun 2018 06:30:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 16 Jun 2018 06:30:23 GMT
ENV SENTRY_VERSION=9.0.0rc1
# Sat, 16 Jun 2018 06:33:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 16 Jun 2018 06:33:44 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 16 Jun 2018 06:33:44 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 16 Jun 2018 06:33:44 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 16 Jun 2018 06:33:45 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 16 Jun 2018 06:33:45 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 16 Jun 2018 06:33:45 GMT
EXPOSE 9000/tcp
# Sat, 16 Jun 2018 06:33:45 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 16 Jun 2018 06:33:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:33:46 GMT
CMD ["run" "web"]
# Sat, 16 Jun 2018 06:33:57 GMT
WORKDIR /usr/src/sentry
# Sat, 16 Jun 2018 06:33:57 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 16 Jun 2018 06:33:57 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 16 Jun 2018 06:33:57 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 16 Jun 2018 06:33:57 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 16 Jun 2018 06:33:57 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74269f6be39fd2235ae1b20c1d1442492448209a67fc5232443186055da45ff5`  
		Last Modified: Wed, 06 Jun 2018 04:06:53 GMT  
		Size: 2.7 MB (2722842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a94112eeabefe80232f6f6f705f99cf9ae17f91553d1e000f63332b6254254`  
		Last Modified: Wed, 06 Jun 2018 04:06:58 GMT  
		Size: 15.2 MB (15203271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5111371f79e37e416dd28004591fea9885999a83a98fd917744f314d0d4527`  
		Last Modified: Wed, 06 Jun 2018 04:06:53 GMT  
		Size: 2.1 MB (2089152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4506eab424a2ab0abd1a3ba7c8b85b408fd1e17c515846775f1989e0d45b46f`  
		Last Modified: Sat, 16 Jun 2018 06:36:40 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260262182a31954ef53f2a8680c93caa71b0e7b4b0a939c9fed6f8833a8c4060`  
		Last Modified: Sat, 16 Jun 2018 06:36:59 GMT  
		Size: 55.3 MB (55318198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1a1515202808100e9a344cfdd9b0fb2f1a51f3887a13f3514337eb74a4f118`  
		Last Modified: Sat, 16 Jun 2018 06:36:39 GMT  
		Size: 845.7 KB (845669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18398c1a89ce42a61ef4a6dd687302e98f657f6f334b6ed0aad15dc7fd59766`  
		Last Modified: Sat, 16 Jun 2018 06:36:37 GMT  
		Size: 353.9 KB (353927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256caf4631b8cc29e346a2b702c8768d4845859d32121bd1cda3a16a692950fc`  
		Last Modified: Sat, 16 Jun 2018 06:36:38 GMT  
		Size: 2.8 MB (2772627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8bdf3e27f1ac4f2611f702c1f01ad95ad0bc3852462f2ac6cfdb27976f1366`  
		Last Modified: Sat, 16 Jun 2018 06:37:08 GMT  
		Size: 80.7 MB (80701470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb326c40c96bf07ad4bcae0158ab521cbbe12d7cbf1bea9f2d819e31f5d085dc`  
		Last Modified: Sat, 16 Jun 2018 06:36:35 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1b57ec0987061e5d81f15cc7e87d8a6645646c7473cf23946f335ae5800658`  
		Last Modified: Sat, 16 Jun 2018 06:36:35 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a70bf8dc4218deb0cb0408dae9990552ef6fc79f529f14f5530308987f8dc`  
		Last Modified: Sat, 16 Jun 2018 06:36:35 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd3a88077de77aa9d09622fe2d244acc28e9cc4d5ee9472ba341800a52f844`  
		Last Modified: Sat, 16 Jun 2018 06:36:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5fb99c3bb757f71c3fc744cd792b2db5561802bc3570469cc0c655ad1f1e6a`  
		Last Modified: Sat, 16 Jun 2018 06:37:48 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:9-onbuild`

```console
$ docker pull sentry@sha256:bd867bb155451f8a1d4e2bdcdce1e867c13034257ed0c6451708119a711453d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:b36c60f85de0421946c5b894a66fa159723de71ded129f88fc6438ea4f88729f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190144077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3dbdc985a22446a463c2b660d12dcadf7a4c7c35cea69145f01e920233c07cf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 02:55:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:55:43 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:40:55 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:41:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 03:41:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:41:38 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 03:46:03 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 03:46:03 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 03:46:55 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 03:46:55 GMT
CMD ["python2"]
# Sat, 16 Jun 2018 06:26:58 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 16 Jun 2018 06:27:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 16 Jun 2018 06:27:56 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 16 Jun 2018 06:27:56 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 16 Jun 2018 06:27:56 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 06:28:42 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 16 Jun 2018 06:29:28 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 16 Jun 2018 06:30:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 16 Jun 2018 06:30:23 GMT
ENV SENTRY_VERSION=9.0.0rc1
# Sat, 16 Jun 2018 06:33:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 16 Jun 2018 06:33:44 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 16 Jun 2018 06:33:44 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 16 Jun 2018 06:33:44 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 16 Jun 2018 06:33:45 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 16 Jun 2018 06:33:45 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 16 Jun 2018 06:33:45 GMT
EXPOSE 9000/tcp
# Sat, 16 Jun 2018 06:33:45 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 16 Jun 2018 06:33:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 16 Jun 2018 06:33:46 GMT
CMD ["run" "web"]
# Sat, 16 Jun 2018 06:33:57 GMT
WORKDIR /usr/src/sentry
# Sat, 16 Jun 2018 06:33:57 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 16 Jun 2018 06:33:57 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 16 Jun 2018 06:33:57 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 16 Jun 2018 06:33:57 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 16 Jun 2018 06:33:57 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74269f6be39fd2235ae1b20c1d1442492448209a67fc5232443186055da45ff5`  
		Last Modified: Wed, 06 Jun 2018 04:06:53 GMT  
		Size: 2.7 MB (2722842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a94112eeabefe80232f6f6f705f99cf9ae17f91553d1e000f63332b6254254`  
		Last Modified: Wed, 06 Jun 2018 04:06:58 GMT  
		Size: 15.2 MB (15203271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5111371f79e37e416dd28004591fea9885999a83a98fd917744f314d0d4527`  
		Last Modified: Wed, 06 Jun 2018 04:06:53 GMT  
		Size: 2.1 MB (2089152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4506eab424a2ab0abd1a3ba7c8b85b408fd1e17c515846775f1989e0d45b46f`  
		Last Modified: Sat, 16 Jun 2018 06:36:40 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260262182a31954ef53f2a8680c93caa71b0e7b4b0a939c9fed6f8833a8c4060`  
		Last Modified: Sat, 16 Jun 2018 06:36:59 GMT  
		Size: 55.3 MB (55318198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1a1515202808100e9a344cfdd9b0fb2f1a51f3887a13f3514337eb74a4f118`  
		Last Modified: Sat, 16 Jun 2018 06:36:39 GMT  
		Size: 845.7 KB (845669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18398c1a89ce42a61ef4a6dd687302e98f657f6f334b6ed0aad15dc7fd59766`  
		Last Modified: Sat, 16 Jun 2018 06:36:37 GMT  
		Size: 353.9 KB (353927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256caf4631b8cc29e346a2b702c8768d4845859d32121bd1cda3a16a692950fc`  
		Last Modified: Sat, 16 Jun 2018 06:36:38 GMT  
		Size: 2.8 MB (2772627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8bdf3e27f1ac4f2611f702c1f01ad95ad0bc3852462f2ac6cfdb27976f1366`  
		Last Modified: Sat, 16 Jun 2018 06:37:08 GMT  
		Size: 80.7 MB (80701470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb326c40c96bf07ad4bcae0158ab521cbbe12d7cbf1bea9f2d819e31f5d085dc`  
		Last Modified: Sat, 16 Jun 2018 06:36:35 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1b57ec0987061e5d81f15cc7e87d8a6645646c7473cf23946f335ae5800658`  
		Last Modified: Sat, 16 Jun 2018 06:36:35 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a70bf8dc4218deb0cb0408dae9990552ef6fc79f529f14f5530308987f8dc`  
		Last Modified: Sat, 16 Jun 2018 06:36:35 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cd3a88077de77aa9d09622fe2d244acc28e9cc4d5ee9472ba341800a52f844`  
		Last Modified: Sat, 16 Jun 2018 06:36:36 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5fb99c3bb757f71c3fc744cd792b2db5561802bc3570469cc0c655ad1f1e6a`  
		Last Modified: Sat, 16 Jun 2018 06:37:48 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:latest`

```console
$ docker pull sentry@sha256:bb57664b8bb75921beef7c2407ff9cac15c841f87cb20141a91020cf9c147db0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

```console
$ docker pull sentry@sha256:36694114e623bf2019dde3b527003d94c7691fc8fe98e2d6dda11ab7c923219a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170946749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:838c011a4c0b7da5cf93a453fcf9c2cca10c96df578ed6f4220e8c4c3bdf655f`
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
# Thu, 03 May 2018 21:39:11 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Thu, 03 May 2018 21:39:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 21:39:51 GMT
ENV PIP_NO_CACHE_DIR=off
# Thu, 03 May 2018 21:39:52 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Thu, 03 May 2018 21:39:53 GMT
ENV GOSU_VERSION=1.10
# Thu, 03 May 2018 21:40:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Thu, 03 May 2018 21:40:21 GMT
ENV TINI_VERSION=v0.14.0
# Thu, 03 May 2018 21:40:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Thu, 03 May 2018 21:41:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Thu, 03 May 2018 22:23:11 GMT
ENV SENTRY_VERSION=8.22.0
# Thu, 03 May 2018 22:25:10 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Thu, 03 May 2018 22:25:13 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Thu, 03 May 2018 22:25:15 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Thu, 03 May 2018 22:25:15 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Thu, 03 May 2018 22:25:16 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Thu, 03 May 2018 22:25:16 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Thu, 03 May 2018 22:25:17 GMT
EXPOSE 9000/tcp
# Thu, 03 May 2018 22:25:20 GMT
VOLUME [/var/lib/sentry/files]
# Thu, 03 May 2018 22:25:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 May 2018 22:25:22 GMT
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
	-	`sha256:20573e1eb0c26d46f5cbc78c984730deb612195bddba6ab4c612f0ed44a0b2c7`  
		Last Modified: Thu, 03 May 2018 23:09:02 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2c20a7cd033bb11baf51f987cca5337c5a315ad1eeea293b992b39b8a9ffff`  
		Last Modified: Thu, 03 May 2018 23:09:21 GMT  
		Size: 53.7 MB (53674176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e36de020b4b237fe430da21fd61f8ed7cddee907c7a029724918f00924b4740`  
		Last Modified: Thu, 03 May 2018 23:08:59 GMT  
		Size: 844.9 KB (844874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2260abb46adff0026888ca6ffa72f1976a52da45751bb79472980392977ef01a`  
		Last Modified: Thu, 03 May 2018 23:08:58 GMT  
		Size: 352.2 KB (352184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85890978f79215652f22508b182ba8c0173b101bc46e084fd6a53ab2a38bb48`  
		Last Modified: Thu, 03 May 2018 23:08:59 GMT  
		Size: 2.8 MB (2767091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e695fa52ef68b6979de40cf09fbe23e28820f919924380575f2e3c742ef214f3`  
		Last Modified: Thu, 03 May 2018 23:25:17 GMT  
		Size: 63.4 MB (63437935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a165bc9f818a72df3a3f685fbab781ccb591589849c70e0195fde166c9dcdf92`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5faaae5d404b96e08cb3a396c5ec25ed7972649f43d00d8285c5f80f60c40fd`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f7073e55eefacc1c3aa81d6dd95d8cc19d37c619f0df68e96fb3f09bc90b81`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb9d378cc3069a6c44729735004dd17ed578626fbb28aa5d3fdfb1e74864267`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:057496a5eefad3d138d0828bcd8c8d5bb110dbc37e6a612043f7ec52240b5f1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:691efd7993be5920aa7312c39ba3807c433c98a03bb498651eef88688c25f6ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170946886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ebfa5d7c94d7532929143a524eb1bf1fbe98555e31f403060fb452e23d9a867`
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
# Thu, 03 May 2018 21:39:11 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Thu, 03 May 2018 21:39:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 21:39:51 GMT
ENV PIP_NO_CACHE_DIR=off
# Thu, 03 May 2018 21:39:52 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Thu, 03 May 2018 21:39:53 GMT
ENV GOSU_VERSION=1.10
# Thu, 03 May 2018 21:40:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Thu, 03 May 2018 21:40:21 GMT
ENV TINI_VERSION=v0.14.0
# Thu, 03 May 2018 21:40:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Thu, 03 May 2018 21:41:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Thu, 03 May 2018 22:23:11 GMT
ENV SENTRY_VERSION=8.22.0
# Thu, 03 May 2018 22:25:10 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Thu, 03 May 2018 22:25:13 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Thu, 03 May 2018 22:25:15 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Thu, 03 May 2018 22:25:15 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Thu, 03 May 2018 22:25:16 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Thu, 03 May 2018 22:25:16 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Thu, 03 May 2018 22:25:17 GMT
EXPOSE 9000/tcp
# Thu, 03 May 2018 22:25:20 GMT
VOLUME [/var/lib/sentry/files]
# Thu, 03 May 2018 22:25:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 May 2018 22:25:22 GMT
CMD ["run" "web"]
# Thu, 03 May 2018 22:47:02 GMT
WORKDIR /usr/src/sentry
# Thu, 03 May 2018 22:47:03 GMT
ENV PYTHONPATH=/usr/src/sentry
# Thu, 03 May 2018 22:47:07 GMT
ONBUILD COPY . /usr/src/sentry
# Thu, 03 May 2018 22:47:07 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Thu, 03 May 2018 22:47:08 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Thu, 03 May 2018 22:47:16 GMT
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
	-	`sha256:20573e1eb0c26d46f5cbc78c984730deb612195bddba6ab4c612f0ed44a0b2c7`  
		Last Modified: Thu, 03 May 2018 23:09:02 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2c20a7cd033bb11baf51f987cca5337c5a315ad1eeea293b992b39b8a9ffff`  
		Last Modified: Thu, 03 May 2018 23:09:21 GMT  
		Size: 53.7 MB (53674176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e36de020b4b237fe430da21fd61f8ed7cddee907c7a029724918f00924b4740`  
		Last Modified: Thu, 03 May 2018 23:08:59 GMT  
		Size: 844.9 KB (844874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2260abb46adff0026888ca6ffa72f1976a52da45751bb79472980392977ef01a`  
		Last Modified: Thu, 03 May 2018 23:08:58 GMT  
		Size: 352.2 KB (352184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85890978f79215652f22508b182ba8c0173b101bc46e084fd6a53ab2a38bb48`  
		Last Modified: Thu, 03 May 2018 23:08:59 GMT  
		Size: 2.8 MB (2767091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e695fa52ef68b6979de40cf09fbe23e28820f919924380575f2e3c742ef214f3`  
		Last Modified: Thu, 03 May 2018 23:25:17 GMT  
		Size: 63.4 MB (63437935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a165bc9f818a72df3a3f685fbab781ccb591589849c70e0195fde166c9dcdf92`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5faaae5d404b96e08cb3a396c5ec25ed7972649f43d00d8285c5f80f60c40fd`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61f7073e55eefacc1c3aa81d6dd95d8cc19d37c619f0df68e96fb3f09bc90b81`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb9d378cc3069a6c44729735004dd17ed578626fbb28aa5d3fdfb1e74864267`  
		Last Modified: Thu, 03 May 2018 23:24:49 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911fd4564be86ff7233b8e3dca1484e286235c073f17166789f04bc5b8b2c790`  
		Last Modified: Thu, 03 May 2018 23:26:57 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
