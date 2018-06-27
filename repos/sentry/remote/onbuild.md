## `sentry:onbuild`

```console
$ docker pull sentry@sha256:0aa83621905c7b872c5dc7c87588c72dd3e88c0eb00af15ce20028eeb48f9613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:9d645fea740d308f614109a0d5f3a9db1fa819f09e85af2af397f9e735226818
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.8 MB (188798374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c9f5dd0e5b92c102d34595013fb6c43f88e27e16495b57dd3c7fd7b00f9f57`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 00:22:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 00:22:13 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 01:21:34 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Jun 2018 01:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:21:54 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Jun 2018 01:21:55 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 27 Jun 2018 01:24:01 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 27 Jun 2018 01:24:02 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 27 Jun 2018 01:24:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Jun 2018 01:24:26 GMT
CMD ["python2"]
# Wed, 27 Jun 2018 08:08:27 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 27 Jun 2018 08:09:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 08:09:36 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 27 Jun 2018 08:09:36 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 27 Jun 2018 08:09:36 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 08:10:22 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 27 Jun 2018 08:11:05 GMT
RUN set -x     && export TINI_VERSION=0.18.0     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 27 Jun 2018 08:11:56 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 27 Jun 2018 08:11:56 GMT
ENV SENTRY_VERSION=9.0.0
# Wed, 27 Jun 2018 08:14:10 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 27 Jun 2018 08:14:11 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 27 Jun 2018 08:14:12 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 27 Jun 2018 08:14:12 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 27 Jun 2018 08:14:13 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 27 Jun 2018 08:14:13 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 27 Jun 2018 08:14:13 GMT
EXPOSE 9000/tcp
# Wed, 27 Jun 2018 08:14:13 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 27 Jun 2018 08:14:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 08:14:14 GMT
CMD ["run" "web"]
# Wed, 27 Jun 2018 08:14:28 GMT
WORKDIR /usr/src/sentry
# Wed, 27 Jun 2018 08:14:28 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 27 Jun 2018 08:14:28 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 27 Jun 2018 08:14:28 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 27 Jun 2018 08:14:29 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 27 Jun 2018 08:14:29 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc019144c722a05eec9631e45add0c1c1f23ead570d4b89de9cb5b2003ea1fe`  
		Last Modified: Wed, 27 Jun 2018 01:40:13 GMT  
		Size: 2.7 MB (2722695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c0f39a9e5057ac92131aec403c1314032af92b840e0d7f2ff769bc0209877d`  
		Last Modified: Wed, 27 Jun 2018 01:40:17 GMT  
		Size: 15.2 MB (15203113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25158700e7f70e85b7427d8ec8831812f4b5f67c36c5f39af8e44e2a4b129139`  
		Last Modified: Wed, 27 Jun 2018 01:40:13 GMT  
		Size: 2.1 MB (2089025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837b7ace5c0fbad1015e53dfab611dcdc2208d31ed6404739372764dc1ba0749`  
		Last Modified: Wed, 27 Jun 2018 08:14:55 GMT  
		Size: 4.4 KB (4406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7338d148f44f1292f11629de321c35feab854ec468582f330f083b37bb20b8b1`  
		Last Modified: Wed, 27 Jun 2018 08:15:20 GMT  
		Size: 53.7 MB (53691824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad170b97a59589a7f376876dd874090270ada0c75cb1855e74b1d753e51ba912`  
		Last Modified: Wed, 27 Jun 2018 08:14:54 GMT  
		Size: 845.4 KB (845358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23c6534aaeca257e27d3e7dbfecbd5e2d872c91adbd0a14affd2ab4b2560999`  
		Last Modified: Wed, 27 Jun 2018 08:14:52 GMT  
		Size: 353.6 KB (353617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca60b89a4777eb249aa1031e1e6a6fd89a362405c951d9d0fd8d190f312c3a6`  
		Last Modified: Wed, 27 Jun 2018 08:14:53 GMT  
		Size: 2.8 MB (2772106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ab7060e24592c1038262e80db83fd9577f9b6b3ca6ae11ef8ea780b6391958`  
		Last Modified: Wed, 27 Jun 2018 08:15:22 GMT  
		Size: 81.0 MB (80991182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996b70d91f0d3003eec514623b0e8f2a79efccaf117130b02794ce6707dd240e`  
		Last Modified: Wed, 27 Jun 2018 08:14:49 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70eae02ce87acff4f797fd21939fdb9665fd95d4227153ae079676f028d467f`  
		Last Modified: Wed, 27 Jun 2018 08:14:49 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bc3ba158892c0a19205a0d1ef5e026332637e4369f7fa91580235214acfd34`  
		Last Modified: Wed, 27 Jun 2018 08:14:49 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8303d887d68ab94a9bf73bc0aeaf633c86e1dd53e272f990fe6744e65f6708c4`  
		Last Modified: Wed, 27 Jun 2018 08:14:49 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdbe0787d91863fede1c38af17a8246957bfd76dfd73d5f078d15c08f1ea4cda`  
		Last Modified: Wed, 27 Jun 2018 08:16:06 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
