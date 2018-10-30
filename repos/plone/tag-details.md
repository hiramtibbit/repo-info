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
$ docker pull plone@sha256:551cf8674b3a18a889bf4afa701faf0ce6a371e62ce7184605419533250eba91
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
$ docker pull plone@sha256:9bac0040c711c1a7abf2085464092cd815e4d4731b80584b1d59b938e2e7978b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135094681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87fa1e184c3af5a467cae09e12a6041cd0a26c6dd17e16c0189073f9fbc59b83`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 03:27:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:27:49 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 04:48:48 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 04:49:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 04:49:04 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 04:49:04 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 04:52:05 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 04:52:06 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 04:52:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 04:52:17 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 17:53:47 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 05 Sep 2018 17:53:47 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 17:53:48 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 17:53:48 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 18:01:06 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 18:01:07 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 18:01:08 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Wed, 05 Sep 2018 18:01:08 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 18:01:08 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 18:01:09 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 18:01:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 18:01:09 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b2d5f7ed73c4fd71ea92a844e3f1854b9c54fec8fa82aec312e77e7b805604`  
		Last Modified: Wed, 05 Sep 2018 05:18:55 GMT  
		Size: 2.5 MB (2516913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1073a127cf8978b9b0f42032c0f88afcd4cac60bb4bbb9c39a0e52100fe28a39`  
		Last Modified: Wed, 05 Sep 2018 05:18:58 GMT  
		Size: 17.1 MB (17100575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90283f3dc1cdd1003d7d20e7e57ceb2e0c1403d24c64778bcc532c71eaef557f`  
		Last Modified: Wed, 05 Sep 2018 05:18:54 GMT  
		Size: 2.1 MB (2068491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62beb7b91697da4ceec6a8cf0ec9f1525478d63fba52fb5ee4fac16f8783dc42`  
		Last Modified: Wed, 05 Sep 2018 18:10:20 GMT  
		Size: 3.9 KB (3884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc4625a34287f29c3eb311c7db41ec32fac85656f0c077b1d5f6feef2fbb798`  
		Last Modified: Wed, 05 Sep 2018 18:10:21 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b193c6696e61da9b59fc04170b3534f4d52a6ae34018d85e35bee97473ddd15`  
		Last Modified: Wed, 05 Sep 2018 18:10:41 GMT  
		Size: 90.9 MB (90916206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3581f598a24c8f72eb891c413059816ad9278144d50fe0e4aff59cf86c0a7c08`  
		Last Modified: Wed, 05 Sep 2018 18:10:20 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4` - linux; arm variant v5

```console
$ docker pull plone@sha256:c1d4a1033f75338f82757b1a5a60dd4c3e0dd3c9696bbb042c742c9f52bac892
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126924899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56a358fae546132862dd91676e87f818b030b46cdd21721fb96cdd6bf4f3c776`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:20:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:20:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 11:15:31 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 11:15:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:15:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 11:15:45 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 11:19:21 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 11:19:21 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 11:19:46 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 11:19:46 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 15:07:57 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 05 Sep 2018 15:07:57 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 15:07:59 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 15:08:00 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 15:23:06 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 15:23:08 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 15:23:09 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Wed, 05 Sep 2018 15:23:10 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 15:23:10 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 15:23:11 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 15:23:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:23:12 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7269f056d3d5b16a85965aeb4149129ab0fc3dd77453c7955c15011eb7f9fec3`  
		Last Modified: Wed, 05 Sep 2018 11:42:24 GMT  
		Size: 2.2 MB (2248332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b999803d14943f9deff153205c79187ff70b3a1fe2fc2264c2942f7ff43524`  
		Last Modified: Wed, 05 Sep 2018 11:42:28 GMT  
		Size: 16.6 MB (16551182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9959186b2236bf43c266c9d252cc1101fe9415503c349ef6728ba0637592b19c`  
		Last Modified: Wed, 05 Sep 2018 11:42:24 GMT  
		Size: 2.1 MB (2067852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23036a4305f78acc90d8716850632de2dc5ef76a7ff25b671f315a6b1cec23a8`  
		Last Modified: Wed, 05 Sep 2018 15:24:53 GMT  
		Size: 3.9 KB (3926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895bf78b3b9e966ee8ce5ca4ebcdce169a84c360919ee36be765c368dcd7b4e0`  
		Last Modified: Wed, 05 Sep 2018 15:24:51 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ed89076dbba5762160a542a3768555005772fb5700d43d739c142aa6ca4127`  
		Last Modified: Wed, 05 Sep 2018 15:25:27 GMT  
		Size: 84.9 MB (84888084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e71cd3b9500ef00520b08da34fd847cdd206d26306e006ffbeaa928a38eede3`  
		Last Modified: Wed, 05 Sep 2018 15:24:51 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4` - linux; arm variant v7

```console
$ docker pull plone@sha256:377f5a41516069ee15ecf8b96534deab4239ebe52fc070ada9d506177f0b28b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123265403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0caaef6db7faf72cb2f966e51a486b139debdc37fdcdee411a6e06cfd9946674`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:12:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:12:03 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 16:05:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 16:06:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:06:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 16:06:07 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 16:09:22 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 16:09:22 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 16:09:44 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 16:09:44 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 18:20:38 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 05 Sep 2018 18:20:38 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 18:20:39 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 18:20:40 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 18:34:09 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 18:34:12 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 18:34:17 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Wed, 05 Sep 2018 18:34:18 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 18:34:19 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 18:34:19 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 18:34:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 18:34:21 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6549c83740ca5aef12063b3461b49ccc1cbebfd49a044fc6c03db9c3f6fb83ec`  
		Last Modified: Wed, 05 Sep 2018 16:32:15 GMT  
		Size: 2.2 MB (2169723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2926385d55b7f8de4bb286d6b4f26aa122be08c410f4501f415a40d5c3365deb`  
		Last Modified: Wed, 05 Sep 2018 16:32:19 GMT  
		Size: 16.1 MB (16134334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d57acfdac0a2742f4b066cfe0b1ffded646b735273424232028f17b0965b7a0`  
		Last Modified: Wed, 05 Sep 2018 16:32:15 GMT  
		Size: 2.1 MB (2067847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019a675ee555c5b370e16bdb613e08f7d66b556b3ed60dc8987ad0d791cda704`  
		Last Modified: Wed, 05 Sep 2018 18:36:25 GMT  
		Size: 3.9 KB (3923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2fd4e67e47c827c1e57e2504bacb9075ce281202015e264a164f0cc98e9b10`  
		Last Modified: Wed, 05 Sep 2018 18:36:25 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20513124cda00543861ec73dcfdf6dfc1d81b994bd1b5c09e835117b50482c45`  
		Last Modified: Wed, 05 Sep 2018 18:37:04 GMT  
		Size: 83.6 MB (83616760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2c34191ecb8e8b585a632b003556def7e3f4f7db941a4c50ac6b1be95f43d7`  
		Last Modified: Wed, 05 Sep 2018 18:36:25 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:14007acc4adc2adfb2ec83576924b26c39386ee3621d7d9ba80d433de6091c32
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126058489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a5c3d6ec31d16721d087599c3f0e82a1991f8ae42efe4c4c81ae0743a099d3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 19:55:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 19:55:17 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 21:16:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 21:17:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 21:17:19 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 21:17:20 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 21:27:54 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 21:27:55 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 21:28:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 21:28:50 GMT
CMD ["python2"]
# Thu, 06 Sep 2018 10:04:25 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 06 Sep 2018 10:04:26 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 06 Sep 2018 10:04:30 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 06 Sep 2018 10:04:31 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 06 Sep 2018 10:32:01 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 06 Sep 2018 10:32:35 GMT
VOLUME [/data]
# Thu, 06 Sep 2018 10:32:37 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Thu, 06 Sep 2018 10:32:38 GMT
EXPOSE 8080/tcp
# Thu, 06 Sep 2018 10:32:40 GMT
WORKDIR /plone/instance
# Thu, 06 Sep 2018 10:32:41 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 06 Sep 2018 10:32:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Sep 2018 10:32:43 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ef667fc5927e3c200f89a5d7690020ed5e4e96079722777f963d28307a8c0c`  
		Last Modified: Wed, 05 Sep 2018 21:47:29 GMT  
		Size: 2.2 MB (2225828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41fe74c0fb3d4df36bba1d8142b46fd8b6664d188808341d38ec741204ed90e`  
		Last Modified: Wed, 05 Sep 2018 21:47:36 GMT  
		Size: 16.9 MB (16866232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8fa231ee56770259ccee5057012cfc995df081536517d837d6b49bb28e08eb`  
		Last Modified: Wed, 05 Sep 2018 21:47:29 GMT  
		Size: 2.1 MB (2069134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d63ca4664215f2c53ab03001d74987860d1b115d4f1525cc3ce5cd8646c0946`  
		Last Modified: Thu, 06 Sep 2018 10:38:57 GMT  
		Size: 3.9 KB (3889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007469ae5764d500cda021764a370dc7587def3e56d379c88a8880146fbf84af`  
		Last Modified: Thu, 06 Sep 2018 10:38:58 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af5fa024542ffcc1625c1534381142d34ceca343293413f8b578e3f00961221d`  
		Last Modified: Thu, 06 Sep 2018 10:39:41 GMT  
		Size: 84.6 MB (84559114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381d24bb1662632dd5e6a30392811461787c19d52365a2f9ee50915eb05409e3`  
		Last Modified: Thu, 06 Sep 2018 10:38:58 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4` - linux; 386

```console
$ docker pull plone@sha256:6c4eaae8c148c991f1927ff5f2dd1193638e6a6925ca0720573a2e41ac5bd832
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135246796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e55a240d97215134cef41d45f50601d6accfa494d35c67a8dc299c633241a1d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 22:00:45 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 22:00:45 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 23:07:56 GMT
ENV PYTHONIOENCODING=UTF-8
# Thu, 06 Sep 2018 23:08:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 23:08:05 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 06 Sep 2018 23:08:05 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 06 Sep 2018 23:10:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 06 Sep 2018 23:10:42 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 23:10:55 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 06 Sep 2018 23:10:55 GMT
CMD ["python2"]
# Fri, 07 Sep 2018 08:04:54 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Fri, 07 Sep 2018 08:04:54 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 07 Sep 2018 08:04:55 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 07 Sep 2018 08:04:55 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Fri, 07 Sep 2018 08:12:48 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 07 Sep 2018 08:12:50 GMT
VOLUME [/data]
# Fri, 07 Sep 2018 08:12:50 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 07 Sep 2018 08:12:50 GMT
EXPOSE 8080/tcp
# Fri, 07 Sep 2018 08:12:51 GMT
WORKDIR /plone/instance
# Fri, 07 Sep 2018 08:12:51 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 07 Sep 2018 08:12:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Sep 2018 08:12:51 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472f569a166c1ad135c92a0ace23ba5f20bf0405f97ebb6cb35d86a40f8b1810`  
		Last Modified: Thu, 06 Sep 2018 23:35:04 GMT  
		Size: 2.5 MB (2517315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479ac45e47a67269530904754fc080d3e416d810d8f87866bfcd7df270b893c1`  
		Last Modified: Thu, 06 Sep 2018 23:35:09 GMT  
		Size: 16.3 MB (16297808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d7e02027cf39395cee1de69cec56ef6b589cc15badd13b4200999a1f72f1dd`  
		Last Modified: Thu, 06 Sep 2018 23:35:03 GMT  
		Size: 2.1 MB (2068148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2517945517362007b47860229395b6de82f7fbc04b6731947b7f94a23154fd86`  
		Last Modified: Fri, 07 Sep 2018 08:23:03 GMT  
		Size: 3.9 KB (3880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432ad80dc6a46d7ad8484b4070d8b6ba5f5b5574352da883c3300e831e672ceb`  
		Last Modified: Fri, 07 Sep 2018 08:23:03 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285de498081fae836ad7ce483229ff882d8103ef37065ae912863179f5f63a26`  
		Last Modified: Fri, 07 Sep 2018 08:23:36 GMT  
		Size: 91.2 MB (91230508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a5535686837590cd5743e0f701d9edfdc796d5437241fa81a39bfeed9b5dd2`  
		Last Modified: Fri, 07 Sep 2018 08:23:03 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4` - linux; ppc64le

```console
$ docker pull plone@sha256:1ad008494ec65bba20166d2ce44a6c89211e0539260ea99deb4fe201b3897b8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.2 MB (130170987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da6cfc1cdd37140e3bfbe1e759d02c433198f9e07b94fb401da1f246547a287c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:16:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 13:16:52 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 14:06:05 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 14:06:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:06:25 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 14:06:26 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 14:12:43 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 14:12:45 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 14:13:42 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 14:13:44 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 20:57:41 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 05 Sep 2018 20:57:42 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 20:57:45 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 20:57:45 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 21:12:34 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 21:12:37 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 21:12:38 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Wed, 05 Sep 2018 21:12:39 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 21:12:40 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 21:12:41 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 21:12:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 21:12:43 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c3b44d14c843566c757c9e84bf26ae4ede0e56c6a6d1e6072fe254ae1a02f5`  
		Last Modified: Wed, 05 Sep 2018 15:17:05 GMT  
		Size: 2.2 MB (2181764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:038b6f0e17ec3047bf22cd2f6c867f33da5aeadb73838591464fb7aa425a74ca`  
		Last Modified: Wed, 05 Sep 2018 15:17:13 GMT  
		Size: 17.3 MB (17280804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09f2619ca5221b8451fdcd5f964d9637ccc01b5cf22df48bf3a9f51aadbc969`  
		Last Modified: Wed, 05 Sep 2018 15:17:05 GMT  
		Size: 2.1 MB (2069147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b699e3f030afb08023d2076deb9871bd393c8f20a90ed9fb8dc66ea0ea862327`  
		Last Modified: Wed, 05 Sep 2018 21:14:58 GMT  
		Size: 3.9 KB (3941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7412dc6167fa5a2adefd177d056835f689e07f4d0286994fee7df37655e98f28`  
		Last Modified: Wed, 05 Sep 2018 21:14:58 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de26b233cc0f3f9d2adf1322cbd062a87e3d70bc9028c909662ccbdb0bf817f`  
		Last Modified: Wed, 05 Sep 2018 21:15:27 GMT  
		Size: 85.9 MB (85892148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ba0d138f4d54bb55328867e70a82d9b694d0fd21e6f444e1ccb37308348b5c`  
		Last Modified: Wed, 05 Sep 2018 21:14:58 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3`

```console
$ docker pull plone@sha256:551cf8674b3a18a889bf4afa701faf0ce6a371e62ce7184605419533250eba91
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
$ docker pull plone@sha256:9bac0040c711c1a7abf2085464092cd815e4d4731b80584b1d59b938e2e7978b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135094681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87fa1e184c3af5a467cae09e12a6041cd0a26c6dd17e16c0189073f9fbc59b83`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 03:27:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:27:49 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 04:48:48 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 04:49:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 04:49:04 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 04:49:04 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 04:52:05 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 04:52:06 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 04:52:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 04:52:17 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 17:53:47 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 05 Sep 2018 17:53:47 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 17:53:48 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 17:53:48 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 18:01:06 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 18:01:07 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 18:01:08 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Wed, 05 Sep 2018 18:01:08 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 18:01:08 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 18:01:09 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 18:01:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 18:01:09 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b2d5f7ed73c4fd71ea92a844e3f1854b9c54fec8fa82aec312e77e7b805604`  
		Last Modified: Wed, 05 Sep 2018 05:18:55 GMT  
		Size: 2.5 MB (2516913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1073a127cf8978b9b0f42032c0f88afcd4cac60bb4bbb9c39a0e52100fe28a39`  
		Last Modified: Wed, 05 Sep 2018 05:18:58 GMT  
		Size: 17.1 MB (17100575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90283f3dc1cdd1003d7d20e7e57ceb2e0c1403d24c64778bcc532c71eaef557f`  
		Last Modified: Wed, 05 Sep 2018 05:18:54 GMT  
		Size: 2.1 MB (2068491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62beb7b91697da4ceec6a8cf0ec9f1525478d63fba52fb5ee4fac16f8783dc42`  
		Last Modified: Wed, 05 Sep 2018 18:10:20 GMT  
		Size: 3.9 KB (3884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc4625a34287f29c3eb311c7db41ec32fac85656f0c077b1d5f6feef2fbb798`  
		Last Modified: Wed, 05 Sep 2018 18:10:21 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b193c6696e61da9b59fc04170b3534f4d52a6ae34018d85e35bee97473ddd15`  
		Last Modified: Wed, 05 Sep 2018 18:10:41 GMT  
		Size: 90.9 MB (90916206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3581f598a24c8f72eb891c413059816ad9278144d50fe0e4aff59cf86c0a7c08`  
		Last Modified: Wed, 05 Sep 2018 18:10:20 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3` - linux; arm variant v5

```console
$ docker pull plone@sha256:c1d4a1033f75338f82757b1a5a60dd4c3e0dd3c9696bbb042c742c9f52bac892
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126924899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56a358fae546132862dd91676e87f818b030b46cdd21721fb96cdd6bf4f3c776`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:20:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:20:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 11:15:31 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 11:15:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:15:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 11:15:45 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 11:19:21 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 11:19:21 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 11:19:46 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 11:19:46 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 15:07:57 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 05 Sep 2018 15:07:57 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 15:07:59 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 15:08:00 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 15:23:06 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 15:23:08 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 15:23:09 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Wed, 05 Sep 2018 15:23:10 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 15:23:10 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 15:23:11 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 15:23:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:23:12 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7269f056d3d5b16a85965aeb4149129ab0fc3dd77453c7955c15011eb7f9fec3`  
		Last Modified: Wed, 05 Sep 2018 11:42:24 GMT  
		Size: 2.2 MB (2248332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b999803d14943f9deff153205c79187ff70b3a1fe2fc2264c2942f7ff43524`  
		Last Modified: Wed, 05 Sep 2018 11:42:28 GMT  
		Size: 16.6 MB (16551182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9959186b2236bf43c266c9d252cc1101fe9415503c349ef6728ba0637592b19c`  
		Last Modified: Wed, 05 Sep 2018 11:42:24 GMT  
		Size: 2.1 MB (2067852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23036a4305f78acc90d8716850632de2dc5ef76a7ff25b671f315a6b1cec23a8`  
		Last Modified: Wed, 05 Sep 2018 15:24:53 GMT  
		Size: 3.9 KB (3926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895bf78b3b9e966ee8ce5ca4ebcdce169a84c360919ee36be765c368dcd7b4e0`  
		Last Modified: Wed, 05 Sep 2018 15:24:51 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ed89076dbba5762160a542a3768555005772fb5700d43d739c142aa6ca4127`  
		Last Modified: Wed, 05 Sep 2018 15:25:27 GMT  
		Size: 84.9 MB (84888084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e71cd3b9500ef00520b08da34fd847cdd206d26306e006ffbeaa928a38eede3`  
		Last Modified: Wed, 05 Sep 2018 15:24:51 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3` - linux; arm variant v7

```console
$ docker pull plone@sha256:377f5a41516069ee15ecf8b96534deab4239ebe52fc070ada9d506177f0b28b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123265403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0caaef6db7faf72cb2f966e51a486b139debdc37fdcdee411a6e06cfd9946674`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:12:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:12:03 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 16:05:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 16:06:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:06:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 16:06:07 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 16:09:22 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 16:09:22 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 16:09:44 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 16:09:44 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 18:20:38 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 05 Sep 2018 18:20:38 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 18:20:39 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 18:20:40 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 18:34:09 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 18:34:12 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 18:34:17 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Wed, 05 Sep 2018 18:34:18 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 18:34:19 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 18:34:19 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 18:34:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 18:34:21 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6549c83740ca5aef12063b3461b49ccc1cbebfd49a044fc6c03db9c3f6fb83ec`  
		Last Modified: Wed, 05 Sep 2018 16:32:15 GMT  
		Size: 2.2 MB (2169723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2926385d55b7f8de4bb286d6b4f26aa122be08c410f4501f415a40d5c3365deb`  
		Last Modified: Wed, 05 Sep 2018 16:32:19 GMT  
		Size: 16.1 MB (16134334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d57acfdac0a2742f4b066cfe0b1ffded646b735273424232028f17b0965b7a0`  
		Last Modified: Wed, 05 Sep 2018 16:32:15 GMT  
		Size: 2.1 MB (2067847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019a675ee555c5b370e16bdb613e08f7d66b556b3ed60dc8987ad0d791cda704`  
		Last Modified: Wed, 05 Sep 2018 18:36:25 GMT  
		Size: 3.9 KB (3923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2fd4e67e47c827c1e57e2504bacb9075ce281202015e264a164f0cc98e9b10`  
		Last Modified: Wed, 05 Sep 2018 18:36:25 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20513124cda00543861ec73dcfdf6dfc1d81b994bd1b5c09e835117b50482c45`  
		Last Modified: Wed, 05 Sep 2018 18:37:04 GMT  
		Size: 83.6 MB (83616760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2c34191ecb8e8b585a632b003556def7e3f4f7db941a4c50ac6b1be95f43d7`  
		Last Modified: Wed, 05 Sep 2018 18:36:25 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:14007acc4adc2adfb2ec83576924b26c39386ee3621d7d9ba80d433de6091c32
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126058489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a5c3d6ec31d16721d087599c3f0e82a1991f8ae42efe4c4c81ae0743a099d3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 19:55:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 19:55:17 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 21:16:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 21:17:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 21:17:19 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 21:17:20 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 21:27:54 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 21:27:55 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 21:28:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 21:28:50 GMT
CMD ["python2"]
# Thu, 06 Sep 2018 10:04:25 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 06 Sep 2018 10:04:26 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 06 Sep 2018 10:04:30 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 06 Sep 2018 10:04:31 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 06 Sep 2018 10:32:01 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 06 Sep 2018 10:32:35 GMT
VOLUME [/data]
# Thu, 06 Sep 2018 10:32:37 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Thu, 06 Sep 2018 10:32:38 GMT
EXPOSE 8080/tcp
# Thu, 06 Sep 2018 10:32:40 GMT
WORKDIR /plone/instance
# Thu, 06 Sep 2018 10:32:41 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 06 Sep 2018 10:32:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Sep 2018 10:32:43 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ef667fc5927e3c200f89a5d7690020ed5e4e96079722777f963d28307a8c0c`  
		Last Modified: Wed, 05 Sep 2018 21:47:29 GMT  
		Size: 2.2 MB (2225828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41fe74c0fb3d4df36bba1d8142b46fd8b6664d188808341d38ec741204ed90e`  
		Last Modified: Wed, 05 Sep 2018 21:47:36 GMT  
		Size: 16.9 MB (16866232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8fa231ee56770259ccee5057012cfc995df081536517d837d6b49bb28e08eb`  
		Last Modified: Wed, 05 Sep 2018 21:47:29 GMT  
		Size: 2.1 MB (2069134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d63ca4664215f2c53ab03001d74987860d1b115d4f1525cc3ce5cd8646c0946`  
		Last Modified: Thu, 06 Sep 2018 10:38:57 GMT  
		Size: 3.9 KB (3889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007469ae5764d500cda021764a370dc7587def3e56d379c88a8880146fbf84af`  
		Last Modified: Thu, 06 Sep 2018 10:38:58 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af5fa024542ffcc1625c1534381142d34ceca343293413f8b578e3f00961221d`  
		Last Modified: Thu, 06 Sep 2018 10:39:41 GMT  
		Size: 84.6 MB (84559114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381d24bb1662632dd5e6a30392811461787c19d52365a2f9ee50915eb05409e3`  
		Last Modified: Thu, 06 Sep 2018 10:38:58 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3` - linux; 386

```console
$ docker pull plone@sha256:6c4eaae8c148c991f1927ff5f2dd1193638e6a6925ca0720573a2e41ac5bd832
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135246796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e55a240d97215134cef41d45f50601d6accfa494d35c67a8dc299c633241a1d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 22:00:45 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 22:00:45 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 23:07:56 GMT
ENV PYTHONIOENCODING=UTF-8
# Thu, 06 Sep 2018 23:08:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 23:08:05 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 06 Sep 2018 23:08:05 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 06 Sep 2018 23:10:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 06 Sep 2018 23:10:42 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 23:10:55 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 06 Sep 2018 23:10:55 GMT
CMD ["python2"]
# Fri, 07 Sep 2018 08:04:54 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Fri, 07 Sep 2018 08:04:54 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 07 Sep 2018 08:04:55 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 07 Sep 2018 08:04:55 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Fri, 07 Sep 2018 08:12:48 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 07 Sep 2018 08:12:50 GMT
VOLUME [/data]
# Fri, 07 Sep 2018 08:12:50 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Fri, 07 Sep 2018 08:12:50 GMT
EXPOSE 8080/tcp
# Fri, 07 Sep 2018 08:12:51 GMT
WORKDIR /plone/instance
# Fri, 07 Sep 2018 08:12:51 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 07 Sep 2018 08:12:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Sep 2018 08:12:51 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472f569a166c1ad135c92a0ace23ba5f20bf0405f97ebb6cb35d86a40f8b1810`  
		Last Modified: Thu, 06 Sep 2018 23:35:04 GMT  
		Size: 2.5 MB (2517315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479ac45e47a67269530904754fc080d3e416d810d8f87866bfcd7df270b893c1`  
		Last Modified: Thu, 06 Sep 2018 23:35:09 GMT  
		Size: 16.3 MB (16297808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d7e02027cf39395cee1de69cec56ef6b589cc15badd13b4200999a1f72f1dd`  
		Last Modified: Thu, 06 Sep 2018 23:35:03 GMT  
		Size: 2.1 MB (2068148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2517945517362007b47860229395b6de82f7fbc04b6731947b7f94a23154fd86`  
		Last Modified: Fri, 07 Sep 2018 08:23:03 GMT  
		Size: 3.9 KB (3880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432ad80dc6a46d7ad8484b4070d8b6ba5f5b5574352da883c3300e831e672ceb`  
		Last Modified: Fri, 07 Sep 2018 08:23:03 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285de498081fae836ad7ce483229ff882d8103ef37065ae912863179f5f63a26`  
		Last Modified: Fri, 07 Sep 2018 08:23:36 GMT  
		Size: 91.2 MB (91230508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a5535686837590cd5743e0f701d9edfdc796d5437241fa81a39bfeed9b5dd2`  
		Last Modified: Fri, 07 Sep 2018 08:23:03 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3` - linux; ppc64le

```console
$ docker pull plone@sha256:1ad008494ec65bba20166d2ce44a6c89211e0539260ea99deb4fe201b3897b8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.2 MB (130170987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da6cfc1cdd37140e3bfbe1e759d02c433198f9e07b94fb401da1f246547a287c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:16:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 13:16:52 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 14:06:05 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 14:06:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:06:25 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 14:06:26 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 14:12:43 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 14:12:45 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 14:13:42 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 14:13:44 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 20:57:41 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 05 Sep 2018 20:57:42 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 20:57:45 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 20:57:45 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 21:12:34 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 21:12:37 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 21:12:38 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Wed, 05 Sep 2018 21:12:39 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 21:12:40 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 21:12:41 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 21:12:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 21:12:43 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c3b44d14c843566c757c9e84bf26ae4ede0e56c6a6d1e6072fe254ae1a02f5`  
		Last Modified: Wed, 05 Sep 2018 15:17:05 GMT  
		Size: 2.2 MB (2181764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:038b6f0e17ec3047bf22cd2f6c867f33da5aeadb73838591464fb7aa425a74ca`  
		Last Modified: Wed, 05 Sep 2018 15:17:13 GMT  
		Size: 17.3 MB (17280804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09f2619ca5221b8451fdcd5f964d9637ccc01b5cf22df48bf3a9f51aadbc969`  
		Last Modified: Wed, 05 Sep 2018 15:17:05 GMT  
		Size: 2.1 MB (2069147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b699e3f030afb08023d2076deb9871bd393c8f20a90ed9fb8dc66ea0ea862327`  
		Last Modified: Wed, 05 Sep 2018 21:14:58 GMT  
		Size: 3.9 KB (3941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7412dc6167fa5a2adefd177d056835f689e07f4d0286994fee7df37655e98f28`  
		Last Modified: Wed, 05 Sep 2018 21:14:58 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de26b233cc0f3f9d2adf1322cbd062a87e3d70bc9028c909662ccbdb0bf817f`  
		Last Modified: Wed, 05 Sep 2018 21:15:27 GMT  
		Size: 85.9 MB (85892148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ba0d138f4d54bb55328867e70a82d9b694d0fd21e6f444e1ccb37308348b5c`  
		Last Modified: Wed, 05 Sep 2018 21:14:58 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.18`

**does not exist** (yet?)

## `plone:4.3.18-alpine`

**does not exist** (yet?)

## `plone:4.3-alpine`

```console
$ docker pull plone@sha256:14a12fdd204be1f1ea3cb99917ba429ab6cef1038829006f4b557830fb9d4959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `plone:4.3-alpine` - linux; amd64

```console
$ docker pull plone@sha256:79f73d8262d15d98bf0fb2ad547dc62324f5b7cfaa79b2fae4edcac6299ec566
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.1 MB (82086141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e50bb5e678a5ec46fcb3fe3fda9158f5a62fe2f4b02ce6ea83d3f2821e5e67e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:16:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:10:16 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 02:39:46 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 02:39:47 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 02:39:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 02:39:47 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 02:42:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 02:42:23 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 02:42:31 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 02:42:31 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 05:21:55 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 12 Sep 2018 05:21:56 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 05:21:56 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 05:21:56 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 05:29:40 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 05:29:41 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 05:29:42 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Wed, 12 Sep 2018 05:29:42 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 05:29:42 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 05:29:43 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 05:29:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 05:29:43 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa69c832a12b3a00775c938b0fa6e3ec3b0e007e2ba733fefbb9393ea96d78d`  
		Last Modified: Wed, 12 Sep 2018 02:52:48 GMT  
		Size: 308.3 KB (308310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0581302b23ff94d20dd0e9cca6426fd366af977be616943d196c5fcb2da4fb87`  
		Last Modified: Wed, 12 Sep 2018 02:52:53 GMT  
		Size: 17.7 MB (17678982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807529e1cdfa22e62b78067a1702739683c9f252df30c9b6c82efa385a3d2f0c`  
		Last Modified: Wed, 12 Sep 2018 02:52:47 GMT  
		Size: 1.8 MB (1786365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0024210d87eb85d7726a695f2a2572c5d56b51eaef26f53c15aca2f9d72c8f6`  
		Last Modified: Wed, 12 Sep 2018 05:31:01 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1899208f9e6e30439bfb597af73be930d42e7fbf693641142546cced276c5db7`  
		Last Modified: Wed, 12 Sep 2018 05:31:01 GMT  
		Size: 393.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc81ae7fb8bfa908167bb772d445133e496380137da83af674d2e1b076f89ad`  
		Last Modified: Wed, 12 Sep 2018 05:31:17 GMT  
		Size: 60.2 MB (60201334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25374d395173aec86ce7db02118c4b8b0c5a2980ddf62212f42723bb5b78406d`  
		Last Modified: Wed, 12 Sep 2018 05:31:01 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3-alpine` - linux; arm variant v6

```console
$ docker pull plone@sha256:758bbb5b05354b1dde6e32abae08a05744612b37d639896bffec505a7e71efc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.9 MB (80874068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e2ef4b5d552ec9179fdacd80d639e2f79f866e809e9a60492fc14662853c07`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:08:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 08:08:02 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 08:12:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 08:12:56 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 08:12:56 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 08:12:56 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 15 Sep 2018 09:01:37 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 15 Sep 2018 09:01:37 GMT
ENV PYTHON_PIP_VERSION=18.0
# Sat, 15 Sep 2018 09:01:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 15 Sep 2018 09:01:46 GMT
CMD ["python2"]
# Sat, 15 Sep 2018 10:46:21 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Sat, 15 Sep 2018 10:46:21 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 15 Sep 2018 10:46:22 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Sat, 15 Sep 2018 10:46:23 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Sat, 15 Sep 2018 11:00:31 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 15 Sep 2018 11:00:34 GMT
VOLUME [/data]
# Sat, 15 Sep 2018 11:00:35 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Sat, 15 Sep 2018 11:00:36 GMT
EXPOSE 8080/tcp
# Sat, 15 Sep 2018 11:00:36 GMT
WORKDIR /plone/instance
# Sat, 15 Sep 2018 11:00:37 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 15 Sep 2018 11:00:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 15 Sep 2018 11:00:38 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:c2dacc7b3755044bd80e7edb446986de7cfade7636ea19f3b7eb64e8c88bf3fd`  
		Last Modified: Wed, 12 Sep 2018 07:50:02 GMT  
		Size: 2.1 MB (2051097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684756a9d4ca4d4de310f5d47bb7c15bd0065aa787da5bab1736082d28281370`  
		Last Modified: Wed, 12 Sep 2018 07:50:03 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581fdfa374a7d5a9a240ba2a402d0d4fa5532f656bfb2a595faabd0271272c04`  
		Last Modified: Sat, 15 Sep 2018 09:09:22 GMT  
		Size: 309.1 KB (309094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9aa71339c4bbb227dd61394ab596ebda6b12414fe3b4070f277f81a4bd39e9`  
		Last Modified: Sat, 15 Sep 2018 09:09:29 GMT  
		Size: 16.9 MB (16903322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49e004f40da224e5cfec99c458618b3941de6de7eac4d961c078b72834dd076`  
		Last Modified: Sat, 15 Sep 2018 09:09:22 GMT  
		Size: 1.8 MB (1786600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa64f37b5e245d8e2a1faeeaab10f954fdf22d704812022e442a57d8e0fc8a1`  
		Last Modified: Sat, 15 Sep 2018 11:01:50 GMT  
		Size: 1.4 KB (1393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dd57e12436816c7369fc3cdb7dc666059be89bf8f0571faf3c2fa256664f2b`  
		Last Modified: Sat, 15 Sep 2018 11:01:51 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7a4998e4095d87b67ee500e01949da70d1bed778a39399ecc63730b175eeca`  
		Last Modified: Sat, 15 Sep 2018 11:02:21 GMT  
		Size: 59.8 MB (59819743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb28a7b9380f43c4d88fe32775facdb05c697e35f5bb113f501a70a42a0b7fd7`  
		Last Modified: Sat, 15 Sep 2018 11:01:50 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3-alpine` - linux; 386

```console
$ docker pull plone@sha256:a8d40bfacc5bfddf30f34ec12acf4662d38aaa5275c4c0ceb3d5cdf7e67717bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81300566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d9cc0601936a48f59df915043553e72ca78806147db0318c1e7e977675c4f4`
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
# Wed, 12 Sep 2018 16:48:28 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 16:48:28 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 16:48:34 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 16:48:34 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 19:39:39 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 12 Sep 2018 19:39:40 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 19:39:40 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 19:39:41 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 19:47:50 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 19:47:51 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 19:47:51 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Wed, 12 Sep 2018 19:47:52 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 19:47:52 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 19:47:52 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 19:47:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 19:47:53 GMT
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
	-	`sha256:69c2c302e906d29a443e41c1a2878cea7fc8e72ef98b7923aded9b33e66cec7b`  
		Last Modified: Wed, 12 Sep 2018 16:55:54 GMT  
		Size: 17.1 MB (17111369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda311be054e698f1651066d5cdbe02d4be8b26682316ab0af0cd53f1f3744f6`  
		Last Modified: Wed, 12 Sep 2018 16:55:48 GMT  
		Size: 1.8 MB (1786368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4f48ef72a4bbd1f6e8fb95f7a6374e06dbccde9d3f99221d8686cf298d7495`  
		Last Modified: Wed, 12 Sep 2018 19:48:58 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2322c14fc13fcc899db81c2563410cb9a91eb4027b33435a171ffe10c620bde`  
		Last Modified: Wed, 12 Sep 2018 19:48:59 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:defaaaeeb9e3f1cd54ba8baff6414b9855a8f27d6528417116cb86ae8fae6d88`  
		Last Modified: Wed, 12 Sep 2018 19:49:21 GMT  
		Size: 59.9 MB (59920615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc49264c59bc08491fbeb924db02352b57dc17ff020abc8aac915aeb2f2df89d`  
		Last Modified: Wed, 12 Sep 2018 19:48:59 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3-alpine` - linux; ppc64le

```console
$ docker pull plone@sha256:7a2aa2a54d46b3f58ae339fb075fdf01de65e2a092cfc383fdeb2d08649c2de1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.2 MB (82196342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:130117832e62c25637457566fcc55bba6c4abdba68075e118bb7ced67843fdca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 08:17:46 GMT
ADD file:204b7e967d010d32620f3fdef75c57f75b783f9f06afa192b0041e3b3fc35c94 in / 
# Wed, 12 Sep 2018 08:17:47 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:17:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:43:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:43:25 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 12:24:49 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 12:24:53 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 12:24:55 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 12:24:55 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 12:28:04 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 12:28:07 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 12:28:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 12:28:24 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 15:41:48 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 12 Sep 2018 15:41:49 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 15:41:51 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 15:41:53 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 15:55:21 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 15:55:24 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 15:55:26 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Wed, 12 Sep 2018 15:55:27 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 15:55:29 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 15:55:30 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 15:55:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 15:55:33 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:3a367126dc6775f614e406f6d1d269e4a42319112de1c53a8c08296e58f9057c`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 2.1 MB (2099796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0538d3489283e7e8ac788c74877a7cd871c367157338ac3f124214b7038627`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee742f6eb477f427e16bbe29219cc18672f48df29b6f832e9ddf9e479f57f40`  
		Last Modified: Wed, 12 Sep 2018 12:44:17 GMT  
		Size: 310.9 KB (310876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047d194b283d29be00ec05c487671608d46fd72ddd4202d07a2b7bbd8ae05a4f`  
		Last Modified: Wed, 12 Sep 2018 12:44:29 GMT  
		Size: 17.8 MB (17809555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6d6af138455e6135f579c416ae8b100e97eedf642daf02b335d4401bdd56e1`  
		Last Modified: Wed, 12 Sep 2018 12:44:19 GMT  
		Size: 1.8 MB (1786587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e802de435e00ab18e51bd982eeedb04ba6bfcf6417cf67f7f0974d06a1447e21`  
		Last Modified: Wed, 12 Sep 2018 16:06:18 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5e55b49dfd9d95ab0e7f07000b5f2531cae2de364c736de7986bb05d1e2bf1`  
		Last Modified: Wed, 12 Sep 2018 16:06:18 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798841f35abb53a1ae0497be5f7272c0a43ed3dcb4acf4bc613ed65bbaa84b62`  
		Last Modified: Wed, 12 Sep 2018 16:07:44 GMT  
		Size: 60.2 MB (60185314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576f0231f5fdfa185c59d01f4a176e9ef286485fcdb8de23572570b1f50de7b`  
		Last Modified: Wed, 12 Sep 2018 16:06:18 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3-alpine` - linux; s390x

```console
$ docker pull plone@sha256:73ade3ccd0302d2c521c0296317fcbf03502b17a09bf5c236eca00ed4ae691b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82753524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b514b59436f38c8d9c1c87f8b55544485399d0c583bb3460cf46c508270bd9dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:05 GMT
ADD file:a59da37af8f4febfa87a2102dfdd3a709cbcb545454395455d8892b079d5475a in / 
# Wed, 12 Sep 2018 11:42:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:10 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:27:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 13:27:31 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 13:46:56 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 13:46:57 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 13:46:57 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 13:46:58 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 13:48:34 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 13:48:35 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 13:48:39 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 13:48:39 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 15:38:30 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 12 Sep 2018 15:38:31 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 15:38:31 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 15:38:31 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 15:44:51 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 15:44:53 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 15:44:53 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Wed, 12 Sep 2018 15:44:53 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 15:44:54 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 15:44:54 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 15:44:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 15:44:54 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:6e61c3658cd6273d9aec7222b5e89d66892fed584a6f37e459c0e47646d98af3`  
		Last Modified: Wed, 12 Sep 2018 11:43:16 GMT  
		Size: 2.2 MB (2201183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67fa114a3493b4f57b8c5aa7b2a47b04392c611ccaf495f3e8881a9c33d6c19`  
		Last Modified: Wed, 12 Sep 2018 11:43:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab2a7a5b59ab206adc14218bfc1286568a6224aea6bffd85f2c14c1c4fe2695`  
		Last Modified: Wed, 12 Sep 2018 13:56:26 GMT  
		Size: 309.4 KB (309437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1799be89542da1c3dc356d6d23a7faaca9fbc2f05e62dc1111d384f488ba259d`  
		Last Modified: Wed, 12 Sep 2018 13:56:30 GMT  
		Size: 18.1 MB (18140113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fc9ce2724997f7c182a119861e9824a9846a9ff725f72c6f108a8b6e1b8ae4`  
		Last Modified: Wed, 12 Sep 2018 13:56:27 GMT  
		Size: 1.8 MB (1786345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553093b2a25b2070f7317d9bf06a75eebceccb5c9511d59b7fb4b298ab5a979b`  
		Last Modified: Wed, 12 Sep 2018 15:45:56 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ef2948d493a4c3ad09290b2446547f747582829cf17620d29ff09a89181738`  
		Last Modified: Wed, 12 Sep 2018 15:45:56 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d6cef8ff48b405716c3af111866d0a46af9c9de3479eb64b3002ca7a6bcfa2`  
		Last Modified: Wed, 12 Sep 2018 15:46:11 GMT  
		Size: 60.3 MB (60312295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23cbc1eebffe6e807a6f36f4910b24a59071a66f5a900e5fde1948e91c07ed1f`  
		Last Modified: Wed, 12 Sep 2018 15:45:56 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4-alpine`

```console
$ docker pull plone@sha256:14a12fdd204be1f1ea3cb99917ba429ab6cef1038829006f4b557830fb9d4959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `plone:4-alpine` - linux; amd64

```console
$ docker pull plone@sha256:79f73d8262d15d98bf0fb2ad547dc62324f5b7cfaa79b2fae4edcac6299ec566
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.1 MB (82086141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e50bb5e678a5ec46fcb3fe3fda9158f5a62fe2f4b02ce6ea83d3f2821e5e67e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:16:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:10:16 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 02:39:46 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 02:39:47 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 02:39:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 02:39:47 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 02:42:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 02:42:23 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 02:42:31 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 02:42:31 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 05:21:55 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 12 Sep 2018 05:21:56 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 05:21:56 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 05:21:56 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 05:29:40 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 05:29:41 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 05:29:42 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Wed, 12 Sep 2018 05:29:42 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 05:29:42 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 05:29:43 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 05:29:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 05:29:43 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa69c832a12b3a00775c938b0fa6e3ec3b0e007e2ba733fefbb9393ea96d78d`  
		Last Modified: Wed, 12 Sep 2018 02:52:48 GMT  
		Size: 308.3 KB (308310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0581302b23ff94d20dd0e9cca6426fd366af977be616943d196c5fcb2da4fb87`  
		Last Modified: Wed, 12 Sep 2018 02:52:53 GMT  
		Size: 17.7 MB (17678982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807529e1cdfa22e62b78067a1702739683c9f252df30c9b6c82efa385a3d2f0c`  
		Last Modified: Wed, 12 Sep 2018 02:52:47 GMT  
		Size: 1.8 MB (1786365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0024210d87eb85d7726a695f2a2572c5d56b51eaef26f53c15aca2f9d72c8f6`  
		Last Modified: Wed, 12 Sep 2018 05:31:01 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1899208f9e6e30439bfb597af73be930d42e7fbf693641142546cced276c5db7`  
		Last Modified: Wed, 12 Sep 2018 05:31:01 GMT  
		Size: 393.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc81ae7fb8bfa908167bb772d445133e496380137da83af674d2e1b076f89ad`  
		Last Modified: Wed, 12 Sep 2018 05:31:17 GMT  
		Size: 60.2 MB (60201334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25374d395173aec86ce7db02118c4b8b0c5a2980ddf62212f42723bb5b78406d`  
		Last Modified: Wed, 12 Sep 2018 05:31:01 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4-alpine` - linux; arm variant v6

```console
$ docker pull plone@sha256:758bbb5b05354b1dde6e32abae08a05744612b37d639896bffec505a7e71efc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.9 MB (80874068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e2ef4b5d552ec9179fdacd80d639e2f79f866e809e9a60492fc14662853c07`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:08:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 08:08:02 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 08:12:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 08:12:56 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 08:12:56 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 08:12:56 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 15 Sep 2018 09:01:37 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 15 Sep 2018 09:01:37 GMT
ENV PYTHON_PIP_VERSION=18.0
# Sat, 15 Sep 2018 09:01:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 15 Sep 2018 09:01:46 GMT
CMD ["python2"]
# Sat, 15 Sep 2018 10:46:21 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Sat, 15 Sep 2018 10:46:21 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 15 Sep 2018 10:46:22 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Sat, 15 Sep 2018 10:46:23 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Sat, 15 Sep 2018 11:00:31 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Sat, 15 Sep 2018 11:00:34 GMT
VOLUME [/data]
# Sat, 15 Sep 2018 11:00:35 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Sat, 15 Sep 2018 11:00:36 GMT
EXPOSE 8080/tcp
# Sat, 15 Sep 2018 11:00:36 GMT
WORKDIR /plone/instance
# Sat, 15 Sep 2018 11:00:37 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 15 Sep 2018 11:00:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 15 Sep 2018 11:00:38 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:c2dacc7b3755044bd80e7edb446986de7cfade7636ea19f3b7eb64e8c88bf3fd`  
		Last Modified: Wed, 12 Sep 2018 07:50:02 GMT  
		Size: 2.1 MB (2051097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684756a9d4ca4d4de310f5d47bb7c15bd0065aa787da5bab1736082d28281370`  
		Last Modified: Wed, 12 Sep 2018 07:50:03 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581fdfa374a7d5a9a240ba2a402d0d4fa5532f656bfb2a595faabd0271272c04`  
		Last Modified: Sat, 15 Sep 2018 09:09:22 GMT  
		Size: 309.1 KB (309094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9aa71339c4bbb227dd61394ab596ebda6b12414fe3b4070f277f81a4bd39e9`  
		Last Modified: Sat, 15 Sep 2018 09:09:29 GMT  
		Size: 16.9 MB (16903322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49e004f40da224e5cfec99c458618b3941de6de7eac4d961c078b72834dd076`  
		Last Modified: Sat, 15 Sep 2018 09:09:22 GMT  
		Size: 1.8 MB (1786600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa64f37b5e245d8e2a1faeeaab10f954fdf22d704812022e442a57d8e0fc8a1`  
		Last Modified: Sat, 15 Sep 2018 11:01:50 GMT  
		Size: 1.4 KB (1393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dd57e12436816c7369fc3cdb7dc666059be89bf8f0571faf3c2fa256664f2b`  
		Last Modified: Sat, 15 Sep 2018 11:01:51 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7a4998e4095d87b67ee500e01949da70d1bed778a39399ecc63730b175eeca`  
		Last Modified: Sat, 15 Sep 2018 11:02:21 GMT  
		Size: 59.8 MB (59819743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb28a7b9380f43c4d88fe32775facdb05c697e35f5bb113f501a70a42a0b7fd7`  
		Last Modified: Sat, 15 Sep 2018 11:01:50 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4-alpine` - linux; 386

```console
$ docker pull plone@sha256:a8d40bfacc5bfddf30f34ec12acf4662d38aaa5275c4c0ceb3d5cdf7e67717bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81300566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d9cc0601936a48f59df915043553e72ca78806147db0318c1e7e977675c4f4`
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
# Wed, 12 Sep 2018 16:48:28 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 16:48:28 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 16:48:34 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 16:48:34 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 19:39:39 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 12 Sep 2018 19:39:40 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 19:39:40 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 19:39:41 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 19:47:50 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 19:47:51 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 19:47:51 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Wed, 12 Sep 2018 19:47:52 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 19:47:52 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 19:47:52 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 19:47:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 19:47:53 GMT
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
	-	`sha256:69c2c302e906d29a443e41c1a2878cea7fc8e72ef98b7923aded9b33e66cec7b`  
		Last Modified: Wed, 12 Sep 2018 16:55:54 GMT  
		Size: 17.1 MB (17111369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda311be054e698f1651066d5cdbe02d4be8b26682316ab0af0cd53f1f3744f6`  
		Last Modified: Wed, 12 Sep 2018 16:55:48 GMT  
		Size: 1.8 MB (1786368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4f48ef72a4bbd1f6e8fb95f7a6374e06dbccde9d3f99221d8686cf298d7495`  
		Last Modified: Wed, 12 Sep 2018 19:48:58 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2322c14fc13fcc899db81c2563410cb9a91eb4027b33435a171ffe10c620bde`  
		Last Modified: Wed, 12 Sep 2018 19:48:59 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:defaaaeeb9e3f1cd54ba8baff6414b9855a8f27d6528417116cb86ae8fae6d88`  
		Last Modified: Wed, 12 Sep 2018 19:49:21 GMT  
		Size: 59.9 MB (59920615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc49264c59bc08491fbeb924db02352b57dc17ff020abc8aac915aeb2f2df89d`  
		Last Modified: Wed, 12 Sep 2018 19:48:59 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4-alpine` - linux; ppc64le

```console
$ docker pull plone@sha256:7a2aa2a54d46b3f58ae339fb075fdf01de65e2a092cfc383fdeb2d08649c2de1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.2 MB (82196342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:130117832e62c25637457566fcc55bba6c4abdba68075e118bb7ced67843fdca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 08:17:46 GMT
ADD file:204b7e967d010d32620f3fdef75c57f75b783f9f06afa192b0041e3b3fc35c94 in / 
# Wed, 12 Sep 2018 08:17:47 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:17:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:43:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:43:25 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 12:24:49 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 12:24:53 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 12:24:55 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 12:24:55 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 12:28:04 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 12:28:07 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 12:28:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 12:28:24 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 15:41:48 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 12 Sep 2018 15:41:49 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 15:41:51 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 15:41:53 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 15:55:21 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 15:55:24 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 15:55:26 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Wed, 12 Sep 2018 15:55:27 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 15:55:29 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 15:55:30 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 15:55:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 15:55:33 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:3a367126dc6775f614e406f6d1d269e4a42319112de1c53a8c08296e58f9057c`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 2.1 MB (2099796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0538d3489283e7e8ac788c74877a7cd871c367157338ac3f124214b7038627`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee742f6eb477f427e16bbe29219cc18672f48df29b6f832e9ddf9e479f57f40`  
		Last Modified: Wed, 12 Sep 2018 12:44:17 GMT  
		Size: 310.9 KB (310876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047d194b283d29be00ec05c487671608d46fd72ddd4202d07a2b7bbd8ae05a4f`  
		Last Modified: Wed, 12 Sep 2018 12:44:29 GMT  
		Size: 17.8 MB (17809555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6d6af138455e6135f579c416ae8b100e97eedf642daf02b335d4401bdd56e1`  
		Last Modified: Wed, 12 Sep 2018 12:44:19 GMT  
		Size: 1.8 MB (1786587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e802de435e00ab18e51bd982eeedb04ba6bfcf6417cf67f7f0974d06a1447e21`  
		Last Modified: Wed, 12 Sep 2018 16:06:18 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5e55b49dfd9d95ab0e7f07000b5f2531cae2de364c736de7986bb05d1e2bf1`  
		Last Modified: Wed, 12 Sep 2018 16:06:18 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798841f35abb53a1ae0497be5f7272c0a43ed3dcb4acf4bc613ed65bbaa84b62`  
		Last Modified: Wed, 12 Sep 2018 16:07:44 GMT  
		Size: 60.2 MB (60185314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576f0231f5fdfa185c59d01f4a176e9ef286485fcdb8de23572570b1f50de7b`  
		Last Modified: Wed, 12 Sep 2018 16:06:18 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4-alpine` - linux; s390x

```console
$ docker pull plone@sha256:73ade3ccd0302d2c521c0296317fcbf03502b17a09bf5c236eca00ed4ae691b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82753524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b514b59436f38c8d9c1c87f8b55544485399d0c583bb3460cf46c508270bd9dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:05 GMT
ADD file:a59da37af8f4febfa87a2102dfdd3a709cbcb545454395455d8892b079d5475a in / 
# Wed, 12 Sep 2018 11:42:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:10 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:27:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 13:27:31 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 13:46:56 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 13:46:57 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 13:46:57 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 13:46:58 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 13:48:34 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 13:48:35 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 13:48:39 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 13:48:39 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 15:38:30 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 12 Sep 2018 15:38:31 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 15:38:31 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 15:38:31 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 15:44:51 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 15:44:53 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 15:44:53 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Wed, 12 Sep 2018 15:44:53 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 15:44:54 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 15:44:54 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 15:44:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 15:44:54 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:6e61c3658cd6273d9aec7222b5e89d66892fed584a6f37e459c0e47646d98af3`  
		Last Modified: Wed, 12 Sep 2018 11:43:16 GMT  
		Size: 2.2 MB (2201183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67fa114a3493b4f57b8c5aa7b2a47b04392c611ccaf495f3e8881a9c33d6c19`  
		Last Modified: Wed, 12 Sep 2018 11:43:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab2a7a5b59ab206adc14218bfc1286568a6224aea6bffd85f2c14c1c4fe2695`  
		Last Modified: Wed, 12 Sep 2018 13:56:26 GMT  
		Size: 309.4 KB (309437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1799be89542da1c3dc356d6d23a7faaca9fbc2f05e62dc1111d384f488ba259d`  
		Last Modified: Wed, 12 Sep 2018 13:56:30 GMT  
		Size: 18.1 MB (18140113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fc9ce2724997f7c182a119861e9824a9846a9ff725f72c6f108a8b6e1b8ae4`  
		Last Modified: Wed, 12 Sep 2018 13:56:27 GMT  
		Size: 1.8 MB (1786345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553093b2a25b2070f7317d9bf06a75eebceccb5c9511d59b7fb4b298ab5a979b`  
		Last Modified: Wed, 12 Sep 2018 15:45:56 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ef2948d493a4c3ad09290b2446547f747582829cf17620d29ff09a89181738`  
		Last Modified: Wed, 12 Sep 2018 15:45:56 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d6cef8ff48b405716c3af111866d0a46af9c9de3479eb64b3002ca7a6bcfa2`  
		Last Modified: Wed, 12 Sep 2018 15:46:11 GMT  
		Size: 60.3 MB (60312295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23cbc1eebffe6e807a6f36f4910b24a59071a66f5a900e5fde1948e91c07ed1f`  
		Last Modified: Wed, 12 Sep 2018 15:45:56 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5`

```console
$ docker pull plone@sha256:e858929619abec77d8ae86a76a930408cd35a194c7fdc4c91b96dd5fd1f582bf
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
$ docker pull plone@sha256:6b2356c6c819083b6e9f77d48ad5e7f038e30f7970cd1feac9487c647b5018b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160424641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ba2713a25fdb19d54986f5d567a56098a87889d80c8d629e0bb04d10b3de5a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 03:27:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:27:49 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 04:48:48 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 04:49:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 04:49:04 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 04:49:04 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 04:52:05 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 04:52:06 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 04:52:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 04:52:17 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 17:38:48 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 05 Sep 2018 17:38:48 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 17:38:49 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 17:38:49 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 17:44:38 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 17:44:39 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 17:44:40 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 05 Sep 2018 17:44:40 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 17:44:40 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 17:44:41 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 17:44:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 17:44:41 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b2d5f7ed73c4fd71ea92a844e3f1854b9c54fec8fa82aec312e77e7b805604`  
		Last Modified: Wed, 05 Sep 2018 05:18:55 GMT  
		Size: 2.5 MB (2516913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1073a127cf8978b9b0f42032c0f88afcd4cac60bb4bbb9c39a0e52100fe28a39`  
		Last Modified: Wed, 05 Sep 2018 05:18:58 GMT  
		Size: 17.1 MB (17100575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90283f3dc1cdd1003d7d20e7e57ceb2e0c1403d24c64778bcc532c71eaef557f`  
		Last Modified: Wed, 05 Sep 2018 05:18:54 GMT  
		Size: 2.1 MB (2068491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c6296c2cc3bd54ea1f1a0bea02617fdbe393d799dea2a761a4b6e9f001fde2`  
		Last Modified: Wed, 05 Sep 2018 18:08:49 GMT  
		Size: 3.9 KB (3886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162da4aaaeae4ae309965233cb023ad52461266a62dcbf65eee918a1fdb10cc2`  
		Last Modified: Wed, 05 Sep 2018 18:08:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911916f3ce5b50501955e8b9135c2c224b3f1e937636d58169e3899d4430637f`  
		Last Modified: Wed, 05 Sep 2018 18:09:15 GMT  
		Size: 116.2 MB (116246159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9885bf286168449882b6f11d814123f702b96a30c1e3364d85588fb49024b09`  
		Last Modified: Wed, 05 Sep 2018 18:08:49 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5` - linux; arm variant v5

```console
$ docker pull plone@sha256:32122ea57d0cea909e91edc946f6b15c8d98b0c18dd4c15e1dd7ccedd93999ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.3 MB (151318229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8732e2d1b6519584676353668299968198b549e67f7e0929bf9b5a813fd17328`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:20:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:20:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 11:15:31 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 11:15:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:15:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 11:15:45 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 11:19:21 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 11:19:21 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 11:19:46 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 11:19:46 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 14:51:49 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 05 Sep 2018 14:51:50 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 14:51:51 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 14:51:52 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 15:07:34 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 15:07:37 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 15:07:38 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 05 Sep 2018 15:07:38 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 15:07:39 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 15:07:39 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 15:07:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:07:40 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7269f056d3d5b16a85965aeb4149129ab0fc3dd77453c7955c15011eb7f9fec3`  
		Last Modified: Wed, 05 Sep 2018 11:42:24 GMT  
		Size: 2.2 MB (2248332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b999803d14943f9deff153205c79187ff70b3a1fe2fc2264c2942f7ff43524`  
		Last Modified: Wed, 05 Sep 2018 11:42:28 GMT  
		Size: 16.6 MB (16551182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9959186b2236bf43c266c9d252cc1101fe9415503c349ef6728ba0637592b19c`  
		Last Modified: Wed, 05 Sep 2018 11:42:24 GMT  
		Size: 2.1 MB (2067852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dd93397241179c4c9d8a516c762554cdd6b068504f7bd217c120bc629e7879e`  
		Last Modified: Wed, 05 Sep 2018 15:23:37 GMT  
		Size: 3.9 KB (3926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6772e34090c9feaac6fdaf06d09a11ef49a4a0a64526da8cc562791b7ec2134`  
		Last Modified: Wed, 05 Sep 2018 15:23:36 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7186d9aadadeeafd2adfeff5b42a31c1244a1758290ed181b5dc8ee9478446a9`  
		Last Modified: Wed, 05 Sep 2018 15:24:17 GMT  
		Size: 109.3 MB (109281413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7202df7975ccd93fc13fbb47cd4e1b3a434c6ace4dc7f71bd662288587b914e5`  
		Last Modified: Wed, 05 Sep 2018 15:23:36 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5` - linux; arm variant v7

```console
$ docker pull plone@sha256:0ced9b4cd3014005f6bc23018c6a51171ea6c1f6295190b364cad9ff7c2ea84c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147620455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3d0c788ca371b8cb65336311eb42fd71dcd0a5e56da7faff61981979984ffe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:12:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:12:03 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 16:05:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 16:06:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:06:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 16:06:07 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 16:09:22 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 16:09:22 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 16:09:44 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 16:09:44 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 18:06:02 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 05 Sep 2018 18:06:03 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 18:06:04 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 18:06:04 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 18:20:22 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 18:20:24 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 18:20:25 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 05 Sep 2018 18:20:26 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 18:20:26 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 18:20:27 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 18:20:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 18:20:28 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6549c83740ca5aef12063b3461b49ccc1cbebfd49a044fc6c03db9c3f6fb83ec`  
		Last Modified: Wed, 05 Sep 2018 16:32:15 GMT  
		Size: 2.2 MB (2169723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2926385d55b7f8de4bb286d6b4f26aa122be08c410f4501f415a40d5c3365deb`  
		Last Modified: Wed, 05 Sep 2018 16:32:19 GMT  
		Size: 16.1 MB (16134334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d57acfdac0a2742f4b066cfe0b1ffded646b735273424232028f17b0965b7a0`  
		Last Modified: Wed, 05 Sep 2018 16:32:15 GMT  
		Size: 2.1 MB (2067847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ae240ae032a64df85ec2ea19186ae8a2f85c1007e0cbcb8fbd412af6de635c`  
		Last Modified: Wed, 05 Sep 2018 18:34:50 GMT  
		Size: 3.9 KB (3928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232cb91c5cb544dd448a5345552001d8ea449fe6d7a52707c0b332163abdcc32`  
		Last Modified: Wed, 05 Sep 2018 18:34:49 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58d355b746552cdbe5294d406dcdfb229d306affe1d9fa3a456dfac15f33c1d`  
		Last Modified: Wed, 05 Sep 2018 18:35:34 GMT  
		Size: 108.0 MB (107971805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfdcc7a93174c2c0ed4187b4420ad2d5fe1066eeba028eb07c83a352c38b436`  
		Last Modified: Wed, 05 Sep 2018 18:34:50 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:875c39427ea492d71e8394479fd929adb5169db3ae7acbf5e34335c595c4f4ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150268184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5b2e5c5cc99d8f4525549d3651ccd2e16ca744e7b69f09feb92d2c5576c311`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 19:55:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 19:55:17 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 21:16:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 21:17:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 21:17:19 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 21:17:20 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 21:27:54 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 21:27:55 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 21:28:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 21:28:50 GMT
CMD ["python2"]
# Thu, 06 Sep 2018 09:31:22 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Thu, 06 Sep 2018 09:31:23 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 06 Sep 2018 09:31:26 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 06 Sep 2018 09:31:49 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 06 Sep 2018 10:02:02 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 06 Sep 2018 10:02:06 GMT
VOLUME [/data]
# Thu, 06 Sep 2018 10:02:08 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Thu, 06 Sep 2018 10:02:10 GMT
EXPOSE 8080/tcp
# Thu, 06 Sep 2018 10:02:11 GMT
WORKDIR /plone/instance
# Thu, 06 Sep 2018 10:02:13 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 06 Sep 2018 10:02:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Sep 2018 10:02:15 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ef667fc5927e3c200f89a5d7690020ed5e4e96079722777f963d28307a8c0c`  
		Last Modified: Wed, 05 Sep 2018 21:47:29 GMT  
		Size: 2.2 MB (2225828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41fe74c0fb3d4df36bba1d8142b46fd8b6664d188808341d38ec741204ed90e`  
		Last Modified: Wed, 05 Sep 2018 21:47:36 GMT  
		Size: 16.9 MB (16866232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8fa231ee56770259ccee5057012cfc995df081536517d837d6b49bb28e08eb`  
		Last Modified: Wed, 05 Sep 2018 21:47:29 GMT  
		Size: 2.1 MB (2069134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d97a8e993ff2625349fd10898fdede73342f283240f95516fc4294428d86c01`  
		Last Modified: Thu, 06 Sep 2018 10:36:00 GMT  
		Size: 3.9 KB (3889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da613039d7f1f6f4ef169b582f1005b0d676f0a3a0d6712ec2818bbd9438571`  
		Last Modified: Thu, 06 Sep 2018 10:35:58 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d032c180a2ec2a79700d1f47dfb4c0d069789e6a6ca1e3bdbfd1b837ccf0d106`  
		Last Modified: Thu, 06 Sep 2018 10:36:50 GMT  
		Size: 108.8 MB (108768808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17571133f67b2b8d92ef7ee3b43640d263485aba098cceaae195b2e7b2b31d9`  
		Last Modified: Thu, 06 Sep 2018 10:35:59 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5` - linux; 386

```console
$ docker pull plone@sha256:98a08f2589d7e68d6435c7ad0c0d2d4015abd2d6a7d32d537ed3f2185a61684b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160417120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fdcb53563d79fc93ada6dc82f4ef3db0bd416d03cfb373e5b084d738f6a1994`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 22:00:45 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 22:00:45 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 23:07:56 GMT
ENV PYTHONIOENCODING=UTF-8
# Thu, 06 Sep 2018 23:08:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 23:08:05 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 06 Sep 2018 23:08:05 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 06 Sep 2018 23:10:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 06 Sep 2018 23:10:42 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 23:10:55 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 06 Sep 2018 23:10:55 GMT
CMD ["python2"]
# Fri, 07 Sep 2018 07:49:41 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Fri, 07 Sep 2018 07:49:41 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 07 Sep 2018 07:49:42 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 07 Sep 2018 07:49:42 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Fri, 07 Sep 2018 07:55:32 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 07 Sep 2018 07:55:33 GMT
VOLUME [/data]
# Fri, 07 Sep 2018 07:55:34 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Fri, 07 Sep 2018 07:55:34 GMT
EXPOSE 8080/tcp
# Fri, 07 Sep 2018 07:55:34 GMT
WORKDIR /plone/instance
# Fri, 07 Sep 2018 07:55:34 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 07 Sep 2018 07:55:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Sep 2018 07:55:35 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472f569a166c1ad135c92a0ace23ba5f20bf0405f97ebb6cb35d86a40f8b1810`  
		Last Modified: Thu, 06 Sep 2018 23:35:04 GMT  
		Size: 2.5 MB (2517315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479ac45e47a67269530904754fc080d3e416d810d8f87866bfcd7df270b893c1`  
		Last Modified: Thu, 06 Sep 2018 23:35:09 GMT  
		Size: 16.3 MB (16297808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d7e02027cf39395cee1de69cec56ef6b589cc15badd13b4200999a1f72f1dd`  
		Last Modified: Thu, 06 Sep 2018 23:35:03 GMT  
		Size: 2.1 MB (2068148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7100336f7ec11ea162e6c166eb9f0a04d3644397e05d13f2c317730d395e75ee`  
		Last Modified: Fri, 07 Sep 2018 08:21:29 GMT  
		Size: 3.9 KB (3878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2922366590d39d8897753a413dfcf2ff501c787655b35fa89d324a3ae9f1a904`  
		Last Modified: Fri, 07 Sep 2018 08:21:29 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8894617f714da8a61bb279f1f9cbded3fc06addd43ae61aa8606a461b0b14b8e`  
		Last Modified: Fri, 07 Sep 2018 08:22:03 GMT  
		Size: 116.4 MB (116400830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60954e7f37a55b48f7b411bf90387ce6e594d177de1824c2afdd58834cbbb9e8`  
		Last Modified: Fri, 07 Sep 2018 08:21:29 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5` - linux; ppc64le

```console
$ docker pull plone@sha256:fbac8edc3d4164284d46a5be13d8786844be42575a2e7c0ad6239f9c70d575de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.4 MB (154432704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97d2d9b03ca720c84f5367a205e64c13d8bb7ccedd335fe442a4ace3f21d409c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:16:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 13:16:52 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 14:06:05 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 14:06:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:06:25 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 14:06:26 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 14:12:43 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 14:12:45 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 14:13:42 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 14:13:44 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 20:39:21 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 05 Sep 2018 20:39:22 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 20:39:24 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 20:39:31 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 20:56:36 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 20:56:40 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 20:56:46 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 05 Sep 2018 20:56:47 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 20:56:48 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 20:56:49 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 20:56:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 20:56:51 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c3b44d14c843566c757c9e84bf26ae4ede0e56c6a6d1e6072fe254ae1a02f5`  
		Last Modified: Wed, 05 Sep 2018 15:17:05 GMT  
		Size: 2.2 MB (2181764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:038b6f0e17ec3047bf22cd2f6c867f33da5aeadb73838591464fb7aa425a74ca`  
		Last Modified: Wed, 05 Sep 2018 15:17:13 GMT  
		Size: 17.3 MB (17280804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09f2619ca5221b8451fdcd5f964d9637ccc01b5cf22df48bf3a9f51aadbc969`  
		Last Modified: Wed, 05 Sep 2018 15:17:05 GMT  
		Size: 2.1 MB (2069147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a690b52c3b4053d74b6c0189cec3cce88d2f82840e84eec0d08f9e1ffaf7bb0e`  
		Last Modified: Wed, 05 Sep 2018 21:13:40 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cc0d047dbaa553853f482547fa9f92d73d869bae2b7e32ba4cb505497f58a6`  
		Last Modified: Wed, 05 Sep 2018 21:13:39 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e9343aa09c9bf8a752ad1db2e10baae4cc52e57bcfa170bd5e1ee4417362a3`  
		Last Modified: Wed, 05 Sep 2018 21:14:16 GMT  
		Size: 110.2 MB (110153860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c38bf52c570af432ae738ceb0dce49dd702d8ab253170e7075936a83e4ea9c`  
		Last Modified: Wed, 05 Sep 2018 21:13:40 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1`

```console
$ docker pull plone@sha256:e858929619abec77d8ae86a76a930408cd35a194c7fdc4c91b96dd5fd1f582bf
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
$ docker pull plone@sha256:6b2356c6c819083b6e9f77d48ad5e7f038e30f7970cd1feac9487c647b5018b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160424641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ba2713a25fdb19d54986f5d567a56098a87889d80c8d629e0bb04d10b3de5a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 03:27:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:27:49 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 04:48:48 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 04:49:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 04:49:04 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 04:49:04 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 04:52:05 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 04:52:06 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 04:52:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 04:52:17 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 17:38:48 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 05 Sep 2018 17:38:48 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 17:38:49 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 17:38:49 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 17:44:38 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 17:44:39 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 17:44:40 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 05 Sep 2018 17:44:40 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 17:44:40 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 17:44:41 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 17:44:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 17:44:41 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b2d5f7ed73c4fd71ea92a844e3f1854b9c54fec8fa82aec312e77e7b805604`  
		Last Modified: Wed, 05 Sep 2018 05:18:55 GMT  
		Size: 2.5 MB (2516913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1073a127cf8978b9b0f42032c0f88afcd4cac60bb4bbb9c39a0e52100fe28a39`  
		Last Modified: Wed, 05 Sep 2018 05:18:58 GMT  
		Size: 17.1 MB (17100575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90283f3dc1cdd1003d7d20e7e57ceb2e0c1403d24c64778bcc532c71eaef557f`  
		Last Modified: Wed, 05 Sep 2018 05:18:54 GMT  
		Size: 2.1 MB (2068491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c6296c2cc3bd54ea1f1a0bea02617fdbe393d799dea2a761a4b6e9f001fde2`  
		Last Modified: Wed, 05 Sep 2018 18:08:49 GMT  
		Size: 3.9 KB (3886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162da4aaaeae4ae309965233cb023ad52461266a62dcbf65eee918a1fdb10cc2`  
		Last Modified: Wed, 05 Sep 2018 18:08:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911916f3ce5b50501955e8b9135c2c224b3f1e937636d58169e3899d4430637f`  
		Last Modified: Wed, 05 Sep 2018 18:09:15 GMT  
		Size: 116.2 MB (116246159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9885bf286168449882b6f11d814123f702b96a30c1e3364d85588fb49024b09`  
		Last Modified: Wed, 05 Sep 2018 18:08:49 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1` - linux; arm variant v5

```console
$ docker pull plone@sha256:32122ea57d0cea909e91edc946f6b15c8d98b0c18dd4c15e1dd7ccedd93999ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.3 MB (151318229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8732e2d1b6519584676353668299968198b549e67f7e0929bf9b5a813fd17328`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:20:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:20:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 11:15:31 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 11:15:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:15:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 11:15:45 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 11:19:21 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 11:19:21 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 11:19:46 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 11:19:46 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 14:51:49 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 05 Sep 2018 14:51:50 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 14:51:51 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 14:51:52 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 15:07:34 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 15:07:37 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 15:07:38 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 05 Sep 2018 15:07:38 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 15:07:39 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 15:07:39 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 15:07:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:07:40 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7269f056d3d5b16a85965aeb4149129ab0fc3dd77453c7955c15011eb7f9fec3`  
		Last Modified: Wed, 05 Sep 2018 11:42:24 GMT  
		Size: 2.2 MB (2248332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b999803d14943f9deff153205c79187ff70b3a1fe2fc2264c2942f7ff43524`  
		Last Modified: Wed, 05 Sep 2018 11:42:28 GMT  
		Size: 16.6 MB (16551182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9959186b2236bf43c266c9d252cc1101fe9415503c349ef6728ba0637592b19c`  
		Last Modified: Wed, 05 Sep 2018 11:42:24 GMT  
		Size: 2.1 MB (2067852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dd93397241179c4c9d8a516c762554cdd6b068504f7bd217c120bc629e7879e`  
		Last Modified: Wed, 05 Sep 2018 15:23:37 GMT  
		Size: 3.9 KB (3926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6772e34090c9feaac6fdaf06d09a11ef49a4a0a64526da8cc562791b7ec2134`  
		Last Modified: Wed, 05 Sep 2018 15:23:36 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7186d9aadadeeafd2adfeff5b42a31c1244a1758290ed181b5dc8ee9478446a9`  
		Last Modified: Wed, 05 Sep 2018 15:24:17 GMT  
		Size: 109.3 MB (109281413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7202df7975ccd93fc13fbb47cd4e1b3a434c6ace4dc7f71bd662288587b914e5`  
		Last Modified: Wed, 05 Sep 2018 15:23:36 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1` - linux; arm variant v7

```console
$ docker pull plone@sha256:0ced9b4cd3014005f6bc23018c6a51171ea6c1f6295190b364cad9ff7c2ea84c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147620455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3d0c788ca371b8cb65336311eb42fd71dcd0a5e56da7faff61981979984ffe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:12:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:12:03 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 16:05:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 16:06:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:06:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 16:06:07 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 16:09:22 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 16:09:22 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 16:09:44 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 16:09:44 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 18:06:02 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 05 Sep 2018 18:06:03 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 18:06:04 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 18:06:04 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 18:20:22 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 18:20:24 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 18:20:25 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 05 Sep 2018 18:20:26 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 18:20:26 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 18:20:27 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 18:20:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 18:20:28 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6549c83740ca5aef12063b3461b49ccc1cbebfd49a044fc6c03db9c3f6fb83ec`  
		Last Modified: Wed, 05 Sep 2018 16:32:15 GMT  
		Size: 2.2 MB (2169723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2926385d55b7f8de4bb286d6b4f26aa122be08c410f4501f415a40d5c3365deb`  
		Last Modified: Wed, 05 Sep 2018 16:32:19 GMT  
		Size: 16.1 MB (16134334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d57acfdac0a2742f4b066cfe0b1ffded646b735273424232028f17b0965b7a0`  
		Last Modified: Wed, 05 Sep 2018 16:32:15 GMT  
		Size: 2.1 MB (2067847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ae240ae032a64df85ec2ea19186ae8a2f85c1007e0cbcb8fbd412af6de635c`  
		Last Modified: Wed, 05 Sep 2018 18:34:50 GMT  
		Size: 3.9 KB (3928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232cb91c5cb544dd448a5345552001d8ea449fe6d7a52707c0b332163abdcc32`  
		Last Modified: Wed, 05 Sep 2018 18:34:49 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58d355b746552cdbe5294d406dcdfb229d306affe1d9fa3a456dfac15f33c1d`  
		Last Modified: Wed, 05 Sep 2018 18:35:34 GMT  
		Size: 108.0 MB (107971805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfdcc7a93174c2c0ed4187b4420ad2d5fe1066eeba028eb07c83a352c38b436`  
		Last Modified: Wed, 05 Sep 2018 18:34:50 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:875c39427ea492d71e8394479fd929adb5169db3ae7acbf5e34335c595c4f4ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150268184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5b2e5c5cc99d8f4525549d3651ccd2e16ca744e7b69f09feb92d2c5576c311`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 19:55:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 19:55:17 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 21:16:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 21:17:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 21:17:19 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 21:17:20 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 21:27:54 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 21:27:55 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 21:28:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 21:28:50 GMT
CMD ["python2"]
# Thu, 06 Sep 2018 09:31:22 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Thu, 06 Sep 2018 09:31:23 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 06 Sep 2018 09:31:26 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 06 Sep 2018 09:31:49 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 06 Sep 2018 10:02:02 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 06 Sep 2018 10:02:06 GMT
VOLUME [/data]
# Thu, 06 Sep 2018 10:02:08 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Thu, 06 Sep 2018 10:02:10 GMT
EXPOSE 8080/tcp
# Thu, 06 Sep 2018 10:02:11 GMT
WORKDIR /plone/instance
# Thu, 06 Sep 2018 10:02:13 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 06 Sep 2018 10:02:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Sep 2018 10:02:15 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ef667fc5927e3c200f89a5d7690020ed5e4e96079722777f963d28307a8c0c`  
		Last Modified: Wed, 05 Sep 2018 21:47:29 GMT  
		Size: 2.2 MB (2225828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41fe74c0fb3d4df36bba1d8142b46fd8b6664d188808341d38ec741204ed90e`  
		Last Modified: Wed, 05 Sep 2018 21:47:36 GMT  
		Size: 16.9 MB (16866232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8fa231ee56770259ccee5057012cfc995df081536517d837d6b49bb28e08eb`  
		Last Modified: Wed, 05 Sep 2018 21:47:29 GMT  
		Size: 2.1 MB (2069134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d97a8e993ff2625349fd10898fdede73342f283240f95516fc4294428d86c01`  
		Last Modified: Thu, 06 Sep 2018 10:36:00 GMT  
		Size: 3.9 KB (3889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da613039d7f1f6f4ef169b582f1005b0d676f0a3a0d6712ec2818bbd9438571`  
		Last Modified: Thu, 06 Sep 2018 10:35:58 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d032c180a2ec2a79700d1f47dfb4c0d069789e6a6ca1e3bdbfd1b837ccf0d106`  
		Last Modified: Thu, 06 Sep 2018 10:36:50 GMT  
		Size: 108.8 MB (108768808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17571133f67b2b8d92ef7ee3b43640d263485aba098cceaae195b2e7b2b31d9`  
		Last Modified: Thu, 06 Sep 2018 10:35:59 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1` - linux; 386

```console
$ docker pull plone@sha256:98a08f2589d7e68d6435c7ad0c0d2d4015abd2d6a7d32d537ed3f2185a61684b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160417120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fdcb53563d79fc93ada6dc82f4ef3db0bd416d03cfb373e5b084d738f6a1994`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 22:00:45 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 22:00:45 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 23:07:56 GMT
ENV PYTHONIOENCODING=UTF-8
# Thu, 06 Sep 2018 23:08:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 23:08:05 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 06 Sep 2018 23:08:05 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 06 Sep 2018 23:10:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 06 Sep 2018 23:10:42 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 23:10:55 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 06 Sep 2018 23:10:55 GMT
CMD ["python2"]
# Fri, 07 Sep 2018 07:49:41 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Fri, 07 Sep 2018 07:49:41 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 07 Sep 2018 07:49:42 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 07 Sep 2018 07:49:42 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Fri, 07 Sep 2018 07:55:32 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 07 Sep 2018 07:55:33 GMT
VOLUME [/data]
# Fri, 07 Sep 2018 07:55:34 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Fri, 07 Sep 2018 07:55:34 GMT
EXPOSE 8080/tcp
# Fri, 07 Sep 2018 07:55:34 GMT
WORKDIR /plone/instance
# Fri, 07 Sep 2018 07:55:34 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 07 Sep 2018 07:55:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Sep 2018 07:55:35 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472f569a166c1ad135c92a0ace23ba5f20bf0405f97ebb6cb35d86a40f8b1810`  
		Last Modified: Thu, 06 Sep 2018 23:35:04 GMT  
		Size: 2.5 MB (2517315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479ac45e47a67269530904754fc080d3e416d810d8f87866bfcd7df270b893c1`  
		Last Modified: Thu, 06 Sep 2018 23:35:09 GMT  
		Size: 16.3 MB (16297808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d7e02027cf39395cee1de69cec56ef6b589cc15badd13b4200999a1f72f1dd`  
		Last Modified: Thu, 06 Sep 2018 23:35:03 GMT  
		Size: 2.1 MB (2068148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7100336f7ec11ea162e6c166eb9f0a04d3644397e05d13f2c317730d395e75ee`  
		Last Modified: Fri, 07 Sep 2018 08:21:29 GMT  
		Size: 3.9 KB (3878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2922366590d39d8897753a413dfcf2ff501c787655b35fa89d324a3ae9f1a904`  
		Last Modified: Fri, 07 Sep 2018 08:21:29 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8894617f714da8a61bb279f1f9cbded3fc06addd43ae61aa8606a461b0b14b8e`  
		Last Modified: Fri, 07 Sep 2018 08:22:03 GMT  
		Size: 116.4 MB (116400830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60954e7f37a55b48f7b411bf90387ce6e594d177de1824c2afdd58834cbbb9e8`  
		Last Modified: Fri, 07 Sep 2018 08:21:29 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1` - linux; ppc64le

```console
$ docker pull plone@sha256:fbac8edc3d4164284d46a5be13d8786844be42575a2e7c0ad6239f9c70d575de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.4 MB (154432704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97d2d9b03ca720c84f5367a205e64c13d8bb7ccedd335fe442a4ace3f21d409c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:16:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 13:16:52 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 14:06:05 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 14:06:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:06:25 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 14:06:26 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 14:12:43 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 14:12:45 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 14:13:42 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 14:13:44 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 20:39:21 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 05 Sep 2018 20:39:22 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 20:39:24 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 20:39:31 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 20:56:36 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 20:56:40 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 20:56:46 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 05 Sep 2018 20:56:47 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 20:56:48 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 20:56:49 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 20:56:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 20:56:51 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c3b44d14c843566c757c9e84bf26ae4ede0e56c6a6d1e6072fe254ae1a02f5`  
		Last Modified: Wed, 05 Sep 2018 15:17:05 GMT  
		Size: 2.2 MB (2181764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:038b6f0e17ec3047bf22cd2f6c867f33da5aeadb73838591464fb7aa425a74ca`  
		Last Modified: Wed, 05 Sep 2018 15:17:13 GMT  
		Size: 17.3 MB (17280804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09f2619ca5221b8451fdcd5f964d9637ccc01b5cf22df48bf3a9f51aadbc969`  
		Last Modified: Wed, 05 Sep 2018 15:17:05 GMT  
		Size: 2.1 MB (2069147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a690b52c3b4053d74b6c0189cec3cce88d2f82840e84eec0d08f9e1ffaf7bb0e`  
		Last Modified: Wed, 05 Sep 2018 21:13:40 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cc0d047dbaa553853f482547fa9f92d73d869bae2b7e32ba4cb505497f58a6`  
		Last Modified: Wed, 05 Sep 2018 21:13:39 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e9343aa09c9bf8a752ad1db2e10baae4cc52e57bcfa170bd5e1ee4417362a3`  
		Last Modified: Wed, 05 Sep 2018 21:14:16 GMT  
		Size: 110.2 MB (110153860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c38bf52c570af432ae738ceb0dce49dd702d8ab253170e7075936a83e4ea9c`  
		Last Modified: Wed, 05 Sep 2018 21:13:40 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1.4`

**does not exist** (yet?)

## `plone:5.1.4-alpine`

**does not exist** (yet?)

## `plone:5.1-alpine`

```console
$ docker pull plone@sha256:38cc5d52ee910fa57c7b093fbc226ff77e4b72042bb3be5fe43aa5fb7eb218d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `plone:5.1-alpine` - linux; amd64

```console
$ docker pull plone@sha256:701e5f9ea13c42520a2c493968aa0d924f385c9cbb25f5315254edd811ea8608
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106536678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c72264b84ae3beae8757e2f16a9ac8ab411565f0837f161e7dad460f3c54de9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:16:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:10:16 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 02:39:46 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 02:39:47 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 02:39:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 02:39:47 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 02:42:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 02:42:23 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 02:42:31 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 02:42:31 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 05:13:26 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 12 Sep 2018 05:13:27 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 05:13:27 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 05:13:28 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 05:21:39 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 05:21:40 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 05:21:41 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Wed, 12 Sep 2018 05:21:41 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 05:21:41 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 05:21:42 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 05:21:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 05:21:42 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa69c832a12b3a00775c938b0fa6e3ec3b0e007e2ba733fefbb9393ea96d78d`  
		Last Modified: Wed, 12 Sep 2018 02:52:48 GMT  
		Size: 308.3 KB (308310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0581302b23ff94d20dd0e9cca6426fd366af977be616943d196c5fcb2da4fb87`  
		Last Modified: Wed, 12 Sep 2018 02:52:53 GMT  
		Size: 17.7 MB (17678982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807529e1cdfa22e62b78067a1702739683c9f252df30c9b6c82efa385a3d2f0c`  
		Last Modified: Wed, 12 Sep 2018 02:52:47 GMT  
		Size: 1.8 MB (1786365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545230272ecefbac34018a461de1af75e5d3963052a48a50b4be252c25c2093b`  
		Last Modified: Wed, 12 Sep 2018 05:29:57 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c625f5fb5c381b13a0ab227733f022cb20188d8111f1c135e0114f2685318`  
		Last Modified: Wed, 12 Sep 2018 05:29:57 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b59f1516294d6bcd14a7e9ae282566e76657a614196c8dffe75ea82c5ce800`  
		Last Modified: Wed, 12 Sep 2018 05:30:30 GMT  
		Size: 84.7 MB (84651874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a11e49cbd656ae02996b4e4ad4909d53dfe21968284ae24820eba77193d5cb`  
		Last Modified: Wed, 12 Sep 2018 05:29:57 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1-alpine` - linux; arm variant v6

```console
$ docker pull plone@sha256:0275244a96d300dec4fb70462438bdefa5e0bf6f8943b48f55ffb88f68634b23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105278980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3923c7570d0cc4b77a1f6075f2bcff714041d4fe30a274e0495b617fdc05ca43`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:08:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 08:08:02 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 08:12:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 08:12:56 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 08:12:56 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 08:12:56 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 15 Sep 2018 09:01:37 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 15 Sep 2018 09:01:37 GMT
ENV PYTHON_PIP_VERSION=18.0
# Sat, 15 Sep 2018 09:01:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 15 Sep 2018 09:01:46 GMT
CMD ["python2"]
# Sat, 15 Sep 2018 10:30:19 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Sat, 15 Sep 2018 10:30:19 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 15 Sep 2018 10:30:20 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Sat, 15 Sep 2018 10:30:23 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Sat, 15 Sep 2018 10:46:07 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Sat, 15 Sep 2018 10:46:11 GMT
VOLUME [/data]
# Sat, 15 Sep 2018 10:46:12 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Sat, 15 Sep 2018 10:46:13 GMT
EXPOSE 8080/tcp
# Sat, 15 Sep 2018 10:46:13 GMT
WORKDIR /plone/instance
# Sat, 15 Sep 2018 10:46:14 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 15 Sep 2018 10:46:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 15 Sep 2018 10:46:15 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:c2dacc7b3755044bd80e7edb446986de7cfade7636ea19f3b7eb64e8c88bf3fd`  
		Last Modified: Wed, 12 Sep 2018 07:50:02 GMT  
		Size: 2.1 MB (2051097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684756a9d4ca4d4de310f5d47bb7c15bd0065aa787da5bab1736082d28281370`  
		Last Modified: Wed, 12 Sep 2018 07:50:03 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581fdfa374a7d5a9a240ba2a402d0d4fa5532f656bfb2a595faabd0271272c04`  
		Last Modified: Sat, 15 Sep 2018 09:09:22 GMT  
		Size: 309.1 KB (309094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9aa71339c4bbb227dd61394ab596ebda6b12414fe3b4070f277f81a4bd39e9`  
		Last Modified: Sat, 15 Sep 2018 09:09:29 GMT  
		Size: 16.9 MB (16903322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49e004f40da224e5cfec99c458618b3941de6de7eac4d961c078b72834dd076`  
		Last Modified: Sat, 15 Sep 2018 09:09:22 GMT  
		Size: 1.8 MB (1786600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51528d81030bcfb8170c250c43b31061d79397a1bcb666acf878d0c1dc37a3a`  
		Last Modified: Sat, 15 Sep 2018 11:00:56 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2dd905d59bcc1768d6fe9277e89cbeb01a3e09ce8750b87b05e84d1bc9d83d`  
		Last Modified: Sat, 15 Sep 2018 11:00:55 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7537193eb16aac0b5222842a5f4f1a4de335912f619f7ec0039ebab7bd33ae`  
		Last Modified: Sat, 15 Sep 2018 11:01:30 GMT  
		Size: 84.2 MB (84224659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053d7adb4a812fa797713db3ac4115381aa15bb1e0b43bfff588108b790b1d4d`  
		Last Modified: Sat, 15 Sep 2018 11:00:56 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1-alpine` - linux; 386

```console
$ docker pull plone@sha256:177b34948d0b30d4df6719420b6b7b5004f1057e45f831f11528fbbda91777a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.6 MB (105551087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43043c2bce253eeb229fb23125fff0e62b09446afd58d64d86f87d141725f3f3`
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
# Wed, 12 Sep 2018 16:48:28 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 16:48:28 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 16:48:34 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 16:48:34 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 19:30:28 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 12 Sep 2018 19:30:28 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 19:30:29 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 19:30:29 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 19:39:22 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 19:39:23 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 19:39:23 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Wed, 12 Sep 2018 19:39:23 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 19:39:23 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 19:39:24 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 19:39:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 19:39:24 GMT
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
	-	`sha256:69c2c302e906d29a443e41c1a2878cea7fc8e72ef98b7923aded9b33e66cec7b`  
		Last Modified: Wed, 12 Sep 2018 16:55:54 GMT  
		Size: 17.1 MB (17111369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda311be054e698f1651066d5cdbe02d4be8b26682316ab0af0cd53f1f3744f6`  
		Last Modified: Wed, 12 Sep 2018 16:55:48 GMT  
		Size: 1.8 MB (1786368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce917455c61c9454404035480e1e4ee899fbdcb1540331f9c49966646e662262`  
		Last Modified: Wed, 12 Sep 2018 19:48:07 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84de43469bc37d3346095695ecaf10076cbdc12d73bd1c0f9c8765a471e41fd8`  
		Last Modified: Wed, 12 Sep 2018 19:48:08 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c42d55c2037f7fa26d0cf0c61520f290a4b5b26ca6e8ad5d4e541451ecac12`  
		Last Modified: Wed, 12 Sep 2018 19:48:35 GMT  
		Size: 84.2 MB (84171135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec80494d47e05776ff9b0a606d613f5d66d91731611bcdfde3d8edb3eaab7e24`  
		Last Modified: Wed, 12 Sep 2018 19:48:07 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1-alpine` - linux; ppc64le

```console
$ docker pull plone@sha256:c7a26bbaa0a7fda50795eba07705f6b4163560192239f9f74e9b54061e55003d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106478251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1803f8e33b1a7f19aed66badde071ab2fef8914f3d0e4da886f923623219841b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 08:17:46 GMT
ADD file:204b7e967d010d32620f3fdef75c57f75b783f9f06afa192b0041e3b3fc35c94 in / 
# Wed, 12 Sep 2018 08:17:47 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:17:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:43:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:43:25 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 12:24:49 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 12:24:53 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 12:24:55 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 12:24:55 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 12:28:04 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 12:28:07 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 12:28:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 12:28:24 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 15:22:43 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 12 Sep 2018 15:22:44 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 15:22:50 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 15:22:52 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 15:39:31 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 15:39:40 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 15:39:42 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Wed, 12 Sep 2018 15:39:43 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 15:39:45 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 15:39:46 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 15:39:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 15:39:49 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:3a367126dc6775f614e406f6d1d269e4a42319112de1c53a8c08296e58f9057c`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 2.1 MB (2099796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0538d3489283e7e8ac788c74877a7cd871c367157338ac3f124214b7038627`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee742f6eb477f427e16bbe29219cc18672f48df29b6f832e9ddf9e479f57f40`  
		Last Modified: Wed, 12 Sep 2018 12:44:17 GMT  
		Size: 310.9 KB (310876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047d194b283d29be00ec05c487671608d46fd72ddd4202d07a2b7bbd8ae05a4f`  
		Last Modified: Wed, 12 Sep 2018 12:44:29 GMT  
		Size: 17.8 MB (17809555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6d6af138455e6135f579c416ae8b100e97eedf642daf02b335d4401bdd56e1`  
		Last Modified: Wed, 12 Sep 2018 12:44:19 GMT  
		Size: 1.8 MB (1786587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f467d0880a91d4a5a34e579d980cebe93f7468d5ad28b74936f6abc1b8bc6e`  
		Last Modified: Wed, 12 Sep 2018 16:00:43 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f5898140a31b0d6136e239150855947bb94dc8dce87485384f21b46bec76b5`  
		Last Modified: Wed, 12 Sep 2018 16:00:43 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60e4a02abdd9d18429e17714e31eee91c95a4efb25b1c96956de2345e22d834`  
		Last Modified: Wed, 12 Sep 2018 16:02:38 GMT  
		Size: 84.5 MB (84467225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d155e988f8212743ee0579c11f9c8684d887dee6180fd97d7123e39fb245e3`  
		Last Modified: Wed, 12 Sep 2018 16:00:43 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1-alpine` - linux; s390x

```console
$ docker pull plone@sha256:fb6aa4da8c65734569c02050e2b38831eb0d5c9ac1c08aa920cb48f73b0ba40c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107216098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef0333dd9cec09dc1f8291b1dadcebbe49438348a1605a9781c7bbbc04852b02`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:05 GMT
ADD file:a59da37af8f4febfa87a2102dfdd3a709cbcb545454395455d8892b079d5475a in / 
# Wed, 12 Sep 2018 11:42:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:10 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:27:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 13:27:31 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 13:46:56 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 13:46:57 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 13:46:57 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 13:46:58 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 13:48:34 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 13:48:35 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 13:48:39 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 13:48:39 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 15:11:54 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 12 Sep 2018 15:11:54 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 15:11:55 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 15:11:55 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 15:19:03 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 15:19:05 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 15:19:05 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Wed, 12 Sep 2018 15:19:05 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 15:19:06 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 15:19:06 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 15:19:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 15:19:06 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:6e61c3658cd6273d9aec7222b5e89d66892fed584a6f37e459c0e47646d98af3`  
		Last Modified: Wed, 12 Sep 2018 11:43:16 GMT  
		Size: 2.2 MB (2201183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67fa114a3493b4f57b8c5aa7b2a47b04392c611ccaf495f3e8881a9c33d6c19`  
		Last Modified: Wed, 12 Sep 2018 11:43:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab2a7a5b59ab206adc14218bfc1286568a6224aea6bffd85f2c14c1c4fe2695`  
		Last Modified: Wed, 12 Sep 2018 13:56:26 GMT  
		Size: 309.4 KB (309437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1799be89542da1c3dc356d6d23a7faaca9fbc2f05e62dc1111d384f488ba259d`  
		Last Modified: Wed, 12 Sep 2018 13:56:30 GMT  
		Size: 18.1 MB (18140113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fc9ce2724997f7c182a119861e9824a9846a9ff725f72c6f108a8b6e1b8ae4`  
		Last Modified: Wed, 12 Sep 2018 13:56:27 GMT  
		Size: 1.8 MB (1786345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f03965d293335f0c5d537abe9c7a20ddbf8bbf8ed5eb3076710dd45f91ea4`  
		Last Modified: Wed, 12 Sep 2018 15:45:08 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5fbe1f37fd56dea07d851ad4b3e370e9dd15c261226338bc92f962f7307a4a`  
		Last Modified: Wed, 12 Sep 2018 15:45:08 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11bbc7d8c06cf5d4152ec8cdd1041def3003f954d101f0e4f12101b54badc23`  
		Last Modified: Wed, 12 Sep 2018 15:45:27 GMT  
		Size: 84.8 MB (84774873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488d61f0ca6f5e6cce71438d91d60208df10b9b3eaa06c6d89b940193a760062`  
		Last Modified: Wed, 12 Sep 2018 15:45:08 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5-alpine`

```console
$ docker pull plone@sha256:38cc5d52ee910fa57c7b093fbc226ff77e4b72042bb3be5fe43aa5fb7eb218d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `plone:5-alpine` - linux; amd64

```console
$ docker pull plone@sha256:701e5f9ea13c42520a2c493968aa0d924f385c9cbb25f5315254edd811ea8608
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106536678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c72264b84ae3beae8757e2f16a9ac8ab411565f0837f161e7dad460f3c54de9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:16:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:10:16 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 02:39:46 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 02:39:47 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 02:39:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 02:39:47 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 02:42:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 02:42:23 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 02:42:31 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 02:42:31 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 05:13:26 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 12 Sep 2018 05:13:27 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 05:13:27 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 05:13:28 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 05:21:39 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 05:21:40 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 05:21:41 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Wed, 12 Sep 2018 05:21:41 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 05:21:41 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 05:21:42 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 05:21:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 05:21:42 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa69c832a12b3a00775c938b0fa6e3ec3b0e007e2ba733fefbb9393ea96d78d`  
		Last Modified: Wed, 12 Sep 2018 02:52:48 GMT  
		Size: 308.3 KB (308310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0581302b23ff94d20dd0e9cca6426fd366af977be616943d196c5fcb2da4fb87`  
		Last Modified: Wed, 12 Sep 2018 02:52:53 GMT  
		Size: 17.7 MB (17678982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807529e1cdfa22e62b78067a1702739683c9f252df30c9b6c82efa385a3d2f0c`  
		Last Modified: Wed, 12 Sep 2018 02:52:47 GMT  
		Size: 1.8 MB (1786365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545230272ecefbac34018a461de1af75e5d3963052a48a50b4be252c25c2093b`  
		Last Modified: Wed, 12 Sep 2018 05:29:57 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c625f5fb5c381b13a0ab227733f022cb20188d8111f1c135e0114f2685318`  
		Last Modified: Wed, 12 Sep 2018 05:29:57 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b59f1516294d6bcd14a7e9ae282566e76657a614196c8dffe75ea82c5ce800`  
		Last Modified: Wed, 12 Sep 2018 05:30:30 GMT  
		Size: 84.7 MB (84651874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a11e49cbd656ae02996b4e4ad4909d53dfe21968284ae24820eba77193d5cb`  
		Last Modified: Wed, 12 Sep 2018 05:29:57 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5-alpine` - linux; arm variant v6

```console
$ docker pull plone@sha256:0275244a96d300dec4fb70462438bdefa5e0bf6f8943b48f55ffb88f68634b23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105278980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3923c7570d0cc4b77a1f6075f2bcff714041d4fe30a274e0495b617fdc05ca43`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:08:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 08:08:02 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 08:12:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 08:12:56 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 08:12:56 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 08:12:56 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 15 Sep 2018 09:01:37 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 15 Sep 2018 09:01:37 GMT
ENV PYTHON_PIP_VERSION=18.0
# Sat, 15 Sep 2018 09:01:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 15 Sep 2018 09:01:46 GMT
CMD ["python2"]
# Sat, 15 Sep 2018 10:30:19 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Sat, 15 Sep 2018 10:30:19 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 15 Sep 2018 10:30:20 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Sat, 15 Sep 2018 10:30:23 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Sat, 15 Sep 2018 10:46:07 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Sat, 15 Sep 2018 10:46:11 GMT
VOLUME [/data]
# Sat, 15 Sep 2018 10:46:12 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Sat, 15 Sep 2018 10:46:13 GMT
EXPOSE 8080/tcp
# Sat, 15 Sep 2018 10:46:13 GMT
WORKDIR /plone/instance
# Sat, 15 Sep 2018 10:46:14 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 15 Sep 2018 10:46:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 15 Sep 2018 10:46:15 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:c2dacc7b3755044bd80e7edb446986de7cfade7636ea19f3b7eb64e8c88bf3fd`  
		Last Modified: Wed, 12 Sep 2018 07:50:02 GMT  
		Size: 2.1 MB (2051097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684756a9d4ca4d4de310f5d47bb7c15bd0065aa787da5bab1736082d28281370`  
		Last Modified: Wed, 12 Sep 2018 07:50:03 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581fdfa374a7d5a9a240ba2a402d0d4fa5532f656bfb2a595faabd0271272c04`  
		Last Modified: Sat, 15 Sep 2018 09:09:22 GMT  
		Size: 309.1 KB (309094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9aa71339c4bbb227dd61394ab596ebda6b12414fe3b4070f277f81a4bd39e9`  
		Last Modified: Sat, 15 Sep 2018 09:09:29 GMT  
		Size: 16.9 MB (16903322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49e004f40da224e5cfec99c458618b3941de6de7eac4d961c078b72834dd076`  
		Last Modified: Sat, 15 Sep 2018 09:09:22 GMT  
		Size: 1.8 MB (1786600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51528d81030bcfb8170c250c43b31061d79397a1bcb666acf878d0c1dc37a3a`  
		Last Modified: Sat, 15 Sep 2018 11:00:56 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2dd905d59bcc1768d6fe9277e89cbeb01a3e09ce8750b87b05e84d1bc9d83d`  
		Last Modified: Sat, 15 Sep 2018 11:00:55 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7537193eb16aac0b5222842a5f4f1a4de335912f619f7ec0039ebab7bd33ae`  
		Last Modified: Sat, 15 Sep 2018 11:01:30 GMT  
		Size: 84.2 MB (84224659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053d7adb4a812fa797713db3ac4115381aa15bb1e0b43bfff588108b790b1d4d`  
		Last Modified: Sat, 15 Sep 2018 11:00:56 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5-alpine` - linux; 386

```console
$ docker pull plone@sha256:177b34948d0b30d4df6719420b6b7b5004f1057e45f831f11528fbbda91777a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.6 MB (105551087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43043c2bce253eeb229fb23125fff0e62b09446afd58d64d86f87d141725f3f3`
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
# Wed, 12 Sep 2018 16:48:28 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 16:48:28 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 16:48:34 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 16:48:34 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 19:30:28 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 12 Sep 2018 19:30:28 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 19:30:29 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 19:30:29 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 19:39:22 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 19:39:23 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 19:39:23 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Wed, 12 Sep 2018 19:39:23 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 19:39:23 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 19:39:24 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 19:39:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 19:39:24 GMT
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
	-	`sha256:69c2c302e906d29a443e41c1a2878cea7fc8e72ef98b7923aded9b33e66cec7b`  
		Last Modified: Wed, 12 Sep 2018 16:55:54 GMT  
		Size: 17.1 MB (17111369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda311be054e698f1651066d5cdbe02d4be8b26682316ab0af0cd53f1f3744f6`  
		Last Modified: Wed, 12 Sep 2018 16:55:48 GMT  
		Size: 1.8 MB (1786368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce917455c61c9454404035480e1e4ee899fbdcb1540331f9c49966646e662262`  
		Last Modified: Wed, 12 Sep 2018 19:48:07 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84de43469bc37d3346095695ecaf10076cbdc12d73bd1c0f9c8765a471e41fd8`  
		Last Modified: Wed, 12 Sep 2018 19:48:08 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c42d55c2037f7fa26d0cf0c61520f290a4b5b26ca6e8ad5d4e541451ecac12`  
		Last Modified: Wed, 12 Sep 2018 19:48:35 GMT  
		Size: 84.2 MB (84171135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec80494d47e05776ff9b0a606d613f5d66d91731611bcdfde3d8edb3eaab7e24`  
		Last Modified: Wed, 12 Sep 2018 19:48:07 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5-alpine` - linux; ppc64le

```console
$ docker pull plone@sha256:c7a26bbaa0a7fda50795eba07705f6b4163560192239f9f74e9b54061e55003d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106478251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1803f8e33b1a7f19aed66badde071ab2fef8914f3d0e4da886f923623219841b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 08:17:46 GMT
ADD file:204b7e967d010d32620f3fdef75c57f75b783f9f06afa192b0041e3b3fc35c94 in / 
# Wed, 12 Sep 2018 08:17:47 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:17:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:43:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:43:25 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 12:24:49 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 12:24:53 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 12:24:55 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 12:24:55 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 12:28:04 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 12:28:07 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 12:28:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 12:28:24 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 15:22:43 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 12 Sep 2018 15:22:44 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 15:22:50 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 15:22:52 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 15:39:31 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 15:39:40 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 15:39:42 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Wed, 12 Sep 2018 15:39:43 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 15:39:45 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 15:39:46 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 15:39:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 15:39:49 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:3a367126dc6775f614e406f6d1d269e4a42319112de1c53a8c08296e58f9057c`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 2.1 MB (2099796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0538d3489283e7e8ac788c74877a7cd871c367157338ac3f124214b7038627`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee742f6eb477f427e16bbe29219cc18672f48df29b6f832e9ddf9e479f57f40`  
		Last Modified: Wed, 12 Sep 2018 12:44:17 GMT  
		Size: 310.9 KB (310876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047d194b283d29be00ec05c487671608d46fd72ddd4202d07a2b7bbd8ae05a4f`  
		Last Modified: Wed, 12 Sep 2018 12:44:29 GMT  
		Size: 17.8 MB (17809555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6d6af138455e6135f579c416ae8b100e97eedf642daf02b335d4401bdd56e1`  
		Last Modified: Wed, 12 Sep 2018 12:44:19 GMT  
		Size: 1.8 MB (1786587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f467d0880a91d4a5a34e579d980cebe93f7468d5ad28b74936f6abc1b8bc6e`  
		Last Modified: Wed, 12 Sep 2018 16:00:43 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f5898140a31b0d6136e239150855947bb94dc8dce87485384f21b46bec76b5`  
		Last Modified: Wed, 12 Sep 2018 16:00:43 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60e4a02abdd9d18429e17714e31eee91c95a4efb25b1c96956de2345e22d834`  
		Last Modified: Wed, 12 Sep 2018 16:02:38 GMT  
		Size: 84.5 MB (84467225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d155e988f8212743ee0579c11f9c8684d887dee6180fd97d7123e39fb245e3`  
		Last Modified: Wed, 12 Sep 2018 16:00:43 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5-alpine` - linux; s390x

```console
$ docker pull plone@sha256:fb6aa4da8c65734569c02050e2b38831eb0d5c9ac1c08aa920cb48f73b0ba40c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107216098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef0333dd9cec09dc1f8291b1dadcebbe49438348a1605a9781c7bbbc04852b02`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:05 GMT
ADD file:a59da37af8f4febfa87a2102dfdd3a709cbcb545454395455d8892b079d5475a in / 
# Wed, 12 Sep 2018 11:42:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:10 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:27:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 13:27:31 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 13:46:56 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 13:46:57 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 13:46:57 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 13:46:58 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 13:48:34 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 13:48:35 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 13:48:39 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 13:48:39 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 15:11:54 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 12 Sep 2018 15:11:54 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 15:11:55 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 15:11:55 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 15:19:03 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 15:19:05 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 15:19:05 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Wed, 12 Sep 2018 15:19:05 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 15:19:06 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 15:19:06 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 15:19:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 15:19:06 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:6e61c3658cd6273d9aec7222b5e89d66892fed584a6f37e459c0e47646d98af3`  
		Last Modified: Wed, 12 Sep 2018 11:43:16 GMT  
		Size: 2.2 MB (2201183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67fa114a3493b4f57b8c5aa7b2a47b04392c611ccaf495f3e8881a9c33d6c19`  
		Last Modified: Wed, 12 Sep 2018 11:43:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab2a7a5b59ab206adc14218bfc1286568a6224aea6bffd85f2c14c1c4fe2695`  
		Last Modified: Wed, 12 Sep 2018 13:56:26 GMT  
		Size: 309.4 KB (309437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1799be89542da1c3dc356d6d23a7faaca9fbc2f05e62dc1111d384f488ba259d`  
		Last Modified: Wed, 12 Sep 2018 13:56:30 GMT  
		Size: 18.1 MB (18140113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fc9ce2724997f7c182a119861e9824a9846a9ff725f72c6f108a8b6e1b8ae4`  
		Last Modified: Wed, 12 Sep 2018 13:56:27 GMT  
		Size: 1.8 MB (1786345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f03965d293335f0c5d537abe9c7a20ddbf8bbf8ed5eb3076710dd45f91ea4`  
		Last Modified: Wed, 12 Sep 2018 15:45:08 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5fbe1f37fd56dea07d851ad4b3e370e9dd15c261226338bc92f962f7307a4a`  
		Last Modified: Wed, 12 Sep 2018 15:45:08 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11bbc7d8c06cf5d4152ec8cdd1041def3003f954d101f0e4f12101b54badc23`  
		Last Modified: Wed, 12 Sep 2018 15:45:27 GMT  
		Size: 84.8 MB (84774873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488d61f0ca6f5e6cce71438d91d60208df10b9b3eaa06c6d89b940193a760062`  
		Last Modified: Wed, 12 Sep 2018 15:45:08 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:alpine`

```console
$ docker pull plone@sha256:38cc5d52ee910fa57c7b093fbc226ff77e4b72042bb3be5fe43aa5fb7eb218d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `plone:alpine` - linux; amd64

```console
$ docker pull plone@sha256:701e5f9ea13c42520a2c493968aa0d924f385c9cbb25f5315254edd811ea8608
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106536678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c72264b84ae3beae8757e2f16a9ac8ab411565f0837f161e7dad460f3c54de9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:16:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:10:16 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 02:39:46 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 02:39:47 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 02:39:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 02:39:47 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 02:42:23 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 02:42:23 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 02:42:31 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 02:42:31 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 05:13:26 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 12 Sep 2018 05:13:27 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 05:13:27 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 05:13:28 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 05:21:39 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 05:21:40 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 05:21:41 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Wed, 12 Sep 2018 05:21:41 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 05:21:41 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 05:21:42 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 05:21:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 05:21:42 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa69c832a12b3a00775c938b0fa6e3ec3b0e007e2ba733fefbb9393ea96d78d`  
		Last Modified: Wed, 12 Sep 2018 02:52:48 GMT  
		Size: 308.3 KB (308310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0581302b23ff94d20dd0e9cca6426fd366af977be616943d196c5fcb2da4fb87`  
		Last Modified: Wed, 12 Sep 2018 02:52:53 GMT  
		Size: 17.7 MB (17678982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807529e1cdfa22e62b78067a1702739683c9f252df30c9b6c82efa385a3d2f0c`  
		Last Modified: Wed, 12 Sep 2018 02:52:47 GMT  
		Size: 1.8 MB (1786365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545230272ecefbac34018a461de1af75e5d3963052a48a50b4be252c25c2093b`  
		Last Modified: Wed, 12 Sep 2018 05:29:57 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c625f5fb5c381b13a0ab227733f022cb20188d8111f1c135e0114f2685318`  
		Last Modified: Wed, 12 Sep 2018 05:29:57 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b59f1516294d6bcd14a7e9ae282566e76657a614196c8dffe75ea82c5ce800`  
		Last Modified: Wed, 12 Sep 2018 05:30:30 GMT  
		Size: 84.7 MB (84651874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a11e49cbd656ae02996b4e4ad4909d53dfe21968284ae24820eba77193d5cb`  
		Last Modified: Wed, 12 Sep 2018 05:29:57 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:alpine` - linux; arm variant v6

```console
$ docker pull plone@sha256:0275244a96d300dec4fb70462438bdefa5e0bf6f8943b48f55ffb88f68634b23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105278980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3923c7570d0cc4b77a1f6075f2bcff714041d4fe30a274e0495b617fdc05ca43`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:08:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 08:08:02 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 08:12:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 08:12:56 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 08:12:56 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 08:12:56 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 15 Sep 2018 09:01:37 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 15 Sep 2018 09:01:37 GMT
ENV PYTHON_PIP_VERSION=18.0
# Sat, 15 Sep 2018 09:01:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 15 Sep 2018 09:01:46 GMT
CMD ["python2"]
# Sat, 15 Sep 2018 10:30:19 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Sat, 15 Sep 2018 10:30:19 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Sat, 15 Sep 2018 10:30:20 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Sat, 15 Sep 2018 10:30:23 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Sat, 15 Sep 2018 10:46:07 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Sat, 15 Sep 2018 10:46:11 GMT
VOLUME [/data]
# Sat, 15 Sep 2018 10:46:12 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Sat, 15 Sep 2018 10:46:13 GMT
EXPOSE 8080/tcp
# Sat, 15 Sep 2018 10:46:13 GMT
WORKDIR /plone/instance
# Sat, 15 Sep 2018 10:46:14 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Sat, 15 Sep 2018 10:46:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 15 Sep 2018 10:46:15 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:c2dacc7b3755044bd80e7edb446986de7cfade7636ea19f3b7eb64e8c88bf3fd`  
		Last Modified: Wed, 12 Sep 2018 07:50:02 GMT  
		Size: 2.1 MB (2051097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684756a9d4ca4d4de310f5d47bb7c15bd0065aa787da5bab1736082d28281370`  
		Last Modified: Wed, 12 Sep 2018 07:50:03 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581fdfa374a7d5a9a240ba2a402d0d4fa5532f656bfb2a595faabd0271272c04`  
		Last Modified: Sat, 15 Sep 2018 09:09:22 GMT  
		Size: 309.1 KB (309094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9aa71339c4bbb227dd61394ab596ebda6b12414fe3b4070f277f81a4bd39e9`  
		Last Modified: Sat, 15 Sep 2018 09:09:29 GMT  
		Size: 16.9 MB (16903322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49e004f40da224e5cfec99c458618b3941de6de7eac4d961c078b72834dd076`  
		Last Modified: Sat, 15 Sep 2018 09:09:22 GMT  
		Size: 1.8 MB (1786600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51528d81030bcfb8170c250c43b31061d79397a1bcb666acf878d0c1dc37a3a`  
		Last Modified: Sat, 15 Sep 2018 11:00:56 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2dd905d59bcc1768d6fe9277e89cbeb01a3e09ce8750b87b05e84d1bc9d83d`  
		Last Modified: Sat, 15 Sep 2018 11:00:55 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7537193eb16aac0b5222842a5f4f1a4de335912f619f7ec0039ebab7bd33ae`  
		Last Modified: Sat, 15 Sep 2018 11:01:30 GMT  
		Size: 84.2 MB (84224659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053d7adb4a812fa797713db3ac4115381aa15bb1e0b43bfff588108b790b1d4d`  
		Last Modified: Sat, 15 Sep 2018 11:00:56 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:alpine` - linux; 386

```console
$ docker pull plone@sha256:177b34948d0b30d4df6719420b6b7b5004f1057e45f831f11528fbbda91777a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.6 MB (105551087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43043c2bce253eeb229fb23125fff0e62b09446afd58d64d86f87d141725f3f3`
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
# Wed, 12 Sep 2018 16:48:28 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 16:48:28 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 16:48:34 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 16:48:34 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 19:30:28 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 12 Sep 2018 19:30:28 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 19:30:29 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 19:30:29 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 19:39:22 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 19:39:23 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 19:39:23 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Wed, 12 Sep 2018 19:39:23 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 19:39:23 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 19:39:24 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 19:39:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 19:39:24 GMT
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
	-	`sha256:69c2c302e906d29a443e41c1a2878cea7fc8e72ef98b7923aded9b33e66cec7b`  
		Last Modified: Wed, 12 Sep 2018 16:55:54 GMT  
		Size: 17.1 MB (17111369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda311be054e698f1651066d5cdbe02d4be8b26682316ab0af0cd53f1f3744f6`  
		Last Modified: Wed, 12 Sep 2018 16:55:48 GMT  
		Size: 1.8 MB (1786368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce917455c61c9454404035480e1e4ee899fbdcb1540331f9c49966646e662262`  
		Last Modified: Wed, 12 Sep 2018 19:48:07 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84de43469bc37d3346095695ecaf10076cbdc12d73bd1c0f9c8765a471e41fd8`  
		Last Modified: Wed, 12 Sep 2018 19:48:08 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c42d55c2037f7fa26d0cf0c61520f290a4b5b26ca6e8ad5d4e541451ecac12`  
		Last Modified: Wed, 12 Sep 2018 19:48:35 GMT  
		Size: 84.2 MB (84171135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec80494d47e05776ff9b0a606d613f5d66d91731611bcdfde3d8edb3eaab7e24`  
		Last Modified: Wed, 12 Sep 2018 19:48:07 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:alpine` - linux; ppc64le

```console
$ docker pull plone@sha256:c7a26bbaa0a7fda50795eba07705f6b4163560192239f9f74e9b54061e55003d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106478251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1803f8e33b1a7f19aed66badde071ab2fef8914f3d0e4da886f923623219841b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 08:17:46 GMT
ADD file:204b7e967d010d32620f3fdef75c57f75b783f9f06afa192b0041e3b3fc35c94 in / 
# Wed, 12 Sep 2018 08:17:47 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:17:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:43:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:43:25 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 12:24:49 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 12:24:53 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 12:24:55 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 12:24:55 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 12:28:04 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 12:28:07 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 12:28:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 12:28:24 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 15:22:43 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 12 Sep 2018 15:22:44 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 15:22:50 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 15:22:52 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 15:39:31 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 15:39:40 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 15:39:42 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Wed, 12 Sep 2018 15:39:43 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 15:39:45 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 15:39:46 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 15:39:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 15:39:49 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:3a367126dc6775f614e406f6d1d269e4a42319112de1c53a8c08296e58f9057c`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 2.1 MB (2099796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0538d3489283e7e8ac788c74877a7cd871c367157338ac3f124214b7038627`  
		Last Modified: Wed, 12 Sep 2018 08:19:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee742f6eb477f427e16bbe29219cc18672f48df29b6f832e9ddf9e479f57f40`  
		Last Modified: Wed, 12 Sep 2018 12:44:17 GMT  
		Size: 310.9 KB (310876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047d194b283d29be00ec05c487671608d46fd72ddd4202d07a2b7bbd8ae05a4f`  
		Last Modified: Wed, 12 Sep 2018 12:44:29 GMT  
		Size: 17.8 MB (17809555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6d6af138455e6135f579c416ae8b100e97eedf642daf02b335d4401bdd56e1`  
		Last Modified: Wed, 12 Sep 2018 12:44:19 GMT  
		Size: 1.8 MB (1786587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f467d0880a91d4a5a34e579d980cebe93f7468d5ad28b74936f6abc1b8bc6e`  
		Last Modified: Wed, 12 Sep 2018 16:00:43 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f5898140a31b0d6136e239150855947bb94dc8dce87485384f21b46bec76b5`  
		Last Modified: Wed, 12 Sep 2018 16:00:43 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60e4a02abdd9d18429e17714e31eee91c95a4efb25b1c96956de2345e22d834`  
		Last Modified: Wed, 12 Sep 2018 16:02:38 GMT  
		Size: 84.5 MB (84467225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d155e988f8212743ee0579c11f9c8684d887dee6180fd97d7123e39fb245e3`  
		Last Modified: Wed, 12 Sep 2018 16:00:43 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:alpine` - linux; s390x

```console
$ docker pull plone@sha256:fb6aa4da8c65734569c02050e2b38831eb0d5c9ac1c08aa920cb48f73b0ba40c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107216098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef0333dd9cec09dc1f8291b1dadcebbe49438348a1605a9781c7bbbc04852b02`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:05 GMT
ADD file:a59da37af8f4febfa87a2102dfdd3a709cbcb545454395455d8892b079d5475a in / 
# Wed, 12 Sep 2018 11:42:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:10 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:27:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 13:27:31 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 13:46:56 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 13:46:57 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 13:46:57 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 13:46:58 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 13:48:34 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 13:48:35 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 13:48:39 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 13:48:39 GMT
CMD ["python2"]
# Wed, 12 Sep 2018 15:11:54 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 12 Sep 2018 15:11:54 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 12 Sep 2018 15:11:55 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 12 Sep 2018 15:11:55 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 12 Sep 2018 15:19:03 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 12 Sep 2018 15:19:05 GMT
VOLUME [/data]
# Wed, 12 Sep 2018 15:19:05 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Wed, 12 Sep 2018 15:19:05 GMT
EXPOSE 8080/tcp
# Wed, 12 Sep 2018 15:19:06 GMT
WORKDIR /plone/instance
# Wed, 12 Sep 2018 15:19:06 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 12 Sep 2018 15:19:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 15:19:06 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:6e61c3658cd6273d9aec7222b5e89d66892fed584a6f37e459c0e47646d98af3`  
		Last Modified: Wed, 12 Sep 2018 11:43:16 GMT  
		Size: 2.2 MB (2201183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67fa114a3493b4f57b8c5aa7b2a47b04392c611ccaf495f3e8881a9c33d6c19`  
		Last Modified: Wed, 12 Sep 2018 11:43:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab2a7a5b59ab206adc14218bfc1286568a6224aea6bffd85f2c14c1c4fe2695`  
		Last Modified: Wed, 12 Sep 2018 13:56:26 GMT  
		Size: 309.4 KB (309437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1799be89542da1c3dc356d6d23a7faaca9fbc2f05e62dc1111d384f488ba259d`  
		Last Modified: Wed, 12 Sep 2018 13:56:30 GMT  
		Size: 18.1 MB (18140113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fc9ce2724997f7c182a119861e9824a9846a9ff725f72c6f108a8b6e1b8ae4`  
		Last Modified: Wed, 12 Sep 2018 13:56:27 GMT  
		Size: 1.8 MB (1786345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f03965d293335f0c5d537abe9c7a20ddbf8bbf8ed5eb3076710dd45f91ea4`  
		Last Modified: Wed, 12 Sep 2018 15:45:08 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5fbe1f37fd56dea07d851ad4b3e370e9dd15c261226338bc92f962f7307a4a`  
		Last Modified: Wed, 12 Sep 2018 15:45:08 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11bbc7d8c06cf5d4152ec8cdd1041def3003f954d101f0e4f12101b54badc23`  
		Last Modified: Wed, 12 Sep 2018 15:45:27 GMT  
		Size: 84.8 MB (84774873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488d61f0ca6f5e6cce71438d91d60208df10b9b3eaa06c6d89b940193a760062`  
		Last Modified: Wed, 12 Sep 2018 15:45:08 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:latest`

```console
$ docker pull plone@sha256:e858929619abec77d8ae86a76a930408cd35a194c7fdc4c91b96dd5fd1f582bf
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
$ docker pull plone@sha256:6b2356c6c819083b6e9f77d48ad5e7f038e30f7970cd1feac9487c647b5018b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160424641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ba2713a25fdb19d54986f5d567a56098a87889d80c8d629e0bb04d10b3de5a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 03:27:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:27:49 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 04:48:48 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 04:49:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 04:49:04 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 04:49:04 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 04:52:05 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 04:52:06 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 04:52:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 04:52:17 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 17:38:48 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 05 Sep 2018 17:38:48 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 17:38:49 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 17:38:49 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 17:44:38 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 17:44:39 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 17:44:40 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 05 Sep 2018 17:44:40 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 17:44:40 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 17:44:41 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 17:44:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 17:44:41 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b2d5f7ed73c4fd71ea92a844e3f1854b9c54fec8fa82aec312e77e7b805604`  
		Last Modified: Wed, 05 Sep 2018 05:18:55 GMT  
		Size: 2.5 MB (2516913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1073a127cf8978b9b0f42032c0f88afcd4cac60bb4bbb9c39a0e52100fe28a39`  
		Last Modified: Wed, 05 Sep 2018 05:18:58 GMT  
		Size: 17.1 MB (17100575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90283f3dc1cdd1003d7d20e7e57ceb2e0c1403d24c64778bcc532c71eaef557f`  
		Last Modified: Wed, 05 Sep 2018 05:18:54 GMT  
		Size: 2.1 MB (2068491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c6296c2cc3bd54ea1f1a0bea02617fdbe393d799dea2a761a4b6e9f001fde2`  
		Last Modified: Wed, 05 Sep 2018 18:08:49 GMT  
		Size: 3.9 KB (3886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162da4aaaeae4ae309965233cb023ad52461266a62dcbf65eee918a1fdb10cc2`  
		Last Modified: Wed, 05 Sep 2018 18:08:49 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911916f3ce5b50501955e8b9135c2c224b3f1e937636d58169e3899d4430637f`  
		Last Modified: Wed, 05 Sep 2018 18:09:15 GMT  
		Size: 116.2 MB (116246159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9885bf286168449882b6f11d814123f702b96a30c1e3364d85588fb49024b09`  
		Last Modified: Wed, 05 Sep 2018 18:08:49 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; arm variant v5

```console
$ docker pull plone@sha256:32122ea57d0cea909e91edc946f6b15c8d98b0c18dd4c15e1dd7ccedd93999ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.3 MB (151318229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8732e2d1b6519584676353668299968198b549e67f7e0929bf9b5a813fd17328`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:20:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:20:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 11:15:31 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 11:15:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:15:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 11:15:45 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 11:19:21 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 11:19:21 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 11:19:46 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 11:19:46 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 14:51:49 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 05 Sep 2018 14:51:50 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 14:51:51 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 14:51:52 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 15:07:34 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 15:07:37 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 15:07:38 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 05 Sep 2018 15:07:38 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 15:07:39 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 15:07:39 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 15:07:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:07:40 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7269f056d3d5b16a85965aeb4149129ab0fc3dd77453c7955c15011eb7f9fec3`  
		Last Modified: Wed, 05 Sep 2018 11:42:24 GMT  
		Size: 2.2 MB (2248332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b999803d14943f9deff153205c79187ff70b3a1fe2fc2264c2942f7ff43524`  
		Last Modified: Wed, 05 Sep 2018 11:42:28 GMT  
		Size: 16.6 MB (16551182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9959186b2236bf43c266c9d252cc1101fe9415503c349ef6728ba0637592b19c`  
		Last Modified: Wed, 05 Sep 2018 11:42:24 GMT  
		Size: 2.1 MB (2067852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dd93397241179c4c9d8a516c762554cdd6b068504f7bd217c120bc629e7879e`  
		Last Modified: Wed, 05 Sep 2018 15:23:37 GMT  
		Size: 3.9 KB (3926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6772e34090c9feaac6fdaf06d09a11ef49a4a0a64526da8cc562791b7ec2134`  
		Last Modified: Wed, 05 Sep 2018 15:23:36 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7186d9aadadeeafd2adfeff5b42a31c1244a1758290ed181b5dc8ee9478446a9`  
		Last Modified: Wed, 05 Sep 2018 15:24:17 GMT  
		Size: 109.3 MB (109281413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7202df7975ccd93fc13fbb47cd4e1b3a434c6ace4dc7f71bd662288587b914e5`  
		Last Modified: Wed, 05 Sep 2018 15:23:36 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; arm variant v7

```console
$ docker pull plone@sha256:0ced9b4cd3014005f6bc23018c6a51171ea6c1f6295190b364cad9ff7c2ea84c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147620455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3d0c788ca371b8cb65336311eb42fd71dcd0a5e56da7faff61981979984ffe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:12:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:12:03 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 16:05:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 16:06:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:06:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 16:06:07 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 16:09:22 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 16:09:22 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 16:09:44 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 16:09:44 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 18:06:02 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 05 Sep 2018 18:06:03 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 18:06:04 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 18:06:04 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 18:20:22 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 18:20:24 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 18:20:25 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 05 Sep 2018 18:20:26 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 18:20:26 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 18:20:27 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 18:20:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 18:20:28 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6549c83740ca5aef12063b3461b49ccc1cbebfd49a044fc6c03db9c3f6fb83ec`  
		Last Modified: Wed, 05 Sep 2018 16:32:15 GMT  
		Size: 2.2 MB (2169723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2926385d55b7f8de4bb286d6b4f26aa122be08c410f4501f415a40d5c3365deb`  
		Last Modified: Wed, 05 Sep 2018 16:32:19 GMT  
		Size: 16.1 MB (16134334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d57acfdac0a2742f4b066cfe0b1ffded646b735273424232028f17b0965b7a0`  
		Last Modified: Wed, 05 Sep 2018 16:32:15 GMT  
		Size: 2.1 MB (2067847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ae240ae032a64df85ec2ea19186ae8a2f85c1007e0cbcb8fbd412af6de635c`  
		Last Modified: Wed, 05 Sep 2018 18:34:50 GMT  
		Size: 3.9 KB (3928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232cb91c5cb544dd448a5345552001d8ea449fe6d7a52707c0b332163abdcc32`  
		Last Modified: Wed, 05 Sep 2018 18:34:49 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58d355b746552cdbe5294d406dcdfb229d306affe1d9fa3a456dfac15f33c1d`  
		Last Modified: Wed, 05 Sep 2018 18:35:34 GMT  
		Size: 108.0 MB (107971805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfdcc7a93174c2c0ed4187b4420ad2d5fe1066eeba028eb07c83a352c38b436`  
		Last Modified: Wed, 05 Sep 2018 18:34:50 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:875c39427ea492d71e8394479fd929adb5169db3ae7acbf5e34335c595c4f4ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.3 MB (150268184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5b2e5c5cc99d8f4525549d3651ccd2e16ca744e7b69f09feb92d2c5576c311`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 19:55:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 19:55:17 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 21:16:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 21:17:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 21:17:19 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 21:17:20 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 21:27:54 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 21:27:55 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 21:28:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 21:28:50 GMT
CMD ["python2"]
# Thu, 06 Sep 2018 09:31:22 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Thu, 06 Sep 2018 09:31:23 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 06 Sep 2018 09:31:26 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 06 Sep 2018 09:31:49 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 06 Sep 2018 10:02:02 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 06 Sep 2018 10:02:06 GMT
VOLUME [/data]
# Thu, 06 Sep 2018 10:02:08 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Thu, 06 Sep 2018 10:02:10 GMT
EXPOSE 8080/tcp
# Thu, 06 Sep 2018 10:02:11 GMT
WORKDIR /plone/instance
# Thu, 06 Sep 2018 10:02:13 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 06 Sep 2018 10:02:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Sep 2018 10:02:15 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ef667fc5927e3c200f89a5d7690020ed5e4e96079722777f963d28307a8c0c`  
		Last Modified: Wed, 05 Sep 2018 21:47:29 GMT  
		Size: 2.2 MB (2225828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41fe74c0fb3d4df36bba1d8142b46fd8b6664d188808341d38ec741204ed90e`  
		Last Modified: Wed, 05 Sep 2018 21:47:36 GMT  
		Size: 16.9 MB (16866232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8fa231ee56770259ccee5057012cfc995df081536517d837d6b49bb28e08eb`  
		Last Modified: Wed, 05 Sep 2018 21:47:29 GMT  
		Size: 2.1 MB (2069134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d97a8e993ff2625349fd10898fdede73342f283240f95516fc4294428d86c01`  
		Last Modified: Thu, 06 Sep 2018 10:36:00 GMT  
		Size: 3.9 KB (3889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da613039d7f1f6f4ef169b582f1005b0d676f0a3a0d6712ec2818bbd9438571`  
		Last Modified: Thu, 06 Sep 2018 10:35:58 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d032c180a2ec2a79700d1f47dfb4c0d069789e6a6ca1e3bdbfd1b837ccf0d106`  
		Last Modified: Thu, 06 Sep 2018 10:36:50 GMT  
		Size: 108.8 MB (108768808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17571133f67b2b8d92ef7ee3b43640d263485aba098cceaae195b2e7b2b31d9`  
		Last Modified: Thu, 06 Sep 2018 10:35:59 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; 386

```console
$ docker pull plone@sha256:98a08f2589d7e68d6435c7ad0c0d2d4015abd2d6a7d32d537ed3f2185a61684b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160417120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fdcb53563d79fc93ada6dc82f4ef3db0bd416d03cfb373e5b084d738f6a1994`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 22:00:45 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 22:00:45 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 23:07:56 GMT
ENV PYTHONIOENCODING=UTF-8
# Thu, 06 Sep 2018 23:08:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 23:08:05 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 06 Sep 2018 23:08:05 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 06 Sep 2018 23:10:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 06 Sep 2018 23:10:42 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 23:10:55 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 06 Sep 2018 23:10:55 GMT
CMD ["python2"]
# Fri, 07 Sep 2018 07:49:41 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Fri, 07 Sep 2018 07:49:41 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 07 Sep 2018 07:49:42 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Fri, 07 Sep 2018 07:49:42 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Fri, 07 Sep 2018 07:55:32 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Fri, 07 Sep 2018 07:55:33 GMT
VOLUME [/data]
# Fri, 07 Sep 2018 07:55:34 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Fri, 07 Sep 2018 07:55:34 GMT
EXPOSE 8080/tcp
# Fri, 07 Sep 2018 07:55:34 GMT
WORKDIR /plone/instance
# Fri, 07 Sep 2018 07:55:34 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Fri, 07 Sep 2018 07:55:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Sep 2018 07:55:35 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472f569a166c1ad135c92a0ace23ba5f20bf0405f97ebb6cb35d86a40f8b1810`  
		Last Modified: Thu, 06 Sep 2018 23:35:04 GMT  
		Size: 2.5 MB (2517315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479ac45e47a67269530904754fc080d3e416d810d8f87866bfcd7df270b893c1`  
		Last Modified: Thu, 06 Sep 2018 23:35:09 GMT  
		Size: 16.3 MB (16297808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d7e02027cf39395cee1de69cec56ef6b589cc15badd13b4200999a1f72f1dd`  
		Last Modified: Thu, 06 Sep 2018 23:35:03 GMT  
		Size: 2.1 MB (2068148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7100336f7ec11ea162e6c166eb9f0a04d3644397e05d13f2c317730d395e75ee`  
		Last Modified: Fri, 07 Sep 2018 08:21:29 GMT  
		Size: 3.9 KB (3878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2922366590d39d8897753a413dfcf2ff501c787655b35fa89d324a3ae9f1a904`  
		Last Modified: Fri, 07 Sep 2018 08:21:29 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8894617f714da8a61bb279f1f9cbded3fc06addd43ae61aa8606a461b0b14b8e`  
		Last Modified: Fri, 07 Sep 2018 08:22:03 GMT  
		Size: 116.4 MB (116400830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60954e7f37a55b48f7b411bf90387ce6e594d177de1824c2afdd58834cbbb9e8`  
		Last Modified: Fri, 07 Sep 2018 08:21:29 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; ppc64le

```console
$ docker pull plone@sha256:fbac8edc3d4164284d46a5be13d8786844be42575a2e7c0ad6239f9c70d575de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.4 MB (154432704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97d2d9b03ca720c84f5367a205e64c13d8bb7ccedd335fe442a4ace3f21d409c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:16:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 13:16:52 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 14:06:05 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 14:06:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:06:25 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 14:06:26 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 14:12:43 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 14:12:45 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 14:13:42 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 14:13:44 GMT
CMD ["python2"]
# Wed, 05 Sep 2018 20:39:21 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 05 Sep 2018 20:39:22 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 05 Sep 2018 20:39:24 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 05 Sep 2018 20:39:31 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 05 Sep 2018 20:56:36 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 05 Sep 2018 20:56:40 GMT
VOLUME [/data]
# Wed, 05 Sep 2018 20:56:46 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 05 Sep 2018 20:56:47 GMT
EXPOSE 8080/tcp
# Wed, 05 Sep 2018 20:56:48 GMT
WORKDIR /plone/instance
# Wed, 05 Sep 2018 20:56:49 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 05 Sep 2018 20:56:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 20:56:51 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c3b44d14c843566c757c9e84bf26ae4ede0e56c6a6d1e6072fe254ae1a02f5`  
		Last Modified: Wed, 05 Sep 2018 15:17:05 GMT  
		Size: 2.2 MB (2181764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:038b6f0e17ec3047bf22cd2f6c867f33da5aeadb73838591464fb7aa425a74ca`  
		Last Modified: Wed, 05 Sep 2018 15:17:13 GMT  
		Size: 17.3 MB (17280804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09f2619ca5221b8451fdcd5f964d9637ccc01b5cf22df48bf3a9f51aadbc969`  
		Last Modified: Wed, 05 Sep 2018 15:17:05 GMT  
		Size: 2.1 MB (2069147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a690b52c3b4053d74b6c0189cec3cce88d2f82840e84eec0d08f9e1ffaf7bb0e`  
		Last Modified: Wed, 05 Sep 2018 21:13:40 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05cc0d047dbaa553853f482547fa9f92d73d869bae2b7e32ba4cb505497f58a6`  
		Last Modified: Wed, 05 Sep 2018 21:13:39 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e9343aa09c9bf8a752ad1db2e10baae4cc52e57bcfa170bd5e1ee4417362a3`  
		Last Modified: Wed, 05 Sep 2018 21:14:16 GMT  
		Size: 110.2 MB (110153860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c38bf52c570af432ae738ceb0dce49dd702d8ab253170e7075936a83e4ea9c`  
		Last Modified: Wed, 05 Sep 2018 21:13:40 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
