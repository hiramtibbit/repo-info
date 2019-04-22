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
