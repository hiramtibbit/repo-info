<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `plone`

-	[`plone:4`](#plone4)
-	[`plone:4.3`](#plone43)
-	[`plone:4.3.18`](#plone4318)
-	[`plone:4.3.18-alpine`](#plone4318-alpine)
-	[`plone:4.3-alpine`](#plone43-alpine)
-	[`plone:4-alpine`](#plone4-alpine)
-	[`plone:5`](#plone5)
-	[`plone:5.1`](#plone51)
-	[`plone:5.1.4`](#plone514)
-	[`plone:5.1.4-alpine`](#plone514-alpine)
-	[`plone:5.1-alpine`](#plone51-alpine)
-	[`plone:5-alpine`](#plone5-alpine)
-	[`plone:alpine`](#plonealpine)
-	[`plone:latest`](#plonelatest)

## `plone:4`

```console
$ docker pull plone@sha256:c233a8d00d9fc6d45e1d268b06d58e46ad6af6db006a3c4cf596f29fe4c0986f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `plone:4` - linux; amd64

```console
$ docker pull plone@sha256:5afac2b09f17e6d0c84cfd95c1a8d8fecc739b06146780274c29c68212e71215
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150976483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5204794e7b042c1f39a18d71fbc73388eaba9bdfd024d2d59395b669f0bfb22b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 07:17:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 07:17:48 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 08:24:32 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 08:24:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 08:24:40 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 08:24:40 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 08:27:09 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 08:27:09 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 08:27:22 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 08:27:23 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 13:48:05 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sat, 29 Dec 2018 13:48:05 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 13:48:08 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 13:48:08 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 14:00:42 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 14:00:44 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 14:00:45 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 14:00:45 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 14:00:45 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 14:00:45 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 14:00:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 14:00:46 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b2167b8d5af3176a02e24a3b94d2129553c24884ae3fdcdeaa7ed4b2dc9563`  
		Last Modified: Sat, 29 Dec 2018 08:48:53 GMT  
		Size: 2.5 MB (2528136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b044db3f9e1222b97f7dd3178dffe1215baa67f0d870a8628ae05ef69f9b2`  
		Last Modified: Sat, 29 Dec 2018 08:48:56 GMT  
		Size: 17.1 MB (17100661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7356f8556c46a7b6fe3793733377f814a9abde0bcb932149ba9a2cc4cb0ce5f4`  
		Last Modified: Sat, 29 Dec 2018 08:48:53 GMT  
		Size: 2.1 MB (2063050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7892703a2e9db3f8e15da20650696663baff95ac422d3093b9d901f4b2458541`  
		Last Modified: Sat, 29 Dec 2018 14:02:11 GMT  
		Size: 3.9 KB (3885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55bd42e0fa5e8719abe1e5bf4a25317350129c5b4b97b15b65282a3d4157162`  
		Last Modified: Sat, 29 Dec 2018 14:02:11 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd593c24008c98179e772570d79040342f4bb2d98b4eaa2e9bc56f7a769dc967`  
		Last Modified: Sat, 29 Dec 2018 14:02:46 GMT  
		Size: 106.8 MB (106784909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267ff771fabb1dda8e512c8cf935e5c87fee3e25c8476aca56c7f017a0a595a0`  
		Last Modified: Sat, 29 Dec 2018 14:02:11 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4` - linux; arm variant v5

```console
$ docker pull plone@sha256:15685abbc0173d8d6192e31ed4b3abcd72f55c6fd397494ea63e47ddf8be36e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145623202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29ebb0caabfa9b2d8ff219d7c898dc7aa028ff20d699f06366e57625e4a4a0c1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:08:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:08:54 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:11:32 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 12:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 12:11:48 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 12:15:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 12:15:43 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 12:16:10 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 12:16:11 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 15:42:03 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sat, 29 Dec 2018 15:42:04 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 15:42:06 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 15:42:06 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 16:00:33 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 16:00:38 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 16:00:39 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 16:00:39 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 16:00:40 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 16:00:40 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 16:00:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 16:00:41 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c7a64b8477849065dd114de9501d6290f20ffae66048f69f2090e10c2f22f0`  
		Last Modified: Sat, 29 Dec 2018 12:35:53 GMT  
		Size: 2.3 MB (2253692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc32a8ef86925c1f198934da0af3fa6095db1ef472603a62dfad17333c52c080`  
		Last Modified: Sat, 29 Dec 2018 12:35:59 GMT  
		Size: 16.6 MB (16551336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee169e4f12004f6151c061884d06ea74ec8e8d76968250f78b8a8a2c14fa7d6`  
		Last Modified: Sat, 29 Dec 2018 12:35:54 GMT  
		Size: 2.1 MB (2062773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38a5a9e235351d888d21024747b93118b67a0995f3463fbd5f879acd057bdc2`  
		Last Modified: Sat, 29 Dec 2018 16:02:07 GMT  
		Size: 3.9 KB (3927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82b97ed267f5eaab376944dab511b5143a7c1ea6710c92b6e9e3bcdb67808ba`  
		Last Modified: Sat, 29 Dec 2018 16:02:07 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a59171e9ab04224358c8066a04d6ea659ca936da8adcc58f4c9c7bcff46bad`  
		Last Modified: Sat, 29 Dec 2018 16:03:02 GMT  
		Size: 103.6 MB (103580774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bba6242e64604cdd2afa9565c182f609167b784f1d508bacf794b60a22fbd0`  
		Last Modified: Sat, 29 Dec 2018 16:02:07 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4` - linux; arm variant v7

```console
$ docker pull plone@sha256:2eed98f531f28c6ac387922cd6c367ca9c8a98ed230ebd6810b6e3ea9ae70046
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144673949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0df594b5423ec822458ad0b705258e402b8af78e82a87736adda2d8b71c8559a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 15:52:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 15:52:53 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:51:07 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 16:51:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:51:19 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 16:51:19 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 16:54:51 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 16:54:53 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 16:55:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 16:55:18 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 22:17:23 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 16 Nov 2018 22:17:24 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 22:17:25 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 26 Dec 2018 14:16:58 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Wed, 26 Dec 2018 14:32:53 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 26 Dec 2018 14:32:57 GMT
VOLUME [/data]
# Wed, 26 Dec 2018 14:32:57 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Wed, 26 Dec 2018 14:32:58 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 14:32:58 GMT
WORKDIR /plone/instance
# Wed, 26 Dec 2018 14:32:58 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 26 Dec 2018 14:32:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 14:32:59 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b0c49c7dc2d283c04a1f53016ec326c02583c23a4f9f53d3a27e228128e4b8`  
		Last Modified: Fri, 16 Nov 2018 17:20:17 GMT  
		Size: 2.2 MB (2169727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ac064474bf5754caabc399ce93cd81cc0501b923feee69533c08c85e43274b`  
		Last Modified: Fri, 16 Nov 2018 17:20:21 GMT  
		Size: 16.1 MB (16134747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a540e69bb65b21700fae2d1cf4a3ef2d288a52fba9754a4070a77f858c74dcc3`  
		Last Modified: Fri, 16 Nov 2018 17:20:17 GMT  
		Size: 2.1 MB (2062764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fc4c592ad0c006d6f9d35f01572ab04a45206f02b392c9c6c12a798af2d36d`  
		Last Modified: Fri, 16 Nov 2018 22:36:44 GMT  
		Size: 3.9 KB (3929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe79c83acc6c8ce54a1b479e23f803fcac1a3b8c582a237696a5a57d7af1112`  
		Last Modified: Wed, 26 Dec 2018 14:34:17 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f58f6930c113733e4bbf582da39de41ebaa9826fd3a251db4820be84aba3f4`  
		Last Modified: Wed, 26 Dec 2018 14:35:01 GMT  
		Size: 105.0 MB (105029799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c62aeef186986c86f3bf1701abc7e86dd7b5c535159ea7519b6202412c6d70`  
		Last Modified: Wed, 26 Dec 2018 14:34:17 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:06036586833a8269f4583a522bc02c6ca3d418697383867c23f25e91f17d64fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.1 MB (145051284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c61e1995dac040c1b89c9fd66ddb3f2f2b952bd79ca86567924a9507b0fa13`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 20:39:43 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 22:25:50 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 22:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:26:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 22:26:10 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 22:36:13 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 22:36:14 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 22:37:00 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 22:37:00 GMT
CMD ["python2"]
# Sat, 17 Nov 2018 14:21:47 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sat, 17 Nov 2018 14:21:48 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 17 Nov 2018 14:21:52 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 17 Nov 2018 14:21:53 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 17 Nov 2018 14:52:30 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 17 Nov 2018 14:52:33 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 14:52:35 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sat, 17 Nov 2018 14:52:36 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 14:52:37 GMT
WORKDIR /plone/instance
# Sat, 17 Nov 2018 14:52:38 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 17 Nov 2018 14:52:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Nov 2018 14:52:44 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2400828ed5f7de6b4abe19a9b6a1da87997de14ce3043dd5a306bb1a25a9d6`  
		Last Modified: Fri, 16 Nov 2018 23:14:59 GMT  
		Size: 2.2 MB (2225780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7ef7535e096ee1958f3440104631badd6af8280fe3bb5fc4d906328fd6c4be`  
		Last Modified: Fri, 16 Nov 2018 23:15:05 GMT  
		Size: 16.9 MB (16866351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694e62d3123beac1f0d6be9ddf05c0928dc49e35f43e15d6451efbe260390ace`  
		Last Modified: Fri, 16 Nov 2018 23:14:59 GMT  
		Size: 2.1 MB (2063967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e270109f267ca57a76027a4f826a0472a2a212d67e50b436c4689ca8e1d619f`  
		Last Modified: Sat, 17 Nov 2018 15:23:21 GMT  
		Size: 3.9 KB (3895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bfad6abc8bb3fe20984261d5b7759d98811e853cc8ee988f0402fb9481bf19a`  
		Last Modified: Sat, 17 Nov 2018 15:23:21 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c8c0a133cc8d6c45d442f6232c1dc347c972c0ebfce9ff2a68e3d664d9843a`  
		Last Modified: Sat, 17 Nov 2018 15:24:11 GMT  
		Size: 103.6 MB (103557054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8632332ef7ff286436c1a0ce0d395745d85a1f7ca862c52728276374431711`  
		Last Modified: Sat, 17 Nov 2018 15:23:21 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4` - linux; 386

```console
$ docker pull plone@sha256:6bd79ab773ec49b0828a033507911ec5bd656ad182914ebee6f44d6021088b06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151529151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0fce07b38f6dee84a96c4b00ee1966ae43878d95cf8943c15fa5f56d2d17c0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:20:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 03:20:07 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:53:52 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 17 Nov 2018 04:54:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:54:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 17 Nov 2018 04:54:06 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 17 Nov 2018 04:58:20 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 17 Nov 2018 04:58:20 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 04:58:42 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 04:58:42 GMT
CMD ["python2"]
# Sun, 18 Nov 2018 00:17:19 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sun, 18 Nov 2018 00:17:19 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sun, 18 Nov 2018 00:17:20 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sun, 18 Nov 2018 00:17:20 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sun, 18 Nov 2018 00:24:08 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sun, 18 Nov 2018 00:24:10 GMT
VOLUME [/data]
# Sun, 18 Nov 2018 00:24:10 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sun, 18 Nov 2018 00:24:11 GMT
EXPOSE 8080/tcp
# Sun, 18 Nov 2018 00:24:11 GMT
WORKDIR /plone/instance
# Sun, 18 Nov 2018 00:24:11 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sun, 18 Nov 2018 00:24:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Nov 2018 00:24:12 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d4b34c494bfcb09a0f6ae4e6fb6193e0c1a470639d5fe83c7b3938c8dbb638`  
		Last Modified: Sat, 17 Nov 2018 05:59:22 GMT  
		Size: 2.5 MB (2517432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9e73c9c882f3982c9ed5981bd467599bcc532b5835619f16e458c01fa0945c`  
		Last Modified: Sat, 17 Nov 2018 05:59:32 GMT  
		Size: 16.3 MB (16297967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16471a653122b7fe75047706a10aef16870aaaac4dbc2fe90e699bd0dc8792e2`  
		Last Modified: Sat, 17 Nov 2018 05:59:22 GMT  
		Size: 2.1 MB (2063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1de4d9fe4e0eb90dfb31c6c13d34713f8561df6285924b63f178bc82a527870`  
		Last Modified: Sun, 18 Nov 2018 00:37:36 GMT  
		Size: 3.9 KB (3880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1edb8552d373016eb4dc3d8ca8c3296bcbd7bd0dad54079098441d685bf1149f`  
		Last Modified: Sun, 18 Nov 2018 00:37:34 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8130e86df836de8a159c58d84d04557f757a61276ec63788134de6dc45f69f9c`  
		Last Modified: Sun, 18 Nov 2018 00:38:05 GMT  
		Size: 107.5 MB (107517035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6146745c95726acc2c3ef94f25070089395b37c775f1e1ee47c621b1abe72647`  
		Last Modified: Sun, 18 Nov 2018 00:37:34 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4` - linux; ppc64le

```console
$ docker pull plone@sha256:207553485bcda36be93c645e39046901f49768c1411cda490a7ce11185370467
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148778223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5031e7b655fc5414b4ac2554630c2b25b7ec35470edcc29b5d67200869eaa4cf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:32:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:32:26 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 11:16:38 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 11:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:16:58 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 11:17:00 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 11:22:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 11:22:04 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 11:22:35 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 11:22:38 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 16:32:55 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sat, 29 Dec 2018 16:32:57 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 16:33:06 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 16:33:08 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 16:51:55 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 16:52:04 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 16:52:05 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 16:52:10 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 16:52:17 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 16:52:22 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 16:52:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 16:52:31 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd25594913d429a5d59ff42f478d86a78d7ee251b3fa52a347797f224ff7061`  
		Last Modified: Sat, 29 Dec 2018 11:26:52 GMT  
		Size: 2.2 MB (2189372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa98682633ac3189894db1e18de5580a4146b2c0d34ca088b0f49e1d76efb7b8`  
		Last Modified: Sat, 29 Dec 2018 11:26:55 GMT  
		Size: 17.3 MB (17280695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3654b3847f1035f3ba7007044ad302aaab0d8dd4fff4186828017c4f1e09b383`  
		Last Modified: Sat, 29 Dec 2018 11:26:53 GMT  
		Size: 2.1 MB (2063574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f15113a8721fb34ddec79bb8617edc282f41783310bb6625413a3bd14a00864`  
		Last Modified: Sat, 29 Dec 2018 16:54:19 GMT  
		Size: 3.9 KB (3941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a652bcf09f7332e2049cef57cb5abeddc4497ffd623f68ab47ced31ea947a678`  
		Last Modified: Sat, 29 Dec 2018 16:54:19 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f23d5a7d700926b216ace32a75f611839cd1d13effa3ae115c906fcb92ea641`  
		Last Modified: Sat, 29 Dec 2018 16:56:03 GMT  
		Size: 104.5 MB (104490889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45262947437b03980b6181d43dd2bb879734eee2660e618a5113d621a79ce10e`  
		Last Modified: Sat, 29 Dec 2018 16:54:19 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3`

```console
$ docker pull plone@sha256:c233a8d00d9fc6d45e1d268b06d58e46ad6af6db006a3c4cf596f29fe4c0986f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `plone:4.3` - linux; amd64

```console
$ docker pull plone@sha256:5afac2b09f17e6d0c84cfd95c1a8d8fecc739b06146780274c29c68212e71215
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150976483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5204794e7b042c1f39a18d71fbc73388eaba9bdfd024d2d59395b669f0bfb22b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 07:17:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 07:17:48 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 08:24:32 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 08:24:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 08:24:40 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 08:24:40 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 08:27:09 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 08:27:09 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 08:27:22 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 08:27:23 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 13:48:05 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sat, 29 Dec 2018 13:48:05 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 13:48:08 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 13:48:08 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 14:00:42 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 14:00:44 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 14:00:45 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 14:00:45 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 14:00:45 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 14:00:45 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 14:00:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 14:00:46 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b2167b8d5af3176a02e24a3b94d2129553c24884ae3fdcdeaa7ed4b2dc9563`  
		Last Modified: Sat, 29 Dec 2018 08:48:53 GMT  
		Size: 2.5 MB (2528136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b044db3f9e1222b97f7dd3178dffe1215baa67f0d870a8628ae05ef69f9b2`  
		Last Modified: Sat, 29 Dec 2018 08:48:56 GMT  
		Size: 17.1 MB (17100661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7356f8556c46a7b6fe3793733377f814a9abde0bcb932149ba9a2cc4cb0ce5f4`  
		Last Modified: Sat, 29 Dec 2018 08:48:53 GMT  
		Size: 2.1 MB (2063050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7892703a2e9db3f8e15da20650696663baff95ac422d3093b9d901f4b2458541`  
		Last Modified: Sat, 29 Dec 2018 14:02:11 GMT  
		Size: 3.9 KB (3885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55bd42e0fa5e8719abe1e5bf4a25317350129c5b4b97b15b65282a3d4157162`  
		Last Modified: Sat, 29 Dec 2018 14:02:11 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd593c24008c98179e772570d79040342f4bb2d98b4eaa2e9bc56f7a769dc967`  
		Last Modified: Sat, 29 Dec 2018 14:02:46 GMT  
		Size: 106.8 MB (106784909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267ff771fabb1dda8e512c8cf935e5c87fee3e25c8476aca56c7f017a0a595a0`  
		Last Modified: Sat, 29 Dec 2018 14:02:11 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3` - linux; arm variant v5

```console
$ docker pull plone@sha256:15685abbc0173d8d6192e31ed4b3abcd72f55c6fd397494ea63e47ddf8be36e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145623202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29ebb0caabfa9b2d8ff219d7c898dc7aa028ff20d699f06366e57625e4a4a0c1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:08:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:08:54 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:11:32 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 12:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 12:11:48 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 12:15:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 12:15:43 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 12:16:10 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 12:16:11 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 15:42:03 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sat, 29 Dec 2018 15:42:04 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 15:42:06 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 15:42:06 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 16:00:33 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 16:00:38 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 16:00:39 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 16:00:39 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 16:00:40 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 16:00:40 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 16:00:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 16:00:41 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c7a64b8477849065dd114de9501d6290f20ffae66048f69f2090e10c2f22f0`  
		Last Modified: Sat, 29 Dec 2018 12:35:53 GMT  
		Size: 2.3 MB (2253692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc32a8ef86925c1f198934da0af3fa6095db1ef472603a62dfad17333c52c080`  
		Last Modified: Sat, 29 Dec 2018 12:35:59 GMT  
		Size: 16.6 MB (16551336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee169e4f12004f6151c061884d06ea74ec8e8d76968250f78b8a8a2c14fa7d6`  
		Last Modified: Sat, 29 Dec 2018 12:35:54 GMT  
		Size: 2.1 MB (2062773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38a5a9e235351d888d21024747b93118b67a0995f3463fbd5f879acd057bdc2`  
		Last Modified: Sat, 29 Dec 2018 16:02:07 GMT  
		Size: 3.9 KB (3927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82b97ed267f5eaab376944dab511b5143a7c1ea6710c92b6e9e3bcdb67808ba`  
		Last Modified: Sat, 29 Dec 2018 16:02:07 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a59171e9ab04224358c8066a04d6ea659ca936da8adcc58f4c9c7bcff46bad`  
		Last Modified: Sat, 29 Dec 2018 16:03:02 GMT  
		Size: 103.6 MB (103580774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bba6242e64604cdd2afa9565c182f609167b784f1d508bacf794b60a22fbd0`  
		Last Modified: Sat, 29 Dec 2018 16:02:07 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3` - linux; arm variant v7

```console
$ docker pull plone@sha256:2eed98f531f28c6ac387922cd6c367ca9c8a98ed230ebd6810b6e3ea9ae70046
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144673949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0df594b5423ec822458ad0b705258e402b8af78e82a87736adda2d8b71c8559a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 15:52:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 15:52:53 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:51:07 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 16:51:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:51:19 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 16:51:19 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 16:54:51 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 16:54:53 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 16:55:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 16:55:18 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 22:17:23 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 16 Nov 2018 22:17:24 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 22:17:25 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 26 Dec 2018 14:16:58 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Wed, 26 Dec 2018 14:32:53 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 26 Dec 2018 14:32:57 GMT
VOLUME [/data]
# Wed, 26 Dec 2018 14:32:57 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Wed, 26 Dec 2018 14:32:58 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 14:32:58 GMT
WORKDIR /plone/instance
# Wed, 26 Dec 2018 14:32:58 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 26 Dec 2018 14:32:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 14:32:59 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b0c49c7dc2d283c04a1f53016ec326c02583c23a4f9f53d3a27e228128e4b8`  
		Last Modified: Fri, 16 Nov 2018 17:20:17 GMT  
		Size: 2.2 MB (2169727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ac064474bf5754caabc399ce93cd81cc0501b923feee69533c08c85e43274b`  
		Last Modified: Fri, 16 Nov 2018 17:20:21 GMT  
		Size: 16.1 MB (16134747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a540e69bb65b21700fae2d1cf4a3ef2d288a52fba9754a4070a77f858c74dcc3`  
		Last Modified: Fri, 16 Nov 2018 17:20:17 GMT  
		Size: 2.1 MB (2062764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fc4c592ad0c006d6f9d35f01572ab04a45206f02b392c9c6c12a798af2d36d`  
		Last Modified: Fri, 16 Nov 2018 22:36:44 GMT  
		Size: 3.9 KB (3929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe79c83acc6c8ce54a1b479e23f803fcac1a3b8c582a237696a5a57d7af1112`  
		Last Modified: Wed, 26 Dec 2018 14:34:17 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f58f6930c113733e4bbf582da39de41ebaa9826fd3a251db4820be84aba3f4`  
		Last Modified: Wed, 26 Dec 2018 14:35:01 GMT  
		Size: 105.0 MB (105029799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c62aeef186986c86f3bf1701abc7e86dd7b5c535159ea7519b6202412c6d70`  
		Last Modified: Wed, 26 Dec 2018 14:34:17 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:06036586833a8269f4583a522bc02c6ca3d418697383867c23f25e91f17d64fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.1 MB (145051284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c61e1995dac040c1b89c9fd66ddb3f2f2b952bd79ca86567924a9507b0fa13`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 20:39:43 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 22:25:50 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 22:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:26:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 22:26:10 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 22:36:13 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 22:36:14 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 22:37:00 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 22:37:00 GMT
CMD ["python2"]
# Sat, 17 Nov 2018 14:21:47 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sat, 17 Nov 2018 14:21:48 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 17 Nov 2018 14:21:52 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 17 Nov 2018 14:21:53 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 17 Nov 2018 14:52:30 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 17 Nov 2018 14:52:33 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 14:52:35 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sat, 17 Nov 2018 14:52:36 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 14:52:37 GMT
WORKDIR /plone/instance
# Sat, 17 Nov 2018 14:52:38 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 17 Nov 2018 14:52:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Nov 2018 14:52:44 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2400828ed5f7de6b4abe19a9b6a1da87997de14ce3043dd5a306bb1a25a9d6`  
		Last Modified: Fri, 16 Nov 2018 23:14:59 GMT  
		Size: 2.2 MB (2225780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7ef7535e096ee1958f3440104631badd6af8280fe3bb5fc4d906328fd6c4be`  
		Last Modified: Fri, 16 Nov 2018 23:15:05 GMT  
		Size: 16.9 MB (16866351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694e62d3123beac1f0d6be9ddf05c0928dc49e35f43e15d6451efbe260390ace`  
		Last Modified: Fri, 16 Nov 2018 23:14:59 GMT  
		Size: 2.1 MB (2063967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e270109f267ca57a76027a4f826a0472a2a212d67e50b436c4689ca8e1d619f`  
		Last Modified: Sat, 17 Nov 2018 15:23:21 GMT  
		Size: 3.9 KB (3895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bfad6abc8bb3fe20984261d5b7759d98811e853cc8ee988f0402fb9481bf19a`  
		Last Modified: Sat, 17 Nov 2018 15:23:21 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c8c0a133cc8d6c45d442f6232c1dc347c972c0ebfce9ff2a68e3d664d9843a`  
		Last Modified: Sat, 17 Nov 2018 15:24:11 GMT  
		Size: 103.6 MB (103557054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8632332ef7ff286436c1a0ce0d395745d85a1f7ca862c52728276374431711`  
		Last Modified: Sat, 17 Nov 2018 15:23:21 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3` - linux; 386

```console
$ docker pull plone@sha256:6bd79ab773ec49b0828a033507911ec5bd656ad182914ebee6f44d6021088b06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151529151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0fce07b38f6dee84a96c4b00ee1966ae43878d95cf8943c15fa5f56d2d17c0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:20:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 03:20:07 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:53:52 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 17 Nov 2018 04:54:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:54:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 17 Nov 2018 04:54:06 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 17 Nov 2018 04:58:20 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 17 Nov 2018 04:58:20 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 04:58:42 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 04:58:42 GMT
CMD ["python2"]
# Sun, 18 Nov 2018 00:17:19 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sun, 18 Nov 2018 00:17:19 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sun, 18 Nov 2018 00:17:20 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sun, 18 Nov 2018 00:17:20 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sun, 18 Nov 2018 00:24:08 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sun, 18 Nov 2018 00:24:10 GMT
VOLUME [/data]
# Sun, 18 Nov 2018 00:24:10 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sun, 18 Nov 2018 00:24:11 GMT
EXPOSE 8080/tcp
# Sun, 18 Nov 2018 00:24:11 GMT
WORKDIR /plone/instance
# Sun, 18 Nov 2018 00:24:11 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sun, 18 Nov 2018 00:24:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Nov 2018 00:24:12 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d4b34c494bfcb09a0f6ae4e6fb6193e0c1a470639d5fe83c7b3938c8dbb638`  
		Last Modified: Sat, 17 Nov 2018 05:59:22 GMT  
		Size: 2.5 MB (2517432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9e73c9c882f3982c9ed5981bd467599bcc532b5835619f16e458c01fa0945c`  
		Last Modified: Sat, 17 Nov 2018 05:59:32 GMT  
		Size: 16.3 MB (16297967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16471a653122b7fe75047706a10aef16870aaaac4dbc2fe90e699bd0dc8792e2`  
		Last Modified: Sat, 17 Nov 2018 05:59:22 GMT  
		Size: 2.1 MB (2063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1de4d9fe4e0eb90dfb31c6c13d34713f8561df6285924b63f178bc82a527870`  
		Last Modified: Sun, 18 Nov 2018 00:37:36 GMT  
		Size: 3.9 KB (3880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1edb8552d373016eb4dc3d8ca8c3296bcbd7bd0dad54079098441d685bf1149f`  
		Last Modified: Sun, 18 Nov 2018 00:37:34 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8130e86df836de8a159c58d84d04557f757a61276ec63788134de6dc45f69f9c`  
		Last Modified: Sun, 18 Nov 2018 00:38:05 GMT  
		Size: 107.5 MB (107517035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6146745c95726acc2c3ef94f25070089395b37c775f1e1ee47c621b1abe72647`  
		Last Modified: Sun, 18 Nov 2018 00:37:34 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3` - linux; ppc64le

```console
$ docker pull plone@sha256:207553485bcda36be93c645e39046901f49768c1411cda490a7ce11185370467
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148778223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5031e7b655fc5414b4ac2554630c2b25b7ec35470edcc29b5d67200869eaa4cf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:32:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:32:26 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 11:16:38 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 11:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:16:58 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 11:17:00 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 11:22:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 11:22:04 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 11:22:35 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 11:22:38 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 16:32:55 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sat, 29 Dec 2018 16:32:57 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 16:33:06 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 16:33:08 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 16:51:55 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 16:52:04 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 16:52:05 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 16:52:10 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 16:52:17 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 16:52:22 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 16:52:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 16:52:31 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd25594913d429a5d59ff42f478d86a78d7ee251b3fa52a347797f224ff7061`  
		Last Modified: Sat, 29 Dec 2018 11:26:52 GMT  
		Size: 2.2 MB (2189372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa98682633ac3189894db1e18de5580a4146b2c0d34ca088b0f49e1d76efb7b8`  
		Last Modified: Sat, 29 Dec 2018 11:26:55 GMT  
		Size: 17.3 MB (17280695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3654b3847f1035f3ba7007044ad302aaab0d8dd4fff4186828017c4f1e09b383`  
		Last Modified: Sat, 29 Dec 2018 11:26:53 GMT  
		Size: 2.1 MB (2063574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f15113a8721fb34ddec79bb8617edc282f41783310bb6625413a3bd14a00864`  
		Last Modified: Sat, 29 Dec 2018 16:54:19 GMT  
		Size: 3.9 KB (3941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a652bcf09f7332e2049cef57cb5abeddc4497ffd623f68ab47ced31ea947a678`  
		Last Modified: Sat, 29 Dec 2018 16:54:19 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f23d5a7d700926b216ace32a75f611839cd1d13effa3ae115c906fcb92ea641`  
		Last Modified: Sat, 29 Dec 2018 16:56:03 GMT  
		Size: 104.5 MB (104490889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45262947437b03980b6181d43dd2bb879734eee2660e618a5113d621a79ce10e`  
		Last Modified: Sat, 29 Dec 2018 16:54:19 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.18`

```console
$ docker pull plone@sha256:c233a8d00d9fc6d45e1d268b06d58e46ad6af6db006a3c4cf596f29fe4c0986f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `plone:4.3.18` - linux; amd64

```console
$ docker pull plone@sha256:5afac2b09f17e6d0c84cfd95c1a8d8fecc739b06146780274c29c68212e71215
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150976483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5204794e7b042c1f39a18d71fbc73388eaba9bdfd024d2d59395b669f0bfb22b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 07:17:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 07:17:48 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 08:24:32 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 08:24:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 08:24:40 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 08:24:40 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 08:27:09 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 08:27:09 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 08:27:22 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 08:27:23 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 13:48:05 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sat, 29 Dec 2018 13:48:05 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 13:48:08 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 13:48:08 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 14:00:42 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 14:00:44 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 14:00:45 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 14:00:45 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 14:00:45 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 14:00:45 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 14:00:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 14:00:46 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b2167b8d5af3176a02e24a3b94d2129553c24884ae3fdcdeaa7ed4b2dc9563`  
		Last Modified: Sat, 29 Dec 2018 08:48:53 GMT  
		Size: 2.5 MB (2528136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b044db3f9e1222b97f7dd3178dffe1215baa67f0d870a8628ae05ef69f9b2`  
		Last Modified: Sat, 29 Dec 2018 08:48:56 GMT  
		Size: 17.1 MB (17100661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7356f8556c46a7b6fe3793733377f814a9abde0bcb932149ba9a2cc4cb0ce5f4`  
		Last Modified: Sat, 29 Dec 2018 08:48:53 GMT  
		Size: 2.1 MB (2063050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7892703a2e9db3f8e15da20650696663baff95ac422d3093b9d901f4b2458541`  
		Last Modified: Sat, 29 Dec 2018 14:02:11 GMT  
		Size: 3.9 KB (3885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55bd42e0fa5e8719abe1e5bf4a25317350129c5b4b97b15b65282a3d4157162`  
		Last Modified: Sat, 29 Dec 2018 14:02:11 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd593c24008c98179e772570d79040342f4bb2d98b4eaa2e9bc56f7a769dc967`  
		Last Modified: Sat, 29 Dec 2018 14:02:46 GMT  
		Size: 106.8 MB (106784909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267ff771fabb1dda8e512c8cf935e5c87fee3e25c8476aca56c7f017a0a595a0`  
		Last Modified: Sat, 29 Dec 2018 14:02:11 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.18` - linux; arm variant v5

```console
$ docker pull plone@sha256:15685abbc0173d8d6192e31ed4b3abcd72f55c6fd397494ea63e47ddf8be36e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145623202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29ebb0caabfa9b2d8ff219d7c898dc7aa028ff20d699f06366e57625e4a4a0c1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:08:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:08:54 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:11:32 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 12:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 12:11:48 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 12:15:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 12:15:43 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 12:16:10 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 12:16:11 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 15:42:03 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sat, 29 Dec 2018 15:42:04 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 15:42:06 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 15:42:06 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 16:00:33 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 16:00:38 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 16:00:39 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 16:00:39 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 16:00:40 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 16:00:40 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 16:00:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 16:00:41 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c7a64b8477849065dd114de9501d6290f20ffae66048f69f2090e10c2f22f0`  
		Last Modified: Sat, 29 Dec 2018 12:35:53 GMT  
		Size: 2.3 MB (2253692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc32a8ef86925c1f198934da0af3fa6095db1ef472603a62dfad17333c52c080`  
		Last Modified: Sat, 29 Dec 2018 12:35:59 GMT  
		Size: 16.6 MB (16551336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee169e4f12004f6151c061884d06ea74ec8e8d76968250f78b8a8a2c14fa7d6`  
		Last Modified: Sat, 29 Dec 2018 12:35:54 GMT  
		Size: 2.1 MB (2062773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38a5a9e235351d888d21024747b93118b67a0995f3463fbd5f879acd057bdc2`  
		Last Modified: Sat, 29 Dec 2018 16:02:07 GMT  
		Size: 3.9 KB (3927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82b97ed267f5eaab376944dab511b5143a7c1ea6710c92b6e9e3bcdb67808ba`  
		Last Modified: Sat, 29 Dec 2018 16:02:07 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a59171e9ab04224358c8066a04d6ea659ca936da8adcc58f4c9c7bcff46bad`  
		Last Modified: Sat, 29 Dec 2018 16:03:02 GMT  
		Size: 103.6 MB (103580774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bba6242e64604cdd2afa9565c182f609167b784f1d508bacf794b60a22fbd0`  
		Last Modified: Sat, 29 Dec 2018 16:02:07 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.18` - linux; arm variant v7

```console
$ docker pull plone@sha256:2eed98f531f28c6ac387922cd6c367ca9c8a98ed230ebd6810b6e3ea9ae70046
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144673949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0df594b5423ec822458ad0b705258e402b8af78e82a87736adda2d8b71c8559a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 15:52:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 15:52:53 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:51:07 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 16:51:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:51:19 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 16:51:19 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 16:54:51 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 16:54:53 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 16:55:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 16:55:18 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 22:17:23 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 16 Nov 2018 22:17:24 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 22:17:25 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 26 Dec 2018 14:16:58 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Wed, 26 Dec 2018 14:32:53 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 26 Dec 2018 14:32:57 GMT
VOLUME [/data]
# Wed, 26 Dec 2018 14:32:57 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Wed, 26 Dec 2018 14:32:58 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 14:32:58 GMT
WORKDIR /plone/instance
# Wed, 26 Dec 2018 14:32:58 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 26 Dec 2018 14:32:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 14:32:59 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b0c49c7dc2d283c04a1f53016ec326c02583c23a4f9f53d3a27e228128e4b8`  
		Last Modified: Fri, 16 Nov 2018 17:20:17 GMT  
		Size: 2.2 MB (2169727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ac064474bf5754caabc399ce93cd81cc0501b923feee69533c08c85e43274b`  
		Last Modified: Fri, 16 Nov 2018 17:20:21 GMT  
		Size: 16.1 MB (16134747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a540e69bb65b21700fae2d1cf4a3ef2d288a52fba9754a4070a77f858c74dcc3`  
		Last Modified: Fri, 16 Nov 2018 17:20:17 GMT  
		Size: 2.1 MB (2062764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fc4c592ad0c006d6f9d35f01572ab04a45206f02b392c9c6c12a798af2d36d`  
		Last Modified: Fri, 16 Nov 2018 22:36:44 GMT  
		Size: 3.9 KB (3929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe79c83acc6c8ce54a1b479e23f803fcac1a3b8c582a237696a5a57d7af1112`  
		Last Modified: Wed, 26 Dec 2018 14:34:17 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f58f6930c113733e4bbf582da39de41ebaa9826fd3a251db4820be84aba3f4`  
		Last Modified: Wed, 26 Dec 2018 14:35:01 GMT  
		Size: 105.0 MB (105029799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c62aeef186986c86f3bf1701abc7e86dd7b5c535159ea7519b6202412c6d70`  
		Last Modified: Wed, 26 Dec 2018 14:34:17 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.18` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:06036586833a8269f4583a522bc02c6ca3d418697383867c23f25e91f17d64fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.1 MB (145051284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c61e1995dac040c1b89c9fd66ddb3f2f2b952bd79ca86567924a9507b0fa13`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 20:39:43 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 22:25:50 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 22:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:26:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 22:26:10 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 22:36:13 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 22:36:14 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 22:37:00 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 22:37:00 GMT
CMD ["python2"]
# Sat, 17 Nov 2018 14:21:47 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sat, 17 Nov 2018 14:21:48 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 17 Nov 2018 14:21:52 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 17 Nov 2018 14:21:53 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 17 Nov 2018 14:52:30 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 17 Nov 2018 14:52:33 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 14:52:35 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sat, 17 Nov 2018 14:52:36 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 14:52:37 GMT
WORKDIR /plone/instance
# Sat, 17 Nov 2018 14:52:38 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 17 Nov 2018 14:52:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Nov 2018 14:52:44 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2400828ed5f7de6b4abe19a9b6a1da87997de14ce3043dd5a306bb1a25a9d6`  
		Last Modified: Fri, 16 Nov 2018 23:14:59 GMT  
		Size: 2.2 MB (2225780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7ef7535e096ee1958f3440104631badd6af8280fe3bb5fc4d906328fd6c4be`  
		Last Modified: Fri, 16 Nov 2018 23:15:05 GMT  
		Size: 16.9 MB (16866351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694e62d3123beac1f0d6be9ddf05c0928dc49e35f43e15d6451efbe260390ace`  
		Last Modified: Fri, 16 Nov 2018 23:14:59 GMT  
		Size: 2.1 MB (2063967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e270109f267ca57a76027a4f826a0472a2a212d67e50b436c4689ca8e1d619f`  
		Last Modified: Sat, 17 Nov 2018 15:23:21 GMT  
		Size: 3.9 KB (3895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bfad6abc8bb3fe20984261d5b7759d98811e853cc8ee988f0402fb9481bf19a`  
		Last Modified: Sat, 17 Nov 2018 15:23:21 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c8c0a133cc8d6c45d442f6232c1dc347c972c0ebfce9ff2a68e3d664d9843a`  
		Last Modified: Sat, 17 Nov 2018 15:24:11 GMT  
		Size: 103.6 MB (103557054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8632332ef7ff286436c1a0ce0d395745d85a1f7ca862c52728276374431711`  
		Last Modified: Sat, 17 Nov 2018 15:23:21 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.18` - linux; 386

```console
$ docker pull plone@sha256:6bd79ab773ec49b0828a033507911ec5bd656ad182914ebee6f44d6021088b06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151529151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0fce07b38f6dee84a96c4b00ee1966ae43878d95cf8943c15fa5f56d2d17c0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:20:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 03:20:07 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:53:52 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 17 Nov 2018 04:54:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:54:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 17 Nov 2018 04:54:06 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 17 Nov 2018 04:58:20 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 17 Nov 2018 04:58:20 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 04:58:42 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 04:58:42 GMT
CMD ["python2"]
# Sun, 18 Nov 2018 00:17:19 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sun, 18 Nov 2018 00:17:19 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sun, 18 Nov 2018 00:17:20 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sun, 18 Nov 2018 00:17:20 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sun, 18 Nov 2018 00:24:08 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sun, 18 Nov 2018 00:24:10 GMT
VOLUME [/data]
# Sun, 18 Nov 2018 00:24:10 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sun, 18 Nov 2018 00:24:11 GMT
EXPOSE 8080/tcp
# Sun, 18 Nov 2018 00:24:11 GMT
WORKDIR /plone/instance
# Sun, 18 Nov 2018 00:24:11 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sun, 18 Nov 2018 00:24:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Nov 2018 00:24:12 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d4b34c494bfcb09a0f6ae4e6fb6193e0c1a470639d5fe83c7b3938c8dbb638`  
		Last Modified: Sat, 17 Nov 2018 05:59:22 GMT  
		Size: 2.5 MB (2517432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9e73c9c882f3982c9ed5981bd467599bcc532b5835619f16e458c01fa0945c`  
		Last Modified: Sat, 17 Nov 2018 05:59:32 GMT  
		Size: 16.3 MB (16297967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16471a653122b7fe75047706a10aef16870aaaac4dbc2fe90e699bd0dc8792e2`  
		Last Modified: Sat, 17 Nov 2018 05:59:22 GMT  
		Size: 2.1 MB (2063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1de4d9fe4e0eb90dfb31c6c13d34713f8561df6285924b63f178bc82a527870`  
		Last Modified: Sun, 18 Nov 2018 00:37:36 GMT  
		Size: 3.9 KB (3880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1edb8552d373016eb4dc3d8ca8c3296bcbd7bd0dad54079098441d685bf1149f`  
		Last Modified: Sun, 18 Nov 2018 00:37:34 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8130e86df836de8a159c58d84d04557f757a61276ec63788134de6dc45f69f9c`  
		Last Modified: Sun, 18 Nov 2018 00:38:05 GMT  
		Size: 107.5 MB (107517035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6146745c95726acc2c3ef94f25070089395b37c775f1e1ee47c621b1abe72647`  
		Last Modified: Sun, 18 Nov 2018 00:37:34 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.18` - linux; ppc64le

```console
$ docker pull plone@sha256:207553485bcda36be93c645e39046901f49768c1411cda490a7ce11185370467
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148778223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5031e7b655fc5414b4ac2554630c2b25b7ec35470edcc29b5d67200869eaa4cf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:32:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:32:26 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 11:16:38 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 11:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:16:58 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 11:17:00 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 11:22:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 11:22:04 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 11:22:35 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 11:22:38 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 16:32:55 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sat, 29 Dec 2018 16:32:57 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 16:33:06 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 16:33:08 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 16:51:55 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 16:52:04 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 16:52:05 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 16:52:10 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 16:52:17 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 16:52:22 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 16:52:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 16:52:31 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd25594913d429a5d59ff42f478d86a78d7ee251b3fa52a347797f224ff7061`  
		Last Modified: Sat, 29 Dec 2018 11:26:52 GMT  
		Size: 2.2 MB (2189372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa98682633ac3189894db1e18de5580a4146b2c0d34ca088b0f49e1d76efb7b8`  
		Last Modified: Sat, 29 Dec 2018 11:26:55 GMT  
		Size: 17.3 MB (17280695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3654b3847f1035f3ba7007044ad302aaab0d8dd4fff4186828017c4f1e09b383`  
		Last Modified: Sat, 29 Dec 2018 11:26:53 GMT  
		Size: 2.1 MB (2063574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f15113a8721fb34ddec79bb8617edc282f41783310bb6625413a3bd14a00864`  
		Last Modified: Sat, 29 Dec 2018 16:54:19 GMT  
		Size: 3.9 KB (3941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a652bcf09f7332e2049cef57cb5abeddc4497ffd623f68ab47ced31ea947a678`  
		Last Modified: Sat, 29 Dec 2018 16:54:19 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f23d5a7d700926b216ace32a75f611839cd1d13effa3ae115c906fcb92ea641`  
		Last Modified: Sat, 29 Dec 2018 16:56:03 GMT  
		Size: 104.5 MB (104490889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45262947437b03980b6181d43dd2bb879734eee2660e618a5113d621a79ce10e`  
		Last Modified: Sat, 29 Dec 2018 16:54:19 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.18-alpine`

```console
$ docker pull plone@sha256:54d6605a68f7385f61a990c9cef01e0bb9c4f5c7f0a3926b430af545a19b3e63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `plone:4.3.18-alpine` - linux; amd64

```console
$ docker pull plone@sha256:7fd2ef1ab56787205e12371ec51bd1a7728c3e6b94b7cbd18b443d3ee3d3a534
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.7 MB (100716414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb9a02dd3b7f221112d932e24115e697f0f4de15824ff9b6352fa3704a56d0b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 03:24:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 03:24:33 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 03:53:19 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 03:53:21 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 03:53:21 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 03:53:21 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 03:55:18 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 03:55:19 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 03:55:23 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 03:55:23 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 06:17:10 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 21 Dec 2018 06:17:10 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 06:17:11 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 06:17:11 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 06:26:44 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 06:26:45 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 06:26:45 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 06:26:45 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 06:26:45 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 06:26:45 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 06:26:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 06:26:46 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa45741b61edafb651985a8048ab8aa692e4a28b6350aa5e38f421997903da0`  
		Last Modified: Fri, 21 Dec 2018 04:00:13 GMT  
		Size: 308.5 KB (308484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc54ee2e6f3bccba78ccf007308d383f8bb9c78bf1a049b9c5704e578d064df`  
		Last Modified: Fri, 21 Dec 2018 04:00:19 GMT  
		Size: 17.5 MB (17546512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d994f02f15e25ef9cb3becc29fffc27d771a90c074d33e5bba5ee44096dbf65`  
		Last Modified: Fri, 21 Dec 2018 04:00:13 GMT  
		Size: 1.8 MB (1779886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca93f300ffa4d41975ecbe2d642b2001eb0e99d94a02938e62a2feb429093012`  
		Last Modified: Fri, 21 Dec 2018 06:27:41 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16eded276bb81a5f8c98b3be096ea967f984feb09912d2215a84ec5213b48c1`  
		Last Modified: Fri, 21 Dec 2018 06:27:40 GMT  
		Size: 665.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01894d849bc799cd241f677807cd0f8072580c135384a37a8e1a00c47b80cd65`  
		Last Modified: Fri, 21 Dec 2018 06:28:00 GMT  
		Size: 79.0 MB (78970133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dc6ef5eddf94feae72e4efbce49d2f487e9e5df976bde4cccc8aa8468d1791`  
		Last Modified: Fri, 21 Dec 2018 06:27:40 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.18-alpine` - linux; arm variant v6

```console
$ docker pull plone@sha256:149593477a56389f83cebad653f8a1b4df310ab0fa6efe26da30740d9138472a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.4 MB (99421741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0683af2266c89aac211233ebdb072bea8d1ace084b9606b9f1d9f8d4d7cc64ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:41 GMT
ADD file:49a7d389086046d6fa37e72b7f9dc0c3b1fa155b694554609ed2c95a5504e172 in / 
# Fri, 21 Dec 2018 08:49:41 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:42 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:27:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 09:27:25 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 09:54:42 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 09:54:44 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 09:54:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 09:54:45 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 09:57:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 09:57:24 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 09:57:33 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 09:57:33 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 11:44:47 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 21 Dec 2018 11:44:47 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 11:44:48 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 11:44:49 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 12:01:46 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 12:01:50 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:01:50 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 12:01:51 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 12:01:51 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 12:01:51 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 12:01:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:01:52 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:786f62ef66aef5b82d01dc251c095789af4cc746f6279dcc8011023d019b70fb`  
		Last Modified: Tue, 18 Sep 2018 13:06:58 GMT  
		Size: 2.1 MB (2050505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4271bf13258b585def40291fcb3b0490ce089b76fe80a5f1aa672e925ec81bcb`  
		Last Modified: Fri, 21 Dec 2018 08:50:13 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ac1a4ba006898801405578f508d1914b1fbcc353b78dcc6f7594b5ece85e4d`  
		Last Modified: Fri, 21 Dec 2018 10:03:45 GMT  
		Size: 309.3 KB (309263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776c97efb86e442631f18fddaf87e9b84bac5642bd85fc5d1274c2d5e00ece78`  
		Last Modified: Fri, 21 Dec 2018 10:03:54 GMT  
		Size: 16.8 MB (16766730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1684ccc8eccc23eb8a248cfd55d195344d2ad1e166f895e634b6f1f02b0a2958`  
		Last Modified: Fri, 21 Dec 2018 10:03:46 GMT  
		Size: 1.8 MB (1780137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3113bb69d3a08d4a27fa8f83d82d8ecf30f979543f198c6b3691655720fcba20`  
		Last Modified: Fri, 21 Dec 2018 12:03:00 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29edaf86cbd1a04d76ac9161f97f42816084dadf4b7ec607d4f8b1b66c0001a9`  
		Last Modified: Fri, 21 Dec 2018 12:03:00 GMT  
		Size: 665.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb686f21ee4578da54b17f157b968de0ec22cbb1039d3114c1a26ba684f60b7d`  
		Last Modified: Fri, 21 Dec 2018 12:03:38 GMT  
		Size: 78.5 MB (78510624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a65349a918542475d44e2439a1905fe3237fd107c9df9cfa71b54eb390c0fd9`  
		Last Modified: Fri, 21 Dec 2018 12:03:00 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.18-alpine` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:415d25a512b87d33efa179bc257cc6fcb5fda6e31ac4daa1fd187d570bd52eab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.6 MB (99635744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a69813d9f3003da88cee65f118de41221caf31c4cb2e900f79695a601002f92`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:47 GMT
ADD file:7278e4df49d628c2bbb27c53665e671f57cd2db003e030b1be93eb81c5d28303 in / 
# Fri, 21 Dec 2018 09:42:48 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:48 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:52:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 11:12:43 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 11:54:59 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 11:55:02 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 11:55:02 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 11:55:03 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 11:59:03 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 11:59:03 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 11:59:20 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 11:59:21 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 15:51:21 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 21 Dec 2018 15:51:22 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 15:51:26 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 15:51:27 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 16:28:20 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 16:28:23 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 16:28:24 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 16:28:25 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 16:28:26 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 16:28:27 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 16:28:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:28:28 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe4843495e56e3546d4d49cf476ee7bc1650156062151aa38cf3e2fb397a70`  
		Last Modified: Fri, 21 Dec 2018 09:43:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0293ba1054d25a7ee8ac6d458fe7ac7540a298a261c352ec3d63b69bc7d3efa`  
		Last Modified: Fri, 21 Dec 2018 12:08:41 GMT  
		Size: 308.7 KB (308700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0860b4a73519906f5b8a3b859541a54430b3bf30b33386840249544752207136`  
		Last Modified: Fri, 21 Dec 2018 12:08:50 GMT  
		Size: 17.2 MB (17197561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3a954a2e0671216fb8bbedb9a8ee9526eb1ee3c6d3fd357b9f69280fc5b5ff`  
		Last Modified: Fri, 21 Dec 2018 12:08:42 GMT  
		Size: 1.8 MB (1779962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09d9a9542d40214333c93d661cc5bca0bc2c38ecfe86636945109cf434cd1f1`  
		Last Modified: Fri, 21 Dec 2018 16:30:02 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2663544e34adc7ff0f85d4b090f31cf8ceb06ee65281844f895ba6fa39a4ca8f`  
		Last Modified: Fri, 21 Dec 2018 16:30:02 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8876315de923709f87c39ca49c1ccb50b142705116746649578658ba80e36d75`  
		Last Modified: Fri, 21 Dec 2018 16:30:43 GMT  
		Size: 78.3 MB (78345923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fa9a2a9860adc4403e9560cf4cc5530496eabb754b150e4611eaa159acfb8a`  
		Last Modified: Fri, 21 Dec 2018 16:30:01 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.18-alpine` - linux; 386

```console
$ docker pull plone@sha256:17b18b12b51266bcff9ebe71d1c95b649e9d02b3fdda3f91866a3c707ad6ae75
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.7 MB (99701570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15109a67116c65e655e8027750456954eda3321da08cfb77b4b2d08531d9cbc0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 11:39:54 GMT
ADD file:b2b8059d0cd5b8582648bf5cbdd2ad66e2519582281f0fa6ab560c1a85398c3c in / 
# Fri, 21 Dec 2018 11:39:54 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:39:54 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:50:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 15:50:05 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 16:12:21 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 16:12:21 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 16:12:22 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 16:12:22 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 16:14:19 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 16:14:20 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 16:14:25 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 16:14:25 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 18:24:13 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 21 Dec 2018 18:24:13 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 18:24:14 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 18:24:14 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 18:33:45 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 18:33:46 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 18:33:46 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 18:33:46 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 18:33:47 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 18:33:47 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 18:33:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 18:33:47 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8fd280f9a42e33caddacaf364c842da7b3b726b15cf2a4051b8e83e1b06a0c`  
		Last Modified: Fri, 21 Dec 2018 11:40:43 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c820d3a0d895948a1b358cee353832028a7fa0fb766f53bfa36e195d821611`  
		Last Modified: Fri, 21 Dec 2018 16:19:28 GMT  
		Size: 309.2 KB (309208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5769aa7d2f91390020dfd546e4830103644b64d247a7ead2c00ccfb713f319e`  
		Last Modified: Fri, 21 Dec 2018 16:19:32 GMT  
		Size: 17.0 MB (16984066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ebfa76d9f0cc5440b35042e0de0bad1acd644865f86e6a1eea90e490564099`  
		Last Modified: Fri, 21 Dec 2018 16:19:28 GMT  
		Size: 1.8 MB (1779961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39585fa4265929fc2f34636db6fd17357182bdf1301d7dc9b8a0ad03c25b0bcc`  
		Last Modified: Fri, 21 Dec 2018 18:34:46 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ccbe498c7462dec893c0d4c1166efe2edc7f2dd757395ff880684cc01593f7`  
		Last Modified: Fri, 21 Dec 2018 18:34:46 GMT  
		Size: 665.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8c588757ce2e9feb1523beca5c333846d96e61473490cef57ea44ceb5c5bc`  
		Last Modified: Fri, 21 Dec 2018 18:35:10 GMT  
		Size: 78.5 MB (78454897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b862edb6ed1cfc54d59ceb51b2251296f1bcf5eb53d4c8a782f4e0855ebd93c`  
		Last Modified: Fri, 21 Dec 2018 18:34:46 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.18-alpine` - linux; ppc64le

```console
$ docker pull plone@sha256:745c639b224ab73f5bd964d775b2a139eb0dd61bd1c94ebac7146439ef234e55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100625640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feff09e33d3c7cbd42546ff9bc21b00fc07cbca3356cf61ab4947253d01b6901`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:27 GMT
ADD file:7ec696be9519c6fa2389220666cd2ddda3cded7ba858845c42ad654e96a4e16a in / 
# Fri, 21 Dec 2018 09:42:29 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:32 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:07:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 12:07:04 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 12:38:45 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 12:38:47 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 12:38:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 12:38:51 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 12:41:26 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 12:41:32 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 12:41:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 12:41:49 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 15:08:53 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 21 Dec 2018 15:08:56 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 15:09:03 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 15:09:05 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 15:25:24 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 15:25:30 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:25:31 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 15:25:32 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 15:25:34 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 15:25:35 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 15:25:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:25:39 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2f41e01dbe185c32298d62f1e24622476798da0e6be6c11162fd4c7e2bacbc38`  
		Last Modified: Tue, 18 Sep 2018 13:17:40 GMT  
		Size: 2.1 MB (2099080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee294a137df5ce1dbf79febbc52196c755a051997862a2909d94aaf427752383`  
		Last Modified: Fri, 21 Dec 2018 09:45:47 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca12aacf71bc835287e70c5f78fb25dc4b173096550e8fba9b0d463d63d0388`  
		Last Modified: Fri, 21 Dec 2018 12:53:08 GMT  
		Size: 311.0 KB (311049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dee7ab6d8d2418ca850852fd666139287228940bc986050dfc4e8d62ca69175`  
		Last Modified: Fri, 21 Dec 2018 12:53:19 GMT  
		Size: 17.6 MB (17644485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b32e1ad35c213bc25de60aa0261d723007ce473f2bb23a02ebd9d3f774750d`  
		Last Modified: Fri, 21 Dec 2018 12:53:10 GMT  
		Size: 1.8 MB (1780135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f020295e1576e47d9a131915c65969ab5c6b800f65065a4fbe0c1c7b6196f844`  
		Last Modified: Fri, 21 Dec 2018 15:27:40 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9253f1f1108441d567b592e0bf2f5c67eb09ec87f4a8c9c5984ae07617422c02`  
		Last Modified: Fri, 21 Dec 2018 15:27:40 GMT  
		Size: 667.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679e3aa8b6976f0e62e866ce0708c94193882a000e058001c2b042ee191601f9`  
		Last Modified: Fri, 21 Dec 2018 15:28:02 GMT  
		Size: 78.8 MB (78786412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c6c33d3e98d92b4dcc7348c3fc76620aa77ba2105bb1fc1fe9b2d1b3a91317`  
		Last Modified: Fri, 21 Dec 2018 15:27:40 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.18-alpine` - linux; s390x

```console
$ docker pull plone@sha256:ea0d5db7ae5cbe7dab3d310573bb9964e33f70cc3e7417f9fc039687bfcce833
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.4 MB (101373736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d21826871dcf4258f7c6c8b9b9ab06d00d28600a4fa94433e02b422f3532757`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:29 GMT
ADD file:b764f04695aef161430a2063aee41e228cb016459404dee09be3448c73f75349 in / 
# Fri, 21 Dec 2018 12:42:30 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:02:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 14:02:54 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 14:21:28 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 14:21:29 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 14:21:30 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 14:21:30 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 14:23:12 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 14:23:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 14:23:17 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 14:23:17 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 16:30:15 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 21 Dec 2018 16:30:15 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 16:30:16 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 16:30:16 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 16:38:58 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 16:38:59 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 16:39:00 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 16:39:00 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 16:39:00 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 16:39:00 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 16:39:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:39:01 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:6e61c3658cd6273d9aec7222b5e89d66892fed584a6f37e459c0e47646d98af3`  
		Last Modified: Wed, 12 Sep 2018 11:43:16 GMT  
		Size: 2.2 MB (2201183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5a991d0e8727ddad0104264ae7819c2fde180a2ca2fc266d6814b4fa2e135e`  
		Last Modified: Fri, 21 Dec 2018 12:42:59 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047352a5b63765dee839b52877188d8d4c924fd148c11341492b6e63c08177b8`  
		Last Modified: Fri, 21 Dec 2018 14:28:17 GMT  
		Size: 309.6 KB (309601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adf362f3ff2129c56913f7556d7ceff03df6967ea950eb2a0cebbc2167608f2`  
		Last Modified: Fri, 21 Dec 2018 14:28:21 GMT  
		Size: 18.0 MB (17995272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfa85912b0983795ff3815ea36164604e2e78e958025a71cc5357837827d78c`  
		Last Modified: Fri, 21 Dec 2018 14:28:17 GMT  
		Size: 1.8 MB (1779899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eda89d2d597e4b1d427a0d4ecf985f3ff916537665b58060a72b4ca19c0e3cf`  
		Last Modified: Fri, 21 Dec 2018 16:39:46 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698ba6c8106f3fe849f1ec5ab197f3efaba80c858e6ac82accb1dc7f9956daf9`  
		Last Modified: Fri, 21 Dec 2018 16:39:46 GMT  
		Size: 669.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1219c564900ece5ffab1620d240400008f390936c41229f4b2714336561159b8`  
		Last Modified: Fri, 21 Dec 2018 16:40:03 GMT  
		Size: 79.1 MB (79083359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0270bbc5313d1453e16fcd7826f8ad9d6e98633dfb89d302d2167cf431824a1f`  
		Last Modified: Fri, 21 Dec 2018 16:39:46 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3-alpine`

```console
$ docker pull plone@sha256:54d6605a68f7385f61a990c9cef01e0bb9c4f5c7f0a3926b430af545a19b3e63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `plone:4.3-alpine` - linux; amd64

```console
$ docker pull plone@sha256:7fd2ef1ab56787205e12371ec51bd1a7728c3e6b94b7cbd18b443d3ee3d3a534
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.7 MB (100716414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb9a02dd3b7f221112d932e24115e697f0f4de15824ff9b6352fa3704a56d0b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 03:24:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 03:24:33 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 03:53:19 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 03:53:21 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 03:53:21 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 03:53:21 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 03:55:18 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 03:55:19 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 03:55:23 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 03:55:23 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 06:17:10 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 21 Dec 2018 06:17:10 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 06:17:11 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 06:17:11 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 06:26:44 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 06:26:45 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 06:26:45 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 06:26:45 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 06:26:45 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 06:26:45 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 06:26:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 06:26:46 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa45741b61edafb651985a8048ab8aa692e4a28b6350aa5e38f421997903da0`  
		Last Modified: Fri, 21 Dec 2018 04:00:13 GMT  
		Size: 308.5 KB (308484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc54ee2e6f3bccba78ccf007308d383f8bb9c78bf1a049b9c5704e578d064df`  
		Last Modified: Fri, 21 Dec 2018 04:00:19 GMT  
		Size: 17.5 MB (17546512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d994f02f15e25ef9cb3becc29fffc27d771a90c074d33e5bba5ee44096dbf65`  
		Last Modified: Fri, 21 Dec 2018 04:00:13 GMT  
		Size: 1.8 MB (1779886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca93f300ffa4d41975ecbe2d642b2001eb0e99d94a02938e62a2feb429093012`  
		Last Modified: Fri, 21 Dec 2018 06:27:41 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16eded276bb81a5f8c98b3be096ea967f984feb09912d2215a84ec5213b48c1`  
		Last Modified: Fri, 21 Dec 2018 06:27:40 GMT  
		Size: 665.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01894d849bc799cd241f677807cd0f8072580c135384a37a8e1a00c47b80cd65`  
		Last Modified: Fri, 21 Dec 2018 06:28:00 GMT  
		Size: 79.0 MB (78970133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dc6ef5eddf94feae72e4efbce49d2f487e9e5df976bde4cccc8aa8468d1791`  
		Last Modified: Fri, 21 Dec 2018 06:27:40 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3-alpine` - linux; arm variant v6

```console
$ docker pull plone@sha256:149593477a56389f83cebad653f8a1b4df310ab0fa6efe26da30740d9138472a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.4 MB (99421741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0683af2266c89aac211233ebdb072bea8d1ace084b9606b9f1d9f8d4d7cc64ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:41 GMT
ADD file:49a7d389086046d6fa37e72b7f9dc0c3b1fa155b694554609ed2c95a5504e172 in / 
# Fri, 21 Dec 2018 08:49:41 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:42 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:27:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 09:27:25 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 09:54:42 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 09:54:44 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 09:54:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 09:54:45 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 09:57:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 09:57:24 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 09:57:33 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 09:57:33 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 11:44:47 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 21 Dec 2018 11:44:47 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 11:44:48 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 11:44:49 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 12:01:46 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 12:01:50 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:01:50 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 12:01:51 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 12:01:51 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 12:01:51 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 12:01:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:01:52 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:786f62ef66aef5b82d01dc251c095789af4cc746f6279dcc8011023d019b70fb`  
		Last Modified: Tue, 18 Sep 2018 13:06:58 GMT  
		Size: 2.1 MB (2050505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4271bf13258b585def40291fcb3b0490ce089b76fe80a5f1aa672e925ec81bcb`  
		Last Modified: Fri, 21 Dec 2018 08:50:13 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ac1a4ba006898801405578f508d1914b1fbcc353b78dcc6f7594b5ece85e4d`  
		Last Modified: Fri, 21 Dec 2018 10:03:45 GMT  
		Size: 309.3 KB (309263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776c97efb86e442631f18fddaf87e9b84bac5642bd85fc5d1274c2d5e00ece78`  
		Last Modified: Fri, 21 Dec 2018 10:03:54 GMT  
		Size: 16.8 MB (16766730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1684ccc8eccc23eb8a248cfd55d195344d2ad1e166f895e634b6f1f02b0a2958`  
		Last Modified: Fri, 21 Dec 2018 10:03:46 GMT  
		Size: 1.8 MB (1780137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3113bb69d3a08d4a27fa8f83d82d8ecf30f979543f198c6b3691655720fcba20`  
		Last Modified: Fri, 21 Dec 2018 12:03:00 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29edaf86cbd1a04d76ac9161f97f42816084dadf4b7ec607d4f8b1b66c0001a9`  
		Last Modified: Fri, 21 Dec 2018 12:03:00 GMT  
		Size: 665.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb686f21ee4578da54b17f157b968de0ec22cbb1039d3114c1a26ba684f60b7d`  
		Last Modified: Fri, 21 Dec 2018 12:03:38 GMT  
		Size: 78.5 MB (78510624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a65349a918542475d44e2439a1905fe3237fd107c9df9cfa71b54eb390c0fd9`  
		Last Modified: Fri, 21 Dec 2018 12:03:00 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3-alpine` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:415d25a512b87d33efa179bc257cc6fcb5fda6e31ac4daa1fd187d570bd52eab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.6 MB (99635744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a69813d9f3003da88cee65f118de41221caf31c4cb2e900f79695a601002f92`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:47 GMT
ADD file:7278e4df49d628c2bbb27c53665e671f57cd2db003e030b1be93eb81c5d28303 in / 
# Fri, 21 Dec 2018 09:42:48 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:48 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:52:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 11:12:43 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 11:54:59 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 11:55:02 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 11:55:02 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 11:55:03 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 11:59:03 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 11:59:03 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 11:59:20 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 11:59:21 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 15:51:21 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 21 Dec 2018 15:51:22 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 15:51:26 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 15:51:27 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 16:28:20 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 16:28:23 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 16:28:24 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 16:28:25 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 16:28:26 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 16:28:27 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 16:28:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:28:28 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe4843495e56e3546d4d49cf476ee7bc1650156062151aa38cf3e2fb397a70`  
		Last Modified: Fri, 21 Dec 2018 09:43:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0293ba1054d25a7ee8ac6d458fe7ac7540a298a261c352ec3d63b69bc7d3efa`  
		Last Modified: Fri, 21 Dec 2018 12:08:41 GMT  
		Size: 308.7 KB (308700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0860b4a73519906f5b8a3b859541a54430b3bf30b33386840249544752207136`  
		Last Modified: Fri, 21 Dec 2018 12:08:50 GMT  
		Size: 17.2 MB (17197561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3a954a2e0671216fb8bbedb9a8ee9526eb1ee3c6d3fd357b9f69280fc5b5ff`  
		Last Modified: Fri, 21 Dec 2018 12:08:42 GMT  
		Size: 1.8 MB (1779962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09d9a9542d40214333c93d661cc5bca0bc2c38ecfe86636945109cf434cd1f1`  
		Last Modified: Fri, 21 Dec 2018 16:30:02 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2663544e34adc7ff0f85d4b090f31cf8ceb06ee65281844f895ba6fa39a4ca8f`  
		Last Modified: Fri, 21 Dec 2018 16:30:02 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8876315de923709f87c39ca49c1ccb50b142705116746649578658ba80e36d75`  
		Last Modified: Fri, 21 Dec 2018 16:30:43 GMT  
		Size: 78.3 MB (78345923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fa9a2a9860adc4403e9560cf4cc5530496eabb754b150e4611eaa159acfb8a`  
		Last Modified: Fri, 21 Dec 2018 16:30:01 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3-alpine` - linux; 386

```console
$ docker pull plone@sha256:17b18b12b51266bcff9ebe71d1c95b649e9d02b3fdda3f91866a3c707ad6ae75
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.7 MB (99701570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15109a67116c65e655e8027750456954eda3321da08cfb77b4b2d08531d9cbc0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 11:39:54 GMT
ADD file:b2b8059d0cd5b8582648bf5cbdd2ad66e2519582281f0fa6ab560c1a85398c3c in / 
# Fri, 21 Dec 2018 11:39:54 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:39:54 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:50:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 15:50:05 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 16:12:21 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 16:12:21 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 16:12:22 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 16:12:22 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 16:14:19 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 16:14:20 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 16:14:25 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 16:14:25 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 18:24:13 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 21 Dec 2018 18:24:13 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 18:24:14 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 18:24:14 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 18:33:45 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 18:33:46 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 18:33:46 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 18:33:46 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 18:33:47 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 18:33:47 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 18:33:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 18:33:47 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8fd280f9a42e33caddacaf364c842da7b3b726b15cf2a4051b8e83e1b06a0c`  
		Last Modified: Fri, 21 Dec 2018 11:40:43 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c820d3a0d895948a1b358cee353832028a7fa0fb766f53bfa36e195d821611`  
		Last Modified: Fri, 21 Dec 2018 16:19:28 GMT  
		Size: 309.2 KB (309208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5769aa7d2f91390020dfd546e4830103644b64d247a7ead2c00ccfb713f319e`  
		Last Modified: Fri, 21 Dec 2018 16:19:32 GMT  
		Size: 17.0 MB (16984066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ebfa76d9f0cc5440b35042e0de0bad1acd644865f86e6a1eea90e490564099`  
		Last Modified: Fri, 21 Dec 2018 16:19:28 GMT  
		Size: 1.8 MB (1779961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39585fa4265929fc2f34636db6fd17357182bdf1301d7dc9b8a0ad03c25b0bcc`  
		Last Modified: Fri, 21 Dec 2018 18:34:46 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ccbe498c7462dec893c0d4c1166efe2edc7f2dd757395ff880684cc01593f7`  
		Last Modified: Fri, 21 Dec 2018 18:34:46 GMT  
		Size: 665.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8c588757ce2e9feb1523beca5c333846d96e61473490cef57ea44ceb5c5bc`  
		Last Modified: Fri, 21 Dec 2018 18:35:10 GMT  
		Size: 78.5 MB (78454897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b862edb6ed1cfc54d59ceb51b2251296f1bcf5eb53d4c8a782f4e0855ebd93c`  
		Last Modified: Fri, 21 Dec 2018 18:34:46 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3-alpine` - linux; ppc64le

```console
$ docker pull plone@sha256:745c639b224ab73f5bd964d775b2a139eb0dd61bd1c94ebac7146439ef234e55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100625640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feff09e33d3c7cbd42546ff9bc21b00fc07cbca3356cf61ab4947253d01b6901`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:27 GMT
ADD file:7ec696be9519c6fa2389220666cd2ddda3cded7ba858845c42ad654e96a4e16a in / 
# Fri, 21 Dec 2018 09:42:29 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:32 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:07:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 12:07:04 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 12:38:45 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 12:38:47 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 12:38:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 12:38:51 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 12:41:26 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 12:41:32 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 12:41:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 12:41:49 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 15:08:53 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 21 Dec 2018 15:08:56 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 15:09:03 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 15:09:05 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 15:25:24 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 15:25:30 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:25:31 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 15:25:32 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 15:25:34 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 15:25:35 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 15:25:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:25:39 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2f41e01dbe185c32298d62f1e24622476798da0e6be6c11162fd4c7e2bacbc38`  
		Last Modified: Tue, 18 Sep 2018 13:17:40 GMT  
		Size: 2.1 MB (2099080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee294a137df5ce1dbf79febbc52196c755a051997862a2909d94aaf427752383`  
		Last Modified: Fri, 21 Dec 2018 09:45:47 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca12aacf71bc835287e70c5f78fb25dc4b173096550e8fba9b0d463d63d0388`  
		Last Modified: Fri, 21 Dec 2018 12:53:08 GMT  
		Size: 311.0 KB (311049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dee7ab6d8d2418ca850852fd666139287228940bc986050dfc4e8d62ca69175`  
		Last Modified: Fri, 21 Dec 2018 12:53:19 GMT  
		Size: 17.6 MB (17644485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b32e1ad35c213bc25de60aa0261d723007ce473f2bb23a02ebd9d3f774750d`  
		Last Modified: Fri, 21 Dec 2018 12:53:10 GMT  
		Size: 1.8 MB (1780135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f020295e1576e47d9a131915c65969ab5c6b800f65065a4fbe0c1c7b6196f844`  
		Last Modified: Fri, 21 Dec 2018 15:27:40 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9253f1f1108441d567b592e0bf2f5c67eb09ec87f4a8c9c5984ae07617422c02`  
		Last Modified: Fri, 21 Dec 2018 15:27:40 GMT  
		Size: 667.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679e3aa8b6976f0e62e866ce0708c94193882a000e058001c2b042ee191601f9`  
		Last Modified: Fri, 21 Dec 2018 15:28:02 GMT  
		Size: 78.8 MB (78786412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c6c33d3e98d92b4dcc7348c3fc76620aa77ba2105bb1fc1fe9b2d1b3a91317`  
		Last Modified: Fri, 21 Dec 2018 15:27:40 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3-alpine` - linux; s390x

```console
$ docker pull plone@sha256:ea0d5db7ae5cbe7dab3d310573bb9964e33f70cc3e7417f9fc039687bfcce833
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.4 MB (101373736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d21826871dcf4258f7c6c8b9b9ab06d00d28600a4fa94433e02b422f3532757`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:29 GMT
ADD file:b764f04695aef161430a2063aee41e228cb016459404dee09be3448c73f75349 in / 
# Fri, 21 Dec 2018 12:42:30 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:02:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 14:02:54 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 14:21:28 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 14:21:29 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 14:21:30 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 14:21:30 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 14:23:12 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 14:23:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 14:23:17 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 14:23:17 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 16:30:15 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 21 Dec 2018 16:30:15 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 16:30:16 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 16:30:16 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 16:38:58 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 16:38:59 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 16:39:00 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 16:39:00 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 16:39:00 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 16:39:00 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 16:39:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:39:01 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:6e61c3658cd6273d9aec7222b5e89d66892fed584a6f37e459c0e47646d98af3`  
		Last Modified: Wed, 12 Sep 2018 11:43:16 GMT  
		Size: 2.2 MB (2201183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5a991d0e8727ddad0104264ae7819c2fde180a2ca2fc266d6814b4fa2e135e`  
		Last Modified: Fri, 21 Dec 2018 12:42:59 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047352a5b63765dee839b52877188d8d4c924fd148c11341492b6e63c08177b8`  
		Last Modified: Fri, 21 Dec 2018 14:28:17 GMT  
		Size: 309.6 KB (309601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adf362f3ff2129c56913f7556d7ceff03df6967ea950eb2a0cebbc2167608f2`  
		Last Modified: Fri, 21 Dec 2018 14:28:21 GMT  
		Size: 18.0 MB (17995272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfa85912b0983795ff3815ea36164604e2e78e958025a71cc5357837827d78c`  
		Last Modified: Fri, 21 Dec 2018 14:28:17 GMT  
		Size: 1.8 MB (1779899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eda89d2d597e4b1d427a0d4ecf985f3ff916537665b58060a72b4ca19c0e3cf`  
		Last Modified: Fri, 21 Dec 2018 16:39:46 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698ba6c8106f3fe849f1ec5ab197f3efaba80c858e6ac82accb1dc7f9956daf9`  
		Last Modified: Fri, 21 Dec 2018 16:39:46 GMT  
		Size: 669.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1219c564900ece5ffab1620d240400008f390936c41229f4b2714336561159b8`  
		Last Modified: Fri, 21 Dec 2018 16:40:03 GMT  
		Size: 79.1 MB (79083359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0270bbc5313d1453e16fcd7826f8ad9d6e98633dfb89d302d2167cf431824a1f`  
		Last Modified: Fri, 21 Dec 2018 16:39:46 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4-alpine`

```console
$ docker pull plone@sha256:54d6605a68f7385f61a990c9cef01e0bb9c4f5c7f0a3926b430af545a19b3e63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `plone:4-alpine` - linux; amd64

```console
$ docker pull plone@sha256:7fd2ef1ab56787205e12371ec51bd1a7728c3e6b94b7cbd18b443d3ee3d3a534
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.7 MB (100716414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb9a02dd3b7f221112d932e24115e697f0f4de15824ff9b6352fa3704a56d0b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 03:24:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 03:24:33 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 03:53:19 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 03:53:21 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 03:53:21 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 03:53:21 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 03:55:18 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 03:55:19 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 03:55:23 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 03:55:23 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 06:17:10 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 21 Dec 2018 06:17:10 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 06:17:11 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 06:17:11 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 06:26:44 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 06:26:45 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 06:26:45 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 06:26:45 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 06:26:45 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 06:26:45 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 06:26:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 06:26:46 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa45741b61edafb651985a8048ab8aa692e4a28b6350aa5e38f421997903da0`  
		Last Modified: Fri, 21 Dec 2018 04:00:13 GMT  
		Size: 308.5 KB (308484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc54ee2e6f3bccba78ccf007308d383f8bb9c78bf1a049b9c5704e578d064df`  
		Last Modified: Fri, 21 Dec 2018 04:00:19 GMT  
		Size: 17.5 MB (17546512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d994f02f15e25ef9cb3becc29fffc27d771a90c074d33e5bba5ee44096dbf65`  
		Last Modified: Fri, 21 Dec 2018 04:00:13 GMT  
		Size: 1.8 MB (1779886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca93f300ffa4d41975ecbe2d642b2001eb0e99d94a02938e62a2feb429093012`  
		Last Modified: Fri, 21 Dec 2018 06:27:41 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16eded276bb81a5f8c98b3be096ea967f984feb09912d2215a84ec5213b48c1`  
		Last Modified: Fri, 21 Dec 2018 06:27:40 GMT  
		Size: 665.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01894d849bc799cd241f677807cd0f8072580c135384a37a8e1a00c47b80cd65`  
		Last Modified: Fri, 21 Dec 2018 06:28:00 GMT  
		Size: 79.0 MB (78970133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dc6ef5eddf94feae72e4efbce49d2f487e9e5df976bde4cccc8aa8468d1791`  
		Last Modified: Fri, 21 Dec 2018 06:27:40 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4-alpine` - linux; arm variant v6

```console
$ docker pull plone@sha256:149593477a56389f83cebad653f8a1b4df310ab0fa6efe26da30740d9138472a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.4 MB (99421741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0683af2266c89aac211233ebdb072bea8d1ace084b9606b9f1d9f8d4d7cc64ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:41 GMT
ADD file:49a7d389086046d6fa37e72b7f9dc0c3b1fa155b694554609ed2c95a5504e172 in / 
# Fri, 21 Dec 2018 08:49:41 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:42 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:27:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 09:27:25 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 09:54:42 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 09:54:44 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 09:54:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 09:54:45 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 09:57:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 09:57:24 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 09:57:33 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 09:57:33 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 11:44:47 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 21 Dec 2018 11:44:47 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 11:44:48 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 11:44:49 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 12:01:46 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 12:01:50 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 12:01:50 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 12:01:51 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 12:01:51 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 12:01:51 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 12:01:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:01:52 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:786f62ef66aef5b82d01dc251c095789af4cc746f6279dcc8011023d019b70fb`  
		Last Modified: Tue, 18 Sep 2018 13:06:58 GMT  
		Size: 2.1 MB (2050505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4271bf13258b585def40291fcb3b0490ce089b76fe80a5f1aa672e925ec81bcb`  
		Last Modified: Fri, 21 Dec 2018 08:50:13 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ac1a4ba006898801405578f508d1914b1fbcc353b78dcc6f7594b5ece85e4d`  
		Last Modified: Fri, 21 Dec 2018 10:03:45 GMT  
		Size: 309.3 KB (309263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776c97efb86e442631f18fddaf87e9b84bac5642bd85fc5d1274c2d5e00ece78`  
		Last Modified: Fri, 21 Dec 2018 10:03:54 GMT  
		Size: 16.8 MB (16766730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1684ccc8eccc23eb8a248cfd55d195344d2ad1e166f895e634b6f1f02b0a2958`  
		Last Modified: Fri, 21 Dec 2018 10:03:46 GMT  
		Size: 1.8 MB (1780137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3113bb69d3a08d4a27fa8f83d82d8ecf30f979543f198c6b3691655720fcba20`  
		Last Modified: Fri, 21 Dec 2018 12:03:00 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29edaf86cbd1a04d76ac9161f97f42816084dadf4b7ec607d4f8b1b66c0001a9`  
		Last Modified: Fri, 21 Dec 2018 12:03:00 GMT  
		Size: 665.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb686f21ee4578da54b17f157b968de0ec22cbb1039d3114c1a26ba684f60b7d`  
		Last Modified: Fri, 21 Dec 2018 12:03:38 GMT  
		Size: 78.5 MB (78510624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a65349a918542475d44e2439a1905fe3237fd107c9df9cfa71b54eb390c0fd9`  
		Last Modified: Fri, 21 Dec 2018 12:03:00 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4-alpine` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:415d25a512b87d33efa179bc257cc6fcb5fda6e31ac4daa1fd187d570bd52eab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.6 MB (99635744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a69813d9f3003da88cee65f118de41221caf31c4cb2e900f79695a601002f92`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:47 GMT
ADD file:7278e4df49d628c2bbb27c53665e671f57cd2db003e030b1be93eb81c5d28303 in / 
# Fri, 21 Dec 2018 09:42:48 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:48 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:52:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 11:12:43 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 11:54:59 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 11:55:02 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 11:55:02 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 11:55:03 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 11:59:03 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 11:59:03 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 11:59:20 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 11:59:21 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 15:51:21 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 21 Dec 2018 15:51:22 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 15:51:26 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 15:51:27 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 16:28:20 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 16:28:23 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 16:28:24 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 16:28:25 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 16:28:26 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 16:28:27 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 16:28:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:28:28 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe4843495e56e3546d4d49cf476ee7bc1650156062151aa38cf3e2fb397a70`  
		Last Modified: Fri, 21 Dec 2018 09:43:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0293ba1054d25a7ee8ac6d458fe7ac7540a298a261c352ec3d63b69bc7d3efa`  
		Last Modified: Fri, 21 Dec 2018 12:08:41 GMT  
		Size: 308.7 KB (308700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0860b4a73519906f5b8a3b859541a54430b3bf30b33386840249544752207136`  
		Last Modified: Fri, 21 Dec 2018 12:08:50 GMT  
		Size: 17.2 MB (17197561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3a954a2e0671216fb8bbedb9a8ee9526eb1ee3c6d3fd357b9f69280fc5b5ff`  
		Last Modified: Fri, 21 Dec 2018 12:08:42 GMT  
		Size: 1.8 MB (1779962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09d9a9542d40214333c93d661cc5bca0bc2c38ecfe86636945109cf434cd1f1`  
		Last Modified: Fri, 21 Dec 2018 16:30:02 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2663544e34adc7ff0f85d4b090f31cf8ceb06ee65281844f895ba6fa39a4ca8f`  
		Last Modified: Fri, 21 Dec 2018 16:30:02 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8876315de923709f87c39ca49c1ccb50b142705116746649578658ba80e36d75`  
		Last Modified: Fri, 21 Dec 2018 16:30:43 GMT  
		Size: 78.3 MB (78345923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fa9a2a9860adc4403e9560cf4cc5530496eabb754b150e4611eaa159acfb8a`  
		Last Modified: Fri, 21 Dec 2018 16:30:01 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4-alpine` - linux; 386

```console
$ docker pull plone@sha256:17b18b12b51266bcff9ebe71d1c95b649e9d02b3fdda3f91866a3c707ad6ae75
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.7 MB (99701570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15109a67116c65e655e8027750456954eda3321da08cfb77b4b2d08531d9cbc0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 11:39:54 GMT
ADD file:b2b8059d0cd5b8582648bf5cbdd2ad66e2519582281f0fa6ab560c1a85398c3c in / 
# Fri, 21 Dec 2018 11:39:54 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:39:54 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:50:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 15:50:05 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 16:12:21 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 16:12:21 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 16:12:22 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 16:12:22 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 16:14:19 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 16:14:20 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 16:14:25 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 16:14:25 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 18:24:13 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 21 Dec 2018 18:24:13 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 18:24:14 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 18:24:14 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 18:33:45 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 18:33:46 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 18:33:46 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 18:33:46 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 18:33:47 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 18:33:47 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 18:33:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 18:33:47 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8fd280f9a42e33caddacaf364c842da7b3b726b15cf2a4051b8e83e1b06a0c`  
		Last Modified: Fri, 21 Dec 2018 11:40:43 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c820d3a0d895948a1b358cee353832028a7fa0fb766f53bfa36e195d821611`  
		Last Modified: Fri, 21 Dec 2018 16:19:28 GMT  
		Size: 309.2 KB (309208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5769aa7d2f91390020dfd546e4830103644b64d247a7ead2c00ccfb713f319e`  
		Last Modified: Fri, 21 Dec 2018 16:19:32 GMT  
		Size: 17.0 MB (16984066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ebfa76d9f0cc5440b35042e0de0bad1acd644865f86e6a1eea90e490564099`  
		Last Modified: Fri, 21 Dec 2018 16:19:28 GMT  
		Size: 1.8 MB (1779961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39585fa4265929fc2f34636db6fd17357182bdf1301d7dc9b8a0ad03c25b0bcc`  
		Last Modified: Fri, 21 Dec 2018 18:34:46 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ccbe498c7462dec893c0d4c1166efe2edc7f2dd757395ff880684cc01593f7`  
		Last Modified: Fri, 21 Dec 2018 18:34:46 GMT  
		Size: 665.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8c588757ce2e9feb1523beca5c333846d96e61473490cef57ea44ceb5c5bc`  
		Last Modified: Fri, 21 Dec 2018 18:35:10 GMT  
		Size: 78.5 MB (78454897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b862edb6ed1cfc54d59ceb51b2251296f1bcf5eb53d4c8a782f4e0855ebd93c`  
		Last Modified: Fri, 21 Dec 2018 18:34:46 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4-alpine` - linux; ppc64le

```console
$ docker pull plone@sha256:745c639b224ab73f5bd964d775b2a139eb0dd61bd1c94ebac7146439ef234e55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100625640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feff09e33d3c7cbd42546ff9bc21b00fc07cbca3356cf61ab4947253d01b6901`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:27 GMT
ADD file:7ec696be9519c6fa2389220666cd2ddda3cded7ba858845c42ad654e96a4e16a in / 
# Fri, 21 Dec 2018 09:42:29 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:32 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:07:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 12:07:04 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 12:38:45 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 12:38:47 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 12:38:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 12:38:51 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 12:41:26 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 12:41:32 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 12:41:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 12:41:49 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 15:08:53 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 21 Dec 2018 15:08:56 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 15:09:03 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 15:09:05 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 15:25:24 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 15:25:30 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:25:31 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 15:25:32 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 15:25:34 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 15:25:35 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 15:25:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:25:39 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2f41e01dbe185c32298d62f1e24622476798da0e6be6c11162fd4c7e2bacbc38`  
		Last Modified: Tue, 18 Sep 2018 13:17:40 GMT  
		Size: 2.1 MB (2099080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee294a137df5ce1dbf79febbc52196c755a051997862a2909d94aaf427752383`  
		Last Modified: Fri, 21 Dec 2018 09:45:47 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca12aacf71bc835287e70c5f78fb25dc4b173096550e8fba9b0d463d63d0388`  
		Last Modified: Fri, 21 Dec 2018 12:53:08 GMT  
		Size: 311.0 KB (311049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dee7ab6d8d2418ca850852fd666139287228940bc986050dfc4e8d62ca69175`  
		Last Modified: Fri, 21 Dec 2018 12:53:19 GMT  
		Size: 17.6 MB (17644485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b32e1ad35c213bc25de60aa0261d723007ce473f2bb23a02ebd9d3f774750d`  
		Last Modified: Fri, 21 Dec 2018 12:53:10 GMT  
		Size: 1.8 MB (1780135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f020295e1576e47d9a131915c65969ab5c6b800f65065a4fbe0c1c7b6196f844`  
		Last Modified: Fri, 21 Dec 2018 15:27:40 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9253f1f1108441d567b592e0bf2f5c67eb09ec87f4a8c9c5984ae07617422c02`  
		Last Modified: Fri, 21 Dec 2018 15:27:40 GMT  
		Size: 667.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679e3aa8b6976f0e62e866ce0708c94193882a000e058001c2b042ee191601f9`  
		Last Modified: Fri, 21 Dec 2018 15:28:02 GMT  
		Size: 78.8 MB (78786412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c6c33d3e98d92b4dcc7348c3fc76620aa77ba2105bb1fc1fe9b2d1b3a91317`  
		Last Modified: Fri, 21 Dec 2018 15:27:40 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4-alpine` - linux; s390x

```console
$ docker pull plone@sha256:ea0d5db7ae5cbe7dab3d310573bb9964e33f70cc3e7417f9fc039687bfcce833
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.4 MB (101373736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d21826871dcf4258f7c6c8b9b9ab06d00d28600a4fa94433e02b422f3532757`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:29 GMT
ADD file:b764f04695aef161430a2063aee41e228cb016459404dee09be3448c73f75349 in / 
# Fri, 21 Dec 2018 12:42:30 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:02:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 14:02:54 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 14:21:28 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 14:21:29 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 14:21:30 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 14:21:30 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 14:23:12 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 14:23:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 14:23:17 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 14:23:17 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 16:30:15 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 21 Dec 2018 16:30:15 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 16:30:16 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 16:30:16 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 16:38:58 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 16:38:59 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 16:39:00 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 16:39:00 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 16:39:00 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 16:39:00 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 16:39:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:39:01 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:6e61c3658cd6273d9aec7222b5e89d66892fed584a6f37e459c0e47646d98af3`  
		Last Modified: Wed, 12 Sep 2018 11:43:16 GMT  
		Size: 2.2 MB (2201183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5a991d0e8727ddad0104264ae7819c2fde180a2ca2fc266d6814b4fa2e135e`  
		Last Modified: Fri, 21 Dec 2018 12:42:59 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047352a5b63765dee839b52877188d8d4c924fd148c11341492b6e63c08177b8`  
		Last Modified: Fri, 21 Dec 2018 14:28:17 GMT  
		Size: 309.6 KB (309601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adf362f3ff2129c56913f7556d7ceff03df6967ea950eb2a0cebbc2167608f2`  
		Last Modified: Fri, 21 Dec 2018 14:28:21 GMT  
		Size: 18.0 MB (17995272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfa85912b0983795ff3815ea36164604e2e78e958025a71cc5357837827d78c`  
		Last Modified: Fri, 21 Dec 2018 14:28:17 GMT  
		Size: 1.8 MB (1779899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eda89d2d597e4b1d427a0d4ecf985f3ff916537665b58060a72b4ca19c0e3cf`  
		Last Modified: Fri, 21 Dec 2018 16:39:46 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698ba6c8106f3fe849f1ec5ab197f3efaba80c858e6ac82accb1dc7f9956daf9`  
		Last Modified: Fri, 21 Dec 2018 16:39:46 GMT  
		Size: 669.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1219c564900ece5ffab1620d240400008f390936c41229f4b2714336561159b8`  
		Last Modified: Fri, 21 Dec 2018 16:40:03 GMT  
		Size: 79.1 MB (79083359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0270bbc5313d1453e16fcd7826f8ad9d6e98633dfb89d302d2167cf431824a1f`  
		Last Modified: Fri, 21 Dec 2018 16:39:46 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5`

```console
$ docker pull plone@sha256:6188acc42751e9aefb5ece88c7cd3f44e3f28d429aac09d027657670918e8140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `plone:5` - linux; amd64

```console
$ docker pull plone@sha256:813ca9dfdb9b7ac8171b168cf4933e5aa7d82fea82502dc78455da703ceff22f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173652889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf41fc9d9d540522e0a2b1acac2a561519fd53bd67b5e5bc81a8bae04f9a3fc8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 07:17:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 07:17:48 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 08:24:32 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 08:24:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 08:24:40 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 08:24:40 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 08:27:09 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 08:27:09 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 08:27:22 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 08:27:23 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 13:39:27 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 29 Dec 2018 13:39:27 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 13:39:29 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 13:39:29 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 13:47:48 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 13:47:50 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 13:47:51 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 13:47:51 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 13:47:51 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 13:47:52 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 13:47:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 13:47:53 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b2167b8d5af3176a02e24a3b94d2129553c24884ae3fdcdeaa7ed4b2dc9563`  
		Last Modified: Sat, 29 Dec 2018 08:48:53 GMT  
		Size: 2.5 MB (2528136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b044db3f9e1222b97f7dd3178dffe1215baa67f0d870a8628ae05ef69f9b2`  
		Last Modified: Sat, 29 Dec 2018 08:48:56 GMT  
		Size: 17.1 MB (17100661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7356f8556c46a7b6fe3793733377f814a9abde0bcb932149ba9a2cc4cb0ce5f4`  
		Last Modified: Sat, 29 Dec 2018 08:48:53 GMT  
		Size: 2.1 MB (2063050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1536f9d664ee94811797c54a6b66e15fd8461e37c6f3b4b7b283cadb0e851e`  
		Last Modified: Sat, 29 Dec 2018 14:01:11 GMT  
		Size: 3.9 KB (3885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b674766b9f8601d545cd2fa326e16c2d708b665bfa003882bd0f8fa012daba`  
		Last Modified: Sat, 29 Dec 2018 14:01:11 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b23a189499c9bf03aa4d588107675fdbd52723fc4a2663010a59b1db71e5630`  
		Last Modified: Sat, 29 Dec 2018 14:02:02 GMT  
		Size: 129.5 MB (129461316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eab6249b78f5ff5a020de266f6503a212cc854d26e90cca2b1b4fd8c6d71533`  
		Last Modified: Sat, 29 Dec 2018 14:01:11 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5` - linux; arm variant v5

```console
$ docker pull plone@sha256:78848bc59c8b658982a3c2f0bcad85dbfd0bbc673b466d70a39dcc0fe501013f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168377547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6717d084e4fc569bbcca05576602c81694094a0702b9c225b6f3dcf5587887`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:08:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:08:54 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:11:32 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 12:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 12:11:48 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 12:15:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 12:15:43 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 12:16:10 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 12:16:11 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 15:25:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 29 Dec 2018 15:25:06 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 15:25:08 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 15:25:08 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 15:41:41 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 15:41:47 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 15:41:47 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 15:41:48 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 15:41:48 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 15:41:49 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 15:41:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 15:41:49 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c7a64b8477849065dd114de9501d6290f20ffae66048f69f2090e10c2f22f0`  
		Last Modified: Sat, 29 Dec 2018 12:35:53 GMT  
		Size: 2.3 MB (2253692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc32a8ef86925c1f198934da0af3fa6095db1ef472603a62dfad17333c52c080`  
		Last Modified: Sat, 29 Dec 2018 12:35:59 GMT  
		Size: 16.6 MB (16551336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee169e4f12004f6151c061884d06ea74ec8e8d76968250f78b8a8a2c14fa7d6`  
		Last Modified: Sat, 29 Dec 2018 12:35:54 GMT  
		Size: 2.1 MB (2062773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5844732f04d95dbd95f6bdae1c44709a8e2914ba359dd1a855638dd25e1b23b6`  
		Last Modified: Sat, 29 Dec 2018 16:00:54 GMT  
		Size: 3.9 KB (3927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3d22a05cc6323ab495e68d5826a252004464e7a0d860b8d2d2886b1ecba079`  
		Last Modified: Sat, 29 Dec 2018 16:00:54 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d367371ee5615561fc6839dc558d16e5481a134a177712f13c2154a2fe0ba13`  
		Last Modified: Sat, 29 Dec 2018 16:01:54 GMT  
		Size: 126.3 MB (126335120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5169a9e3436b0fe008e0289160917c5bab1d7a657992e470828d43e3b0e0d8`  
		Last Modified: Sat, 29 Dec 2018 16:00:54 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5` - linux; arm variant v7

```console
$ docker pull plone@sha256:131de8032571c0c539963dd3cec8616c75cb96ef04bb372e91a3b88fd2b42ccb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167404948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:995f3bd53f22db522cc48aa2407edc795eb3f3b4484d03f61bcf337e2eb38f34`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 15:52:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 15:52:53 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:51:07 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 16:51:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:51:19 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 16:51:19 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 16:54:51 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 16:54:53 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 16:55:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 16:55:18 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 22:01:59 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 16 Nov 2018 22:02:00 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 22:02:02 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 26 Dec 2018 14:02:32 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Wed, 26 Dec 2018 14:16:44 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 26 Dec 2018 14:16:49 GMT
VOLUME [/data]
# Wed, 26 Dec 2018 14:16:49 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Wed, 26 Dec 2018 14:16:50 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 14:16:50 GMT
WORKDIR /plone/instance
# Wed, 26 Dec 2018 14:16:51 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 26 Dec 2018 14:16:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 14:16:51 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b0c49c7dc2d283c04a1f53016ec326c02583c23a4f9f53d3a27e228128e4b8`  
		Last Modified: Fri, 16 Nov 2018 17:20:17 GMT  
		Size: 2.2 MB (2169727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ac064474bf5754caabc399ce93cd81cc0501b923feee69533c08c85e43274b`  
		Last Modified: Fri, 16 Nov 2018 17:20:21 GMT  
		Size: 16.1 MB (16134747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a540e69bb65b21700fae2d1cf4a3ef2d288a52fba9754a4070a77f858c74dcc3`  
		Last Modified: Fri, 16 Nov 2018 17:20:17 GMT  
		Size: 2.1 MB (2062764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08028cc2c9b7af96f8258c973b42fd18ea291a28ff2ecdba67865c102fc463c8`  
		Last Modified: Fri, 16 Nov 2018 22:34:25 GMT  
		Size: 3.9 KB (3931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2d854296ae2ca7db23c79bea8122b35bc8b521925888329fa5711f43f29212`  
		Last Modified: Wed, 26 Dec 2018 14:33:16 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f56737c436be47fe7831d8adaea670783d27ae4e18d54440cf7dd3a8ea303b`  
		Last Modified: Wed, 26 Dec 2018 14:34:07 GMT  
		Size: 127.8 MB (127760793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3759ff0221086c3f46130ffb5d54d8c94d5a2df44c9e48edc6e41a20ac5ba567`  
		Last Modified: Wed, 26 Dec 2018 14:33:16 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:b3de211e586b25b51d160328ab576176d62a5ea3685f182d3e4e3cd2d785c5a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167821087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d25aa5843b642729d528ca2e7b946ec98802932ab1563d235fd6ccec1405c9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 20:39:43 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 22:25:50 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 22:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:26:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 22:26:10 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 22:36:13 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 22:36:14 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 22:37:00 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 22:37:00 GMT
CMD ["python2"]
# Sat, 17 Nov 2018 13:30:11 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 17 Nov 2018 13:30:11 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 17 Nov 2018 13:30:14 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 17 Nov 2018 13:30:15 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 17 Nov 2018 13:57:16 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 17 Nov 2018 13:57:19 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 13:57:20 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sat, 17 Nov 2018 13:57:21 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 13:57:22 GMT
WORKDIR /plone/instance
# Sat, 17 Nov 2018 13:57:23 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 17 Nov 2018 13:57:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Nov 2018 13:57:25 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2400828ed5f7de6b4abe19a9b6a1da87997de14ce3043dd5a306bb1a25a9d6`  
		Last Modified: Fri, 16 Nov 2018 23:14:59 GMT  
		Size: 2.2 MB (2225780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7ef7535e096ee1958f3440104631badd6af8280fe3bb5fc4d906328fd6c4be`  
		Last Modified: Fri, 16 Nov 2018 23:15:05 GMT  
		Size: 16.9 MB (16866351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694e62d3123beac1f0d6be9ddf05c0928dc49e35f43e15d6451efbe260390ace`  
		Last Modified: Fri, 16 Nov 2018 23:14:59 GMT  
		Size: 2.1 MB (2063967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300e174810881d2036a7cfacbda9d4da7974e2730e34953de8ff5fed0fb29795`  
		Last Modified: Sat, 17 Nov 2018 15:19:06 GMT  
		Size: 3.9 KB (3893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dd35d7749e2ac48f17a21c9231b6b79a053ca9ab5430dc252a91c8d32198a2`  
		Last Modified: Sat, 17 Nov 2018 15:19:06 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7aae2a7a3d6934bbedab420feaf177f6e97b45fc9b75308047129f24a6153fa`  
		Last Modified: Sat, 17 Nov 2018 15:19:59 GMT  
		Size: 126.3 MB (126326862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a54ebeb20eadc479c031a86a0fcd68116117e0c9b32dcc7787fb10e831e6f0`  
		Last Modified: Sat, 17 Nov 2018 15:19:06 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5` - linux; 386

```console
$ docker pull plone@sha256:373c2ca08ac37bd358c552e5d77aaf0ae24dd70c0f5b0fe28fda833135222e11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174197738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4253b96750253f3309184311fccd2cba784f31db0697fc0396d008b0137edc8e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:20:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 03:20:07 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:53:52 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 17 Nov 2018 04:54:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:54:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 17 Nov 2018 04:54:06 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 17 Nov 2018 04:58:20 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 17 Nov 2018 04:58:20 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 04:58:42 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 04:58:42 GMT
CMD ["python2"]
# Sun, 18 Nov 2018 00:02:35 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sun, 18 Nov 2018 00:02:35 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sun, 18 Nov 2018 00:02:36 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sun, 18 Nov 2018 00:02:36 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sun, 18 Nov 2018 00:08:13 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sun, 18 Nov 2018 00:08:15 GMT
VOLUME [/data]
# Sun, 18 Nov 2018 00:08:15 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sun, 18 Nov 2018 00:08:15 GMT
EXPOSE 8080/tcp
# Sun, 18 Nov 2018 00:08:16 GMT
WORKDIR /plone/instance
# Sun, 18 Nov 2018 00:08:16 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sun, 18 Nov 2018 00:08:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Nov 2018 00:08:17 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d4b34c494bfcb09a0f6ae4e6fb6193e0c1a470639d5fe83c7b3938c8dbb638`  
		Last Modified: Sat, 17 Nov 2018 05:59:22 GMT  
		Size: 2.5 MB (2517432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9e73c9c882f3982c9ed5981bd467599bcc532b5835619f16e458c01fa0945c`  
		Last Modified: Sat, 17 Nov 2018 05:59:32 GMT  
		Size: 16.3 MB (16297967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16471a653122b7fe75047706a10aef16870aaaac4dbc2fe90e699bd0dc8792e2`  
		Last Modified: Sat, 17 Nov 2018 05:59:22 GMT  
		Size: 2.1 MB (2063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddb7ee94532f2bb97e34330ca190e44b2324d3a57b8bd69038f705f73e0e3ae`  
		Last Modified: Sun, 18 Nov 2018 00:34:40 GMT  
		Size: 3.9 KB (3878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e4d7245c944beec4684b167d64abd7b2e2978963a1a42e5cbbb98434cb4b41`  
		Last Modified: Sun, 18 Nov 2018 00:34:40 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a8d08e2b669040f1d594955201c244c294b5add6175adedb111b1c1f611961`  
		Last Modified: Sun, 18 Nov 2018 00:35:16 GMT  
		Size: 130.2 MB (130185625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eac39569f7ea9146302f3ee9a95de169c604253c03242f415c4d476bffbc55e`  
		Last Modified: Sun, 18 Nov 2018 00:34:40 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5` - linux; ppc64le

```console
$ docker pull plone@sha256:b003b0b5491e843faa351b5ceb4f77958abea0e581e9f4524047a87e7f09e2f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171532977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590c28b83b83ea9eda27a00bfadecb516d5f81aa0e161a471a80aead8bdb0472`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:32:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:32:26 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 11:16:38 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 11:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:16:58 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 11:17:00 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 11:22:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 11:22:04 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 11:22:35 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 11:22:38 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 16:15:16 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 29 Dec 2018 16:15:17 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 16:15:21 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 16:15:22 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 16:32:16 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 16:32:25 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 16:32:28 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 16:32:30 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 16:32:33 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 16:32:35 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 16:32:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 16:32:39 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd25594913d429a5d59ff42f478d86a78d7ee251b3fa52a347797f224ff7061`  
		Last Modified: Sat, 29 Dec 2018 11:26:52 GMT  
		Size: 2.2 MB (2189372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa98682633ac3189894db1e18de5580a4146b2c0d34ca088b0f49e1d76efb7b8`  
		Last Modified: Sat, 29 Dec 2018 11:26:55 GMT  
		Size: 17.3 MB (17280695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3654b3847f1035f3ba7007044ad302aaab0d8dd4fff4186828017c4f1e09b383`  
		Last Modified: Sat, 29 Dec 2018 11:26:53 GMT  
		Size: 2.1 MB (2063574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d252f06ab5f590600dea65105ad482e24ba3eb1b6fd9b0e2869fe63aba8984`  
		Last Modified: Sat, 29 Dec 2018 16:52:56 GMT  
		Size: 3.9 KB (3936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648a9167295f1f20b2b8b277fff1ef386d4cab57a47793bbf9b1a76d1a10121c`  
		Last Modified: Sat, 29 Dec 2018 16:52:56 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c089a45c21d5e76adcdbbd86f0449d815aef666b37fb88bf89dc0b6aacb886fc`  
		Last Modified: Sat, 29 Dec 2018 16:53:58 GMT  
		Size: 127.2 MB (127245648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1814696ff3dc8b2a752f939d00132a93da6aa2a2b8dd79d9fd892ca907039071`  
		Last Modified: Sat, 29 Dec 2018 16:52:56 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1`

```console
$ docker pull plone@sha256:6188acc42751e9aefb5ece88c7cd3f44e3f28d429aac09d027657670918e8140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `plone:5.1` - linux; amd64

```console
$ docker pull plone@sha256:813ca9dfdb9b7ac8171b168cf4933e5aa7d82fea82502dc78455da703ceff22f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173652889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf41fc9d9d540522e0a2b1acac2a561519fd53bd67b5e5bc81a8bae04f9a3fc8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 07:17:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 07:17:48 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 08:24:32 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 08:24:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 08:24:40 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 08:24:40 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 08:27:09 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 08:27:09 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 08:27:22 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 08:27:23 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 13:39:27 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 29 Dec 2018 13:39:27 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 13:39:29 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 13:39:29 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 13:47:48 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 13:47:50 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 13:47:51 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 13:47:51 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 13:47:51 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 13:47:52 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 13:47:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 13:47:53 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b2167b8d5af3176a02e24a3b94d2129553c24884ae3fdcdeaa7ed4b2dc9563`  
		Last Modified: Sat, 29 Dec 2018 08:48:53 GMT  
		Size: 2.5 MB (2528136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b044db3f9e1222b97f7dd3178dffe1215baa67f0d870a8628ae05ef69f9b2`  
		Last Modified: Sat, 29 Dec 2018 08:48:56 GMT  
		Size: 17.1 MB (17100661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7356f8556c46a7b6fe3793733377f814a9abde0bcb932149ba9a2cc4cb0ce5f4`  
		Last Modified: Sat, 29 Dec 2018 08:48:53 GMT  
		Size: 2.1 MB (2063050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1536f9d664ee94811797c54a6b66e15fd8461e37c6f3b4b7b283cadb0e851e`  
		Last Modified: Sat, 29 Dec 2018 14:01:11 GMT  
		Size: 3.9 KB (3885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b674766b9f8601d545cd2fa326e16c2d708b665bfa003882bd0f8fa012daba`  
		Last Modified: Sat, 29 Dec 2018 14:01:11 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b23a189499c9bf03aa4d588107675fdbd52723fc4a2663010a59b1db71e5630`  
		Last Modified: Sat, 29 Dec 2018 14:02:02 GMT  
		Size: 129.5 MB (129461316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eab6249b78f5ff5a020de266f6503a212cc854d26e90cca2b1b4fd8c6d71533`  
		Last Modified: Sat, 29 Dec 2018 14:01:11 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1` - linux; arm variant v5

```console
$ docker pull plone@sha256:78848bc59c8b658982a3c2f0bcad85dbfd0bbc673b466d70a39dcc0fe501013f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168377547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6717d084e4fc569bbcca05576602c81694094a0702b9c225b6f3dcf5587887`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:08:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:08:54 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:11:32 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 12:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 12:11:48 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 12:15:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 12:15:43 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 12:16:10 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 12:16:11 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 15:25:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 29 Dec 2018 15:25:06 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 15:25:08 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 15:25:08 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 15:41:41 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 15:41:47 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 15:41:47 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 15:41:48 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 15:41:48 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 15:41:49 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 15:41:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 15:41:49 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c7a64b8477849065dd114de9501d6290f20ffae66048f69f2090e10c2f22f0`  
		Last Modified: Sat, 29 Dec 2018 12:35:53 GMT  
		Size: 2.3 MB (2253692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc32a8ef86925c1f198934da0af3fa6095db1ef472603a62dfad17333c52c080`  
		Last Modified: Sat, 29 Dec 2018 12:35:59 GMT  
		Size: 16.6 MB (16551336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee169e4f12004f6151c061884d06ea74ec8e8d76968250f78b8a8a2c14fa7d6`  
		Last Modified: Sat, 29 Dec 2018 12:35:54 GMT  
		Size: 2.1 MB (2062773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5844732f04d95dbd95f6bdae1c44709a8e2914ba359dd1a855638dd25e1b23b6`  
		Last Modified: Sat, 29 Dec 2018 16:00:54 GMT  
		Size: 3.9 KB (3927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3d22a05cc6323ab495e68d5826a252004464e7a0d860b8d2d2886b1ecba079`  
		Last Modified: Sat, 29 Dec 2018 16:00:54 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d367371ee5615561fc6839dc558d16e5481a134a177712f13c2154a2fe0ba13`  
		Last Modified: Sat, 29 Dec 2018 16:01:54 GMT  
		Size: 126.3 MB (126335120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5169a9e3436b0fe008e0289160917c5bab1d7a657992e470828d43e3b0e0d8`  
		Last Modified: Sat, 29 Dec 2018 16:00:54 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1` - linux; arm variant v7

```console
$ docker pull plone@sha256:131de8032571c0c539963dd3cec8616c75cb96ef04bb372e91a3b88fd2b42ccb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167404948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:995f3bd53f22db522cc48aa2407edc795eb3f3b4484d03f61bcf337e2eb38f34`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 15:52:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 15:52:53 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:51:07 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 16:51:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:51:19 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 16:51:19 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 16:54:51 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 16:54:53 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 16:55:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 16:55:18 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 22:01:59 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 16 Nov 2018 22:02:00 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 22:02:02 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 26 Dec 2018 14:02:32 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Wed, 26 Dec 2018 14:16:44 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 26 Dec 2018 14:16:49 GMT
VOLUME [/data]
# Wed, 26 Dec 2018 14:16:49 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Wed, 26 Dec 2018 14:16:50 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 14:16:50 GMT
WORKDIR /plone/instance
# Wed, 26 Dec 2018 14:16:51 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 26 Dec 2018 14:16:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 14:16:51 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b0c49c7dc2d283c04a1f53016ec326c02583c23a4f9f53d3a27e228128e4b8`  
		Last Modified: Fri, 16 Nov 2018 17:20:17 GMT  
		Size: 2.2 MB (2169727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ac064474bf5754caabc399ce93cd81cc0501b923feee69533c08c85e43274b`  
		Last Modified: Fri, 16 Nov 2018 17:20:21 GMT  
		Size: 16.1 MB (16134747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a540e69bb65b21700fae2d1cf4a3ef2d288a52fba9754a4070a77f858c74dcc3`  
		Last Modified: Fri, 16 Nov 2018 17:20:17 GMT  
		Size: 2.1 MB (2062764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08028cc2c9b7af96f8258c973b42fd18ea291a28ff2ecdba67865c102fc463c8`  
		Last Modified: Fri, 16 Nov 2018 22:34:25 GMT  
		Size: 3.9 KB (3931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2d854296ae2ca7db23c79bea8122b35bc8b521925888329fa5711f43f29212`  
		Last Modified: Wed, 26 Dec 2018 14:33:16 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f56737c436be47fe7831d8adaea670783d27ae4e18d54440cf7dd3a8ea303b`  
		Last Modified: Wed, 26 Dec 2018 14:34:07 GMT  
		Size: 127.8 MB (127760793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3759ff0221086c3f46130ffb5d54d8c94d5a2df44c9e48edc6e41a20ac5ba567`  
		Last Modified: Wed, 26 Dec 2018 14:33:16 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:b3de211e586b25b51d160328ab576176d62a5ea3685f182d3e4e3cd2d785c5a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167821087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d25aa5843b642729d528ca2e7b946ec98802932ab1563d235fd6ccec1405c9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 20:39:43 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 22:25:50 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 22:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:26:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 22:26:10 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 22:36:13 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 22:36:14 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 22:37:00 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 22:37:00 GMT
CMD ["python2"]
# Sat, 17 Nov 2018 13:30:11 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 17 Nov 2018 13:30:11 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 17 Nov 2018 13:30:14 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 17 Nov 2018 13:30:15 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 17 Nov 2018 13:57:16 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 17 Nov 2018 13:57:19 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 13:57:20 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sat, 17 Nov 2018 13:57:21 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 13:57:22 GMT
WORKDIR /plone/instance
# Sat, 17 Nov 2018 13:57:23 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 17 Nov 2018 13:57:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Nov 2018 13:57:25 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2400828ed5f7de6b4abe19a9b6a1da87997de14ce3043dd5a306bb1a25a9d6`  
		Last Modified: Fri, 16 Nov 2018 23:14:59 GMT  
		Size: 2.2 MB (2225780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7ef7535e096ee1958f3440104631badd6af8280fe3bb5fc4d906328fd6c4be`  
		Last Modified: Fri, 16 Nov 2018 23:15:05 GMT  
		Size: 16.9 MB (16866351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694e62d3123beac1f0d6be9ddf05c0928dc49e35f43e15d6451efbe260390ace`  
		Last Modified: Fri, 16 Nov 2018 23:14:59 GMT  
		Size: 2.1 MB (2063967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300e174810881d2036a7cfacbda9d4da7974e2730e34953de8ff5fed0fb29795`  
		Last Modified: Sat, 17 Nov 2018 15:19:06 GMT  
		Size: 3.9 KB (3893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dd35d7749e2ac48f17a21c9231b6b79a053ca9ab5430dc252a91c8d32198a2`  
		Last Modified: Sat, 17 Nov 2018 15:19:06 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7aae2a7a3d6934bbedab420feaf177f6e97b45fc9b75308047129f24a6153fa`  
		Last Modified: Sat, 17 Nov 2018 15:19:59 GMT  
		Size: 126.3 MB (126326862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a54ebeb20eadc479c031a86a0fcd68116117e0c9b32dcc7787fb10e831e6f0`  
		Last Modified: Sat, 17 Nov 2018 15:19:06 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1` - linux; 386

```console
$ docker pull plone@sha256:373c2ca08ac37bd358c552e5d77aaf0ae24dd70c0f5b0fe28fda833135222e11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174197738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4253b96750253f3309184311fccd2cba784f31db0697fc0396d008b0137edc8e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:20:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 03:20:07 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:53:52 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 17 Nov 2018 04:54:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:54:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 17 Nov 2018 04:54:06 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 17 Nov 2018 04:58:20 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 17 Nov 2018 04:58:20 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 04:58:42 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 04:58:42 GMT
CMD ["python2"]
# Sun, 18 Nov 2018 00:02:35 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sun, 18 Nov 2018 00:02:35 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sun, 18 Nov 2018 00:02:36 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sun, 18 Nov 2018 00:02:36 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sun, 18 Nov 2018 00:08:13 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sun, 18 Nov 2018 00:08:15 GMT
VOLUME [/data]
# Sun, 18 Nov 2018 00:08:15 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sun, 18 Nov 2018 00:08:15 GMT
EXPOSE 8080/tcp
# Sun, 18 Nov 2018 00:08:16 GMT
WORKDIR /plone/instance
# Sun, 18 Nov 2018 00:08:16 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sun, 18 Nov 2018 00:08:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Nov 2018 00:08:17 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d4b34c494bfcb09a0f6ae4e6fb6193e0c1a470639d5fe83c7b3938c8dbb638`  
		Last Modified: Sat, 17 Nov 2018 05:59:22 GMT  
		Size: 2.5 MB (2517432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9e73c9c882f3982c9ed5981bd467599bcc532b5835619f16e458c01fa0945c`  
		Last Modified: Sat, 17 Nov 2018 05:59:32 GMT  
		Size: 16.3 MB (16297967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16471a653122b7fe75047706a10aef16870aaaac4dbc2fe90e699bd0dc8792e2`  
		Last Modified: Sat, 17 Nov 2018 05:59:22 GMT  
		Size: 2.1 MB (2063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddb7ee94532f2bb97e34330ca190e44b2324d3a57b8bd69038f705f73e0e3ae`  
		Last Modified: Sun, 18 Nov 2018 00:34:40 GMT  
		Size: 3.9 KB (3878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e4d7245c944beec4684b167d64abd7b2e2978963a1a42e5cbbb98434cb4b41`  
		Last Modified: Sun, 18 Nov 2018 00:34:40 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a8d08e2b669040f1d594955201c244c294b5add6175adedb111b1c1f611961`  
		Last Modified: Sun, 18 Nov 2018 00:35:16 GMT  
		Size: 130.2 MB (130185625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eac39569f7ea9146302f3ee9a95de169c604253c03242f415c4d476bffbc55e`  
		Last Modified: Sun, 18 Nov 2018 00:34:40 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1` - linux; ppc64le

```console
$ docker pull plone@sha256:b003b0b5491e843faa351b5ceb4f77958abea0e581e9f4524047a87e7f09e2f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171532977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590c28b83b83ea9eda27a00bfadecb516d5f81aa0e161a471a80aead8bdb0472`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:32:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:32:26 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 11:16:38 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 11:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:16:58 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 11:17:00 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 11:22:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 11:22:04 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 11:22:35 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 11:22:38 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 16:15:16 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 29 Dec 2018 16:15:17 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 16:15:21 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 16:15:22 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 16:32:16 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 16:32:25 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 16:32:28 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 16:32:30 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 16:32:33 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 16:32:35 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 16:32:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 16:32:39 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd25594913d429a5d59ff42f478d86a78d7ee251b3fa52a347797f224ff7061`  
		Last Modified: Sat, 29 Dec 2018 11:26:52 GMT  
		Size: 2.2 MB (2189372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa98682633ac3189894db1e18de5580a4146b2c0d34ca088b0f49e1d76efb7b8`  
		Last Modified: Sat, 29 Dec 2018 11:26:55 GMT  
		Size: 17.3 MB (17280695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3654b3847f1035f3ba7007044ad302aaab0d8dd4fff4186828017c4f1e09b383`  
		Last Modified: Sat, 29 Dec 2018 11:26:53 GMT  
		Size: 2.1 MB (2063574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d252f06ab5f590600dea65105ad482e24ba3eb1b6fd9b0e2869fe63aba8984`  
		Last Modified: Sat, 29 Dec 2018 16:52:56 GMT  
		Size: 3.9 KB (3936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648a9167295f1f20b2b8b277fff1ef386d4cab57a47793bbf9b1a76d1a10121c`  
		Last Modified: Sat, 29 Dec 2018 16:52:56 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c089a45c21d5e76adcdbbd86f0449d815aef666b37fb88bf89dc0b6aacb886fc`  
		Last Modified: Sat, 29 Dec 2018 16:53:58 GMT  
		Size: 127.2 MB (127245648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1814696ff3dc8b2a752f939d00132a93da6aa2a2b8dd79d9fd892ca907039071`  
		Last Modified: Sat, 29 Dec 2018 16:52:56 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1.4`

```console
$ docker pull plone@sha256:6188acc42751e9aefb5ece88c7cd3f44e3f28d429aac09d027657670918e8140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `plone:5.1.4` - linux; amd64

```console
$ docker pull plone@sha256:813ca9dfdb9b7ac8171b168cf4933e5aa7d82fea82502dc78455da703ceff22f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173652889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf41fc9d9d540522e0a2b1acac2a561519fd53bd67b5e5bc81a8bae04f9a3fc8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 07:17:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 07:17:48 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 08:24:32 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 08:24:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 08:24:40 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 08:24:40 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 08:27:09 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 08:27:09 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 08:27:22 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 08:27:23 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 13:39:27 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 29 Dec 2018 13:39:27 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 13:39:29 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 13:39:29 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 13:47:48 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 13:47:50 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 13:47:51 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 13:47:51 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 13:47:51 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 13:47:52 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 13:47:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 13:47:53 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b2167b8d5af3176a02e24a3b94d2129553c24884ae3fdcdeaa7ed4b2dc9563`  
		Last Modified: Sat, 29 Dec 2018 08:48:53 GMT  
		Size: 2.5 MB (2528136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b044db3f9e1222b97f7dd3178dffe1215baa67f0d870a8628ae05ef69f9b2`  
		Last Modified: Sat, 29 Dec 2018 08:48:56 GMT  
		Size: 17.1 MB (17100661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7356f8556c46a7b6fe3793733377f814a9abde0bcb932149ba9a2cc4cb0ce5f4`  
		Last Modified: Sat, 29 Dec 2018 08:48:53 GMT  
		Size: 2.1 MB (2063050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1536f9d664ee94811797c54a6b66e15fd8461e37c6f3b4b7b283cadb0e851e`  
		Last Modified: Sat, 29 Dec 2018 14:01:11 GMT  
		Size: 3.9 KB (3885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b674766b9f8601d545cd2fa326e16c2d708b665bfa003882bd0f8fa012daba`  
		Last Modified: Sat, 29 Dec 2018 14:01:11 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b23a189499c9bf03aa4d588107675fdbd52723fc4a2663010a59b1db71e5630`  
		Last Modified: Sat, 29 Dec 2018 14:02:02 GMT  
		Size: 129.5 MB (129461316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eab6249b78f5ff5a020de266f6503a212cc854d26e90cca2b1b4fd8c6d71533`  
		Last Modified: Sat, 29 Dec 2018 14:01:11 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.4` - linux; arm variant v5

```console
$ docker pull plone@sha256:78848bc59c8b658982a3c2f0bcad85dbfd0bbc673b466d70a39dcc0fe501013f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168377547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6717d084e4fc569bbcca05576602c81694094a0702b9c225b6f3dcf5587887`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:08:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:08:54 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:11:32 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 12:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 12:11:48 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 12:15:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 12:15:43 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 12:16:10 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 12:16:11 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 15:25:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 29 Dec 2018 15:25:06 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 15:25:08 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 15:25:08 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 15:41:41 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 15:41:47 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 15:41:47 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 15:41:48 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 15:41:48 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 15:41:49 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 15:41:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 15:41:49 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c7a64b8477849065dd114de9501d6290f20ffae66048f69f2090e10c2f22f0`  
		Last Modified: Sat, 29 Dec 2018 12:35:53 GMT  
		Size: 2.3 MB (2253692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc32a8ef86925c1f198934da0af3fa6095db1ef472603a62dfad17333c52c080`  
		Last Modified: Sat, 29 Dec 2018 12:35:59 GMT  
		Size: 16.6 MB (16551336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee169e4f12004f6151c061884d06ea74ec8e8d76968250f78b8a8a2c14fa7d6`  
		Last Modified: Sat, 29 Dec 2018 12:35:54 GMT  
		Size: 2.1 MB (2062773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5844732f04d95dbd95f6bdae1c44709a8e2914ba359dd1a855638dd25e1b23b6`  
		Last Modified: Sat, 29 Dec 2018 16:00:54 GMT  
		Size: 3.9 KB (3927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3d22a05cc6323ab495e68d5826a252004464e7a0d860b8d2d2886b1ecba079`  
		Last Modified: Sat, 29 Dec 2018 16:00:54 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d367371ee5615561fc6839dc558d16e5481a134a177712f13c2154a2fe0ba13`  
		Last Modified: Sat, 29 Dec 2018 16:01:54 GMT  
		Size: 126.3 MB (126335120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5169a9e3436b0fe008e0289160917c5bab1d7a657992e470828d43e3b0e0d8`  
		Last Modified: Sat, 29 Dec 2018 16:00:54 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.4` - linux; arm variant v7

```console
$ docker pull plone@sha256:131de8032571c0c539963dd3cec8616c75cb96ef04bb372e91a3b88fd2b42ccb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167404948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:995f3bd53f22db522cc48aa2407edc795eb3f3b4484d03f61bcf337e2eb38f34`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 15:52:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 15:52:53 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:51:07 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 16:51:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:51:19 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 16:51:19 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 16:54:51 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 16:54:53 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 16:55:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 16:55:18 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 22:01:59 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 16 Nov 2018 22:02:00 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 22:02:02 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 26 Dec 2018 14:02:32 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Wed, 26 Dec 2018 14:16:44 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 26 Dec 2018 14:16:49 GMT
VOLUME [/data]
# Wed, 26 Dec 2018 14:16:49 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Wed, 26 Dec 2018 14:16:50 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 14:16:50 GMT
WORKDIR /plone/instance
# Wed, 26 Dec 2018 14:16:51 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 26 Dec 2018 14:16:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 14:16:51 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b0c49c7dc2d283c04a1f53016ec326c02583c23a4f9f53d3a27e228128e4b8`  
		Last Modified: Fri, 16 Nov 2018 17:20:17 GMT  
		Size: 2.2 MB (2169727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ac064474bf5754caabc399ce93cd81cc0501b923feee69533c08c85e43274b`  
		Last Modified: Fri, 16 Nov 2018 17:20:21 GMT  
		Size: 16.1 MB (16134747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a540e69bb65b21700fae2d1cf4a3ef2d288a52fba9754a4070a77f858c74dcc3`  
		Last Modified: Fri, 16 Nov 2018 17:20:17 GMT  
		Size: 2.1 MB (2062764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08028cc2c9b7af96f8258c973b42fd18ea291a28ff2ecdba67865c102fc463c8`  
		Last Modified: Fri, 16 Nov 2018 22:34:25 GMT  
		Size: 3.9 KB (3931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2d854296ae2ca7db23c79bea8122b35bc8b521925888329fa5711f43f29212`  
		Last Modified: Wed, 26 Dec 2018 14:33:16 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f56737c436be47fe7831d8adaea670783d27ae4e18d54440cf7dd3a8ea303b`  
		Last Modified: Wed, 26 Dec 2018 14:34:07 GMT  
		Size: 127.8 MB (127760793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3759ff0221086c3f46130ffb5d54d8c94d5a2df44c9e48edc6e41a20ac5ba567`  
		Last Modified: Wed, 26 Dec 2018 14:33:16 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.4` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:b3de211e586b25b51d160328ab576176d62a5ea3685f182d3e4e3cd2d785c5a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167821087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d25aa5843b642729d528ca2e7b946ec98802932ab1563d235fd6ccec1405c9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 20:39:43 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 22:25:50 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 22:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:26:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 22:26:10 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 22:36:13 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 22:36:14 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 22:37:00 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 22:37:00 GMT
CMD ["python2"]
# Sat, 17 Nov 2018 13:30:11 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 17 Nov 2018 13:30:11 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 17 Nov 2018 13:30:14 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 17 Nov 2018 13:30:15 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 17 Nov 2018 13:57:16 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 17 Nov 2018 13:57:19 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 13:57:20 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sat, 17 Nov 2018 13:57:21 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 13:57:22 GMT
WORKDIR /plone/instance
# Sat, 17 Nov 2018 13:57:23 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 17 Nov 2018 13:57:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Nov 2018 13:57:25 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2400828ed5f7de6b4abe19a9b6a1da87997de14ce3043dd5a306bb1a25a9d6`  
		Last Modified: Fri, 16 Nov 2018 23:14:59 GMT  
		Size: 2.2 MB (2225780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7ef7535e096ee1958f3440104631badd6af8280fe3bb5fc4d906328fd6c4be`  
		Last Modified: Fri, 16 Nov 2018 23:15:05 GMT  
		Size: 16.9 MB (16866351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694e62d3123beac1f0d6be9ddf05c0928dc49e35f43e15d6451efbe260390ace`  
		Last Modified: Fri, 16 Nov 2018 23:14:59 GMT  
		Size: 2.1 MB (2063967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300e174810881d2036a7cfacbda9d4da7974e2730e34953de8ff5fed0fb29795`  
		Last Modified: Sat, 17 Nov 2018 15:19:06 GMT  
		Size: 3.9 KB (3893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dd35d7749e2ac48f17a21c9231b6b79a053ca9ab5430dc252a91c8d32198a2`  
		Last Modified: Sat, 17 Nov 2018 15:19:06 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7aae2a7a3d6934bbedab420feaf177f6e97b45fc9b75308047129f24a6153fa`  
		Last Modified: Sat, 17 Nov 2018 15:19:59 GMT  
		Size: 126.3 MB (126326862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a54ebeb20eadc479c031a86a0fcd68116117e0c9b32dcc7787fb10e831e6f0`  
		Last Modified: Sat, 17 Nov 2018 15:19:06 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.4` - linux; 386

```console
$ docker pull plone@sha256:373c2ca08ac37bd358c552e5d77aaf0ae24dd70c0f5b0fe28fda833135222e11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174197738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4253b96750253f3309184311fccd2cba784f31db0697fc0396d008b0137edc8e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:20:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 03:20:07 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:53:52 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 17 Nov 2018 04:54:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:54:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 17 Nov 2018 04:54:06 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 17 Nov 2018 04:58:20 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 17 Nov 2018 04:58:20 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 04:58:42 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 04:58:42 GMT
CMD ["python2"]
# Sun, 18 Nov 2018 00:02:35 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sun, 18 Nov 2018 00:02:35 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sun, 18 Nov 2018 00:02:36 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sun, 18 Nov 2018 00:02:36 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sun, 18 Nov 2018 00:08:13 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sun, 18 Nov 2018 00:08:15 GMT
VOLUME [/data]
# Sun, 18 Nov 2018 00:08:15 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sun, 18 Nov 2018 00:08:15 GMT
EXPOSE 8080/tcp
# Sun, 18 Nov 2018 00:08:16 GMT
WORKDIR /plone/instance
# Sun, 18 Nov 2018 00:08:16 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sun, 18 Nov 2018 00:08:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Nov 2018 00:08:17 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d4b34c494bfcb09a0f6ae4e6fb6193e0c1a470639d5fe83c7b3938c8dbb638`  
		Last Modified: Sat, 17 Nov 2018 05:59:22 GMT  
		Size: 2.5 MB (2517432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9e73c9c882f3982c9ed5981bd467599bcc532b5835619f16e458c01fa0945c`  
		Last Modified: Sat, 17 Nov 2018 05:59:32 GMT  
		Size: 16.3 MB (16297967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16471a653122b7fe75047706a10aef16870aaaac4dbc2fe90e699bd0dc8792e2`  
		Last Modified: Sat, 17 Nov 2018 05:59:22 GMT  
		Size: 2.1 MB (2063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddb7ee94532f2bb97e34330ca190e44b2324d3a57b8bd69038f705f73e0e3ae`  
		Last Modified: Sun, 18 Nov 2018 00:34:40 GMT  
		Size: 3.9 KB (3878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e4d7245c944beec4684b167d64abd7b2e2978963a1a42e5cbbb98434cb4b41`  
		Last Modified: Sun, 18 Nov 2018 00:34:40 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a8d08e2b669040f1d594955201c244c294b5add6175adedb111b1c1f611961`  
		Last Modified: Sun, 18 Nov 2018 00:35:16 GMT  
		Size: 130.2 MB (130185625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eac39569f7ea9146302f3ee9a95de169c604253c03242f415c4d476bffbc55e`  
		Last Modified: Sun, 18 Nov 2018 00:34:40 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.4` - linux; ppc64le

```console
$ docker pull plone@sha256:b003b0b5491e843faa351b5ceb4f77958abea0e581e9f4524047a87e7f09e2f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171532977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590c28b83b83ea9eda27a00bfadecb516d5f81aa0e161a471a80aead8bdb0472`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:32:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:32:26 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 11:16:38 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 11:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:16:58 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 11:17:00 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 11:22:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 11:22:04 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 11:22:35 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 11:22:38 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 16:15:16 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 29 Dec 2018 16:15:17 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 16:15:21 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 16:15:22 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 16:32:16 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 16:32:25 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 16:32:28 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 16:32:30 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 16:32:33 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 16:32:35 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 16:32:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 16:32:39 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd25594913d429a5d59ff42f478d86a78d7ee251b3fa52a347797f224ff7061`  
		Last Modified: Sat, 29 Dec 2018 11:26:52 GMT  
		Size: 2.2 MB (2189372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa98682633ac3189894db1e18de5580a4146b2c0d34ca088b0f49e1d76efb7b8`  
		Last Modified: Sat, 29 Dec 2018 11:26:55 GMT  
		Size: 17.3 MB (17280695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3654b3847f1035f3ba7007044ad302aaab0d8dd4fff4186828017c4f1e09b383`  
		Last Modified: Sat, 29 Dec 2018 11:26:53 GMT  
		Size: 2.1 MB (2063574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d252f06ab5f590600dea65105ad482e24ba3eb1b6fd9b0e2869fe63aba8984`  
		Last Modified: Sat, 29 Dec 2018 16:52:56 GMT  
		Size: 3.9 KB (3936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648a9167295f1f20b2b8b277fff1ef386d4cab57a47793bbf9b1a76d1a10121c`  
		Last Modified: Sat, 29 Dec 2018 16:52:56 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c089a45c21d5e76adcdbbd86f0449d815aef666b37fb88bf89dc0b6aacb886fc`  
		Last Modified: Sat, 29 Dec 2018 16:53:58 GMT  
		Size: 127.2 MB (127245648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1814696ff3dc8b2a752f939d00132a93da6aa2a2b8dd79d9fd892ca907039071`  
		Last Modified: Sat, 29 Dec 2018 16:52:56 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1.4-alpine`

```console
$ docker pull plone@sha256:68a3c5359ea2f154042c1659e2eca75a1767b6d112d633e70fca9dd70bea3af7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `plone:5.1.4-alpine` - linux; amd64

```console
$ docker pull plone@sha256:ed85b996d90c9d74e18e02375731de3770b8a38740f2c46b250cc63415186212
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123469537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70807f382ff628cb2ee383ac58329fa9f202916218680ae53dd27f65f1b3381f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 03:24:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 03:24:33 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 03:53:19 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 03:53:21 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 03:53:21 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 03:53:21 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 03:55:18 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 03:55:19 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 03:55:23 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 03:55:23 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 06:08:19 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 06:08:19 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 06:08:20 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 06:08:20 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 06:16:55 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 06:16:56 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 06:16:57 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 06:16:57 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 06:16:57 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 06:16:57 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 06:16:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 06:16:58 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa45741b61edafb651985a8048ab8aa692e4a28b6350aa5e38f421997903da0`  
		Last Modified: Fri, 21 Dec 2018 04:00:13 GMT  
		Size: 308.5 KB (308484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc54ee2e6f3bccba78ccf007308d383f8bb9c78bf1a049b9c5704e578d064df`  
		Last Modified: Fri, 21 Dec 2018 04:00:19 GMT  
		Size: 17.5 MB (17546512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d994f02f15e25ef9cb3becc29fffc27d771a90c074d33e5bba5ee44096dbf65`  
		Last Modified: Fri, 21 Dec 2018 04:00:13 GMT  
		Size: 1.8 MB (1779886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05baa24b5fd57aee852259d0d989b3763ae3bda294112f9e745df94aa9f5770`  
		Last Modified: Fri, 21 Dec 2018 06:27:07 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1282cf631109aa0a8522f172cfed0ac651b64eadf060ce2ec61cf3a1c8eee06f`  
		Last Modified: Fri, 21 Dec 2018 06:27:07 GMT  
		Size: 664.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c564d0921747f383c82cd75cd5671a002fbaf8281c96742119f9b15707e6889`  
		Last Modified: Fri, 21 Dec 2018 06:27:33 GMT  
		Size: 101.7 MB (101723260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559327d9e840057ff04ab7096cd0497de950a4d9f76bc930459cf02a8ee2f972`  
		Last Modified: Fri, 21 Dec 2018 06:27:07 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.4-alpine` - linux; arm variant v6

```console
$ docker pull plone@sha256:03ce3e6c99708f18d2b55d1344273972b72bee11f830cda459437bcca2e46d16
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122179685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d55b5cf7fb6822fbaaac068e59146e07c5f4f2e856d98f013793663c0c45c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:41 GMT
ADD file:49a7d389086046d6fa37e72b7f9dc0c3b1fa155b694554609ed2c95a5504e172 in / 
# Fri, 21 Dec 2018 08:49:41 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:42 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:27:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 09:27:25 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 09:54:42 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 09:54:44 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 09:54:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 09:54:45 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 09:57:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 09:57:24 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 09:57:33 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 09:57:33 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 11:29:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 11:29:06 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 11:29:08 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 11:29:08 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 11:44:38 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 11:44:41 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 11:44:41 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 11:44:42 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 11:44:42 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 11:44:42 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 11:44:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 11:44:43 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:786f62ef66aef5b82d01dc251c095789af4cc746f6279dcc8011023d019b70fb`  
		Last Modified: Tue, 18 Sep 2018 13:06:58 GMT  
		Size: 2.1 MB (2050505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4271bf13258b585def40291fcb3b0490ce089b76fe80a5f1aa672e925ec81bcb`  
		Last Modified: Fri, 21 Dec 2018 08:50:13 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ac1a4ba006898801405578f508d1914b1fbcc353b78dcc6f7594b5ece85e4d`  
		Last Modified: Fri, 21 Dec 2018 10:03:45 GMT  
		Size: 309.3 KB (309263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776c97efb86e442631f18fddaf87e9b84bac5642bd85fc5d1274c2d5e00ece78`  
		Last Modified: Fri, 21 Dec 2018 10:03:54 GMT  
		Size: 16.8 MB (16766730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1684ccc8eccc23eb8a248cfd55d195344d2ad1e166f895e634b6f1f02b0a2958`  
		Last Modified: Fri, 21 Dec 2018 10:03:46 GMT  
		Size: 1.8 MB (1780137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d19f935dedc889154929b430db2653285de6e4a693986896f19409737cd7b23`  
		Last Modified: Fri, 21 Dec 2018 12:02:06 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36b6a3a2655dc3b2411a9ef057b7841cbc5a25463cf1375ef0f83cf85042377`  
		Last Modified: Fri, 21 Dec 2018 12:02:06 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aacf3f38df459d51c30f84658344423686e363d0ee882b58e8d173b491f670d`  
		Last Modified: Fri, 21 Dec 2018 12:02:51 GMT  
		Size: 101.3 MB (101268566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9376bfcc701a01e18d0a221fdc9e110b5679dd3e3b2b3bf7bc3ca9d7533525`  
		Last Modified: Fri, 21 Dec 2018 12:02:07 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.4-alpine` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:ce93119a5ee6ec84dba052079b734a26457a38d22331983999416dc448d09673
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122374915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ce8e5e5605c64b3ce398cfa19c6182997564eb6d122f935ee7fe26bb82a8f7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:47 GMT
ADD file:7278e4df49d628c2bbb27c53665e671f57cd2db003e030b1be93eb81c5d28303 in / 
# Fri, 21 Dec 2018 09:42:48 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:48 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:52:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 11:12:43 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 11:54:59 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 11:55:02 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 11:55:02 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 11:55:03 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 11:59:03 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 11:59:03 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 11:59:20 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 11:59:21 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 15:17:42 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 15:17:43 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 15:17:48 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 15:17:49 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 15:50:58 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 15:51:01 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:51:02 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 15:51:02 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 15:51:03 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 15:51:04 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 15:51:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:51:05 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe4843495e56e3546d4d49cf476ee7bc1650156062151aa38cf3e2fb397a70`  
		Last Modified: Fri, 21 Dec 2018 09:43:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0293ba1054d25a7ee8ac6d458fe7ac7540a298a261c352ec3d63b69bc7d3efa`  
		Last Modified: Fri, 21 Dec 2018 12:08:41 GMT  
		Size: 308.7 KB (308700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0860b4a73519906f5b8a3b859541a54430b3bf30b33386840249544752207136`  
		Last Modified: Fri, 21 Dec 2018 12:08:50 GMT  
		Size: 17.2 MB (17197561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3a954a2e0671216fb8bbedb9a8ee9526eb1ee3c6d3fd357b9f69280fc5b5ff`  
		Last Modified: Fri, 21 Dec 2018 12:08:42 GMT  
		Size: 1.8 MB (1779962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded907fa5864f8c7fd738046467d2cfa23de392d46aed97d81d1eba9266798f7`  
		Last Modified: Fri, 21 Dec 2018 16:28:59 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0add03c9bb99b8258fb4fc3f59158c5b0fbbb56c835da40e6a91c7198c6749`  
		Last Modified: Fri, 21 Dec 2018 16:28:59 GMT  
		Size: 667.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fd36494f8e62889d81f1a741c81c6dff8c7eadaf82cd43c46b037720a86b3`  
		Last Modified: Fri, 21 Dec 2018 16:29:48 GMT  
		Size: 101.1 MB (101085097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016bc6abcc091f57214484d09f809e920b4513818c37fdd4426dea05db1f6d86`  
		Last Modified: Fri, 21 Dec 2018 16:28:59 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.4-alpine` - linux; 386

```console
$ docker pull plone@sha256:0bb93a0d8f086f1e6400064c01f3ddf8d2290bf604c20364d34a4e2bd91a48c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122445665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55bf3d94eae27e68e4b62242063d5a956fa6fdd4f5fc3ccf7b3efe2bb14d596`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 11:39:54 GMT
ADD file:b2b8059d0cd5b8582648bf5cbdd2ad66e2519582281f0fa6ab560c1a85398c3c in / 
# Fri, 21 Dec 2018 11:39:54 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:39:54 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:50:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 15:50:05 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 16:12:21 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 16:12:21 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 16:12:22 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 16:12:22 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 16:14:19 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 16:14:20 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 16:14:25 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 16:14:25 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 18:15:22 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 18:15:22 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 18:15:23 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 18:15:23 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 18:23:54 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 18:23:55 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 18:23:55 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 18:23:55 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 18:23:56 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 18:23:56 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 18:23:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 18:23:56 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8fd280f9a42e33caddacaf364c842da7b3b726b15cf2a4051b8e83e1b06a0c`  
		Last Modified: Fri, 21 Dec 2018 11:40:43 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c820d3a0d895948a1b358cee353832028a7fa0fb766f53bfa36e195d821611`  
		Last Modified: Fri, 21 Dec 2018 16:19:28 GMT  
		Size: 309.2 KB (309208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5769aa7d2f91390020dfd546e4830103644b64d247a7ead2c00ccfb713f319e`  
		Last Modified: Fri, 21 Dec 2018 16:19:32 GMT  
		Size: 17.0 MB (16984066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ebfa76d9f0cc5440b35042e0de0bad1acd644865f86e6a1eea90e490564099`  
		Last Modified: Fri, 21 Dec 2018 16:19:28 GMT  
		Size: 1.8 MB (1779961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c1f520ddb608e965194360a964ffae59d9bf7c59cb9419e6d764e178d45f96`  
		Last Modified: Fri, 21 Dec 2018 18:34:10 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512484de170c139e1f2ec7754a3c4413cf012950d91f493dcde68d2c0cfd037a`  
		Last Modified: Fri, 21 Dec 2018 18:34:10 GMT  
		Size: 665.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074f78732d52f85364c027d9b88231f22a31a00026ebb77af27a3a28afe9c089`  
		Last Modified: Fri, 21 Dec 2018 18:34:39 GMT  
		Size: 101.2 MB (101198988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0481af6ded07e44a9d413ec7dab6fec255c418691eed41cd619cfe3365d18c6`  
		Last Modified: Fri, 21 Dec 2018 18:34:10 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.4-alpine` - linux; ppc64le

```console
$ docker pull plone@sha256:7029e02798b08cf4b99b650a2a96dc91211f79a6e23d7015c78a054671cd937f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123377922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f3333f808e5659f2ce8b046bb50dd290cea2fec5a4516a20407e67aa567853`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:27 GMT
ADD file:7ec696be9519c6fa2389220666cd2ddda3cded7ba858845c42ad654e96a4e16a in / 
# Fri, 21 Dec 2018 09:42:29 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:32 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:07:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 12:07:04 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 12:38:45 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 12:38:47 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 12:38:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 12:38:51 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 12:41:26 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 12:41:32 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 12:41:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 12:41:49 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 14:53:07 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 14:53:09 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 14:53:16 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 14:53:17 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 15:08:03 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 15:08:12 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:08:13 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 15:08:17 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 15:08:23 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 15:08:25 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 15:08:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:08:33 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2f41e01dbe185c32298d62f1e24622476798da0e6be6c11162fd4c7e2bacbc38`  
		Last Modified: Tue, 18 Sep 2018 13:17:40 GMT  
		Size: 2.1 MB (2099080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee294a137df5ce1dbf79febbc52196c755a051997862a2909d94aaf427752383`  
		Last Modified: Fri, 21 Dec 2018 09:45:47 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca12aacf71bc835287e70c5f78fb25dc4b173096550e8fba9b0d463d63d0388`  
		Last Modified: Fri, 21 Dec 2018 12:53:08 GMT  
		Size: 311.0 KB (311049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dee7ab6d8d2418ca850852fd666139287228940bc986050dfc4e8d62ca69175`  
		Last Modified: Fri, 21 Dec 2018 12:53:19 GMT  
		Size: 17.6 MB (17644485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b32e1ad35c213bc25de60aa0261d723007ce473f2bb23a02ebd9d3f774750d`  
		Last Modified: Fri, 21 Dec 2018 12:53:10 GMT  
		Size: 1.8 MB (1780135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4508233fffe89fd0f41987c9ba29d235d8ff08367ef8b7bf9b34a387e2e0ba5e`  
		Last Modified: Fri, 21 Dec 2018 15:26:07 GMT  
		Size: 1.4 KB (1393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b8941aab258593836c7832249f3843d98e1d4ca6c04af12c1b4490b4207ca8`  
		Last Modified: Fri, 21 Dec 2018 15:26:07 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621c6f6a18044ff80a87c3ba2f5936249d54a00a62860f1c250855bf31532ce`  
		Last Modified: Fri, 21 Dec 2018 15:27:22 GMT  
		Size: 101.5 MB (101538687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d24a541336e89f921a8ee3756557a511ed88c414007ec7a4865f9ff7dbf9ac`  
		Last Modified: Fri, 21 Dec 2018 15:26:07 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.4-alpine` - linux; s390x

```console
$ docker pull plone@sha256:1e01b429798e784764a39d5fc7279c93baae6fb5cac8ed144f3b7321ceb171ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124131047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a4192066b52d8dac5c1ecc24bda19ebd006f148102c4b83989afb395d61c68`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:29 GMT
ADD file:b764f04695aef161430a2063aee41e228cb016459404dee09be3448c73f75349 in / 
# Fri, 21 Dec 2018 12:42:30 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:02:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 14:02:54 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 14:21:28 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 14:21:29 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 14:21:30 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 14:21:30 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 14:23:12 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 14:23:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 14:23:17 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 14:23:17 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 15:57:38 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 15:57:39 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 15:57:39 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 15:57:40 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 16:06:21 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 16:06:22 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 16:06:23 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 16:06:23 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 16:06:23 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 16:06:24 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 16:06:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:06:25 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:6e61c3658cd6273d9aec7222b5e89d66892fed584a6f37e459c0e47646d98af3`  
		Last Modified: Wed, 12 Sep 2018 11:43:16 GMT  
		Size: 2.2 MB (2201183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5a991d0e8727ddad0104264ae7819c2fde180a2ca2fc266d6814b4fa2e135e`  
		Last Modified: Fri, 21 Dec 2018 12:42:59 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047352a5b63765dee839b52877188d8d4c924fd148c11341492b6e63c08177b8`  
		Last Modified: Fri, 21 Dec 2018 14:28:17 GMT  
		Size: 309.6 KB (309601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adf362f3ff2129c56913f7556d7ceff03df6967ea950eb2a0cebbc2167608f2`  
		Last Modified: Fri, 21 Dec 2018 14:28:21 GMT  
		Size: 18.0 MB (17995272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfa85912b0983795ff3815ea36164604e2e78e958025a71cc5357837827d78c`  
		Last Modified: Fri, 21 Dec 2018 14:28:17 GMT  
		Size: 1.8 MB (1779899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727ef93b7f014e176c3a57d7392ef296013c7b58529f3438c14fe896e361678`  
		Last Modified: Fri, 21 Dec 2018 16:39:18 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181d769042a5ac7b68ef9bde071d9678ed64f2c24bc37faca2b1fe6f383409a4`  
		Last Modified: Fri, 21 Dec 2018 16:39:18 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeb05c198c3b60cb88fd2008bf98f0b7e65712953f69b41b98250697bbc3756`  
		Last Modified: Fri, 21 Dec 2018 16:39:39 GMT  
		Size: 101.8 MB (101840666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66191e3ba0fc30e43af606fbb6d4afe467a88f49f92be27d343a0b061544b0a`  
		Last Modified: Fri, 21 Dec 2018 16:39:18 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1-alpine`

```console
$ docker pull plone@sha256:68a3c5359ea2f154042c1659e2eca75a1767b6d112d633e70fca9dd70bea3af7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `plone:5.1-alpine` - linux; amd64

```console
$ docker pull plone@sha256:ed85b996d90c9d74e18e02375731de3770b8a38740f2c46b250cc63415186212
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123469537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70807f382ff628cb2ee383ac58329fa9f202916218680ae53dd27f65f1b3381f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 03:24:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 03:24:33 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 03:53:19 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 03:53:21 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 03:53:21 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 03:53:21 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 03:55:18 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 03:55:19 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 03:55:23 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 03:55:23 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 06:08:19 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 06:08:19 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 06:08:20 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 06:08:20 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 06:16:55 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 06:16:56 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 06:16:57 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 06:16:57 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 06:16:57 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 06:16:57 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 06:16:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 06:16:58 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa45741b61edafb651985a8048ab8aa692e4a28b6350aa5e38f421997903da0`  
		Last Modified: Fri, 21 Dec 2018 04:00:13 GMT  
		Size: 308.5 KB (308484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc54ee2e6f3bccba78ccf007308d383f8bb9c78bf1a049b9c5704e578d064df`  
		Last Modified: Fri, 21 Dec 2018 04:00:19 GMT  
		Size: 17.5 MB (17546512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d994f02f15e25ef9cb3becc29fffc27d771a90c074d33e5bba5ee44096dbf65`  
		Last Modified: Fri, 21 Dec 2018 04:00:13 GMT  
		Size: 1.8 MB (1779886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05baa24b5fd57aee852259d0d989b3763ae3bda294112f9e745df94aa9f5770`  
		Last Modified: Fri, 21 Dec 2018 06:27:07 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1282cf631109aa0a8522f172cfed0ac651b64eadf060ce2ec61cf3a1c8eee06f`  
		Last Modified: Fri, 21 Dec 2018 06:27:07 GMT  
		Size: 664.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c564d0921747f383c82cd75cd5671a002fbaf8281c96742119f9b15707e6889`  
		Last Modified: Fri, 21 Dec 2018 06:27:33 GMT  
		Size: 101.7 MB (101723260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559327d9e840057ff04ab7096cd0497de950a4d9f76bc930459cf02a8ee2f972`  
		Last Modified: Fri, 21 Dec 2018 06:27:07 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1-alpine` - linux; arm variant v6

```console
$ docker pull plone@sha256:03ce3e6c99708f18d2b55d1344273972b72bee11f830cda459437bcca2e46d16
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122179685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d55b5cf7fb6822fbaaac068e59146e07c5f4f2e856d98f013793663c0c45c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:41 GMT
ADD file:49a7d389086046d6fa37e72b7f9dc0c3b1fa155b694554609ed2c95a5504e172 in / 
# Fri, 21 Dec 2018 08:49:41 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:42 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:27:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 09:27:25 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 09:54:42 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 09:54:44 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 09:54:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 09:54:45 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 09:57:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 09:57:24 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 09:57:33 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 09:57:33 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 11:29:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 11:29:06 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 11:29:08 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 11:29:08 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 11:44:38 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 11:44:41 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 11:44:41 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 11:44:42 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 11:44:42 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 11:44:42 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 11:44:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 11:44:43 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:786f62ef66aef5b82d01dc251c095789af4cc746f6279dcc8011023d019b70fb`  
		Last Modified: Tue, 18 Sep 2018 13:06:58 GMT  
		Size: 2.1 MB (2050505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4271bf13258b585def40291fcb3b0490ce089b76fe80a5f1aa672e925ec81bcb`  
		Last Modified: Fri, 21 Dec 2018 08:50:13 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ac1a4ba006898801405578f508d1914b1fbcc353b78dcc6f7594b5ece85e4d`  
		Last Modified: Fri, 21 Dec 2018 10:03:45 GMT  
		Size: 309.3 KB (309263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776c97efb86e442631f18fddaf87e9b84bac5642bd85fc5d1274c2d5e00ece78`  
		Last Modified: Fri, 21 Dec 2018 10:03:54 GMT  
		Size: 16.8 MB (16766730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1684ccc8eccc23eb8a248cfd55d195344d2ad1e166f895e634b6f1f02b0a2958`  
		Last Modified: Fri, 21 Dec 2018 10:03:46 GMT  
		Size: 1.8 MB (1780137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d19f935dedc889154929b430db2653285de6e4a693986896f19409737cd7b23`  
		Last Modified: Fri, 21 Dec 2018 12:02:06 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36b6a3a2655dc3b2411a9ef057b7841cbc5a25463cf1375ef0f83cf85042377`  
		Last Modified: Fri, 21 Dec 2018 12:02:06 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aacf3f38df459d51c30f84658344423686e363d0ee882b58e8d173b491f670d`  
		Last Modified: Fri, 21 Dec 2018 12:02:51 GMT  
		Size: 101.3 MB (101268566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9376bfcc701a01e18d0a221fdc9e110b5679dd3e3b2b3bf7bc3ca9d7533525`  
		Last Modified: Fri, 21 Dec 2018 12:02:07 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1-alpine` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:ce93119a5ee6ec84dba052079b734a26457a38d22331983999416dc448d09673
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122374915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ce8e5e5605c64b3ce398cfa19c6182997564eb6d122f935ee7fe26bb82a8f7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:47 GMT
ADD file:7278e4df49d628c2bbb27c53665e671f57cd2db003e030b1be93eb81c5d28303 in / 
# Fri, 21 Dec 2018 09:42:48 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:48 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:52:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 11:12:43 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 11:54:59 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 11:55:02 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 11:55:02 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 11:55:03 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 11:59:03 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 11:59:03 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 11:59:20 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 11:59:21 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 15:17:42 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 15:17:43 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 15:17:48 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 15:17:49 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 15:50:58 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 15:51:01 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:51:02 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 15:51:02 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 15:51:03 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 15:51:04 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 15:51:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:51:05 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe4843495e56e3546d4d49cf476ee7bc1650156062151aa38cf3e2fb397a70`  
		Last Modified: Fri, 21 Dec 2018 09:43:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0293ba1054d25a7ee8ac6d458fe7ac7540a298a261c352ec3d63b69bc7d3efa`  
		Last Modified: Fri, 21 Dec 2018 12:08:41 GMT  
		Size: 308.7 KB (308700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0860b4a73519906f5b8a3b859541a54430b3bf30b33386840249544752207136`  
		Last Modified: Fri, 21 Dec 2018 12:08:50 GMT  
		Size: 17.2 MB (17197561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3a954a2e0671216fb8bbedb9a8ee9526eb1ee3c6d3fd357b9f69280fc5b5ff`  
		Last Modified: Fri, 21 Dec 2018 12:08:42 GMT  
		Size: 1.8 MB (1779962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded907fa5864f8c7fd738046467d2cfa23de392d46aed97d81d1eba9266798f7`  
		Last Modified: Fri, 21 Dec 2018 16:28:59 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0add03c9bb99b8258fb4fc3f59158c5b0fbbb56c835da40e6a91c7198c6749`  
		Last Modified: Fri, 21 Dec 2018 16:28:59 GMT  
		Size: 667.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fd36494f8e62889d81f1a741c81c6dff8c7eadaf82cd43c46b037720a86b3`  
		Last Modified: Fri, 21 Dec 2018 16:29:48 GMT  
		Size: 101.1 MB (101085097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016bc6abcc091f57214484d09f809e920b4513818c37fdd4426dea05db1f6d86`  
		Last Modified: Fri, 21 Dec 2018 16:28:59 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1-alpine` - linux; 386

```console
$ docker pull plone@sha256:0bb93a0d8f086f1e6400064c01f3ddf8d2290bf604c20364d34a4e2bd91a48c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122445665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55bf3d94eae27e68e4b62242063d5a956fa6fdd4f5fc3ccf7b3efe2bb14d596`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 11:39:54 GMT
ADD file:b2b8059d0cd5b8582648bf5cbdd2ad66e2519582281f0fa6ab560c1a85398c3c in / 
# Fri, 21 Dec 2018 11:39:54 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:39:54 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:50:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 15:50:05 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 16:12:21 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 16:12:21 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 16:12:22 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 16:12:22 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 16:14:19 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 16:14:20 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 16:14:25 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 16:14:25 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 18:15:22 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 18:15:22 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 18:15:23 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 18:15:23 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 18:23:54 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 18:23:55 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 18:23:55 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 18:23:55 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 18:23:56 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 18:23:56 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 18:23:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 18:23:56 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8fd280f9a42e33caddacaf364c842da7b3b726b15cf2a4051b8e83e1b06a0c`  
		Last Modified: Fri, 21 Dec 2018 11:40:43 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c820d3a0d895948a1b358cee353832028a7fa0fb766f53bfa36e195d821611`  
		Last Modified: Fri, 21 Dec 2018 16:19:28 GMT  
		Size: 309.2 KB (309208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5769aa7d2f91390020dfd546e4830103644b64d247a7ead2c00ccfb713f319e`  
		Last Modified: Fri, 21 Dec 2018 16:19:32 GMT  
		Size: 17.0 MB (16984066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ebfa76d9f0cc5440b35042e0de0bad1acd644865f86e6a1eea90e490564099`  
		Last Modified: Fri, 21 Dec 2018 16:19:28 GMT  
		Size: 1.8 MB (1779961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c1f520ddb608e965194360a964ffae59d9bf7c59cb9419e6d764e178d45f96`  
		Last Modified: Fri, 21 Dec 2018 18:34:10 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512484de170c139e1f2ec7754a3c4413cf012950d91f493dcde68d2c0cfd037a`  
		Last Modified: Fri, 21 Dec 2018 18:34:10 GMT  
		Size: 665.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074f78732d52f85364c027d9b88231f22a31a00026ebb77af27a3a28afe9c089`  
		Last Modified: Fri, 21 Dec 2018 18:34:39 GMT  
		Size: 101.2 MB (101198988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0481af6ded07e44a9d413ec7dab6fec255c418691eed41cd619cfe3365d18c6`  
		Last Modified: Fri, 21 Dec 2018 18:34:10 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1-alpine` - linux; ppc64le

```console
$ docker pull plone@sha256:7029e02798b08cf4b99b650a2a96dc91211f79a6e23d7015c78a054671cd937f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123377922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f3333f808e5659f2ce8b046bb50dd290cea2fec5a4516a20407e67aa567853`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:27 GMT
ADD file:7ec696be9519c6fa2389220666cd2ddda3cded7ba858845c42ad654e96a4e16a in / 
# Fri, 21 Dec 2018 09:42:29 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:32 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:07:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 12:07:04 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 12:38:45 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 12:38:47 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 12:38:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 12:38:51 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 12:41:26 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 12:41:32 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 12:41:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 12:41:49 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 14:53:07 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 14:53:09 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 14:53:16 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 14:53:17 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 15:08:03 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 15:08:12 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:08:13 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 15:08:17 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 15:08:23 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 15:08:25 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 15:08:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:08:33 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2f41e01dbe185c32298d62f1e24622476798da0e6be6c11162fd4c7e2bacbc38`  
		Last Modified: Tue, 18 Sep 2018 13:17:40 GMT  
		Size: 2.1 MB (2099080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee294a137df5ce1dbf79febbc52196c755a051997862a2909d94aaf427752383`  
		Last Modified: Fri, 21 Dec 2018 09:45:47 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca12aacf71bc835287e70c5f78fb25dc4b173096550e8fba9b0d463d63d0388`  
		Last Modified: Fri, 21 Dec 2018 12:53:08 GMT  
		Size: 311.0 KB (311049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dee7ab6d8d2418ca850852fd666139287228940bc986050dfc4e8d62ca69175`  
		Last Modified: Fri, 21 Dec 2018 12:53:19 GMT  
		Size: 17.6 MB (17644485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b32e1ad35c213bc25de60aa0261d723007ce473f2bb23a02ebd9d3f774750d`  
		Last Modified: Fri, 21 Dec 2018 12:53:10 GMT  
		Size: 1.8 MB (1780135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4508233fffe89fd0f41987c9ba29d235d8ff08367ef8b7bf9b34a387e2e0ba5e`  
		Last Modified: Fri, 21 Dec 2018 15:26:07 GMT  
		Size: 1.4 KB (1393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b8941aab258593836c7832249f3843d98e1d4ca6c04af12c1b4490b4207ca8`  
		Last Modified: Fri, 21 Dec 2018 15:26:07 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621c6f6a18044ff80a87c3ba2f5936249d54a00a62860f1c250855bf31532ce`  
		Last Modified: Fri, 21 Dec 2018 15:27:22 GMT  
		Size: 101.5 MB (101538687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d24a541336e89f921a8ee3756557a511ed88c414007ec7a4865f9ff7dbf9ac`  
		Last Modified: Fri, 21 Dec 2018 15:26:07 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1-alpine` - linux; s390x

```console
$ docker pull plone@sha256:1e01b429798e784764a39d5fc7279c93baae6fb5cac8ed144f3b7321ceb171ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124131047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a4192066b52d8dac5c1ecc24bda19ebd006f148102c4b83989afb395d61c68`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:29 GMT
ADD file:b764f04695aef161430a2063aee41e228cb016459404dee09be3448c73f75349 in / 
# Fri, 21 Dec 2018 12:42:30 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:02:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 14:02:54 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 14:21:28 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 14:21:29 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 14:21:30 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 14:21:30 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 14:23:12 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 14:23:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 14:23:17 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 14:23:17 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 15:57:38 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 15:57:39 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 15:57:39 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 15:57:40 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 16:06:21 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 16:06:22 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 16:06:23 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 16:06:23 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 16:06:23 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 16:06:24 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 16:06:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:06:25 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:6e61c3658cd6273d9aec7222b5e89d66892fed584a6f37e459c0e47646d98af3`  
		Last Modified: Wed, 12 Sep 2018 11:43:16 GMT  
		Size: 2.2 MB (2201183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5a991d0e8727ddad0104264ae7819c2fde180a2ca2fc266d6814b4fa2e135e`  
		Last Modified: Fri, 21 Dec 2018 12:42:59 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047352a5b63765dee839b52877188d8d4c924fd148c11341492b6e63c08177b8`  
		Last Modified: Fri, 21 Dec 2018 14:28:17 GMT  
		Size: 309.6 KB (309601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adf362f3ff2129c56913f7556d7ceff03df6967ea950eb2a0cebbc2167608f2`  
		Last Modified: Fri, 21 Dec 2018 14:28:21 GMT  
		Size: 18.0 MB (17995272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfa85912b0983795ff3815ea36164604e2e78e958025a71cc5357837827d78c`  
		Last Modified: Fri, 21 Dec 2018 14:28:17 GMT  
		Size: 1.8 MB (1779899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727ef93b7f014e176c3a57d7392ef296013c7b58529f3438c14fe896e361678`  
		Last Modified: Fri, 21 Dec 2018 16:39:18 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181d769042a5ac7b68ef9bde071d9678ed64f2c24bc37faca2b1fe6f383409a4`  
		Last Modified: Fri, 21 Dec 2018 16:39:18 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeb05c198c3b60cb88fd2008bf98f0b7e65712953f69b41b98250697bbc3756`  
		Last Modified: Fri, 21 Dec 2018 16:39:39 GMT  
		Size: 101.8 MB (101840666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66191e3ba0fc30e43af606fbb6d4afe467a88f49f92be27d343a0b061544b0a`  
		Last Modified: Fri, 21 Dec 2018 16:39:18 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5-alpine`

```console
$ docker pull plone@sha256:68a3c5359ea2f154042c1659e2eca75a1767b6d112d633e70fca9dd70bea3af7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `plone:5-alpine` - linux; amd64

```console
$ docker pull plone@sha256:ed85b996d90c9d74e18e02375731de3770b8a38740f2c46b250cc63415186212
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123469537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70807f382ff628cb2ee383ac58329fa9f202916218680ae53dd27f65f1b3381f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 03:24:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 03:24:33 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 03:53:19 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 03:53:21 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 03:53:21 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 03:53:21 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 03:55:18 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 03:55:19 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 03:55:23 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 03:55:23 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 06:08:19 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 06:08:19 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 06:08:20 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 06:08:20 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 06:16:55 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 06:16:56 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 06:16:57 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 06:16:57 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 06:16:57 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 06:16:57 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 06:16:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 06:16:58 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa45741b61edafb651985a8048ab8aa692e4a28b6350aa5e38f421997903da0`  
		Last Modified: Fri, 21 Dec 2018 04:00:13 GMT  
		Size: 308.5 KB (308484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc54ee2e6f3bccba78ccf007308d383f8bb9c78bf1a049b9c5704e578d064df`  
		Last Modified: Fri, 21 Dec 2018 04:00:19 GMT  
		Size: 17.5 MB (17546512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d994f02f15e25ef9cb3becc29fffc27d771a90c074d33e5bba5ee44096dbf65`  
		Last Modified: Fri, 21 Dec 2018 04:00:13 GMT  
		Size: 1.8 MB (1779886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05baa24b5fd57aee852259d0d989b3763ae3bda294112f9e745df94aa9f5770`  
		Last Modified: Fri, 21 Dec 2018 06:27:07 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1282cf631109aa0a8522f172cfed0ac651b64eadf060ce2ec61cf3a1c8eee06f`  
		Last Modified: Fri, 21 Dec 2018 06:27:07 GMT  
		Size: 664.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c564d0921747f383c82cd75cd5671a002fbaf8281c96742119f9b15707e6889`  
		Last Modified: Fri, 21 Dec 2018 06:27:33 GMT  
		Size: 101.7 MB (101723260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559327d9e840057ff04ab7096cd0497de950a4d9f76bc930459cf02a8ee2f972`  
		Last Modified: Fri, 21 Dec 2018 06:27:07 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5-alpine` - linux; arm variant v6

```console
$ docker pull plone@sha256:03ce3e6c99708f18d2b55d1344273972b72bee11f830cda459437bcca2e46d16
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122179685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d55b5cf7fb6822fbaaac068e59146e07c5f4f2e856d98f013793663c0c45c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:41 GMT
ADD file:49a7d389086046d6fa37e72b7f9dc0c3b1fa155b694554609ed2c95a5504e172 in / 
# Fri, 21 Dec 2018 08:49:41 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:42 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:27:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 09:27:25 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 09:54:42 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 09:54:44 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 09:54:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 09:54:45 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 09:57:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 09:57:24 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 09:57:33 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 09:57:33 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 11:29:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 11:29:06 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 11:29:08 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 11:29:08 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 11:44:38 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 11:44:41 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 11:44:41 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 11:44:42 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 11:44:42 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 11:44:42 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 11:44:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 11:44:43 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:786f62ef66aef5b82d01dc251c095789af4cc746f6279dcc8011023d019b70fb`  
		Last Modified: Tue, 18 Sep 2018 13:06:58 GMT  
		Size: 2.1 MB (2050505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4271bf13258b585def40291fcb3b0490ce089b76fe80a5f1aa672e925ec81bcb`  
		Last Modified: Fri, 21 Dec 2018 08:50:13 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ac1a4ba006898801405578f508d1914b1fbcc353b78dcc6f7594b5ece85e4d`  
		Last Modified: Fri, 21 Dec 2018 10:03:45 GMT  
		Size: 309.3 KB (309263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776c97efb86e442631f18fddaf87e9b84bac5642bd85fc5d1274c2d5e00ece78`  
		Last Modified: Fri, 21 Dec 2018 10:03:54 GMT  
		Size: 16.8 MB (16766730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1684ccc8eccc23eb8a248cfd55d195344d2ad1e166f895e634b6f1f02b0a2958`  
		Last Modified: Fri, 21 Dec 2018 10:03:46 GMT  
		Size: 1.8 MB (1780137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d19f935dedc889154929b430db2653285de6e4a693986896f19409737cd7b23`  
		Last Modified: Fri, 21 Dec 2018 12:02:06 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36b6a3a2655dc3b2411a9ef057b7841cbc5a25463cf1375ef0f83cf85042377`  
		Last Modified: Fri, 21 Dec 2018 12:02:06 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aacf3f38df459d51c30f84658344423686e363d0ee882b58e8d173b491f670d`  
		Last Modified: Fri, 21 Dec 2018 12:02:51 GMT  
		Size: 101.3 MB (101268566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9376bfcc701a01e18d0a221fdc9e110b5679dd3e3b2b3bf7bc3ca9d7533525`  
		Last Modified: Fri, 21 Dec 2018 12:02:07 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5-alpine` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:ce93119a5ee6ec84dba052079b734a26457a38d22331983999416dc448d09673
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122374915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ce8e5e5605c64b3ce398cfa19c6182997564eb6d122f935ee7fe26bb82a8f7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:47 GMT
ADD file:7278e4df49d628c2bbb27c53665e671f57cd2db003e030b1be93eb81c5d28303 in / 
# Fri, 21 Dec 2018 09:42:48 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:48 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:52:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 11:12:43 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 11:54:59 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 11:55:02 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 11:55:02 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 11:55:03 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 11:59:03 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 11:59:03 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 11:59:20 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 11:59:21 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 15:17:42 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 15:17:43 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 15:17:48 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 15:17:49 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 15:50:58 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 15:51:01 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:51:02 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 15:51:02 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 15:51:03 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 15:51:04 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 15:51:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:51:05 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe4843495e56e3546d4d49cf476ee7bc1650156062151aa38cf3e2fb397a70`  
		Last Modified: Fri, 21 Dec 2018 09:43:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0293ba1054d25a7ee8ac6d458fe7ac7540a298a261c352ec3d63b69bc7d3efa`  
		Last Modified: Fri, 21 Dec 2018 12:08:41 GMT  
		Size: 308.7 KB (308700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0860b4a73519906f5b8a3b859541a54430b3bf30b33386840249544752207136`  
		Last Modified: Fri, 21 Dec 2018 12:08:50 GMT  
		Size: 17.2 MB (17197561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3a954a2e0671216fb8bbedb9a8ee9526eb1ee3c6d3fd357b9f69280fc5b5ff`  
		Last Modified: Fri, 21 Dec 2018 12:08:42 GMT  
		Size: 1.8 MB (1779962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded907fa5864f8c7fd738046467d2cfa23de392d46aed97d81d1eba9266798f7`  
		Last Modified: Fri, 21 Dec 2018 16:28:59 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0add03c9bb99b8258fb4fc3f59158c5b0fbbb56c835da40e6a91c7198c6749`  
		Last Modified: Fri, 21 Dec 2018 16:28:59 GMT  
		Size: 667.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fd36494f8e62889d81f1a741c81c6dff8c7eadaf82cd43c46b037720a86b3`  
		Last Modified: Fri, 21 Dec 2018 16:29:48 GMT  
		Size: 101.1 MB (101085097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016bc6abcc091f57214484d09f809e920b4513818c37fdd4426dea05db1f6d86`  
		Last Modified: Fri, 21 Dec 2018 16:28:59 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5-alpine` - linux; 386

```console
$ docker pull plone@sha256:0bb93a0d8f086f1e6400064c01f3ddf8d2290bf604c20364d34a4e2bd91a48c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122445665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55bf3d94eae27e68e4b62242063d5a956fa6fdd4f5fc3ccf7b3efe2bb14d596`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 11:39:54 GMT
ADD file:b2b8059d0cd5b8582648bf5cbdd2ad66e2519582281f0fa6ab560c1a85398c3c in / 
# Fri, 21 Dec 2018 11:39:54 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:39:54 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:50:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 15:50:05 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 16:12:21 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 16:12:21 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 16:12:22 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 16:12:22 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 16:14:19 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 16:14:20 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 16:14:25 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 16:14:25 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 18:15:22 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 18:15:22 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 18:15:23 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 18:15:23 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 18:23:54 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 18:23:55 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 18:23:55 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 18:23:55 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 18:23:56 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 18:23:56 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 18:23:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 18:23:56 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8fd280f9a42e33caddacaf364c842da7b3b726b15cf2a4051b8e83e1b06a0c`  
		Last Modified: Fri, 21 Dec 2018 11:40:43 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c820d3a0d895948a1b358cee353832028a7fa0fb766f53bfa36e195d821611`  
		Last Modified: Fri, 21 Dec 2018 16:19:28 GMT  
		Size: 309.2 KB (309208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5769aa7d2f91390020dfd546e4830103644b64d247a7ead2c00ccfb713f319e`  
		Last Modified: Fri, 21 Dec 2018 16:19:32 GMT  
		Size: 17.0 MB (16984066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ebfa76d9f0cc5440b35042e0de0bad1acd644865f86e6a1eea90e490564099`  
		Last Modified: Fri, 21 Dec 2018 16:19:28 GMT  
		Size: 1.8 MB (1779961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c1f520ddb608e965194360a964ffae59d9bf7c59cb9419e6d764e178d45f96`  
		Last Modified: Fri, 21 Dec 2018 18:34:10 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512484de170c139e1f2ec7754a3c4413cf012950d91f493dcde68d2c0cfd037a`  
		Last Modified: Fri, 21 Dec 2018 18:34:10 GMT  
		Size: 665.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074f78732d52f85364c027d9b88231f22a31a00026ebb77af27a3a28afe9c089`  
		Last Modified: Fri, 21 Dec 2018 18:34:39 GMT  
		Size: 101.2 MB (101198988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0481af6ded07e44a9d413ec7dab6fec255c418691eed41cd619cfe3365d18c6`  
		Last Modified: Fri, 21 Dec 2018 18:34:10 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5-alpine` - linux; ppc64le

```console
$ docker pull plone@sha256:7029e02798b08cf4b99b650a2a96dc91211f79a6e23d7015c78a054671cd937f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123377922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f3333f808e5659f2ce8b046bb50dd290cea2fec5a4516a20407e67aa567853`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:27 GMT
ADD file:7ec696be9519c6fa2389220666cd2ddda3cded7ba858845c42ad654e96a4e16a in / 
# Fri, 21 Dec 2018 09:42:29 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:32 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:07:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 12:07:04 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 12:38:45 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 12:38:47 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 12:38:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 12:38:51 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 12:41:26 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 12:41:32 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 12:41:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 12:41:49 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 14:53:07 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 14:53:09 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 14:53:16 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 14:53:17 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 15:08:03 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 15:08:12 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:08:13 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 15:08:17 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 15:08:23 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 15:08:25 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 15:08:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:08:33 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2f41e01dbe185c32298d62f1e24622476798da0e6be6c11162fd4c7e2bacbc38`  
		Last Modified: Tue, 18 Sep 2018 13:17:40 GMT  
		Size: 2.1 MB (2099080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee294a137df5ce1dbf79febbc52196c755a051997862a2909d94aaf427752383`  
		Last Modified: Fri, 21 Dec 2018 09:45:47 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca12aacf71bc835287e70c5f78fb25dc4b173096550e8fba9b0d463d63d0388`  
		Last Modified: Fri, 21 Dec 2018 12:53:08 GMT  
		Size: 311.0 KB (311049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dee7ab6d8d2418ca850852fd666139287228940bc986050dfc4e8d62ca69175`  
		Last Modified: Fri, 21 Dec 2018 12:53:19 GMT  
		Size: 17.6 MB (17644485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b32e1ad35c213bc25de60aa0261d723007ce473f2bb23a02ebd9d3f774750d`  
		Last Modified: Fri, 21 Dec 2018 12:53:10 GMT  
		Size: 1.8 MB (1780135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4508233fffe89fd0f41987c9ba29d235d8ff08367ef8b7bf9b34a387e2e0ba5e`  
		Last Modified: Fri, 21 Dec 2018 15:26:07 GMT  
		Size: 1.4 KB (1393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b8941aab258593836c7832249f3843d98e1d4ca6c04af12c1b4490b4207ca8`  
		Last Modified: Fri, 21 Dec 2018 15:26:07 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621c6f6a18044ff80a87c3ba2f5936249d54a00a62860f1c250855bf31532ce`  
		Last Modified: Fri, 21 Dec 2018 15:27:22 GMT  
		Size: 101.5 MB (101538687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d24a541336e89f921a8ee3756557a511ed88c414007ec7a4865f9ff7dbf9ac`  
		Last Modified: Fri, 21 Dec 2018 15:26:07 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5-alpine` - linux; s390x

```console
$ docker pull plone@sha256:1e01b429798e784764a39d5fc7279c93baae6fb5cac8ed144f3b7321ceb171ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124131047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a4192066b52d8dac5c1ecc24bda19ebd006f148102c4b83989afb395d61c68`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:29 GMT
ADD file:b764f04695aef161430a2063aee41e228cb016459404dee09be3448c73f75349 in / 
# Fri, 21 Dec 2018 12:42:30 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:02:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 14:02:54 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 14:21:28 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 14:21:29 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 14:21:30 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 14:21:30 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 14:23:12 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 14:23:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 14:23:17 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 14:23:17 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 15:57:38 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 15:57:39 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 15:57:39 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 15:57:40 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 16:06:21 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 16:06:22 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 16:06:23 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 16:06:23 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 16:06:23 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 16:06:24 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 16:06:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:06:25 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:6e61c3658cd6273d9aec7222b5e89d66892fed584a6f37e459c0e47646d98af3`  
		Last Modified: Wed, 12 Sep 2018 11:43:16 GMT  
		Size: 2.2 MB (2201183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5a991d0e8727ddad0104264ae7819c2fde180a2ca2fc266d6814b4fa2e135e`  
		Last Modified: Fri, 21 Dec 2018 12:42:59 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047352a5b63765dee839b52877188d8d4c924fd148c11341492b6e63c08177b8`  
		Last Modified: Fri, 21 Dec 2018 14:28:17 GMT  
		Size: 309.6 KB (309601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adf362f3ff2129c56913f7556d7ceff03df6967ea950eb2a0cebbc2167608f2`  
		Last Modified: Fri, 21 Dec 2018 14:28:21 GMT  
		Size: 18.0 MB (17995272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfa85912b0983795ff3815ea36164604e2e78e958025a71cc5357837827d78c`  
		Last Modified: Fri, 21 Dec 2018 14:28:17 GMT  
		Size: 1.8 MB (1779899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727ef93b7f014e176c3a57d7392ef296013c7b58529f3438c14fe896e361678`  
		Last Modified: Fri, 21 Dec 2018 16:39:18 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181d769042a5ac7b68ef9bde071d9678ed64f2c24bc37faca2b1fe6f383409a4`  
		Last Modified: Fri, 21 Dec 2018 16:39:18 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeb05c198c3b60cb88fd2008bf98f0b7e65712953f69b41b98250697bbc3756`  
		Last Modified: Fri, 21 Dec 2018 16:39:39 GMT  
		Size: 101.8 MB (101840666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66191e3ba0fc30e43af606fbb6d4afe467a88f49f92be27d343a0b061544b0a`  
		Last Modified: Fri, 21 Dec 2018 16:39:18 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:alpine`

```console
$ docker pull plone@sha256:68a3c5359ea2f154042c1659e2eca75a1767b6d112d633e70fca9dd70bea3af7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `plone:alpine` - linux; amd64

```console
$ docker pull plone@sha256:ed85b996d90c9d74e18e02375731de3770b8a38740f2c46b250cc63415186212
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123469537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70807f382ff628cb2ee383ac58329fa9f202916218680ae53dd27f65f1b3381f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 03:24:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 03:24:33 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 03:53:19 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 03:53:21 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 03:53:21 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 03:53:21 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 03:55:18 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 03:55:19 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 03:55:23 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 03:55:23 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 06:08:19 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 06:08:19 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 06:08:20 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 06:08:20 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 06:16:55 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 06:16:56 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 06:16:57 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 06:16:57 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 06:16:57 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 06:16:57 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 06:16:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 06:16:58 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa45741b61edafb651985a8048ab8aa692e4a28b6350aa5e38f421997903da0`  
		Last Modified: Fri, 21 Dec 2018 04:00:13 GMT  
		Size: 308.5 KB (308484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc54ee2e6f3bccba78ccf007308d383f8bb9c78bf1a049b9c5704e578d064df`  
		Last Modified: Fri, 21 Dec 2018 04:00:19 GMT  
		Size: 17.5 MB (17546512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d994f02f15e25ef9cb3becc29fffc27d771a90c074d33e5bba5ee44096dbf65`  
		Last Modified: Fri, 21 Dec 2018 04:00:13 GMT  
		Size: 1.8 MB (1779886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05baa24b5fd57aee852259d0d989b3763ae3bda294112f9e745df94aa9f5770`  
		Last Modified: Fri, 21 Dec 2018 06:27:07 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1282cf631109aa0a8522f172cfed0ac651b64eadf060ce2ec61cf3a1c8eee06f`  
		Last Modified: Fri, 21 Dec 2018 06:27:07 GMT  
		Size: 664.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c564d0921747f383c82cd75cd5671a002fbaf8281c96742119f9b15707e6889`  
		Last Modified: Fri, 21 Dec 2018 06:27:33 GMT  
		Size: 101.7 MB (101723260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559327d9e840057ff04ab7096cd0497de950a4d9f76bc930459cf02a8ee2f972`  
		Last Modified: Fri, 21 Dec 2018 06:27:07 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:alpine` - linux; arm variant v6

```console
$ docker pull plone@sha256:03ce3e6c99708f18d2b55d1344273972b72bee11f830cda459437bcca2e46d16
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122179685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d55b5cf7fb6822fbaaac068e59146e07c5f4f2e856d98f013793663c0c45c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:41 GMT
ADD file:49a7d389086046d6fa37e72b7f9dc0c3b1fa155b694554609ed2c95a5504e172 in / 
# Fri, 21 Dec 2018 08:49:41 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:42 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:27:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 09:27:25 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 09:54:42 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 09:54:44 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 09:54:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 09:54:45 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 09:57:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 09:57:24 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 09:57:33 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 09:57:33 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 11:29:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 11:29:06 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 11:29:08 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 11:29:08 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 11:44:38 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 11:44:41 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 11:44:41 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 11:44:42 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 11:44:42 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 11:44:42 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 11:44:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 11:44:43 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:786f62ef66aef5b82d01dc251c095789af4cc746f6279dcc8011023d019b70fb`  
		Last Modified: Tue, 18 Sep 2018 13:06:58 GMT  
		Size: 2.1 MB (2050505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4271bf13258b585def40291fcb3b0490ce089b76fe80a5f1aa672e925ec81bcb`  
		Last Modified: Fri, 21 Dec 2018 08:50:13 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ac1a4ba006898801405578f508d1914b1fbcc353b78dcc6f7594b5ece85e4d`  
		Last Modified: Fri, 21 Dec 2018 10:03:45 GMT  
		Size: 309.3 KB (309263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776c97efb86e442631f18fddaf87e9b84bac5642bd85fc5d1274c2d5e00ece78`  
		Last Modified: Fri, 21 Dec 2018 10:03:54 GMT  
		Size: 16.8 MB (16766730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1684ccc8eccc23eb8a248cfd55d195344d2ad1e166f895e634b6f1f02b0a2958`  
		Last Modified: Fri, 21 Dec 2018 10:03:46 GMT  
		Size: 1.8 MB (1780137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d19f935dedc889154929b430db2653285de6e4a693986896f19409737cd7b23`  
		Last Modified: Fri, 21 Dec 2018 12:02:06 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36b6a3a2655dc3b2411a9ef057b7841cbc5a25463cf1375ef0f83cf85042377`  
		Last Modified: Fri, 21 Dec 2018 12:02:06 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aacf3f38df459d51c30f84658344423686e363d0ee882b58e8d173b491f670d`  
		Last Modified: Fri, 21 Dec 2018 12:02:51 GMT  
		Size: 101.3 MB (101268566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9376bfcc701a01e18d0a221fdc9e110b5679dd3e3b2b3bf7bc3ca9d7533525`  
		Last Modified: Fri, 21 Dec 2018 12:02:07 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:alpine` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:ce93119a5ee6ec84dba052079b734a26457a38d22331983999416dc448d09673
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122374915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ce8e5e5605c64b3ce398cfa19c6182997564eb6d122f935ee7fe26bb82a8f7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:47 GMT
ADD file:7278e4df49d628c2bbb27c53665e671f57cd2db003e030b1be93eb81c5d28303 in / 
# Fri, 21 Dec 2018 09:42:48 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:48 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:52:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 11:12:43 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 11:54:59 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 11:55:02 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 11:55:02 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 11:55:03 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 11:59:03 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 11:59:03 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 11:59:20 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 11:59:21 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 15:17:42 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 15:17:43 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 15:17:48 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 15:17:49 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 15:50:58 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 15:51:01 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:51:02 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 15:51:02 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 15:51:03 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 15:51:04 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 15:51:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:51:05 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe4843495e56e3546d4d49cf476ee7bc1650156062151aa38cf3e2fb397a70`  
		Last Modified: Fri, 21 Dec 2018 09:43:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0293ba1054d25a7ee8ac6d458fe7ac7540a298a261c352ec3d63b69bc7d3efa`  
		Last Modified: Fri, 21 Dec 2018 12:08:41 GMT  
		Size: 308.7 KB (308700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0860b4a73519906f5b8a3b859541a54430b3bf30b33386840249544752207136`  
		Last Modified: Fri, 21 Dec 2018 12:08:50 GMT  
		Size: 17.2 MB (17197561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3a954a2e0671216fb8bbedb9a8ee9526eb1ee3c6d3fd357b9f69280fc5b5ff`  
		Last Modified: Fri, 21 Dec 2018 12:08:42 GMT  
		Size: 1.8 MB (1779962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded907fa5864f8c7fd738046467d2cfa23de392d46aed97d81d1eba9266798f7`  
		Last Modified: Fri, 21 Dec 2018 16:28:59 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0add03c9bb99b8258fb4fc3f59158c5b0fbbb56c835da40e6a91c7198c6749`  
		Last Modified: Fri, 21 Dec 2018 16:28:59 GMT  
		Size: 667.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fd36494f8e62889d81f1a741c81c6dff8c7eadaf82cd43c46b037720a86b3`  
		Last Modified: Fri, 21 Dec 2018 16:29:48 GMT  
		Size: 101.1 MB (101085097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016bc6abcc091f57214484d09f809e920b4513818c37fdd4426dea05db1f6d86`  
		Last Modified: Fri, 21 Dec 2018 16:28:59 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:alpine` - linux; 386

```console
$ docker pull plone@sha256:0bb93a0d8f086f1e6400064c01f3ddf8d2290bf604c20364d34a4e2bd91a48c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122445665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55bf3d94eae27e68e4b62242063d5a956fa6fdd4f5fc3ccf7b3efe2bb14d596`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 11:39:54 GMT
ADD file:b2b8059d0cd5b8582648bf5cbdd2ad66e2519582281f0fa6ab560c1a85398c3c in / 
# Fri, 21 Dec 2018 11:39:54 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:39:54 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:50:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 15:50:05 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 16:12:21 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 16:12:21 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 16:12:22 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 16:12:22 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 16:14:19 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 16:14:20 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 16:14:25 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 16:14:25 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 18:15:22 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 18:15:22 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 18:15:23 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 18:15:23 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 18:23:54 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 18:23:55 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 18:23:55 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 18:23:55 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 18:23:56 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 18:23:56 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 18:23:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 18:23:56 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8fd280f9a42e33caddacaf364c842da7b3b726b15cf2a4051b8e83e1b06a0c`  
		Last Modified: Fri, 21 Dec 2018 11:40:43 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c820d3a0d895948a1b358cee353832028a7fa0fb766f53bfa36e195d821611`  
		Last Modified: Fri, 21 Dec 2018 16:19:28 GMT  
		Size: 309.2 KB (309208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5769aa7d2f91390020dfd546e4830103644b64d247a7ead2c00ccfb713f319e`  
		Last Modified: Fri, 21 Dec 2018 16:19:32 GMT  
		Size: 17.0 MB (16984066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ebfa76d9f0cc5440b35042e0de0bad1acd644865f86e6a1eea90e490564099`  
		Last Modified: Fri, 21 Dec 2018 16:19:28 GMT  
		Size: 1.8 MB (1779961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c1f520ddb608e965194360a964ffae59d9bf7c59cb9419e6d764e178d45f96`  
		Last Modified: Fri, 21 Dec 2018 18:34:10 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512484de170c139e1f2ec7754a3c4413cf012950d91f493dcde68d2c0cfd037a`  
		Last Modified: Fri, 21 Dec 2018 18:34:10 GMT  
		Size: 665.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074f78732d52f85364c027d9b88231f22a31a00026ebb77af27a3a28afe9c089`  
		Last Modified: Fri, 21 Dec 2018 18:34:39 GMT  
		Size: 101.2 MB (101198988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0481af6ded07e44a9d413ec7dab6fec255c418691eed41cd619cfe3365d18c6`  
		Last Modified: Fri, 21 Dec 2018 18:34:10 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:alpine` - linux; ppc64le

```console
$ docker pull plone@sha256:7029e02798b08cf4b99b650a2a96dc91211f79a6e23d7015c78a054671cd937f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123377922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f3333f808e5659f2ce8b046bb50dd290cea2fec5a4516a20407e67aa567853`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:27 GMT
ADD file:7ec696be9519c6fa2389220666cd2ddda3cded7ba858845c42ad654e96a4e16a in / 
# Fri, 21 Dec 2018 09:42:29 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:32 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:07:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 12:07:04 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 12:38:45 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 12:38:47 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 12:38:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 12:38:51 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 12:41:26 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 12:41:32 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 12:41:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 12:41:49 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 14:53:07 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 14:53:09 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 14:53:16 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 14:53:17 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 15:08:03 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 15:08:12 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 15:08:13 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 15:08:17 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 15:08:23 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 15:08:25 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 15:08:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:08:33 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2f41e01dbe185c32298d62f1e24622476798da0e6be6c11162fd4c7e2bacbc38`  
		Last Modified: Tue, 18 Sep 2018 13:17:40 GMT  
		Size: 2.1 MB (2099080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee294a137df5ce1dbf79febbc52196c755a051997862a2909d94aaf427752383`  
		Last Modified: Fri, 21 Dec 2018 09:45:47 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca12aacf71bc835287e70c5f78fb25dc4b173096550e8fba9b0d463d63d0388`  
		Last Modified: Fri, 21 Dec 2018 12:53:08 GMT  
		Size: 311.0 KB (311049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dee7ab6d8d2418ca850852fd666139287228940bc986050dfc4e8d62ca69175`  
		Last Modified: Fri, 21 Dec 2018 12:53:19 GMT  
		Size: 17.6 MB (17644485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33b32e1ad35c213bc25de60aa0261d723007ce473f2bb23a02ebd9d3f774750d`  
		Last Modified: Fri, 21 Dec 2018 12:53:10 GMT  
		Size: 1.8 MB (1780135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4508233fffe89fd0f41987c9ba29d235d8ff08367ef8b7bf9b34a387e2e0ba5e`  
		Last Modified: Fri, 21 Dec 2018 15:26:07 GMT  
		Size: 1.4 KB (1393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b8941aab258593836c7832249f3843d98e1d4ca6c04af12c1b4490b4207ca8`  
		Last Modified: Fri, 21 Dec 2018 15:26:07 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2621c6f6a18044ff80a87c3ba2f5936249d54a00a62860f1c250855bf31532ce`  
		Last Modified: Fri, 21 Dec 2018 15:27:22 GMT  
		Size: 101.5 MB (101538687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d24a541336e89f921a8ee3756557a511ed88c414007ec7a4865f9ff7dbf9ac`  
		Last Modified: Fri, 21 Dec 2018 15:26:07 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:alpine` - linux; s390x

```console
$ docker pull plone@sha256:1e01b429798e784764a39d5fc7279c93baae6fb5cac8ed144f3b7321ceb171ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124131047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a4192066b52d8dac5c1ecc24bda19ebd006f148102c4b83989afb395d61c68`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:29 GMT
ADD file:b764f04695aef161430a2063aee41e228cb016459404dee09be3448c73f75349 in / 
# Fri, 21 Dec 2018 12:42:30 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 14:02:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 14:02:54 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 14:21:28 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 21 Dec 2018 14:21:29 GMT
RUN apk add --no-cache ca-certificates
# Fri, 21 Dec 2018 14:21:30 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 21 Dec 2018 14:21:30 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 21 Dec 2018 14:23:12 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 21 Dec 2018 14:23:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 21 Dec 2018 14:23:17 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 21 Dec 2018 14:23:17 GMT
CMD ["python2"]
# Fri, 21 Dec 2018 15:57:38 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 21 Dec 2018 15:57:39 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 21 Dec 2018 15:57:39 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Fri, 21 Dec 2018 15:57:40 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Fri, 21 Dec 2018 16:06:21 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Fri, 21 Dec 2018 16:06:22 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 16:06:23 GMT
COPY multi:d1a2ecade2b2828c817d0d8402208bfbbbc581ec8d3ac6d5792c039392ab275f in / 
# Fri, 21 Dec 2018 16:06:23 GMT
EXPOSE 8080
# Fri, 21 Dec 2018 16:06:23 GMT
WORKDIR /plone/instance
# Fri, 21 Dec 2018 16:06:24 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 21 Dec 2018 16:06:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 16:06:25 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:6e61c3658cd6273d9aec7222b5e89d66892fed584a6f37e459c0e47646d98af3`  
		Last Modified: Wed, 12 Sep 2018 11:43:16 GMT  
		Size: 2.2 MB (2201183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5a991d0e8727ddad0104264ae7819c2fde180a2ca2fc266d6814b4fa2e135e`  
		Last Modified: Fri, 21 Dec 2018 12:42:59 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047352a5b63765dee839b52877188d8d4c924fd148c11341492b6e63c08177b8`  
		Last Modified: Fri, 21 Dec 2018 14:28:17 GMT  
		Size: 309.6 KB (309601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adf362f3ff2129c56913f7556d7ceff03df6967ea950eb2a0cebbc2167608f2`  
		Last Modified: Fri, 21 Dec 2018 14:28:21 GMT  
		Size: 18.0 MB (17995272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfa85912b0983795ff3815ea36164604e2e78e958025a71cc5357837827d78c`  
		Last Modified: Fri, 21 Dec 2018 14:28:17 GMT  
		Size: 1.8 MB (1779899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727ef93b7f014e176c3a57d7392ef296013c7b58529f3438c14fe896e361678`  
		Last Modified: Fri, 21 Dec 2018 16:39:18 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181d769042a5ac7b68ef9bde071d9678ed64f2c24bc37faca2b1fe6f383409a4`  
		Last Modified: Fri, 21 Dec 2018 16:39:18 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeb05c198c3b60cb88fd2008bf98f0b7e65712953f69b41b98250697bbc3756`  
		Last Modified: Fri, 21 Dec 2018 16:39:39 GMT  
		Size: 101.8 MB (101840666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66191e3ba0fc30e43af606fbb6d4afe467a88f49f92be27d343a0b061544b0a`  
		Last Modified: Fri, 21 Dec 2018 16:39:18 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:latest`

```console
$ docker pull plone@sha256:6188acc42751e9aefb5ece88c7cd3f44e3f28d429aac09d027657670918e8140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `plone:latest` - linux; amd64

```console
$ docker pull plone@sha256:813ca9dfdb9b7ac8171b168cf4933e5aa7d82fea82502dc78455da703ceff22f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173652889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf41fc9d9d540522e0a2b1acac2a561519fd53bd67b5e5bc81a8bae04f9a3fc8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 07:17:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 07:17:48 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 08:24:32 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 08:24:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 08:24:40 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 08:24:40 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 08:27:09 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 08:27:09 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 08:27:22 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 08:27:23 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 13:39:27 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 29 Dec 2018 13:39:27 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 13:39:29 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 13:39:29 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 13:47:48 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 13:47:50 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 13:47:51 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 13:47:51 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 13:47:51 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 13:47:52 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 13:47:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 13:47:53 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b2167b8d5af3176a02e24a3b94d2129553c24884ae3fdcdeaa7ed4b2dc9563`  
		Last Modified: Sat, 29 Dec 2018 08:48:53 GMT  
		Size: 2.5 MB (2528136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b044db3f9e1222b97f7dd3178dffe1215baa67f0d870a8628ae05ef69f9b2`  
		Last Modified: Sat, 29 Dec 2018 08:48:56 GMT  
		Size: 17.1 MB (17100661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7356f8556c46a7b6fe3793733377f814a9abde0bcb932149ba9a2cc4cb0ce5f4`  
		Last Modified: Sat, 29 Dec 2018 08:48:53 GMT  
		Size: 2.1 MB (2063050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1536f9d664ee94811797c54a6b66e15fd8461e37c6f3b4b7b283cadb0e851e`  
		Last Modified: Sat, 29 Dec 2018 14:01:11 GMT  
		Size: 3.9 KB (3885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b674766b9f8601d545cd2fa326e16c2d708b665bfa003882bd0f8fa012daba`  
		Last Modified: Sat, 29 Dec 2018 14:01:11 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b23a189499c9bf03aa4d588107675fdbd52723fc4a2663010a59b1db71e5630`  
		Last Modified: Sat, 29 Dec 2018 14:02:02 GMT  
		Size: 129.5 MB (129461316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eab6249b78f5ff5a020de266f6503a212cc854d26e90cca2b1b4fd8c6d71533`  
		Last Modified: Sat, 29 Dec 2018 14:01:11 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; arm variant v5

```console
$ docker pull plone@sha256:78848bc59c8b658982a3c2f0bcad85dbfd0bbc673b466d70a39dcc0fe501013f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168377547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6717d084e4fc569bbcca05576602c81694094a0702b9c225b6f3dcf5587887`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:08:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 11:08:54 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:11:32 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 12:11:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 12:11:48 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 12:15:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 12:15:43 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 12:16:10 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 12:16:11 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 15:25:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 29 Dec 2018 15:25:06 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 15:25:08 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 15:25:08 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 15:41:41 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 15:41:47 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 15:41:47 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 15:41:48 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 15:41:48 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 15:41:49 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 15:41:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 15:41:49 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c7a64b8477849065dd114de9501d6290f20ffae66048f69f2090e10c2f22f0`  
		Last Modified: Sat, 29 Dec 2018 12:35:53 GMT  
		Size: 2.3 MB (2253692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc32a8ef86925c1f198934da0af3fa6095db1ef472603a62dfad17333c52c080`  
		Last Modified: Sat, 29 Dec 2018 12:35:59 GMT  
		Size: 16.6 MB (16551336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee169e4f12004f6151c061884d06ea74ec8e8d76968250f78b8a8a2c14fa7d6`  
		Last Modified: Sat, 29 Dec 2018 12:35:54 GMT  
		Size: 2.1 MB (2062773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5844732f04d95dbd95f6bdae1c44709a8e2914ba359dd1a855638dd25e1b23b6`  
		Last Modified: Sat, 29 Dec 2018 16:00:54 GMT  
		Size: 3.9 KB (3927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3d22a05cc6323ab495e68d5826a252004464e7a0d860b8d2d2886b1ecba079`  
		Last Modified: Sat, 29 Dec 2018 16:00:54 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d367371ee5615561fc6839dc558d16e5481a134a177712f13c2154a2fe0ba13`  
		Last Modified: Sat, 29 Dec 2018 16:01:54 GMT  
		Size: 126.3 MB (126335120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5169a9e3436b0fe008e0289160917c5bab1d7a657992e470828d43e3b0e0d8`  
		Last Modified: Sat, 29 Dec 2018 16:00:54 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; arm variant v7

```console
$ docker pull plone@sha256:131de8032571c0c539963dd3cec8616c75cb96ef04bb372e91a3b88fd2b42ccb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167404948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:995f3bd53f22db522cc48aa2407edc795eb3f3b4484d03f61bcf337e2eb38f34`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 15:52:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 15:52:53 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:51:07 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 16:51:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:51:19 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 16:51:19 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 16:54:51 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 16:54:53 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 16:55:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 16:55:18 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 22:01:59 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 16 Nov 2018 22:02:00 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 22:02:02 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 26 Dec 2018 14:02:32 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Wed, 26 Dec 2018 14:16:44 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 26 Dec 2018 14:16:49 GMT
VOLUME [/data]
# Wed, 26 Dec 2018 14:16:49 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Wed, 26 Dec 2018 14:16:50 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 14:16:50 GMT
WORKDIR /plone/instance
# Wed, 26 Dec 2018 14:16:51 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 26 Dec 2018 14:16:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 14:16:51 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b0c49c7dc2d283c04a1f53016ec326c02583c23a4f9f53d3a27e228128e4b8`  
		Last Modified: Fri, 16 Nov 2018 17:20:17 GMT  
		Size: 2.2 MB (2169727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ac064474bf5754caabc399ce93cd81cc0501b923feee69533c08c85e43274b`  
		Last Modified: Fri, 16 Nov 2018 17:20:21 GMT  
		Size: 16.1 MB (16134747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a540e69bb65b21700fae2d1cf4a3ef2d288a52fba9754a4070a77f858c74dcc3`  
		Last Modified: Fri, 16 Nov 2018 17:20:17 GMT  
		Size: 2.1 MB (2062764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08028cc2c9b7af96f8258c973b42fd18ea291a28ff2ecdba67865c102fc463c8`  
		Last Modified: Fri, 16 Nov 2018 22:34:25 GMT  
		Size: 3.9 KB (3931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2d854296ae2ca7db23c79bea8122b35bc8b521925888329fa5711f43f29212`  
		Last Modified: Wed, 26 Dec 2018 14:33:16 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f56737c436be47fe7831d8adaea670783d27ae4e18d54440cf7dd3a8ea303b`  
		Last Modified: Wed, 26 Dec 2018 14:34:07 GMT  
		Size: 127.8 MB (127760793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3759ff0221086c3f46130ffb5d54d8c94d5a2df44c9e48edc6e41a20ac5ba567`  
		Last Modified: Wed, 26 Dec 2018 14:33:16 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:b3de211e586b25b51d160328ab576176d62a5ea3685f182d3e4e3cd2d785c5a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167821087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d25aa5843b642729d528ca2e7b946ec98802932ab1563d235fd6ccec1405c9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:39:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 20:39:43 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 22:25:50 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 22:26:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:26:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 22:26:10 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 22:36:13 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 22:36:14 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 22:37:00 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 22:37:00 GMT
CMD ["python2"]
# Sat, 17 Nov 2018 13:30:11 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 17 Nov 2018 13:30:11 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 17 Nov 2018 13:30:14 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 17 Nov 2018 13:30:15 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 17 Nov 2018 13:57:16 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 17 Nov 2018 13:57:19 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 13:57:20 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sat, 17 Nov 2018 13:57:21 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 13:57:22 GMT
WORKDIR /plone/instance
# Sat, 17 Nov 2018 13:57:23 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 17 Nov 2018 13:57:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Nov 2018 13:57:25 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2400828ed5f7de6b4abe19a9b6a1da87997de14ce3043dd5a306bb1a25a9d6`  
		Last Modified: Fri, 16 Nov 2018 23:14:59 GMT  
		Size: 2.2 MB (2225780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7ef7535e096ee1958f3440104631badd6af8280fe3bb5fc4d906328fd6c4be`  
		Last Modified: Fri, 16 Nov 2018 23:15:05 GMT  
		Size: 16.9 MB (16866351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694e62d3123beac1f0d6be9ddf05c0928dc49e35f43e15d6451efbe260390ace`  
		Last Modified: Fri, 16 Nov 2018 23:14:59 GMT  
		Size: 2.1 MB (2063967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300e174810881d2036a7cfacbda9d4da7974e2730e34953de8ff5fed0fb29795`  
		Last Modified: Sat, 17 Nov 2018 15:19:06 GMT  
		Size: 3.9 KB (3893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dd35d7749e2ac48f17a21c9231b6b79a053ca9ab5430dc252a91c8d32198a2`  
		Last Modified: Sat, 17 Nov 2018 15:19:06 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7aae2a7a3d6934bbedab420feaf177f6e97b45fc9b75308047129f24a6153fa`  
		Last Modified: Sat, 17 Nov 2018 15:19:59 GMT  
		Size: 126.3 MB (126326862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a54ebeb20eadc479c031a86a0fcd68116117e0c9b32dcc7787fb10e831e6f0`  
		Last Modified: Sat, 17 Nov 2018 15:19:06 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; 386

```console
$ docker pull plone@sha256:373c2ca08ac37bd358c552e5d77aaf0ae24dd70c0f5b0fe28fda833135222e11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174197738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4253b96750253f3309184311fccd2cba784f31db0697fc0396d008b0137edc8e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 03:20:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 03:20:07 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:53:52 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 17 Nov 2018 04:54:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:54:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 17 Nov 2018 04:54:06 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 17 Nov 2018 04:58:20 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 17 Nov 2018 04:58:20 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 04:58:42 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 04:58:42 GMT
CMD ["python2"]
# Sun, 18 Nov 2018 00:02:35 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sun, 18 Nov 2018 00:02:35 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sun, 18 Nov 2018 00:02:36 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sun, 18 Nov 2018 00:02:36 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sun, 18 Nov 2018 00:08:13 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sun, 18 Nov 2018 00:08:15 GMT
VOLUME [/data]
# Sun, 18 Nov 2018 00:08:15 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sun, 18 Nov 2018 00:08:15 GMT
EXPOSE 8080/tcp
# Sun, 18 Nov 2018 00:08:16 GMT
WORKDIR /plone/instance
# Sun, 18 Nov 2018 00:08:16 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sun, 18 Nov 2018 00:08:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 18 Nov 2018 00:08:17 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d4b34c494bfcb09a0f6ae4e6fb6193e0c1a470639d5fe83c7b3938c8dbb638`  
		Last Modified: Sat, 17 Nov 2018 05:59:22 GMT  
		Size: 2.5 MB (2517432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9e73c9c882f3982c9ed5981bd467599bcc532b5835619f16e458c01fa0945c`  
		Last Modified: Sat, 17 Nov 2018 05:59:32 GMT  
		Size: 16.3 MB (16297967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16471a653122b7fe75047706a10aef16870aaaac4dbc2fe90e699bd0dc8792e2`  
		Last Modified: Sat, 17 Nov 2018 05:59:22 GMT  
		Size: 2.1 MB (2063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddb7ee94532f2bb97e34330ca190e44b2324d3a57b8bd69038f705f73e0e3ae`  
		Last Modified: Sun, 18 Nov 2018 00:34:40 GMT  
		Size: 3.9 KB (3878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e4d7245c944beec4684b167d64abd7b2e2978963a1a42e5cbbb98434cb4b41`  
		Last Modified: Sun, 18 Nov 2018 00:34:40 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a8d08e2b669040f1d594955201c244c294b5add6175adedb111b1c1f611961`  
		Last Modified: Sun, 18 Nov 2018 00:35:16 GMT  
		Size: 130.2 MB (130185625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eac39569f7ea9146302f3ee9a95de169c604253c03242f415c4d476bffbc55e`  
		Last Modified: Sun, 18 Nov 2018 00:34:40 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; ppc64le

```console
$ docker pull plone@sha256:b003b0b5491e843faa351b5ceb4f77958abea0e581e9f4524047a87e7f09e2f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171532977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590c28b83b83ea9eda27a00bfadecb516d5f81aa0e161a471a80aead8bdb0472`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:32:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:32:26 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 11:16:38 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 11:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:16:58 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 11:17:00 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 11:22:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 11:22:04 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 11:22:35 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 11:22:38 GMT
CMD ["python2"]
# Sat, 29 Dec 2018 16:15:16 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 29 Dec 2018 16:15:17 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 29 Dec 2018 16:15:21 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 29 Dec 2018 16:15:22 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Sat, 29 Dec 2018 16:32:16 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 29 Dec 2018 16:32:25 GMT
VOLUME [/data]
# Sat, 29 Dec 2018 16:32:28 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Sat, 29 Dec 2018 16:32:30 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 16:32:33 GMT
WORKDIR /plone/instance
# Sat, 29 Dec 2018 16:32:35 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 29 Dec 2018 16:32:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 16:32:39 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd25594913d429a5d59ff42f478d86a78d7ee251b3fa52a347797f224ff7061`  
		Last Modified: Sat, 29 Dec 2018 11:26:52 GMT  
		Size: 2.2 MB (2189372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa98682633ac3189894db1e18de5580a4146b2c0d34ca088b0f49e1d76efb7b8`  
		Last Modified: Sat, 29 Dec 2018 11:26:55 GMT  
		Size: 17.3 MB (17280695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3654b3847f1035f3ba7007044ad302aaab0d8dd4fff4186828017c4f1e09b383`  
		Last Modified: Sat, 29 Dec 2018 11:26:53 GMT  
		Size: 2.1 MB (2063574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d252f06ab5f590600dea65105ad482e24ba3eb1b6fd9b0e2869fe63aba8984`  
		Last Modified: Sat, 29 Dec 2018 16:52:56 GMT  
		Size: 3.9 KB (3936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648a9167295f1f20b2b8b277fff1ef386d4cab57a47793bbf9b1a76d1a10121c`  
		Last Modified: Sat, 29 Dec 2018 16:52:56 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c089a45c21d5e76adcdbbd86f0449d815aef666b37fb88bf89dc0b6aacb886fc`  
		Last Modified: Sat, 29 Dec 2018 16:53:58 GMT  
		Size: 127.2 MB (127245648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1814696ff3dc8b2a752f939d00132a93da6aa2a2b8dd79d9fd892ca907039071`  
		Last Modified: Sat, 29 Dec 2018 16:52:56 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
