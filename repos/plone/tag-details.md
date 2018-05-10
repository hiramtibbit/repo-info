<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `plone`

-	[`plone:4`](#plone4)
-	[`plone:4.3`](#plone43)
-	[`plone:4.3.17`](#plone4317)
-	[`plone:4.3.17-alpine`](#plone4317-alpine)
-	[`plone:4.3-alpine`](#plone43-alpine)
-	[`plone:4-alpine`](#plone4-alpine)
-	[`plone:5`](#plone5)
-	[`plone:5.1`](#plone51)
-	[`plone:5.1.0`](#plone510)
-	[`plone:5.1.0-alpine`](#plone510-alpine)
-	[`plone:5.1.1`](#plone511)
-	[`plone:5.1.1-alpine`](#plone511-alpine)
-	[`plone:5.1-alpine`](#plone51-alpine)
-	[`plone:5-alpine`](#plone5-alpine)
-	[`plone:alpine`](#plonealpine)
-	[`plone:latest`](#plonelatest)

## `plone:4`

```console
$ docker pull plone@sha256:0b825f0de1910216ae0b574bd8a79b29f52b7f3c0ff6e960891b152aadfbe1ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:4` - linux; amd64

```console
$ docker pull plone@sha256:f456fc7d7cf40d8bddbf1a8cf7a40ad401dacb73541c6cf02ea1d53a08fb5d72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135132711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a2ecffc45a41b70a092302f4e06b2a5c8c222094612ea9e284c8cb6d6f5729c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Tue, 01 May 2018 21:48:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 21:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 23:37:12 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 05 May 2018 03:28:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 03:28:42 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 03:28:42 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 03:30:33 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 03:30:34 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 03:30:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 03:30:41 GMT
CMD ["python2"]
# Thu, 10 May 2018 19:47:56 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 10 May 2018 19:47:57 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 10 May 2018 19:47:58 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 10 May 2018 19:47:58 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 10 May 2018 19:55:00 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 10 May 2018 19:55:01 GMT
VOLUME [/data]
# Thu, 10 May 2018 19:55:01 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Thu, 10 May 2018 19:55:02 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 19:55:02 GMT
WORKDIR /plone/instance
# Thu, 10 May 2018 19:55:02 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 10 May 2018 19:55:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 May 2018 19:55:03 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4998e99f884a359784cf8fb4d906c56d0438f650479017ff43d8eedd6b5ff66`  
		Last Modified: Sat, 05 May 2018 03:54:20 GMT  
		Size: 3.3 MB (3314636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948953c743cfae76fab4f0fe381ca356534efac25609abf099d7ff84224ffae4`  
		Last Modified: Sat, 05 May 2018 03:54:22 GMT  
		Size: 16.3 MB (16340237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf9954d79c63ae16485679c03f4d36b4ab29a700b62d944d52d4bc12835bab8`  
		Last Modified: Sat, 05 May 2018 03:54:20 GMT  
		Size: 2.1 MB (2066543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ba32c61928a6fd658ce5ac21faae5e9e005547553c0c00a07c49798d37991b`  
		Last Modified: Thu, 10 May 2018 20:14:19 GMT  
		Size: 3.9 KB (3882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5fc91ddf4229d0fcc28435f787cc80d6495aa9c4e5a2eb308c0dd9f8b22b9`  
		Last Modified: Thu, 10 May 2018 20:14:20 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1cded00241a3cab96c7048e4f06db016e44ea64de4661ff1404a5823c43d2d`  
		Last Modified: Thu, 10 May 2018 20:15:06 GMT  
		Size: 90.9 MB (90908736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ba3e2b1898a4a43621128b7306a405ea5077c93afa43edfc9e7ca056543459`  
		Last Modified: Thu, 10 May 2018 20:14:21 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3`

```console
$ docker pull plone@sha256:0b825f0de1910216ae0b574bd8a79b29f52b7f3c0ff6e960891b152aadfbe1ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:4.3` - linux; amd64

```console
$ docker pull plone@sha256:f456fc7d7cf40d8bddbf1a8cf7a40ad401dacb73541c6cf02ea1d53a08fb5d72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135132711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a2ecffc45a41b70a092302f4e06b2a5c8c222094612ea9e284c8cb6d6f5729c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Tue, 01 May 2018 21:48:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 21:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 23:37:12 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 05 May 2018 03:28:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 03:28:42 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 03:28:42 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 03:30:33 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 03:30:34 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 03:30:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 03:30:41 GMT
CMD ["python2"]
# Thu, 10 May 2018 19:47:56 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 10 May 2018 19:47:57 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 10 May 2018 19:47:58 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 10 May 2018 19:47:58 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 10 May 2018 19:55:00 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 10 May 2018 19:55:01 GMT
VOLUME [/data]
# Thu, 10 May 2018 19:55:01 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Thu, 10 May 2018 19:55:02 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 19:55:02 GMT
WORKDIR /plone/instance
# Thu, 10 May 2018 19:55:02 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 10 May 2018 19:55:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 May 2018 19:55:03 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4998e99f884a359784cf8fb4d906c56d0438f650479017ff43d8eedd6b5ff66`  
		Last Modified: Sat, 05 May 2018 03:54:20 GMT  
		Size: 3.3 MB (3314636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948953c743cfae76fab4f0fe381ca356534efac25609abf099d7ff84224ffae4`  
		Last Modified: Sat, 05 May 2018 03:54:22 GMT  
		Size: 16.3 MB (16340237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf9954d79c63ae16485679c03f4d36b4ab29a700b62d944d52d4bc12835bab8`  
		Last Modified: Sat, 05 May 2018 03:54:20 GMT  
		Size: 2.1 MB (2066543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ba32c61928a6fd658ce5ac21faae5e9e005547553c0c00a07c49798d37991b`  
		Last Modified: Thu, 10 May 2018 20:14:19 GMT  
		Size: 3.9 KB (3882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5fc91ddf4229d0fcc28435f787cc80d6495aa9c4e5a2eb308c0dd9f8b22b9`  
		Last Modified: Thu, 10 May 2018 20:14:20 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1cded00241a3cab96c7048e4f06db016e44ea64de4661ff1404a5823c43d2d`  
		Last Modified: Thu, 10 May 2018 20:15:06 GMT  
		Size: 90.9 MB (90908736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ba3e2b1898a4a43621128b7306a405ea5077c93afa43edfc9e7ca056543459`  
		Last Modified: Thu, 10 May 2018 20:14:21 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.17`

```console
$ docker pull plone@sha256:0b825f0de1910216ae0b574bd8a79b29f52b7f3c0ff6e960891b152aadfbe1ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:4.3.17` - linux; amd64

```console
$ docker pull plone@sha256:f456fc7d7cf40d8bddbf1a8cf7a40ad401dacb73541c6cf02ea1d53a08fb5d72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135132711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a2ecffc45a41b70a092302f4e06b2a5c8c222094612ea9e284c8cb6d6f5729c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Tue, 01 May 2018 21:48:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 21:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 23:37:12 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 05 May 2018 03:28:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 03:28:42 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 03:28:42 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 03:30:33 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 03:30:34 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 03:30:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 03:30:41 GMT
CMD ["python2"]
# Thu, 10 May 2018 19:47:56 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 10 May 2018 19:47:57 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 10 May 2018 19:47:58 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 10 May 2018 19:47:58 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 10 May 2018 19:55:00 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 10 May 2018 19:55:01 GMT
VOLUME [/data]
# Thu, 10 May 2018 19:55:01 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Thu, 10 May 2018 19:55:02 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 19:55:02 GMT
WORKDIR /plone/instance
# Thu, 10 May 2018 19:55:02 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 10 May 2018 19:55:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 May 2018 19:55:03 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4998e99f884a359784cf8fb4d906c56d0438f650479017ff43d8eedd6b5ff66`  
		Last Modified: Sat, 05 May 2018 03:54:20 GMT  
		Size: 3.3 MB (3314636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948953c743cfae76fab4f0fe381ca356534efac25609abf099d7ff84224ffae4`  
		Last Modified: Sat, 05 May 2018 03:54:22 GMT  
		Size: 16.3 MB (16340237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf9954d79c63ae16485679c03f4d36b4ab29a700b62d944d52d4bc12835bab8`  
		Last Modified: Sat, 05 May 2018 03:54:20 GMT  
		Size: 2.1 MB (2066543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ba32c61928a6fd658ce5ac21faae5e9e005547553c0c00a07c49798d37991b`  
		Last Modified: Thu, 10 May 2018 20:14:19 GMT  
		Size: 3.9 KB (3882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5fc91ddf4229d0fcc28435f787cc80d6495aa9c4e5a2eb308c0dd9f8b22b9`  
		Last Modified: Thu, 10 May 2018 20:14:20 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1cded00241a3cab96c7048e4f06db016e44ea64de4661ff1404a5823c43d2d`  
		Last Modified: Thu, 10 May 2018 20:15:06 GMT  
		Size: 90.9 MB (90908736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ba3e2b1898a4a43621128b7306a405ea5077c93afa43edfc9e7ca056543459`  
		Last Modified: Thu, 10 May 2018 20:14:21 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.17-alpine`

```console
$ docker pull plone@sha256:af0a3ec2b770572766b95561b1e3ba8a56d4f85cd4ba322f714a5a0d008de7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:4.3.17-alpine` - linux; amd64

```console
$ docker pull plone@sha256:c543560f125f59150af59c1f985de1402c754983858326dd55761b6e43651f7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85800402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced66709f6120d455c3f8e1ef9c7b1dc4b3b742b85f04b312cf99627582e9e9e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:41:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Jan 2018 05:16:00 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 09:45:05 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 27 Apr 2018 09:45:10 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Apr 2018 09:45:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 03:38:17 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 03:39:55 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 03:39:55 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 03:39:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 03:40:00 GMT
CMD ["python2"]
# Thu, 10 May 2018 19:59:31 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 10 May 2018 19:59:31 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 10 May 2018 19:59:32 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 10 May 2018 19:59:33 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 10 May 2018 20:06:10 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 10 May 2018 20:06:11 GMT
VOLUME [/data]
# Thu, 10 May 2018 20:06:12 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Thu, 10 May 2018 20:06:12 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 20:06:12 GMT
WORKDIR /plone/instance
# Thu, 10 May 2018 20:06:13 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 10 May 2018 20:06:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 May 2018 20:06:13 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d27bed84ae3604ffe081d7469cbd8535d56ca3b6e9d3f59668a64907880e9`  
		Last Modified: Fri, 27 Apr 2018 11:35:57 GMT  
		Size: 308.0 KB (308003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a27dd97e686e00c44e84f63fa9391a44fdc63369dcc2f46e80675a20973ead`  
		Last Modified: Sat, 05 May 2018 03:56:19 GMT  
		Size: 21.3 MB (21325342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d93ff5a102a0cd675fa586fdfeb9d100d9ddb72683bff9303b5c48d77d83a9`  
		Last Modified: Sat, 05 May 2018 03:56:16 GMT  
		Size: 1.9 MB (1888958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496e1ef3fbd9cdda2fdc79992d995c0454f800a1b32f6dfa6769370d21bdbb0e`  
		Last Modified: Thu, 10 May 2018 20:15:30 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f869007ee3a8b7a905372b2420e1f828e3febf7ab9508362c684dcfe8a22c0f`  
		Last Modified: Thu, 10 May 2018 20:15:31 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdfbf17553188f5967924af07ec9ecb1f3ac24e83b9f255ecc33633e8f30ca1`  
		Last Modified: Thu, 10 May 2018 20:16:11 GMT  
		Size: 60.2 MB (60208592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907c15271e534d7f7b59d79d34e8829e907836b15890b3327f6714d64160b55d`  
		Last Modified: Thu, 10 May 2018 20:15:30 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3-alpine`

```console
$ docker pull plone@sha256:af0a3ec2b770572766b95561b1e3ba8a56d4f85cd4ba322f714a5a0d008de7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:4.3-alpine` - linux; amd64

```console
$ docker pull plone@sha256:c543560f125f59150af59c1f985de1402c754983858326dd55761b6e43651f7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85800402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced66709f6120d455c3f8e1ef9c7b1dc4b3b742b85f04b312cf99627582e9e9e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:41:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Jan 2018 05:16:00 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 09:45:05 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 27 Apr 2018 09:45:10 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Apr 2018 09:45:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 03:38:17 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 03:39:55 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 03:39:55 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 03:39:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 03:40:00 GMT
CMD ["python2"]
# Thu, 10 May 2018 19:59:31 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 10 May 2018 19:59:31 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 10 May 2018 19:59:32 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 10 May 2018 19:59:33 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 10 May 2018 20:06:10 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 10 May 2018 20:06:11 GMT
VOLUME [/data]
# Thu, 10 May 2018 20:06:12 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Thu, 10 May 2018 20:06:12 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 20:06:12 GMT
WORKDIR /plone/instance
# Thu, 10 May 2018 20:06:13 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 10 May 2018 20:06:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 May 2018 20:06:13 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d27bed84ae3604ffe081d7469cbd8535d56ca3b6e9d3f59668a64907880e9`  
		Last Modified: Fri, 27 Apr 2018 11:35:57 GMT  
		Size: 308.0 KB (308003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a27dd97e686e00c44e84f63fa9391a44fdc63369dcc2f46e80675a20973ead`  
		Last Modified: Sat, 05 May 2018 03:56:19 GMT  
		Size: 21.3 MB (21325342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d93ff5a102a0cd675fa586fdfeb9d100d9ddb72683bff9303b5c48d77d83a9`  
		Last Modified: Sat, 05 May 2018 03:56:16 GMT  
		Size: 1.9 MB (1888958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496e1ef3fbd9cdda2fdc79992d995c0454f800a1b32f6dfa6769370d21bdbb0e`  
		Last Modified: Thu, 10 May 2018 20:15:30 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f869007ee3a8b7a905372b2420e1f828e3febf7ab9508362c684dcfe8a22c0f`  
		Last Modified: Thu, 10 May 2018 20:15:31 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdfbf17553188f5967924af07ec9ecb1f3ac24e83b9f255ecc33633e8f30ca1`  
		Last Modified: Thu, 10 May 2018 20:16:11 GMT  
		Size: 60.2 MB (60208592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907c15271e534d7f7b59d79d34e8829e907836b15890b3327f6714d64160b55d`  
		Last Modified: Thu, 10 May 2018 20:15:30 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4-alpine`

```console
$ docker pull plone@sha256:af0a3ec2b770572766b95561b1e3ba8a56d4f85cd4ba322f714a5a0d008de7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:4-alpine` - linux; amd64

```console
$ docker pull plone@sha256:c543560f125f59150af59c1f985de1402c754983858326dd55761b6e43651f7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85800402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced66709f6120d455c3f8e1ef9c7b1dc4b3b742b85f04b312cf99627582e9e9e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:41:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Jan 2018 05:16:00 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 09:45:05 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 27 Apr 2018 09:45:10 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Apr 2018 09:45:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 03:38:17 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 03:39:55 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 03:39:55 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 03:39:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 03:40:00 GMT
CMD ["python2"]
# Thu, 10 May 2018 19:59:31 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 10 May 2018 19:59:31 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 10 May 2018 19:59:32 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 10 May 2018 19:59:33 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 10 May 2018 20:06:10 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 10 May 2018 20:06:11 GMT
VOLUME [/data]
# Thu, 10 May 2018 20:06:12 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Thu, 10 May 2018 20:06:12 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 20:06:12 GMT
WORKDIR /plone/instance
# Thu, 10 May 2018 20:06:13 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 10 May 2018 20:06:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 May 2018 20:06:13 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d27bed84ae3604ffe081d7469cbd8535d56ca3b6e9d3f59668a64907880e9`  
		Last Modified: Fri, 27 Apr 2018 11:35:57 GMT  
		Size: 308.0 KB (308003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a27dd97e686e00c44e84f63fa9391a44fdc63369dcc2f46e80675a20973ead`  
		Last Modified: Sat, 05 May 2018 03:56:19 GMT  
		Size: 21.3 MB (21325342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d93ff5a102a0cd675fa586fdfeb9d100d9ddb72683bff9303b5c48d77d83a9`  
		Last Modified: Sat, 05 May 2018 03:56:16 GMT  
		Size: 1.9 MB (1888958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496e1ef3fbd9cdda2fdc79992d995c0454f800a1b32f6dfa6769370d21bdbb0e`  
		Last Modified: Thu, 10 May 2018 20:15:30 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f869007ee3a8b7a905372b2420e1f828e3febf7ab9508362c684dcfe8a22c0f`  
		Last Modified: Thu, 10 May 2018 20:15:31 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdfbf17553188f5967924af07ec9ecb1f3ac24e83b9f255ecc33633e8f30ca1`  
		Last Modified: Thu, 10 May 2018 20:16:11 GMT  
		Size: 60.2 MB (60208592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907c15271e534d7f7b59d79d34e8829e907836b15890b3327f6714d64160b55d`  
		Last Modified: Thu, 10 May 2018 20:15:30 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5`

```console
$ docker pull plone@sha256:e9c4ff747126351424b8262da27316331324b1b1794876dd6be2ef9b9465e044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5` - linux; amd64

```console
$ docker pull plone@sha256:daff6b20d2e3def72ba507196ede6e34301d5b10bbd398f249b31c6360ada70d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159279617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30bc0493061255a12f1bdfa494c98f1a59896cfa1b95eaa39cc1ca156ebd50a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Tue, 01 May 2018 21:48:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 21:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 23:37:12 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 05 May 2018 03:28:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 03:28:42 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 03:28:42 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 03:30:33 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 03:30:34 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 03:30:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 03:30:41 GMT
CMD ["python2"]
# Thu, 10 May 2018 19:10:00 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Thu, 10 May 2018 19:10:00 GMT
LABEL plone=5.1.1 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 10 May 2018 19:10:02 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 10 May 2018 19:10:02 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 10 May 2018 19:15:53 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 10 May 2018 19:15:54 GMT
VOLUME [/data]
# Thu, 10 May 2018 19:15:55 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Thu, 10 May 2018 19:15:55 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 19:15:56 GMT
WORKDIR /plone/instance
# Thu, 10 May 2018 19:15:56 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 10 May 2018 19:15:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 May 2018 19:15:57 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4998e99f884a359784cf8fb4d906c56d0438f650479017ff43d8eedd6b5ff66`  
		Last Modified: Sat, 05 May 2018 03:54:20 GMT  
		Size: 3.3 MB (3314636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948953c743cfae76fab4f0fe381ca356534efac25609abf099d7ff84224ffae4`  
		Last Modified: Sat, 05 May 2018 03:54:22 GMT  
		Size: 16.3 MB (16340237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf9954d79c63ae16485679c03f4d36b4ab29a700b62d944d52d4bc12835bab8`  
		Last Modified: Sat, 05 May 2018 03:54:20 GMT  
		Size: 2.1 MB (2066543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56de327a7f17723f6330952e4ea24fc7ffa28f63962e3ddab5efbf7faba731fc`  
		Last Modified: Thu, 10 May 2018 20:09:41 GMT  
		Size: 3.9 KB (3889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8c4f3de857b977d1220a79fb772c45f34ad05dc2dd26a480e0f9be5e2b0362`  
		Last Modified: Thu, 10 May 2018 20:09:42 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020d87c4fe2da53519cb93f25565f5ea0399ff8db00873c554d409aee2f883b1`  
		Last Modified: Thu, 10 May 2018 20:10:34 GMT  
		Size: 115.1 MB (115055633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905faf5b0d329b676667c62df8fc7346c9b83e4a25d7d4c63c83fe47e7305f52`  
		Last Modified: Thu, 10 May 2018 20:09:41 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1`

```console
$ docker pull plone@sha256:e9c4ff747126351424b8262da27316331324b1b1794876dd6be2ef9b9465e044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5.1` - linux; amd64

```console
$ docker pull plone@sha256:daff6b20d2e3def72ba507196ede6e34301d5b10bbd398f249b31c6360ada70d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159279617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30bc0493061255a12f1bdfa494c98f1a59896cfa1b95eaa39cc1ca156ebd50a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Tue, 01 May 2018 21:48:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 21:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 23:37:12 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 05 May 2018 03:28:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 03:28:42 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 03:28:42 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 03:30:33 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 03:30:34 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 03:30:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 03:30:41 GMT
CMD ["python2"]
# Thu, 10 May 2018 19:10:00 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Thu, 10 May 2018 19:10:00 GMT
LABEL plone=5.1.1 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 10 May 2018 19:10:02 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 10 May 2018 19:10:02 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 10 May 2018 19:15:53 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 10 May 2018 19:15:54 GMT
VOLUME [/data]
# Thu, 10 May 2018 19:15:55 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Thu, 10 May 2018 19:15:55 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 19:15:56 GMT
WORKDIR /plone/instance
# Thu, 10 May 2018 19:15:56 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 10 May 2018 19:15:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 May 2018 19:15:57 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4998e99f884a359784cf8fb4d906c56d0438f650479017ff43d8eedd6b5ff66`  
		Last Modified: Sat, 05 May 2018 03:54:20 GMT  
		Size: 3.3 MB (3314636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948953c743cfae76fab4f0fe381ca356534efac25609abf099d7ff84224ffae4`  
		Last Modified: Sat, 05 May 2018 03:54:22 GMT  
		Size: 16.3 MB (16340237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf9954d79c63ae16485679c03f4d36b4ab29a700b62d944d52d4bc12835bab8`  
		Last Modified: Sat, 05 May 2018 03:54:20 GMT  
		Size: 2.1 MB (2066543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56de327a7f17723f6330952e4ea24fc7ffa28f63962e3ddab5efbf7faba731fc`  
		Last Modified: Thu, 10 May 2018 20:09:41 GMT  
		Size: 3.9 KB (3889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8c4f3de857b977d1220a79fb772c45f34ad05dc2dd26a480e0f9be5e2b0362`  
		Last Modified: Thu, 10 May 2018 20:09:42 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020d87c4fe2da53519cb93f25565f5ea0399ff8db00873c554d409aee2f883b1`  
		Last Modified: Thu, 10 May 2018 20:10:34 GMT  
		Size: 115.1 MB (115055633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905faf5b0d329b676667c62df8fc7346c9b83e4a25d7d4c63c83fe47e7305f52`  
		Last Modified: Thu, 10 May 2018 20:09:41 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1.0`

```console
$ docker pull plone@sha256:1e9cacfa170ee7ca891d166f08d670ffa31eb1fe38e8e02c6edb729389797167
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5.1.0` - linux; amd64

```console
$ docker pull plone@sha256:56f34f92aba281c6a969a15d680306ea31b5911200597550c7652cb8f8754382
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159442541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73fc73eb63f66793272510c89b92c7968da65ee8a5dd5fe5b4c88c9f6cbf601`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Tue, 01 May 2018 21:48:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 21:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 23:37:12 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 05 May 2018 03:28:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 03:28:42 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 03:28:42 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 03:30:33 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 03:30:34 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 03:30:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 03:30:41 GMT
CMD ["python2"]
# Thu, 10 May 2018 19:28:10 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.0 PLONE_MD5=76dc6cfc1c749d763c32fff3a9870d8d
# Thu, 10 May 2018 19:28:10 GMT
LABEL plone=5.1.0 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 10 May 2018 19:28:11 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 10 May 2018 19:28:12 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 10 May 2018 19:33:46 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 10 May 2018 19:33:47 GMT
VOLUME [/data]
# Thu, 10 May 2018 19:33:48 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Thu, 10 May 2018 19:33:48 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 19:33:48 GMT
WORKDIR /plone/instance
# Thu, 10 May 2018 19:33:49 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 10 May 2018 19:33:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 May 2018 19:33:49 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4998e99f884a359784cf8fb4d906c56d0438f650479017ff43d8eedd6b5ff66`  
		Last Modified: Sat, 05 May 2018 03:54:20 GMT  
		Size: 3.3 MB (3314636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948953c743cfae76fab4f0fe381ca356534efac25609abf099d7ff84224ffae4`  
		Last Modified: Sat, 05 May 2018 03:54:22 GMT  
		Size: 16.3 MB (16340237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf9954d79c63ae16485679c03f4d36b4ab29a700b62d944d52d4bc12835bab8`  
		Last Modified: Sat, 05 May 2018 03:54:20 GMT  
		Size: 2.1 MB (2066543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264107c298e9611329008d06337164b8f90bd24149b2562389c134e1bf0f8862`  
		Last Modified: Thu, 10 May 2018 20:12:19 GMT  
		Size: 3.9 KB (3888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050ad0125d6b0a465cdeba01dfa7cc2595cdec53eada60d5d1f9fb8a855fe587`  
		Last Modified: Thu, 10 May 2018 20:12:19 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33d38663d9c7f39602b146709928695f4f74b9ed09c09122c90fa7a7bc31154`  
		Last Modified: Thu, 10 May 2018 20:13:09 GMT  
		Size: 115.2 MB (115218560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671c3a32d312ff74f965abbf3aab54c068f6056cd35ae696437c49a51fa51147`  
		Last Modified: Thu, 10 May 2018 20:12:19 GMT  
		Size: 2.2 KB (2245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1.0-alpine`

```console
$ docker pull plone@sha256:ea22358c1884621b2846ea4e13c41d4b89225c55f8403a311f92e0ad8467d4b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5.1.0-alpine` - linux; amd64

```console
$ docker pull plone@sha256:69b7844ee1b4a11a2963a889cb3752180ce11372ff54229237a164866eab2999
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.2 MB (109198039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1adc12e7f9470a02b9760e9b7ff7b461b0880b161389efbe1c92213009a32eb2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:41:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Jan 2018 05:16:00 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 09:45:05 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 27 Apr 2018 09:45:10 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Apr 2018 09:45:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 03:38:17 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 03:39:55 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 03:39:55 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 03:39:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 03:40:00 GMT
CMD ["python2"]
# Thu, 10 May 2018 19:38:11 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.0 PLONE_MD5=76dc6cfc1c749d763c32fff3a9870d8d
# Thu, 10 May 2018 19:38:11 GMT
LABEL plone=5.1.0 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 10 May 2018 19:38:12 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 10 May 2018 19:38:12 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 10 May 2018 19:45:44 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 10 May 2018 19:45:45 GMT
VOLUME [/data]
# Thu, 10 May 2018 19:45:46 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 10 May 2018 19:45:46 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 19:45:46 GMT
WORKDIR /plone/instance
# Thu, 10 May 2018 19:45:47 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 10 May 2018 19:45:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 May 2018 19:45:47 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d27bed84ae3604ffe081d7469cbd8535d56ca3b6e9d3f59668a64907880e9`  
		Last Modified: Fri, 27 Apr 2018 11:35:57 GMT  
		Size: 308.0 KB (308003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a27dd97e686e00c44e84f63fa9391a44fdc63369dcc2f46e80675a20973ead`  
		Last Modified: Sat, 05 May 2018 03:56:19 GMT  
		Size: 21.3 MB (21325342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d93ff5a102a0cd675fa586fdfeb9d100d9ddb72683bff9303b5c48d77d83a9`  
		Last Modified: Sat, 05 May 2018 03:56:16 GMT  
		Size: 1.9 MB (1888958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450c0dd9880354f3b25deb06e6634fffa90309007094c989473ec8f86113e478`  
		Last Modified: Thu, 10 May 2018 20:13:21 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe4d743a999dccfcd9176379d112f08d06efcadec2d6dc7d732cfd6b3bc3429`  
		Last Modified: Thu, 10 May 2018 20:13:21 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f3fe2843499b2baffffe16c23fa77164ce4be243f22ffbebf164af05a7614b`  
		Last Modified: Thu, 10 May 2018 20:14:06 GMT  
		Size: 83.6 MB (83606228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9dd1bbc0479271fc06144157bd3bdb2b7c23a66d32cb4aa7d04ef9709ebd27`  
		Last Modified: Thu, 10 May 2018 20:13:22 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1.1`

```console
$ docker pull plone@sha256:e9c4ff747126351424b8262da27316331324b1b1794876dd6be2ef9b9465e044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5.1.1` - linux; amd64

```console
$ docker pull plone@sha256:daff6b20d2e3def72ba507196ede6e34301d5b10bbd398f249b31c6360ada70d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159279617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30bc0493061255a12f1bdfa494c98f1a59896cfa1b95eaa39cc1ca156ebd50a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Tue, 01 May 2018 21:48:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 21:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 23:37:12 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 05 May 2018 03:28:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 03:28:42 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 03:28:42 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 03:30:33 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 03:30:34 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 03:30:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 03:30:41 GMT
CMD ["python2"]
# Thu, 10 May 2018 19:10:00 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Thu, 10 May 2018 19:10:00 GMT
LABEL plone=5.1.1 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 10 May 2018 19:10:02 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 10 May 2018 19:10:02 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 10 May 2018 19:15:53 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 10 May 2018 19:15:54 GMT
VOLUME [/data]
# Thu, 10 May 2018 19:15:55 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Thu, 10 May 2018 19:15:55 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 19:15:56 GMT
WORKDIR /plone/instance
# Thu, 10 May 2018 19:15:56 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 10 May 2018 19:15:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 May 2018 19:15:57 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4998e99f884a359784cf8fb4d906c56d0438f650479017ff43d8eedd6b5ff66`  
		Last Modified: Sat, 05 May 2018 03:54:20 GMT  
		Size: 3.3 MB (3314636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948953c743cfae76fab4f0fe381ca356534efac25609abf099d7ff84224ffae4`  
		Last Modified: Sat, 05 May 2018 03:54:22 GMT  
		Size: 16.3 MB (16340237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf9954d79c63ae16485679c03f4d36b4ab29a700b62d944d52d4bc12835bab8`  
		Last Modified: Sat, 05 May 2018 03:54:20 GMT  
		Size: 2.1 MB (2066543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56de327a7f17723f6330952e4ea24fc7ffa28f63962e3ddab5efbf7faba731fc`  
		Last Modified: Thu, 10 May 2018 20:09:41 GMT  
		Size: 3.9 KB (3889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8c4f3de857b977d1220a79fb772c45f34ad05dc2dd26a480e0f9be5e2b0362`  
		Last Modified: Thu, 10 May 2018 20:09:42 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020d87c4fe2da53519cb93f25565f5ea0399ff8db00873c554d409aee2f883b1`  
		Last Modified: Thu, 10 May 2018 20:10:34 GMT  
		Size: 115.1 MB (115055633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905faf5b0d329b676667c62df8fc7346c9b83e4a25d7d4c63c83fe47e7305f52`  
		Last Modified: Thu, 10 May 2018 20:09:41 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1.1-alpine`

```console
$ docker pull plone@sha256:1511ecbcf792aa97f9172b18bcf78c8ea26486587b55cc8c7de5f85b9f992176
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5.1.1-alpine` - linux; amd64

```console
$ docker pull plone@sha256:88cb44c893fd75d40e88209ba383a71d11a78f2507d8e3055cce26c0869311d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109053068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab7255317256fd279267e060a9a7cf58f8c8738303395e353ad80184ffb07be`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:41:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Jan 2018 05:16:00 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 09:45:05 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 27 Apr 2018 09:45:10 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Apr 2018 09:45:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 03:38:17 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 03:39:55 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 03:39:55 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 03:39:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 03:40:00 GMT
CMD ["python2"]
# Thu, 10 May 2018 19:20:49 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Thu, 10 May 2018 19:20:49 GMT
LABEL plone=5.1.1 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 10 May 2018 19:20:50 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 10 May 2018 19:20:51 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 10 May 2018 19:27:54 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 10 May 2018 19:27:55 GMT
VOLUME [/data]
# Thu, 10 May 2018 19:27:56 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 10 May 2018 19:27:56 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 19:27:57 GMT
WORKDIR /plone/instance
# Thu, 10 May 2018 19:27:57 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 10 May 2018 19:27:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 May 2018 19:27:57 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d27bed84ae3604ffe081d7469cbd8535d56ca3b6e9d3f59668a64907880e9`  
		Last Modified: Fri, 27 Apr 2018 11:35:57 GMT  
		Size: 308.0 KB (308003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a27dd97e686e00c44e84f63fa9391a44fdc63369dcc2f46e80675a20973ead`  
		Last Modified: Sat, 05 May 2018 03:56:19 GMT  
		Size: 21.3 MB (21325342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d93ff5a102a0cd675fa586fdfeb9d100d9ddb72683bff9303b5c48d77d83a9`  
		Last Modified: Sat, 05 May 2018 03:56:16 GMT  
		Size: 1.9 MB (1888958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a4dc8b09d0e01dbe9cef9ebb5a17e259eb888c2f3a2e5a76b3f173968a7c36`  
		Last Modified: Thu, 10 May 2018 20:11:03 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41aa8a75dc6ff91cbac31788a759f4522f680e9318a68f0f7b09a5fc2766814`  
		Last Modified: Thu, 10 May 2018 20:11:03 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1e39d8aa93b608275cc0dbae9b0a422729df8d3f97dade617a148c9e2a6529`  
		Last Modified: Thu, 10 May 2018 20:11:47 GMT  
		Size: 83.5 MB (83461255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976a4755472334e8e376e5c1551110a663ffe4651a2c2190740d96c4a623e6e7`  
		Last Modified: Thu, 10 May 2018 20:11:04 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1-alpine`

```console
$ docker pull plone@sha256:1511ecbcf792aa97f9172b18bcf78c8ea26486587b55cc8c7de5f85b9f992176
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5.1-alpine` - linux; amd64

```console
$ docker pull plone@sha256:88cb44c893fd75d40e88209ba383a71d11a78f2507d8e3055cce26c0869311d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109053068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab7255317256fd279267e060a9a7cf58f8c8738303395e353ad80184ffb07be`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:41:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Jan 2018 05:16:00 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 09:45:05 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 27 Apr 2018 09:45:10 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Apr 2018 09:45:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 03:38:17 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 03:39:55 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 03:39:55 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 03:39:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 03:40:00 GMT
CMD ["python2"]
# Thu, 10 May 2018 19:20:49 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Thu, 10 May 2018 19:20:49 GMT
LABEL plone=5.1.1 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 10 May 2018 19:20:50 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 10 May 2018 19:20:51 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 10 May 2018 19:27:54 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 10 May 2018 19:27:55 GMT
VOLUME [/data]
# Thu, 10 May 2018 19:27:56 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 10 May 2018 19:27:56 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 19:27:57 GMT
WORKDIR /plone/instance
# Thu, 10 May 2018 19:27:57 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 10 May 2018 19:27:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 May 2018 19:27:57 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d27bed84ae3604ffe081d7469cbd8535d56ca3b6e9d3f59668a64907880e9`  
		Last Modified: Fri, 27 Apr 2018 11:35:57 GMT  
		Size: 308.0 KB (308003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a27dd97e686e00c44e84f63fa9391a44fdc63369dcc2f46e80675a20973ead`  
		Last Modified: Sat, 05 May 2018 03:56:19 GMT  
		Size: 21.3 MB (21325342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d93ff5a102a0cd675fa586fdfeb9d100d9ddb72683bff9303b5c48d77d83a9`  
		Last Modified: Sat, 05 May 2018 03:56:16 GMT  
		Size: 1.9 MB (1888958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a4dc8b09d0e01dbe9cef9ebb5a17e259eb888c2f3a2e5a76b3f173968a7c36`  
		Last Modified: Thu, 10 May 2018 20:11:03 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41aa8a75dc6ff91cbac31788a759f4522f680e9318a68f0f7b09a5fc2766814`  
		Last Modified: Thu, 10 May 2018 20:11:03 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1e39d8aa93b608275cc0dbae9b0a422729df8d3f97dade617a148c9e2a6529`  
		Last Modified: Thu, 10 May 2018 20:11:47 GMT  
		Size: 83.5 MB (83461255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976a4755472334e8e376e5c1551110a663ffe4651a2c2190740d96c4a623e6e7`  
		Last Modified: Thu, 10 May 2018 20:11:04 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5-alpine`

```console
$ docker pull plone@sha256:1511ecbcf792aa97f9172b18bcf78c8ea26486587b55cc8c7de5f85b9f992176
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5-alpine` - linux; amd64

```console
$ docker pull plone@sha256:88cb44c893fd75d40e88209ba383a71d11a78f2507d8e3055cce26c0869311d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109053068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab7255317256fd279267e060a9a7cf58f8c8738303395e353ad80184ffb07be`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:41:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Jan 2018 05:16:00 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 09:45:05 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 27 Apr 2018 09:45:10 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Apr 2018 09:45:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 03:38:17 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 03:39:55 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 03:39:55 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 03:39:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 03:40:00 GMT
CMD ["python2"]
# Thu, 10 May 2018 19:20:49 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Thu, 10 May 2018 19:20:49 GMT
LABEL plone=5.1.1 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 10 May 2018 19:20:50 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 10 May 2018 19:20:51 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 10 May 2018 19:27:54 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 10 May 2018 19:27:55 GMT
VOLUME [/data]
# Thu, 10 May 2018 19:27:56 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 10 May 2018 19:27:56 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 19:27:57 GMT
WORKDIR /plone/instance
# Thu, 10 May 2018 19:27:57 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 10 May 2018 19:27:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 May 2018 19:27:57 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d27bed84ae3604ffe081d7469cbd8535d56ca3b6e9d3f59668a64907880e9`  
		Last Modified: Fri, 27 Apr 2018 11:35:57 GMT  
		Size: 308.0 KB (308003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a27dd97e686e00c44e84f63fa9391a44fdc63369dcc2f46e80675a20973ead`  
		Last Modified: Sat, 05 May 2018 03:56:19 GMT  
		Size: 21.3 MB (21325342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d93ff5a102a0cd675fa586fdfeb9d100d9ddb72683bff9303b5c48d77d83a9`  
		Last Modified: Sat, 05 May 2018 03:56:16 GMT  
		Size: 1.9 MB (1888958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a4dc8b09d0e01dbe9cef9ebb5a17e259eb888c2f3a2e5a76b3f173968a7c36`  
		Last Modified: Thu, 10 May 2018 20:11:03 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41aa8a75dc6ff91cbac31788a759f4522f680e9318a68f0f7b09a5fc2766814`  
		Last Modified: Thu, 10 May 2018 20:11:03 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1e39d8aa93b608275cc0dbae9b0a422729df8d3f97dade617a148c9e2a6529`  
		Last Modified: Thu, 10 May 2018 20:11:47 GMT  
		Size: 83.5 MB (83461255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976a4755472334e8e376e5c1551110a663ffe4651a2c2190740d96c4a623e6e7`  
		Last Modified: Thu, 10 May 2018 20:11:04 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:alpine`

```console
$ docker pull plone@sha256:1511ecbcf792aa97f9172b18bcf78c8ea26486587b55cc8c7de5f85b9f992176
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:alpine` - linux; amd64

```console
$ docker pull plone@sha256:88cb44c893fd75d40e88209ba383a71d11a78f2507d8e3055cce26c0869311d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109053068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab7255317256fd279267e060a9a7cf58f8c8738303395e353ad80184ffb07be`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 22:41:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Jan 2018 05:16:00 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 09:45:05 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 27 Apr 2018 09:45:10 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Apr 2018 09:45:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 03:38:17 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 03:39:55 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 03:39:55 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 03:39:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 03:40:00 GMT
CMD ["python2"]
# Thu, 10 May 2018 19:20:49 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Thu, 10 May 2018 19:20:49 GMT
LABEL plone=5.1.1 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 10 May 2018 19:20:50 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 10 May 2018 19:20:51 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 10 May 2018 19:27:54 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 10 May 2018 19:27:55 GMT
VOLUME [/data]
# Thu, 10 May 2018 19:27:56 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 10 May 2018 19:27:56 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 19:27:57 GMT
WORKDIR /plone/instance
# Thu, 10 May 2018 19:27:57 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 10 May 2018 19:27:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 May 2018 19:27:57 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99d27bed84ae3604ffe081d7469cbd8535d56ca3b6e9d3f59668a64907880e9`  
		Last Modified: Fri, 27 Apr 2018 11:35:57 GMT  
		Size: 308.0 KB (308003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a27dd97e686e00c44e84f63fa9391a44fdc63369dcc2f46e80675a20973ead`  
		Last Modified: Sat, 05 May 2018 03:56:19 GMT  
		Size: 21.3 MB (21325342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d93ff5a102a0cd675fa586fdfeb9d100d9ddb72683bff9303b5c48d77d83a9`  
		Last Modified: Sat, 05 May 2018 03:56:16 GMT  
		Size: 1.9 MB (1888958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a4dc8b09d0e01dbe9cef9ebb5a17e259eb888c2f3a2e5a76b3f173968a7c36`  
		Last Modified: Thu, 10 May 2018 20:11:03 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41aa8a75dc6ff91cbac31788a759f4522f680e9318a68f0f7b09a5fc2766814`  
		Last Modified: Thu, 10 May 2018 20:11:03 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1e39d8aa93b608275cc0dbae9b0a422729df8d3f97dade617a148c9e2a6529`  
		Last Modified: Thu, 10 May 2018 20:11:47 GMT  
		Size: 83.5 MB (83461255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976a4755472334e8e376e5c1551110a663ffe4651a2c2190740d96c4a623e6e7`  
		Last Modified: Thu, 10 May 2018 20:11:04 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:latest`

```console
$ docker pull plone@sha256:e9c4ff747126351424b8262da27316331324b1b1794876dd6be2ef9b9465e044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:latest` - linux; amd64

```console
$ docker pull plone@sha256:daff6b20d2e3def72ba507196ede6e34301d5b10bbd398f249b31c6360ada70d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159279617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30bc0493061255a12f1bdfa494c98f1a59896cfa1b95eaa39cc1ca156ebd50a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Tue, 01 May 2018 21:48:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 21:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 23:37:12 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 05 May 2018 03:28:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 03:28:42 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 03:28:42 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 03:30:33 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 03:30:34 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 03:30:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 03:30:41 GMT
CMD ["python2"]
# Thu, 10 May 2018 19:10:00 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Thu, 10 May 2018 19:10:00 GMT
LABEL plone=5.1.1 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 10 May 2018 19:10:02 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 10 May 2018 19:10:02 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 10 May 2018 19:15:53 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 10 May 2018 19:15:54 GMT
VOLUME [/data]
# Thu, 10 May 2018 19:15:55 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Thu, 10 May 2018 19:15:55 GMT
EXPOSE 8080/tcp
# Thu, 10 May 2018 19:15:56 GMT
WORKDIR /plone/instance
# Thu, 10 May 2018 19:15:56 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 10 May 2018 19:15:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 May 2018 19:15:57 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4998e99f884a359784cf8fb4d906c56d0438f650479017ff43d8eedd6b5ff66`  
		Last Modified: Sat, 05 May 2018 03:54:20 GMT  
		Size: 3.3 MB (3314636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948953c743cfae76fab4f0fe381ca356534efac25609abf099d7ff84224ffae4`  
		Last Modified: Sat, 05 May 2018 03:54:22 GMT  
		Size: 16.3 MB (16340237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf9954d79c63ae16485679c03f4d36b4ab29a700b62d944d52d4bc12835bab8`  
		Last Modified: Sat, 05 May 2018 03:54:20 GMT  
		Size: 2.1 MB (2066543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56de327a7f17723f6330952e4ea24fc7ffa28f63962e3ddab5efbf7faba731fc`  
		Last Modified: Thu, 10 May 2018 20:09:41 GMT  
		Size: 3.9 KB (3889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8c4f3de857b977d1220a79fb772c45f34ad05dc2dd26a480e0f9be5e2b0362`  
		Last Modified: Thu, 10 May 2018 20:09:42 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020d87c4fe2da53519cb93f25565f5ea0399ff8db00873c554d409aee2f883b1`  
		Last Modified: Thu, 10 May 2018 20:10:34 GMT  
		Size: 115.1 MB (115055633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905faf5b0d329b676667c62df8fc7346c9b83e4a25d7d4c63c83fe47e7305f52`  
		Last Modified: Thu, 10 May 2018 20:09:41 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
