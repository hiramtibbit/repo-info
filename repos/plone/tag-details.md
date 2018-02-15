<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `plone`

-	[`plone:4`](#plone4)
-	[`plone:4.3`](#plone43)
-	[`plone:4.3.15`](#plone4315)
-	[`plone:5`](#plone5)
-	[`plone:5.0`](#plone50)
-	[`plone:5.0.8`](#plone508)
-	[`plone:latest`](#plonelatest)

## `plone:4`

```console
$ docker pull plone@sha256:056aa172bce9189af71357372a8414969d9973931cef067ac2a4550882388bb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:4` - linux; amd64

```console
$ docker pull plone@sha256:01d8449f04802767bf1f85e83bb78e7a3661310febd09b15602d1010833c247e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190104947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b16cd6157b639f1bca2f73ed4f807a6dfd91a3078d910c5886e889e8cd56b8b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:11:31 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 13:37:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:37:37 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 15 Feb 2018 13:37:38 GMT
ENV PYTHON_VERSION=2.7.14
# Thu, 15 Feb 2018 13:40:02 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 15 Feb 2018 13:40:03 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 13:40:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 15 Feb 2018 13:41:15 GMT
CMD ["python2"]
# Thu, 15 Feb 2018 22:27:06 GMT
ENV PLONE_MAJOR=4.3 PLONE_VERSION=4.3.15 PLONE_MD5=c3ce5488684d4204d64668de7977a1e2
# Thu, 15 Feb 2018 22:27:06 GMT
LABEL plone=4.3.15 os=debian os.version=8 name=Plone 4 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 15 Feb 2018 22:31:09 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /data/filestorage /data/blobstorage  && chown -R plone:plone /data  && buildDeps="wget sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync lynx wv libtiff5 libopenjp2-7 poppler-utils"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get remove --purge -y $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && rm -rf /plone/Plone-docs  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Thu, 15 Feb 2018 22:42:48 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 22:42:49 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Thu, 15 Feb 2018 22:42:49 GMT
EXPOSE 8080/tcp
# Thu, 15 Feb 2018 22:42:49 GMT
USER [plone]
# Thu, 15 Feb 2018 22:42:50 GMT
WORKDIR /plone/instance
# Thu, 15 Feb 2018 22:42:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:42:50 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef69dd0e5b9f2e6481285be68cc99fdf3d5c64a3eb7b45d203319866a588cf3`  
		Last Modified: Thu, 15 Feb 2018 13:59:37 GMT  
		Size: 2.7 MB (2710638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e1d7e4f3c629b87b453fa0e7583a8d072feda0ff62978f80334ed731031720`  
		Last Modified: Thu, 15 Feb 2018 13:59:41 GMT  
		Size: 14.9 MB (14933707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861e9de5333fbd262101d67bb6ee2203a5f4a78cfc6952fe915d6a2a8e911d04`  
		Last Modified: Thu, 15 Feb 2018 13:59:37 GMT  
		Size: 2.0 MB (1973292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b822530542e57d9f96b3b69c63e9be1d203fe738c9ccf52a423c75febcf0d735`  
		Last Modified: Thu, 15 Feb 2018 22:45:52 GMT  
		Size: 140.4 MB (140362701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02876e65ba15490efc8352a5ac3a633345cb5c0ca4609c0ce7dca12ed4f5475`  
		Last Modified: Thu, 15 Feb 2018 22:45:30 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3`

```console
$ docker pull plone@sha256:056aa172bce9189af71357372a8414969d9973931cef067ac2a4550882388bb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:4.3` - linux; amd64

```console
$ docker pull plone@sha256:01d8449f04802767bf1f85e83bb78e7a3661310febd09b15602d1010833c247e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190104947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b16cd6157b639f1bca2f73ed4f807a6dfd91a3078d910c5886e889e8cd56b8b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:11:31 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 13:37:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:37:37 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 15 Feb 2018 13:37:38 GMT
ENV PYTHON_VERSION=2.7.14
# Thu, 15 Feb 2018 13:40:02 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 15 Feb 2018 13:40:03 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 13:40:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 15 Feb 2018 13:41:15 GMT
CMD ["python2"]
# Thu, 15 Feb 2018 22:27:06 GMT
ENV PLONE_MAJOR=4.3 PLONE_VERSION=4.3.15 PLONE_MD5=c3ce5488684d4204d64668de7977a1e2
# Thu, 15 Feb 2018 22:27:06 GMT
LABEL plone=4.3.15 os=debian os.version=8 name=Plone 4 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 15 Feb 2018 22:31:09 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /data/filestorage /data/blobstorage  && chown -R plone:plone /data  && buildDeps="wget sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync lynx wv libtiff5 libopenjp2-7 poppler-utils"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get remove --purge -y $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && rm -rf /plone/Plone-docs  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Thu, 15 Feb 2018 22:42:48 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 22:42:49 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Thu, 15 Feb 2018 22:42:49 GMT
EXPOSE 8080/tcp
# Thu, 15 Feb 2018 22:42:49 GMT
USER [plone]
# Thu, 15 Feb 2018 22:42:50 GMT
WORKDIR /plone/instance
# Thu, 15 Feb 2018 22:42:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:42:50 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef69dd0e5b9f2e6481285be68cc99fdf3d5c64a3eb7b45d203319866a588cf3`  
		Last Modified: Thu, 15 Feb 2018 13:59:37 GMT  
		Size: 2.7 MB (2710638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e1d7e4f3c629b87b453fa0e7583a8d072feda0ff62978f80334ed731031720`  
		Last Modified: Thu, 15 Feb 2018 13:59:41 GMT  
		Size: 14.9 MB (14933707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861e9de5333fbd262101d67bb6ee2203a5f4a78cfc6952fe915d6a2a8e911d04`  
		Last Modified: Thu, 15 Feb 2018 13:59:37 GMT  
		Size: 2.0 MB (1973292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b822530542e57d9f96b3b69c63e9be1d203fe738c9ccf52a423c75febcf0d735`  
		Last Modified: Thu, 15 Feb 2018 22:45:52 GMT  
		Size: 140.4 MB (140362701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02876e65ba15490efc8352a5ac3a633345cb5c0ca4609c0ce7dca12ed4f5475`  
		Last Modified: Thu, 15 Feb 2018 22:45:30 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.15`

```console
$ docker pull plone@sha256:056aa172bce9189af71357372a8414969d9973931cef067ac2a4550882388bb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:4.3.15` - linux; amd64

```console
$ docker pull plone@sha256:01d8449f04802767bf1f85e83bb78e7a3661310febd09b15602d1010833c247e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190104947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b16cd6157b639f1bca2f73ed4f807a6dfd91a3078d910c5886e889e8cd56b8b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:11:31 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 13:37:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:37:37 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 15 Feb 2018 13:37:38 GMT
ENV PYTHON_VERSION=2.7.14
# Thu, 15 Feb 2018 13:40:02 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 15 Feb 2018 13:40:03 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 13:40:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 15 Feb 2018 13:41:15 GMT
CMD ["python2"]
# Thu, 15 Feb 2018 22:27:06 GMT
ENV PLONE_MAJOR=4.3 PLONE_VERSION=4.3.15 PLONE_MD5=c3ce5488684d4204d64668de7977a1e2
# Thu, 15 Feb 2018 22:27:06 GMT
LABEL plone=4.3.15 os=debian os.version=8 name=Plone 4 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 15 Feb 2018 22:31:09 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /data/filestorage /data/blobstorage  && chown -R plone:plone /data  && buildDeps="wget sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync lynx wv libtiff5 libopenjp2-7 poppler-utils"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get remove --purge -y $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && rm -rf /plone/Plone-docs  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Thu, 15 Feb 2018 22:42:48 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 22:42:49 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Thu, 15 Feb 2018 22:42:49 GMT
EXPOSE 8080/tcp
# Thu, 15 Feb 2018 22:42:49 GMT
USER [plone]
# Thu, 15 Feb 2018 22:42:50 GMT
WORKDIR /plone/instance
# Thu, 15 Feb 2018 22:42:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:42:50 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef69dd0e5b9f2e6481285be68cc99fdf3d5c64a3eb7b45d203319866a588cf3`  
		Last Modified: Thu, 15 Feb 2018 13:59:37 GMT  
		Size: 2.7 MB (2710638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e1d7e4f3c629b87b453fa0e7583a8d072feda0ff62978f80334ed731031720`  
		Last Modified: Thu, 15 Feb 2018 13:59:41 GMT  
		Size: 14.9 MB (14933707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861e9de5333fbd262101d67bb6ee2203a5f4a78cfc6952fe915d6a2a8e911d04`  
		Last Modified: Thu, 15 Feb 2018 13:59:37 GMT  
		Size: 2.0 MB (1973292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b822530542e57d9f96b3b69c63e9be1d203fe738c9ccf52a423c75febcf0d735`  
		Last Modified: Thu, 15 Feb 2018 22:45:52 GMT  
		Size: 140.4 MB (140362701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d02876e65ba15490efc8352a5ac3a633345cb5c0ca4609c0ce7dca12ed4f5475`  
		Last Modified: Thu, 15 Feb 2018 22:45:30 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5`

```console
$ docker pull plone@sha256:0e241df82fcd65ee3675f52e34ad47af46302e3a5a92664010eb369244aa2a26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5` - linux; amd64

```console
$ docker pull plone@sha256:3dba83654297dd32bd0d5a5f2792ed1cd479eb71fcaad19484d9c4b1c7f12968
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213216249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef361efc2308ae45ac1bb2327e1f6413bffff4c2f7cf9a982f9b79d4c8d1dbc4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:11:31 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 13:37:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:37:37 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 15 Feb 2018 13:37:38 GMT
ENV PYTHON_VERSION=2.7.14
# Thu, 15 Feb 2018 13:40:02 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 15 Feb 2018 13:40:03 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 13:40:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 15 Feb 2018 13:41:15 GMT
CMD ["python2"]
# Thu, 15 Feb 2018 22:20:30 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /data/filestorage /data/blobstorage  && chown -R plone:plone /data
# Thu, 15 Feb 2018 22:20:30 GMT
ENV PLONE_MAJOR=5.0
# Thu, 15 Feb 2018 22:20:30 GMT
ENV PLONE_VERSION=5.0.8
# Thu, 15 Feb 2018 22:20:31 GMT
ENV PLONE_MD5=246788240851f48bc2f84289a3dc6480
# Thu, 15 Feb 2018 22:20:31 GMT
LABEL plone=5.0.8 os=debian os.version=8 name=Plone 5 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 15 Feb 2018 22:25:58 GMT
RUN buildDeps="wget sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync lynx wv libtiff5 libopenjp2-7 poppler-utils"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get remove --purge -y $buildDeps && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && rm -rf /plone/Plone-docs  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Thu, 15 Feb 2018 22:26:22 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 22:26:23 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Thu, 15 Feb 2018 22:26:23 GMT
EXPOSE 8080/tcp
# Thu, 15 Feb 2018 22:26:23 GMT
USER [plone]
# Thu, 15 Feb 2018 22:26:24 GMT
WORKDIR /plone/instance
# Thu, 15 Feb 2018 22:26:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:26:25 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef69dd0e5b9f2e6481285be68cc99fdf3d5c64a3eb7b45d203319866a588cf3`  
		Last Modified: Thu, 15 Feb 2018 13:59:37 GMT  
		Size: 2.7 MB (2710638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e1d7e4f3c629b87b453fa0e7583a8d072feda0ff62978f80334ed731031720`  
		Last Modified: Thu, 15 Feb 2018 13:59:41 GMT  
		Size: 14.9 MB (14933707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861e9de5333fbd262101d67bb6ee2203a5f4a78cfc6952fe915d6a2a8e911d04`  
		Last Modified: Thu, 15 Feb 2018 13:59:37 GMT  
		Size: 2.0 MB (1973292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a558a795ff96f1bab04783463311c123679169467fe6aac78d1310b29a3380a4`  
		Last Modified: Thu, 15 Feb 2018 22:43:27 GMT  
		Size: 4.2 KB (4198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc95f0a5874ad96b711a8e0fad3fd85aa5d6913b4cd0f03ec2f6cc33418707ba`  
		Last Modified: Thu, 15 Feb 2018 22:44:17 GMT  
		Size: 163.5 MB (163469805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404c6538630e8bf02aaaac281d91377e5577956fbb89611a5c27c8c311fe29e3`  
		Last Modified: Thu, 15 Feb 2018 22:43:27 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.0`

```console
$ docker pull plone@sha256:0e241df82fcd65ee3675f52e34ad47af46302e3a5a92664010eb369244aa2a26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5.0` - linux; amd64

```console
$ docker pull plone@sha256:3dba83654297dd32bd0d5a5f2792ed1cd479eb71fcaad19484d9c4b1c7f12968
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213216249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef361efc2308ae45ac1bb2327e1f6413bffff4c2f7cf9a982f9b79d4c8d1dbc4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:11:31 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 13:37:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:37:37 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 15 Feb 2018 13:37:38 GMT
ENV PYTHON_VERSION=2.7.14
# Thu, 15 Feb 2018 13:40:02 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 15 Feb 2018 13:40:03 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 13:40:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 15 Feb 2018 13:41:15 GMT
CMD ["python2"]
# Thu, 15 Feb 2018 22:20:30 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /data/filestorage /data/blobstorage  && chown -R plone:plone /data
# Thu, 15 Feb 2018 22:20:30 GMT
ENV PLONE_MAJOR=5.0
# Thu, 15 Feb 2018 22:20:30 GMT
ENV PLONE_VERSION=5.0.8
# Thu, 15 Feb 2018 22:20:31 GMT
ENV PLONE_MD5=246788240851f48bc2f84289a3dc6480
# Thu, 15 Feb 2018 22:20:31 GMT
LABEL plone=5.0.8 os=debian os.version=8 name=Plone 5 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 15 Feb 2018 22:25:58 GMT
RUN buildDeps="wget sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync lynx wv libtiff5 libopenjp2-7 poppler-utils"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get remove --purge -y $buildDeps && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && rm -rf /plone/Plone-docs  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Thu, 15 Feb 2018 22:26:22 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 22:26:23 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Thu, 15 Feb 2018 22:26:23 GMT
EXPOSE 8080/tcp
# Thu, 15 Feb 2018 22:26:23 GMT
USER [plone]
# Thu, 15 Feb 2018 22:26:24 GMT
WORKDIR /plone/instance
# Thu, 15 Feb 2018 22:26:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:26:25 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef69dd0e5b9f2e6481285be68cc99fdf3d5c64a3eb7b45d203319866a588cf3`  
		Last Modified: Thu, 15 Feb 2018 13:59:37 GMT  
		Size: 2.7 MB (2710638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e1d7e4f3c629b87b453fa0e7583a8d072feda0ff62978f80334ed731031720`  
		Last Modified: Thu, 15 Feb 2018 13:59:41 GMT  
		Size: 14.9 MB (14933707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861e9de5333fbd262101d67bb6ee2203a5f4a78cfc6952fe915d6a2a8e911d04`  
		Last Modified: Thu, 15 Feb 2018 13:59:37 GMT  
		Size: 2.0 MB (1973292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a558a795ff96f1bab04783463311c123679169467fe6aac78d1310b29a3380a4`  
		Last Modified: Thu, 15 Feb 2018 22:43:27 GMT  
		Size: 4.2 KB (4198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc95f0a5874ad96b711a8e0fad3fd85aa5d6913b4cd0f03ec2f6cc33418707ba`  
		Last Modified: Thu, 15 Feb 2018 22:44:17 GMT  
		Size: 163.5 MB (163469805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404c6538630e8bf02aaaac281d91377e5577956fbb89611a5c27c8c311fe29e3`  
		Last Modified: Thu, 15 Feb 2018 22:43:27 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.0.8`

```console
$ docker pull plone@sha256:0e241df82fcd65ee3675f52e34ad47af46302e3a5a92664010eb369244aa2a26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5.0.8` - linux; amd64

```console
$ docker pull plone@sha256:3dba83654297dd32bd0d5a5f2792ed1cd479eb71fcaad19484d9c4b1c7f12968
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213216249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef361efc2308ae45ac1bb2327e1f6413bffff4c2f7cf9a982f9b79d4c8d1dbc4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:11:31 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 13:37:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 13:37:37 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 15 Feb 2018 13:37:38 GMT
ENV PYTHON_VERSION=2.7.14
# Thu, 15 Feb 2018 13:40:02 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 15 Feb 2018 13:40:03 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 13:40:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 15 Feb 2018 13:41:15 GMT
CMD ["python2"]
# Thu, 15 Feb 2018 22:20:30 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /data/filestorage /data/blobstorage  && chown -R plone:plone /data
# Thu, 15 Feb 2018 22:20:30 GMT
ENV PLONE_MAJOR=5.0
# Thu, 15 Feb 2018 22:20:30 GMT
ENV PLONE_VERSION=5.0.8
# Thu, 15 Feb 2018 22:20:31 GMT
ENV PLONE_MD5=246788240851f48bc2f84289a3dc6480
# Thu, 15 Feb 2018 22:20:31 GMT
LABEL plone=5.0.8 os=debian os.version=8 name=Plone 5 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 15 Feb 2018 22:25:58 GMT
RUN buildDeps="wget sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync lynx wv libtiff5 libopenjp2-7 poppler-utils"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get remove --purge -y $buildDeps && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && rm -rf /plone/Plone-docs  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Thu, 15 Feb 2018 22:26:22 GMT
VOLUME [/data]
# Thu, 15 Feb 2018 22:26:23 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Thu, 15 Feb 2018 22:26:23 GMT
EXPOSE 8080/tcp
# Thu, 15 Feb 2018 22:26:23 GMT
USER [plone]
# Thu, 15 Feb 2018 22:26:24 GMT
WORKDIR /plone/instance
# Thu, 15 Feb 2018 22:26:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:26:25 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef69dd0e5b9f2e6481285be68cc99fdf3d5c64a3eb7b45d203319866a588cf3`  
		Last Modified: Thu, 15 Feb 2018 13:59:37 GMT  
		Size: 2.7 MB (2710638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e1d7e4f3c629b87b453fa0e7583a8d072feda0ff62978f80334ed731031720`  
		Last Modified: Thu, 15 Feb 2018 13:59:41 GMT  
		Size: 14.9 MB (14933707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861e9de5333fbd262101d67bb6ee2203a5f4a78cfc6952fe915d6a2a8e911d04`  
		Last Modified: Thu, 15 Feb 2018 13:59:37 GMT  
		Size: 2.0 MB (1973292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a558a795ff96f1bab04783463311c123679169467fe6aac78d1310b29a3380a4`  
		Last Modified: Thu, 15 Feb 2018 22:43:27 GMT  
		Size: 4.2 KB (4198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc95f0a5874ad96b711a8e0fad3fd85aa5d6913b4cd0f03ec2f6cc33418707ba`  
		Last Modified: Thu, 15 Feb 2018 22:44:17 GMT  
		Size: 163.5 MB (163469805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404c6538630e8bf02aaaac281d91377e5577956fbb89611a5c27c8c311fe29e3`  
		Last Modified: Thu, 15 Feb 2018 22:43:27 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:latest`

```console
$ docker pull plone@sha256:efb21ab180a3b4fd290197eb6d6700633231eed7f30302a96636a260d2b53a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:latest` - linux; amd64

```console
$ docker pull plone@sha256:d465589d6ca2469064dc2d37f891796418342e5ec08427452e6a77484c4466c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213199654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f948bda3bb9117846a0cfc3472d58fde8641648c80c02f32083e21bcf18ff409`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:34 GMT
ADD file:e7ac45803c3ab9b7023933b75f5a88eda1f3edca97c7e462401860777cf312f7 in / 
# Tue, 12 Dec 2017 01:41:35 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:21:38 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 06:21:38 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 06:53:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:53:47 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 12 Dec 2017 06:53:47 GMT
ENV PYTHON_VERSION=2.7.14
# Tue, 12 Dec 2017 06:56:40 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Tue, 12 Dec 2017 06:56:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 12 Dec 2017 06:56:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 12 Dec 2017 06:56:56 GMT
CMD ["python2"]
# Tue, 12 Dec 2017 08:22:48 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /data/filestorage /data/blobstorage  && chown -R plone:plone /data
# Tue, 12 Dec 2017 08:22:48 GMT
ENV PLONE_MAJOR=5.0
# Tue, 12 Dec 2017 08:22:49 GMT
ENV PLONE_VERSION=5.0.8
# Tue, 12 Dec 2017 08:22:49 GMT
ENV PLONE_MD5=246788240851f48bc2f84289a3dc6480
# Tue, 12 Dec 2017 08:22:49 GMT
LABEL plone=5.0.8 os=debian os.version=8 name=Plone 5 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 12 Dec 2017 08:27:03 GMT
RUN buildDeps="wget sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync lynx wv libtiff5 libopenjp2-7 poppler-utils"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get remove --purge -y $buildDeps && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && rm -rf /plone/Plone-docs  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Tue, 12 Dec 2017 08:31:09 GMT
VOLUME [/data]
# Tue, 12 Dec 2017 08:31:09 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Tue, 12 Dec 2017 08:31:10 GMT
EXPOSE 8080/tcp
# Tue, 12 Dec 2017 08:31:10 GMT
USER [plone]
# Tue, 12 Dec 2017 08:31:10 GMT
WORKDIR /plone/instance
# Tue, 12 Dec 2017 08:31:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 08:31:11 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:c4bb02b17bb4b034c95a948c99c762cf0486a45f45441a052208d7750f1b413b`  
		Last Modified: Tue, 12 Dec 2017 01:48:52 GMT  
		Size: 30.1 MB (30114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c896dce5ee4dc2e997d0f3646a1189b6ca510482206378c51db4d99e57a002`  
		Last Modified: Tue, 12 Dec 2017 07:04:09 GMT  
		Size: 2.7 MB (2710712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf210b898cc666bca39bbb5ac2d57540dff3d93f1abc1a752b85229f24054bba`  
		Last Modified: Tue, 12 Dec 2017 07:04:16 GMT  
		Size: 14.9 MB (14933670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5117cef49bdbffd7b756c6d7eef5b19f9b43f39c749e03dbd0ca222016e06c36`  
		Last Modified: Tue, 12 Dec 2017 07:04:10 GMT  
		Size: 2.0 MB (1973129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b963d012b3f0450fdc3b0e04c799c1450e45175f1eca3cdb0cb2b49e2c975156`  
		Last Modified: Tue, 12 Dec 2017 08:42:11 GMT  
		Size: 4.2 KB (4192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073d2ec4beb717347ab9013847eea384dc71c4d8b44e77dcfc3e981afb2d41b0`  
		Last Modified: Tue, 12 Dec 2017 08:43:02 GMT  
		Size: 163.5 MB (163461202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d28f1ab7f31776074adac6717bfe747b0f8bb8897cdb400120467b3d77a35a2`  
		Last Modified: Tue, 12 Dec 2017 08:42:12 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
