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
