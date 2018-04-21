<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sentry`

-	[`sentry:8`](#sentry8)
-	[`sentry:8.21`](#sentry821)
-	[`sentry:8.21.0`](#sentry8210)
-	[`sentry:8.21.0-onbuild`](#sentry8210-onbuild)
-	[`sentry:8.21-onbuild`](#sentry821-onbuild)
-	[`sentry:8.22`](#sentry822)
-	[`sentry:8.22.0`](#sentry8220)
-	[`sentry:8.22.0-onbuild`](#sentry8220-onbuild)
-	[`sentry:8.22-onbuild`](#sentry822-onbuild)
-	[`sentry:8-onbuild`](#sentry8-onbuild)
-	[`sentry:latest`](#sentrylatest)
-	[`sentry:onbuild`](#sentryonbuild)

## `sentry:8`

```console
$ docker pull sentry@sha256:7ea4dbc1eb1c26034e96240bbf46bd332d523cf0ea9e8400bd6e3bbeb6f2847f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

```console
$ docker pull sentry@sha256:b82fe2a4f35b93f1287c5bbeb17e94e3a9749b087f5c47d81e0e9712f9d0264d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173909703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5da17ae989e66c5f7c6257974548d81497cd07f5a10ff854b1cfcebe2d5eaf43`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:08:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 17:08:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 18:23:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:23:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 14 Mar 2018 18:23:49 GMT
ENV PYTHON_VERSION=2.7.14
# Wed, 14 Mar 2018 18:26:12 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 21 Apr 2018 03:05:30 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 21 Apr 2018 03:05:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 21 Apr 2018 03:05:57 GMT
CMD ["python2"]
# Sat, 21 Apr 2018 07:44:31 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 21 Apr 2018 07:45:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 21 Apr 2018 07:45:06 GMT
ENV GOSU_VERSION=1.10
# Sat, 21 Apr 2018 07:45:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:45:30 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 21 Apr 2018 07:45:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:46:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 21 Apr 2018 08:06:23 GMT
ENV SENTRY_VERSION=8.22.0
# Sat, 21 Apr 2018 08:07:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 21 Apr 2018 08:07:54 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 21 Apr 2018 08:07:55 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 21 Apr 2018 08:07:55 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 21 Apr 2018 08:07:56 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 21 Apr 2018 08:07:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 21 Apr 2018 08:07:57 GMT
EXPOSE 9000/tcp
# Sat, 21 Apr 2018 08:07:57 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 21 Apr 2018 08:07:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Apr 2018 08:07:58 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a7da9473ae0f89da613df9fe3f635dbf04d730d2dd16c46848389cf28743b8`  
		Last Modified: Wed, 14 Mar 2018 18:49:57 GMT  
		Size: 2.7 MB (2710618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d2e7f1272b5402b68364cffe150a0cc40879b088028cfdd6fe14435e40042`  
		Last Modified: Wed, 14 Mar 2018 18:50:01 GMT  
		Size: 14.9 MB (14935104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc013a89aadb961fe65cc75e0bbb74c3d46aee6c4a133ab121e0c166a6c4fb6`  
		Last Modified: Sat, 21 Apr 2018 04:06:46 GMT  
		Size: 2.1 MB (2089089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7661ea12abacb8d5cffb8ddf7ccf42408e94b99cdf7fb0c061f8e19392750913`  
		Last Modified: Sat, 21 Apr 2018 08:28:58 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a277489e1aa35d1065d63df46932aa2ffa96f6d2081a3dcfe58b8d9e3cb6b201`  
		Last Modified: Sat, 21 Apr 2018 08:29:11 GMT  
		Size: 56.6 MB (56645480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b454685f1c0a15838a593199de92296e7f2b6df737a0c83d179499af2ae83d`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 845.2 KB (845201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667b1f2f5ae97bd7fc5775bb0844806229d9360eb7917118f555433b422358db`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 352.5 KB (352527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d87d072a4a0fdc47f9cba919b116f93823dee59bfc1de9b117f99fb9fdec25`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 2.8 MB (2767714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50f97eb43bda2f2eeb86f887c6a5c1a4f2962690a72df2d21400c67d4e34fb0`  
		Last Modified: Sat, 21 Apr 2018 08:31:18 GMT  
		Size: 63.4 MB (63432079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8348db4cdb9abcf555d11f61a8cc5310273943d48b4a5a572bd83ab1a3076f1`  
		Last Modified: Sat, 21 Apr 2018 08:30:49 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512898d4f441ea1c3bb26571c4887ef3f8307fddb36e93ca3cdaaab6596bc359`  
		Last Modified: Sat, 21 Apr 2018 08:30:49 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3781f38c345b3ea0bb10f1531f0bac67ea25b6ddfa05f203023a6a1170a2aee9`  
		Last Modified: Sat, 21 Apr 2018 08:30:50 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2330e1989bb2b83001c5c7e4dfd6c9a97d56064483fd012b024295bd16d6776b`  
		Last Modified: Sat, 21 Apr 2018 08:30:50 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.21`

```console
$ docker pull sentry@sha256:4f8a3e584e5d294280fc57f6e7c5e8fc0eac65f3df40441fc8372742cec33faa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.21` - linux; amd64

```console
$ docker pull sentry@sha256:624c634c7291f6ca384c71cd72da5b94aa7083abcd941b866e05bd88865dd18b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166235342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d63c1622bf30bc65e8d283182d8ca5415de620b30b607f891956750b1093e0d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:08:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 17:08:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 18:23:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:23:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 14 Mar 2018 18:23:49 GMT
ENV PYTHON_VERSION=2.7.14
# Wed, 14 Mar 2018 18:26:12 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 21 Apr 2018 03:05:30 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 21 Apr 2018 03:05:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 21 Apr 2018 03:05:57 GMT
CMD ["python2"]
# Sat, 21 Apr 2018 07:44:31 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 21 Apr 2018 07:45:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 21 Apr 2018 07:45:06 GMT
ENV GOSU_VERSION=1.10
# Sat, 21 Apr 2018 07:45:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:45:30 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 21 Apr 2018 07:45:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:46:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 21 Apr 2018 07:46:21 GMT
ENV SENTRY_VERSION=8.21.0
# Sat, 21 Apr 2018 07:47:49 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 21 Apr 2018 07:47:49 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 21 Apr 2018 07:47:50 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 21 Apr 2018 07:47:51 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 21 Apr 2018 07:47:51 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 21 Apr 2018 07:47:52 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 21 Apr 2018 07:47:52 GMT
EXPOSE 9000/tcp
# Sat, 21 Apr 2018 07:47:52 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 21 Apr 2018 07:47:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Apr 2018 07:47:53 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a7da9473ae0f89da613df9fe3f635dbf04d730d2dd16c46848389cf28743b8`  
		Last Modified: Wed, 14 Mar 2018 18:49:57 GMT  
		Size: 2.7 MB (2710618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d2e7f1272b5402b68364cffe150a0cc40879b088028cfdd6fe14435e40042`  
		Last Modified: Wed, 14 Mar 2018 18:50:01 GMT  
		Size: 14.9 MB (14935104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc013a89aadb961fe65cc75e0bbb74c3d46aee6c4a133ab121e0c166a6c4fb6`  
		Last Modified: Sat, 21 Apr 2018 04:06:46 GMT  
		Size: 2.1 MB (2089089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7661ea12abacb8d5cffb8ddf7ccf42408e94b99cdf7fb0c061f8e19392750913`  
		Last Modified: Sat, 21 Apr 2018 08:28:58 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a277489e1aa35d1065d63df46932aa2ffa96f6d2081a3dcfe58b8d9e3cb6b201`  
		Last Modified: Sat, 21 Apr 2018 08:29:11 GMT  
		Size: 56.6 MB (56645480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b454685f1c0a15838a593199de92296e7f2b6df737a0c83d179499af2ae83d`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 845.2 KB (845201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667b1f2f5ae97bd7fc5775bb0844806229d9360eb7917118f555433b422358db`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 352.5 KB (352527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d87d072a4a0fdc47f9cba919b116f93823dee59bfc1de9b117f99fb9fdec25`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 2.8 MB (2767714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4ecc2755475ea93cd1c8d5e66f90d57cffcbb29ecd450290ce428d423f860c`  
		Last Modified: Sat, 21 Apr 2018 08:29:18 GMT  
		Size: 55.8 MB (55757716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd763c20bcfee5e64cafd30303e686377ec190bad5fbdc0f867430a1af2111d6`  
		Last Modified: Sat, 21 Apr 2018 08:28:54 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4908f1efc70a25cd3ce3441d4d080b9245520dd7e659763b915c0b62a86ad7`  
		Last Modified: Sat, 21 Apr 2018 08:28:53 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b8f78d8b2b47ce9b22da635f579f57d4c46d5cab484dd50f90ec79fc0c863a`  
		Last Modified: Sat, 21 Apr 2018 08:28:53 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0008b1e2edd8df4ff8e53454e24a9d291a6bdd9b584ab3d5bca3f0eb7603d331`  
		Last Modified: Sat, 21 Apr 2018 08:28:54 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.21.0`

```console
$ docker pull sentry@sha256:4f8a3e584e5d294280fc57f6e7c5e8fc0eac65f3df40441fc8372742cec33faa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.21.0` - linux; amd64

```console
$ docker pull sentry@sha256:624c634c7291f6ca384c71cd72da5b94aa7083abcd941b866e05bd88865dd18b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166235342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d63c1622bf30bc65e8d283182d8ca5415de620b30b607f891956750b1093e0d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:08:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 17:08:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 18:23:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:23:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 14 Mar 2018 18:23:49 GMT
ENV PYTHON_VERSION=2.7.14
# Wed, 14 Mar 2018 18:26:12 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 21 Apr 2018 03:05:30 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 21 Apr 2018 03:05:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 21 Apr 2018 03:05:57 GMT
CMD ["python2"]
# Sat, 21 Apr 2018 07:44:31 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 21 Apr 2018 07:45:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 21 Apr 2018 07:45:06 GMT
ENV GOSU_VERSION=1.10
# Sat, 21 Apr 2018 07:45:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:45:30 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 21 Apr 2018 07:45:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:46:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 21 Apr 2018 07:46:21 GMT
ENV SENTRY_VERSION=8.21.0
# Sat, 21 Apr 2018 07:47:49 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 21 Apr 2018 07:47:49 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 21 Apr 2018 07:47:50 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 21 Apr 2018 07:47:51 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 21 Apr 2018 07:47:51 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 21 Apr 2018 07:47:52 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 21 Apr 2018 07:47:52 GMT
EXPOSE 9000/tcp
# Sat, 21 Apr 2018 07:47:52 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 21 Apr 2018 07:47:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Apr 2018 07:47:53 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a7da9473ae0f89da613df9fe3f635dbf04d730d2dd16c46848389cf28743b8`  
		Last Modified: Wed, 14 Mar 2018 18:49:57 GMT  
		Size: 2.7 MB (2710618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d2e7f1272b5402b68364cffe150a0cc40879b088028cfdd6fe14435e40042`  
		Last Modified: Wed, 14 Mar 2018 18:50:01 GMT  
		Size: 14.9 MB (14935104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc013a89aadb961fe65cc75e0bbb74c3d46aee6c4a133ab121e0c166a6c4fb6`  
		Last Modified: Sat, 21 Apr 2018 04:06:46 GMT  
		Size: 2.1 MB (2089089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7661ea12abacb8d5cffb8ddf7ccf42408e94b99cdf7fb0c061f8e19392750913`  
		Last Modified: Sat, 21 Apr 2018 08:28:58 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a277489e1aa35d1065d63df46932aa2ffa96f6d2081a3dcfe58b8d9e3cb6b201`  
		Last Modified: Sat, 21 Apr 2018 08:29:11 GMT  
		Size: 56.6 MB (56645480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b454685f1c0a15838a593199de92296e7f2b6df737a0c83d179499af2ae83d`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 845.2 KB (845201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667b1f2f5ae97bd7fc5775bb0844806229d9360eb7917118f555433b422358db`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 352.5 KB (352527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d87d072a4a0fdc47f9cba919b116f93823dee59bfc1de9b117f99fb9fdec25`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 2.8 MB (2767714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4ecc2755475ea93cd1c8d5e66f90d57cffcbb29ecd450290ce428d423f860c`  
		Last Modified: Sat, 21 Apr 2018 08:29:18 GMT  
		Size: 55.8 MB (55757716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd763c20bcfee5e64cafd30303e686377ec190bad5fbdc0f867430a1af2111d6`  
		Last Modified: Sat, 21 Apr 2018 08:28:54 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4908f1efc70a25cd3ce3441d4d080b9245520dd7e659763b915c0b62a86ad7`  
		Last Modified: Sat, 21 Apr 2018 08:28:53 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b8f78d8b2b47ce9b22da635f579f57d4c46d5cab484dd50f90ec79fc0c863a`  
		Last Modified: Sat, 21 Apr 2018 08:28:53 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0008b1e2edd8df4ff8e53454e24a9d291a6bdd9b584ab3d5bca3f0eb7603d331`  
		Last Modified: Sat, 21 Apr 2018 08:28:54 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.21.0-onbuild`

```console
$ docker pull sentry@sha256:e7735675c905a31c755eed2e0d57558b4037b9b6c1cc25c164baa914e712ba81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.21.0-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:350a3f73f4e340681a0c84e8188432f0352bccf5825e472d812560360c2ffc1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166235479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1126cec62e0060c238278e907f3c71ee5ba8fdf4f9f83ee6cd8446cb4c8bd88c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:08:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 17:08:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 18:23:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:23:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 14 Mar 2018 18:23:49 GMT
ENV PYTHON_VERSION=2.7.14
# Wed, 14 Mar 2018 18:26:12 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 21 Apr 2018 03:05:30 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 21 Apr 2018 03:05:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 21 Apr 2018 03:05:57 GMT
CMD ["python2"]
# Sat, 21 Apr 2018 07:44:31 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 21 Apr 2018 07:45:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 21 Apr 2018 07:45:06 GMT
ENV GOSU_VERSION=1.10
# Sat, 21 Apr 2018 07:45:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:45:30 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 21 Apr 2018 07:45:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:46:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 21 Apr 2018 07:46:21 GMT
ENV SENTRY_VERSION=8.21.0
# Sat, 21 Apr 2018 07:47:49 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 21 Apr 2018 07:47:49 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 21 Apr 2018 07:47:50 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 21 Apr 2018 07:47:51 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 21 Apr 2018 07:47:51 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 21 Apr 2018 07:47:52 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 21 Apr 2018 07:47:52 GMT
EXPOSE 9000/tcp
# Sat, 21 Apr 2018 07:47:52 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 21 Apr 2018 07:47:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Apr 2018 07:47:53 GMT
CMD ["run" "web"]
# Sat, 21 Apr 2018 08:05:56 GMT
WORKDIR /usr/src/sentry
# Sat, 21 Apr 2018 08:05:56 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 21 Apr 2018 08:05:56 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 21 Apr 2018 08:05:57 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 21 Apr 2018 08:05:57 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 21 Apr 2018 08:05:57 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a7da9473ae0f89da613df9fe3f635dbf04d730d2dd16c46848389cf28743b8`  
		Last Modified: Wed, 14 Mar 2018 18:49:57 GMT  
		Size: 2.7 MB (2710618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d2e7f1272b5402b68364cffe150a0cc40879b088028cfdd6fe14435e40042`  
		Last Modified: Wed, 14 Mar 2018 18:50:01 GMT  
		Size: 14.9 MB (14935104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc013a89aadb961fe65cc75e0bbb74c3d46aee6c4a133ab121e0c166a6c4fb6`  
		Last Modified: Sat, 21 Apr 2018 04:06:46 GMT  
		Size: 2.1 MB (2089089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7661ea12abacb8d5cffb8ddf7ccf42408e94b99cdf7fb0c061f8e19392750913`  
		Last Modified: Sat, 21 Apr 2018 08:28:58 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a277489e1aa35d1065d63df46932aa2ffa96f6d2081a3dcfe58b8d9e3cb6b201`  
		Last Modified: Sat, 21 Apr 2018 08:29:11 GMT  
		Size: 56.6 MB (56645480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b454685f1c0a15838a593199de92296e7f2b6df737a0c83d179499af2ae83d`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 845.2 KB (845201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667b1f2f5ae97bd7fc5775bb0844806229d9360eb7917118f555433b422358db`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 352.5 KB (352527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d87d072a4a0fdc47f9cba919b116f93823dee59bfc1de9b117f99fb9fdec25`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 2.8 MB (2767714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4ecc2755475ea93cd1c8d5e66f90d57cffcbb29ecd450290ce428d423f860c`  
		Last Modified: Sat, 21 Apr 2018 08:29:18 GMT  
		Size: 55.8 MB (55757716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd763c20bcfee5e64cafd30303e686377ec190bad5fbdc0f867430a1af2111d6`  
		Last Modified: Sat, 21 Apr 2018 08:28:54 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4908f1efc70a25cd3ce3441d4d080b9245520dd7e659763b915c0b62a86ad7`  
		Last Modified: Sat, 21 Apr 2018 08:28:53 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b8f78d8b2b47ce9b22da635f579f57d4c46d5cab484dd50f90ec79fc0c863a`  
		Last Modified: Sat, 21 Apr 2018 08:28:53 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0008b1e2edd8df4ff8e53454e24a9d291a6bdd9b584ab3d5bca3f0eb7603d331`  
		Last Modified: Sat, 21 Apr 2018 08:28:54 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fcbf3d99fedd6890a433d34a5a09bb461b56e8d455c4a529674d268c40e496`  
		Last Modified: Sat, 21 Apr 2018 08:30:04 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.21-onbuild`

```console
$ docker pull sentry@sha256:e7735675c905a31c755eed2e0d57558b4037b9b6c1cc25c164baa914e712ba81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.21-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:350a3f73f4e340681a0c84e8188432f0352bccf5825e472d812560360c2ffc1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166235479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1126cec62e0060c238278e907f3c71ee5ba8fdf4f9f83ee6cd8446cb4c8bd88c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:08:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 17:08:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 18:23:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:23:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 14 Mar 2018 18:23:49 GMT
ENV PYTHON_VERSION=2.7.14
# Wed, 14 Mar 2018 18:26:12 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 21 Apr 2018 03:05:30 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 21 Apr 2018 03:05:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 21 Apr 2018 03:05:57 GMT
CMD ["python2"]
# Sat, 21 Apr 2018 07:44:31 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 21 Apr 2018 07:45:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 21 Apr 2018 07:45:06 GMT
ENV GOSU_VERSION=1.10
# Sat, 21 Apr 2018 07:45:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:45:30 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 21 Apr 2018 07:45:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:46:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 21 Apr 2018 07:46:21 GMT
ENV SENTRY_VERSION=8.21.0
# Sat, 21 Apr 2018 07:47:49 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 21 Apr 2018 07:47:49 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 21 Apr 2018 07:47:50 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 21 Apr 2018 07:47:51 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 21 Apr 2018 07:47:51 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 21 Apr 2018 07:47:52 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 21 Apr 2018 07:47:52 GMT
EXPOSE 9000/tcp
# Sat, 21 Apr 2018 07:47:52 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 21 Apr 2018 07:47:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Apr 2018 07:47:53 GMT
CMD ["run" "web"]
# Sat, 21 Apr 2018 08:05:56 GMT
WORKDIR /usr/src/sentry
# Sat, 21 Apr 2018 08:05:56 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 21 Apr 2018 08:05:56 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 21 Apr 2018 08:05:57 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 21 Apr 2018 08:05:57 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 21 Apr 2018 08:05:57 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a7da9473ae0f89da613df9fe3f635dbf04d730d2dd16c46848389cf28743b8`  
		Last Modified: Wed, 14 Mar 2018 18:49:57 GMT  
		Size: 2.7 MB (2710618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d2e7f1272b5402b68364cffe150a0cc40879b088028cfdd6fe14435e40042`  
		Last Modified: Wed, 14 Mar 2018 18:50:01 GMT  
		Size: 14.9 MB (14935104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc013a89aadb961fe65cc75e0bbb74c3d46aee6c4a133ab121e0c166a6c4fb6`  
		Last Modified: Sat, 21 Apr 2018 04:06:46 GMT  
		Size: 2.1 MB (2089089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7661ea12abacb8d5cffb8ddf7ccf42408e94b99cdf7fb0c061f8e19392750913`  
		Last Modified: Sat, 21 Apr 2018 08:28:58 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a277489e1aa35d1065d63df46932aa2ffa96f6d2081a3dcfe58b8d9e3cb6b201`  
		Last Modified: Sat, 21 Apr 2018 08:29:11 GMT  
		Size: 56.6 MB (56645480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b454685f1c0a15838a593199de92296e7f2b6df737a0c83d179499af2ae83d`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 845.2 KB (845201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667b1f2f5ae97bd7fc5775bb0844806229d9360eb7917118f555433b422358db`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 352.5 KB (352527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d87d072a4a0fdc47f9cba919b116f93823dee59bfc1de9b117f99fb9fdec25`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 2.8 MB (2767714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4ecc2755475ea93cd1c8d5e66f90d57cffcbb29ecd450290ce428d423f860c`  
		Last Modified: Sat, 21 Apr 2018 08:29:18 GMT  
		Size: 55.8 MB (55757716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd763c20bcfee5e64cafd30303e686377ec190bad5fbdc0f867430a1af2111d6`  
		Last Modified: Sat, 21 Apr 2018 08:28:54 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4908f1efc70a25cd3ce3441d4d080b9245520dd7e659763b915c0b62a86ad7`  
		Last Modified: Sat, 21 Apr 2018 08:28:53 GMT  
		Size: 3.4 KB (3402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b8f78d8b2b47ce9b22da635f579f57d4c46d5cab484dd50f90ec79fc0c863a`  
		Last Modified: Sat, 21 Apr 2018 08:28:53 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0008b1e2edd8df4ff8e53454e24a9d291a6bdd9b584ab3d5bca3f0eb7603d331`  
		Last Modified: Sat, 21 Apr 2018 08:28:54 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fcbf3d99fedd6890a433d34a5a09bb461b56e8d455c4a529674d268c40e496`  
		Last Modified: Sat, 21 Apr 2018 08:30:04 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.22`

```console
$ docker pull sentry@sha256:7ea4dbc1eb1c26034e96240bbf46bd332d523cf0ea9e8400bd6e3bbeb6f2847f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.22` - linux; amd64

```console
$ docker pull sentry@sha256:b82fe2a4f35b93f1287c5bbeb17e94e3a9749b087f5c47d81e0e9712f9d0264d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173909703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5da17ae989e66c5f7c6257974548d81497cd07f5a10ff854b1cfcebe2d5eaf43`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:08:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 17:08:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 18:23:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:23:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 14 Mar 2018 18:23:49 GMT
ENV PYTHON_VERSION=2.7.14
# Wed, 14 Mar 2018 18:26:12 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 21 Apr 2018 03:05:30 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 21 Apr 2018 03:05:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 21 Apr 2018 03:05:57 GMT
CMD ["python2"]
# Sat, 21 Apr 2018 07:44:31 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 21 Apr 2018 07:45:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 21 Apr 2018 07:45:06 GMT
ENV GOSU_VERSION=1.10
# Sat, 21 Apr 2018 07:45:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:45:30 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 21 Apr 2018 07:45:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:46:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 21 Apr 2018 08:06:23 GMT
ENV SENTRY_VERSION=8.22.0
# Sat, 21 Apr 2018 08:07:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 21 Apr 2018 08:07:54 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 21 Apr 2018 08:07:55 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 21 Apr 2018 08:07:55 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 21 Apr 2018 08:07:56 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 21 Apr 2018 08:07:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 21 Apr 2018 08:07:57 GMT
EXPOSE 9000/tcp
# Sat, 21 Apr 2018 08:07:57 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 21 Apr 2018 08:07:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Apr 2018 08:07:58 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a7da9473ae0f89da613df9fe3f635dbf04d730d2dd16c46848389cf28743b8`  
		Last Modified: Wed, 14 Mar 2018 18:49:57 GMT  
		Size: 2.7 MB (2710618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d2e7f1272b5402b68364cffe150a0cc40879b088028cfdd6fe14435e40042`  
		Last Modified: Wed, 14 Mar 2018 18:50:01 GMT  
		Size: 14.9 MB (14935104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc013a89aadb961fe65cc75e0bbb74c3d46aee6c4a133ab121e0c166a6c4fb6`  
		Last Modified: Sat, 21 Apr 2018 04:06:46 GMT  
		Size: 2.1 MB (2089089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7661ea12abacb8d5cffb8ddf7ccf42408e94b99cdf7fb0c061f8e19392750913`  
		Last Modified: Sat, 21 Apr 2018 08:28:58 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a277489e1aa35d1065d63df46932aa2ffa96f6d2081a3dcfe58b8d9e3cb6b201`  
		Last Modified: Sat, 21 Apr 2018 08:29:11 GMT  
		Size: 56.6 MB (56645480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b454685f1c0a15838a593199de92296e7f2b6df737a0c83d179499af2ae83d`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 845.2 KB (845201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667b1f2f5ae97bd7fc5775bb0844806229d9360eb7917118f555433b422358db`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 352.5 KB (352527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d87d072a4a0fdc47f9cba919b116f93823dee59bfc1de9b117f99fb9fdec25`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 2.8 MB (2767714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50f97eb43bda2f2eeb86f887c6a5c1a4f2962690a72df2d21400c67d4e34fb0`  
		Last Modified: Sat, 21 Apr 2018 08:31:18 GMT  
		Size: 63.4 MB (63432079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8348db4cdb9abcf555d11f61a8cc5310273943d48b4a5a572bd83ab1a3076f1`  
		Last Modified: Sat, 21 Apr 2018 08:30:49 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512898d4f441ea1c3bb26571c4887ef3f8307fddb36e93ca3cdaaab6596bc359`  
		Last Modified: Sat, 21 Apr 2018 08:30:49 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3781f38c345b3ea0bb10f1531f0bac67ea25b6ddfa05f203023a6a1170a2aee9`  
		Last Modified: Sat, 21 Apr 2018 08:30:50 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2330e1989bb2b83001c5c7e4dfd6c9a97d56064483fd012b024295bd16d6776b`  
		Last Modified: Sat, 21 Apr 2018 08:30:50 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.22.0`

```console
$ docker pull sentry@sha256:7ea4dbc1eb1c26034e96240bbf46bd332d523cf0ea9e8400bd6e3bbeb6f2847f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.22.0` - linux; amd64

```console
$ docker pull sentry@sha256:b82fe2a4f35b93f1287c5bbeb17e94e3a9749b087f5c47d81e0e9712f9d0264d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173909703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5da17ae989e66c5f7c6257974548d81497cd07f5a10ff854b1cfcebe2d5eaf43`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:08:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 17:08:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 18:23:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:23:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 14 Mar 2018 18:23:49 GMT
ENV PYTHON_VERSION=2.7.14
# Wed, 14 Mar 2018 18:26:12 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 21 Apr 2018 03:05:30 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 21 Apr 2018 03:05:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 21 Apr 2018 03:05:57 GMT
CMD ["python2"]
# Sat, 21 Apr 2018 07:44:31 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 21 Apr 2018 07:45:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 21 Apr 2018 07:45:06 GMT
ENV GOSU_VERSION=1.10
# Sat, 21 Apr 2018 07:45:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:45:30 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 21 Apr 2018 07:45:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:46:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 21 Apr 2018 08:06:23 GMT
ENV SENTRY_VERSION=8.22.0
# Sat, 21 Apr 2018 08:07:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 21 Apr 2018 08:07:54 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 21 Apr 2018 08:07:55 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 21 Apr 2018 08:07:55 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 21 Apr 2018 08:07:56 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 21 Apr 2018 08:07:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 21 Apr 2018 08:07:57 GMT
EXPOSE 9000/tcp
# Sat, 21 Apr 2018 08:07:57 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 21 Apr 2018 08:07:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Apr 2018 08:07:58 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a7da9473ae0f89da613df9fe3f635dbf04d730d2dd16c46848389cf28743b8`  
		Last Modified: Wed, 14 Mar 2018 18:49:57 GMT  
		Size: 2.7 MB (2710618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d2e7f1272b5402b68364cffe150a0cc40879b088028cfdd6fe14435e40042`  
		Last Modified: Wed, 14 Mar 2018 18:50:01 GMT  
		Size: 14.9 MB (14935104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc013a89aadb961fe65cc75e0bbb74c3d46aee6c4a133ab121e0c166a6c4fb6`  
		Last Modified: Sat, 21 Apr 2018 04:06:46 GMT  
		Size: 2.1 MB (2089089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7661ea12abacb8d5cffb8ddf7ccf42408e94b99cdf7fb0c061f8e19392750913`  
		Last Modified: Sat, 21 Apr 2018 08:28:58 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a277489e1aa35d1065d63df46932aa2ffa96f6d2081a3dcfe58b8d9e3cb6b201`  
		Last Modified: Sat, 21 Apr 2018 08:29:11 GMT  
		Size: 56.6 MB (56645480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b454685f1c0a15838a593199de92296e7f2b6df737a0c83d179499af2ae83d`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 845.2 KB (845201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667b1f2f5ae97bd7fc5775bb0844806229d9360eb7917118f555433b422358db`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 352.5 KB (352527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d87d072a4a0fdc47f9cba919b116f93823dee59bfc1de9b117f99fb9fdec25`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 2.8 MB (2767714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50f97eb43bda2f2eeb86f887c6a5c1a4f2962690a72df2d21400c67d4e34fb0`  
		Last Modified: Sat, 21 Apr 2018 08:31:18 GMT  
		Size: 63.4 MB (63432079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8348db4cdb9abcf555d11f61a8cc5310273943d48b4a5a572bd83ab1a3076f1`  
		Last Modified: Sat, 21 Apr 2018 08:30:49 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512898d4f441ea1c3bb26571c4887ef3f8307fddb36e93ca3cdaaab6596bc359`  
		Last Modified: Sat, 21 Apr 2018 08:30:49 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3781f38c345b3ea0bb10f1531f0bac67ea25b6ddfa05f203023a6a1170a2aee9`  
		Last Modified: Sat, 21 Apr 2018 08:30:50 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2330e1989bb2b83001c5c7e4dfd6c9a97d56064483fd012b024295bd16d6776b`  
		Last Modified: Sat, 21 Apr 2018 08:30:50 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.22.0-onbuild`

```console
$ docker pull sentry@sha256:b84b714564d5d4e9714e1da4e183dc440d083bee201bc90f4bb5c31fcbb464c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.22.0-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:e1a38c8a9c720874c1b210e56d878062ca9eeac83611a1773552f6caefff785f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173909842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3eb9dc359be607d6e355b60f6dcc60d12eeba5a19dbf4f16f09d1f39d8e0a9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:08:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 17:08:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 18:23:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:23:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 14 Mar 2018 18:23:49 GMT
ENV PYTHON_VERSION=2.7.14
# Wed, 14 Mar 2018 18:26:12 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 21 Apr 2018 03:05:30 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 21 Apr 2018 03:05:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 21 Apr 2018 03:05:57 GMT
CMD ["python2"]
# Sat, 21 Apr 2018 07:44:31 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 21 Apr 2018 07:45:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 21 Apr 2018 07:45:06 GMT
ENV GOSU_VERSION=1.10
# Sat, 21 Apr 2018 07:45:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:45:30 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 21 Apr 2018 07:45:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:46:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 21 Apr 2018 08:06:23 GMT
ENV SENTRY_VERSION=8.22.0
# Sat, 21 Apr 2018 08:07:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 21 Apr 2018 08:07:54 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 21 Apr 2018 08:07:55 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 21 Apr 2018 08:07:55 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 21 Apr 2018 08:07:56 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 21 Apr 2018 08:07:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 21 Apr 2018 08:07:57 GMT
EXPOSE 9000/tcp
# Sat, 21 Apr 2018 08:07:57 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 21 Apr 2018 08:07:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Apr 2018 08:07:58 GMT
CMD ["run" "web"]
# Sat, 21 Apr 2018 08:28:10 GMT
WORKDIR /usr/src/sentry
# Sat, 21 Apr 2018 08:28:10 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 21 Apr 2018 08:28:10 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 21 Apr 2018 08:28:10 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 21 Apr 2018 08:28:11 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 21 Apr 2018 08:28:11 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a7da9473ae0f89da613df9fe3f635dbf04d730d2dd16c46848389cf28743b8`  
		Last Modified: Wed, 14 Mar 2018 18:49:57 GMT  
		Size: 2.7 MB (2710618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d2e7f1272b5402b68364cffe150a0cc40879b088028cfdd6fe14435e40042`  
		Last Modified: Wed, 14 Mar 2018 18:50:01 GMT  
		Size: 14.9 MB (14935104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc013a89aadb961fe65cc75e0bbb74c3d46aee6c4a133ab121e0c166a6c4fb6`  
		Last Modified: Sat, 21 Apr 2018 04:06:46 GMT  
		Size: 2.1 MB (2089089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7661ea12abacb8d5cffb8ddf7ccf42408e94b99cdf7fb0c061f8e19392750913`  
		Last Modified: Sat, 21 Apr 2018 08:28:58 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a277489e1aa35d1065d63df46932aa2ffa96f6d2081a3dcfe58b8d9e3cb6b201`  
		Last Modified: Sat, 21 Apr 2018 08:29:11 GMT  
		Size: 56.6 MB (56645480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b454685f1c0a15838a593199de92296e7f2b6df737a0c83d179499af2ae83d`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 845.2 KB (845201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667b1f2f5ae97bd7fc5775bb0844806229d9360eb7917118f555433b422358db`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 352.5 KB (352527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d87d072a4a0fdc47f9cba919b116f93823dee59bfc1de9b117f99fb9fdec25`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 2.8 MB (2767714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50f97eb43bda2f2eeb86f887c6a5c1a4f2962690a72df2d21400c67d4e34fb0`  
		Last Modified: Sat, 21 Apr 2018 08:31:18 GMT  
		Size: 63.4 MB (63432079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8348db4cdb9abcf555d11f61a8cc5310273943d48b4a5a572bd83ab1a3076f1`  
		Last Modified: Sat, 21 Apr 2018 08:30:49 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512898d4f441ea1c3bb26571c4887ef3f8307fddb36e93ca3cdaaab6596bc359`  
		Last Modified: Sat, 21 Apr 2018 08:30:49 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3781f38c345b3ea0bb10f1531f0bac67ea25b6ddfa05f203023a6a1170a2aee9`  
		Last Modified: Sat, 21 Apr 2018 08:30:50 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2330e1989bb2b83001c5c7e4dfd6c9a97d56064483fd012b024295bd16d6776b`  
		Last Modified: Sat, 21 Apr 2018 08:30:50 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd56acf5fad8915257a2636f1f5219cdad0c7a831b5346a23b8af18a60c79af`  
		Last Modified: Sat, 21 Apr 2018 08:36:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.22-onbuild`

```console
$ docker pull sentry@sha256:b84b714564d5d4e9714e1da4e183dc440d083bee201bc90f4bb5c31fcbb464c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.22-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:e1a38c8a9c720874c1b210e56d878062ca9eeac83611a1773552f6caefff785f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173909842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3eb9dc359be607d6e355b60f6dcc60d12eeba5a19dbf4f16f09d1f39d8e0a9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:08:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 17:08:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 18:23:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:23:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 14 Mar 2018 18:23:49 GMT
ENV PYTHON_VERSION=2.7.14
# Wed, 14 Mar 2018 18:26:12 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 21 Apr 2018 03:05:30 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 21 Apr 2018 03:05:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 21 Apr 2018 03:05:57 GMT
CMD ["python2"]
# Sat, 21 Apr 2018 07:44:31 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 21 Apr 2018 07:45:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 21 Apr 2018 07:45:06 GMT
ENV GOSU_VERSION=1.10
# Sat, 21 Apr 2018 07:45:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:45:30 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 21 Apr 2018 07:45:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:46:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 21 Apr 2018 08:06:23 GMT
ENV SENTRY_VERSION=8.22.0
# Sat, 21 Apr 2018 08:07:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 21 Apr 2018 08:07:54 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 21 Apr 2018 08:07:55 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 21 Apr 2018 08:07:55 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 21 Apr 2018 08:07:56 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 21 Apr 2018 08:07:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 21 Apr 2018 08:07:57 GMT
EXPOSE 9000/tcp
# Sat, 21 Apr 2018 08:07:57 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 21 Apr 2018 08:07:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Apr 2018 08:07:58 GMT
CMD ["run" "web"]
# Sat, 21 Apr 2018 08:28:10 GMT
WORKDIR /usr/src/sentry
# Sat, 21 Apr 2018 08:28:10 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 21 Apr 2018 08:28:10 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 21 Apr 2018 08:28:10 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 21 Apr 2018 08:28:11 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 21 Apr 2018 08:28:11 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a7da9473ae0f89da613df9fe3f635dbf04d730d2dd16c46848389cf28743b8`  
		Last Modified: Wed, 14 Mar 2018 18:49:57 GMT  
		Size: 2.7 MB (2710618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d2e7f1272b5402b68364cffe150a0cc40879b088028cfdd6fe14435e40042`  
		Last Modified: Wed, 14 Mar 2018 18:50:01 GMT  
		Size: 14.9 MB (14935104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc013a89aadb961fe65cc75e0bbb74c3d46aee6c4a133ab121e0c166a6c4fb6`  
		Last Modified: Sat, 21 Apr 2018 04:06:46 GMT  
		Size: 2.1 MB (2089089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7661ea12abacb8d5cffb8ddf7ccf42408e94b99cdf7fb0c061f8e19392750913`  
		Last Modified: Sat, 21 Apr 2018 08:28:58 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a277489e1aa35d1065d63df46932aa2ffa96f6d2081a3dcfe58b8d9e3cb6b201`  
		Last Modified: Sat, 21 Apr 2018 08:29:11 GMT  
		Size: 56.6 MB (56645480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b454685f1c0a15838a593199de92296e7f2b6df737a0c83d179499af2ae83d`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 845.2 KB (845201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667b1f2f5ae97bd7fc5775bb0844806229d9360eb7917118f555433b422358db`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 352.5 KB (352527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d87d072a4a0fdc47f9cba919b116f93823dee59bfc1de9b117f99fb9fdec25`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 2.8 MB (2767714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50f97eb43bda2f2eeb86f887c6a5c1a4f2962690a72df2d21400c67d4e34fb0`  
		Last Modified: Sat, 21 Apr 2018 08:31:18 GMT  
		Size: 63.4 MB (63432079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8348db4cdb9abcf555d11f61a8cc5310273943d48b4a5a572bd83ab1a3076f1`  
		Last Modified: Sat, 21 Apr 2018 08:30:49 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512898d4f441ea1c3bb26571c4887ef3f8307fddb36e93ca3cdaaab6596bc359`  
		Last Modified: Sat, 21 Apr 2018 08:30:49 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3781f38c345b3ea0bb10f1531f0bac67ea25b6ddfa05f203023a6a1170a2aee9`  
		Last Modified: Sat, 21 Apr 2018 08:30:50 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2330e1989bb2b83001c5c7e4dfd6c9a97d56064483fd012b024295bd16d6776b`  
		Last Modified: Sat, 21 Apr 2018 08:30:50 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd56acf5fad8915257a2636f1f5219cdad0c7a831b5346a23b8af18a60c79af`  
		Last Modified: Sat, 21 Apr 2018 08:36:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:b84b714564d5d4e9714e1da4e183dc440d083bee201bc90f4bb5c31fcbb464c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:e1a38c8a9c720874c1b210e56d878062ca9eeac83611a1773552f6caefff785f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173909842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3eb9dc359be607d6e355b60f6dcc60d12eeba5a19dbf4f16f09d1f39d8e0a9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:08:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 17:08:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 18:23:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:23:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 14 Mar 2018 18:23:49 GMT
ENV PYTHON_VERSION=2.7.14
# Wed, 14 Mar 2018 18:26:12 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 21 Apr 2018 03:05:30 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 21 Apr 2018 03:05:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 21 Apr 2018 03:05:57 GMT
CMD ["python2"]
# Sat, 21 Apr 2018 07:44:31 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 21 Apr 2018 07:45:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 21 Apr 2018 07:45:06 GMT
ENV GOSU_VERSION=1.10
# Sat, 21 Apr 2018 07:45:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:45:30 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 21 Apr 2018 07:45:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:46:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 21 Apr 2018 08:06:23 GMT
ENV SENTRY_VERSION=8.22.0
# Sat, 21 Apr 2018 08:07:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 21 Apr 2018 08:07:54 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 21 Apr 2018 08:07:55 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 21 Apr 2018 08:07:55 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 21 Apr 2018 08:07:56 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 21 Apr 2018 08:07:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 21 Apr 2018 08:07:57 GMT
EXPOSE 9000/tcp
# Sat, 21 Apr 2018 08:07:57 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 21 Apr 2018 08:07:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Apr 2018 08:07:58 GMT
CMD ["run" "web"]
# Sat, 21 Apr 2018 08:28:10 GMT
WORKDIR /usr/src/sentry
# Sat, 21 Apr 2018 08:28:10 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 21 Apr 2018 08:28:10 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 21 Apr 2018 08:28:10 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 21 Apr 2018 08:28:11 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 21 Apr 2018 08:28:11 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a7da9473ae0f89da613df9fe3f635dbf04d730d2dd16c46848389cf28743b8`  
		Last Modified: Wed, 14 Mar 2018 18:49:57 GMT  
		Size: 2.7 MB (2710618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d2e7f1272b5402b68364cffe150a0cc40879b088028cfdd6fe14435e40042`  
		Last Modified: Wed, 14 Mar 2018 18:50:01 GMT  
		Size: 14.9 MB (14935104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc013a89aadb961fe65cc75e0bbb74c3d46aee6c4a133ab121e0c166a6c4fb6`  
		Last Modified: Sat, 21 Apr 2018 04:06:46 GMT  
		Size: 2.1 MB (2089089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7661ea12abacb8d5cffb8ddf7ccf42408e94b99cdf7fb0c061f8e19392750913`  
		Last Modified: Sat, 21 Apr 2018 08:28:58 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a277489e1aa35d1065d63df46932aa2ffa96f6d2081a3dcfe58b8d9e3cb6b201`  
		Last Modified: Sat, 21 Apr 2018 08:29:11 GMT  
		Size: 56.6 MB (56645480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b454685f1c0a15838a593199de92296e7f2b6df737a0c83d179499af2ae83d`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 845.2 KB (845201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667b1f2f5ae97bd7fc5775bb0844806229d9360eb7917118f555433b422358db`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 352.5 KB (352527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d87d072a4a0fdc47f9cba919b116f93823dee59bfc1de9b117f99fb9fdec25`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 2.8 MB (2767714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50f97eb43bda2f2eeb86f887c6a5c1a4f2962690a72df2d21400c67d4e34fb0`  
		Last Modified: Sat, 21 Apr 2018 08:31:18 GMT  
		Size: 63.4 MB (63432079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8348db4cdb9abcf555d11f61a8cc5310273943d48b4a5a572bd83ab1a3076f1`  
		Last Modified: Sat, 21 Apr 2018 08:30:49 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512898d4f441ea1c3bb26571c4887ef3f8307fddb36e93ca3cdaaab6596bc359`  
		Last Modified: Sat, 21 Apr 2018 08:30:49 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3781f38c345b3ea0bb10f1531f0bac67ea25b6ddfa05f203023a6a1170a2aee9`  
		Last Modified: Sat, 21 Apr 2018 08:30:50 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2330e1989bb2b83001c5c7e4dfd6c9a97d56064483fd012b024295bd16d6776b`  
		Last Modified: Sat, 21 Apr 2018 08:30:50 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd56acf5fad8915257a2636f1f5219cdad0c7a831b5346a23b8af18a60c79af`  
		Last Modified: Sat, 21 Apr 2018 08:36:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:latest`

```console
$ docker pull sentry@sha256:7ea4dbc1eb1c26034e96240bbf46bd332d523cf0ea9e8400bd6e3bbeb6f2847f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

```console
$ docker pull sentry@sha256:b82fe2a4f35b93f1287c5bbeb17e94e3a9749b087f5c47d81e0e9712f9d0264d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173909703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5da17ae989e66c5f7c6257974548d81497cd07f5a10ff854b1cfcebe2d5eaf43`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:08:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 17:08:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 18:23:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:23:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 14 Mar 2018 18:23:49 GMT
ENV PYTHON_VERSION=2.7.14
# Wed, 14 Mar 2018 18:26:12 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 21 Apr 2018 03:05:30 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 21 Apr 2018 03:05:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 21 Apr 2018 03:05:57 GMT
CMD ["python2"]
# Sat, 21 Apr 2018 07:44:31 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 21 Apr 2018 07:45:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 21 Apr 2018 07:45:06 GMT
ENV GOSU_VERSION=1.10
# Sat, 21 Apr 2018 07:45:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:45:30 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 21 Apr 2018 07:45:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:46:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 21 Apr 2018 08:06:23 GMT
ENV SENTRY_VERSION=8.22.0
# Sat, 21 Apr 2018 08:07:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 21 Apr 2018 08:07:54 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 21 Apr 2018 08:07:55 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 21 Apr 2018 08:07:55 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 21 Apr 2018 08:07:56 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 21 Apr 2018 08:07:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 21 Apr 2018 08:07:57 GMT
EXPOSE 9000/tcp
# Sat, 21 Apr 2018 08:07:57 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 21 Apr 2018 08:07:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Apr 2018 08:07:58 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a7da9473ae0f89da613df9fe3f635dbf04d730d2dd16c46848389cf28743b8`  
		Last Modified: Wed, 14 Mar 2018 18:49:57 GMT  
		Size: 2.7 MB (2710618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d2e7f1272b5402b68364cffe150a0cc40879b088028cfdd6fe14435e40042`  
		Last Modified: Wed, 14 Mar 2018 18:50:01 GMT  
		Size: 14.9 MB (14935104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc013a89aadb961fe65cc75e0bbb74c3d46aee6c4a133ab121e0c166a6c4fb6`  
		Last Modified: Sat, 21 Apr 2018 04:06:46 GMT  
		Size: 2.1 MB (2089089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7661ea12abacb8d5cffb8ddf7ccf42408e94b99cdf7fb0c061f8e19392750913`  
		Last Modified: Sat, 21 Apr 2018 08:28:58 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a277489e1aa35d1065d63df46932aa2ffa96f6d2081a3dcfe58b8d9e3cb6b201`  
		Last Modified: Sat, 21 Apr 2018 08:29:11 GMT  
		Size: 56.6 MB (56645480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b454685f1c0a15838a593199de92296e7f2b6df737a0c83d179499af2ae83d`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 845.2 KB (845201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667b1f2f5ae97bd7fc5775bb0844806229d9360eb7917118f555433b422358db`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 352.5 KB (352527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d87d072a4a0fdc47f9cba919b116f93823dee59bfc1de9b117f99fb9fdec25`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 2.8 MB (2767714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50f97eb43bda2f2eeb86f887c6a5c1a4f2962690a72df2d21400c67d4e34fb0`  
		Last Modified: Sat, 21 Apr 2018 08:31:18 GMT  
		Size: 63.4 MB (63432079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8348db4cdb9abcf555d11f61a8cc5310273943d48b4a5a572bd83ab1a3076f1`  
		Last Modified: Sat, 21 Apr 2018 08:30:49 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512898d4f441ea1c3bb26571c4887ef3f8307fddb36e93ca3cdaaab6596bc359`  
		Last Modified: Sat, 21 Apr 2018 08:30:49 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3781f38c345b3ea0bb10f1531f0bac67ea25b6ddfa05f203023a6a1170a2aee9`  
		Last Modified: Sat, 21 Apr 2018 08:30:50 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2330e1989bb2b83001c5c7e4dfd6c9a97d56064483fd012b024295bd16d6776b`  
		Last Modified: Sat, 21 Apr 2018 08:30:50 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:b84b714564d5d4e9714e1da4e183dc440d083bee201bc90f4bb5c31fcbb464c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:e1a38c8a9c720874c1b210e56d878062ca9eeac83611a1773552f6caefff785f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173909842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3eb9dc359be607d6e355b60f6dcc60d12eeba5a19dbf4f16f09d1f39d8e0a9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:08:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 17:08:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 18:23:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:23:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 14 Mar 2018 18:23:49 GMT
ENV PYTHON_VERSION=2.7.14
# Wed, 14 Mar 2018 18:26:12 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 21 Apr 2018 03:05:30 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 21 Apr 2018 03:05:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 21 Apr 2018 03:05:57 GMT
CMD ["python2"]
# Sat, 21 Apr 2018 07:44:31 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 21 Apr 2018 07:45:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 21 Apr 2018 07:45:06 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 21 Apr 2018 07:45:06 GMT
ENV GOSU_VERSION=1.10
# Sat, 21 Apr 2018 07:45:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:45:30 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 21 Apr 2018 07:45:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 21 Apr 2018 07:46:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 21 Apr 2018 08:06:23 GMT
ENV SENTRY_VERSION=8.22.0
# Sat, 21 Apr 2018 08:07:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 21 Apr 2018 08:07:54 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 21 Apr 2018 08:07:55 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 21 Apr 2018 08:07:55 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 21 Apr 2018 08:07:56 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 21 Apr 2018 08:07:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 21 Apr 2018 08:07:57 GMT
EXPOSE 9000/tcp
# Sat, 21 Apr 2018 08:07:57 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 21 Apr 2018 08:07:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Apr 2018 08:07:58 GMT
CMD ["run" "web"]
# Sat, 21 Apr 2018 08:28:10 GMT
WORKDIR /usr/src/sentry
# Sat, 21 Apr 2018 08:28:10 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 21 Apr 2018 08:28:10 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 21 Apr 2018 08:28:10 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 21 Apr 2018 08:28:11 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 21 Apr 2018 08:28:11 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a7da9473ae0f89da613df9fe3f635dbf04d730d2dd16c46848389cf28743b8`  
		Last Modified: Wed, 14 Mar 2018 18:49:57 GMT  
		Size: 2.7 MB (2710618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422d2e7f1272b5402b68364cffe150a0cc40879b088028cfdd6fe14435e40042`  
		Last Modified: Wed, 14 Mar 2018 18:50:01 GMT  
		Size: 14.9 MB (14935104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc013a89aadb961fe65cc75e0bbb74c3d46aee6c4a133ab121e0c166a6c4fb6`  
		Last Modified: Sat, 21 Apr 2018 04:06:46 GMT  
		Size: 2.1 MB (2089089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7661ea12abacb8d5cffb8ddf7ccf42408e94b99cdf7fb0c061f8e19392750913`  
		Last Modified: Sat, 21 Apr 2018 08:28:58 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a277489e1aa35d1065d63df46932aa2ffa96f6d2081a3dcfe58b8d9e3cb6b201`  
		Last Modified: Sat, 21 Apr 2018 08:29:11 GMT  
		Size: 56.6 MB (56645480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b454685f1c0a15838a593199de92296e7f2b6df737a0c83d179499af2ae83d`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 845.2 KB (845201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667b1f2f5ae97bd7fc5775bb0844806229d9360eb7917118f555433b422358db`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 352.5 KB (352527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d87d072a4a0fdc47f9cba919b116f93823dee59bfc1de9b117f99fb9fdec25`  
		Last Modified: Sat, 21 Apr 2018 08:28:56 GMT  
		Size: 2.8 MB (2767714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50f97eb43bda2f2eeb86f887c6a5c1a4f2962690a72df2d21400c67d4e34fb0`  
		Last Modified: Sat, 21 Apr 2018 08:31:18 GMT  
		Size: 63.4 MB (63432079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8348db4cdb9abcf555d11f61a8cc5310273943d48b4a5a572bd83ab1a3076f1`  
		Last Modified: Sat, 21 Apr 2018 08:30:49 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512898d4f441ea1c3bb26571c4887ef3f8307fddb36e93ca3cdaaab6596bc359`  
		Last Modified: Sat, 21 Apr 2018 08:30:49 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3781f38c345b3ea0bb10f1531f0bac67ea25b6ddfa05f203023a6a1170a2aee9`  
		Last Modified: Sat, 21 Apr 2018 08:30:50 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2330e1989bb2b83001c5c7e4dfd6c9a97d56064483fd012b024295bd16d6776b`  
		Last Modified: Sat, 21 Apr 2018 08:30:50 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd56acf5fad8915257a2636f1f5219cdad0c7a831b5346a23b8af18a60c79af`  
		Last Modified: Sat, 21 Apr 2018 08:36:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
