## `sentry:9-onbuild`

```console
$ docker pull sentry@sha256:10bf5a777288407f8c2e53edc2576bd648cebe5e9a837a1b0ca03a4b3f42147f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:9-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:75bc96fb9064275d67360e5f913c0350e1601aa470cf2df56f8a0b8859c1bc06
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.2 MB (191243924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7565af68898a5457a862ef8c7769c28c3982bf32f433751078aa5fd93df91146`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 08:32:32 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 08:34:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 08:34:26 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 08:34:26 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 08:39:49 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 08:39:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 08:43:10 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 08:43:11 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 14:04:05 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 29 Dec 2018 14:06:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:06:35 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 29 Dec 2018 14:06:36 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 29 Dec 2018 14:06:36 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Dec 2018 14:09:15 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 29 Dec 2018 14:11:52 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 29 Dec 2018 14:14:20 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 29 Dec 2018 14:14:20 GMT
ENV SENTRY_VERSION=9.0.0
# Sat, 29 Dec 2018 14:19:34 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 29 Dec 2018 14:19:35 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 29 Dec 2018 14:19:37 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 29 Dec 2018 14:19:37 GMT
COPY file:eb9b8cb898c1cb3d4287bcebccb197a2be8b84d026a7f32333cf07190d07ee20 in /etc/sentry/ 
# Sat, 29 Dec 2018 14:19:38 GMT
COPY file:a05c3f29c43e7a3731ee93d86b5ab0824e2180162cfb13847d0289d024049804 in /etc/sentry/ 
# Sat, 29 Dec 2018 14:19:38 GMT
COPY file:fc1dccf3c8f2b99f9ce312e695b2fc960e4d1b7cae43a80c164a5aaf0c1f7ff9 in /entrypoint.sh 
# Sat, 29 Dec 2018 14:19:38 GMT
EXPOSE 9000
# Sat, 29 Dec 2018 14:19:39 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 29 Dec 2018 14:19:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 14:19:39 GMT
CMD ["run" "web"]
# Sat, 29 Dec 2018 14:19:44 GMT
WORKDIR /usr/src/sentry
# Sat, 29 Dec 2018 14:19:44 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 29 Dec 2018 14:19:45 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 29 Dec 2018 14:19:45 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 29 Dec 2018 14:19:45 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 29 Dec 2018 14:19:45 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12d1ba2a6e7fdc0f2a5f6529a237aa61e3f116b5495dbee67f91a80379b5264`  
		Last Modified: Sat, 29 Dec 2018 08:49:12 GMT  
		Size: 2.2 MB (2215105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:321157f5a26354f205e35e84e0a96e7334a98a543367cd1216430419a5f1729f`  
		Last Modified: Sat, 29 Dec 2018 08:49:15 GMT  
		Size: 15.6 MB (15571797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28039e01070ca4da93f5799fb421d0211b447765b973fcfeb97a47674b40051`  
		Last Modified: Sat, 29 Dec 2018 08:49:12 GMT  
		Size: 2.1 MB (2084167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef0b57ba03f8f791a0db13efa3976d7aa6251368f28dbf3c18296b7451790f0`  
		Last Modified: Sat, 29 Dec 2018 14:20:08 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eceeab08f8023a02180d49b60306cfc5d1d60054911f36ff6cd0d4fe3c16d99e`  
		Last Modified: Sat, 29 Dec 2018 14:20:32 GMT  
		Size: 53.7 MB (53709248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb9b79a4a4a20ac7e573d4ac2f10bdf6278eb4ecf27a71728e665c4d2fa7ad1`  
		Last Modified: Sat, 29 Dec 2018 14:20:07 GMT  
		Size: 845.0 KB (845035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3c48785b9a582738810b2e2d175805be2ac1d7cb5a2a4c6f0701e2fe56bb12`  
		Last Modified: Sat, 29 Dec 2018 14:20:07 GMT  
		Size: 353.3 KB (353282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa40b2b988802d7746cc00a2cd59f5e58efcc3be4feedc12c7a06d4b1d9d2a1`  
		Last Modified: Sat, 29 Dec 2018 14:20:09 GMT  
		Size: 2.8 MB (2785863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d4d0f5ba20347965dd0e1347b6554532c4bffc31ec96aaa9851f373d71d38e`  
		Last Modified: Sat, 29 Dec 2018 14:20:40 GMT  
		Size: 83.5 MB (83515851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d595944ea518babf7d36a1a97f75f714ab416fcfa478948034cb68309bef2c`  
		Last Modified: Sat, 29 Dec 2018 14:20:05 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc599b0d48c13dbf7a9405ec36b9ce0734219350e3bca24af782871aebb12de`  
		Last Modified: Sat, 29 Dec 2018 14:20:05 GMT  
		Size: 3.4 KB (3409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c668d896b82b2b9895607a96ad6db905308f7b3b9aeb34dab4b242b6af8f66`  
		Last Modified: Sat, 29 Dec 2018 14:20:06 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6b223ec6f7678938de28d134d39560d10d13a6639809cbe1f574ac8b1f54c1`  
		Last Modified: Sat, 29 Dec 2018 14:20:05 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40eb674056cf9ddb8d47995cecbc55d9b634cfad9f89e334ad265562fd7f1b2`  
		Last Modified: Sat, 29 Dec 2018 14:20:48 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
