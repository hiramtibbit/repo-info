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
$ docker pull plone@sha256:d4cdeef60aa450fac4531e703126f496dc52018fd4047a1230fcb8fa2e4dbb52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:4` - linux; amd64

```console
$ docker pull plone@sha256:bc62081f18da2b74d6c29ffdc01c731349b2866249efe5aed3435feb2a5eb58a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135158959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1591cf6ff5d2ce3220060035fc19c015a3dfdbc0bf7e938ae0200e5118f873`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 02:40:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:40:32 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:32:23 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:32:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 03:32:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:32:38 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 03:35:59 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 03:35:59 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 03:36:13 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 03:36:13 GMT
CMD ["python2"]
# Thu, 07 Jun 2018 00:14:12 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 07 Jun 2018 00:14:12 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 07 Jun 2018 00:14:13 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 07 Jun 2018 00:14:13 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 07 Jun 2018 00:30:39 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 07 Jun 2018 00:30:41 GMT
VOLUME [/data]
# Thu, 07 Jun 2018 00:30:42 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Thu, 07 Jun 2018 00:30:42 GMT
EXPOSE 8080/tcp
# Thu, 07 Jun 2018 00:30:42 GMT
WORKDIR /plone/instance
# Thu, 07 Jun 2018 00:30:43 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 07 Jun 2018 00:30:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Jun 2018 00:30:43 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2199a29f3047ff634d11deb4d8b6b9998cdf03d82d6d6259bd6e6febc9d2817`  
		Last Modified: Wed, 06 Jun 2018 04:06:00 GMT  
		Size: 3.3 MB (3314898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268f45f063bad479a861ee83d40faf63945aa0d2620e78bb01ee379f539c8ed4`  
		Last Modified: Wed, 06 Jun 2018 04:06:04 GMT  
		Size: 16.3 MB (16340352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349902594a9c15fb7aa6f6dccc727ea118602dade294b23ac861a14cad0bed86`  
		Last Modified: Wed, 06 Jun 2018 04:05:58 GMT  
		Size: 2.1 MB (2067426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315d23c6ca4080693e3fe070cb23a36cb84de079f29badd28eedf07fac4d90fe`  
		Last Modified: Thu, 07 Jun 2018 00:51:43 GMT  
		Size: 3.9 KB (3889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b448bd7fb69e98a26aae62d2a5186118cedc51321ad9bb862a6f26b673a6716`  
		Last Modified: Thu, 07 Jun 2018 00:51:43 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a3779686fef4df2aee53d43ca2fe22e4973fd110576248c2ec8ec4287b6993`  
		Last Modified: Thu, 07 Jun 2018 00:52:23 GMT  
		Size: 90.9 MB (90933716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2974129e14ddfff9f80f8d10375679326d7e2cdc66984e3279868786f5a9db0`  
		Last Modified: Thu, 07 Jun 2018 00:51:43 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4` - linux; 386

```console
$ docker pull plone@sha256:5e8ccac1b47f46f6bdd70ba26556812247dc3da8368744cd52b5ebde68b07884
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135277442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf7af18817f8b4027c7fe4c1a4684d667a64f176f08afd25addc2ca1e80293ab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Fri, 01 Jun 2018 12:23:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 12:23:37 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 13:29:30 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 01 Jun 2018 13:29:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 13:29:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 01 Jun 2018 13:29:45 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 01 Jun 2018 13:33:31 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 01 Jun 2018 13:33:31 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Fri, 01 Jun 2018 13:33:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 01 Jun 2018 13:33:45 GMT
CMD ["python2"]
# Fri, 01 Jun 2018 18:11:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Fri, 01 Jun 2018 18:11:06 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 01 Jun 2018 18:11:07 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 01 Jun 2018 18:11:07 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Fri, 01 Jun 2018 18:26:49 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 01 Jun 2018 18:26:50 GMT
VOLUME [/data]
# Fri, 01 Jun 2018 18:26:51 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 01 Jun 2018 18:26:51 GMT
EXPOSE 8080/tcp
# Fri, 01 Jun 2018 18:26:51 GMT
WORKDIR /plone/instance
# Fri, 01 Jun 2018 18:26:51 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 01 Jun 2018 18:26:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Jun 2018 18:26:52 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fae4bc9945362a2475ea24285dbc18144dda259c472fe96ef19b1020999466c`  
		Last Modified: Fri, 01 Jun 2018 14:08:20 GMT  
		Size: 3.4 MB (3363883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7affa8268e88f5870eb4ccd23e5fd423319a7775e74fbb05c641aabe9c1a7213`  
		Last Modified: Fri, 01 Jun 2018 14:08:26 GMT  
		Size: 15.5 MB (15485289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813093d03e0989386fc8c592c1ed68d3c631c7110da49727c84b4c4af56ba73c`  
		Last Modified: Fri, 01 Jun 2018 14:08:21 GMT  
		Size: 2.1 MB (2067246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d285442294295c0ff449e19cfe1b556b73a7456f61da58b97759ca4377c5c51`  
		Last Modified: Fri, 01 Jun 2018 18:47:12 GMT  
		Size: 3.9 KB (3880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b2ecfb67c432b730a2caada9fec9b6e6f4cc50637e0f6e885a9ed8431aab1e`  
		Last Modified: Fri, 01 Jun 2018 18:47:13 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b88c5e4a3bffb2ab354754e7500601b48b8dbb0e842616736570f5dc6e5654`  
		Last Modified: Fri, 01 Jun 2018 18:48:15 GMT  
		Size: 91.2 MB (91215981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d3c8ff5f6787fbce13c70e8861c2f1ad04fad437f58ab84d3b0cecc4ceaa8`  
		Last Modified: Fri, 01 Jun 2018 18:47:13 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3`

```console
$ docker pull plone@sha256:d4cdeef60aa450fac4531e703126f496dc52018fd4047a1230fcb8fa2e4dbb52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:4.3` - linux; amd64

```console
$ docker pull plone@sha256:bc62081f18da2b74d6c29ffdc01c731349b2866249efe5aed3435feb2a5eb58a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135158959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1591cf6ff5d2ce3220060035fc19c015a3dfdbc0bf7e938ae0200e5118f873`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 02:40:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:40:32 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:32:23 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:32:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 03:32:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:32:38 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 03:35:59 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 03:35:59 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 03:36:13 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 03:36:13 GMT
CMD ["python2"]
# Thu, 07 Jun 2018 00:14:12 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 07 Jun 2018 00:14:12 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 07 Jun 2018 00:14:13 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 07 Jun 2018 00:14:13 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 07 Jun 2018 00:30:39 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 07 Jun 2018 00:30:41 GMT
VOLUME [/data]
# Thu, 07 Jun 2018 00:30:42 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Thu, 07 Jun 2018 00:30:42 GMT
EXPOSE 8080/tcp
# Thu, 07 Jun 2018 00:30:42 GMT
WORKDIR /plone/instance
# Thu, 07 Jun 2018 00:30:43 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 07 Jun 2018 00:30:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Jun 2018 00:30:43 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2199a29f3047ff634d11deb4d8b6b9998cdf03d82d6d6259bd6e6febc9d2817`  
		Last Modified: Wed, 06 Jun 2018 04:06:00 GMT  
		Size: 3.3 MB (3314898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268f45f063bad479a861ee83d40faf63945aa0d2620e78bb01ee379f539c8ed4`  
		Last Modified: Wed, 06 Jun 2018 04:06:04 GMT  
		Size: 16.3 MB (16340352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349902594a9c15fb7aa6f6dccc727ea118602dade294b23ac861a14cad0bed86`  
		Last Modified: Wed, 06 Jun 2018 04:05:58 GMT  
		Size: 2.1 MB (2067426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315d23c6ca4080693e3fe070cb23a36cb84de079f29badd28eedf07fac4d90fe`  
		Last Modified: Thu, 07 Jun 2018 00:51:43 GMT  
		Size: 3.9 KB (3889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b448bd7fb69e98a26aae62d2a5186118cedc51321ad9bb862a6f26b673a6716`  
		Last Modified: Thu, 07 Jun 2018 00:51:43 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a3779686fef4df2aee53d43ca2fe22e4973fd110576248c2ec8ec4287b6993`  
		Last Modified: Thu, 07 Jun 2018 00:52:23 GMT  
		Size: 90.9 MB (90933716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2974129e14ddfff9f80f8d10375679326d7e2cdc66984e3279868786f5a9db0`  
		Last Modified: Thu, 07 Jun 2018 00:51:43 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3` - linux; 386

```console
$ docker pull plone@sha256:5e8ccac1b47f46f6bdd70ba26556812247dc3da8368744cd52b5ebde68b07884
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135277442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf7af18817f8b4027c7fe4c1a4684d667a64f176f08afd25addc2ca1e80293ab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Fri, 01 Jun 2018 12:23:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 12:23:37 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 13:29:30 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 01 Jun 2018 13:29:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 13:29:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 01 Jun 2018 13:29:45 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 01 Jun 2018 13:33:31 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 01 Jun 2018 13:33:31 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Fri, 01 Jun 2018 13:33:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 01 Jun 2018 13:33:45 GMT
CMD ["python2"]
# Fri, 01 Jun 2018 18:11:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Fri, 01 Jun 2018 18:11:06 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 01 Jun 2018 18:11:07 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 01 Jun 2018 18:11:07 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Fri, 01 Jun 2018 18:26:49 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 01 Jun 2018 18:26:50 GMT
VOLUME [/data]
# Fri, 01 Jun 2018 18:26:51 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 01 Jun 2018 18:26:51 GMT
EXPOSE 8080/tcp
# Fri, 01 Jun 2018 18:26:51 GMT
WORKDIR /plone/instance
# Fri, 01 Jun 2018 18:26:51 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 01 Jun 2018 18:26:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Jun 2018 18:26:52 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fae4bc9945362a2475ea24285dbc18144dda259c472fe96ef19b1020999466c`  
		Last Modified: Fri, 01 Jun 2018 14:08:20 GMT  
		Size: 3.4 MB (3363883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7affa8268e88f5870eb4ccd23e5fd423319a7775e74fbb05c641aabe9c1a7213`  
		Last Modified: Fri, 01 Jun 2018 14:08:26 GMT  
		Size: 15.5 MB (15485289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813093d03e0989386fc8c592c1ed68d3c631c7110da49727c84b4c4af56ba73c`  
		Last Modified: Fri, 01 Jun 2018 14:08:21 GMT  
		Size: 2.1 MB (2067246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d285442294295c0ff449e19cfe1b556b73a7456f61da58b97759ca4377c5c51`  
		Last Modified: Fri, 01 Jun 2018 18:47:12 GMT  
		Size: 3.9 KB (3880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b2ecfb67c432b730a2caada9fec9b6e6f4cc50637e0f6e885a9ed8431aab1e`  
		Last Modified: Fri, 01 Jun 2018 18:47:13 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b88c5e4a3bffb2ab354754e7500601b48b8dbb0e842616736570f5dc6e5654`  
		Last Modified: Fri, 01 Jun 2018 18:48:15 GMT  
		Size: 91.2 MB (91215981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d3c8ff5f6787fbce13c70e8861c2f1ad04fad437f58ab84d3b0cecc4ceaa8`  
		Last Modified: Fri, 01 Jun 2018 18:47:13 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.17`

```console
$ docker pull plone@sha256:d4cdeef60aa450fac4531e703126f496dc52018fd4047a1230fcb8fa2e4dbb52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:4.3.17` - linux; amd64

```console
$ docker pull plone@sha256:bc62081f18da2b74d6c29ffdc01c731349b2866249efe5aed3435feb2a5eb58a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135158959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1591cf6ff5d2ce3220060035fc19c015a3dfdbc0bf7e938ae0200e5118f873`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 02:40:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:40:32 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:32:23 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:32:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 03:32:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:32:38 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 03:35:59 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 03:35:59 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 03:36:13 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 03:36:13 GMT
CMD ["python2"]
# Thu, 07 Jun 2018 00:14:12 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 07 Jun 2018 00:14:12 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 07 Jun 2018 00:14:13 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 07 Jun 2018 00:14:13 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 07 Jun 2018 00:30:39 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 07 Jun 2018 00:30:41 GMT
VOLUME [/data]
# Thu, 07 Jun 2018 00:30:42 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Thu, 07 Jun 2018 00:30:42 GMT
EXPOSE 8080/tcp
# Thu, 07 Jun 2018 00:30:42 GMT
WORKDIR /plone/instance
# Thu, 07 Jun 2018 00:30:43 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 07 Jun 2018 00:30:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Jun 2018 00:30:43 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2199a29f3047ff634d11deb4d8b6b9998cdf03d82d6d6259bd6e6febc9d2817`  
		Last Modified: Wed, 06 Jun 2018 04:06:00 GMT  
		Size: 3.3 MB (3314898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268f45f063bad479a861ee83d40faf63945aa0d2620e78bb01ee379f539c8ed4`  
		Last Modified: Wed, 06 Jun 2018 04:06:04 GMT  
		Size: 16.3 MB (16340352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349902594a9c15fb7aa6f6dccc727ea118602dade294b23ac861a14cad0bed86`  
		Last Modified: Wed, 06 Jun 2018 04:05:58 GMT  
		Size: 2.1 MB (2067426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315d23c6ca4080693e3fe070cb23a36cb84de079f29badd28eedf07fac4d90fe`  
		Last Modified: Thu, 07 Jun 2018 00:51:43 GMT  
		Size: 3.9 KB (3889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b448bd7fb69e98a26aae62d2a5186118cedc51321ad9bb862a6f26b673a6716`  
		Last Modified: Thu, 07 Jun 2018 00:51:43 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a3779686fef4df2aee53d43ca2fe22e4973fd110576248c2ec8ec4287b6993`  
		Last Modified: Thu, 07 Jun 2018 00:52:23 GMT  
		Size: 90.9 MB (90933716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2974129e14ddfff9f80f8d10375679326d7e2cdc66984e3279868786f5a9db0`  
		Last Modified: Thu, 07 Jun 2018 00:51:43 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.17` - linux; 386

```console
$ docker pull plone@sha256:5e8ccac1b47f46f6bdd70ba26556812247dc3da8368744cd52b5ebde68b07884
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135277442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf7af18817f8b4027c7fe4c1a4684d667a64f176f08afd25addc2ca1e80293ab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Fri, 01 Jun 2018 12:23:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 12:23:37 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 13:29:30 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 01 Jun 2018 13:29:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 13:29:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 01 Jun 2018 13:29:45 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 01 Jun 2018 13:33:31 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 01 Jun 2018 13:33:31 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Fri, 01 Jun 2018 13:33:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 01 Jun 2018 13:33:45 GMT
CMD ["python2"]
# Fri, 01 Jun 2018 18:11:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Fri, 01 Jun 2018 18:11:06 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 01 Jun 2018 18:11:07 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 01 Jun 2018 18:11:07 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Fri, 01 Jun 2018 18:26:49 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 01 Jun 2018 18:26:50 GMT
VOLUME [/data]
# Fri, 01 Jun 2018 18:26:51 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 01 Jun 2018 18:26:51 GMT
EXPOSE 8080/tcp
# Fri, 01 Jun 2018 18:26:51 GMT
WORKDIR /plone/instance
# Fri, 01 Jun 2018 18:26:51 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 01 Jun 2018 18:26:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Jun 2018 18:26:52 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fae4bc9945362a2475ea24285dbc18144dda259c472fe96ef19b1020999466c`  
		Last Modified: Fri, 01 Jun 2018 14:08:20 GMT  
		Size: 3.4 MB (3363883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7affa8268e88f5870eb4ccd23e5fd423319a7775e74fbb05c641aabe9c1a7213`  
		Last Modified: Fri, 01 Jun 2018 14:08:26 GMT  
		Size: 15.5 MB (15485289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813093d03e0989386fc8c592c1ed68d3c631c7110da49727c84b4c4af56ba73c`  
		Last Modified: Fri, 01 Jun 2018 14:08:21 GMT  
		Size: 2.1 MB (2067246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d285442294295c0ff449e19cfe1b556b73a7456f61da58b97759ca4377c5c51`  
		Last Modified: Fri, 01 Jun 2018 18:47:12 GMT  
		Size: 3.9 KB (3880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b2ecfb67c432b730a2caada9fec9b6e6f4cc50637e0f6e885a9ed8431aab1e`  
		Last Modified: Fri, 01 Jun 2018 18:47:13 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b88c5e4a3bffb2ab354754e7500601b48b8dbb0e842616736570f5dc6e5654`  
		Last Modified: Fri, 01 Jun 2018 18:48:15 GMT  
		Size: 91.2 MB (91215981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d3c8ff5f6787fbce13c70e8861c2f1ad04fad437f58ab84d3b0cecc4ceaa8`  
		Last Modified: Fri, 01 Jun 2018 18:47:13 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.17-alpine`

```console
$ docker pull plone@sha256:f5ff6d38fce3b6b17a446a18c5faad4041ef0319b98c627243022f7a43842ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:4.3.17-alpine` - linux; amd64

```console
$ docker pull plone@sha256:27152241a85dea75e1c083b257ce91587bfa37c95980f2d0ffade55ddd0635db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87941039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559c79a713da095adb3f4e27b884e80905aeb95aac41854722f57812d676bd88`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 00:57:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:44:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:50:17 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:50:18 GMT
RUN apk add --no-cache ca-certificates
# Wed, 06 Jun 2018 03:50:18 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:50:18 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 23:20:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 23:20:08 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 23:20:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 23:20:15 GMT
CMD ["python2"]
# Thu, 07 Jun 2018 00:30:54 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 07 Jun 2018 00:30:54 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 07 Jun 2018 00:30:55 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 07 Jun 2018 00:30:55 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 07 Jun 2018 00:47:01 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 07 Jun 2018 00:47:03 GMT
VOLUME [/data]
# Thu, 07 Jun 2018 00:47:03 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Thu, 07 Jun 2018 00:47:03 GMT
EXPOSE 8080/tcp
# Thu, 07 Jun 2018 00:47:04 GMT
WORKDIR /plone/instance
# Thu, 07 Jun 2018 00:47:04 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 07 Jun 2018 00:47:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Jun 2018 00:47:04 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5556c6f99b85c0df8edb29c5e669b77642d250a5a1afcf68b586ea7df18baf8b`  
		Last Modified: Wed, 06 Jun 2018 04:08:14 GMT  
		Size: 308.0 KB (308023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fbc81365bc00f9eb3e0415c20c7868545dd44b7e4085d603ba0813d3eee8c8`  
		Last Modified: Wed, 06 Jun 2018 23:38:40 GMT  
		Size: 23.4 MB (23425471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8780cd8970327cf04c1e4272a6170384475b16b1ae0fe271487792b304a7c2fa`  
		Last Modified: Wed, 06 Jun 2018 23:38:01 GMT  
		Size: 1.9 MB (1892273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ada0ac2383a9ccdc0fca46c730e0d2017fb6d8a3b33df8ecae77dcd77f0eb0`  
		Last Modified: Thu, 07 Jun 2018 00:52:44 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d737f332cda5b4a37a6de4d29fc44d10c8b3cf79d7b512b1604ff3f4382f4fa`  
		Last Modified: Thu, 07 Jun 2018 00:52:44 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfac04455ed6feaf081356c69c590f5017a0326541f70de8910451558b0e5f14`  
		Last Modified: Thu, 07 Jun 2018 00:53:14 GMT  
		Size: 60.2 MB (60245761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19360309ff33b5f35660c2fb66006faa5c1aebcb7e9b9dc34b6db00bc5f26aa`  
		Last Modified: Thu, 07 Jun 2018 00:52:44 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.17-alpine` - linux; 386

```console
$ docker pull plone@sha256:405aa2a0bcd6abbf67ad046851b8c2c602b968f7ec503fa47ba2f0be36ac830d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87468904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23734a96827d840e951ebdd1b20fda7fa0bdf482ba6ca79a09bd942b49d54138`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 12:28:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 12:28:33 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 13:49:21 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 01 Jun 2018 13:49:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 01 Jun 2018 13:49:22 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 01 Jun 2018 13:49:23 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 07 Jun 2018 11:45:39 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 07 Jun 2018 11:45:40 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Thu, 07 Jun 2018 11:45:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 07 Jun 2018 11:45:46 GMT
CMD ["python2"]
# Thu, 07 Jun 2018 13:04:17 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 07 Jun 2018 13:04:17 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 07 Jun 2018 13:04:18 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 07 Jun 2018 13:04:18 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 07 Jun 2018 13:20:00 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 07 Jun 2018 13:20:01 GMT
VOLUME [/data]
# Thu, 07 Jun 2018 13:20:02 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Thu, 07 Jun 2018 13:20:02 GMT
EXPOSE 8080/tcp
# Thu, 07 Jun 2018 13:20:02 GMT
WORKDIR /plone/instance
# Thu, 07 Jun 2018 13:20:03 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 07 Jun 2018 13:20:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Jun 2018 13:20:03 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f02fed3e613737d2a1b63bef7eb645a19ea780cbe1c5f59948c28309ebd53f`  
		Last Modified: Fri, 01 Jun 2018 14:10:54 GMT  
		Size: 308.8 KB (308755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56c8a6a4c9bdbf739cf1c2d6e4bf81172878a35cda6a130c8d0cebe99141d18`  
		Last Modified: Thu, 07 Jun 2018 11:55:38 GMT  
		Size: 23.2 MB (23177530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae31ed4fd77cb7f7a2727b0fd2be27ad51ca0380ccfbdbd4c8747cb96f7df9bb`  
		Last Modified: Thu, 07 Jun 2018 11:55:29 GMT  
		Size: 1.9 MB (1891183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c4c36943392b5732c2ff25ab3b01fc064d3681632a18acf9d749ad40e8def8`  
		Last Modified: Thu, 07 Jun 2018 13:22:50 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9397d7560d615a44342976943f9c008292bfbe4019987f15114699c31faa8052`  
		Last Modified: Thu, 07 Jun 2018 13:22:50 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee03f6bb41b3d9cc2617bd3950509311bffa5bae79cdb2591d6da243f5b006c`  
		Last Modified: Thu, 07 Jun 2018 13:23:28 GMT  
		Size: 60.0 MB (59961069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb83fc68e81e072872da4398f2f8533913dbe708ca01bb44bb65cfaca680c95`  
		Last Modified: Thu, 07 Jun 2018 13:22:49 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.17-alpine` - linux; s390x

```console
$ docker pull plone@sha256:5434d172df124b50728b04aa1358d4763bf76f96f9a0a6bb3045c94645a82fb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87333899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8f63397253a8a2e36e8501d228afb6708f80da7ccfca833f64425733707f11`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 09:52:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 09:52:30 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 12:20:48 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 27 Apr 2018 12:20:49 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Apr 2018 12:20:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 15:21:24 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 15:23:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 15:23:42 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 15:23:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 15:23:47 GMT
CMD ["python2"]
# Mon, 07 May 2018 21:30:48 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Mon, 07 May 2018 21:30:48 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Mon, 07 May 2018 21:30:48 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 08 May 2018 17:57:31 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 08 May 2018 18:04:30 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 08 May 2018 18:04:31 GMT
VOLUME [/data]
# Tue, 08 May 2018 18:04:32 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Tue, 08 May 2018 18:04:32 GMT
EXPOSE 8080/tcp
# Tue, 08 May 2018 18:04:32 GMT
WORKDIR /plone/instance
# Tue, 08 May 2018 18:04:32 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 08 May 2018 18:04:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 May 2018 18:04:33 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a388b39083aa4dad60cf5c218b95e3b6540985214f7237af35a65d1bbc77445`  
		Last Modified: Fri, 27 Apr 2018 12:30:13 GMT  
		Size: 309.1 KB (309147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4dcf90b0d347b067cafbe2943010739e37bf6808356f69deb3dc78a601e0fa`  
		Last Modified: Sat, 05 May 2018 15:37:31 GMT  
		Size: 22.6 MB (22595608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4a7e614e9fc6d247851f0235e4f272e4ab8c5e629603e3cb7e7e1c31c7e10f`  
		Last Modified: Sat, 05 May 2018 15:37:26 GMT  
		Size: 1.9 MB (1888922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1729c95afbb36eb469e548f998c13953bb65e651f30cc5b788ebbe892b60f2e`  
		Last Modified: Fri, 11 May 2018 12:27:17 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe5e9ba7bf4b31ae8960d8e405bc54f474d50e5c10def946ce81155b7da239f`  
		Last Modified: Fri, 11 May 2018 12:27:18 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d9d28bb39f66c2240386b0580cb89c2b44739fddfb9630d67215fbbb362f9a`  
		Last Modified: Fri, 11 May 2018 12:27:34 GMT  
		Size: 60.4 MB (60350840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adc23b9db64ab1dbf45ce14a31e9051db2f1b9a09b6917857e95df518c32d04`  
		Last Modified: Fri, 11 May 2018 12:27:17 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3-alpine`

```console
$ docker pull plone@sha256:f5ff6d38fce3b6b17a446a18c5faad4041ef0319b98c627243022f7a43842ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:4.3-alpine` - linux; amd64

```console
$ docker pull plone@sha256:27152241a85dea75e1c083b257ce91587bfa37c95980f2d0ffade55ddd0635db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87941039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559c79a713da095adb3f4e27b884e80905aeb95aac41854722f57812d676bd88`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 00:57:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:44:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:50:17 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:50:18 GMT
RUN apk add --no-cache ca-certificates
# Wed, 06 Jun 2018 03:50:18 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:50:18 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 23:20:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 23:20:08 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 23:20:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 23:20:15 GMT
CMD ["python2"]
# Thu, 07 Jun 2018 00:30:54 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 07 Jun 2018 00:30:54 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 07 Jun 2018 00:30:55 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 07 Jun 2018 00:30:55 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 07 Jun 2018 00:47:01 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 07 Jun 2018 00:47:03 GMT
VOLUME [/data]
# Thu, 07 Jun 2018 00:47:03 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Thu, 07 Jun 2018 00:47:03 GMT
EXPOSE 8080/tcp
# Thu, 07 Jun 2018 00:47:04 GMT
WORKDIR /plone/instance
# Thu, 07 Jun 2018 00:47:04 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 07 Jun 2018 00:47:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Jun 2018 00:47:04 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5556c6f99b85c0df8edb29c5e669b77642d250a5a1afcf68b586ea7df18baf8b`  
		Last Modified: Wed, 06 Jun 2018 04:08:14 GMT  
		Size: 308.0 KB (308023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fbc81365bc00f9eb3e0415c20c7868545dd44b7e4085d603ba0813d3eee8c8`  
		Last Modified: Wed, 06 Jun 2018 23:38:40 GMT  
		Size: 23.4 MB (23425471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8780cd8970327cf04c1e4272a6170384475b16b1ae0fe271487792b304a7c2fa`  
		Last Modified: Wed, 06 Jun 2018 23:38:01 GMT  
		Size: 1.9 MB (1892273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ada0ac2383a9ccdc0fca46c730e0d2017fb6d8a3b33df8ecae77dcd77f0eb0`  
		Last Modified: Thu, 07 Jun 2018 00:52:44 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d737f332cda5b4a37a6de4d29fc44d10c8b3cf79d7b512b1604ff3f4382f4fa`  
		Last Modified: Thu, 07 Jun 2018 00:52:44 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfac04455ed6feaf081356c69c590f5017a0326541f70de8910451558b0e5f14`  
		Last Modified: Thu, 07 Jun 2018 00:53:14 GMT  
		Size: 60.2 MB (60245761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19360309ff33b5f35660c2fb66006faa5c1aebcb7e9b9dc34b6db00bc5f26aa`  
		Last Modified: Thu, 07 Jun 2018 00:52:44 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3-alpine` - linux; 386

```console
$ docker pull plone@sha256:405aa2a0bcd6abbf67ad046851b8c2c602b968f7ec503fa47ba2f0be36ac830d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87468904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23734a96827d840e951ebdd1b20fda7fa0bdf482ba6ca79a09bd942b49d54138`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 12:28:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 12:28:33 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 13:49:21 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 01 Jun 2018 13:49:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 01 Jun 2018 13:49:22 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 01 Jun 2018 13:49:23 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 07 Jun 2018 11:45:39 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 07 Jun 2018 11:45:40 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Thu, 07 Jun 2018 11:45:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 07 Jun 2018 11:45:46 GMT
CMD ["python2"]
# Thu, 07 Jun 2018 13:04:17 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 07 Jun 2018 13:04:17 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 07 Jun 2018 13:04:18 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 07 Jun 2018 13:04:18 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 07 Jun 2018 13:20:00 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 07 Jun 2018 13:20:01 GMT
VOLUME [/data]
# Thu, 07 Jun 2018 13:20:02 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Thu, 07 Jun 2018 13:20:02 GMT
EXPOSE 8080/tcp
# Thu, 07 Jun 2018 13:20:02 GMT
WORKDIR /plone/instance
# Thu, 07 Jun 2018 13:20:03 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 07 Jun 2018 13:20:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Jun 2018 13:20:03 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f02fed3e613737d2a1b63bef7eb645a19ea780cbe1c5f59948c28309ebd53f`  
		Last Modified: Fri, 01 Jun 2018 14:10:54 GMT  
		Size: 308.8 KB (308755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56c8a6a4c9bdbf739cf1c2d6e4bf81172878a35cda6a130c8d0cebe99141d18`  
		Last Modified: Thu, 07 Jun 2018 11:55:38 GMT  
		Size: 23.2 MB (23177530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae31ed4fd77cb7f7a2727b0fd2be27ad51ca0380ccfbdbd4c8747cb96f7df9bb`  
		Last Modified: Thu, 07 Jun 2018 11:55:29 GMT  
		Size: 1.9 MB (1891183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c4c36943392b5732c2ff25ab3b01fc064d3681632a18acf9d749ad40e8def8`  
		Last Modified: Thu, 07 Jun 2018 13:22:50 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9397d7560d615a44342976943f9c008292bfbe4019987f15114699c31faa8052`  
		Last Modified: Thu, 07 Jun 2018 13:22:50 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee03f6bb41b3d9cc2617bd3950509311bffa5bae79cdb2591d6da243f5b006c`  
		Last Modified: Thu, 07 Jun 2018 13:23:28 GMT  
		Size: 60.0 MB (59961069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb83fc68e81e072872da4398f2f8533913dbe708ca01bb44bb65cfaca680c95`  
		Last Modified: Thu, 07 Jun 2018 13:22:49 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3-alpine` - linux; s390x

```console
$ docker pull plone@sha256:5434d172df124b50728b04aa1358d4763bf76f96f9a0a6bb3045c94645a82fb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87333899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8f63397253a8a2e36e8501d228afb6708f80da7ccfca833f64425733707f11`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 09:52:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 09:52:30 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 12:20:48 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 27 Apr 2018 12:20:49 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Apr 2018 12:20:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 15:21:24 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 15:23:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 15:23:42 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 15:23:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 15:23:47 GMT
CMD ["python2"]
# Mon, 07 May 2018 21:30:48 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Mon, 07 May 2018 21:30:48 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Mon, 07 May 2018 21:30:48 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 08 May 2018 17:57:31 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 08 May 2018 18:04:30 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 08 May 2018 18:04:31 GMT
VOLUME [/data]
# Tue, 08 May 2018 18:04:32 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Tue, 08 May 2018 18:04:32 GMT
EXPOSE 8080/tcp
# Tue, 08 May 2018 18:04:32 GMT
WORKDIR /plone/instance
# Tue, 08 May 2018 18:04:32 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 08 May 2018 18:04:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 May 2018 18:04:33 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a388b39083aa4dad60cf5c218b95e3b6540985214f7237af35a65d1bbc77445`  
		Last Modified: Fri, 27 Apr 2018 12:30:13 GMT  
		Size: 309.1 KB (309147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4dcf90b0d347b067cafbe2943010739e37bf6808356f69deb3dc78a601e0fa`  
		Last Modified: Sat, 05 May 2018 15:37:31 GMT  
		Size: 22.6 MB (22595608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4a7e614e9fc6d247851f0235e4f272e4ab8c5e629603e3cb7e7e1c31c7e10f`  
		Last Modified: Sat, 05 May 2018 15:37:26 GMT  
		Size: 1.9 MB (1888922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1729c95afbb36eb469e548f998c13953bb65e651f30cc5b788ebbe892b60f2e`  
		Last Modified: Fri, 11 May 2018 12:27:17 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe5e9ba7bf4b31ae8960d8e405bc54f474d50e5c10def946ce81155b7da239f`  
		Last Modified: Fri, 11 May 2018 12:27:18 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d9d28bb39f66c2240386b0580cb89c2b44739fddfb9630d67215fbbb362f9a`  
		Last Modified: Fri, 11 May 2018 12:27:34 GMT  
		Size: 60.4 MB (60350840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adc23b9db64ab1dbf45ce14a31e9051db2f1b9a09b6917857e95df518c32d04`  
		Last Modified: Fri, 11 May 2018 12:27:17 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4-alpine`

```console
$ docker pull plone@sha256:f5ff6d38fce3b6b17a446a18c5faad4041ef0319b98c627243022f7a43842ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:4-alpine` - linux; amd64

```console
$ docker pull plone@sha256:27152241a85dea75e1c083b257ce91587bfa37c95980f2d0ffade55ddd0635db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87941039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559c79a713da095adb3f4e27b884e80905aeb95aac41854722f57812d676bd88`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 00:57:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:44:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:50:17 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:50:18 GMT
RUN apk add --no-cache ca-certificates
# Wed, 06 Jun 2018 03:50:18 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:50:18 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 23:20:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 23:20:08 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 23:20:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 23:20:15 GMT
CMD ["python2"]
# Thu, 07 Jun 2018 00:30:54 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 07 Jun 2018 00:30:54 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 07 Jun 2018 00:30:55 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 07 Jun 2018 00:30:55 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 07 Jun 2018 00:47:01 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 07 Jun 2018 00:47:03 GMT
VOLUME [/data]
# Thu, 07 Jun 2018 00:47:03 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Thu, 07 Jun 2018 00:47:03 GMT
EXPOSE 8080/tcp
# Thu, 07 Jun 2018 00:47:04 GMT
WORKDIR /plone/instance
# Thu, 07 Jun 2018 00:47:04 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 07 Jun 2018 00:47:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Jun 2018 00:47:04 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5556c6f99b85c0df8edb29c5e669b77642d250a5a1afcf68b586ea7df18baf8b`  
		Last Modified: Wed, 06 Jun 2018 04:08:14 GMT  
		Size: 308.0 KB (308023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fbc81365bc00f9eb3e0415c20c7868545dd44b7e4085d603ba0813d3eee8c8`  
		Last Modified: Wed, 06 Jun 2018 23:38:40 GMT  
		Size: 23.4 MB (23425471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8780cd8970327cf04c1e4272a6170384475b16b1ae0fe271487792b304a7c2fa`  
		Last Modified: Wed, 06 Jun 2018 23:38:01 GMT  
		Size: 1.9 MB (1892273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ada0ac2383a9ccdc0fca46c730e0d2017fb6d8a3b33df8ecae77dcd77f0eb0`  
		Last Modified: Thu, 07 Jun 2018 00:52:44 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d737f332cda5b4a37a6de4d29fc44d10c8b3cf79d7b512b1604ff3f4382f4fa`  
		Last Modified: Thu, 07 Jun 2018 00:52:44 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfac04455ed6feaf081356c69c590f5017a0326541f70de8910451558b0e5f14`  
		Last Modified: Thu, 07 Jun 2018 00:53:14 GMT  
		Size: 60.2 MB (60245761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19360309ff33b5f35660c2fb66006faa5c1aebcb7e9b9dc34b6db00bc5f26aa`  
		Last Modified: Thu, 07 Jun 2018 00:52:44 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4-alpine` - linux; 386

```console
$ docker pull plone@sha256:405aa2a0bcd6abbf67ad046851b8c2c602b968f7ec503fa47ba2f0be36ac830d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87468904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23734a96827d840e951ebdd1b20fda7fa0bdf482ba6ca79a09bd942b49d54138`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 12:28:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 12:28:33 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 13:49:21 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 01 Jun 2018 13:49:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 01 Jun 2018 13:49:22 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 01 Jun 2018 13:49:23 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 07 Jun 2018 11:45:39 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 07 Jun 2018 11:45:40 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Thu, 07 Jun 2018 11:45:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 07 Jun 2018 11:45:46 GMT
CMD ["python2"]
# Thu, 07 Jun 2018 13:04:17 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 07 Jun 2018 13:04:17 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 07 Jun 2018 13:04:18 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 07 Jun 2018 13:04:18 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 07 Jun 2018 13:20:00 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 07 Jun 2018 13:20:01 GMT
VOLUME [/data]
# Thu, 07 Jun 2018 13:20:02 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Thu, 07 Jun 2018 13:20:02 GMT
EXPOSE 8080/tcp
# Thu, 07 Jun 2018 13:20:02 GMT
WORKDIR /plone/instance
# Thu, 07 Jun 2018 13:20:03 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 07 Jun 2018 13:20:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Jun 2018 13:20:03 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f02fed3e613737d2a1b63bef7eb645a19ea780cbe1c5f59948c28309ebd53f`  
		Last Modified: Fri, 01 Jun 2018 14:10:54 GMT  
		Size: 308.8 KB (308755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56c8a6a4c9bdbf739cf1c2d6e4bf81172878a35cda6a130c8d0cebe99141d18`  
		Last Modified: Thu, 07 Jun 2018 11:55:38 GMT  
		Size: 23.2 MB (23177530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae31ed4fd77cb7f7a2727b0fd2be27ad51ca0380ccfbdbd4c8747cb96f7df9bb`  
		Last Modified: Thu, 07 Jun 2018 11:55:29 GMT  
		Size: 1.9 MB (1891183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c4c36943392b5732c2ff25ab3b01fc064d3681632a18acf9d749ad40e8def8`  
		Last Modified: Thu, 07 Jun 2018 13:22:50 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9397d7560d615a44342976943f9c008292bfbe4019987f15114699c31faa8052`  
		Last Modified: Thu, 07 Jun 2018 13:22:50 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee03f6bb41b3d9cc2617bd3950509311bffa5bae79cdb2591d6da243f5b006c`  
		Last Modified: Thu, 07 Jun 2018 13:23:28 GMT  
		Size: 60.0 MB (59961069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb83fc68e81e072872da4398f2f8533913dbe708ca01bb44bb65cfaca680c95`  
		Last Modified: Thu, 07 Jun 2018 13:22:49 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4-alpine` - linux; s390x

```console
$ docker pull plone@sha256:5434d172df124b50728b04aa1358d4763bf76f96f9a0a6bb3045c94645a82fb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87333899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8f63397253a8a2e36e8501d228afb6708f80da7ccfca833f64425733707f11`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 09:52:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 09:52:30 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 12:20:48 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 27 Apr 2018 12:20:49 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Apr 2018 12:20:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 15:21:24 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 15:23:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 15:23:42 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 15:23:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 15:23:47 GMT
CMD ["python2"]
# Mon, 07 May 2018 21:30:48 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Mon, 07 May 2018 21:30:48 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Mon, 07 May 2018 21:30:48 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 08 May 2018 17:57:31 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 08 May 2018 18:04:30 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 08 May 2018 18:04:31 GMT
VOLUME [/data]
# Tue, 08 May 2018 18:04:32 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Tue, 08 May 2018 18:04:32 GMT
EXPOSE 8080/tcp
# Tue, 08 May 2018 18:04:32 GMT
WORKDIR /plone/instance
# Tue, 08 May 2018 18:04:32 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 08 May 2018 18:04:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 May 2018 18:04:33 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a388b39083aa4dad60cf5c218b95e3b6540985214f7237af35a65d1bbc77445`  
		Last Modified: Fri, 27 Apr 2018 12:30:13 GMT  
		Size: 309.1 KB (309147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4dcf90b0d347b067cafbe2943010739e37bf6808356f69deb3dc78a601e0fa`  
		Last Modified: Sat, 05 May 2018 15:37:31 GMT  
		Size: 22.6 MB (22595608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4a7e614e9fc6d247851f0235e4f272e4ab8c5e629603e3cb7e7e1c31c7e10f`  
		Last Modified: Sat, 05 May 2018 15:37:26 GMT  
		Size: 1.9 MB (1888922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1729c95afbb36eb469e548f998c13953bb65e651f30cc5b788ebbe892b60f2e`  
		Last Modified: Fri, 11 May 2018 12:27:17 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe5e9ba7bf4b31ae8960d8e405bc54f474d50e5c10def946ce81155b7da239f`  
		Last Modified: Fri, 11 May 2018 12:27:18 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d9d28bb39f66c2240386b0580cb89c2b44739fddfb9630d67215fbbb362f9a`  
		Last Modified: Fri, 11 May 2018 12:27:34 GMT  
		Size: 60.4 MB (60350840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adc23b9db64ab1dbf45ce14a31e9051db2f1b9a09b6917857e95df518c32d04`  
		Last Modified: Fri, 11 May 2018 12:27:17 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5`

```console
$ docker pull plone@sha256:9f6547126e52af71472480334d373ed09488146dfce890ec75ddd0504a796cd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:5` - linux; amd64

```console
$ docker pull plone@sha256:b0ac0006485f1894d25d281841eeb44696aea6cd7be52e95a75e9ccdfb8dfb40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159266665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f474e0dd0ca0257f584351a725c46e7966aea5865ecd4df475d2579e567bc14b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 02:40:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:40:32 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:32:23 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:32:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 03:32:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:32:38 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 03:35:59 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 03:35:59 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 03:36:13 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 03:36:13 GMT
CMD ["python2"]
# Wed, 06 Jun 2018 22:59:28 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Wed, 06 Jun 2018 22:59:28 GMT
LABEL plone=5.1.1 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 06 Jun 2018 22:59:28 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 06 Jun 2018 22:59:29 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 06 Jun 2018 23:11:53 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 06 Jun 2018 23:11:55 GMT
VOLUME [/data]
# Wed, 06 Jun 2018 23:11:55 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 06 Jun 2018 23:11:55 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 23:11:56 GMT
WORKDIR /plone/instance
# Wed, 06 Jun 2018 23:11:56 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 06 Jun 2018 23:11:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 23:11:56 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2199a29f3047ff634d11deb4d8b6b9998cdf03d82d6d6259bd6e6febc9d2817`  
		Last Modified: Wed, 06 Jun 2018 04:06:00 GMT  
		Size: 3.3 MB (3314898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268f45f063bad479a861ee83d40faf63945aa0d2620e78bb01ee379f539c8ed4`  
		Last Modified: Wed, 06 Jun 2018 04:06:04 GMT  
		Size: 16.3 MB (16340352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349902594a9c15fb7aa6f6dccc727ea118602dade294b23ac861a14cad0bed86`  
		Last Modified: Wed, 06 Jun 2018 04:05:58 GMT  
		Size: 2.1 MB (2067426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c33c69d611fadbe29795fb7e99314572c610a10dee0bd098e0c78390fe41c4`  
		Last Modified: Thu, 07 Jun 2018 00:47:32 GMT  
		Size: 3.9 KB (3888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c59f2468a3f6bfed0d4ad910bd2f5b365807601dedffa46911433d25a1dda3`  
		Last Modified: Thu, 07 Jun 2018 00:47:34 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4719e53665f967ab7b1591f8e2a5f216a9460c8da001f4a3f4cd7dc7592c840d`  
		Last Modified: Thu, 07 Jun 2018 00:48:23 GMT  
		Size: 115.0 MB (115041421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6f51a099608f4ca5cc7d041a94fd093c59d3c0208b361a11e3d5c04ab72a04`  
		Last Modified: Thu, 07 Jun 2018 00:47:32 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5` - linux; 386

```console
$ docker pull plone@sha256:387062cf0519733424aa3c27fbf3a1b8c321c9f453a1a39be814ab8fd0f0ea2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159251665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44aac69596b98896e8cea1b3aa58ed765cf5cdc4b2d1f7cbec17ea9f300d7649`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Fri, 01 Jun 2018 12:23:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 12:23:37 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 13:29:30 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 01 Jun 2018 13:29:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 13:29:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 01 Jun 2018 13:29:45 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 01 Jun 2018 13:33:31 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 01 Jun 2018 13:33:31 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Fri, 01 Jun 2018 13:33:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 01 Jun 2018 13:33:45 GMT
CMD ["python2"]
# Fri, 01 Jun 2018 17:09:43 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Fri, 01 Jun 2018 17:09:43 GMT
LABEL plone=5.1.1 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 01 Jun 2018 17:09:44 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 01 Jun 2018 17:09:44 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Fri, 01 Jun 2018 17:26:47 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 01 Jun 2018 17:26:48 GMT
VOLUME [/data]
# Fri, 01 Jun 2018 17:26:49 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Fri, 01 Jun 2018 17:26:49 GMT
EXPOSE 8080/tcp
# Fri, 01 Jun 2018 17:26:50 GMT
WORKDIR /plone/instance
# Fri, 01 Jun 2018 17:26:50 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 01 Jun 2018 17:26:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Jun 2018 17:26:50 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fae4bc9945362a2475ea24285dbc18144dda259c472fe96ef19b1020999466c`  
		Last Modified: Fri, 01 Jun 2018 14:08:20 GMT  
		Size: 3.4 MB (3363883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7affa8268e88f5870eb4ccd23e5fd423319a7775e74fbb05c641aabe9c1a7213`  
		Last Modified: Fri, 01 Jun 2018 14:08:26 GMT  
		Size: 15.5 MB (15485289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813093d03e0989386fc8c592c1ed68d3c631c7110da49727c84b4c4af56ba73c`  
		Last Modified: Fri, 01 Jun 2018 14:08:21 GMT  
		Size: 2.1 MB (2067246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014d5128783b132c63bbc27195f423f7f1d7a3e3bbddb78a53b920add0e36055`  
		Last Modified: Fri, 01 Jun 2018 18:42:10 GMT  
		Size: 3.9 KB (3881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d90f10b81cbf2555120476e873af45edc5b9506eaedfa5e997bf5a6640e8c1b`  
		Last Modified: Fri, 01 Jun 2018 18:42:09 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bd4e793d6857ca42a63b0f0dd4ea33473671f7154c34cebb12678f9f664f56`  
		Last Modified: Fri, 01 Jun 2018 18:43:08 GMT  
		Size: 115.2 MB (115190203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9155cd0c929ae48b9b5c83b62f79564971be80d94b5285bc6c4ac942b3a7651`  
		Last Modified: Fri, 01 Jun 2018 18:42:10 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1`

```console
$ docker pull plone@sha256:9f6547126e52af71472480334d373ed09488146dfce890ec75ddd0504a796cd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:5.1` - linux; amd64

```console
$ docker pull plone@sha256:b0ac0006485f1894d25d281841eeb44696aea6cd7be52e95a75e9ccdfb8dfb40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159266665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f474e0dd0ca0257f584351a725c46e7966aea5865ecd4df475d2579e567bc14b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 02:40:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:40:32 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:32:23 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:32:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 03:32:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:32:38 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 03:35:59 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 03:35:59 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 03:36:13 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 03:36:13 GMT
CMD ["python2"]
# Wed, 06 Jun 2018 22:59:28 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Wed, 06 Jun 2018 22:59:28 GMT
LABEL plone=5.1.1 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 06 Jun 2018 22:59:28 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 06 Jun 2018 22:59:29 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 06 Jun 2018 23:11:53 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 06 Jun 2018 23:11:55 GMT
VOLUME [/data]
# Wed, 06 Jun 2018 23:11:55 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 06 Jun 2018 23:11:55 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 23:11:56 GMT
WORKDIR /plone/instance
# Wed, 06 Jun 2018 23:11:56 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 06 Jun 2018 23:11:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 23:11:56 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2199a29f3047ff634d11deb4d8b6b9998cdf03d82d6d6259bd6e6febc9d2817`  
		Last Modified: Wed, 06 Jun 2018 04:06:00 GMT  
		Size: 3.3 MB (3314898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268f45f063bad479a861ee83d40faf63945aa0d2620e78bb01ee379f539c8ed4`  
		Last Modified: Wed, 06 Jun 2018 04:06:04 GMT  
		Size: 16.3 MB (16340352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349902594a9c15fb7aa6f6dccc727ea118602dade294b23ac861a14cad0bed86`  
		Last Modified: Wed, 06 Jun 2018 04:05:58 GMT  
		Size: 2.1 MB (2067426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c33c69d611fadbe29795fb7e99314572c610a10dee0bd098e0c78390fe41c4`  
		Last Modified: Thu, 07 Jun 2018 00:47:32 GMT  
		Size: 3.9 KB (3888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c59f2468a3f6bfed0d4ad910bd2f5b365807601dedffa46911433d25a1dda3`  
		Last Modified: Thu, 07 Jun 2018 00:47:34 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4719e53665f967ab7b1591f8e2a5f216a9460c8da001f4a3f4cd7dc7592c840d`  
		Last Modified: Thu, 07 Jun 2018 00:48:23 GMT  
		Size: 115.0 MB (115041421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6f51a099608f4ca5cc7d041a94fd093c59d3c0208b361a11e3d5c04ab72a04`  
		Last Modified: Thu, 07 Jun 2018 00:47:32 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1` - linux; 386

```console
$ docker pull plone@sha256:387062cf0519733424aa3c27fbf3a1b8c321c9f453a1a39be814ab8fd0f0ea2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159251665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44aac69596b98896e8cea1b3aa58ed765cf5cdc4b2d1f7cbec17ea9f300d7649`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Fri, 01 Jun 2018 12:23:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 12:23:37 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 13:29:30 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 01 Jun 2018 13:29:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 13:29:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 01 Jun 2018 13:29:45 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 01 Jun 2018 13:33:31 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 01 Jun 2018 13:33:31 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Fri, 01 Jun 2018 13:33:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 01 Jun 2018 13:33:45 GMT
CMD ["python2"]
# Fri, 01 Jun 2018 17:09:43 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Fri, 01 Jun 2018 17:09:43 GMT
LABEL plone=5.1.1 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 01 Jun 2018 17:09:44 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 01 Jun 2018 17:09:44 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Fri, 01 Jun 2018 17:26:47 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 01 Jun 2018 17:26:48 GMT
VOLUME [/data]
# Fri, 01 Jun 2018 17:26:49 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Fri, 01 Jun 2018 17:26:49 GMT
EXPOSE 8080/tcp
# Fri, 01 Jun 2018 17:26:50 GMT
WORKDIR /plone/instance
# Fri, 01 Jun 2018 17:26:50 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 01 Jun 2018 17:26:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Jun 2018 17:26:50 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fae4bc9945362a2475ea24285dbc18144dda259c472fe96ef19b1020999466c`  
		Last Modified: Fri, 01 Jun 2018 14:08:20 GMT  
		Size: 3.4 MB (3363883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7affa8268e88f5870eb4ccd23e5fd423319a7775e74fbb05c641aabe9c1a7213`  
		Last Modified: Fri, 01 Jun 2018 14:08:26 GMT  
		Size: 15.5 MB (15485289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813093d03e0989386fc8c592c1ed68d3c631c7110da49727c84b4c4af56ba73c`  
		Last Modified: Fri, 01 Jun 2018 14:08:21 GMT  
		Size: 2.1 MB (2067246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014d5128783b132c63bbc27195f423f7f1d7a3e3bbddb78a53b920add0e36055`  
		Last Modified: Fri, 01 Jun 2018 18:42:10 GMT  
		Size: 3.9 KB (3881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d90f10b81cbf2555120476e873af45edc5b9506eaedfa5e997bf5a6640e8c1b`  
		Last Modified: Fri, 01 Jun 2018 18:42:09 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bd4e793d6857ca42a63b0f0dd4ea33473671f7154c34cebb12678f9f664f56`  
		Last Modified: Fri, 01 Jun 2018 18:43:08 GMT  
		Size: 115.2 MB (115190203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9155cd0c929ae48b9b5c83b62f79564971be80d94b5285bc6c4ac942b3a7651`  
		Last Modified: Fri, 01 Jun 2018 18:42:10 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1.0`

```console
$ docker pull plone@sha256:7da4c2f57a822cfe2ce3a7944ee5538383b29f57a3fa0b65871453b7ba6421a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:5.1.0` - linux; amd64

```console
$ docker pull plone@sha256:36013828069efc67bec752149ebc81ff3822b60fe415a89e494b6bb425ff72b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159433284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37fddf34ed63493aecb1c783232be773af759eb9576bbb3d8e4302a389ee00b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 02:40:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:40:32 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:32:23 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:32:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 03:32:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:32:38 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 03:35:59 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 03:35:59 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 03:36:13 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 03:36:13 GMT
CMD ["python2"]
# Wed, 06 Jun 2018 23:33:43 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.0 PLONE_MD5=76dc6cfc1c749d763c32fff3a9870d8d
# Wed, 06 Jun 2018 23:33:43 GMT
LABEL plone=5.1.0 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 06 Jun 2018 23:33:44 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 06 Jun 2018 23:33:46 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 06 Jun 2018 23:55:50 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 06 Jun 2018 23:55:52 GMT
VOLUME [/data]
# Wed, 06 Jun 2018 23:55:52 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 06 Jun 2018 23:55:53 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 23:55:53 GMT
WORKDIR /plone/instance
# Wed, 06 Jun 2018 23:55:53 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 06 Jun 2018 23:55:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 23:55:54 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2199a29f3047ff634d11deb4d8b6b9998cdf03d82d6d6259bd6e6febc9d2817`  
		Last Modified: Wed, 06 Jun 2018 04:06:00 GMT  
		Size: 3.3 MB (3314898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268f45f063bad479a861ee83d40faf63945aa0d2620e78bb01ee379f539c8ed4`  
		Last Modified: Wed, 06 Jun 2018 04:06:04 GMT  
		Size: 16.3 MB (16340352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349902594a9c15fb7aa6f6dccc727ea118602dade294b23ac861a14cad0bed86`  
		Last Modified: Wed, 06 Jun 2018 04:05:58 GMT  
		Size: 2.1 MB (2067426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397e8108cd7a01540a810fa15a2ad503e6a2cdc3fdd876c9b96c79a1a44d3ed3`  
		Last Modified: Thu, 07 Jun 2018 00:49:59 GMT  
		Size: 3.9 KB (3888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0af65f898f76f7da424c68c96aeced39eb03b808b1c9ac89d789a199556f696`  
		Last Modified: Thu, 07 Jun 2018 00:49:58 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452e318090aed9e73990f913503d4bd574766cc42b37e2d66bd38f17e6def378`  
		Last Modified: Thu, 07 Jun 2018 00:50:45 GMT  
		Size: 115.2 MB (115208042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bf25c7877dd3d7e07fa437af64a8dcb26971944324c4950c73052fd636eff0`  
		Last Modified: Thu, 07 Jun 2018 00:49:58 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.0` - linux; 386

```console
$ docker pull plone@sha256:30a20cbf1c53a21afde1e7bada883226ced77c2d280640694d5e24ca16b2854b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159413330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bbd25e27dc08c01e6f93adef281ff21f1cea8002935a55bb23ef3dc065ce7bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Fri, 01 Jun 2018 12:23:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 12:23:37 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 13:29:30 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 01 Jun 2018 13:29:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 13:29:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 01 Jun 2018 13:29:45 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 01 Jun 2018 13:33:31 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 01 Jun 2018 13:33:31 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Fri, 01 Jun 2018 13:33:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 01 Jun 2018 13:33:45 GMT
CMD ["python2"]
# Fri, 01 Jun 2018 17:42:24 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.0 PLONE_MD5=76dc6cfc1c749d763c32fff3a9870d8d
# Fri, 01 Jun 2018 17:42:24 GMT
LABEL plone=5.1.0 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 01 Jun 2018 17:42:25 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 01 Jun 2018 17:42:26 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Fri, 01 Jun 2018 17:54:37 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 01 Jun 2018 17:54:39 GMT
VOLUME [/data]
# Fri, 01 Jun 2018 17:54:39 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Fri, 01 Jun 2018 17:54:40 GMT
EXPOSE 8080/tcp
# Fri, 01 Jun 2018 17:54:40 GMT
WORKDIR /plone/instance
# Fri, 01 Jun 2018 17:54:40 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 01 Jun 2018 17:54:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Jun 2018 17:54:41 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fae4bc9945362a2475ea24285dbc18144dda259c472fe96ef19b1020999466c`  
		Last Modified: Fri, 01 Jun 2018 14:08:20 GMT  
		Size: 3.4 MB (3363883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7affa8268e88f5870eb4ccd23e5fd423319a7775e74fbb05c641aabe9c1a7213`  
		Last Modified: Fri, 01 Jun 2018 14:08:26 GMT  
		Size: 15.5 MB (15485289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813093d03e0989386fc8c592c1ed68d3c631c7110da49727c84b4c4af56ba73c`  
		Last Modified: Fri, 01 Jun 2018 14:08:21 GMT  
		Size: 2.1 MB (2067246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0ba754206290354425de4a9266e224e8547e4e29376e0832655fb5c9e7f678`  
		Last Modified: Fri, 01 Jun 2018 18:45:04 GMT  
		Size: 3.9 KB (3881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c3fad32045978fa54892a268450f760151199a99730bb5482c90de170c8efc`  
		Last Modified: Fri, 01 Jun 2018 18:45:04 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac261fadcac7564e4f14157593ff2835f9749713e55ab517b0ebf1745379af2`  
		Last Modified: Fri, 01 Jun 2018 18:46:01 GMT  
		Size: 115.4 MB (115351870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e2f86b65d5f2115d777a934345c59db185a2114e520e72b1b29bc713f64cca`  
		Last Modified: Fri, 01 Jun 2018 18:45:03 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1.0-alpine`

```console
$ docker pull plone@sha256:b83724f1da03c0a069f1b0ea4958fbfff5d14fbb276e33a6ad65f1b191847d4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:5.1.0-alpine` - linux; amd64

```console
$ docker pull plone@sha256:0936573852d8378dafbcad298c33448db4638dd2a2162d322c420886ce1f8ca4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111323175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b31f23b6d6366f9badebed4802eea95c30425afe1d740f122da7614a41f9050e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 00:57:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:44:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:50:17 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:50:18 GMT
RUN apk add --no-cache ca-certificates
# Wed, 06 Jun 2018 03:50:18 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:50:18 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 23:20:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 23:20:08 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 23:20:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 23:20:15 GMT
CMD ["python2"]
# Wed, 06 Jun 2018 23:55:59 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.0 PLONE_MD5=76dc6cfc1c749d763c32fff3a9870d8d
# Wed, 06 Jun 2018 23:55:59 GMT
LABEL plone=5.1.0 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 06 Jun 2018 23:55:59 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 06 Jun 2018 23:56:00 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 07 Jun 2018 00:13:52 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 07 Jun 2018 00:13:53 GMT
VOLUME [/data]
# Thu, 07 Jun 2018 00:13:54 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 07 Jun 2018 00:13:54 GMT
EXPOSE 8080/tcp
# Thu, 07 Jun 2018 00:13:55 GMT
WORKDIR /plone/instance
# Thu, 07 Jun 2018 00:13:55 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 07 Jun 2018 00:13:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Jun 2018 00:13:56 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5556c6f99b85c0df8edb29c5e669b77642d250a5a1afcf68b586ea7df18baf8b`  
		Last Modified: Wed, 06 Jun 2018 04:08:14 GMT  
		Size: 308.0 KB (308023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fbc81365bc00f9eb3e0415c20c7868545dd44b7e4085d603ba0813d3eee8c8`  
		Last Modified: Wed, 06 Jun 2018 23:38:40 GMT  
		Size: 23.4 MB (23425471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8780cd8970327cf04c1e4272a6170384475b16b1ae0fe271487792b304a7c2fa`  
		Last Modified: Wed, 06 Jun 2018 23:38:01 GMT  
		Size: 1.9 MB (1892273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23630b82ea9672e4f5e98a28fd2f51e35512fd76ac526797bbb5ea2de1e3f77a`  
		Last Modified: Thu, 07 Jun 2018 00:50:55 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601e4541bb06c8e17967da6500035999b46b9450eec38f91f41f1bb20dcb4016`  
		Last Modified: Thu, 07 Jun 2018 00:50:55 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5c70455267b708ba046db7b6924aa516215941c5fca0c50d82064a2441d00e`  
		Last Modified: Thu, 07 Jun 2018 00:51:33 GMT  
		Size: 83.6 MB (83627896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af6a8929cc88c3b60965133dbb98d5edaaf6ca60de4df566eb1ff0e4e3c22a8`  
		Last Modified: Thu, 07 Jun 2018 00:50:55 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.0-alpine` - linux; 386

```console
$ docker pull plone@sha256:ea262925aa71633495f99a3288b9211f962655de69f784fd84ed3dd860727c18
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110685557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffbf239b748ac0e88d40b206ee65a7ba105f5424eb1fa93f026c60fca27811ee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 12:28:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 12:28:33 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 13:49:21 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 01 Jun 2018 13:49:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 01 Jun 2018 13:49:22 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 01 Jun 2018 13:49:23 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 07 Jun 2018 11:45:39 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 07 Jun 2018 11:45:40 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Thu, 07 Jun 2018 11:45:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 07 Jun 2018 11:45:46 GMT
CMD ["python2"]
# Thu, 07 Jun 2018 12:47:46 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.0 PLONE_MD5=76dc6cfc1c749d763c32fff3a9870d8d
# Thu, 07 Jun 2018 12:47:46 GMT
LABEL plone=5.1.0 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 07 Jun 2018 12:47:47 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 07 Jun 2018 12:47:47 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 07 Jun 2018 13:03:50 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 07 Jun 2018 13:03:54 GMT
VOLUME [/data]
# Thu, 07 Jun 2018 13:03:54 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 07 Jun 2018 13:03:54 GMT
EXPOSE 8080/tcp
# Thu, 07 Jun 2018 13:03:55 GMT
WORKDIR /plone/instance
# Thu, 07 Jun 2018 13:03:55 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 07 Jun 2018 13:03:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Jun 2018 13:03:56 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f02fed3e613737d2a1b63bef7eb645a19ea780cbe1c5f59948c28309ebd53f`  
		Last Modified: Fri, 01 Jun 2018 14:10:54 GMT  
		Size: 308.8 KB (308755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56c8a6a4c9bdbf739cf1c2d6e4bf81172878a35cda6a130c8d0cebe99141d18`  
		Last Modified: Thu, 07 Jun 2018 11:55:38 GMT  
		Size: 23.2 MB (23177530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae31ed4fd77cb7f7a2727b0fd2be27ad51ca0380ccfbdbd4c8747cb96f7df9bb`  
		Last Modified: Thu, 07 Jun 2018 11:55:29 GMT  
		Size: 1.9 MB (1891183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f5e381e3018575b26075ce06be733d17bc1832161d88aba4fe63fe43b25fb1`  
		Last Modified: Thu, 07 Jun 2018 13:21:46 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4e3f3dec6058e8e8cf0641b37c38d078ef882f4c8c6fa35b02e9d0967c39ee`  
		Last Modified: Thu, 07 Jun 2018 13:21:46 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869c77d753d1c9dd86cca8f4c26c5ad67e8bac9af0238a62e9cf489f3f840fec`  
		Last Modified: Thu, 07 Jun 2018 13:22:33 GMT  
		Size: 83.2 MB (83177723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bee2c1ea4d0c59b32f01b659806c4418774de2e9b07740ab21ba809418fab8b`  
		Last Modified: Thu, 07 Jun 2018 13:21:46 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.0-alpine` - linux; s390x

```console
$ docker pull plone@sha256:1b530a30f4de9ca1d5a352792678169d8542ce75a770f9e0bbe254267dc1663c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.8 MB (110752738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73a2d08200567d08979b5f0cabfd021cce8387d2cbf6485a1115b7bd35c2e3ef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 09:52:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 09:52:30 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 12:20:48 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 27 Apr 2018 12:20:49 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Apr 2018 12:20:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 15:21:24 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 15:23:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 15:23:42 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 15:23:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 15:23:47 GMT
CMD ["python2"]
# Mon, 07 May 2018 21:17:21 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.0 PLONE_MD5=76dc6cfc1c749d763c32fff3a9870d8d
# Mon, 07 May 2018 21:17:21 GMT
LABEL plone=5.1.0 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Mon, 07 May 2018 21:17:22 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 08 May 2018 17:43:11 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 08 May 2018 17:52:57 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Tue, 08 May 2018 17:52:59 GMT
VOLUME [/data]
# Tue, 08 May 2018 17:53:00 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Tue, 08 May 2018 17:53:01 GMT
EXPOSE 8080/tcp
# Tue, 08 May 2018 17:53:01 GMT
WORKDIR /plone/instance
# Tue, 08 May 2018 17:53:02 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 08 May 2018 17:53:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 May 2018 17:53:02 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a388b39083aa4dad60cf5c218b95e3b6540985214f7237af35a65d1bbc77445`  
		Last Modified: Fri, 27 Apr 2018 12:30:13 GMT  
		Size: 309.1 KB (309147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4dcf90b0d347b067cafbe2943010739e37bf6808356f69deb3dc78a601e0fa`  
		Last Modified: Sat, 05 May 2018 15:37:31 GMT  
		Size: 22.6 MB (22595608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4a7e614e9fc6d247851f0235e4f272e4ab8c5e629603e3cb7e7e1c31c7e10f`  
		Last Modified: Sat, 05 May 2018 15:37:26 GMT  
		Size: 1.9 MB (1888922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5be8e74709790e7815c55f769ebaa3ee8414b8bcc4fc532a282d9190cc607a`  
		Last Modified: Fri, 11 May 2018 12:26:47 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf3854bb9056735baf197e5f886ade1f2279f97c1dfe32a251e74e0ecc2730e`  
		Last Modified: Fri, 11 May 2018 12:26:46 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45f41eae5e3b6a2e2f161b8d683d181c5df434f79102d76b28f0273485b92e8`  
		Last Modified: Fri, 11 May 2018 12:27:07 GMT  
		Size: 83.8 MB (83769683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c32324a6a25235f8c866fc551b295654997cb4f1a5a5dab7f0f5dd2ec216458`  
		Last Modified: Fri, 11 May 2018 12:26:46 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1.1`

```console
$ docker pull plone@sha256:9f6547126e52af71472480334d373ed09488146dfce890ec75ddd0504a796cd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:5.1.1` - linux; amd64

```console
$ docker pull plone@sha256:b0ac0006485f1894d25d281841eeb44696aea6cd7be52e95a75e9ccdfb8dfb40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159266665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f474e0dd0ca0257f584351a725c46e7966aea5865ecd4df475d2579e567bc14b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 02:40:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:40:32 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:32:23 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:32:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 03:32:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:32:38 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 03:35:59 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 03:35:59 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 03:36:13 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 03:36:13 GMT
CMD ["python2"]
# Wed, 06 Jun 2018 22:59:28 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Wed, 06 Jun 2018 22:59:28 GMT
LABEL plone=5.1.1 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 06 Jun 2018 22:59:28 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 06 Jun 2018 22:59:29 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 06 Jun 2018 23:11:53 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 06 Jun 2018 23:11:55 GMT
VOLUME [/data]
# Wed, 06 Jun 2018 23:11:55 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 06 Jun 2018 23:11:55 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 23:11:56 GMT
WORKDIR /plone/instance
# Wed, 06 Jun 2018 23:11:56 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 06 Jun 2018 23:11:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 23:11:56 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2199a29f3047ff634d11deb4d8b6b9998cdf03d82d6d6259bd6e6febc9d2817`  
		Last Modified: Wed, 06 Jun 2018 04:06:00 GMT  
		Size: 3.3 MB (3314898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268f45f063bad479a861ee83d40faf63945aa0d2620e78bb01ee379f539c8ed4`  
		Last Modified: Wed, 06 Jun 2018 04:06:04 GMT  
		Size: 16.3 MB (16340352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349902594a9c15fb7aa6f6dccc727ea118602dade294b23ac861a14cad0bed86`  
		Last Modified: Wed, 06 Jun 2018 04:05:58 GMT  
		Size: 2.1 MB (2067426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c33c69d611fadbe29795fb7e99314572c610a10dee0bd098e0c78390fe41c4`  
		Last Modified: Thu, 07 Jun 2018 00:47:32 GMT  
		Size: 3.9 KB (3888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c59f2468a3f6bfed0d4ad910bd2f5b365807601dedffa46911433d25a1dda3`  
		Last Modified: Thu, 07 Jun 2018 00:47:34 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4719e53665f967ab7b1591f8e2a5f216a9460c8da001f4a3f4cd7dc7592c840d`  
		Last Modified: Thu, 07 Jun 2018 00:48:23 GMT  
		Size: 115.0 MB (115041421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6f51a099608f4ca5cc7d041a94fd093c59d3c0208b361a11e3d5c04ab72a04`  
		Last Modified: Thu, 07 Jun 2018 00:47:32 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.1` - linux; 386

```console
$ docker pull plone@sha256:387062cf0519733424aa3c27fbf3a1b8c321c9f453a1a39be814ab8fd0f0ea2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159251665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44aac69596b98896e8cea1b3aa58ed765cf5cdc4b2d1f7cbec17ea9f300d7649`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Fri, 01 Jun 2018 12:23:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 12:23:37 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 13:29:30 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 01 Jun 2018 13:29:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 13:29:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 01 Jun 2018 13:29:45 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 01 Jun 2018 13:33:31 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 01 Jun 2018 13:33:31 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Fri, 01 Jun 2018 13:33:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 01 Jun 2018 13:33:45 GMT
CMD ["python2"]
# Fri, 01 Jun 2018 17:09:43 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Fri, 01 Jun 2018 17:09:43 GMT
LABEL plone=5.1.1 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 01 Jun 2018 17:09:44 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 01 Jun 2018 17:09:44 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Fri, 01 Jun 2018 17:26:47 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 01 Jun 2018 17:26:48 GMT
VOLUME [/data]
# Fri, 01 Jun 2018 17:26:49 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Fri, 01 Jun 2018 17:26:49 GMT
EXPOSE 8080/tcp
# Fri, 01 Jun 2018 17:26:50 GMT
WORKDIR /plone/instance
# Fri, 01 Jun 2018 17:26:50 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 01 Jun 2018 17:26:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Jun 2018 17:26:50 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fae4bc9945362a2475ea24285dbc18144dda259c472fe96ef19b1020999466c`  
		Last Modified: Fri, 01 Jun 2018 14:08:20 GMT  
		Size: 3.4 MB (3363883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7affa8268e88f5870eb4ccd23e5fd423319a7775e74fbb05c641aabe9c1a7213`  
		Last Modified: Fri, 01 Jun 2018 14:08:26 GMT  
		Size: 15.5 MB (15485289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813093d03e0989386fc8c592c1ed68d3c631c7110da49727c84b4c4af56ba73c`  
		Last Modified: Fri, 01 Jun 2018 14:08:21 GMT  
		Size: 2.1 MB (2067246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014d5128783b132c63bbc27195f423f7f1d7a3e3bbddb78a53b920add0e36055`  
		Last Modified: Fri, 01 Jun 2018 18:42:10 GMT  
		Size: 3.9 KB (3881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d90f10b81cbf2555120476e873af45edc5b9506eaedfa5e997bf5a6640e8c1b`  
		Last Modified: Fri, 01 Jun 2018 18:42:09 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bd4e793d6857ca42a63b0f0dd4ea33473671f7154c34cebb12678f9f664f56`  
		Last Modified: Fri, 01 Jun 2018 18:43:08 GMT  
		Size: 115.2 MB (115190203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9155cd0c929ae48b9b5c83b62f79564971be80d94b5285bc6c4ac942b3a7651`  
		Last Modified: Fri, 01 Jun 2018 18:42:10 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1.1-alpine`

```console
$ docker pull plone@sha256:7fbff501b97559ce29e53ae815ea154f96fd73dcd65ad0b762163e8dcda6aeb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:5.1.1-alpine` - linux; amd64

```console
$ docker pull plone@sha256:1638083d14b78ebc995b691148d8d0c9f775b3e6db7bf96a57053116a03cd505
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111158640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff29d4f0f8bfa397134a0a77261e79068aa86d110a85da28a0ea977f694abeb8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 00:57:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:44:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:50:17 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:50:18 GMT
RUN apk add --no-cache ca-certificates
# Wed, 06 Jun 2018 03:50:18 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:50:18 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 23:20:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 23:20:08 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 23:20:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 23:20:15 GMT
CMD ["python2"]
# Thu, 07 Jun 2018 02:18:39 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Thu, 07 Jun 2018 02:18:39 GMT
LABEL plone=5.1.1 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 07 Jun 2018 02:18:40 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 07 Jun 2018 02:18:40 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 07 Jun 2018 02:33:13 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 07 Jun 2018 02:33:14 GMT
VOLUME [/data]
# Thu, 07 Jun 2018 02:33:15 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 07 Jun 2018 02:33:15 GMT
EXPOSE 8080/tcp
# Thu, 07 Jun 2018 02:33:15 GMT
WORKDIR /plone/instance
# Thu, 07 Jun 2018 02:33:16 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 07 Jun 2018 02:33:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Jun 2018 02:33:16 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5556c6f99b85c0df8edb29c5e669b77642d250a5a1afcf68b586ea7df18baf8b`  
		Last Modified: Wed, 06 Jun 2018 04:08:14 GMT  
		Size: 308.0 KB (308023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fbc81365bc00f9eb3e0415c20c7868545dd44b7e4085d603ba0813d3eee8c8`  
		Last Modified: Wed, 06 Jun 2018 23:38:40 GMT  
		Size: 23.4 MB (23425471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8780cd8970327cf04c1e4272a6170384475b16b1ae0fe271487792b304a7c2fa`  
		Last Modified: Wed, 06 Jun 2018 23:38:01 GMT  
		Size: 1.9 MB (1892273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e517adae93d7a65f7fdd152ac08cbbc4df3a7575f3fc1017272eaa9be090703a`  
		Last Modified: Thu, 07 Jun 2018 02:33:32 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3817ad9e1715e0c8023ae1ee65c85648bf3871de6b2bfcd4e2124fa12052a53`  
		Last Modified: Thu, 07 Jun 2018 02:33:32 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0fbcc13d064f76c3432bb01885cb9c9578ee681a11b3d7e39b5928ee08e6a`  
		Last Modified: Thu, 07 Jun 2018 02:34:11 GMT  
		Size: 83.5 MB (83463368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb4914ff3210d0973f72bf300735cbe38d7e382ba2d7f21d76bd2d594115c51`  
		Last Modified: Thu, 07 Jun 2018 02:33:32 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.1-alpine` - linux; 386

```console
$ docker pull plone@sha256:63dea1146944760111fd5bf2b7207b84ff9c65486ddedb0b80439fa0e4358716
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110511400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adcdbeb44bd183a11aa2b4ae592ffd0793c3c7d89273d656671c55ad22ac120`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 12:28:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 12:28:33 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 13:49:21 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 01 Jun 2018 13:49:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 01 Jun 2018 13:49:22 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 01 Jun 2018 13:49:23 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 07 Jun 2018 11:45:39 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 07 Jun 2018 11:45:40 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Thu, 07 Jun 2018 11:45:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 07 Jun 2018 11:45:46 GMT
CMD ["python2"]
# Thu, 07 Jun 2018 12:32:00 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Thu, 07 Jun 2018 12:32:01 GMT
LABEL plone=5.1.1 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 07 Jun 2018 12:32:01 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 07 Jun 2018 12:32:02 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 07 Jun 2018 12:47:28 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 07 Jun 2018 12:47:30 GMT
VOLUME [/data]
# Thu, 07 Jun 2018 12:47:30 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 07 Jun 2018 12:47:30 GMT
EXPOSE 8080/tcp
# Thu, 07 Jun 2018 12:47:31 GMT
WORKDIR /plone/instance
# Thu, 07 Jun 2018 12:47:31 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 07 Jun 2018 12:47:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Jun 2018 12:47:32 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f02fed3e613737d2a1b63bef7eb645a19ea780cbe1c5f59948c28309ebd53f`  
		Last Modified: Fri, 01 Jun 2018 14:10:54 GMT  
		Size: 308.8 KB (308755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56c8a6a4c9bdbf739cf1c2d6e4bf81172878a35cda6a130c8d0cebe99141d18`  
		Last Modified: Thu, 07 Jun 2018 11:55:38 GMT  
		Size: 23.2 MB (23177530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae31ed4fd77cb7f7a2727b0fd2be27ad51ca0380ccfbdbd4c8747cb96f7df9bb`  
		Last Modified: Thu, 07 Jun 2018 11:55:29 GMT  
		Size: 1.9 MB (1891183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821f478ce87e898feca903269b8e1f3d7d9a8f29b2d5269062f216457ef761ae`  
		Last Modified: Thu, 07 Jun 2018 13:20:25 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7213a4d44a15dc790b7e448f4fcc34387469b4ff5151bccea32dd8a7a023b64e`  
		Last Modified: Thu, 07 Jun 2018 13:20:24 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599f732c28adf4d7a7cc7c7cbcb98b7b01327b1beadbce371e60671dae194974`  
		Last Modified: Thu, 07 Jun 2018 13:21:10 GMT  
		Size: 83.0 MB (83003570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9f2a251998ed16218eaba476a5c750d3184160f8653d0f26c7782f34d6e04b`  
		Last Modified: Thu, 07 Jun 2018 13:20:24 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.1-alpine` - linux; s390x

```console
$ docker pull plone@sha256:06bbabca8172490bba5280dab61ee95d097febb49b11a6f4243bfd08e6d85b44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110579487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b25879b4b367bcb749a1cc3ef8aaa5cf354bfcefdaf45da0c0a3225bb5872a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 09:52:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 09:52:30 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 12:20:48 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 27 Apr 2018 12:20:49 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Apr 2018 12:20:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 15:21:24 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 15:23:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 15:23:42 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 15:23:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 15:23:47 GMT
CMD ["python2"]
# Mon, 07 May 2018 21:05:22 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Mon, 07 May 2018 21:05:22 GMT
LABEL plone=5.1.1 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Mon, 07 May 2018 21:05:23 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 08 May 2018 17:23:42 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 08 May 2018 17:38:15 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Tue, 08 May 2018 17:38:18 GMT
VOLUME [/data]
# Tue, 08 May 2018 17:38:19 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Tue, 08 May 2018 17:38:19 GMT
EXPOSE 8080/tcp
# Tue, 08 May 2018 17:38:20 GMT
WORKDIR /plone/instance
# Tue, 08 May 2018 17:38:20 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 08 May 2018 17:38:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 May 2018 17:38:21 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a388b39083aa4dad60cf5c218b95e3b6540985214f7237af35a65d1bbc77445`  
		Last Modified: Fri, 27 Apr 2018 12:30:13 GMT  
		Size: 309.1 KB (309147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4dcf90b0d347b067cafbe2943010739e37bf6808356f69deb3dc78a601e0fa`  
		Last Modified: Sat, 05 May 2018 15:37:31 GMT  
		Size: 22.6 MB (22595608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4a7e614e9fc6d247851f0235e4f272e4ab8c5e629603e3cb7e7e1c31c7e10f`  
		Last Modified: Sat, 05 May 2018 15:37:26 GMT  
		Size: 1.9 MB (1888922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79859cd2b1071b1cd66ff0bba565ab7286ec33d159c812f637cda28b96b90f97`  
		Last Modified: Fri, 11 May 2018 12:25:44 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9857dcb7ec2f99907ec4b2e9b1654adb54872e4ff3e09c52cad8548b648fcd0`  
		Last Modified: Fri, 11 May 2018 12:25:44 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf6293d703316ea9f71e7a6c68ac350b14ad09e57dd93f182b164da86c1dc45`  
		Last Modified: Fri, 11 May 2018 12:26:04 GMT  
		Size: 83.6 MB (83596429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1281d0ff5ca33daf081b04d9c07b466070a0907593238002d668201709e499`  
		Last Modified: Fri, 11 May 2018 12:25:44 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1-alpine`

```console
$ docker pull plone@sha256:7fbff501b97559ce29e53ae815ea154f96fd73dcd65ad0b762163e8dcda6aeb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:5.1-alpine` - linux; amd64

```console
$ docker pull plone@sha256:1638083d14b78ebc995b691148d8d0c9f775b3e6db7bf96a57053116a03cd505
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111158640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff29d4f0f8bfa397134a0a77261e79068aa86d110a85da28a0ea977f694abeb8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 00:57:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:44:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:50:17 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:50:18 GMT
RUN apk add --no-cache ca-certificates
# Wed, 06 Jun 2018 03:50:18 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:50:18 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 23:20:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 23:20:08 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 23:20:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 23:20:15 GMT
CMD ["python2"]
# Thu, 07 Jun 2018 02:18:39 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Thu, 07 Jun 2018 02:18:39 GMT
LABEL plone=5.1.1 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 07 Jun 2018 02:18:40 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 07 Jun 2018 02:18:40 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 07 Jun 2018 02:33:13 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 07 Jun 2018 02:33:14 GMT
VOLUME [/data]
# Thu, 07 Jun 2018 02:33:15 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 07 Jun 2018 02:33:15 GMT
EXPOSE 8080/tcp
# Thu, 07 Jun 2018 02:33:15 GMT
WORKDIR /plone/instance
# Thu, 07 Jun 2018 02:33:16 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 07 Jun 2018 02:33:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Jun 2018 02:33:16 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5556c6f99b85c0df8edb29c5e669b77642d250a5a1afcf68b586ea7df18baf8b`  
		Last Modified: Wed, 06 Jun 2018 04:08:14 GMT  
		Size: 308.0 KB (308023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fbc81365bc00f9eb3e0415c20c7868545dd44b7e4085d603ba0813d3eee8c8`  
		Last Modified: Wed, 06 Jun 2018 23:38:40 GMT  
		Size: 23.4 MB (23425471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8780cd8970327cf04c1e4272a6170384475b16b1ae0fe271487792b304a7c2fa`  
		Last Modified: Wed, 06 Jun 2018 23:38:01 GMT  
		Size: 1.9 MB (1892273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e517adae93d7a65f7fdd152ac08cbbc4df3a7575f3fc1017272eaa9be090703a`  
		Last Modified: Thu, 07 Jun 2018 02:33:32 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3817ad9e1715e0c8023ae1ee65c85648bf3871de6b2bfcd4e2124fa12052a53`  
		Last Modified: Thu, 07 Jun 2018 02:33:32 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0fbcc13d064f76c3432bb01885cb9c9578ee681a11b3d7e39b5928ee08e6a`  
		Last Modified: Thu, 07 Jun 2018 02:34:11 GMT  
		Size: 83.5 MB (83463368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb4914ff3210d0973f72bf300735cbe38d7e382ba2d7f21d76bd2d594115c51`  
		Last Modified: Thu, 07 Jun 2018 02:33:32 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1-alpine` - linux; 386

```console
$ docker pull plone@sha256:63dea1146944760111fd5bf2b7207b84ff9c65486ddedb0b80439fa0e4358716
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110511400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adcdbeb44bd183a11aa2b4ae592ffd0793c3c7d89273d656671c55ad22ac120`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 12:28:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 12:28:33 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 13:49:21 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 01 Jun 2018 13:49:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 01 Jun 2018 13:49:22 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 01 Jun 2018 13:49:23 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 07 Jun 2018 11:45:39 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 07 Jun 2018 11:45:40 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Thu, 07 Jun 2018 11:45:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 07 Jun 2018 11:45:46 GMT
CMD ["python2"]
# Thu, 07 Jun 2018 12:32:00 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Thu, 07 Jun 2018 12:32:01 GMT
LABEL plone=5.1.1 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 07 Jun 2018 12:32:01 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 07 Jun 2018 12:32:02 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 07 Jun 2018 12:47:28 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 07 Jun 2018 12:47:30 GMT
VOLUME [/data]
# Thu, 07 Jun 2018 12:47:30 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 07 Jun 2018 12:47:30 GMT
EXPOSE 8080/tcp
# Thu, 07 Jun 2018 12:47:31 GMT
WORKDIR /plone/instance
# Thu, 07 Jun 2018 12:47:31 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 07 Jun 2018 12:47:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Jun 2018 12:47:32 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f02fed3e613737d2a1b63bef7eb645a19ea780cbe1c5f59948c28309ebd53f`  
		Last Modified: Fri, 01 Jun 2018 14:10:54 GMT  
		Size: 308.8 KB (308755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56c8a6a4c9bdbf739cf1c2d6e4bf81172878a35cda6a130c8d0cebe99141d18`  
		Last Modified: Thu, 07 Jun 2018 11:55:38 GMT  
		Size: 23.2 MB (23177530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae31ed4fd77cb7f7a2727b0fd2be27ad51ca0380ccfbdbd4c8747cb96f7df9bb`  
		Last Modified: Thu, 07 Jun 2018 11:55:29 GMT  
		Size: 1.9 MB (1891183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821f478ce87e898feca903269b8e1f3d7d9a8f29b2d5269062f216457ef761ae`  
		Last Modified: Thu, 07 Jun 2018 13:20:25 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7213a4d44a15dc790b7e448f4fcc34387469b4ff5151bccea32dd8a7a023b64e`  
		Last Modified: Thu, 07 Jun 2018 13:20:24 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599f732c28adf4d7a7cc7c7cbcb98b7b01327b1beadbce371e60671dae194974`  
		Last Modified: Thu, 07 Jun 2018 13:21:10 GMT  
		Size: 83.0 MB (83003570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9f2a251998ed16218eaba476a5c750d3184160f8653d0f26c7782f34d6e04b`  
		Last Modified: Thu, 07 Jun 2018 13:20:24 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1-alpine` - linux; s390x

```console
$ docker pull plone@sha256:06bbabca8172490bba5280dab61ee95d097febb49b11a6f4243bfd08e6d85b44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110579487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b25879b4b367bcb749a1cc3ef8aaa5cf354bfcefdaf45da0c0a3225bb5872a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 09:52:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 09:52:30 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 12:20:48 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 27 Apr 2018 12:20:49 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Apr 2018 12:20:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 15:21:24 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 15:23:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 15:23:42 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 15:23:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 15:23:47 GMT
CMD ["python2"]
# Mon, 07 May 2018 21:05:22 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Mon, 07 May 2018 21:05:22 GMT
LABEL plone=5.1.1 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Mon, 07 May 2018 21:05:23 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 08 May 2018 17:23:42 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 08 May 2018 17:38:15 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Tue, 08 May 2018 17:38:18 GMT
VOLUME [/data]
# Tue, 08 May 2018 17:38:19 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Tue, 08 May 2018 17:38:19 GMT
EXPOSE 8080/tcp
# Tue, 08 May 2018 17:38:20 GMT
WORKDIR /plone/instance
# Tue, 08 May 2018 17:38:20 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 08 May 2018 17:38:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 May 2018 17:38:21 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a388b39083aa4dad60cf5c218b95e3b6540985214f7237af35a65d1bbc77445`  
		Last Modified: Fri, 27 Apr 2018 12:30:13 GMT  
		Size: 309.1 KB (309147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4dcf90b0d347b067cafbe2943010739e37bf6808356f69deb3dc78a601e0fa`  
		Last Modified: Sat, 05 May 2018 15:37:31 GMT  
		Size: 22.6 MB (22595608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4a7e614e9fc6d247851f0235e4f272e4ab8c5e629603e3cb7e7e1c31c7e10f`  
		Last Modified: Sat, 05 May 2018 15:37:26 GMT  
		Size: 1.9 MB (1888922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79859cd2b1071b1cd66ff0bba565ab7286ec33d159c812f637cda28b96b90f97`  
		Last Modified: Fri, 11 May 2018 12:25:44 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9857dcb7ec2f99907ec4b2e9b1654adb54872e4ff3e09c52cad8548b648fcd0`  
		Last Modified: Fri, 11 May 2018 12:25:44 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf6293d703316ea9f71e7a6c68ac350b14ad09e57dd93f182b164da86c1dc45`  
		Last Modified: Fri, 11 May 2018 12:26:04 GMT  
		Size: 83.6 MB (83596429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1281d0ff5ca33daf081b04d9c07b466070a0907593238002d668201709e499`  
		Last Modified: Fri, 11 May 2018 12:25:44 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5-alpine`

```console
$ docker pull plone@sha256:7fbff501b97559ce29e53ae815ea154f96fd73dcd65ad0b762163e8dcda6aeb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:5-alpine` - linux; amd64

```console
$ docker pull plone@sha256:1638083d14b78ebc995b691148d8d0c9f775b3e6db7bf96a57053116a03cd505
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111158640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff29d4f0f8bfa397134a0a77261e79068aa86d110a85da28a0ea977f694abeb8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 00:57:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:44:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:50:17 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:50:18 GMT
RUN apk add --no-cache ca-certificates
# Wed, 06 Jun 2018 03:50:18 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:50:18 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 23:20:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 23:20:08 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 23:20:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 23:20:15 GMT
CMD ["python2"]
# Thu, 07 Jun 2018 02:18:39 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Thu, 07 Jun 2018 02:18:39 GMT
LABEL plone=5.1.1 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 07 Jun 2018 02:18:40 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 07 Jun 2018 02:18:40 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 07 Jun 2018 02:33:13 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 07 Jun 2018 02:33:14 GMT
VOLUME [/data]
# Thu, 07 Jun 2018 02:33:15 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 07 Jun 2018 02:33:15 GMT
EXPOSE 8080/tcp
# Thu, 07 Jun 2018 02:33:15 GMT
WORKDIR /plone/instance
# Thu, 07 Jun 2018 02:33:16 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 07 Jun 2018 02:33:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Jun 2018 02:33:16 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5556c6f99b85c0df8edb29c5e669b77642d250a5a1afcf68b586ea7df18baf8b`  
		Last Modified: Wed, 06 Jun 2018 04:08:14 GMT  
		Size: 308.0 KB (308023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fbc81365bc00f9eb3e0415c20c7868545dd44b7e4085d603ba0813d3eee8c8`  
		Last Modified: Wed, 06 Jun 2018 23:38:40 GMT  
		Size: 23.4 MB (23425471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8780cd8970327cf04c1e4272a6170384475b16b1ae0fe271487792b304a7c2fa`  
		Last Modified: Wed, 06 Jun 2018 23:38:01 GMT  
		Size: 1.9 MB (1892273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e517adae93d7a65f7fdd152ac08cbbc4df3a7575f3fc1017272eaa9be090703a`  
		Last Modified: Thu, 07 Jun 2018 02:33:32 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3817ad9e1715e0c8023ae1ee65c85648bf3871de6b2bfcd4e2124fa12052a53`  
		Last Modified: Thu, 07 Jun 2018 02:33:32 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0fbcc13d064f76c3432bb01885cb9c9578ee681a11b3d7e39b5928ee08e6a`  
		Last Modified: Thu, 07 Jun 2018 02:34:11 GMT  
		Size: 83.5 MB (83463368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb4914ff3210d0973f72bf300735cbe38d7e382ba2d7f21d76bd2d594115c51`  
		Last Modified: Thu, 07 Jun 2018 02:33:32 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5-alpine` - linux; 386

```console
$ docker pull plone@sha256:63dea1146944760111fd5bf2b7207b84ff9c65486ddedb0b80439fa0e4358716
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110511400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adcdbeb44bd183a11aa2b4ae592ffd0793c3c7d89273d656671c55ad22ac120`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 12:28:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 12:28:33 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 13:49:21 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 01 Jun 2018 13:49:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 01 Jun 2018 13:49:22 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 01 Jun 2018 13:49:23 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 07 Jun 2018 11:45:39 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 07 Jun 2018 11:45:40 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Thu, 07 Jun 2018 11:45:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 07 Jun 2018 11:45:46 GMT
CMD ["python2"]
# Thu, 07 Jun 2018 12:32:00 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Thu, 07 Jun 2018 12:32:01 GMT
LABEL plone=5.1.1 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 07 Jun 2018 12:32:01 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 07 Jun 2018 12:32:02 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 07 Jun 2018 12:47:28 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 07 Jun 2018 12:47:30 GMT
VOLUME [/data]
# Thu, 07 Jun 2018 12:47:30 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 07 Jun 2018 12:47:30 GMT
EXPOSE 8080/tcp
# Thu, 07 Jun 2018 12:47:31 GMT
WORKDIR /plone/instance
# Thu, 07 Jun 2018 12:47:31 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 07 Jun 2018 12:47:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Jun 2018 12:47:32 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f02fed3e613737d2a1b63bef7eb645a19ea780cbe1c5f59948c28309ebd53f`  
		Last Modified: Fri, 01 Jun 2018 14:10:54 GMT  
		Size: 308.8 KB (308755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56c8a6a4c9bdbf739cf1c2d6e4bf81172878a35cda6a130c8d0cebe99141d18`  
		Last Modified: Thu, 07 Jun 2018 11:55:38 GMT  
		Size: 23.2 MB (23177530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae31ed4fd77cb7f7a2727b0fd2be27ad51ca0380ccfbdbd4c8747cb96f7df9bb`  
		Last Modified: Thu, 07 Jun 2018 11:55:29 GMT  
		Size: 1.9 MB (1891183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821f478ce87e898feca903269b8e1f3d7d9a8f29b2d5269062f216457ef761ae`  
		Last Modified: Thu, 07 Jun 2018 13:20:25 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7213a4d44a15dc790b7e448f4fcc34387469b4ff5151bccea32dd8a7a023b64e`  
		Last Modified: Thu, 07 Jun 2018 13:20:24 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599f732c28adf4d7a7cc7c7cbcb98b7b01327b1beadbce371e60671dae194974`  
		Last Modified: Thu, 07 Jun 2018 13:21:10 GMT  
		Size: 83.0 MB (83003570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9f2a251998ed16218eaba476a5c750d3184160f8653d0f26c7782f34d6e04b`  
		Last Modified: Thu, 07 Jun 2018 13:20:24 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5-alpine` - linux; s390x

```console
$ docker pull plone@sha256:06bbabca8172490bba5280dab61ee95d097febb49b11a6f4243bfd08e6d85b44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110579487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b25879b4b367bcb749a1cc3ef8aaa5cf354bfcefdaf45da0c0a3225bb5872a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 09:52:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 09:52:30 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 12:20:48 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 27 Apr 2018 12:20:49 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Apr 2018 12:20:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 15:21:24 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 15:23:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 15:23:42 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 15:23:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 15:23:47 GMT
CMD ["python2"]
# Mon, 07 May 2018 21:05:22 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Mon, 07 May 2018 21:05:22 GMT
LABEL plone=5.1.1 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Mon, 07 May 2018 21:05:23 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 08 May 2018 17:23:42 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 08 May 2018 17:38:15 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Tue, 08 May 2018 17:38:18 GMT
VOLUME [/data]
# Tue, 08 May 2018 17:38:19 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Tue, 08 May 2018 17:38:19 GMT
EXPOSE 8080/tcp
# Tue, 08 May 2018 17:38:20 GMT
WORKDIR /plone/instance
# Tue, 08 May 2018 17:38:20 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 08 May 2018 17:38:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 May 2018 17:38:21 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a388b39083aa4dad60cf5c218b95e3b6540985214f7237af35a65d1bbc77445`  
		Last Modified: Fri, 27 Apr 2018 12:30:13 GMT  
		Size: 309.1 KB (309147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4dcf90b0d347b067cafbe2943010739e37bf6808356f69deb3dc78a601e0fa`  
		Last Modified: Sat, 05 May 2018 15:37:31 GMT  
		Size: 22.6 MB (22595608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4a7e614e9fc6d247851f0235e4f272e4ab8c5e629603e3cb7e7e1c31c7e10f`  
		Last Modified: Sat, 05 May 2018 15:37:26 GMT  
		Size: 1.9 MB (1888922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79859cd2b1071b1cd66ff0bba565ab7286ec33d159c812f637cda28b96b90f97`  
		Last Modified: Fri, 11 May 2018 12:25:44 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9857dcb7ec2f99907ec4b2e9b1654adb54872e4ff3e09c52cad8548b648fcd0`  
		Last Modified: Fri, 11 May 2018 12:25:44 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf6293d703316ea9f71e7a6c68ac350b14ad09e57dd93f182b164da86c1dc45`  
		Last Modified: Fri, 11 May 2018 12:26:04 GMT  
		Size: 83.6 MB (83596429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1281d0ff5ca33daf081b04d9c07b466070a0907593238002d668201709e499`  
		Last Modified: Fri, 11 May 2018 12:25:44 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:alpine`

```console
$ docker pull plone@sha256:7fbff501b97559ce29e53ae815ea154f96fd73dcd65ad0b762163e8dcda6aeb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:alpine` - linux; amd64

```console
$ docker pull plone@sha256:1638083d14b78ebc995b691148d8d0c9f775b3e6db7bf96a57053116a03cd505
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111158640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff29d4f0f8bfa397134a0a77261e79068aa86d110a85da28a0ea977f694abeb8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 00:57:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:44:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:50:17 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:50:18 GMT
RUN apk add --no-cache ca-certificates
# Wed, 06 Jun 2018 03:50:18 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:50:18 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 23:20:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 23:20:08 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 23:20:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 23:20:15 GMT
CMD ["python2"]
# Thu, 07 Jun 2018 02:18:39 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Thu, 07 Jun 2018 02:18:39 GMT
LABEL plone=5.1.1 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 07 Jun 2018 02:18:40 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 07 Jun 2018 02:18:40 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 07 Jun 2018 02:33:13 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 07 Jun 2018 02:33:14 GMT
VOLUME [/data]
# Thu, 07 Jun 2018 02:33:15 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 07 Jun 2018 02:33:15 GMT
EXPOSE 8080/tcp
# Thu, 07 Jun 2018 02:33:15 GMT
WORKDIR /plone/instance
# Thu, 07 Jun 2018 02:33:16 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 07 Jun 2018 02:33:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Jun 2018 02:33:16 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5556c6f99b85c0df8edb29c5e669b77642d250a5a1afcf68b586ea7df18baf8b`  
		Last Modified: Wed, 06 Jun 2018 04:08:14 GMT  
		Size: 308.0 KB (308023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fbc81365bc00f9eb3e0415c20c7868545dd44b7e4085d603ba0813d3eee8c8`  
		Last Modified: Wed, 06 Jun 2018 23:38:40 GMT  
		Size: 23.4 MB (23425471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8780cd8970327cf04c1e4272a6170384475b16b1ae0fe271487792b304a7c2fa`  
		Last Modified: Wed, 06 Jun 2018 23:38:01 GMT  
		Size: 1.9 MB (1892273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e517adae93d7a65f7fdd152ac08cbbc4df3a7575f3fc1017272eaa9be090703a`  
		Last Modified: Thu, 07 Jun 2018 02:33:32 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3817ad9e1715e0c8023ae1ee65c85648bf3871de6b2bfcd4e2124fa12052a53`  
		Last Modified: Thu, 07 Jun 2018 02:33:32 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a0fbcc13d064f76c3432bb01885cb9c9578ee681a11b3d7e39b5928ee08e6a`  
		Last Modified: Thu, 07 Jun 2018 02:34:11 GMT  
		Size: 83.5 MB (83463368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb4914ff3210d0973f72bf300735cbe38d7e382ba2d7f21d76bd2d594115c51`  
		Last Modified: Thu, 07 Jun 2018 02:33:32 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:alpine` - linux; 386

```console
$ docker pull plone@sha256:63dea1146944760111fd5bf2b7207b84ff9c65486ddedb0b80439fa0e4358716
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110511400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adcdbeb44bd183a11aa2b4ae592ffd0793c3c7d89273d656671c55ad22ac120`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 12:28:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 12:28:33 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 13:49:21 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 01 Jun 2018 13:49:22 GMT
RUN apk add --no-cache ca-certificates
# Fri, 01 Jun 2018 13:49:22 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 01 Jun 2018 13:49:23 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 07 Jun 2018 11:45:39 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 07 Jun 2018 11:45:40 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Thu, 07 Jun 2018 11:45:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 07 Jun 2018 11:45:46 GMT
CMD ["python2"]
# Thu, 07 Jun 2018 12:32:00 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Thu, 07 Jun 2018 12:32:01 GMT
LABEL plone=5.1.1 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 07 Jun 2018 12:32:01 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 07 Jun 2018 12:32:02 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 07 Jun 2018 12:47:28 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 07 Jun 2018 12:47:30 GMT
VOLUME [/data]
# Thu, 07 Jun 2018 12:47:30 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 07 Jun 2018 12:47:30 GMT
EXPOSE 8080/tcp
# Thu, 07 Jun 2018 12:47:31 GMT
WORKDIR /plone/instance
# Thu, 07 Jun 2018 12:47:31 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 07 Jun 2018 12:47:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Jun 2018 12:47:32 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f02fed3e613737d2a1b63bef7eb645a19ea780cbe1c5f59948c28309ebd53f`  
		Last Modified: Fri, 01 Jun 2018 14:10:54 GMT  
		Size: 308.8 KB (308755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56c8a6a4c9bdbf739cf1c2d6e4bf81172878a35cda6a130c8d0cebe99141d18`  
		Last Modified: Thu, 07 Jun 2018 11:55:38 GMT  
		Size: 23.2 MB (23177530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae31ed4fd77cb7f7a2727b0fd2be27ad51ca0380ccfbdbd4c8747cb96f7df9bb`  
		Last Modified: Thu, 07 Jun 2018 11:55:29 GMT  
		Size: 1.9 MB (1891183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821f478ce87e898feca903269b8e1f3d7d9a8f29b2d5269062f216457ef761ae`  
		Last Modified: Thu, 07 Jun 2018 13:20:25 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7213a4d44a15dc790b7e448f4fcc34387469b4ff5151bccea32dd8a7a023b64e`  
		Last Modified: Thu, 07 Jun 2018 13:20:24 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599f732c28adf4d7a7cc7c7cbcb98b7b01327b1beadbce371e60671dae194974`  
		Last Modified: Thu, 07 Jun 2018 13:21:10 GMT  
		Size: 83.0 MB (83003570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9f2a251998ed16218eaba476a5c750d3184160f8653d0f26c7782f34d6e04b`  
		Last Modified: Thu, 07 Jun 2018 13:20:24 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:alpine` - linux; s390x

```console
$ docker pull plone@sha256:06bbabca8172490bba5280dab61ee95d097febb49b11a6f4243bfd08e6d85b44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110579487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b25879b4b367bcb749a1cc3ef8aaa5cf354bfcefdaf45da0c0a3225bb5872a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 09:52:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 09:52:30 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 12:20:48 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 27 Apr 2018 12:20:49 GMT
RUN apk add --no-cache ca-certificates
# Fri, 27 Apr 2018 12:20:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 15:21:24 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 05 May 2018 15:23:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		libc-dev 		linux-headers 		make 		ncurses-dev 		libressl 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .python-rundeps $runDeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 15:23:42 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 15:23:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 15:23:47 GMT
CMD ["python2"]
# Mon, 07 May 2018 21:05:22 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Mon, 07 May 2018 21:05:22 GMT
LABEL plone=5.1.1 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Mon, 07 May 2018 21:05:23 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 08 May 2018 17:23:42 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 08 May 2018 17:38:15 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Tue, 08 May 2018 17:38:18 GMT
VOLUME [/data]
# Tue, 08 May 2018 17:38:19 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Tue, 08 May 2018 17:38:19 GMT
EXPOSE 8080/tcp
# Tue, 08 May 2018 17:38:20 GMT
WORKDIR /plone/instance
# Tue, 08 May 2018 17:38:20 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 08 May 2018 17:38:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 May 2018 17:38:21 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a388b39083aa4dad60cf5c218b95e3b6540985214f7237af35a65d1bbc77445`  
		Last Modified: Fri, 27 Apr 2018 12:30:13 GMT  
		Size: 309.1 KB (309147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4dcf90b0d347b067cafbe2943010739e37bf6808356f69deb3dc78a601e0fa`  
		Last Modified: Sat, 05 May 2018 15:37:31 GMT  
		Size: 22.6 MB (22595608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4a7e614e9fc6d247851f0235e4f272e4ab8c5e629603e3cb7e7e1c31c7e10f`  
		Last Modified: Sat, 05 May 2018 15:37:26 GMT  
		Size: 1.9 MB (1888922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79859cd2b1071b1cd66ff0bba565ab7286ec33d159c812f637cda28b96b90f97`  
		Last Modified: Fri, 11 May 2018 12:25:44 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9857dcb7ec2f99907ec4b2e9b1654adb54872e4ff3e09c52cad8548b648fcd0`  
		Last Modified: Fri, 11 May 2018 12:25:44 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf6293d703316ea9f71e7a6c68ac350b14ad09e57dd93f182b164da86c1dc45`  
		Last Modified: Fri, 11 May 2018 12:26:04 GMT  
		Size: 83.6 MB (83596429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c1281d0ff5ca33daf081b04d9c07b466070a0907593238002d668201709e499`  
		Last Modified: Fri, 11 May 2018 12:25:44 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:latest`

```console
$ docker pull plone@sha256:9f6547126e52af71472480334d373ed09488146dfce890ec75ddd0504a796cd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:latest` - linux; amd64

```console
$ docker pull plone@sha256:b0ac0006485f1894d25d281841eeb44696aea6cd7be52e95a75e9ccdfb8dfb40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159266665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f474e0dd0ca0257f584351a725c46e7966aea5865ecd4df475d2579e567bc14b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 02:40:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 02:40:32 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 03:32:23 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Jun 2018 03:32:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 03:32:38 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Jun 2018 03:32:38 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Jun 2018 03:35:59 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 06 Jun 2018 03:35:59 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 06 Jun 2018 03:36:13 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Jun 2018 03:36:13 GMT
CMD ["python2"]
# Wed, 06 Jun 2018 22:59:28 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Wed, 06 Jun 2018 22:59:28 GMT
LABEL plone=5.1.1 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 06 Jun 2018 22:59:28 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 06 Jun 2018 22:59:29 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 06 Jun 2018 23:11:53 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 06 Jun 2018 23:11:55 GMT
VOLUME [/data]
# Wed, 06 Jun 2018 23:11:55 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 06 Jun 2018 23:11:55 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 23:11:56 GMT
WORKDIR /plone/instance
# Wed, 06 Jun 2018 23:11:56 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 06 Jun 2018 23:11:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 23:11:56 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2199a29f3047ff634d11deb4d8b6b9998cdf03d82d6d6259bd6e6febc9d2817`  
		Last Modified: Wed, 06 Jun 2018 04:06:00 GMT  
		Size: 3.3 MB (3314898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268f45f063bad479a861ee83d40faf63945aa0d2620e78bb01ee379f539c8ed4`  
		Last Modified: Wed, 06 Jun 2018 04:06:04 GMT  
		Size: 16.3 MB (16340352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349902594a9c15fb7aa6f6dccc727ea118602dade294b23ac861a14cad0bed86`  
		Last Modified: Wed, 06 Jun 2018 04:05:58 GMT  
		Size: 2.1 MB (2067426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c33c69d611fadbe29795fb7e99314572c610a10dee0bd098e0c78390fe41c4`  
		Last Modified: Thu, 07 Jun 2018 00:47:32 GMT  
		Size: 3.9 KB (3888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c59f2468a3f6bfed0d4ad910bd2f5b365807601dedffa46911433d25a1dda3`  
		Last Modified: Thu, 07 Jun 2018 00:47:34 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4719e53665f967ab7b1591f8e2a5f216a9460c8da001f4a3f4cd7dc7592c840d`  
		Last Modified: Thu, 07 Jun 2018 00:48:23 GMT  
		Size: 115.0 MB (115041421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6f51a099608f4ca5cc7d041a94fd093c59d3c0208b361a11e3d5c04ab72a04`  
		Last Modified: Thu, 07 Jun 2018 00:47:32 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; 386

```console
$ docker pull plone@sha256:387062cf0519733424aa3c27fbf3a1b8c321c9f453a1a39be814ab8fd0f0ea2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159251665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44aac69596b98896e8cea1b3aa58ed765cf5cdc4b2d1f7cbec17ea9f300d7649`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Fri, 01 Jun 2018 12:23:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 12:23:37 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 13:29:30 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 01 Jun 2018 13:29:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 13:29:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 01 Jun 2018 13:29:45 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 01 Jun 2018 13:33:31 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 01 Jun 2018 13:33:31 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Fri, 01 Jun 2018 13:33:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 01 Jun 2018 13:33:45 GMT
CMD ["python2"]
# Fri, 01 Jun 2018 17:09:43 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.1 PLONE_MD5=7d881e81b0311559e8009d764e43b192
# Fri, 01 Jun 2018 17:09:43 GMT
LABEL plone=5.1.1 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 01 Jun 2018 17:09:44 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 01 Jun 2018 17:09:44 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Fri, 01 Jun 2018 17:26:47 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 01 Jun 2018 17:26:48 GMT
VOLUME [/data]
# Fri, 01 Jun 2018 17:26:49 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Fri, 01 Jun 2018 17:26:49 GMT
EXPOSE 8080/tcp
# Fri, 01 Jun 2018 17:26:50 GMT
WORKDIR /plone/instance
# Fri, 01 Jun 2018 17:26:50 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 01 Jun 2018 17:26:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Jun 2018 17:26:50 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fae4bc9945362a2475ea24285dbc18144dda259c472fe96ef19b1020999466c`  
		Last Modified: Fri, 01 Jun 2018 14:08:20 GMT  
		Size: 3.4 MB (3363883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7affa8268e88f5870eb4ccd23e5fd423319a7775e74fbb05c641aabe9c1a7213`  
		Last Modified: Fri, 01 Jun 2018 14:08:26 GMT  
		Size: 15.5 MB (15485289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813093d03e0989386fc8c592c1ed68d3c631c7110da49727c84b4c4af56ba73c`  
		Last Modified: Fri, 01 Jun 2018 14:08:21 GMT  
		Size: 2.1 MB (2067246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014d5128783b132c63bbc27195f423f7f1d7a3e3bbddb78a53b920add0e36055`  
		Last Modified: Fri, 01 Jun 2018 18:42:10 GMT  
		Size: 3.9 KB (3881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d90f10b81cbf2555120476e873af45edc5b9506eaedfa5e997bf5a6640e8c1b`  
		Last Modified: Fri, 01 Jun 2018 18:42:09 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bd4e793d6857ca42a63b0f0dd4ea33473671f7154c34cebb12678f9f664f56`  
		Last Modified: Fri, 01 Jun 2018 18:43:08 GMT  
		Size: 115.2 MB (115190203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9155cd0c929ae48b9b5c83b62f79564971be80d94b5285bc6c4ac942b3a7651`  
		Last Modified: Fri, 01 Jun 2018 18:42:10 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
