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
-	[`plone:5.1.2`](#plone512)
-	[`plone:5.1.2-alpine`](#plone512-alpine)
-	[`plone:5.1-alpine`](#plone51-alpine)
-	[`plone:5-alpine`](#plone5-alpine)
-	[`plone:alpine`](#plonealpine)
-	[`plone:latest`](#plonelatest)

## `plone:4`

```console
$ docker pull plone@sha256:fac84437ee22a3f6eb4df0b04eddb20940e00128475c7d51cea2bd71c621cdab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:4` - linux; amd64

```console
$ docker pull plone@sha256:bed703c1e290306381450d62552bfa7a5226457ffff2fbb07fc37b786f9d9286
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135131640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c1814c16624f58366df8bf317f3320e9b503a777f2d8930aa3d6b0ef2ce033`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:36:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 00:36:07 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 01:04:41 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 01:04:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:04:54 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 01:04:54 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 01:08:13 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 01:08:13 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 01:08:27 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 01:08:27 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 11:29:03 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Tue, 17 Jul 2018 11:29:03 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 11:29:04 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 11:29:05 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 11:39:51 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 11:39:52 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:39:53 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Tue, 17 Jul 2018 11:39:53 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 11:39:54 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 11:39:54 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 11:39:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:39:55 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87541f2e904e7c44d19df4009e43f8b39a28f74ec41dee011098120423af5cf`  
		Last Modified: Tue, 17 Jul 2018 02:01:09 GMT  
		Size: 3.3 MB (3280969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81dc5ba046c839725ba28488b7f0c4279c7c5734553e7007b973674d2b5476a1`  
		Last Modified: Tue, 17 Jul 2018 02:01:15 GMT  
		Size: 16.4 MB (16392841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b411fa1b92c96a5dbd6e2ea82848104e5f3d78ffc7b8a038e1db4f0dbdce3c7d`  
		Last Modified: Tue, 17 Jul 2018 02:01:10 GMT  
		Size: 2.1 MB (2068198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:329b16ac8504cdc9130f992417dc0c227306b5a6a610ba98977d59d7634104c5`  
		Last Modified: Tue, 17 Jul 2018 11:55:34 GMT  
		Size: 3.9 KB (3881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744c06f82c2dc8aaee5a3cd0186737822101aaf3e6ef064f3a035adfb4ba00af`  
		Last Modified: Tue, 17 Jul 2018 11:55:34 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39235d03b01266ebe868f809211b9605c11c581183e542f324f373f2771b717d`  
		Last Modified: Tue, 17 Jul 2018 11:56:11 GMT  
		Size: 90.9 MB (90897194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6963d1c2bce728883af137cbc15027f18ae760537534fcd7a0bc2ef32e1596aa`  
		Last Modified: Tue, 17 Jul 2018 11:55:34 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4` - linux; 386

```console
$ docker pull plone@sha256:164270e072868e94dc068557141a16d8d1574dd617068074137bc39ffb023cd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135297008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8bccea7a4e3f650a0d63dfcd855560618b42b928c265f565d052af496bff8a8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:12:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 12:12:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 13:47:00 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 13:47:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:47:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 13:47:13 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 13:50:59 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 13:51:07 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 13:51:21 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 13:51:22 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 21:32:17 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Tue, 17 Jul 2018 21:32:17 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 21:32:18 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 21:32:27 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 21:45:52 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 21:45:54 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 21:45:54 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Tue, 17 Jul 2018 21:45:55 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 21:45:55 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 21:45:55 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 21:45:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 21:45:56 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcc99840112858188480ae8192fd4226544b85ce06b2aae7564dfbac8fa2aa`  
		Last Modified: Tue, 17 Jul 2018 14:38:53 GMT  
		Size: 3.3 MB (3331409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2abdbd9954ddff3491302ee0ff11d08d33ca2fe2652c098133afae9438c9f7b`  
		Last Modified: Tue, 17 Jul 2018 14:38:59 GMT  
		Size: 15.5 MB (15547207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7dd965b98c6b63d1f747f21f2697c09edd68bef6718779f44d46c01e37f2f42`  
		Last Modified: Tue, 17 Jul 2018 14:38:53 GMT  
		Size: 2.1 MB (2068141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc172f1c1e4fddf2c0651c8ea9cbc1b7749f1791c624d3d49e97439a46efa71`  
		Last Modified: Tue, 17 Jul 2018 22:03:36 GMT  
		Size: 3.9 KB (3875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dfdc16a22caa1ad7da51c8d65b80e70c77181bc0337848299790a5ea1a673b4`  
		Last Modified: Tue, 17 Jul 2018 22:03:36 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f35db4239d7101cb1f980d41fe5c54b6cfb54cf0462fc6430ab493c8953bb83`  
		Last Modified: Tue, 17 Jul 2018 22:04:35 GMT  
		Size: 91.2 MB (91217346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a2d12527744be7c2a7bdae732012af0672f57ebad5d31cf738143938ccc3ca`  
		Last Modified: Tue, 17 Jul 2018 22:03:37 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3`

```console
$ docker pull plone@sha256:fac84437ee22a3f6eb4df0b04eddb20940e00128475c7d51cea2bd71c621cdab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:4.3` - linux; amd64

```console
$ docker pull plone@sha256:bed703c1e290306381450d62552bfa7a5226457ffff2fbb07fc37b786f9d9286
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135131640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c1814c16624f58366df8bf317f3320e9b503a777f2d8930aa3d6b0ef2ce033`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:36:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 00:36:07 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 01:04:41 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 01:04:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:04:54 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 01:04:54 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 01:08:13 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 01:08:13 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 01:08:27 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 01:08:27 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 11:29:03 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Tue, 17 Jul 2018 11:29:03 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 11:29:04 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 11:29:05 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 11:39:51 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 11:39:52 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:39:53 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Tue, 17 Jul 2018 11:39:53 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 11:39:54 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 11:39:54 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 11:39:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:39:55 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87541f2e904e7c44d19df4009e43f8b39a28f74ec41dee011098120423af5cf`  
		Last Modified: Tue, 17 Jul 2018 02:01:09 GMT  
		Size: 3.3 MB (3280969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81dc5ba046c839725ba28488b7f0c4279c7c5734553e7007b973674d2b5476a1`  
		Last Modified: Tue, 17 Jul 2018 02:01:15 GMT  
		Size: 16.4 MB (16392841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b411fa1b92c96a5dbd6e2ea82848104e5f3d78ffc7b8a038e1db4f0dbdce3c7d`  
		Last Modified: Tue, 17 Jul 2018 02:01:10 GMT  
		Size: 2.1 MB (2068198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:329b16ac8504cdc9130f992417dc0c227306b5a6a610ba98977d59d7634104c5`  
		Last Modified: Tue, 17 Jul 2018 11:55:34 GMT  
		Size: 3.9 KB (3881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744c06f82c2dc8aaee5a3cd0186737822101aaf3e6ef064f3a035adfb4ba00af`  
		Last Modified: Tue, 17 Jul 2018 11:55:34 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39235d03b01266ebe868f809211b9605c11c581183e542f324f373f2771b717d`  
		Last Modified: Tue, 17 Jul 2018 11:56:11 GMT  
		Size: 90.9 MB (90897194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6963d1c2bce728883af137cbc15027f18ae760537534fcd7a0bc2ef32e1596aa`  
		Last Modified: Tue, 17 Jul 2018 11:55:34 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3` - linux; 386

```console
$ docker pull plone@sha256:164270e072868e94dc068557141a16d8d1574dd617068074137bc39ffb023cd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135297008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8bccea7a4e3f650a0d63dfcd855560618b42b928c265f565d052af496bff8a8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:12:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 12:12:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 13:47:00 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 13:47:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:47:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 13:47:13 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 13:50:59 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 13:51:07 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 13:51:21 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 13:51:22 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 21:32:17 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Tue, 17 Jul 2018 21:32:17 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 21:32:18 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 21:32:27 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 21:45:52 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 21:45:54 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 21:45:54 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Tue, 17 Jul 2018 21:45:55 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 21:45:55 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 21:45:55 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 21:45:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 21:45:56 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcc99840112858188480ae8192fd4226544b85ce06b2aae7564dfbac8fa2aa`  
		Last Modified: Tue, 17 Jul 2018 14:38:53 GMT  
		Size: 3.3 MB (3331409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2abdbd9954ddff3491302ee0ff11d08d33ca2fe2652c098133afae9438c9f7b`  
		Last Modified: Tue, 17 Jul 2018 14:38:59 GMT  
		Size: 15.5 MB (15547207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7dd965b98c6b63d1f747f21f2697c09edd68bef6718779f44d46c01e37f2f42`  
		Last Modified: Tue, 17 Jul 2018 14:38:53 GMT  
		Size: 2.1 MB (2068141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc172f1c1e4fddf2c0651c8ea9cbc1b7749f1791c624d3d49e97439a46efa71`  
		Last Modified: Tue, 17 Jul 2018 22:03:36 GMT  
		Size: 3.9 KB (3875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dfdc16a22caa1ad7da51c8d65b80e70c77181bc0337848299790a5ea1a673b4`  
		Last Modified: Tue, 17 Jul 2018 22:03:36 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f35db4239d7101cb1f980d41fe5c54b6cfb54cf0462fc6430ab493c8953bb83`  
		Last Modified: Tue, 17 Jul 2018 22:04:35 GMT  
		Size: 91.2 MB (91217346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a2d12527744be7c2a7bdae732012af0672f57ebad5d31cf738143938ccc3ca`  
		Last Modified: Tue, 17 Jul 2018 22:03:37 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.17`

```console
$ docker pull plone@sha256:fac84437ee22a3f6eb4df0b04eddb20940e00128475c7d51cea2bd71c621cdab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:4.3.17` - linux; amd64

```console
$ docker pull plone@sha256:bed703c1e290306381450d62552bfa7a5226457ffff2fbb07fc37b786f9d9286
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135131640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c1814c16624f58366df8bf317f3320e9b503a777f2d8930aa3d6b0ef2ce033`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:36:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 00:36:07 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 01:04:41 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 01:04:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:04:54 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 01:04:54 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 01:08:13 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 01:08:13 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 01:08:27 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 01:08:27 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 11:29:03 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Tue, 17 Jul 2018 11:29:03 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 11:29:04 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 11:29:05 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 11:39:51 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 11:39:52 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:39:53 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Tue, 17 Jul 2018 11:39:53 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 11:39:54 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 11:39:54 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 11:39:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:39:55 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87541f2e904e7c44d19df4009e43f8b39a28f74ec41dee011098120423af5cf`  
		Last Modified: Tue, 17 Jul 2018 02:01:09 GMT  
		Size: 3.3 MB (3280969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81dc5ba046c839725ba28488b7f0c4279c7c5734553e7007b973674d2b5476a1`  
		Last Modified: Tue, 17 Jul 2018 02:01:15 GMT  
		Size: 16.4 MB (16392841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b411fa1b92c96a5dbd6e2ea82848104e5f3d78ffc7b8a038e1db4f0dbdce3c7d`  
		Last Modified: Tue, 17 Jul 2018 02:01:10 GMT  
		Size: 2.1 MB (2068198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:329b16ac8504cdc9130f992417dc0c227306b5a6a610ba98977d59d7634104c5`  
		Last Modified: Tue, 17 Jul 2018 11:55:34 GMT  
		Size: 3.9 KB (3881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744c06f82c2dc8aaee5a3cd0186737822101aaf3e6ef064f3a035adfb4ba00af`  
		Last Modified: Tue, 17 Jul 2018 11:55:34 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39235d03b01266ebe868f809211b9605c11c581183e542f324f373f2771b717d`  
		Last Modified: Tue, 17 Jul 2018 11:56:11 GMT  
		Size: 90.9 MB (90897194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6963d1c2bce728883af137cbc15027f18ae760537534fcd7a0bc2ef32e1596aa`  
		Last Modified: Tue, 17 Jul 2018 11:55:34 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.17` - linux; 386

```console
$ docker pull plone@sha256:164270e072868e94dc068557141a16d8d1574dd617068074137bc39ffb023cd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135297008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8bccea7a4e3f650a0d63dfcd855560618b42b928c265f565d052af496bff8a8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:12:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 12:12:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 13:47:00 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 13:47:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:47:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 13:47:13 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 13:50:59 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 13:51:07 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 13:51:21 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 13:51:22 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 21:32:17 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Tue, 17 Jul 2018 21:32:17 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 21:32:18 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 21:32:27 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 21:45:52 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 21:45:54 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 21:45:54 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Tue, 17 Jul 2018 21:45:55 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 21:45:55 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 21:45:55 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 21:45:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 21:45:56 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcc99840112858188480ae8192fd4226544b85ce06b2aae7564dfbac8fa2aa`  
		Last Modified: Tue, 17 Jul 2018 14:38:53 GMT  
		Size: 3.3 MB (3331409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2abdbd9954ddff3491302ee0ff11d08d33ca2fe2652c098133afae9438c9f7b`  
		Last Modified: Tue, 17 Jul 2018 14:38:59 GMT  
		Size: 15.5 MB (15547207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7dd965b98c6b63d1f747f21f2697c09edd68bef6718779f44d46c01e37f2f42`  
		Last Modified: Tue, 17 Jul 2018 14:38:53 GMT  
		Size: 2.1 MB (2068141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc172f1c1e4fddf2c0651c8ea9cbc1b7749f1791c624d3d49e97439a46efa71`  
		Last Modified: Tue, 17 Jul 2018 22:03:36 GMT  
		Size: 3.9 KB (3875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dfdc16a22caa1ad7da51c8d65b80e70c77181bc0337848299790a5ea1a673b4`  
		Last Modified: Tue, 17 Jul 2018 22:03:36 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f35db4239d7101cb1f980d41fe5c54b6cfb54cf0462fc6430ab493c8953bb83`  
		Last Modified: Tue, 17 Jul 2018 22:04:35 GMT  
		Size: 91.2 MB (91217346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a2d12527744be7c2a7bdae732012af0672f57ebad5d31cf738143938ccc3ca`  
		Last Modified: Tue, 17 Jul 2018 22:03:37 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.17-alpine`

```console
$ docker pull plone@sha256:8c78e8c32bd64fa32934b39a64a8f999f8d3dfc14249cc7ed6e0967ea6b90840
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:4.3.17-alpine` - linux; amd64

```console
$ docker pull plone@sha256:a4c3be7807207002b3406101bd92fbac44b1a638f5c8008439dba997e9241a8d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.6 MB (84578132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc7a59b0328cc4fb44892def2b443ec657745149c8b3dc78ea52342fd8dbcdb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:11:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 18:20:28 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 18:36:38 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 06 Jul 2018 18:36:39 GMT
RUN apk add --no-cache ca-certificates
# Fri, 06 Jul 2018 18:36:39 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 06 Jul 2018 18:36:40 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 01:29:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 01:29:11 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 01:29:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 01:29:18 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 11:40:21 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Tue, 17 Jul 2018 11:40:21 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 11:40:23 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 11:40:23 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 11:51:22 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 11:51:23 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:51:24 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Tue, 17 Jul 2018 11:51:24 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 11:51:25 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 11:51:26 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 11:51:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:51:27 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a85618b748da90a4b9a3b07c22052edda7b57ed2925a3a0d50980975ae3661`  
		Last Modified: Fri, 06 Jul 2018 18:55:24 GMT  
		Size: 308.3 KB (308318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc0dee7ce0d732c0e2a9f820e13a76425e40f93691df005f289f97bff674736`  
		Last Modified: Tue, 17 Jul 2018 02:06:19 GMT  
		Size: 18.9 MB (18875080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed02188418953afab96c5a516e097c405d3ec115656bdf8584cf6c8b84973c6e`  
		Last Modified: Tue, 17 Jul 2018 02:06:16 GMT  
		Size: 1.9 MB (1852968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ff6f609de88b68e33b1390653675c3cc4cf557ca0692f9492343a8d27f8051`  
		Last Modified: Tue, 17 Jul 2018 11:57:00 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ab498b20618fd4484bf0ef2743c940006bc9f44260940f78f5c3d5383a391c`  
		Last Modified: Tue, 17 Jul 2018 11:57:00 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2756b685f220b05d4583a2ca6203a7ad2325bdaecc5a0f129603b1e17d83612e`  
		Last Modified: Tue, 17 Jul 2018 11:57:31 GMT  
		Size: 61.4 MB (61434241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a58fb924699caeef71bf95a621aedb709b9e8d245c8f24c7a71525978b79a22`  
		Last Modified: Tue, 17 Jul 2018 11:57:00 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.17-alpine` - linux; 386

```console
$ docker pull plone@sha256:834993f425a10a31644e41310a2a50eedb48c34fb87f4c0b13d3dce4c1106769
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82840204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1637eeb4f76f422fb22112efcd89760de819e91f92d17a480bc0667e4d8d9d19`
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
# Tue, 17 Jul 2018 14:11:59 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 14:11:59 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 14:12:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 14:12:06 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 21:46:34 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Tue, 17 Jul 2018 21:46:34 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 21:46:35 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 21:46:36 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 21:59:03 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 21:59:05 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 21:59:06 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Tue, 17 Jul 2018 21:59:06 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 21:59:06 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 21:59:07 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 21:59:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 21:59:07 GMT
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
	-	`sha256:42ea23eb791b31baef526222104da0f46416f866dcc17d96d75f8b67a743c7fe`  
		Last Modified: Tue, 17 Jul 2018 14:44:11 GMT  
		Size: 18.6 MB (18645096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73ed2bab60790e7a7f966b7c4febc57207760c47c67d6970d17b1eef4a128a5`  
		Last Modified: Tue, 17 Jul 2018 14:44:05 GMT  
		Size: 1.9 MB (1852472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09a34de6324f9cb97dace50e6fd790c55b10c6b90359a4d66c96c36b6c403441`  
		Last Modified: Tue, 17 Jul 2018 22:05:23 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12b20346bbba1df3b44071489894940feb3dc8580b4b1e0d4dc8e92f0c7d6d7`  
		Last Modified: Tue, 17 Jul 2018 22:05:24 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10d00f1dd1aed3d2b6d38a358b489189d7b17cc7728c600256944853da8107a`  
		Last Modified: Tue, 17 Jul 2018 22:05:54 GMT  
		Size: 59.9 MB (59903516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fb9339285169f60af6edc41f73fee3c396669d128477740bee244c9968ba3c`  
		Last Modified: Tue, 17 Jul 2018 22:05:23 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.17-alpine` - linux; s390x

```console
$ docker pull plone@sha256:bf21c6eccc030ae573e05d802c2879c771fdb9d9337359fe04e5b0243863949a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84358383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2b601cca0be2531a8bbb565d1704efca3709397b91c437f7fd1561222ae8dc5`
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
# Tue, 17 Jul 2018 13:01:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 13:01:44 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 13:01:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 13:01:49 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 16:14:35 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Tue, 17 Jul 2018 16:14:35 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 16:14:35 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 16:14:36 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 16:23:50 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 16:23:51 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 16:23:51 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Tue, 17 Jul 2018 16:23:52 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 16:23:52 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 16:23:52 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 16:23:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 16:23:53 GMT
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
	-	`sha256:88acbfb813791a573a0ea417db8a77eac9c141729d70da4d853968da215918c6`  
		Last Modified: Tue, 17 Jul 2018 13:12:14 GMT  
		Size: 19.7 MB (19691099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff42010095c31b7e385c0970c14b3cf4da52f0e7b1460ef559deeff359a2b358`  
		Last Modified: Tue, 17 Jul 2018 13:12:10 GMT  
		Size: 1.9 MB (1852789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea58192442752a1da8443a503c66da800aff0957b2bb725bdfc2abd875397b5`  
		Last Modified: Tue, 17 Jul 2018 16:24:54 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87af156281f0f0e999f20884fc83a138b335ad172385f2b36029f82eedd1c72c`  
		Last Modified: Tue, 17 Jul 2018 16:24:55 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f694eb8131d8fcb708885aaf8e3555879ba6a066843b91f5d9cec9c784a187ad`  
		Last Modified: Tue, 17 Jul 2018 16:25:12 GMT  
		Size: 60.3 MB (60315966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ba282e15c96a969e9cba4321e22b5097b9f6527e4c67cf29ca57517f2392e4`  
		Last Modified: Tue, 17 Jul 2018 16:24:54 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3-alpine`

```console
$ docker pull plone@sha256:8c78e8c32bd64fa32934b39a64a8f999f8d3dfc14249cc7ed6e0967ea6b90840
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:4.3-alpine` - linux; amd64

```console
$ docker pull plone@sha256:a4c3be7807207002b3406101bd92fbac44b1a638f5c8008439dba997e9241a8d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.6 MB (84578132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc7a59b0328cc4fb44892def2b443ec657745149c8b3dc78ea52342fd8dbcdb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:11:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 18:20:28 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 18:36:38 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 06 Jul 2018 18:36:39 GMT
RUN apk add --no-cache ca-certificates
# Fri, 06 Jul 2018 18:36:39 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 06 Jul 2018 18:36:40 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 01:29:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 01:29:11 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 01:29:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 01:29:18 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 11:40:21 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Tue, 17 Jul 2018 11:40:21 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 11:40:23 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 11:40:23 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 11:51:22 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 11:51:23 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:51:24 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Tue, 17 Jul 2018 11:51:24 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 11:51:25 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 11:51:26 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 11:51:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:51:27 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a85618b748da90a4b9a3b07c22052edda7b57ed2925a3a0d50980975ae3661`  
		Last Modified: Fri, 06 Jul 2018 18:55:24 GMT  
		Size: 308.3 KB (308318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc0dee7ce0d732c0e2a9f820e13a76425e40f93691df005f289f97bff674736`  
		Last Modified: Tue, 17 Jul 2018 02:06:19 GMT  
		Size: 18.9 MB (18875080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed02188418953afab96c5a516e097c405d3ec115656bdf8584cf6c8b84973c6e`  
		Last Modified: Tue, 17 Jul 2018 02:06:16 GMT  
		Size: 1.9 MB (1852968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ff6f609de88b68e33b1390653675c3cc4cf557ca0692f9492343a8d27f8051`  
		Last Modified: Tue, 17 Jul 2018 11:57:00 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ab498b20618fd4484bf0ef2743c940006bc9f44260940f78f5c3d5383a391c`  
		Last Modified: Tue, 17 Jul 2018 11:57:00 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2756b685f220b05d4583a2ca6203a7ad2325bdaecc5a0f129603b1e17d83612e`  
		Last Modified: Tue, 17 Jul 2018 11:57:31 GMT  
		Size: 61.4 MB (61434241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a58fb924699caeef71bf95a621aedb709b9e8d245c8f24c7a71525978b79a22`  
		Last Modified: Tue, 17 Jul 2018 11:57:00 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3-alpine` - linux; 386

```console
$ docker pull plone@sha256:834993f425a10a31644e41310a2a50eedb48c34fb87f4c0b13d3dce4c1106769
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82840204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1637eeb4f76f422fb22112efcd89760de819e91f92d17a480bc0667e4d8d9d19`
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
# Tue, 17 Jul 2018 14:11:59 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 14:11:59 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 14:12:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 14:12:06 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 21:46:34 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Tue, 17 Jul 2018 21:46:34 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 21:46:35 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 21:46:36 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 21:59:03 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 21:59:05 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 21:59:06 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Tue, 17 Jul 2018 21:59:06 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 21:59:06 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 21:59:07 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 21:59:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 21:59:07 GMT
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
	-	`sha256:42ea23eb791b31baef526222104da0f46416f866dcc17d96d75f8b67a743c7fe`  
		Last Modified: Tue, 17 Jul 2018 14:44:11 GMT  
		Size: 18.6 MB (18645096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73ed2bab60790e7a7f966b7c4febc57207760c47c67d6970d17b1eef4a128a5`  
		Last Modified: Tue, 17 Jul 2018 14:44:05 GMT  
		Size: 1.9 MB (1852472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09a34de6324f9cb97dace50e6fd790c55b10c6b90359a4d66c96c36b6c403441`  
		Last Modified: Tue, 17 Jul 2018 22:05:23 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12b20346bbba1df3b44071489894940feb3dc8580b4b1e0d4dc8e92f0c7d6d7`  
		Last Modified: Tue, 17 Jul 2018 22:05:24 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10d00f1dd1aed3d2b6d38a358b489189d7b17cc7728c600256944853da8107a`  
		Last Modified: Tue, 17 Jul 2018 22:05:54 GMT  
		Size: 59.9 MB (59903516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fb9339285169f60af6edc41f73fee3c396669d128477740bee244c9968ba3c`  
		Last Modified: Tue, 17 Jul 2018 22:05:23 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3-alpine` - linux; s390x

```console
$ docker pull plone@sha256:bf21c6eccc030ae573e05d802c2879c771fdb9d9337359fe04e5b0243863949a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84358383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2b601cca0be2531a8bbb565d1704efca3709397b91c437f7fd1561222ae8dc5`
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
# Tue, 17 Jul 2018 13:01:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 13:01:44 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 13:01:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 13:01:49 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 16:14:35 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Tue, 17 Jul 2018 16:14:35 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 16:14:35 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 16:14:36 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 16:23:50 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 16:23:51 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 16:23:51 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Tue, 17 Jul 2018 16:23:52 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 16:23:52 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 16:23:52 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 16:23:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 16:23:53 GMT
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
	-	`sha256:88acbfb813791a573a0ea417db8a77eac9c141729d70da4d853968da215918c6`  
		Last Modified: Tue, 17 Jul 2018 13:12:14 GMT  
		Size: 19.7 MB (19691099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff42010095c31b7e385c0970c14b3cf4da52f0e7b1460ef559deeff359a2b358`  
		Last Modified: Tue, 17 Jul 2018 13:12:10 GMT  
		Size: 1.9 MB (1852789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea58192442752a1da8443a503c66da800aff0957b2bb725bdfc2abd875397b5`  
		Last Modified: Tue, 17 Jul 2018 16:24:54 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87af156281f0f0e999f20884fc83a138b335ad172385f2b36029f82eedd1c72c`  
		Last Modified: Tue, 17 Jul 2018 16:24:55 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f694eb8131d8fcb708885aaf8e3555879ba6a066843b91f5d9cec9c784a187ad`  
		Last Modified: Tue, 17 Jul 2018 16:25:12 GMT  
		Size: 60.3 MB (60315966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ba282e15c96a969e9cba4321e22b5097b9f6527e4c67cf29ca57517f2392e4`  
		Last Modified: Tue, 17 Jul 2018 16:24:54 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4-alpine`

```console
$ docker pull plone@sha256:8c78e8c32bd64fa32934b39a64a8f999f8d3dfc14249cc7ed6e0967ea6b90840
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:4-alpine` - linux; amd64

```console
$ docker pull plone@sha256:a4c3be7807207002b3406101bd92fbac44b1a638f5c8008439dba997e9241a8d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.6 MB (84578132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc7a59b0328cc4fb44892def2b443ec657745149c8b3dc78ea52342fd8dbcdb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:11:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 18:20:28 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 18:36:38 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 06 Jul 2018 18:36:39 GMT
RUN apk add --no-cache ca-certificates
# Fri, 06 Jul 2018 18:36:39 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 06 Jul 2018 18:36:40 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 01:29:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 01:29:11 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 01:29:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 01:29:18 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 11:40:21 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Tue, 17 Jul 2018 11:40:21 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 11:40:23 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 11:40:23 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 11:51:22 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 11:51:23 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:51:24 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Tue, 17 Jul 2018 11:51:24 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 11:51:25 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 11:51:26 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 11:51:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:51:27 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a85618b748da90a4b9a3b07c22052edda7b57ed2925a3a0d50980975ae3661`  
		Last Modified: Fri, 06 Jul 2018 18:55:24 GMT  
		Size: 308.3 KB (308318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc0dee7ce0d732c0e2a9f820e13a76425e40f93691df005f289f97bff674736`  
		Last Modified: Tue, 17 Jul 2018 02:06:19 GMT  
		Size: 18.9 MB (18875080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed02188418953afab96c5a516e097c405d3ec115656bdf8584cf6c8b84973c6e`  
		Last Modified: Tue, 17 Jul 2018 02:06:16 GMT  
		Size: 1.9 MB (1852968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ff6f609de88b68e33b1390653675c3cc4cf557ca0692f9492343a8d27f8051`  
		Last Modified: Tue, 17 Jul 2018 11:57:00 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ab498b20618fd4484bf0ef2743c940006bc9f44260940f78f5c3d5383a391c`  
		Last Modified: Tue, 17 Jul 2018 11:57:00 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2756b685f220b05d4583a2ca6203a7ad2325bdaecc5a0f129603b1e17d83612e`  
		Last Modified: Tue, 17 Jul 2018 11:57:31 GMT  
		Size: 61.4 MB (61434241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a58fb924699caeef71bf95a621aedb709b9e8d245c8f24c7a71525978b79a22`  
		Last Modified: Tue, 17 Jul 2018 11:57:00 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4-alpine` - linux; 386

```console
$ docker pull plone@sha256:834993f425a10a31644e41310a2a50eedb48c34fb87f4c0b13d3dce4c1106769
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82840204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1637eeb4f76f422fb22112efcd89760de819e91f92d17a480bc0667e4d8d9d19`
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
# Tue, 17 Jul 2018 14:11:59 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 14:11:59 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 14:12:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 14:12:06 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 21:46:34 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Tue, 17 Jul 2018 21:46:34 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 21:46:35 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 21:46:36 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 21:59:03 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 21:59:05 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 21:59:06 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Tue, 17 Jul 2018 21:59:06 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 21:59:06 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 21:59:07 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 21:59:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 21:59:07 GMT
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
	-	`sha256:42ea23eb791b31baef526222104da0f46416f866dcc17d96d75f8b67a743c7fe`  
		Last Modified: Tue, 17 Jul 2018 14:44:11 GMT  
		Size: 18.6 MB (18645096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73ed2bab60790e7a7f966b7c4febc57207760c47c67d6970d17b1eef4a128a5`  
		Last Modified: Tue, 17 Jul 2018 14:44:05 GMT  
		Size: 1.9 MB (1852472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09a34de6324f9cb97dace50e6fd790c55b10c6b90359a4d66c96c36b6c403441`  
		Last Modified: Tue, 17 Jul 2018 22:05:23 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12b20346bbba1df3b44071489894940feb3dc8580b4b1e0d4dc8e92f0c7d6d7`  
		Last Modified: Tue, 17 Jul 2018 22:05:24 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10d00f1dd1aed3d2b6d38a358b489189d7b17cc7728c600256944853da8107a`  
		Last Modified: Tue, 17 Jul 2018 22:05:54 GMT  
		Size: 59.9 MB (59903516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47fb9339285169f60af6edc41f73fee3c396669d128477740bee244c9968ba3c`  
		Last Modified: Tue, 17 Jul 2018 22:05:23 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4-alpine` - linux; s390x

```console
$ docker pull plone@sha256:bf21c6eccc030ae573e05d802c2879c771fdb9d9337359fe04e5b0243863949a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84358383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2b601cca0be2531a8bbb565d1704efca3709397b91c437f7fd1561222ae8dc5`
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
# Tue, 17 Jul 2018 13:01:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 13:01:44 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 13:01:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 13:01:49 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 16:14:35 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Tue, 17 Jul 2018 16:14:35 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 16:14:35 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 16:14:36 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 16:23:50 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 16:23:51 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 16:23:51 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Tue, 17 Jul 2018 16:23:52 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 16:23:52 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 16:23:52 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 16:23:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 16:23:53 GMT
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
	-	`sha256:88acbfb813791a573a0ea417db8a77eac9c141729d70da4d853968da215918c6`  
		Last Modified: Tue, 17 Jul 2018 13:12:14 GMT  
		Size: 19.7 MB (19691099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff42010095c31b7e385c0970c14b3cf4da52f0e7b1460ef559deeff359a2b358`  
		Last Modified: Tue, 17 Jul 2018 13:12:10 GMT  
		Size: 1.9 MB (1852789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea58192442752a1da8443a503c66da800aff0957b2bb725bdfc2abd875397b5`  
		Last Modified: Tue, 17 Jul 2018 16:24:54 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87af156281f0f0e999f20884fc83a138b335ad172385f2b36029f82eedd1c72c`  
		Last Modified: Tue, 17 Jul 2018 16:24:55 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f694eb8131d8fcb708885aaf8e3555879ba6a066843b91f5d9cec9c784a187ad`  
		Last Modified: Tue, 17 Jul 2018 16:25:12 GMT  
		Size: 60.3 MB (60315966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ba282e15c96a969e9cba4321e22b5097b9f6527e4c67cf29ca57517f2392e4`  
		Last Modified: Tue, 17 Jul 2018 16:24:54 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5`

```console
$ docker pull plone@sha256:cc28d724b549c61f12d70aa3d6579e08b68a71771a96bde4d405172a5690316f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:5` - linux; amd64

```console
$ docker pull plone@sha256:d88393e05af051478f6f8b1b670a8f39ca914d98999fe557c869cedf75a77794
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160483472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf336928098ccf7b3a41c8a0c5c1e46f14ac2da5ac7bfd182b5c9026a0cf3aa1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:36:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 00:36:07 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 01:04:41 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 01:04:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:04:54 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 01:04:54 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 01:08:13 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 01:08:13 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 01:08:27 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 01:08:27 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 11:08:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Tue, 17 Jul 2018 11:08:07 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 11:08:08 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 11:08:08 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 11:16:21 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 11:16:23 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:16:24 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Tue, 17 Jul 2018 11:16:24 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 11:16:25 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 11:16:25 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 11:16:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:16:26 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87541f2e904e7c44d19df4009e43f8b39a28f74ec41dee011098120423af5cf`  
		Last Modified: Tue, 17 Jul 2018 02:01:09 GMT  
		Size: 3.3 MB (3280969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81dc5ba046c839725ba28488b7f0c4279c7c5734553e7007b973674d2b5476a1`  
		Last Modified: Tue, 17 Jul 2018 02:01:15 GMT  
		Size: 16.4 MB (16392841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b411fa1b92c96a5dbd6e2ea82848104e5f3d78ffc7b8a038e1db4f0dbdce3c7d`  
		Last Modified: Tue, 17 Jul 2018 02:01:10 GMT  
		Size: 2.1 MB (2068198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90a95a7cf94c32e59f1f6b8f48f52b7bd9068966b210bd637e4c1626c6213c6`  
		Last Modified: Tue, 17 Jul 2018 11:51:54 GMT  
		Size: 3.9 KB (3883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981f64a5e35d1f64600de2764a680f89fdfe419771f3157503f2f514a8705baa`  
		Last Modified: Tue, 17 Jul 2018 11:51:54 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806a8d4c01ea53f738e3401ca4e6331b64feb0e13ff4b6cb7662b143d09132c9`  
		Last Modified: Tue, 17 Jul 2018 11:52:52 GMT  
		Size: 116.2 MB (116249021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239c92223ccb30fc73f74464219bce42704b74b72842b2cfd0b52004865251f5`  
		Last Modified: Tue, 17 Jul 2018 11:51:55 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5` - linux; 386

```console
$ docker pull plone@sha256:1fb544f14333eabde19ee2df03708cebb1ced16463eacd2388d82615c24554d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160465741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f9f80c97d10139e7fdd294d18d24be2aefa3b49c1c837dc275be0bb04c0ed80`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:12:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 12:12:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 13:47:00 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 13:47:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:47:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 13:47:13 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 13:50:59 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 13:51:07 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 13:51:21 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 13:51:22 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 21:07:52 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Tue, 17 Jul 2018 21:07:52 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 21:07:54 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 21:07:54 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 21:17:57 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 21:17:58 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 21:17:59 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Tue, 17 Jul 2018 21:17:59 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 21:18:00 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 21:18:00 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 21:18:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 21:18:01 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcc99840112858188480ae8192fd4226544b85ce06b2aae7564dfbac8fa2aa`  
		Last Modified: Tue, 17 Jul 2018 14:38:53 GMT  
		Size: 3.3 MB (3331409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2abdbd9954ddff3491302ee0ff11d08d33ca2fe2652c098133afae9438c9f7b`  
		Last Modified: Tue, 17 Jul 2018 14:38:59 GMT  
		Size: 15.5 MB (15547207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7dd965b98c6b63d1f747f21f2697c09edd68bef6718779f44d46c01e37f2f42`  
		Last Modified: Tue, 17 Jul 2018 14:38:53 GMT  
		Size: 2.1 MB (2068141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b1f7dda399d23225d8d3328b8b334536324eae2e7d3c21c4bb79f6eeb61070`  
		Last Modified: Tue, 17 Jul 2018 21:59:32 GMT  
		Size: 3.9 KB (3876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d17b7c167fe39da72ae9c7b5c3833c55377d07dfe28c2573a264f945b609e39`  
		Last Modified: Tue, 17 Jul 2018 21:59:32 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87a238583691bab497754279d4ab05e1b548d27c4b0b9925287b8d60263e5e5`  
		Last Modified: Tue, 17 Jul 2018 22:00:36 GMT  
		Size: 116.4 MB (116386079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24836a05f30e1837cf8fe1776ce14c4a245108f236d6e70e30b2c8bf6df0e0b`  
		Last Modified: Tue, 17 Jul 2018 21:59:32 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1`

```console
$ docker pull plone@sha256:cc28d724b549c61f12d70aa3d6579e08b68a71771a96bde4d405172a5690316f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:5.1` - linux; amd64

```console
$ docker pull plone@sha256:d88393e05af051478f6f8b1b670a8f39ca914d98999fe557c869cedf75a77794
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160483472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf336928098ccf7b3a41c8a0c5c1e46f14ac2da5ac7bfd182b5c9026a0cf3aa1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:36:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 00:36:07 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 01:04:41 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 01:04:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:04:54 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 01:04:54 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 01:08:13 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 01:08:13 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 01:08:27 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 01:08:27 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 11:08:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Tue, 17 Jul 2018 11:08:07 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 11:08:08 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 11:08:08 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 11:16:21 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 11:16:23 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:16:24 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Tue, 17 Jul 2018 11:16:24 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 11:16:25 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 11:16:25 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 11:16:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:16:26 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87541f2e904e7c44d19df4009e43f8b39a28f74ec41dee011098120423af5cf`  
		Last Modified: Tue, 17 Jul 2018 02:01:09 GMT  
		Size: 3.3 MB (3280969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81dc5ba046c839725ba28488b7f0c4279c7c5734553e7007b973674d2b5476a1`  
		Last Modified: Tue, 17 Jul 2018 02:01:15 GMT  
		Size: 16.4 MB (16392841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b411fa1b92c96a5dbd6e2ea82848104e5f3d78ffc7b8a038e1db4f0dbdce3c7d`  
		Last Modified: Tue, 17 Jul 2018 02:01:10 GMT  
		Size: 2.1 MB (2068198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90a95a7cf94c32e59f1f6b8f48f52b7bd9068966b210bd637e4c1626c6213c6`  
		Last Modified: Tue, 17 Jul 2018 11:51:54 GMT  
		Size: 3.9 KB (3883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981f64a5e35d1f64600de2764a680f89fdfe419771f3157503f2f514a8705baa`  
		Last Modified: Tue, 17 Jul 2018 11:51:54 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806a8d4c01ea53f738e3401ca4e6331b64feb0e13ff4b6cb7662b143d09132c9`  
		Last Modified: Tue, 17 Jul 2018 11:52:52 GMT  
		Size: 116.2 MB (116249021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239c92223ccb30fc73f74464219bce42704b74b72842b2cfd0b52004865251f5`  
		Last Modified: Tue, 17 Jul 2018 11:51:55 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1` - linux; 386

```console
$ docker pull plone@sha256:1fb544f14333eabde19ee2df03708cebb1ced16463eacd2388d82615c24554d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160465741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f9f80c97d10139e7fdd294d18d24be2aefa3b49c1c837dc275be0bb04c0ed80`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:12:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 12:12:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 13:47:00 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 13:47:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:47:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 13:47:13 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 13:50:59 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 13:51:07 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 13:51:21 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 13:51:22 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 21:07:52 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Tue, 17 Jul 2018 21:07:52 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 21:07:54 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 21:07:54 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 21:17:57 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 21:17:58 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 21:17:59 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Tue, 17 Jul 2018 21:17:59 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 21:18:00 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 21:18:00 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 21:18:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 21:18:01 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcc99840112858188480ae8192fd4226544b85ce06b2aae7564dfbac8fa2aa`  
		Last Modified: Tue, 17 Jul 2018 14:38:53 GMT  
		Size: 3.3 MB (3331409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2abdbd9954ddff3491302ee0ff11d08d33ca2fe2652c098133afae9438c9f7b`  
		Last Modified: Tue, 17 Jul 2018 14:38:59 GMT  
		Size: 15.5 MB (15547207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7dd965b98c6b63d1f747f21f2697c09edd68bef6718779f44d46c01e37f2f42`  
		Last Modified: Tue, 17 Jul 2018 14:38:53 GMT  
		Size: 2.1 MB (2068141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b1f7dda399d23225d8d3328b8b334536324eae2e7d3c21c4bb79f6eeb61070`  
		Last Modified: Tue, 17 Jul 2018 21:59:32 GMT  
		Size: 3.9 KB (3876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d17b7c167fe39da72ae9c7b5c3833c55377d07dfe28c2573a264f945b609e39`  
		Last Modified: Tue, 17 Jul 2018 21:59:32 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87a238583691bab497754279d4ab05e1b548d27c4b0b9925287b8d60263e5e5`  
		Last Modified: Tue, 17 Jul 2018 22:00:36 GMT  
		Size: 116.4 MB (116386079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24836a05f30e1837cf8fe1776ce14c4a245108f236d6e70e30b2c8bf6df0e0b`  
		Last Modified: Tue, 17 Jul 2018 21:59:32 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1.2`

```console
$ docker pull plone@sha256:cc28d724b549c61f12d70aa3d6579e08b68a71771a96bde4d405172a5690316f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:5.1.2` - linux; amd64

```console
$ docker pull plone@sha256:d88393e05af051478f6f8b1b670a8f39ca914d98999fe557c869cedf75a77794
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160483472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf336928098ccf7b3a41c8a0c5c1e46f14ac2da5ac7bfd182b5c9026a0cf3aa1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:36:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 00:36:07 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 01:04:41 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 01:04:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:04:54 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 01:04:54 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 01:08:13 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 01:08:13 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 01:08:27 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 01:08:27 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 11:08:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Tue, 17 Jul 2018 11:08:07 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 11:08:08 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 11:08:08 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 11:16:21 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 11:16:23 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:16:24 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Tue, 17 Jul 2018 11:16:24 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 11:16:25 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 11:16:25 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 11:16:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:16:26 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87541f2e904e7c44d19df4009e43f8b39a28f74ec41dee011098120423af5cf`  
		Last Modified: Tue, 17 Jul 2018 02:01:09 GMT  
		Size: 3.3 MB (3280969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81dc5ba046c839725ba28488b7f0c4279c7c5734553e7007b973674d2b5476a1`  
		Last Modified: Tue, 17 Jul 2018 02:01:15 GMT  
		Size: 16.4 MB (16392841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b411fa1b92c96a5dbd6e2ea82848104e5f3d78ffc7b8a038e1db4f0dbdce3c7d`  
		Last Modified: Tue, 17 Jul 2018 02:01:10 GMT  
		Size: 2.1 MB (2068198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90a95a7cf94c32e59f1f6b8f48f52b7bd9068966b210bd637e4c1626c6213c6`  
		Last Modified: Tue, 17 Jul 2018 11:51:54 GMT  
		Size: 3.9 KB (3883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981f64a5e35d1f64600de2764a680f89fdfe419771f3157503f2f514a8705baa`  
		Last Modified: Tue, 17 Jul 2018 11:51:54 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806a8d4c01ea53f738e3401ca4e6331b64feb0e13ff4b6cb7662b143d09132c9`  
		Last Modified: Tue, 17 Jul 2018 11:52:52 GMT  
		Size: 116.2 MB (116249021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239c92223ccb30fc73f74464219bce42704b74b72842b2cfd0b52004865251f5`  
		Last Modified: Tue, 17 Jul 2018 11:51:55 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.2` - linux; 386

```console
$ docker pull plone@sha256:1fb544f14333eabde19ee2df03708cebb1ced16463eacd2388d82615c24554d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160465741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f9f80c97d10139e7fdd294d18d24be2aefa3b49c1c837dc275be0bb04c0ed80`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:12:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 12:12:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 13:47:00 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 13:47:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:47:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 13:47:13 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 13:50:59 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 13:51:07 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 13:51:21 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 13:51:22 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 21:07:52 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Tue, 17 Jul 2018 21:07:52 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 21:07:54 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 21:07:54 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 21:17:57 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 21:17:58 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 21:17:59 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Tue, 17 Jul 2018 21:17:59 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 21:18:00 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 21:18:00 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 21:18:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 21:18:01 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcc99840112858188480ae8192fd4226544b85ce06b2aae7564dfbac8fa2aa`  
		Last Modified: Tue, 17 Jul 2018 14:38:53 GMT  
		Size: 3.3 MB (3331409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2abdbd9954ddff3491302ee0ff11d08d33ca2fe2652c098133afae9438c9f7b`  
		Last Modified: Tue, 17 Jul 2018 14:38:59 GMT  
		Size: 15.5 MB (15547207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7dd965b98c6b63d1f747f21f2697c09edd68bef6718779f44d46c01e37f2f42`  
		Last Modified: Tue, 17 Jul 2018 14:38:53 GMT  
		Size: 2.1 MB (2068141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b1f7dda399d23225d8d3328b8b334536324eae2e7d3c21c4bb79f6eeb61070`  
		Last Modified: Tue, 17 Jul 2018 21:59:32 GMT  
		Size: 3.9 KB (3876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d17b7c167fe39da72ae9c7b5c3833c55377d07dfe28c2573a264f945b609e39`  
		Last Modified: Tue, 17 Jul 2018 21:59:32 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87a238583691bab497754279d4ab05e1b548d27c4b0b9925287b8d60263e5e5`  
		Last Modified: Tue, 17 Jul 2018 22:00:36 GMT  
		Size: 116.4 MB (116386079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24836a05f30e1837cf8fe1776ce14c4a245108f236d6e70e30b2c8bf6df0e0b`  
		Last Modified: Tue, 17 Jul 2018 21:59:32 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1.2-alpine`

```console
$ docker pull plone@sha256:355e424b42bf950248f637f45c0a47625fe886de4768d772080d09d777a4d5f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:5.1.2-alpine` - linux; amd64

```console
$ docker pull plone@sha256:b37bc02253d7b30c5ff79f61b8b21bd772718d39e9f5d9a855bba11e11484ee2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108995320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4589a251fd2ad65962ac181ec7551aa286142abe8d30cf8720f2e12da0343b4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:11:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 18:20:28 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 18:36:38 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 06 Jul 2018 18:36:39 GMT
RUN apk add --no-cache ca-certificates
# Fri, 06 Jul 2018 18:36:39 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 06 Jul 2018 18:36:40 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 01:29:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 01:29:11 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 01:29:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 01:29:18 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 11:16:42 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Tue, 17 Jul 2018 11:16:42 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 11:16:43 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 11:16:43 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 11:28:41 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 11:28:42 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:28:43 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Tue, 17 Jul 2018 11:28:43 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 11:28:44 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 11:28:44 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 11:28:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:28:45 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a85618b748da90a4b9a3b07c22052edda7b57ed2925a3a0d50980975ae3661`  
		Last Modified: Fri, 06 Jul 2018 18:55:24 GMT  
		Size: 308.3 KB (308318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc0dee7ce0d732c0e2a9f820e13a76425e40f93691df005f289f97bff674736`  
		Last Modified: Tue, 17 Jul 2018 02:06:19 GMT  
		Size: 18.9 MB (18875080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed02188418953afab96c5a516e097c405d3ec115656bdf8584cf6c8b84973c6e`  
		Last Modified: Tue, 17 Jul 2018 02:06:16 GMT  
		Size: 1.9 MB (1852968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a65c4baa10fab522bada7e0fcc1c220fe9579b356960e389684c752f5d07d1`  
		Last Modified: Tue, 17 Jul 2018 11:53:59 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272c8a76b375496df762d350b44101c17aa9e192d0b74c4e4711e55a7c9f810d`  
		Last Modified: Tue, 17 Jul 2018 11:53:59 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbd10d0d492763e65cca2f6e5a1ea6c022223f4d9598e104d249c844d031964`  
		Last Modified: Tue, 17 Jul 2018 11:54:35 GMT  
		Size: 85.9 MB (85851428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8983ef9b0aeb32725538886ba98ce3bca4e450546f46a87ee74d77e41ed647f`  
		Last Modified: Tue, 17 Jul 2018 11:53:59 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.2-alpine` - linux; 386

```console
$ docker pull plone@sha256:bd3e2dc0fd34c993c5f39c1c1d7c4ff325aaf6120f82d39184b7f0152289d213
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107117389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38fcf0887e683ecac4ffb9b587c51e53096d59f228c4046ae9c94fe21e191a62`
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
# Tue, 17 Jul 2018 14:11:59 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 14:11:59 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 14:12:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 14:12:06 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 21:18:26 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Tue, 17 Jul 2018 21:18:27 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 21:18:27 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 21:18:28 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 21:31:40 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 21:31:42 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 21:31:43 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Tue, 17 Jul 2018 21:31:43 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 21:31:43 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 21:31:44 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 21:31:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 21:31:45 GMT
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
	-	`sha256:42ea23eb791b31baef526222104da0f46416f866dcc17d96d75f8b67a743c7fe`  
		Last Modified: Tue, 17 Jul 2018 14:44:11 GMT  
		Size: 18.6 MB (18645096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73ed2bab60790e7a7f966b7c4febc57207760c47c67d6970d17b1eef4a128a5`  
		Last Modified: Tue, 17 Jul 2018 14:44:05 GMT  
		Size: 1.9 MB (1852472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9734b4f3d9ae25bb7f0c0ad7c5e5efbc1b6b60199989c4c446159f1be8f1898d`  
		Last Modified: Tue, 17 Jul 2018 22:01:27 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a7ceb51cdee6cf1f97943173a670d463b3c592ae9b488b602cc3c2b2b0530f`  
		Last Modified: Tue, 17 Jul 2018 22:01:26 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a498b81abb6b1b6f11b67bb0a1e02e0bb492b01e3df3a20109bc7e863196c9`  
		Last Modified: Tue, 17 Jul 2018 22:02:23 GMT  
		Size: 84.2 MB (84180698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693d8687626ec50e8a71fa35ffd3a2495162b6690cddb3e460b3736f080dd2b2`  
		Last Modified: Tue, 17 Jul 2018 22:01:26 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.2-alpine` - linux; s390x

```console
$ docker pull plone@sha256:f75346acc38135959a22fe55d161fd08feb8eccef7e52f3582f6f0187e51bf17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.8 MB (108817638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69644efa9193df3b97fa3cbbb68bf648880a8f6bed6897e6b8b8363f391e0fe6`
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
# Tue, 17 Jul 2018 13:01:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 13:01:44 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 13:01:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 13:01:49 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 15:54:54 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Tue, 17 Jul 2018 15:54:54 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 15:54:55 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 15:54:55 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 16:03:15 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 16:03:16 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 16:03:17 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Tue, 17 Jul 2018 16:03:17 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 16:03:17 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 16:03:17 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 16:03:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 16:03:18 GMT
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
	-	`sha256:88acbfb813791a573a0ea417db8a77eac9c141729d70da4d853968da215918c6`  
		Last Modified: Tue, 17 Jul 2018 13:12:14 GMT  
		Size: 19.7 MB (19691099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff42010095c31b7e385c0970c14b3cf4da52f0e7b1460ef559deeff359a2b358`  
		Last Modified: Tue, 17 Jul 2018 13:12:10 GMT  
		Size: 1.9 MB (1852789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10707172f9fca0f2312271c2722538806b2324794cb5468f73e9f2c9610d2041`  
		Last Modified: Tue, 17 Jul 2018 16:24:09 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac184d3cc87e8c9200ccdfe4a9b7456a625103234e1b530e66cfd75b1172c41`  
		Last Modified: Tue, 17 Jul 2018 16:24:09 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bfab7ecbfb992a4f4d929fe4799aff2a53232c31aedc5ec1b70e42b49bd5f8`  
		Last Modified: Tue, 17 Jul 2018 16:24:32 GMT  
		Size: 84.8 MB (84775222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057c698293815adce7f7bb5aae7fff742e4a14552ba5bf5d6e29f95f8a63adb7`  
		Last Modified: Tue, 17 Jul 2018 16:24:09 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1-alpine`

```console
$ docker pull plone@sha256:355e424b42bf950248f637f45c0a47625fe886de4768d772080d09d777a4d5f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:5.1-alpine` - linux; amd64

```console
$ docker pull plone@sha256:b37bc02253d7b30c5ff79f61b8b21bd772718d39e9f5d9a855bba11e11484ee2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108995320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4589a251fd2ad65962ac181ec7551aa286142abe8d30cf8720f2e12da0343b4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:11:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 18:20:28 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 18:36:38 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 06 Jul 2018 18:36:39 GMT
RUN apk add --no-cache ca-certificates
# Fri, 06 Jul 2018 18:36:39 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 06 Jul 2018 18:36:40 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 01:29:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 01:29:11 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 01:29:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 01:29:18 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 11:16:42 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Tue, 17 Jul 2018 11:16:42 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 11:16:43 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 11:16:43 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 11:28:41 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 11:28:42 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:28:43 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Tue, 17 Jul 2018 11:28:43 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 11:28:44 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 11:28:44 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 11:28:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:28:45 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a85618b748da90a4b9a3b07c22052edda7b57ed2925a3a0d50980975ae3661`  
		Last Modified: Fri, 06 Jul 2018 18:55:24 GMT  
		Size: 308.3 KB (308318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc0dee7ce0d732c0e2a9f820e13a76425e40f93691df005f289f97bff674736`  
		Last Modified: Tue, 17 Jul 2018 02:06:19 GMT  
		Size: 18.9 MB (18875080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed02188418953afab96c5a516e097c405d3ec115656bdf8584cf6c8b84973c6e`  
		Last Modified: Tue, 17 Jul 2018 02:06:16 GMT  
		Size: 1.9 MB (1852968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a65c4baa10fab522bada7e0fcc1c220fe9579b356960e389684c752f5d07d1`  
		Last Modified: Tue, 17 Jul 2018 11:53:59 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272c8a76b375496df762d350b44101c17aa9e192d0b74c4e4711e55a7c9f810d`  
		Last Modified: Tue, 17 Jul 2018 11:53:59 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbd10d0d492763e65cca2f6e5a1ea6c022223f4d9598e104d249c844d031964`  
		Last Modified: Tue, 17 Jul 2018 11:54:35 GMT  
		Size: 85.9 MB (85851428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8983ef9b0aeb32725538886ba98ce3bca4e450546f46a87ee74d77e41ed647f`  
		Last Modified: Tue, 17 Jul 2018 11:53:59 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1-alpine` - linux; 386

```console
$ docker pull plone@sha256:bd3e2dc0fd34c993c5f39c1c1d7c4ff325aaf6120f82d39184b7f0152289d213
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107117389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38fcf0887e683ecac4ffb9b587c51e53096d59f228c4046ae9c94fe21e191a62`
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
# Tue, 17 Jul 2018 14:11:59 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 14:11:59 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 14:12:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 14:12:06 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 21:18:26 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Tue, 17 Jul 2018 21:18:27 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 21:18:27 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 21:18:28 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 21:31:40 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 21:31:42 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 21:31:43 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Tue, 17 Jul 2018 21:31:43 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 21:31:43 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 21:31:44 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 21:31:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 21:31:45 GMT
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
	-	`sha256:42ea23eb791b31baef526222104da0f46416f866dcc17d96d75f8b67a743c7fe`  
		Last Modified: Tue, 17 Jul 2018 14:44:11 GMT  
		Size: 18.6 MB (18645096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73ed2bab60790e7a7f966b7c4febc57207760c47c67d6970d17b1eef4a128a5`  
		Last Modified: Tue, 17 Jul 2018 14:44:05 GMT  
		Size: 1.9 MB (1852472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9734b4f3d9ae25bb7f0c0ad7c5e5efbc1b6b60199989c4c446159f1be8f1898d`  
		Last Modified: Tue, 17 Jul 2018 22:01:27 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a7ceb51cdee6cf1f97943173a670d463b3c592ae9b488b602cc3c2b2b0530f`  
		Last Modified: Tue, 17 Jul 2018 22:01:26 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a498b81abb6b1b6f11b67bb0a1e02e0bb492b01e3df3a20109bc7e863196c9`  
		Last Modified: Tue, 17 Jul 2018 22:02:23 GMT  
		Size: 84.2 MB (84180698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693d8687626ec50e8a71fa35ffd3a2495162b6690cddb3e460b3736f080dd2b2`  
		Last Modified: Tue, 17 Jul 2018 22:01:26 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1-alpine` - linux; s390x

```console
$ docker pull plone@sha256:f75346acc38135959a22fe55d161fd08feb8eccef7e52f3582f6f0187e51bf17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.8 MB (108817638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69644efa9193df3b97fa3cbbb68bf648880a8f6bed6897e6b8b8363f391e0fe6`
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
# Tue, 17 Jul 2018 13:01:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 13:01:44 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 13:01:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 13:01:49 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 15:54:54 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Tue, 17 Jul 2018 15:54:54 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 15:54:55 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 15:54:55 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 16:03:15 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 16:03:16 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 16:03:17 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Tue, 17 Jul 2018 16:03:17 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 16:03:17 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 16:03:17 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 16:03:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 16:03:18 GMT
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
	-	`sha256:88acbfb813791a573a0ea417db8a77eac9c141729d70da4d853968da215918c6`  
		Last Modified: Tue, 17 Jul 2018 13:12:14 GMT  
		Size: 19.7 MB (19691099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff42010095c31b7e385c0970c14b3cf4da52f0e7b1460ef559deeff359a2b358`  
		Last Modified: Tue, 17 Jul 2018 13:12:10 GMT  
		Size: 1.9 MB (1852789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10707172f9fca0f2312271c2722538806b2324794cb5468f73e9f2c9610d2041`  
		Last Modified: Tue, 17 Jul 2018 16:24:09 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac184d3cc87e8c9200ccdfe4a9b7456a625103234e1b530e66cfd75b1172c41`  
		Last Modified: Tue, 17 Jul 2018 16:24:09 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bfab7ecbfb992a4f4d929fe4799aff2a53232c31aedc5ec1b70e42b49bd5f8`  
		Last Modified: Tue, 17 Jul 2018 16:24:32 GMT  
		Size: 84.8 MB (84775222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057c698293815adce7f7bb5aae7fff742e4a14552ba5bf5d6e29f95f8a63adb7`  
		Last Modified: Tue, 17 Jul 2018 16:24:09 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5-alpine`

```console
$ docker pull plone@sha256:355e424b42bf950248f637f45c0a47625fe886de4768d772080d09d777a4d5f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:5-alpine` - linux; amd64

```console
$ docker pull plone@sha256:b37bc02253d7b30c5ff79f61b8b21bd772718d39e9f5d9a855bba11e11484ee2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108995320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4589a251fd2ad65962ac181ec7551aa286142abe8d30cf8720f2e12da0343b4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:11:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 18:20:28 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 18:36:38 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 06 Jul 2018 18:36:39 GMT
RUN apk add --no-cache ca-certificates
# Fri, 06 Jul 2018 18:36:39 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 06 Jul 2018 18:36:40 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 01:29:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 01:29:11 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 01:29:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 01:29:18 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 11:16:42 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Tue, 17 Jul 2018 11:16:42 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 11:16:43 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 11:16:43 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 11:28:41 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 11:28:42 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:28:43 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Tue, 17 Jul 2018 11:28:43 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 11:28:44 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 11:28:44 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 11:28:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:28:45 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a85618b748da90a4b9a3b07c22052edda7b57ed2925a3a0d50980975ae3661`  
		Last Modified: Fri, 06 Jul 2018 18:55:24 GMT  
		Size: 308.3 KB (308318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc0dee7ce0d732c0e2a9f820e13a76425e40f93691df005f289f97bff674736`  
		Last Modified: Tue, 17 Jul 2018 02:06:19 GMT  
		Size: 18.9 MB (18875080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed02188418953afab96c5a516e097c405d3ec115656bdf8584cf6c8b84973c6e`  
		Last Modified: Tue, 17 Jul 2018 02:06:16 GMT  
		Size: 1.9 MB (1852968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a65c4baa10fab522bada7e0fcc1c220fe9579b356960e389684c752f5d07d1`  
		Last Modified: Tue, 17 Jul 2018 11:53:59 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272c8a76b375496df762d350b44101c17aa9e192d0b74c4e4711e55a7c9f810d`  
		Last Modified: Tue, 17 Jul 2018 11:53:59 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbd10d0d492763e65cca2f6e5a1ea6c022223f4d9598e104d249c844d031964`  
		Last Modified: Tue, 17 Jul 2018 11:54:35 GMT  
		Size: 85.9 MB (85851428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8983ef9b0aeb32725538886ba98ce3bca4e450546f46a87ee74d77e41ed647f`  
		Last Modified: Tue, 17 Jul 2018 11:53:59 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5-alpine` - linux; 386

```console
$ docker pull plone@sha256:bd3e2dc0fd34c993c5f39c1c1d7c4ff325aaf6120f82d39184b7f0152289d213
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107117389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38fcf0887e683ecac4ffb9b587c51e53096d59f228c4046ae9c94fe21e191a62`
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
# Tue, 17 Jul 2018 14:11:59 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 14:11:59 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 14:12:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 14:12:06 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 21:18:26 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Tue, 17 Jul 2018 21:18:27 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 21:18:27 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 21:18:28 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 21:31:40 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 21:31:42 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 21:31:43 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Tue, 17 Jul 2018 21:31:43 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 21:31:43 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 21:31:44 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 21:31:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 21:31:45 GMT
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
	-	`sha256:42ea23eb791b31baef526222104da0f46416f866dcc17d96d75f8b67a743c7fe`  
		Last Modified: Tue, 17 Jul 2018 14:44:11 GMT  
		Size: 18.6 MB (18645096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73ed2bab60790e7a7f966b7c4febc57207760c47c67d6970d17b1eef4a128a5`  
		Last Modified: Tue, 17 Jul 2018 14:44:05 GMT  
		Size: 1.9 MB (1852472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9734b4f3d9ae25bb7f0c0ad7c5e5efbc1b6b60199989c4c446159f1be8f1898d`  
		Last Modified: Tue, 17 Jul 2018 22:01:27 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a7ceb51cdee6cf1f97943173a670d463b3c592ae9b488b602cc3c2b2b0530f`  
		Last Modified: Tue, 17 Jul 2018 22:01:26 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a498b81abb6b1b6f11b67bb0a1e02e0bb492b01e3df3a20109bc7e863196c9`  
		Last Modified: Tue, 17 Jul 2018 22:02:23 GMT  
		Size: 84.2 MB (84180698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693d8687626ec50e8a71fa35ffd3a2495162b6690cddb3e460b3736f080dd2b2`  
		Last Modified: Tue, 17 Jul 2018 22:01:26 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5-alpine` - linux; s390x

```console
$ docker pull plone@sha256:f75346acc38135959a22fe55d161fd08feb8eccef7e52f3582f6f0187e51bf17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.8 MB (108817638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69644efa9193df3b97fa3cbbb68bf648880a8f6bed6897e6b8b8363f391e0fe6`
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
# Tue, 17 Jul 2018 13:01:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 13:01:44 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 13:01:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 13:01:49 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 15:54:54 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Tue, 17 Jul 2018 15:54:54 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 15:54:55 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 15:54:55 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 16:03:15 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 16:03:16 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 16:03:17 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Tue, 17 Jul 2018 16:03:17 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 16:03:17 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 16:03:17 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 16:03:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 16:03:18 GMT
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
	-	`sha256:88acbfb813791a573a0ea417db8a77eac9c141729d70da4d853968da215918c6`  
		Last Modified: Tue, 17 Jul 2018 13:12:14 GMT  
		Size: 19.7 MB (19691099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff42010095c31b7e385c0970c14b3cf4da52f0e7b1460ef559deeff359a2b358`  
		Last Modified: Tue, 17 Jul 2018 13:12:10 GMT  
		Size: 1.9 MB (1852789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10707172f9fca0f2312271c2722538806b2324794cb5468f73e9f2c9610d2041`  
		Last Modified: Tue, 17 Jul 2018 16:24:09 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac184d3cc87e8c9200ccdfe4a9b7456a625103234e1b530e66cfd75b1172c41`  
		Last Modified: Tue, 17 Jul 2018 16:24:09 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bfab7ecbfb992a4f4d929fe4799aff2a53232c31aedc5ec1b70e42b49bd5f8`  
		Last Modified: Tue, 17 Jul 2018 16:24:32 GMT  
		Size: 84.8 MB (84775222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057c698293815adce7f7bb5aae7fff742e4a14552ba5bf5d6e29f95f8a63adb7`  
		Last Modified: Tue, 17 Jul 2018 16:24:09 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:alpine`

```console
$ docker pull plone@sha256:355e424b42bf950248f637f45c0a47625fe886de4768d772080d09d777a4d5f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:alpine` - linux; amd64

```console
$ docker pull plone@sha256:b37bc02253d7b30c5ff79f61b8b21bd772718d39e9f5d9a855bba11e11484ee2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (108995320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4589a251fd2ad65962ac181ec7551aa286142abe8d30cf8720f2e12da0343b4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:11:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 18:20:28 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 18:36:38 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 06 Jul 2018 18:36:39 GMT
RUN apk add --no-cache ca-certificates
# Fri, 06 Jul 2018 18:36:39 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 06 Jul 2018 18:36:40 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 01:29:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 01:29:11 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 01:29:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 01:29:18 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 11:16:42 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Tue, 17 Jul 2018 11:16:42 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 11:16:43 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 11:16:43 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 11:28:41 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 11:28:42 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:28:43 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Tue, 17 Jul 2018 11:28:43 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 11:28:44 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 11:28:44 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 11:28:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:28:45 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a85618b748da90a4b9a3b07c22052edda7b57ed2925a3a0d50980975ae3661`  
		Last Modified: Fri, 06 Jul 2018 18:55:24 GMT  
		Size: 308.3 KB (308318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc0dee7ce0d732c0e2a9f820e13a76425e40f93691df005f289f97bff674736`  
		Last Modified: Tue, 17 Jul 2018 02:06:19 GMT  
		Size: 18.9 MB (18875080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed02188418953afab96c5a516e097c405d3ec115656bdf8584cf6c8b84973c6e`  
		Last Modified: Tue, 17 Jul 2018 02:06:16 GMT  
		Size: 1.9 MB (1852968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a65c4baa10fab522bada7e0fcc1c220fe9579b356960e389684c752f5d07d1`  
		Last Modified: Tue, 17 Jul 2018 11:53:59 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272c8a76b375496df762d350b44101c17aa9e192d0b74c4e4711e55a7c9f810d`  
		Last Modified: Tue, 17 Jul 2018 11:53:59 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbd10d0d492763e65cca2f6e5a1ea6c022223f4d9598e104d249c844d031964`  
		Last Modified: Tue, 17 Jul 2018 11:54:35 GMT  
		Size: 85.9 MB (85851428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8983ef9b0aeb32725538886ba98ce3bca4e450546f46a87ee74d77e41ed647f`  
		Last Modified: Tue, 17 Jul 2018 11:53:59 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:alpine` - linux; 386

```console
$ docker pull plone@sha256:bd3e2dc0fd34c993c5f39c1c1d7c4ff325aaf6120f82d39184b7f0152289d213
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107117389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38fcf0887e683ecac4ffb9b587c51e53096d59f228c4046ae9c94fe21e191a62`
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
# Tue, 17 Jul 2018 14:11:59 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 14:11:59 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 14:12:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 14:12:06 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 21:18:26 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Tue, 17 Jul 2018 21:18:27 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 21:18:27 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 21:18:28 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 21:31:40 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 21:31:42 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 21:31:43 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Tue, 17 Jul 2018 21:31:43 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 21:31:43 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 21:31:44 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 21:31:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 21:31:45 GMT
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
	-	`sha256:42ea23eb791b31baef526222104da0f46416f866dcc17d96d75f8b67a743c7fe`  
		Last Modified: Tue, 17 Jul 2018 14:44:11 GMT  
		Size: 18.6 MB (18645096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73ed2bab60790e7a7f966b7c4febc57207760c47c67d6970d17b1eef4a128a5`  
		Last Modified: Tue, 17 Jul 2018 14:44:05 GMT  
		Size: 1.9 MB (1852472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9734b4f3d9ae25bb7f0c0ad7c5e5efbc1b6b60199989c4c446159f1be8f1898d`  
		Last Modified: Tue, 17 Jul 2018 22:01:27 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a7ceb51cdee6cf1f97943173a670d463b3c592ae9b488b602cc3c2b2b0530f`  
		Last Modified: Tue, 17 Jul 2018 22:01:26 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a498b81abb6b1b6f11b67bb0a1e02e0bb492b01e3df3a20109bc7e863196c9`  
		Last Modified: Tue, 17 Jul 2018 22:02:23 GMT  
		Size: 84.2 MB (84180698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:693d8687626ec50e8a71fa35ffd3a2495162b6690cddb3e460b3736f080dd2b2`  
		Last Modified: Tue, 17 Jul 2018 22:01:26 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:alpine` - linux; s390x

```console
$ docker pull plone@sha256:f75346acc38135959a22fe55d161fd08feb8eccef7e52f3582f6f0187e51bf17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.8 MB (108817638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69644efa9193df3b97fa3cbbb68bf648880a8f6bed6897e6b8b8363f391e0fe6`
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
# Tue, 17 Jul 2018 13:01:41 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 13:01:44 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 13:01:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 13:01:49 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 15:54:54 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Tue, 17 Jul 2018 15:54:54 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 15:54:55 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 15:54:55 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 16:03:15 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 16:03:16 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 16:03:17 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Tue, 17 Jul 2018 16:03:17 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 16:03:17 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 16:03:17 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 16:03:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 16:03:18 GMT
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
	-	`sha256:88acbfb813791a573a0ea417db8a77eac9c141729d70da4d853968da215918c6`  
		Last Modified: Tue, 17 Jul 2018 13:12:14 GMT  
		Size: 19.7 MB (19691099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff42010095c31b7e385c0970c14b3cf4da52f0e7b1460ef559deeff359a2b358`  
		Last Modified: Tue, 17 Jul 2018 13:12:10 GMT  
		Size: 1.9 MB (1852789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10707172f9fca0f2312271c2722538806b2324794cb5468f73e9f2c9610d2041`  
		Last Modified: Tue, 17 Jul 2018 16:24:09 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac184d3cc87e8c9200ccdfe4a9b7456a625103234e1b530e66cfd75b1172c41`  
		Last Modified: Tue, 17 Jul 2018 16:24:09 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bfab7ecbfb992a4f4d929fe4799aff2a53232c31aedc5ec1b70e42b49bd5f8`  
		Last Modified: Tue, 17 Jul 2018 16:24:32 GMT  
		Size: 84.8 MB (84775222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057c698293815adce7f7bb5aae7fff742e4a14552ba5bf5d6e29f95f8a63adb7`  
		Last Modified: Tue, 17 Jul 2018 16:24:09 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:latest`

```console
$ docker pull plone@sha256:ea6b47d5e165bb4694e6ef8ea2ae530a2fe8909944486f06a9e51b640d0103b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:latest` - linux; amd64

```console
$ docker pull plone@sha256:d88393e05af051478f6f8b1b670a8f39ca914d98999fe557c869cedf75a77794
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160483472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf336928098ccf7b3a41c8a0c5c1e46f14ac2da5ac7bfd182b5c9026a0cf3aa1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:36:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 00:36:07 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 01:04:41 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 01:04:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:04:54 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 01:04:54 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 17 Jul 2018 01:08:13 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 17 Jul 2018 01:08:13 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 01:08:27 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 01:08:27 GMT
CMD ["python2"]
# Tue, 17 Jul 2018 11:08:06 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Tue, 17 Jul 2018 11:08:07 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Tue, 17 Jul 2018 11:08:08 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Tue, 17 Jul 2018 11:08:08 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Tue, 17 Jul 2018 11:16:21 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Tue, 17 Jul 2018 11:16:23 GMT
VOLUME [/data]
# Tue, 17 Jul 2018 11:16:24 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Tue, 17 Jul 2018 11:16:24 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 11:16:25 GMT
WORKDIR /plone/instance
# Tue, 17 Jul 2018 11:16:25 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Tue, 17 Jul 2018 11:16:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:16:26 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87541f2e904e7c44d19df4009e43f8b39a28f74ec41dee011098120423af5cf`  
		Last Modified: Tue, 17 Jul 2018 02:01:09 GMT  
		Size: 3.3 MB (3280969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81dc5ba046c839725ba28488b7f0c4279c7c5734553e7007b973674d2b5476a1`  
		Last Modified: Tue, 17 Jul 2018 02:01:15 GMT  
		Size: 16.4 MB (16392841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b411fa1b92c96a5dbd6e2ea82848104e5f3d78ffc7b8a038e1db4f0dbdce3c7d`  
		Last Modified: Tue, 17 Jul 2018 02:01:10 GMT  
		Size: 2.1 MB (2068198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90a95a7cf94c32e59f1f6b8f48f52b7bd9068966b210bd637e4c1626c6213c6`  
		Last Modified: Tue, 17 Jul 2018 11:51:54 GMT  
		Size: 3.9 KB (3883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981f64a5e35d1f64600de2764a680f89fdfe419771f3157503f2f514a8705baa`  
		Last Modified: Tue, 17 Jul 2018 11:51:54 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806a8d4c01ea53f738e3401ca4e6331b64feb0e13ff4b6cb7662b143d09132c9`  
		Last Modified: Tue, 17 Jul 2018 11:52:52 GMT  
		Size: 116.2 MB (116249021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239c92223ccb30fc73f74464219bce42704b74b72842b2cfd0b52004865251f5`  
		Last Modified: Tue, 17 Jul 2018 11:51:55 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; 386

```console
$ docker pull plone@sha256:95ab8a8ae4f80a1091c0ef4514df5229fd21771a81bc45b6d7a1dda0a07f8930
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160448435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac3860d009a4437bcb94517ef2fc9734452d517f167a27b17d4a4250972ce252`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:07:55 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 13:07:55 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:50:14 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Jun 2018 13:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:50:29 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Jun 2018 13:50:29 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 27 Jun 2018 13:53:53 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 27 Jun 2018 13:53:53 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 27 Jun 2018 13:54:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Jun 2018 13:54:10 GMT
CMD ["python2"]
# Wed, 27 Jun 2018 16:30:18 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 27 Jun 2018 16:30:18 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 27 Jun 2018 16:30:19 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 27 Jun 2018 16:30:19 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 27 Jun 2018 16:40:51 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 27 Jun 2018 16:40:54 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 16:40:55 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 27 Jun 2018 16:40:55 GMT
EXPOSE 8080/tcp
# Wed, 27 Jun 2018 16:40:55 GMT
WORKDIR /plone/instance
# Wed, 27 Jun 2018 16:40:56 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 27 Jun 2018 16:41:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 16:41:04 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d57ac0c003d58002bf8d6434d298e973d393049e04252c362ecb9a800ac12f3`  
		Last Modified: Wed, 27 Jun 2018 14:18:30 GMT  
		Size: 3.4 MB (3363739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ca80428853c19f7f2f9bcecfbf7c1ef940b5010167f7aa149d69edab6fc75a`  
		Last Modified: Wed, 27 Jun 2018 14:18:35 GMT  
		Size: 15.5 MB (15485201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49b55244d75dcd4514b39eb43aaaa4b768b2759183482cf3589de6dfa7dd724`  
		Last Modified: Wed, 27 Jun 2018 14:18:29 GMT  
		Size: 2.1 MB (2067274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd3f967e2a078b3d3a6622a8054a8461071ffab282280d9559a4499268f003fe`  
		Last Modified: Wed, 27 Jun 2018 16:54:40 GMT  
		Size: 3.9 KB (3876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd37d89182be3e6e446e7fe13a89b5dd1236ec4377c0a4abcf09540071398871`  
		Last Modified: Wed, 27 Jun 2018 16:54:40 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04130a25f073491e2f489408a59f93068f25c6f724533930f4e331f2dc9cd398`  
		Last Modified: Wed, 27 Jun 2018 16:55:40 GMT  
		Size: 116.4 MB (116385590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2c58c8191c887724be7eeac5f43b915cd69835e5abaf41722d79ea7a96791e`  
		Last Modified: Wed, 27 Jun 2018 16:54:40 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
