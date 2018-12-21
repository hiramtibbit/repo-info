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
$ docker pull plone@sha256:4061fae6fcf0cd3f5ac3cf44e2315f0e69f055ecfc9050df3d426c4412798120
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
$ docker pull plone@sha256:8d27df8f69dbb44b6b8cc3d13b6b32977c0c819e85d7db8e174808a90fa6bcd7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151477980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84909b4cc916f92be0f97f51cde7f139b04d49321cdb95392aac39ef72a6ca9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 06:22:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 06:22:53 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 07:51:02 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 07:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 07:51:11 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 07:51:11 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 07:53:45 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 07:53:45 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 07:54:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 07:54:06 GMT
CMD ["python2"]
# Sat, 17 Nov 2018 00:11:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sat, 17 Nov 2018 00:11:07 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 17 Nov 2018 00:11:08 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 17 Nov 2018 00:11:09 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 17 Nov 2018 00:24:02 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 17 Nov 2018 00:24:05 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 00:24:06 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sat, 17 Nov 2018 00:24:06 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 00:24:07 GMT
WORKDIR /plone/instance
# Sat, 17 Nov 2018 00:24:07 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 17 Nov 2018 00:24:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Nov 2018 00:24:08 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da2a74f37b12f23ad9c71d2b76004b49dd667d0c638501b50ef88ef447b344a`  
		Last Modified: Fri, 16 Nov 2018 08:50:29 GMT  
		Size: 2.5 MB (2516789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b6f498cfd015affa9cb592c9a64510d54177608e906a0337b8364b4f926103`  
		Last Modified: Fri, 16 Nov 2018 08:50:33 GMT  
		Size: 17.1 MB (17100700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afb4f0a079ce2f5e63275d10c31a9cceb3820b4c60bc00141f5d85d876095f`  
		Last Modified: Fri, 16 Nov 2018 08:50:30 GMT  
		Size: 2.1 MB (2063150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de88cd82926f0e6bf4aeb5d24f1cd6a19a90ecb1a2192cfefe65c3b8f7ee38`  
		Last Modified: Sat, 17 Nov 2018 00:46:46 GMT  
		Size: 3.9 KB (3888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a147135239fb9fc98cd5aff8478035058eb96fce07d30e490902d906f6ce382f`  
		Last Modified: Sat, 17 Nov 2018 00:46:46 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be683745987ec359466648480a1ced2fbe0c406226e665e1af860df14cc6e407`  
		Last Modified: Sat, 17 Nov 2018 00:47:29 GMT  
		Size: 107.3 MB (107304248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e48cc30431b094ad8f9adef5d885c069fdc1bd16aef57bc37a881c6015d145f`  
		Last Modified: Sat, 17 Nov 2018 00:46:47 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4` - linux; arm variant v5

```console
$ docker pull plone@sha256:7a6300b8eb34054d136b26107a011e290f906fe7e2c5a70a3ccde506c94c4bf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146108525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15be4de99edf8edb77105fbf9a4b0ae541e2e12fde8d5baf252690ae33b7906c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:43:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 14:43:59 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:49:08 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 15:49:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:49:26 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 15:49:26 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 15:53:39 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 15:53:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 15:54:12 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 15:54:13 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 22:13:59 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 16 Nov 2018 22:13:59 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 22:14:01 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 16 Nov 2018 22:14:01 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 22:31:59 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 22:32:02 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 22:32:04 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 22:32:04 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 22:32:05 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 22:32:06 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 22:32:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 22:32:07 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6711710d7ae7a66b21454f1ac541ff82a90a356e556ae99131b966a974eeb3`  
		Last Modified: Fri, 16 Nov 2018 16:18:56 GMT  
		Size: 2.2 MB (2248386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce50903fa945a59d61766d42676d9a6a2d777ad606c88998251b62ce04716f7`  
		Last Modified: Fri, 16 Nov 2018 16:19:01 GMT  
		Size: 16.6 MB (16551425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21543ec618c4b85c2bceaf74d9988a4588cec547f009bdb7aa1e25808d54b994`  
		Last Modified: Fri, 16 Nov 2018 16:18:56 GMT  
		Size: 2.1 MB (2062942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3027d8971ee4bb97ed75dd79a0d18c0aa56c28e7a439a6ca1f92b27c082d7d8`  
		Last Modified: Fri, 16 Nov 2018 22:34:13 GMT  
		Size: 3.9 KB (3927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2407098bb28234fc6d4f96e19a8c01361d658335da160df91bc056d04e619ef3`  
		Last Modified: Fri, 16 Nov 2018 22:34:13 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9699c6a9a88570d6d78abf8c61d7d50fc0609ea63f4e15b06a78ab167908b240`  
		Last Modified: Fri, 16 Nov 2018 22:34:56 GMT  
		Size: 104.1 MB (104075911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b724631c86579bdf4240a2ef5ab1c7daa1b7b65c6802ec13ae8d2ed36d82e2`  
		Last Modified: Fri, 16 Nov 2018 22:34:13 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4` - linux; arm variant v7

```console
$ docker pull plone@sha256:aa4fa5c2f0889fdf10a99a90300ffd3f39345a36e64de145928baf06c4374fb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142373063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49436ac9ea747eb977623adeb43b9ad403dd399e11f67618cc259f6432f32ff`
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
# Fri, 16 Nov 2018 22:17:26 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 22:33:27 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 22:33:35 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 22:33:43 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 22:33:43 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 22:33:44 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 22:33:53 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 22:33:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 22:33:55 GMT
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
	-	`sha256:3ba102cf7daed6cfb9d22d911319db5b277a495d0545362a2c296c9b99271963`  
		Last Modified: Fri, 16 Nov 2018 22:36:43 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e45092813bb57071e13521e79df2a6b0a09335de0b1847697d2e6df60a6fbcc`  
		Last Modified: Fri, 16 Nov 2018 22:37:25 GMT  
		Size: 102.7 MB (102728914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f8789c00706b130e12e879187533ec2df569382ef13a24fb935e484b71dfdc`  
		Last Modified: Fri, 16 Nov 2018 22:36:43 GMT  
		Size: 2.2 KB (2248 bytes)  
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
$ docker pull plone@sha256:3ceabaffa278b8e3b3ab727e114831dba8821356dd3dac030ae6f0def738e5a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149221378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:669fe896105b98109f0a6028fafb9d1c9a1307501626056ded3573c6d4dc35cc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:39:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 14:40:02 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:03:52 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 16:04:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:04:27 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 16:04:28 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 16:12:27 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 16:12:28 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 16:13:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 16:13:26 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 23:54:18 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 16 Nov 2018 23:54:19 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 23:54:26 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 16 Nov 2018 23:54:34 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 17 Nov 2018 00:15:30 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 17 Nov 2018 00:15:33 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 00:15:35 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sat, 17 Nov 2018 00:15:37 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 00:15:38 GMT
WORKDIR /plone/instance
# Sat, 17 Nov 2018 00:15:39 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 17 Nov 2018 00:15:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Nov 2018 00:15:41 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5607372b9874f6141ce5e4fb772e1d3ffb82343048516cbfce667d7e32bc21e0`  
		Last Modified: Fri, 16 Nov 2018 16:44:44 GMT  
		Size: 2.2 MB (2181805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fade17287b5ff67975110c89144c997159353852d651e15059549915ef53f392`  
		Last Modified: Fri, 16 Nov 2018 16:44:54 GMT  
		Size: 17.3 MB (17281247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338daeffb33dcc05b6fc252d5705a4e6a3279cc0dcef2ee32b407c863bbf111e`  
		Last Modified: Fri, 16 Nov 2018 16:44:46 GMT  
		Size: 2.1 MB (2064336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b78c62aaa0adb5e4ee8feb118bf8ea93bbac9ac347f8201af5b2542cce746b`  
		Last Modified: Sat, 17 Nov 2018 00:43:02 GMT  
		Size: 3.9 KB (3945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1630adbff708286c01ca770021b816749c4b56aba6bea6cc907f325c1c1f80b4`  
		Last Modified: Sat, 17 Nov 2018 00:43:02 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23260a86b0ac86c798278838102a31815f4070be2b9b9b91abd5f293fc5051f`  
		Last Modified: Sat, 17 Nov 2018 00:44:27 GMT  
		Size: 104.9 MB (104946405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255af9da5d3c5c011498cc03838a7107a02e9e79ed21b0e024cf8274db00233c`  
		Last Modified: Sat, 17 Nov 2018 00:43:03 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3`

```console
$ docker pull plone@sha256:4061fae6fcf0cd3f5ac3cf44e2315f0e69f055ecfc9050df3d426c4412798120
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
$ docker pull plone@sha256:8d27df8f69dbb44b6b8cc3d13b6b32977c0c819e85d7db8e174808a90fa6bcd7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151477980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84909b4cc916f92be0f97f51cde7f139b04d49321cdb95392aac39ef72a6ca9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 06:22:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 06:22:53 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 07:51:02 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 07:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 07:51:11 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 07:51:11 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 07:53:45 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 07:53:45 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 07:54:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 07:54:06 GMT
CMD ["python2"]
# Sat, 17 Nov 2018 00:11:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sat, 17 Nov 2018 00:11:07 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 17 Nov 2018 00:11:08 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 17 Nov 2018 00:11:09 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 17 Nov 2018 00:24:02 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 17 Nov 2018 00:24:05 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 00:24:06 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sat, 17 Nov 2018 00:24:06 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 00:24:07 GMT
WORKDIR /plone/instance
# Sat, 17 Nov 2018 00:24:07 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 17 Nov 2018 00:24:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Nov 2018 00:24:08 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da2a74f37b12f23ad9c71d2b76004b49dd667d0c638501b50ef88ef447b344a`  
		Last Modified: Fri, 16 Nov 2018 08:50:29 GMT  
		Size: 2.5 MB (2516789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b6f498cfd015affa9cb592c9a64510d54177608e906a0337b8364b4f926103`  
		Last Modified: Fri, 16 Nov 2018 08:50:33 GMT  
		Size: 17.1 MB (17100700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afb4f0a079ce2f5e63275d10c31a9cceb3820b4c60bc00141f5d85d876095f`  
		Last Modified: Fri, 16 Nov 2018 08:50:30 GMT  
		Size: 2.1 MB (2063150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de88cd82926f0e6bf4aeb5d24f1cd6a19a90ecb1a2192cfefe65c3b8f7ee38`  
		Last Modified: Sat, 17 Nov 2018 00:46:46 GMT  
		Size: 3.9 KB (3888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a147135239fb9fc98cd5aff8478035058eb96fce07d30e490902d906f6ce382f`  
		Last Modified: Sat, 17 Nov 2018 00:46:46 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be683745987ec359466648480a1ced2fbe0c406226e665e1af860df14cc6e407`  
		Last Modified: Sat, 17 Nov 2018 00:47:29 GMT  
		Size: 107.3 MB (107304248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e48cc30431b094ad8f9adef5d885c069fdc1bd16aef57bc37a881c6015d145f`  
		Last Modified: Sat, 17 Nov 2018 00:46:47 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3` - linux; arm variant v5

```console
$ docker pull plone@sha256:7a6300b8eb34054d136b26107a011e290f906fe7e2c5a70a3ccde506c94c4bf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146108525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15be4de99edf8edb77105fbf9a4b0ae541e2e12fde8d5baf252690ae33b7906c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:43:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 14:43:59 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:49:08 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 15:49:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:49:26 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 15:49:26 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 15:53:39 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 15:53:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 15:54:12 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 15:54:13 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 22:13:59 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 16 Nov 2018 22:13:59 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 22:14:01 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 16 Nov 2018 22:14:01 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 22:31:59 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 22:32:02 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 22:32:04 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 22:32:04 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 22:32:05 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 22:32:06 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 22:32:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 22:32:07 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6711710d7ae7a66b21454f1ac541ff82a90a356e556ae99131b966a974eeb3`  
		Last Modified: Fri, 16 Nov 2018 16:18:56 GMT  
		Size: 2.2 MB (2248386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce50903fa945a59d61766d42676d9a6a2d777ad606c88998251b62ce04716f7`  
		Last Modified: Fri, 16 Nov 2018 16:19:01 GMT  
		Size: 16.6 MB (16551425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21543ec618c4b85c2bceaf74d9988a4588cec547f009bdb7aa1e25808d54b994`  
		Last Modified: Fri, 16 Nov 2018 16:18:56 GMT  
		Size: 2.1 MB (2062942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3027d8971ee4bb97ed75dd79a0d18c0aa56c28e7a439a6ca1f92b27c082d7d8`  
		Last Modified: Fri, 16 Nov 2018 22:34:13 GMT  
		Size: 3.9 KB (3927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2407098bb28234fc6d4f96e19a8c01361d658335da160df91bc056d04e619ef3`  
		Last Modified: Fri, 16 Nov 2018 22:34:13 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9699c6a9a88570d6d78abf8c61d7d50fc0609ea63f4e15b06a78ab167908b240`  
		Last Modified: Fri, 16 Nov 2018 22:34:56 GMT  
		Size: 104.1 MB (104075911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b724631c86579bdf4240a2ef5ab1c7daa1b7b65c6802ec13ae8d2ed36d82e2`  
		Last Modified: Fri, 16 Nov 2018 22:34:13 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3` - linux; arm variant v7

```console
$ docker pull plone@sha256:aa4fa5c2f0889fdf10a99a90300ffd3f39345a36e64de145928baf06c4374fb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142373063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49436ac9ea747eb977623adeb43b9ad403dd399e11f67618cc259f6432f32ff`
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
# Fri, 16 Nov 2018 22:17:26 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 22:33:27 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 22:33:35 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 22:33:43 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 22:33:43 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 22:33:44 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 22:33:53 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 22:33:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 22:33:55 GMT
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
	-	`sha256:3ba102cf7daed6cfb9d22d911319db5b277a495d0545362a2c296c9b99271963`  
		Last Modified: Fri, 16 Nov 2018 22:36:43 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e45092813bb57071e13521e79df2a6b0a09335de0b1847697d2e6df60a6fbcc`  
		Last Modified: Fri, 16 Nov 2018 22:37:25 GMT  
		Size: 102.7 MB (102728914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f8789c00706b130e12e879187533ec2df569382ef13a24fb935e484b71dfdc`  
		Last Modified: Fri, 16 Nov 2018 22:36:43 GMT  
		Size: 2.2 KB (2248 bytes)  
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
$ docker pull plone@sha256:3ceabaffa278b8e3b3ab727e114831dba8821356dd3dac030ae6f0def738e5a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149221378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:669fe896105b98109f0a6028fafb9d1c9a1307501626056ded3573c6d4dc35cc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:39:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 14:40:02 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:03:52 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 16:04:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:04:27 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 16:04:28 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 16:12:27 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 16:12:28 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 16:13:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 16:13:26 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 23:54:18 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 16 Nov 2018 23:54:19 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 23:54:26 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 16 Nov 2018 23:54:34 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 17 Nov 2018 00:15:30 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 17 Nov 2018 00:15:33 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 00:15:35 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sat, 17 Nov 2018 00:15:37 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 00:15:38 GMT
WORKDIR /plone/instance
# Sat, 17 Nov 2018 00:15:39 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 17 Nov 2018 00:15:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Nov 2018 00:15:41 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5607372b9874f6141ce5e4fb772e1d3ffb82343048516cbfce667d7e32bc21e0`  
		Last Modified: Fri, 16 Nov 2018 16:44:44 GMT  
		Size: 2.2 MB (2181805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fade17287b5ff67975110c89144c997159353852d651e15059549915ef53f392`  
		Last Modified: Fri, 16 Nov 2018 16:44:54 GMT  
		Size: 17.3 MB (17281247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338daeffb33dcc05b6fc252d5705a4e6a3279cc0dcef2ee32b407c863bbf111e`  
		Last Modified: Fri, 16 Nov 2018 16:44:46 GMT  
		Size: 2.1 MB (2064336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b78c62aaa0adb5e4ee8feb118bf8ea93bbac9ac347f8201af5b2542cce746b`  
		Last Modified: Sat, 17 Nov 2018 00:43:02 GMT  
		Size: 3.9 KB (3945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1630adbff708286c01ca770021b816749c4b56aba6bea6cc907f325c1c1f80b4`  
		Last Modified: Sat, 17 Nov 2018 00:43:02 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23260a86b0ac86c798278838102a31815f4070be2b9b9b91abd5f293fc5051f`  
		Last Modified: Sat, 17 Nov 2018 00:44:27 GMT  
		Size: 104.9 MB (104946405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255af9da5d3c5c011498cc03838a7107a02e9e79ed21b0e024cf8274db00233c`  
		Last Modified: Sat, 17 Nov 2018 00:43:03 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.18`

```console
$ docker pull plone@sha256:4061fae6fcf0cd3f5ac3cf44e2315f0e69f055ecfc9050df3d426c4412798120
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
$ docker pull plone@sha256:8d27df8f69dbb44b6b8cc3d13b6b32977c0c819e85d7db8e174808a90fa6bcd7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151477980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84909b4cc916f92be0f97f51cde7f139b04d49321cdb95392aac39ef72a6ca9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 06:22:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 06:22:53 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 07:51:02 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 07:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 07:51:11 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 07:51:11 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 07:53:45 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 07:53:45 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 07:54:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 07:54:06 GMT
CMD ["python2"]
# Sat, 17 Nov 2018 00:11:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sat, 17 Nov 2018 00:11:07 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 17 Nov 2018 00:11:08 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Sat, 17 Nov 2018 00:11:09 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 17 Nov 2018 00:24:02 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 17 Nov 2018 00:24:05 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 00:24:06 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sat, 17 Nov 2018 00:24:06 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 00:24:07 GMT
WORKDIR /plone/instance
# Sat, 17 Nov 2018 00:24:07 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 17 Nov 2018 00:24:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Nov 2018 00:24:08 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da2a74f37b12f23ad9c71d2b76004b49dd667d0c638501b50ef88ef447b344a`  
		Last Modified: Fri, 16 Nov 2018 08:50:29 GMT  
		Size: 2.5 MB (2516789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b6f498cfd015affa9cb592c9a64510d54177608e906a0337b8364b4f926103`  
		Last Modified: Fri, 16 Nov 2018 08:50:33 GMT  
		Size: 17.1 MB (17100700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afb4f0a079ce2f5e63275d10c31a9cceb3820b4c60bc00141f5d85d876095f`  
		Last Modified: Fri, 16 Nov 2018 08:50:30 GMT  
		Size: 2.1 MB (2063150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de88cd82926f0e6bf4aeb5d24f1cd6a19a90ecb1a2192cfefe65c3b8f7ee38`  
		Last Modified: Sat, 17 Nov 2018 00:46:46 GMT  
		Size: 3.9 KB (3888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a147135239fb9fc98cd5aff8478035058eb96fce07d30e490902d906f6ce382f`  
		Last Modified: Sat, 17 Nov 2018 00:46:46 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be683745987ec359466648480a1ced2fbe0c406226e665e1af860df14cc6e407`  
		Last Modified: Sat, 17 Nov 2018 00:47:29 GMT  
		Size: 107.3 MB (107304248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e48cc30431b094ad8f9adef5d885c069fdc1bd16aef57bc37a881c6015d145f`  
		Last Modified: Sat, 17 Nov 2018 00:46:47 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.18` - linux; arm variant v5

```console
$ docker pull plone@sha256:7a6300b8eb34054d136b26107a011e290f906fe7e2c5a70a3ccde506c94c4bf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146108525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15be4de99edf8edb77105fbf9a4b0ae541e2e12fde8d5baf252690ae33b7906c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:43:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 14:43:59 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:49:08 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 15:49:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:49:26 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 15:49:26 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 15:53:39 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 15:53:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 15:54:12 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 15:54:13 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 22:13:59 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 16 Nov 2018 22:13:59 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 22:14:01 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 16 Nov 2018 22:14:01 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 22:31:59 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 22:32:02 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 22:32:04 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 22:32:04 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 22:32:05 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 22:32:06 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 22:32:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 22:32:07 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6711710d7ae7a66b21454f1ac541ff82a90a356e556ae99131b966a974eeb3`  
		Last Modified: Fri, 16 Nov 2018 16:18:56 GMT  
		Size: 2.2 MB (2248386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce50903fa945a59d61766d42676d9a6a2d777ad606c88998251b62ce04716f7`  
		Last Modified: Fri, 16 Nov 2018 16:19:01 GMT  
		Size: 16.6 MB (16551425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21543ec618c4b85c2bceaf74d9988a4588cec547f009bdb7aa1e25808d54b994`  
		Last Modified: Fri, 16 Nov 2018 16:18:56 GMT  
		Size: 2.1 MB (2062942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3027d8971ee4bb97ed75dd79a0d18c0aa56c28e7a439a6ca1f92b27c082d7d8`  
		Last Modified: Fri, 16 Nov 2018 22:34:13 GMT  
		Size: 3.9 KB (3927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2407098bb28234fc6d4f96e19a8c01361d658335da160df91bc056d04e619ef3`  
		Last Modified: Fri, 16 Nov 2018 22:34:13 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9699c6a9a88570d6d78abf8c61d7d50fc0609ea63f4e15b06a78ab167908b240`  
		Last Modified: Fri, 16 Nov 2018 22:34:56 GMT  
		Size: 104.1 MB (104075911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b724631c86579bdf4240a2ef5ab1c7daa1b7b65c6802ec13ae8d2ed36d82e2`  
		Last Modified: Fri, 16 Nov 2018 22:34:13 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.18` - linux; arm variant v7

```console
$ docker pull plone@sha256:aa4fa5c2f0889fdf10a99a90300ffd3f39345a36e64de145928baf06c4374fb7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142373063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49436ac9ea747eb977623adeb43b9ad403dd399e11f67618cc259f6432f32ff`
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
# Fri, 16 Nov 2018 22:17:26 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 22:33:27 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 22:33:35 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 22:33:43 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 22:33:43 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 22:33:44 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 22:33:53 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 22:33:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 22:33:55 GMT
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
	-	`sha256:3ba102cf7daed6cfb9d22d911319db5b277a495d0545362a2c296c9b99271963`  
		Last Modified: Fri, 16 Nov 2018 22:36:43 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e45092813bb57071e13521e79df2a6b0a09335de0b1847697d2e6df60a6fbcc`  
		Last Modified: Fri, 16 Nov 2018 22:37:25 GMT  
		Size: 102.7 MB (102728914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f8789c00706b130e12e879187533ec2df569382ef13a24fb935e484b71dfdc`  
		Last Modified: Fri, 16 Nov 2018 22:36:43 GMT  
		Size: 2.2 KB (2248 bytes)  
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
$ docker pull plone@sha256:3ceabaffa278b8e3b3ab727e114831dba8821356dd3dac030ae6f0def738e5a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.2 MB (149221378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:669fe896105b98109f0a6028fafb9d1c9a1307501626056ded3573c6d4dc35cc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:39:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 14:40:02 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:03:52 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 16:04:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:04:27 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 16:04:28 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 16:12:27 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 16:12:28 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 16:13:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 16:13:26 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 23:54:18 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Fri, 16 Nov 2018 23:54:19 GMT
LABEL plone=4.3.18 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 23:54:26 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 16 Nov 2018 23:54:34 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 17 Nov 2018 00:15:30 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 17 Nov 2018 00:15:33 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 00:15:35 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Sat, 17 Nov 2018 00:15:37 GMT
EXPOSE 8080/tcp
# Sat, 17 Nov 2018 00:15:38 GMT
WORKDIR /plone/instance
# Sat, 17 Nov 2018 00:15:39 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 17 Nov 2018 00:15:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Nov 2018 00:15:41 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5607372b9874f6141ce5e4fb772e1d3ffb82343048516cbfce667d7e32bc21e0`  
		Last Modified: Fri, 16 Nov 2018 16:44:44 GMT  
		Size: 2.2 MB (2181805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fade17287b5ff67975110c89144c997159353852d651e15059549915ef53f392`  
		Last Modified: Fri, 16 Nov 2018 16:44:54 GMT  
		Size: 17.3 MB (17281247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338daeffb33dcc05b6fc252d5705a4e6a3279cc0dcef2ee32b407c863bbf111e`  
		Last Modified: Fri, 16 Nov 2018 16:44:46 GMT  
		Size: 2.1 MB (2064336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b78c62aaa0adb5e4ee8feb118bf8ea93bbac9ac347f8201af5b2542cce746b`  
		Last Modified: Sat, 17 Nov 2018 00:43:02 GMT  
		Size: 3.9 KB (3945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1630adbff708286c01ca770021b816749c4b56aba6bea6cc907f325c1c1f80b4`  
		Last Modified: Sat, 17 Nov 2018 00:43:02 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23260a86b0ac86c798278838102a31815f4070be2b9b9b91abd5f293fc5051f`  
		Last Modified: Sat, 17 Nov 2018 00:44:27 GMT  
		Size: 104.9 MB (104946405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255af9da5d3c5c011498cc03838a7107a02e9e79ed21b0e024cf8274db00233c`  
		Last Modified: Sat, 17 Nov 2018 00:43:03 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.18-alpine`

```console
$ docker pull plone@sha256:8aa7e1bf551107f54097cca8bf97da848099246cac76b22ffac94fadaf58b99e
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
$ docker pull plone@sha256:656115e0b8636dd6264f78d3a62c74c1253d68563b0afe38532500421c7efdd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100205082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aeeafd84841e1877aa603db8e5ae8c61f29a9545abdee2f52afc15b59484f2c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:44 GMT
ADD file:93897520864ded37d275998a619998bf26766ad41a3f5a9a379830983cd4a34a in / 
# Wed, 12 Sep 2018 10:38:44 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:44 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 16:23:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 16:23:30 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 16:46:20 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 16:46:21 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 16:46:21 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 16:46:21 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 08 Dec 2018 13:32:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 08 Dec 2018 13:32:23 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 08 Dec 2018 13:32:28 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 08 Dec 2018 13:32:29 GMT
CMD ["python2"]
# Sat, 08 Dec 2018 15:03:49 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sat, 08 Dec 2018 15:03:50 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 08 Dec 2018 15:03:50 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Sat, 08 Dec 2018 15:03:51 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 08 Dec 2018 15:13:34 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 08 Dec 2018 15:13:35 GMT
VOLUME [/data]
# Sat, 08 Dec 2018 15:13:36 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Sat, 08 Dec 2018 15:13:36 GMT
EXPOSE 8080/tcp
# Sat, 08 Dec 2018 15:13:36 GMT
WORKDIR /plone/instance
# Sat, 08 Dec 2018 15:13:37 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 08 Dec 2018 15:13:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 15:13:37 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddaaefef8d71bb2c30e7997b9ecdc5c2ae2fe5d5cc08ab092f712854b3bce9`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012b9f1f986358a67376642cf4a2a28e3a918cfb52b746474347e852f3887882`  
		Last Modified: Wed, 12 Sep 2018 16:55:48 GMT  
		Size: 309.0 KB (309048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30811ac703b22cc664ff79ceee1fefe6479901c72f9ec6e067951a9f33aae3b3`  
		Last Modified: Sat, 08 Dec 2018 13:37:26 GMT  
		Size: 17.0 MB (16984303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab9242588fd72d2c9fa6f883a77ee188a51dfa69fc5b1ca4b2744e323eec9cb`  
		Last Modified: Sat, 08 Dec 2018 13:37:22 GMT  
		Size: 1.8 MB (1779986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7c1762ba67c511a5f38d4a0db27a5d67e4f93fb3a06258491425b19b4178f2`  
		Last Modified: Sat, 08 Dec 2018 15:15:44 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c5563ccc58a5cd57d85e3b39369cba804422e7f5e0403f797f85435506a4c`  
		Last Modified: Sat, 08 Dec 2018 15:15:44 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a641efae3e2821a842122f9e13bec304abd907cae771c161023762fbd06ef89`  
		Last Modified: Sat, 08 Dec 2018 15:16:11 GMT  
		Size: 79.0 MB (78958303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e72988c7517f371d4dd78c3ee12157887bb6fbd2ed4aab2d3ed2b8fcdafb72`  
		Last Modified: Sat, 08 Dec 2018 15:15:45 GMT  
		Size: 2.2 KB (2250 bytes)  
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
$ docker pull plone@sha256:8aa7e1bf551107f54097cca8bf97da848099246cac76b22ffac94fadaf58b99e
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
$ docker pull plone@sha256:656115e0b8636dd6264f78d3a62c74c1253d68563b0afe38532500421c7efdd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100205082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aeeafd84841e1877aa603db8e5ae8c61f29a9545abdee2f52afc15b59484f2c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:44 GMT
ADD file:93897520864ded37d275998a619998bf26766ad41a3f5a9a379830983cd4a34a in / 
# Wed, 12 Sep 2018 10:38:44 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:44 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 16:23:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 16:23:30 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 16:46:20 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 16:46:21 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 16:46:21 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 16:46:21 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 08 Dec 2018 13:32:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 08 Dec 2018 13:32:23 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 08 Dec 2018 13:32:28 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 08 Dec 2018 13:32:29 GMT
CMD ["python2"]
# Sat, 08 Dec 2018 15:03:49 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sat, 08 Dec 2018 15:03:50 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 08 Dec 2018 15:03:50 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Sat, 08 Dec 2018 15:03:51 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 08 Dec 2018 15:13:34 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 08 Dec 2018 15:13:35 GMT
VOLUME [/data]
# Sat, 08 Dec 2018 15:13:36 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Sat, 08 Dec 2018 15:13:36 GMT
EXPOSE 8080/tcp
# Sat, 08 Dec 2018 15:13:36 GMT
WORKDIR /plone/instance
# Sat, 08 Dec 2018 15:13:37 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 08 Dec 2018 15:13:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 15:13:37 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddaaefef8d71bb2c30e7997b9ecdc5c2ae2fe5d5cc08ab092f712854b3bce9`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012b9f1f986358a67376642cf4a2a28e3a918cfb52b746474347e852f3887882`  
		Last Modified: Wed, 12 Sep 2018 16:55:48 GMT  
		Size: 309.0 KB (309048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30811ac703b22cc664ff79ceee1fefe6479901c72f9ec6e067951a9f33aae3b3`  
		Last Modified: Sat, 08 Dec 2018 13:37:26 GMT  
		Size: 17.0 MB (16984303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab9242588fd72d2c9fa6f883a77ee188a51dfa69fc5b1ca4b2744e323eec9cb`  
		Last Modified: Sat, 08 Dec 2018 13:37:22 GMT  
		Size: 1.8 MB (1779986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7c1762ba67c511a5f38d4a0db27a5d67e4f93fb3a06258491425b19b4178f2`  
		Last Modified: Sat, 08 Dec 2018 15:15:44 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c5563ccc58a5cd57d85e3b39369cba804422e7f5e0403f797f85435506a4c`  
		Last Modified: Sat, 08 Dec 2018 15:15:44 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a641efae3e2821a842122f9e13bec304abd907cae771c161023762fbd06ef89`  
		Last Modified: Sat, 08 Dec 2018 15:16:11 GMT  
		Size: 79.0 MB (78958303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e72988c7517f371d4dd78c3ee12157887bb6fbd2ed4aab2d3ed2b8fcdafb72`  
		Last Modified: Sat, 08 Dec 2018 15:15:45 GMT  
		Size: 2.2 KB (2250 bytes)  
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
$ docker pull plone@sha256:8aa7e1bf551107f54097cca8bf97da848099246cac76b22ffac94fadaf58b99e
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
$ docker pull plone@sha256:656115e0b8636dd6264f78d3a62c74c1253d68563b0afe38532500421c7efdd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100205082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aeeafd84841e1877aa603db8e5ae8c61f29a9545abdee2f52afc15b59484f2c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:44 GMT
ADD file:93897520864ded37d275998a619998bf26766ad41a3f5a9a379830983cd4a34a in / 
# Wed, 12 Sep 2018 10:38:44 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:44 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 16:23:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 16:23:30 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 16:46:20 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 16:46:21 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 16:46:21 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 16:46:21 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 08 Dec 2018 13:32:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 08 Dec 2018 13:32:23 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 08 Dec 2018 13:32:28 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 08 Dec 2018 13:32:29 GMT
CMD ["python2"]
# Sat, 08 Dec 2018 15:03:49 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.18 PLONE_MD5=c9932e919254a2799b0e340b2ecbda9b
# Sat, 08 Dec 2018 15:03:50 GMT
LABEL plone=4.3.18 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 08 Dec 2018 15:03:50 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Sat, 08 Dec 2018 15:03:51 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 08 Dec 2018 15:13:34 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 08 Dec 2018 15:13:35 GMT
VOLUME [/data]
# Sat, 08 Dec 2018 15:13:36 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Sat, 08 Dec 2018 15:13:36 GMT
EXPOSE 8080/tcp
# Sat, 08 Dec 2018 15:13:36 GMT
WORKDIR /plone/instance
# Sat, 08 Dec 2018 15:13:37 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 08 Dec 2018 15:13:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 15:13:37 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddaaefef8d71bb2c30e7997b9ecdc5c2ae2fe5d5cc08ab092f712854b3bce9`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012b9f1f986358a67376642cf4a2a28e3a918cfb52b746474347e852f3887882`  
		Last Modified: Wed, 12 Sep 2018 16:55:48 GMT  
		Size: 309.0 KB (309048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30811ac703b22cc664ff79ceee1fefe6479901c72f9ec6e067951a9f33aae3b3`  
		Last Modified: Sat, 08 Dec 2018 13:37:26 GMT  
		Size: 17.0 MB (16984303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab9242588fd72d2c9fa6f883a77ee188a51dfa69fc5b1ca4b2744e323eec9cb`  
		Last Modified: Sat, 08 Dec 2018 13:37:22 GMT  
		Size: 1.8 MB (1779986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7c1762ba67c511a5f38d4a0db27a5d67e4f93fb3a06258491425b19b4178f2`  
		Last Modified: Sat, 08 Dec 2018 15:15:44 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c5563ccc58a5cd57d85e3b39369cba804422e7f5e0403f797f85435506a4c`  
		Last Modified: Sat, 08 Dec 2018 15:15:44 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a641efae3e2821a842122f9e13bec304abd907cae771c161023762fbd06ef89`  
		Last Modified: Sat, 08 Dec 2018 15:16:11 GMT  
		Size: 79.0 MB (78958303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e72988c7517f371d4dd78c3ee12157887bb6fbd2ed4aab2d3ed2b8fcdafb72`  
		Last Modified: Sat, 08 Dec 2018 15:15:45 GMT  
		Size: 2.2 KB (2250 bytes)  
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
$ docker pull plone@sha256:0f5db19f4095ce6d8bc0d16296a6381f91e55d79f0e678a855c7b80b9175aa30
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
$ docker pull plone@sha256:3156c2ac2aa65cfb01f072cf1d05f7e1bae623a1749dd83afaec7612e50f9fd6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174167518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f9a62b044ce9fa86b1c2aae94de071c796801bafc09afe7292f60de26c58842`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 06:22:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 06:22:53 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 07:51:02 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 07:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 07:51:11 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 07:51:11 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 07:53:45 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 07:53:45 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 07:54:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 07:54:06 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 23:43:01 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 16 Nov 2018 23:43:02 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 23:43:03 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 16 Nov 2018 23:43:04 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 23:53:04 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 23:53:06 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 23:53:07 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 23:53:07 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 23:53:08 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 23:53:08 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 23:53:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 23:53:09 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da2a74f37b12f23ad9c71d2b76004b49dd667d0c638501b50ef88ef447b344a`  
		Last Modified: Fri, 16 Nov 2018 08:50:29 GMT  
		Size: 2.5 MB (2516789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b6f498cfd015affa9cb592c9a64510d54177608e906a0337b8364b4f926103`  
		Last Modified: Fri, 16 Nov 2018 08:50:33 GMT  
		Size: 17.1 MB (17100700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afb4f0a079ce2f5e63275d10c31a9cceb3820b4c60bc00141f5d85d876095f`  
		Last Modified: Fri, 16 Nov 2018 08:50:30 GMT  
		Size: 2.1 MB (2063150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccab63db2f3a4c4cedba09ff706ab597cfc618976d777c55d6933b97d5de630b`  
		Last Modified: Sat, 17 Nov 2018 00:40:43 GMT  
		Size: 3.9 KB (3886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef7a11eddf064838dbbea64ef663a130257be14a2f4d6df51e859faacd012c5`  
		Last Modified: Sat, 17 Nov 2018 00:40:43 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297b5705b1e2c22de257dbbe8114620fe4f05ad0b7c9c602aae2b6964380b1e4`  
		Last Modified: Sat, 17 Nov 2018 00:41:55 GMT  
		Size: 130.0 MB (129993791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631f25ecc9107a09f07d6325c8b34b79be171001a99ca197c0fc9bdf188399f`  
		Last Modified: Sat, 17 Nov 2018 00:40:43 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5` - linux; arm variant v5

```console
$ docker pull plone@sha256:a6600e609912fcf257a5da832796bcc72773f84bcd1a95489a4af3e79ebd208e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168891270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f19862ae50d783121dfd5238ccad8182b8b780aec3da7b3eb287d7a0623ac88`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:43:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 14:43:59 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:49:08 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 15:49:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:49:26 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 15:49:26 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 15:53:39 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 15:53:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 15:54:12 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 15:54:13 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 21:57:14 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 16 Nov 2018 21:57:14 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 21:57:15 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 16 Nov 2018 21:57:16 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 22:13:29 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 22:13:35 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 22:13:36 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 22:13:37 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 22:13:38 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 22:13:39 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 22:13:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 22:13:40 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6711710d7ae7a66b21454f1ac541ff82a90a356e556ae99131b966a974eeb3`  
		Last Modified: Fri, 16 Nov 2018 16:18:56 GMT  
		Size: 2.2 MB (2248386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce50903fa945a59d61766d42676d9a6a2d777ad606c88998251b62ce04716f7`  
		Last Modified: Fri, 16 Nov 2018 16:19:01 GMT  
		Size: 16.6 MB (16551425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21543ec618c4b85c2bceaf74d9988a4588cec547f009bdb7aa1e25808d54b994`  
		Last Modified: Fri, 16 Nov 2018 16:18:56 GMT  
		Size: 2.1 MB (2062942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af777f725d0f198ba7084acca38588fa21e9d8df5bd5112a5bd3062c7e8cf548`  
		Last Modified: Fri, 16 Nov 2018 22:32:31 GMT  
		Size: 3.9 KB (3928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12acad2ea2da3ee2fcd589509d24e4c7ce9a9409ec9780c9f43d3cfa86443cc`  
		Last Modified: Fri, 16 Nov 2018 22:32:31 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546a0cf468f74bcf26b36003a90f4357af5adcca64347264a7e5144bc325b60f`  
		Last Modified: Fri, 16 Nov 2018 22:33:24 GMT  
		Size: 126.9 MB (126858656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107a9d3e616058af3b19e0650ff811c7711cf5171b98d113dee8b305d6be0e2e`  
		Last Modified: Fri, 16 Nov 2018 22:32:31 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5` - linux; arm variant v7

```console
$ docker pull plone@sha256:2e8bb93ca97e60522dc1168ff21e7fe5e6d6150eca93675a6449238f3ef678c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165184720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1c16603cf5dea6119e185f9cd44e0171588bdb6d59d0a3e657f512687761aa7`
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
# Fri, 16 Nov 2018 22:02:03 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 22:17:00 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 22:17:05 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 22:17:06 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 22:17:07 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 22:17:08 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 22:17:09 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 22:17:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 22:17:10 GMT
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
	-	`sha256:fa29a2189be31dd9b891e3bf897fc9107e65dcba8a76ad9bf18ab4ab8eccc726`  
		Last Modified: Fri, 16 Nov 2018 22:34:25 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c163b72bca736e604c4306af26212f83e2cd12efd472dcb7cb4c11807d3d88b5`  
		Last Modified: Fri, 16 Nov 2018 22:35:13 GMT  
		Size: 125.5 MB (125540566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9e743208c21bb52475550d3d1cd1533bab5bf4f91401d798b8a4a1e8839ef2`  
		Last Modified: Fri, 16 Nov 2018 22:34:25 GMT  
		Size: 2.2 KB (2248 bytes)  
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
$ docker pull plone@sha256:76d75ad0eb0a312a3935797f924a2b237dc24faabb3c1c61b65a2aa0f5621072
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172033141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7e06a8681a7ac5ba2344a5f57721158f6a53adeae6ffad28f8aca24aa3bd58b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:39:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 14:40:02 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:03:52 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 16:04:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:04:27 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 16:04:28 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 16:12:27 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 16:12:28 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 16:13:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 16:13:26 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 23:20:57 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 16 Nov 2018 23:20:57 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 23:21:04 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 16 Nov 2018 23:21:04 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 23:38:19 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 23:38:33 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 23:38:46 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 23:38:48 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 23:38:59 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 23:39:01 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 23:39:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 23:39:02 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5607372b9874f6141ce5e4fb772e1d3ffb82343048516cbfce667d7e32bc21e0`  
		Last Modified: Fri, 16 Nov 2018 16:44:44 GMT  
		Size: 2.2 MB (2181805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fade17287b5ff67975110c89144c997159353852d651e15059549915ef53f392`  
		Last Modified: Fri, 16 Nov 2018 16:44:54 GMT  
		Size: 17.3 MB (17281247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338daeffb33dcc05b6fc252d5705a4e6a3279cc0dcef2ee32b407c863bbf111e`  
		Last Modified: Fri, 16 Nov 2018 16:44:46 GMT  
		Size: 2.1 MB (2064336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1dbbc95a4880dd18f8179da59a7d980a55070343b78334ecc9930f4a3faaf95`  
		Last Modified: Sat, 17 Nov 2018 00:38:09 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d35b5fe6a22dcf2f3f9f4e5c29f07c720cc616330340f5fd846a7a267a50ed`  
		Last Modified: Sat, 17 Nov 2018 00:38:09 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a195f557ff20748055730639bedb8451dbc3c9d63e289c5ae59e2ca9f863b81`  
		Last Modified: Sat, 17 Nov 2018 00:39:34 GMT  
		Size: 127.8 MB (127758171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7e36339bcf55afe28dbd95917e991f906deac227e319e31326583a43cf5a30`  
		Last Modified: Sat, 17 Nov 2018 00:38:09 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1`

```console
$ docker pull plone@sha256:0f5db19f4095ce6d8bc0d16296a6381f91e55d79f0e678a855c7b80b9175aa30
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
$ docker pull plone@sha256:3156c2ac2aa65cfb01f072cf1d05f7e1bae623a1749dd83afaec7612e50f9fd6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174167518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f9a62b044ce9fa86b1c2aae94de071c796801bafc09afe7292f60de26c58842`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 06:22:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 06:22:53 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 07:51:02 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 07:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 07:51:11 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 07:51:11 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 07:53:45 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 07:53:45 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 07:54:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 07:54:06 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 23:43:01 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 16 Nov 2018 23:43:02 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 23:43:03 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 16 Nov 2018 23:43:04 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 23:53:04 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 23:53:06 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 23:53:07 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 23:53:07 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 23:53:08 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 23:53:08 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 23:53:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 23:53:09 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da2a74f37b12f23ad9c71d2b76004b49dd667d0c638501b50ef88ef447b344a`  
		Last Modified: Fri, 16 Nov 2018 08:50:29 GMT  
		Size: 2.5 MB (2516789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b6f498cfd015affa9cb592c9a64510d54177608e906a0337b8364b4f926103`  
		Last Modified: Fri, 16 Nov 2018 08:50:33 GMT  
		Size: 17.1 MB (17100700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afb4f0a079ce2f5e63275d10c31a9cceb3820b4c60bc00141f5d85d876095f`  
		Last Modified: Fri, 16 Nov 2018 08:50:30 GMT  
		Size: 2.1 MB (2063150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccab63db2f3a4c4cedba09ff706ab597cfc618976d777c55d6933b97d5de630b`  
		Last Modified: Sat, 17 Nov 2018 00:40:43 GMT  
		Size: 3.9 KB (3886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef7a11eddf064838dbbea64ef663a130257be14a2f4d6df51e859faacd012c5`  
		Last Modified: Sat, 17 Nov 2018 00:40:43 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297b5705b1e2c22de257dbbe8114620fe4f05ad0b7c9c602aae2b6964380b1e4`  
		Last Modified: Sat, 17 Nov 2018 00:41:55 GMT  
		Size: 130.0 MB (129993791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631f25ecc9107a09f07d6325c8b34b79be171001a99ca197c0fc9bdf188399f`  
		Last Modified: Sat, 17 Nov 2018 00:40:43 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1` - linux; arm variant v5

```console
$ docker pull plone@sha256:a6600e609912fcf257a5da832796bcc72773f84bcd1a95489a4af3e79ebd208e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168891270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f19862ae50d783121dfd5238ccad8182b8b780aec3da7b3eb287d7a0623ac88`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:43:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 14:43:59 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:49:08 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 15:49:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:49:26 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 15:49:26 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 15:53:39 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 15:53:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 15:54:12 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 15:54:13 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 21:57:14 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 16 Nov 2018 21:57:14 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 21:57:15 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 16 Nov 2018 21:57:16 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 22:13:29 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 22:13:35 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 22:13:36 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 22:13:37 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 22:13:38 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 22:13:39 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 22:13:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 22:13:40 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6711710d7ae7a66b21454f1ac541ff82a90a356e556ae99131b966a974eeb3`  
		Last Modified: Fri, 16 Nov 2018 16:18:56 GMT  
		Size: 2.2 MB (2248386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce50903fa945a59d61766d42676d9a6a2d777ad606c88998251b62ce04716f7`  
		Last Modified: Fri, 16 Nov 2018 16:19:01 GMT  
		Size: 16.6 MB (16551425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21543ec618c4b85c2bceaf74d9988a4588cec547f009bdb7aa1e25808d54b994`  
		Last Modified: Fri, 16 Nov 2018 16:18:56 GMT  
		Size: 2.1 MB (2062942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af777f725d0f198ba7084acca38588fa21e9d8df5bd5112a5bd3062c7e8cf548`  
		Last Modified: Fri, 16 Nov 2018 22:32:31 GMT  
		Size: 3.9 KB (3928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12acad2ea2da3ee2fcd589509d24e4c7ce9a9409ec9780c9f43d3cfa86443cc`  
		Last Modified: Fri, 16 Nov 2018 22:32:31 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546a0cf468f74bcf26b36003a90f4357af5adcca64347264a7e5144bc325b60f`  
		Last Modified: Fri, 16 Nov 2018 22:33:24 GMT  
		Size: 126.9 MB (126858656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107a9d3e616058af3b19e0650ff811c7711cf5171b98d113dee8b305d6be0e2e`  
		Last Modified: Fri, 16 Nov 2018 22:32:31 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1` - linux; arm variant v7

```console
$ docker pull plone@sha256:2e8bb93ca97e60522dc1168ff21e7fe5e6d6150eca93675a6449238f3ef678c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165184720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1c16603cf5dea6119e185f9cd44e0171588bdb6d59d0a3e657f512687761aa7`
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
# Fri, 16 Nov 2018 22:02:03 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 22:17:00 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 22:17:05 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 22:17:06 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 22:17:07 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 22:17:08 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 22:17:09 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 22:17:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 22:17:10 GMT
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
	-	`sha256:fa29a2189be31dd9b891e3bf897fc9107e65dcba8a76ad9bf18ab4ab8eccc726`  
		Last Modified: Fri, 16 Nov 2018 22:34:25 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c163b72bca736e604c4306af26212f83e2cd12efd472dcb7cb4c11807d3d88b5`  
		Last Modified: Fri, 16 Nov 2018 22:35:13 GMT  
		Size: 125.5 MB (125540566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9e743208c21bb52475550d3d1cd1533bab5bf4f91401d798b8a4a1e8839ef2`  
		Last Modified: Fri, 16 Nov 2018 22:34:25 GMT  
		Size: 2.2 KB (2248 bytes)  
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
$ docker pull plone@sha256:76d75ad0eb0a312a3935797f924a2b237dc24faabb3c1c61b65a2aa0f5621072
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172033141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7e06a8681a7ac5ba2344a5f57721158f6a53adeae6ffad28f8aca24aa3bd58b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:39:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 14:40:02 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:03:52 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 16:04:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:04:27 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 16:04:28 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 16:12:27 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 16:12:28 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 16:13:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 16:13:26 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 23:20:57 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 16 Nov 2018 23:20:57 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 23:21:04 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 16 Nov 2018 23:21:04 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 23:38:19 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 23:38:33 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 23:38:46 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 23:38:48 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 23:38:59 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 23:39:01 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 23:39:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 23:39:02 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5607372b9874f6141ce5e4fb772e1d3ffb82343048516cbfce667d7e32bc21e0`  
		Last Modified: Fri, 16 Nov 2018 16:44:44 GMT  
		Size: 2.2 MB (2181805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fade17287b5ff67975110c89144c997159353852d651e15059549915ef53f392`  
		Last Modified: Fri, 16 Nov 2018 16:44:54 GMT  
		Size: 17.3 MB (17281247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338daeffb33dcc05b6fc252d5705a4e6a3279cc0dcef2ee32b407c863bbf111e`  
		Last Modified: Fri, 16 Nov 2018 16:44:46 GMT  
		Size: 2.1 MB (2064336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1dbbc95a4880dd18f8179da59a7d980a55070343b78334ecc9930f4a3faaf95`  
		Last Modified: Sat, 17 Nov 2018 00:38:09 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d35b5fe6a22dcf2f3f9f4e5c29f07c720cc616330340f5fd846a7a267a50ed`  
		Last Modified: Sat, 17 Nov 2018 00:38:09 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a195f557ff20748055730639bedb8451dbc3c9d63e289c5ae59e2ca9f863b81`  
		Last Modified: Sat, 17 Nov 2018 00:39:34 GMT  
		Size: 127.8 MB (127758171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7e36339bcf55afe28dbd95917e991f906deac227e319e31326583a43cf5a30`  
		Last Modified: Sat, 17 Nov 2018 00:38:09 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1.4`

```console
$ docker pull plone@sha256:0f5db19f4095ce6d8bc0d16296a6381f91e55d79f0e678a855c7b80b9175aa30
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
$ docker pull plone@sha256:3156c2ac2aa65cfb01f072cf1d05f7e1bae623a1749dd83afaec7612e50f9fd6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174167518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f9a62b044ce9fa86b1c2aae94de071c796801bafc09afe7292f60de26c58842`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 06:22:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 06:22:53 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 07:51:02 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 07:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 07:51:11 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 07:51:11 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 07:53:45 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 07:53:45 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 07:54:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 07:54:06 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 23:43:01 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 16 Nov 2018 23:43:02 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 23:43:03 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 16 Nov 2018 23:43:04 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 23:53:04 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 23:53:06 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 23:53:07 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 23:53:07 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 23:53:08 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 23:53:08 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 23:53:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 23:53:09 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da2a74f37b12f23ad9c71d2b76004b49dd667d0c638501b50ef88ef447b344a`  
		Last Modified: Fri, 16 Nov 2018 08:50:29 GMT  
		Size: 2.5 MB (2516789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b6f498cfd015affa9cb592c9a64510d54177608e906a0337b8364b4f926103`  
		Last Modified: Fri, 16 Nov 2018 08:50:33 GMT  
		Size: 17.1 MB (17100700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afb4f0a079ce2f5e63275d10c31a9cceb3820b4c60bc00141f5d85d876095f`  
		Last Modified: Fri, 16 Nov 2018 08:50:30 GMT  
		Size: 2.1 MB (2063150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccab63db2f3a4c4cedba09ff706ab597cfc618976d777c55d6933b97d5de630b`  
		Last Modified: Sat, 17 Nov 2018 00:40:43 GMT  
		Size: 3.9 KB (3886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef7a11eddf064838dbbea64ef663a130257be14a2f4d6df51e859faacd012c5`  
		Last Modified: Sat, 17 Nov 2018 00:40:43 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297b5705b1e2c22de257dbbe8114620fe4f05ad0b7c9c602aae2b6964380b1e4`  
		Last Modified: Sat, 17 Nov 2018 00:41:55 GMT  
		Size: 130.0 MB (129993791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631f25ecc9107a09f07d6325c8b34b79be171001a99ca197c0fc9bdf188399f`  
		Last Modified: Sat, 17 Nov 2018 00:40:43 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.4` - linux; arm variant v5

```console
$ docker pull plone@sha256:a6600e609912fcf257a5da832796bcc72773f84bcd1a95489a4af3e79ebd208e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168891270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f19862ae50d783121dfd5238ccad8182b8b780aec3da7b3eb287d7a0623ac88`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:43:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 14:43:59 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:49:08 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 15:49:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:49:26 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 15:49:26 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 15:53:39 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 15:53:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 15:54:12 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 15:54:13 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 21:57:14 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 16 Nov 2018 21:57:14 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 21:57:15 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 16 Nov 2018 21:57:16 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 22:13:29 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 22:13:35 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 22:13:36 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 22:13:37 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 22:13:38 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 22:13:39 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 22:13:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 22:13:40 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6711710d7ae7a66b21454f1ac541ff82a90a356e556ae99131b966a974eeb3`  
		Last Modified: Fri, 16 Nov 2018 16:18:56 GMT  
		Size: 2.2 MB (2248386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce50903fa945a59d61766d42676d9a6a2d777ad606c88998251b62ce04716f7`  
		Last Modified: Fri, 16 Nov 2018 16:19:01 GMT  
		Size: 16.6 MB (16551425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21543ec618c4b85c2bceaf74d9988a4588cec547f009bdb7aa1e25808d54b994`  
		Last Modified: Fri, 16 Nov 2018 16:18:56 GMT  
		Size: 2.1 MB (2062942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af777f725d0f198ba7084acca38588fa21e9d8df5bd5112a5bd3062c7e8cf548`  
		Last Modified: Fri, 16 Nov 2018 22:32:31 GMT  
		Size: 3.9 KB (3928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12acad2ea2da3ee2fcd589509d24e4c7ce9a9409ec9780c9f43d3cfa86443cc`  
		Last Modified: Fri, 16 Nov 2018 22:32:31 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546a0cf468f74bcf26b36003a90f4357af5adcca64347264a7e5144bc325b60f`  
		Last Modified: Fri, 16 Nov 2018 22:33:24 GMT  
		Size: 126.9 MB (126858656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107a9d3e616058af3b19e0650ff811c7711cf5171b98d113dee8b305d6be0e2e`  
		Last Modified: Fri, 16 Nov 2018 22:32:31 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.4` - linux; arm variant v7

```console
$ docker pull plone@sha256:2e8bb93ca97e60522dc1168ff21e7fe5e6d6150eca93675a6449238f3ef678c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165184720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1c16603cf5dea6119e185f9cd44e0171588bdb6d59d0a3e657f512687761aa7`
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
# Fri, 16 Nov 2018 22:02:03 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 22:17:00 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 22:17:05 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 22:17:06 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 22:17:07 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 22:17:08 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 22:17:09 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 22:17:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 22:17:10 GMT
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
	-	`sha256:fa29a2189be31dd9b891e3bf897fc9107e65dcba8a76ad9bf18ab4ab8eccc726`  
		Last Modified: Fri, 16 Nov 2018 22:34:25 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c163b72bca736e604c4306af26212f83e2cd12efd472dcb7cb4c11807d3d88b5`  
		Last Modified: Fri, 16 Nov 2018 22:35:13 GMT  
		Size: 125.5 MB (125540566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9e743208c21bb52475550d3d1cd1533bab5bf4f91401d798b8a4a1e8839ef2`  
		Last Modified: Fri, 16 Nov 2018 22:34:25 GMT  
		Size: 2.2 KB (2248 bytes)  
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
$ docker pull plone@sha256:76d75ad0eb0a312a3935797f924a2b237dc24faabb3c1c61b65a2aa0f5621072
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172033141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7e06a8681a7ac5ba2344a5f57721158f6a53adeae6ffad28f8aca24aa3bd58b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:39:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 14:40:02 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:03:52 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 16:04:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:04:27 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 16:04:28 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 16:12:27 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 16:12:28 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 16:13:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 16:13:26 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 23:20:57 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 16 Nov 2018 23:20:57 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 23:21:04 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 16 Nov 2018 23:21:04 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 23:38:19 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 23:38:33 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 23:38:46 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 23:38:48 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 23:38:59 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 23:39:01 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 23:39:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 23:39:02 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5607372b9874f6141ce5e4fb772e1d3ffb82343048516cbfce667d7e32bc21e0`  
		Last Modified: Fri, 16 Nov 2018 16:44:44 GMT  
		Size: 2.2 MB (2181805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fade17287b5ff67975110c89144c997159353852d651e15059549915ef53f392`  
		Last Modified: Fri, 16 Nov 2018 16:44:54 GMT  
		Size: 17.3 MB (17281247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338daeffb33dcc05b6fc252d5705a4e6a3279cc0dcef2ee32b407c863bbf111e`  
		Last Modified: Fri, 16 Nov 2018 16:44:46 GMT  
		Size: 2.1 MB (2064336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1dbbc95a4880dd18f8179da59a7d980a55070343b78334ecc9930f4a3faaf95`  
		Last Modified: Sat, 17 Nov 2018 00:38:09 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d35b5fe6a22dcf2f3f9f4e5c29f07c720cc616330340f5fd846a7a267a50ed`  
		Last Modified: Sat, 17 Nov 2018 00:38:09 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a195f557ff20748055730639bedb8451dbc3c9d63e289c5ae59e2ca9f863b81`  
		Last Modified: Sat, 17 Nov 2018 00:39:34 GMT  
		Size: 127.8 MB (127758171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7e36339bcf55afe28dbd95917e991f906deac227e319e31326583a43cf5a30`  
		Last Modified: Sat, 17 Nov 2018 00:38:09 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1.4-alpine`

```console
$ docker pull plone@sha256:fe562ad944c29a2511e8253a0faccb5dd8bd8ac3213b4f3fa6d23b0219718e0b
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
$ docker pull plone@sha256:024e085d509f39fcdc1ca2115ccbe05d133f1340039fd6f0f6eacb099f2c5c08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (122975212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7a97e2f8eae09ea4de85fabc46264bcefa47479a1ada39b35090cee92ad4c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:44 GMT
ADD file:93897520864ded37d275998a619998bf26766ad41a3f5a9a379830983cd4a34a in / 
# Wed, 12 Sep 2018 10:38:44 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:44 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 16:23:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 16:23:30 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 16:46:20 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 16:46:21 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 16:46:21 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 16:46:21 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 08 Dec 2018 13:32:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 08 Dec 2018 13:32:23 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 08 Dec 2018 13:32:28 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 08 Dec 2018 13:32:29 GMT
CMD ["python2"]
# Sat, 08 Dec 2018 14:54:29 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 08 Dec 2018 14:54:29 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 08 Dec 2018 14:54:30 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Sat, 08 Dec 2018 14:54:30 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 08 Dec 2018 15:03:13 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Sat, 08 Dec 2018 15:03:14 GMT
VOLUME [/data]
# Sat, 08 Dec 2018 15:03:15 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Sat, 08 Dec 2018 15:03:15 GMT
EXPOSE 8080/tcp
# Sat, 08 Dec 2018 15:03:15 GMT
WORKDIR /plone/instance
# Sat, 08 Dec 2018 15:03:15 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 08 Dec 2018 15:03:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 15:03:16 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddaaefef8d71bb2c30e7997b9ecdc5c2ae2fe5d5cc08ab092f712854b3bce9`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012b9f1f986358a67376642cf4a2a28e3a918cfb52b746474347e852f3887882`  
		Last Modified: Wed, 12 Sep 2018 16:55:48 GMT  
		Size: 309.0 KB (309048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30811ac703b22cc664ff79ceee1fefe6479901c72f9ec6e067951a9f33aae3b3`  
		Last Modified: Sat, 08 Dec 2018 13:37:26 GMT  
		Size: 17.0 MB (16984303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab9242588fd72d2c9fa6f883a77ee188a51dfa69fc5b1ca4b2744e323eec9cb`  
		Last Modified: Sat, 08 Dec 2018 13:37:22 GMT  
		Size: 1.8 MB (1779986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3a27e236b22f4ee9422b19d8666761668ea33412509079b9f09e31b8b291ab`  
		Last Modified: Sat, 08 Dec 2018 15:14:13 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900ef07caf035bd96eebe5f7da5b7e60368e613d08ad07f1605ed9edba6f7aea`  
		Last Modified: Sat, 08 Dec 2018 15:14:13 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51d7e0459815648c641a088f2cb093beb5c41e39b667e80d181c3f144f50628`  
		Last Modified: Sat, 08 Dec 2018 15:14:44 GMT  
		Size: 101.7 MB (101728433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5486e3f65028d4314d97bd2b0a414e2370a218dbb510bc7fba437c41e4c2fb`  
		Last Modified: Sat, 08 Dec 2018 15:14:13 GMT  
		Size: 2.2 KB (2250 bytes)  
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
$ docker pull plone@sha256:fe562ad944c29a2511e8253a0faccb5dd8bd8ac3213b4f3fa6d23b0219718e0b
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
$ docker pull plone@sha256:024e085d509f39fcdc1ca2115ccbe05d133f1340039fd6f0f6eacb099f2c5c08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (122975212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7a97e2f8eae09ea4de85fabc46264bcefa47479a1ada39b35090cee92ad4c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:44 GMT
ADD file:93897520864ded37d275998a619998bf26766ad41a3f5a9a379830983cd4a34a in / 
# Wed, 12 Sep 2018 10:38:44 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:44 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 16:23:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 16:23:30 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 16:46:20 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 16:46:21 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 16:46:21 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 16:46:21 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 08 Dec 2018 13:32:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 08 Dec 2018 13:32:23 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 08 Dec 2018 13:32:28 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 08 Dec 2018 13:32:29 GMT
CMD ["python2"]
# Sat, 08 Dec 2018 14:54:29 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 08 Dec 2018 14:54:29 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 08 Dec 2018 14:54:30 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Sat, 08 Dec 2018 14:54:30 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 08 Dec 2018 15:03:13 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Sat, 08 Dec 2018 15:03:14 GMT
VOLUME [/data]
# Sat, 08 Dec 2018 15:03:15 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Sat, 08 Dec 2018 15:03:15 GMT
EXPOSE 8080/tcp
# Sat, 08 Dec 2018 15:03:15 GMT
WORKDIR /plone/instance
# Sat, 08 Dec 2018 15:03:15 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 08 Dec 2018 15:03:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 15:03:16 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddaaefef8d71bb2c30e7997b9ecdc5c2ae2fe5d5cc08ab092f712854b3bce9`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012b9f1f986358a67376642cf4a2a28e3a918cfb52b746474347e852f3887882`  
		Last Modified: Wed, 12 Sep 2018 16:55:48 GMT  
		Size: 309.0 KB (309048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30811ac703b22cc664ff79ceee1fefe6479901c72f9ec6e067951a9f33aae3b3`  
		Last Modified: Sat, 08 Dec 2018 13:37:26 GMT  
		Size: 17.0 MB (16984303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab9242588fd72d2c9fa6f883a77ee188a51dfa69fc5b1ca4b2744e323eec9cb`  
		Last Modified: Sat, 08 Dec 2018 13:37:22 GMT  
		Size: 1.8 MB (1779986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3a27e236b22f4ee9422b19d8666761668ea33412509079b9f09e31b8b291ab`  
		Last Modified: Sat, 08 Dec 2018 15:14:13 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900ef07caf035bd96eebe5f7da5b7e60368e613d08ad07f1605ed9edba6f7aea`  
		Last Modified: Sat, 08 Dec 2018 15:14:13 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51d7e0459815648c641a088f2cb093beb5c41e39b667e80d181c3f144f50628`  
		Last Modified: Sat, 08 Dec 2018 15:14:44 GMT  
		Size: 101.7 MB (101728433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5486e3f65028d4314d97bd2b0a414e2370a218dbb510bc7fba437c41e4c2fb`  
		Last Modified: Sat, 08 Dec 2018 15:14:13 GMT  
		Size: 2.2 KB (2250 bytes)  
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
$ docker pull plone@sha256:fe562ad944c29a2511e8253a0faccb5dd8bd8ac3213b4f3fa6d23b0219718e0b
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
$ docker pull plone@sha256:024e085d509f39fcdc1ca2115ccbe05d133f1340039fd6f0f6eacb099f2c5c08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (122975212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7a97e2f8eae09ea4de85fabc46264bcefa47479a1ada39b35090cee92ad4c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:44 GMT
ADD file:93897520864ded37d275998a619998bf26766ad41a3f5a9a379830983cd4a34a in / 
# Wed, 12 Sep 2018 10:38:44 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:44 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 16:23:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 16:23:30 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 16:46:20 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 16:46:21 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 16:46:21 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 16:46:21 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 08 Dec 2018 13:32:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 08 Dec 2018 13:32:23 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 08 Dec 2018 13:32:28 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 08 Dec 2018 13:32:29 GMT
CMD ["python2"]
# Sat, 08 Dec 2018 14:54:29 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 08 Dec 2018 14:54:29 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 08 Dec 2018 14:54:30 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Sat, 08 Dec 2018 14:54:30 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 08 Dec 2018 15:03:13 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Sat, 08 Dec 2018 15:03:14 GMT
VOLUME [/data]
# Sat, 08 Dec 2018 15:03:15 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Sat, 08 Dec 2018 15:03:15 GMT
EXPOSE 8080/tcp
# Sat, 08 Dec 2018 15:03:15 GMT
WORKDIR /plone/instance
# Sat, 08 Dec 2018 15:03:15 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 08 Dec 2018 15:03:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 15:03:16 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddaaefef8d71bb2c30e7997b9ecdc5c2ae2fe5d5cc08ab092f712854b3bce9`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012b9f1f986358a67376642cf4a2a28e3a918cfb52b746474347e852f3887882`  
		Last Modified: Wed, 12 Sep 2018 16:55:48 GMT  
		Size: 309.0 KB (309048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30811ac703b22cc664ff79ceee1fefe6479901c72f9ec6e067951a9f33aae3b3`  
		Last Modified: Sat, 08 Dec 2018 13:37:26 GMT  
		Size: 17.0 MB (16984303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab9242588fd72d2c9fa6f883a77ee188a51dfa69fc5b1ca4b2744e323eec9cb`  
		Last Modified: Sat, 08 Dec 2018 13:37:22 GMT  
		Size: 1.8 MB (1779986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3a27e236b22f4ee9422b19d8666761668ea33412509079b9f09e31b8b291ab`  
		Last Modified: Sat, 08 Dec 2018 15:14:13 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900ef07caf035bd96eebe5f7da5b7e60368e613d08ad07f1605ed9edba6f7aea`  
		Last Modified: Sat, 08 Dec 2018 15:14:13 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51d7e0459815648c641a088f2cb093beb5c41e39b667e80d181c3f144f50628`  
		Last Modified: Sat, 08 Dec 2018 15:14:44 GMT  
		Size: 101.7 MB (101728433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5486e3f65028d4314d97bd2b0a414e2370a218dbb510bc7fba437c41e4c2fb`  
		Last Modified: Sat, 08 Dec 2018 15:14:13 GMT  
		Size: 2.2 KB (2250 bytes)  
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
$ docker pull plone@sha256:fe562ad944c29a2511e8253a0faccb5dd8bd8ac3213b4f3fa6d23b0219718e0b
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
$ docker pull plone@sha256:024e085d509f39fcdc1ca2115ccbe05d133f1340039fd6f0f6eacb099f2c5c08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (122975212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e7a97e2f8eae09ea4de85fabc46264bcefa47479a1ada39b35090cee92ad4c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:44 GMT
ADD file:93897520864ded37d275998a619998bf26766ad41a3f5a9a379830983cd4a34a in / 
# Wed, 12 Sep 2018 10:38:44 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:44 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 16:23:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 16:23:30 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 16:46:20 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 16:46:21 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 16:46:21 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 16:46:21 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 08 Dec 2018 13:32:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 08 Dec 2018 13:32:23 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 08 Dec 2018 13:32:28 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 08 Dec 2018 13:32:29 GMT
CMD ["python2"]
# Sat, 08 Dec 2018 14:54:29 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Sat, 08 Dec 2018 14:54:29 GMT
LABEL plone=5.1.4 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 08 Dec 2018 14:54:30 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Sat, 08 Dec 2018 14:54:30 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Sat, 08 Dec 2018 15:03:13 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL && cd /plone/instance && buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Sat, 08 Dec 2018 15:03:14 GMT
VOLUME [/data]
# Sat, 08 Dec 2018 15:03:15 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Sat, 08 Dec 2018 15:03:15 GMT
EXPOSE 8080/tcp
# Sat, 08 Dec 2018 15:03:15 GMT
WORKDIR /plone/instance
# Sat, 08 Dec 2018 15:03:15 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 08 Dec 2018 15:03:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 15:03:16 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddaaefef8d71bb2c30e7997b9ecdc5c2ae2fe5d5cc08ab092f712854b3bce9`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012b9f1f986358a67376642cf4a2a28e3a918cfb52b746474347e852f3887882`  
		Last Modified: Wed, 12 Sep 2018 16:55:48 GMT  
		Size: 309.0 KB (309048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30811ac703b22cc664ff79ceee1fefe6479901c72f9ec6e067951a9f33aae3b3`  
		Last Modified: Sat, 08 Dec 2018 13:37:26 GMT  
		Size: 17.0 MB (16984303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab9242588fd72d2c9fa6f883a77ee188a51dfa69fc5b1ca4b2744e323eec9cb`  
		Last Modified: Sat, 08 Dec 2018 13:37:22 GMT  
		Size: 1.8 MB (1779986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3a27e236b22f4ee9422b19d8666761668ea33412509079b9f09e31b8b291ab`  
		Last Modified: Sat, 08 Dec 2018 15:14:13 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900ef07caf035bd96eebe5f7da5b7e60368e613d08ad07f1605ed9edba6f7aea`  
		Last Modified: Sat, 08 Dec 2018 15:14:13 GMT  
		Size: 668.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51d7e0459815648c641a088f2cb093beb5c41e39b667e80d181c3f144f50628`  
		Last Modified: Sat, 08 Dec 2018 15:14:44 GMT  
		Size: 101.7 MB (101728433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5486e3f65028d4314d97bd2b0a414e2370a218dbb510bc7fba437c41e4c2fb`  
		Last Modified: Sat, 08 Dec 2018 15:14:13 GMT  
		Size: 2.2 KB (2250 bytes)  
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
$ docker pull plone@sha256:0f5db19f4095ce6d8bc0d16296a6381f91e55d79f0e678a855c7b80b9175aa30
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
$ docker pull plone@sha256:3156c2ac2aa65cfb01f072cf1d05f7e1bae623a1749dd83afaec7612e50f9fd6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174167518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f9a62b044ce9fa86b1c2aae94de071c796801bafc09afe7292f60de26c58842`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 06:22:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 06:22:53 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 07:51:02 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 07:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 07:51:11 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 07:51:11 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 07:53:45 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 07:53:45 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 07:54:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 07:54:06 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 23:43:01 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 16 Nov 2018 23:43:02 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 23:43:03 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 16 Nov 2018 23:43:04 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 23:53:04 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 23:53:06 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 23:53:07 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 23:53:07 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 23:53:08 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 23:53:08 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 23:53:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 23:53:09 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da2a74f37b12f23ad9c71d2b76004b49dd667d0c638501b50ef88ef447b344a`  
		Last Modified: Fri, 16 Nov 2018 08:50:29 GMT  
		Size: 2.5 MB (2516789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b6f498cfd015affa9cb592c9a64510d54177608e906a0337b8364b4f926103`  
		Last Modified: Fri, 16 Nov 2018 08:50:33 GMT  
		Size: 17.1 MB (17100700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afb4f0a079ce2f5e63275d10c31a9cceb3820b4c60bc00141f5d85d876095f`  
		Last Modified: Fri, 16 Nov 2018 08:50:30 GMT  
		Size: 2.1 MB (2063150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccab63db2f3a4c4cedba09ff706ab597cfc618976d777c55d6933b97d5de630b`  
		Last Modified: Sat, 17 Nov 2018 00:40:43 GMT  
		Size: 3.9 KB (3886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef7a11eddf064838dbbea64ef663a130257be14a2f4d6df51e859faacd012c5`  
		Last Modified: Sat, 17 Nov 2018 00:40:43 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297b5705b1e2c22de257dbbe8114620fe4f05ad0b7c9c602aae2b6964380b1e4`  
		Last Modified: Sat, 17 Nov 2018 00:41:55 GMT  
		Size: 130.0 MB (129993791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631f25ecc9107a09f07d6325c8b34b79be171001a99ca197c0fc9bdf188399f`  
		Last Modified: Sat, 17 Nov 2018 00:40:43 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; arm variant v5

```console
$ docker pull plone@sha256:a6600e609912fcf257a5da832796bcc72773f84bcd1a95489a4af3e79ebd208e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168891270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f19862ae50d783121dfd5238ccad8182b8b780aec3da7b3eb287d7a0623ac88`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:43:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 14:43:59 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:49:08 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 15:49:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:49:26 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 15:49:26 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 15:53:39 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 15:53:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 15:54:12 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 15:54:13 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 21:57:14 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 16 Nov 2018 21:57:14 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 21:57:15 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 16 Nov 2018 21:57:16 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 22:13:29 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 22:13:35 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 22:13:36 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 22:13:37 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 22:13:38 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 22:13:39 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 22:13:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 22:13:40 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6711710d7ae7a66b21454f1ac541ff82a90a356e556ae99131b966a974eeb3`  
		Last Modified: Fri, 16 Nov 2018 16:18:56 GMT  
		Size: 2.2 MB (2248386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce50903fa945a59d61766d42676d9a6a2d777ad606c88998251b62ce04716f7`  
		Last Modified: Fri, 16 Nov 2018 16:19:01 GMT  
		Size: 16.6 MB (16551425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21543ec618c4b85c2bceaf74d9988a4588cec547f009bdb7aa1e25808d54b994`  
		Last Modified: Fri, 16 Nov 2018 16:18:56 GMT  
		Size: 2.1 MB (2062942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af777f725d0f198ba7084acca38588fa21e9d8df5bd5112a5bd3062c7e8cf548`  
		Last Modified: Fri, 16 Nov 2018 22:32:31 GMT  
		Size: 3.9 KB (3928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12acad2ea2da3ee2fcd589509d24e4c7ce9a9409ec9780c9f43d3cfa86443cc`  
		Last Modified: Fri, 16 Nov 2018 22:32:31 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546a0cf468f74bcf26b36003a90f4357af5adcca64347264a7e5144bc325b60f`  
		Last Modified: Fri, 16 Nov 2018 22:33:24 GMT  
		Size: 126.9 MB (126858656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107a9d3e616058af3b19e0650ff811c7711cf5171b98d113dee8b305d6be0e2e`  
		Last Modified: Fri, 16 Nov 2018 22:32:31 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; arm variant v7

```console
$ docker pull plone@sha256:2e8bb93ca97e60522dc1168ff21e7fe5e6d6150eca93675a6449238f3ef678c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165184720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1c16603cf5dea6119e185f9cd44e0171588bdb6d59d0a3e657f512687761aa7`
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
# Fri, 16 Nov 2018 22:02:03 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 22:17:00 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 22:17:05 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 22:17:06 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 22:17:07 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 22:17:08 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 22:17:09 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 22:17:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 22:17:10 GMT
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
	-	`sha256:fa29a2189be31dd9b891e3bf897fc9107e65dcba8a76ad9bf18ab4ab8eccc726`  
		Last Modified: Fri, 16 Nov 2018 22:34:25 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c163b72bca736e604c4306af26212f83e2cd12efd472dcb7cb4c11807d3d88b5`  
		Last Modified: Fri, 16 Nov 2018 22:35:13 GMT  
		Size: 125.5 MB (125540566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9e743208c21bb52475550d3d1cd1533bab5bf4f91401d798b8a4a1e8839ef2`  
		Last Modified: Fri, 16 Nov 2018 22:34:25 GMT  
		Size: 2.2 KB (2248 bytes)  
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
$ docker pull plone@sha256:76d75ad0eb0a312a3935797f924a2b237dc24faabb3c1c61b65a2aa0f5621072
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172033141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7e06a8681a7ac5ba2344a5f57721158f6a53adeae6ffad28f8aca24aa3bd58b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:39:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 14:40:02 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:03:52 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 16:04:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:04:27 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 16:04:28 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 16:12:27 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 16:12:28 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 16:13:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 16:13:26 GMT
CMD ["python2"]
# Fri, 16 Nov 2018 23:20:57 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.4 PLONE_MD5=ce3b87b1cb8ee30e577ae347d9bdd647
# Fri, 16 Nov 2018 23:20:57 GMT
LABEL plone=5.1.4 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 16 Nov 2018 23:21:04 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 16 Nov 2018 23:21:04 GMT
COPY file:941f3698549712ff2843305a22ae0d28616618df1d65cad9d56ab26bb48b9a99 in /plone/instance/ 
# Fri, 16 Nov 2018 23:38:19 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 16 Nov 2018 23:38:33 GMT
VOLUME [/data]
# Fri, 16 Nov 2018 23:38:46 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 16 Nov 2018 23:38:48 GMT
EXPOSE 8080/tcp
# Fri, 16 Nov 2018 23:38:59 GMT
WORKDIR /plone/instance
# Fri, 16 Nov 2018 23:39:01 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 16 Nov 2018 23:39:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Nov 2018 23:39:02 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5607372b9874f6141ce5e4fb772e1d3ffb82343048516cbfce667d7e32bc21e0`  
		Last Modified: Fri, 16 Nov 2018 16:44:44 GMT  
		Size: 2.2 MB (2181805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fade17287b5ff67975110c89144c997159353852d651e15059549915ef53f392`  
		Last Modified: Fri, 16 Nov 2018 16:44:54 GMT  
		Size: 17.3 MB (17281247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338daeffb33dcc05b6fc252d5705a4e6a3279cc0dcef2ee32b407c863bbf111e`  
		Last Modified: Fri, 16 Nov 2018 16:44:46 GMT  
		Size: 2.1 MB (2064336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1dbbc95a4880dd18f8179da59a7d980a55070343b78334ecc9930f4a3faaf95`  
		Last Modified: Sat, 17 Nov 2018 00:38:09 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d35b5fe6a22dcf2f3f9f4e5c29f07c720cc616330340f5fd846a7a267a50ed`  
		Last Modified: Sat, 17 Nov 2018 00:38:09 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a195f557ff20748055730639bedb8451dbc3c9d63e289c5ae59e2ca9f863b81`  
		Last Modified: Sat, 17 Nov 2018 00:39:34 GMT  
		Size: 127.8 MB (127758171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7e36339bcf55afe28dbd95917e991f906deac227e319e31326583a43cf5a30`  
		Last Modified: Sat, 17 Nov 2018 00:38:09 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
