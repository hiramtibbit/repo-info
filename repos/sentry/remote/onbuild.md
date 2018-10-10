## `sentry:onbuild`

```console
$ docker pull sentry@sha256:ac3946556bca5f9699d8578f615dd411a38fe0d45ab166ddef5f83b1af6a822e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:fe71df496f3cffb2d63e37f5cfd422e8ceaf92ca392c1f131ac448e81b049337
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.6 MB (189607782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0179b5028a68c8cd849a66fc639ec8c72fd5f7d8c5eb1c71ae6b20f2f748291a`
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
# Tue, 09 Oct 2018 22:38:29 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:39:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 09 Oct 2018 22:39:05 GMT
CMD ["python2"]
# Tue, 09 Oct 2018 23:11:51 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 09 Oct 2018 23:12:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 09 Oct 2018 23:12:29 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 09 Oct 2018 23:12:29 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 09 Oct 2018 23:12:30 GMT
ENV GOSU_VERSION=1.10
# Tue, 09 Oct 2018 23:12:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 09 Oct 2018 23:13:17 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 09 Oct 2018 23:13:48 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 09 Oct 2018 23:13:48 GMT
ENV SENTRY_VERSION=9.0.0
# Tue, 09 Oct 2018 23:15:20 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Tue, 09 Oct 2018 23:15:21 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 09 Oct 2018 23:15:21 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 09 Oct 2018 23:15:21 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Tue, 09 Oct 2018 23:15:22 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Tue, 09 Oct 2018 23:15:22 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 09 Oct 2018 23:15:22 GMT
EXPOSE 9000/tcp
# Tue, 09 Oct 2018 23:15:22 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 09 Oct 2018 23:15:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 Oct 2018 23:15:23 GMT
CMD ["run" "web"]
# Tue, 09 Oct 2018 23:15:32 GMT
WORKDIR /usr/src/sentry
# Tue, 09 Oct 2018 23:15:32 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 09 Oct 2018 23:15:32 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 09 Oct 2018 23:15:32 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 09 Oct 2018 23:15:32 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 09 Oct 2018 23:15:33 GMT
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
	-	`sha256:3c6ce5c54ca771d350d45088f877f1a130e37b2908e991efa5ef5f56750b3abb`  
		Last Modified: Tue, 09 Oct 2018 22:53:53 GMT  
		Size: 2.1 MB (2081066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209f671a045299f11f18b46ece2534775eea0bbd3d8a655509d26031fdc23932`  
		Last Modified: Tue, 09 Oct 2018 23:15:49 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c569d0639181415a3d739791b70ed030b8c13244d4f7b25f08a8b09f01171d`  
		Last Modified: Tue, 09 Oct 2018 23:16:00 GMT  
		Size: 53.7 MB (53697428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f1a0c8e649e26e2bf4d3febb70276c45b24ba1c460f10cf6d5f478d4b14468`  
		Last Modified: Tue, 09 Oct 2018 23:15:48 GMT  
		Size: 845.0 KB (844956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0343c1ed93c5e97037e98599e612538931e3dd7884b7f13abb8233249819f8d4`  
		Last Modified: Tue, 09 Oct 2018 23:15:48 GMT  
		Size: 353.2 KB (353208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037ac9c8286ce041c3f52b5e4cd8c0a52f98bfcd0667f61d1a2c1391f08b9494`  
		Last Modified: Tue, 09 Oct 2018 23:15:48 GMT  
		Size: 2.8 MB (2784022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fd1e9ddf3b4c2777a43b71c6962c7e5751f6413bd7b2fd8fb1b9c27f018fb4`  
		Last Modified: Tue, 09 Oct 2018 23:16:06 GMT  
		Size: 81.9 MB (81931372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1397e67f839f391bbae78dc96fdaf2105fb548701ea5e8fe0c1b73a1be42105`  
		Last Modified: Tue, 09 Oct 2018 23:15:46 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7457b9f7779ae5f45f2367f030d8d9dff42414db4b409c1840e06e66a2c701bb`  
		Last Modified: Tue, 09 Oct 2018 23:15:46 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490f79673b4644d1359aee95440c32eaa5f81c08234233d649408a3f40064ce0`  
		Last Modified: Tue, 09 Oct 2018 23:15:46 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922e82ec6e0a3e167f7f3e3822fe7b65f639d8aa58324857c7dd33ea22d8efa2`  
		Last Modified: Tue, 09 Oct 2018 23:15:46 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc7409e75e2855a2ed2c1a16f429e37c94dd47ff0f610dbf529fa9835b0211e`  
		Last Modified: Tue, 09 Oct 2018 23:16:46 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
