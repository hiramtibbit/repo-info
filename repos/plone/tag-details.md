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
$ docker pull plone@sha256:3fd5a4acfc11fb20c56aaee57739c5e6b57983a0c6e8144b6077b88f5779d351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:4` - linux; amd64

```console
$ docker pull plone@sha256:b35a7019ee72400a938a857c2808f45eb8d93182c48562cbbd630f6e607d0b6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135147058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08b52f3ddd68a5d334744b427277ed489af3ce2805e5cd78b7980aaf6886f00a`
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
# Wed, 25 Jul 2018 18:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 18:22:33 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 25 Jul 2018 18:22:33 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 25 Jul 2018 18:26:00 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 25 Jul 2018 18:26:00 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 25 Jul 2018 18:26:13 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 25 Jul 2018 18:26:16 GMT
CMD ["python2"]
# Wed, 25 Jul 2018 20:04:57 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 25 Jul 2018 20:04:57 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 25 Jul 2018 20:04:58 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 25 Jul 2018 20:04:59 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 25 Jul 2018 20:18:17 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 25 Jul 2018 20:18:18 GMT
VOLUME [/data]
# Wed, 25 Jul 2018 20:18:19 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Wed, 25 Jul 2018 20:18:19 GMT
EXPOSE 8080/tcp
# Wed, 25 Jul 2018 20:18:19 GMT
WORKDIR /plone/instance
# Wed, 25 Jul 2018 20:18:20 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 25 Jul 2018 20:18:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 20:18:20 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44247e56d488ba4551c298e242540519a87ab3b4e17791d13459ea9d211ffb0e`  
		Last Modified: Wed, 25 Jul 2018 19:13:50 GMT  
		Size: 2.5 MB (2516901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1109c65233d6855f802c76e1be9513d638ee22a947faa3d0e8d236a5b34e67`  
		Last Modified: Wed, 25 Jul 2018 19:13:56 GMT  
		Size: 17.2 MB (17156534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f741585990ee3ed8a8e873b13b23420014dfb189db0fe8b0c10bc53a5ed61b`  
		Last Modified: Wed, 25 Jul 2018 19:13:51 GMT  
		Size: 2.1 MB (2067735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6bb2dd38c8bb362ff8a772a9d599169f7ce7ca610bb4ce7730d880a75a8dec`  
		Last Modified: Wed, 25 Jul 2018 20:36:58 GMT  
		Size: 3.9 KB (3886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:600c949e792c5d1651242a20e7164a623a2a86b99f658b2ca438bb23483863e2`  
		Last Modified: Wed, 25 Jul 2018 20:36:58 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9c987a49dad07fe5ef26dfcc9920852dfe85476ef4f064ef6b3dace46e5917`  
		Last Modified: Wed, 25 Jul 2018 20:37:43 GMT  
		Size: 90.9 MB (90913444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d715122e3165aeac252a09b5477ba0708c32528a2bc2e58962909b97978982f4`  
		Last Modified: Wed, 25 Jul 2018 20:36:58 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4` - linux; 386

```console
$ docker pull plone@sha256:7027bdeef3b14354acad06451bc07ea2fb80db634d5da126be430e8aa2b815ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135300985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:380a0945106c236537a8e57039855a6c4b4a1690d865bfd7aefb56e63b8b2fbe`
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
# Thu, 26 Jul 2018 11:33:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:33:26 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 26 Jul 2018 11:33:26 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 26 Jul 2018 11:37:15 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 11:37:15 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 11:37:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 11:37:31 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 13:18:08 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 26 Jul 2018 13:18:08 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 13:18:09 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 13:18:09 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 13:32:31 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 13:32:33 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 13:32:33 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Thu, 26 Jul 2018 13:32:33 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 13:32:34 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 13:32:34 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 13:32:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 13:32:34 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27b2e5a9ed60112ad0b08c6ba62e38a091c3fe11eedf39d370a4cd736c80642`  
		Last Modified: Thu, 26 Jul 2018 12:26:57 GMT  
		Size: 2.5 MB (2517572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0fe3705c2fd5d558a9f7b9ffad0fb894fbb19ce980d7d2562067e85f19d5f`  
		Last Modified: Thu, 26 Jul 2018 12:27:11 GMT  
		Size: 16.4 MB (16356891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183077fca26f7a492637e798fe6ad0fb22cda73a3fb3a856d5daf748eb2647be`  
		Last Modified: Thu, 26 Jul 2018 12:26:57 GMT  
		Size: 2.1 MB (2067564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6872dd49fd29070785f4f3bedb3de19fe7f5ed59472de598ea261000623acde2`  
		Last Modified: Thu, 26 Jul 2018 13:53:41 GMT  
		Size: 3.9 KB (3877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56bf03155d1701a8ba604c776f7c30c39e971aec352cf2645d4dd26cee5ff6b0`  
		Last Modified: Thu, 26 Jul 2018 13:53:41 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bfc61dbd3f43ac61e9889c29d8faa6ac6bd11b83055986efe1f452254f286f`  
		Last Modified: Thu, 26 Jul 2018 13:54:36 GMT  
		Size: 91.2 MB (91226057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea88286200e5eecfeac9ecf2038bda7d901c05b97208c0222e369b35038e61a3`  
		Last Modified: Thu, 26 Jul 2018 13:53:40 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3`

```console
$ docker pull plone@sha256:3fd5a4acfc11fb20c56aaee57739c5e6b57983a0c6e8144b6077b88f5779d351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:4.3` - linux; amd64

```console
$ docker pull plone@sha256:b35a7019ee72400a938a857c2808f45eb8d93182c48562cbbd630f6e607d0b6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135147058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08b52f3ddd68a5d334744b427277ed489af3ce2805e5cd78b7980aaf6886f00a`
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
# Wed, 25 Jul 2018 18:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 18:22:33 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 25 Jul 2018 18:22:33 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 25 Jul 2018 18:26:00 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 25 Jul 2018 18:26:00 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 25 Jul 2018 18:26:13 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 25 Jul 2018 18:26:16 GMT
CMD ["python2"]
# Wed, 25 Jul 2018 20:04:57 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 25 Jul 2018 20:04:57 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 25 Jul 2018 20:04:58 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 25 Jul 2018 20:04:59 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 25 Jul 2018 20:18:17 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 25 Jul 2018 20:18:18 GMT
VOLUME [/data]
# Wed, 25 Jul 2018 20:18:19 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Wed, 25 Jul 2018 20:18:19 GMT
EXPOSE 8080/tcp
# Wed, 25 Jul 2018 20:18:19 GMT
WORKDIR /plone/instance
# Wed, 25 Jul 2018 20:18:20 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 25 Jul 2018 20:18:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 20:18:20 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44247e56d488ba4551c298e242540519a87ab3b4e17791d13459ea9d211ffb0e`  
		Last Modified: Wed, 25 Jul 2018 19:13:50 GMT  
		Size: 2.5 MB (2516901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1109c65233d6855f802c76e1be9513d638ee22a947faa3d0e8d236a5b34e67`  
		Last Modified: Wed, 25 Jul 2018 19:13:56 GMT  
		Size: 17.2 MB (17156534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f741585990ee3ed8a8e873b13b23420014dfb189db0fe8b0c10bc53a5ed61b`  
		Last Modified: Wed, 25 Jul 2018 19:13:51 GMT  
		Size: 2.1 MB (2067735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6bb2dd38c8bb362ff8a772a9d599169f7ce7ca610bb4ce7730d880a75a8dec`  
		Last Modified: Wed, 25 Jul 2018 20:36:58 GMT  
		Size: 3.9 KB (3886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:600c949e792c5d1651242a20e7164a623a2a86b99f658b2ca438bb23483863e2`  
		Last Modified: Wed, 25 Jul 2018 20:36:58 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9c987a49dad07fe5ef26dfcc9920852dfe85476ef4f064ef6b3dace46e5917`  
		Last Modified: Wed, 25 Jul 2018 20:37:43 GMT  
		Size: 90.9 MB (90913444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d715122e3165aeac252a09b5477ba0708c32528a2bc2e58962909b97978982f4`  
		Last Modified: Wed, 25 Jul 2018 20:36:58 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3` - linux; 386

```console
$ docker pull plone@sha256:7027bdeef3b14354acad06451bc07ea2fb80db634d5da126be430e8aa2b815ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135300985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:380a0945106c236537a8e57039855a6c4b4a1690d865bfd7aefb56e63b8b2fbe`
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
# Thu, 26 Jul 2018 11:33:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:33:26 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 26 Jul 2018 11:33:26 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 26 Jul 2018 11:37:15 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 11:37:15 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 11:37:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 11:37:31 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 13:18:08 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 26 Jul 2018 13:18:08 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 13:18:09 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 13:18:09 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 13:32:31 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 13:32:33 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 13:32:33 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Thu, 26 Jul 2018 13:32:33 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 13:32:34 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 13:32:34 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 13:32:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 13:32:34 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27b2e5a9ed60112ad0b08c6ba62e38a091c3fe11eedf39d370a4cd736c80642`  
		Last Modified: Thu, 26 Jul 2018 12:26:57 GMT  
		Size: 2.5 MB (2517572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0fe3705c2fd5d558a9f7b9ffad0fb894fbb19ce980d7d2562067e85f19d5f`  
		Last Modified: Thu, 26 Jul 2018 12:27:11 GMT  
		Size: 16.4 MB (16356891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183077fca26f7a492637e798fe6ad0fb22cda73a3fb3a856d5daf748eb2647be`  
		Last Modified: Thu, 26 Jul 2018 12:26:57 GMT  
		Size: 2.1 MB (2067564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6872dd49fd29070785f4f3bedb3de19fe7f5ed59472de598ea261000623acde2`  
		Last Modified: Thu, 26 Jul 2018 13:53:41 GMT  
		Size: 3.9 KB (3877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56bf03155d1701a8ba604c776f7c30c39e971aec352cf2645d4dd26cee5ff6b0`  
		Last Modified: Thu, 26 Jul 2018 13:53:41 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bfc61dbd3f43ac61e9889c29d8faa6ac6bd11b83055986efe1f452254f286f`  
		Last Modified: Thu, 26 Jul 2018 13:54:36 GMT  
		Size: 91.2 MB (91226057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea88286200e5eecfeac9ecf2038bda7d901c05b97208c0222e369b35038e61a3`  
		Last Modified: Thu, 26 Jul 2018 13:53:40 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.17`

```console
$ docker pull plone@sha256:3fd5a4acfc11fb20c56aaee57739c5e6b57983a0c6e8144b6077b88f5779d351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:4.3.17` - linux; amd64

```console
$ docker pull plone@sha256:b35a7019ee72400a938a857c2808f45eb8d93182c48562cbbd630f6e607d0b6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135147058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08b52f3ddd68a5d334744b427277ed489af3ce2805e5cd78b7980aaf6886f00a`
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
# Wed, 25 Jul 2018 18:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 18:22:33 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 25 Jul 2018 18:22:33 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 25 Jul 2018 18:26:00 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 25 Jul 2018 18:26:00 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 25 Jul 2018 18:26:13 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 25 Jul 2018 18:26:16 GMT
CMD ["python2"]
# Wed, 25 Jul 2018 20:04:57 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 25 Jul 2018 20:04:57 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 25 Jul 2018 20:04:58 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 25 Jul 2018 20:04:59 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 25 Jul 2018 20:18:17 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 25 Jul 2018 20:18:18 GMT
VOLUME [/data]
# Wed, 25 Jul 2018 20:18:19 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Wed, 25 Jul 2018 20:18:19 GMT
EXPOSE 8080/tcp
# Wed, 25 Jul 2018 20:18:19 GMT
WORKDIR /plone/instance
# Wed, 25 Jul 2018 20:18:20 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 25 Jul 2018 20:18:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 20:18:20 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44247e56d488ba4551c298e242540519a87ab3b4e17791d13459ea9d211ffb0e`  
		Last Modified: Wed, 25 Jul 2018 19:13:50 GMT  
		Size: 2.5 MB (2516901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1109c65233d6855f802c76e1be9513d638ee22a947faa3d0e8d236a5b34e67`  
		Last Modified: Wed, 25 Jul 2018 19:13:56 GMT  
		Size: 17.2 MB (17156534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f741585990ee3ed8a8e873b13b23420014dfb189db0fe8b0c10bc53a5ed61b`  
		Last Modified: Wed, 25 Jul 2018 19:13:51 GMT  
		Size: 2.1 MB (2067735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6bb2dd38c8bb362ff8a772a9d599169f7ce7ca610bb4ce7730d880a75a8dec`  
		Last Modified: Wed, 25 Jul 2018 20:36:58 GMT  
		Size: 3.9 KB (3886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:600c949e792c5d1651242a20e7164a623a2a86b99f658b2ca438bb23483863e2`  
		Last Modified: Wed, 25 Jul 2018 20:36:58 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9c987a49dad07fe5ef26dfcc9920852dfe85476ef4f064ef6b3dace46e5917`  
		Last Modified: Wed, 25 Jul 2018 20:37:43 GMT  
		Size: 90.9 MB (90913444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d715122e3165aeac252a09b5477ba0708c32528a2bc2e58962909b97978982f4`  
		Last Modified: Wed, 25 Jul 2018 20:36:58 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.17` - linux; 386

```console
$ docker pull plone@sha256:7027bdeef3b14354acad06451bc07ea2fb80db634d5da126be430e8aa2b815ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135300985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:380a0945106c236537a8e57039855a6c4b4a1690d865bfd7aefb56e63b8b2fbe`
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
# Thu, 26 Jul 2018 11:33:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:33:26 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 26 Jul 2018 11:33:26 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 26 Jul 2018 11:37:15 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 11:37:15 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 11:37:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 11:37:31 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 13:18:08 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 26 Jul 2018 13:18:08 GMT
LABEL plone=4.3.17 os=debian os.version=9 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 13:18:09 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 13:18:09 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 13:32:31 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 13:32:33 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 13:32:33 GMT
COPY multi:6b730bad9fd95bed69c91a309a39e2d88253092226cf71b75a494c93b3eef2e5 in / 
# Thu, 26 Jul 2018 13:32:33 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 13:32:34 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 13:32:34 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 13:32:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 13:32:34 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27b2e5a9ed60112ad0b08c6ba62e38a091c3fe11eedf39d370a4cd736c80642`  
		Last Modified: Thu, 26 Jul 2018 12:26:57 GMT  
		Size: 2.5 MB (2517572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0fe3705c2fd5d558a9f7b9ffad0fb894fbb19ce980d7d2562067e85f19d5f`  
		Last Modified: Thu, 26 Jul 2018 12:27:11 GMT  
		Size: 16.4 MB (16356891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183077fca26f7a492637e798fe6ad0fb22cda73a3fb3a856d5daf748eb2647be`  
		Last Modified: Thu, 26 Jul 2018 12:26:57 GMT  
		Size: 2.1 MB (2067564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6872dd49fd29070785f4f3bedb3de19fe7f5ed59472de598ea261000623acde2`  
		Last Modified: Thu, 26 Jul 2018 13:53:41 GMT  
		Size: 3.9 KB (3877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56bf03155d1701a8ba604c776f7c30c39e971aec352cf2645d4dd26cee5ff6b0`  
		Last Modified: Thu, 26 Jul 2018 13:53:41 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bfc61dbd3f43ac61e9889c29d8faa6ac6bd11b83055986efe1f452254f286f`  
		Last Modified: Thu, 26 Jul 2018 13:54:36 GMT  
		Size: 91.2 MB (91226057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea88286200e5eecfeac9ecf2038bda7d901c05b97208c0222e369b35038e61a3`  
		Last Modified: Thu, 26 Jul 2018 13:53:40 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.17-alpine`

```console
$ docker pull plone@sha256:364e65074fd9d72433b021e54f3aec753141388a4a4d9c3e6daf26aa1af79347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:4.3.17-alpine` - linux; amd64

```console
$ docker pull plone@sha256:573f7fc00544dda6edbd483485c750156e24ada72c715fa581a4855025f9a123
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.3 MB (83332253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09affb6c2bedd88cdc3e2d364728559ea221877c7304adc75cc89e013fd81416`
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
# Wed, 25 Jul 2018 18:44:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 25 Jul 2018 18:44:10 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 25 Jul 2018 18:44:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 25 Jul 2018 18:44:17 GMT
CMD ["python2"]
# Wed, 25 Jul 2018 20:18:55 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 25 Jul 2018 20:18:55 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 25 Jul 2018 20:18:56 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 25 Jul 2018 20:18:57 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 25 Jul 2018 20:32:15 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 25 Jul 2018 20:32:16 GMT
VOLUME [/data]
# Wed, 25 Jul 2018 20:32:17 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Wed, 25 Jul 2018 20:32:17 GMT
EXPOSE 8080/tcp
# Wed, 25 Jul 2018 20:32:17 GMT
WORKDIR /plone/instance
# Wed, 25 Jul 2018 20:32:18 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 25 Jul 2018 20:32:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 20:32:18 GMT
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
	-	`sha256:2702b237d49bd19d61157f441c3fe2a0341692db77b9ba4bea7962fa6e7d5935`  
		Last Modified: Wed, 25 Jul 2018 19:20:54 GMT  
		Size: 18.9 MB (18875702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de1187d8a36848162a7062610f0bc0c2aa160b46a8931e5663dd6d52bae377d`  
		Last Modified: Wed, 25 Jul 2018 19:20:48 GMT  
		Size: 1.9 MB (1853863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853c91182712136611b10f1c2e8dbb639e905b47923be164a1f68730588809be`  
		Last Modified: Wed, 25 Jul 2018 20:38:40 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3aef60d1f9dc01a02074a4f129114c5b0872332fc3d79e221225d62f86374a`  
		Last Modified: Wed, 25 Jul 2018 20:38:40 GMT  
		Size: 393.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619e95e2ef95682562ef1f86123538f5bcc75430c62319115f68053b03d0ea68`  
		Last Modified: Wed, 25 Jul 2018 20:39:10 GMT  
		Size: 60.2 MB (60186842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55adc853501eef9ed7195ddbd0af8c06a57de89ceae7f34fbf7170c32d7e4bf8`  
		Last Modified: Wed, 25 Jul 2018 20:38:40 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.17-alpine` - linux; 386

```console
$ docker pull plone@sha256:4965d008c1d4c10dcd72864b9e890918b3e8606c80a6e5eec4dfc87299425cff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82856582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0354ced36a9a7bbc746344194f58c8f19001c0fd405a2eab4ea4bf56ae003743`
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
# Thu, 26 Jul 2018 11:58:27 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 11:58:27 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 11:58:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 11:58:35 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 13:33:33 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 26 Jul 2018 13:33:33 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 13:33:34 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 13:33:34 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 13:48:21 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 13:48:22 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 13:48:23 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Thu, 26 Jul 2018 13:48:23 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 13:48:23 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 13:48:24 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 13:48:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 13:48:24 GMT
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
	-	`sha256:f63be1ba27a494205928bc78d9415da8110bb4e3ec2da8b11c586320321cd85d`  
		Last Modified: Thu, 26 Jul 2018 12:33:53 GMT  
		Size: 18.6 MB (18645053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dabd25eacf2eb02bee49fa2c621022dd2c47c1c0c2c42e970b54354bce367ad`  
		Last Modified: Thu, 26 Jul 2018 12:33:47 GMT  
		Size: 1.9 MB (1852752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa04a0dbeff0a412c8bbbd9e76c291b69041b809fc6be015a569afcbe49043d`  
		Last Modified: Thu, 26 Jul 2018 13:55:32 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ee87c7bec7e98a3c2c0944744083de5d7f4e1bbc92db41ced7d87b6f5e5423`  
		Last Modified: Thu, 26 Jul 2018 13:55:31 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3224505cfdd92bf8ee8a86150bfd8bcf9c5bde3de1d2d1509c1f92cb2f7f4570`  
		Last Modified: Thu, 26 Jul 2018 13:56:13 GMT  
		Size: 59.9 MB (59919657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13486da33b43a4031a543c90cf56384e0baa19b0174618f06a71de2cc0dce400`  
		Last Modified: Thu, 26 Jul 2018 13:55:31 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3.17-alpine` - linux; s390x

```console
$ docker pull plone@sha256:492b00b3cfed3715049a54623e43328b3e47ad2aa46fa695030e61f09e87b512
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84356082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87d1a26d97237963c8324f2a77b4b37512022f3edcba220c37362e756942e60b`
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
# Thu, 26 Jul 2018 12:11:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 12:11:09 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 12:11:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 12:11:14 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 13:01:30 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 26 Jul 2018 13:01:30 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 13:01:31 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 13:01:31 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 13:08:40 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 13:08:42 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 13:08:42 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Thu, 26 Jul 2018 13:08:43 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 13:08:43 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 13:08:43 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 13:08:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 13:08:44 GMT
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
	-	`sha256:bf5ad52a409cb80c3e29f41f56d86aab60539d30df433b08cfbaa66594515d08`  
		Last Modified: Thu, 26 Jul 2018 12:22:30 GMT  
		Size: 19.7 MB (19691110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662ebcfc8f6f5c9c5169141fe514af08194c58d0c780b71e0dcaf46f15bc6731`  
		Last Modified: Thu, 26 Jul 2018 12:22:26 GMT  
		Size: 1.9 MB (1853555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752abf7b8fa3f3840b30a6e1affac5c646ad075b1db48958b03d592a9cb07521`  
		Last Modified: Thu, 26 Jul 2018 13:09:47 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebedb552be920e351d45b101b5c127092438bbfb05e1014c7179fa3aeea889af`  
		Last Modified: Thu, 26 Jul 2018 13:09:48 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba605cacd0c6e94cd48951e8ce85a3ab9915737913c40c9c8a58971be72df9c`  
		Last Modified: Thu, 26 Jul 2018 13:10:04 GMT  
		Size: 60.3 MB (60312894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9976677a020dea23292096829c98b3a704d2cbe9dd10ac41f407a172204bc1`  
		Last Modified: Thu, 26 Jul 2018 13:09:48 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3-alpine`

```console
$ docker pull plone@sha256:364e65074fd9d72433b021e54f3aec753141388a4a4d9c3e6daf26aa1af79347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:4.3-alpine` - linux; amd64

```console
$ docker pull plone@sha256:573f7fc00544dda6edbd483485c750156e24ada72c715fa581a4855025f9a123
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.3 MB (83332253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09affb6c2bedd88cdc3e2d364728559ea221877c7304adc75cc89e013fd81416`
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
# Wed, 25 Jul 2018 18:44:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 25 Jul 2018 18:44:10 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 25 Jul 2018 18:44:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 25 Jul 2018 18:44:17 GMT
CMD ["python2"]
# Wed, 25 Jul 2018 20:18:55 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 25 Jul 2018 20:18:55 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 25 Jul 2018 20:18:56 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 25 Jul 2018 20:18:57 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 25 Jul 2018 20:32:15 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 25 Jul 2018 20:32:16 GMT
VOLUME [/data]
# Wed, 25 Jul 2018 20:32:17 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Wed, 25 Jul 2018 20:32:17 GMT
EXPOSE 8080/tcp
# Wed, 25 Jul 2018 20:32:17 GMT
WORKDIR /plone/instance
# Wed, 25 Jul 2018 20:32:18 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 25 Jul 2018 20:32:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 20:32:18 GMT
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
	-	`sha256:2702b237d49bd19d61157f441c3fe2a0341692db77b9ba4bea7962fa6e7d5935`  
		Last Modified: Wed, 25 Jul 2018 19:20:54 GMT  
		Size: 18.9 MB (18875702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de1187d8a36848162a7062610f0bc0c2aa160b46a8931e5663dd6d52bae377d`  
		Last Modified: Wed, 25 Jul 2018 19:20:48 GMT  
		Size: 1.9 MB (1853863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853c91182712136611b10f1c2e8dbb639e905b47923be164a1f68730588809be`  
		Last Modified: Wed, 25 Jul 2018 20:38:40 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3aef60d1f9dc01a02074a4f129114c5b0872332fc3d79e221225d62f86374a`  
		Last Modified: Wed, 25 Jul 2018 20:38:40 GMT  
		Size: 393.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619e95e2ef95682562ef1f86123538f5bcc75430c62319115f68053b03d0ea68`  
		Last Modified: Wed, 25 Jul 2018 20:39:10 GMT  
		Size: 60.2 MB (60186842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55adc853501eef9ed7195ddbd0af8c06a57de89ceae7f34fbf7170c32d7e4bf8`  
		Last Modified: Wed, 25 Jul 2018 20:38:40 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3-alpine` - linux; 386

```console
$ docker pull plone@sha256:4965d008c1d4c10dcd72864b9e890918b3e8606c80a6e5eec4dfc87299425cff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82856582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0354ced36a9a7bbc746344194f58c8f19001c0fd405a2eab4ea4bf56ae003743`
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
# Thu, 26 Jul 2018 11:58:27 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 11:58:27 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 11:58:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 11:58:35 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 13:33:33 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 26 Jul 2018 13:33:33 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 13:33:34 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 13:33:34 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 13:48:21 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 13:48:22 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 13:48:23 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Thu, 26 Jul 2018 13:48:23 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 13:48:23 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 13:48:24 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 13:48:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 13:48:24 GMT
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
	-	`sha256:f63be1ba27a494205928bc78d9415da8110bb4e3ec2da8b11c586320321cd85d`  
		Last Modified: Thu, 26 Jul 2018 12:33:53 GMT  
		Size: 18.6 MB (18645053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dabd25eacf2eb02bee49fa2c621022dd2c47c1c0c2c42e970b54354bce367ad`  
		Last Modified: Thu, 26 Jul 2018 12:33:47 GMT  
		Size: 1.9 MB (1852752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa04a0dbeff0a412c8bbbd9e76c291b69041b809fc6be015a569afcbe49043d`  
		Last Modified: Thu, 26 Jul 2018 13:55:32 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ee87c7bec7e98a3c2c0944744083de5d7f4e1bbc92db41ced7d87b6f5e5423`  
		Last Modified: Thu, 26 Jul 2018 13:55:31 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3224505cfdd92bf8ee8a86150bfd8bcf9c5bde3de1d2d1509c1f92cb2f7f4570`  
		Last Modified: Thu, 26 Jul 2018 13:56:13 GMT  
		Size: 59.9 MB (59919657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13486da33b43a4031a543c90cf56384e0baa19b0174618f06a71de2cc0dce400`  
		Last Modified: Thu, 26 Jul 2018 13:55:31 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4.3-alpine` - linux; s390x

```console
$ docker pull plone@sha256:492b00b3cfed3715049a54623e43328b3e47ad2aa46fa695030e61f09e87b512
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84356082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87d1a26d97237963c8324f2a77b4b37512022f3edcba220c37362e756942e60b`
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
# Thu, 26 Jul 2018 12:11:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 12:11:09 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 12:11:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 12:11:14 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 13:01:30 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 26 Jul 2018 13:01:30 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 13:01:31 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 13:01:31 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 13:08:40 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 13:08:42 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 13:08:42 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Thu, 26 Jul 2018 13:08:43 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 13:08:43 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 13:08:43 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 13:08:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 13:08:44 GMT
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
	-	`sha256:bf5ad52a409cb80c3e29f41f56d86aab60539d30df433b08cfbaa66594515d08`  
		Last Modified: Thu, 26 Jul 2018 12:22:30 GMT  
		Size: 19.7 MB (19691110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662ebcfc8f6f5c9c5169141fe514af08194c58d0c780b71e0dcaf46f15bc6731`  
		Last Modified: Thu, 26 Jul 2018 12:22:26 GMT  
		Size: 1.9 MB (1853555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752abf7b8fa3f3840b30a6e1affac5c646ad075b1db48958b03d592a9cb07521`  
		Last Modified: Thu, 26 Jul 2018 13:09:47 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebedb552be920e351d45b101b5c127092438bbfb05e1014c7179fa3aeea889af`  
		Last Modified: Thu, 26 Jul 2018 13:09:48 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba605cacd0c6e94cd48951e8ce85a3ab9915737913c40c9c8a58971be72df9c`  
		Last Modified: Thu, 26 Jul 2018 13:10:04 GMT  
		Size: 60.3 MB (60312894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9976677a020dea23292096829c98b3a704d2cbe9dd10ac41f407a172204bc1`  
		Last Modified: Thu, 26 Jul 2018 13:09:48 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4-alpine`

```console
$ docker pull plone@sha256:364e65074fd9d72433b021e54f3aec753141388a4a4d9c3e6daf26aa1af79347
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:4-alpine` - linux; amd64

```console
$ docker pull plone@sha256:573f7fc00544dda6edbd483485c750156e24ada72c715fa581a4855025f9a123
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.3 MB (83332253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09affb6c2bedd88cdc3e2d364728559ea221877c7304adc75cc89e013fd81416`
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
# Wed, 25 Jul 2018 18:44:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 25 Jul 2018 18:44:10 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 25 Jul 2018 18:44:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 25 Jul 2018 18:44:17 GMT
CMD ["python2"]
# Wed, 25 Jul 2018 20:18:55 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Wed, 25 Jul 2018 20:18:55 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 25 Jul 2018 20:18:56 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 25 Jul 2018 20:18:57 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 25 Jul 2018 20:32:15 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 25 Jul 2018 20:32:16 GMT
VOLUME [/data]
# Wed, 25 Jul 2018 20:32:17 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Wed, 25 Jul 2018 20:32:17 GMT
EXPOSE 8080/tcp
# Wed, 25 Jul 2018 20:32:17 GMT
WORKDIR /plone/instance
# Wed, 25 Jul 2018 20:32:18 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 25 Jul 2018 20:32:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 20:32:18 GMT
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
	-	`sha256:2702b237d49bd19d61157f441c3fe2a0341692db77b9ba4bea7962fa6e7d5935`  
		Last Modified: Wed, 25 Jul 2018 19:20:54 GMT  
		Size: 18.9 MB (18875702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de1187d8a36848162a7062610f0bc0c2aa160b46a8931e5663dd6d52bae377d`  
		Last Modified: Wed, 25 Jul 2018 19:20:48 GMT  
		Size: 1.9 MB (1853863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853c91182712136611b10f1c2e8dbb639e905b47923be164a1f68730588809be`  
		Last Modified: Wed, 25 Jul 2018 20:38:40 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3aef60d1f9dc01a02074a4f129114c5b0872332fc3d79e221225d62f86374a`  
		Last Modified: Wed, 25 Jul 2018 20:38:40 GMT  
		Size: 393.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619e95e2ef95682562ef1f86123538f5bcc75430c62319115f68053b03d0ea68`  
		Last Modified: Wed, 25 Jul 2018 20:39:10 GMT  
		Size: 60.2 MB (60186842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55adc853501eef9ed7195ddbd0af8c06a57de89ceae7f34fbf7170c32d7e4bf8`  
		Last Modified: Wed, 25 Jul 2018 20:38:40 GMT  
		Size: 2.3 KB (2251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4-alpine` - linux; 386

```console
$ docker pull plone@sha256:4965d008c1d4c10dcd72864b9e890918b3e8606c80a6e5eec4dfc87299425cff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82856582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0354ced36a9a7bbc746344194f58c8f19001c0fd405a2eab4ea4bf56ae003743`
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
# Thu, 26 Jul 2018 11:58:27 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 11:58:27 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 11:58:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 11:58:35 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 13:33:33 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 26 Jul 2018 13:33:33 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 13:33:34 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 13:33:34 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 13:48:21 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 13:48:22 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 13:48:23 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Thu, 26 Jul 2018 13:48:23 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 13:48:23 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 13:48:24 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 13:48:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 13:48:24 GMT
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
	-	`sha256:f63be1ba27a494205928bc78d9415da8110bb4e3ec2da8b11c586320321cd85d`  
		Last Modified: Thu, 26 Jul 2018 12:33:53 GMT  
		Size: 18.6 MB (18645053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dabd25eacf2eb02bee49fa2c621022dd2c47c1c0c2c42e970b54354bce367ad`  
		Last Modified: Thu, 26 Jul 2018 12:33:47 GMT  
		Size: 1.9 MB (1852752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa04a0dbeff0a412c8bbbd9e76c291b69041b809fc6be015a569afcbe49043d`  
		Last Modified: Thu, 26 Jul 2018 13:55:32 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ee87c7bec7e98a3c2c0944744083de5d7f4e1bbc92db41ced7d87b6f5e5423`  
		Last Modified: Thu, 26 Jul 2018 13:55:31 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3224505cfdd92bf8ee8a86150bfd8bcf9c5bde3de1d2d1509c1f92cb2f7f4570`  
		Last Modified: Thu, 26 Jul 2018 13:56:13 GMT  
		Size: 59.9 MB (59919657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13486da33b43a4031a543c90cf56384e0baa19b0174618f06a71de2cc0dce400`  
		Last Modified: Thu, 26 Jul 2018 13:55:31 GMT  
		Size: 2.2 KB (2250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:4-alpine` - linux; s390x

```console
$ docker pull plone@sha256:492b00b3cfed3715049a54623e43328b3e47ad2aa46fa695030e61f09e87b512
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.4 MB (84356082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87d1a26d97237963c8324f2a77b4b37512022f3edcba220c37362e756942e60b`
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
# Thu, 26 Jul 2018 12:11:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 12:11:09 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 12:11:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 12:11:14 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 13:01:30 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=4.3 PLONE_VERSION=4.3.17 PLONE_MD5=4d9f175803c63301758f42dbf68f015a
# Thu, 26 Jul 2018 13:01:30 GMT
LABEL plone=4.3.17 os=alpine os.version=3.7 name=Plone 4.3 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 13:01:31 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 13:01:31 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 13:08:40 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5  Plone.tgz" | md5sum -c -  && tar -zxvf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && rm -rf bin/buildout  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance//var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apk del .build-deps  && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 13:08:42 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 13:08:42 GMT
COPY multi:5a3433f39e2b332ac9b21e380af31d9e3233508c9d9f67c14188cd72bd3dcf73 in / 
# Thu, 26 Jul 2018 13:08:43 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 13:08:43 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 13:08:43 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 13:08:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 13:08:44 GMT
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
	-	`sha256:bf5ad52a409cb80c3e29f41f56d86aab60539d30df433b08cfbaa66594515d08`  
		Last Modified: Thu, 26 Jul 2018 12:22:30 GMT  
		Size: 19.7 MB (19691110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662ebcfc8f6f5c9c5169141fe514af08194c58d0c780b71e0dcaf46f15bc6731`  
		Last Modified: Thu, 26 Jul 2018 12:22:26 GMT  
		Size: 1.9 MB (1853555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752abf7b8fa3f3840b30a6e1affac5c646ad075b1db48958b03d592a9cb07521`  
		Last Modified: Thu, 26 Jul 2018 13:09:47 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebedb552be920e351d45b101b5c127092438bbfb05e1014c7179fa3aeea889af`  
		Last Modified: Thu, 26 Jul 2018 13:09:48 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba605cacd0c6e94cd48951e8ce85a3ab9915737913c40c9c8a58971be72df9c`  
		Last Modified: Thu, 26 Jul 2018 13:10:04 GMT  
		Size: 60.3 MB (60312894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9976677a020dea23292096829c98b3a704d2cbe9dd10ac41f407a172204bc1`  
		Last Modified: Thu, 26 Jul 2018 13:09:48 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5`

```console
$ docker pull plone@sha256:2518926c1523659c667772f83a6309ba18af7a26fd25882a1a23feeacd63613d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:5` - linux; amd64

```console
$ docker pull plone@sha256:a9a9d3ab3151a53bfb7f72d57950644e4a68d241e13b02b2b347e0d2d31d846f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160483187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8aa1f7fc2a1de0889dc6f97b5718afba0f7a20e1d9fa962c4412deba811f48`
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
# Wed, 25 Jul 2018 18:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 18:22:33 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 25 Jul 2018 18:22:33 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 25 Jul 2018 18:26:00 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 25 Jul 2018 18:26:00 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 25 Jul 2018 18:26:13 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 25 Jul 2018 18:26:16 GMT
CMD ["python2"]
# Wed, 25 Jul 2018 19:41:04 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 25 Jul 2018 19:41:04 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 25 Jul 2018 19:41:05 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 25 Jul 2018 19:41:06 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 25 Jul 2018 19:51:06 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 25 Jul 2018 19:51:08 GMT
VOLUME [/data]
# Wed, 25 Jul 2018 19:51:08 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 25 Jul 2018 19:51:09 GMT
EXPOSE 8080/tcp
# Wed, 25 Jul 2018 19:51:09 GMT
WORKDIR /plone/instance
# Wed, 25 Jul 2018 19:51:10 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 25 Jul 2018 19:51:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 19:51:10 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44247e56d488ba4551c298e242540519a87ab3b4e17791d13459ea9d211ffb0e`  
		Last Modified: Wed, 25 Jul 2018 19:13:50 GMT  
		Size: 2.5 MB (2516901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1109c65233d6855f802c76e1be9513d638ee22a947faa3d0e8d236a5b34e67`  
		Last Modified: Wed, 25 Jul 2018 19:13:56 GMT  
		Size: 17.2 MB (17156534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f741585990ee3ed8a8e873b13b23420014dfb189db0fe8b0c10bc53a5ed61b`  
		Last Modified: Wed, 25 Jul 2018 19:13:51 GMT  
		Size: 2.1 MB (2067735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca414c45e7ec205590ab8231cb385fe11997df41885375874460cb21bb70e29`  
		Last Modified: Wed, 25 Jul 2018 20:32:51 GMT  
		Size: 3.9 KB (3887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0989e201c030bb7b432796f7e3f3988c662d83bff599545f2463ca20ac6495`  
		Last Modified: Wed, 25 Jul 2018 20:32:51 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df307c6ce853c349ff79dc3a85737dd084518013fe849df4cec9a37daed39b2`  
		Last Modified: Wed, 25 Jul 2018 20:33:38 GMT  
		Size: 116.2 MB (116249575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5faa808d11fedce3e643bad028462bbabb02eadfebf577edab0f295a356a0a09`  
		Last Modified: Wed, 25 Jul 2018 20:32:51 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5` - linux; 386

```console
$ docker pull plone@sha256:18076e2e10e9ff3cb6621a17782ce6ad7d1523b0a80f9b2d3d58b92c3d6b59bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160457173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e3e8e183ff398173cc8ec1f386aad3e62fa15cc06aefe256b24f81c9ea4429`
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
# Thu, 26 Jul 2018 11:33:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:33:26 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 26 Jul 2018 11:33:26 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 26 Jul 2018 11:37:15 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 11:37:15 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 11:37:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 11:37:31 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 12:51:47 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Thu, 26 Jul 2018 12:51:47 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 12:51:48 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 12:51:48 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 13:02:52 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 13:02:53 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 13:02:54 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Thu, 26 Jul 2018 13:02:54 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 13:02:54 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 13:02:55 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 13:02:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 13:02:55 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27b2e5a9ed60112ad0b08c6ba62e38a091c3fe11eedf39d370a4cd736c80642`  
		Last Modified: Thu, 26 Jul 2018 12:26:57 GMT  
		Size: 2.5 MB (2517572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0fe3705c2fd5d558a9f7b9ffad0fb894fbb19ce980d7d2562067e85f19d5f`  
		Last Modified: Thu, 26 Jul 2018 12:27:11 GMT  
		Size: 16.4 MB (16356891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183077fca26f7a492637e798fe6ad0fb22cda73a3fb3a856d5daf748eb2647be`  
		Last Modified: Thu, 26 Jul 2018 12:26:57 GMT  
		Size: 2.1 MB (2067564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e8433f277990c0d489907e978efbbe071f69a3caace840e92994a037751cbc`  
		Last Modified: Thu, 26 Jul 2018 13:49:15 GMT  
		Size: 3.9 KB (3876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f80fe935d77df78f8a5307f0255cba1da17b848141cbbba15ac6e752daa666`  
		Last Modified: Thu, 26 Jul 2018 13:49:15 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70eb852e53c1b48283061ce842766a61fded85d52a4ced942ebf147254c01119`  
		Last Modified: Thu, 26 Jul 2018 13:50:24 GMT  
		Size: 116.4 MB (116382243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201322bcd087105c30c4c196a33870975e4940b98141e9def6bb52a2024b9648`  
		Last Modified: Thu, 26 Jul 2018 13:49:18 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1`

```console
$ docker pull plone@sha256:2518926c1523659c667772f83a6309ba18af7a26fd25882a1a23feeacd63613d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:5.1` - linux; amd64

```console
$ docker pull plone@sha256:a9a9d3ab3151a53bfb7f72d57950644e4a68d241e13b02b2b347e0d2d31d846f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160483187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8aa1f7fc2a1de0889dc6f97b5718afba0f7a20e1d9fa962c4412deba811f48`
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
# Wed, 25 Jul 2018 18:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 18:22:33 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 25 Jul 2018 18:22:33 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 25 Jul 2018 18:26:00 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 25 Jul 2018 18:26:00 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 25 Jul 2018 18:26:13 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 25 Jul 2018 18:26:16 GMT
CMD ["python2"]
# Wed, 25 Jul 2018 19:41:04 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 25 Jul 2018 19:41:04 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 25 Jul 2018 19:41:05 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 25 Jul 2018 19:41:06 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 25 Jul 2018 19:51:06 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 25 Jul 2018 19:51:08 GMT
VOLUME [/data]
# Wed, 25 Jul 2018 19:51:08 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 25 Jul 2018 19:51:09 GMT
EXPOSE 8080/tcp
# Wed, 25 Jul 2018 19:51:09 GMT
WORKDIR /plone/instance
# Wed, 25 Jul 2018 19:51:10 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 25 Jul 2018 19:51:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 19:51:10 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44247e56d488ba4551c298e242540519a87ab3b4e17791d13459ea9d211ffb0e`  
		Last Modified: Wed, 25 Jul 2018 19:13:50 GMT  
		Size: 2.5 MB (2516901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1109c65233d6855f802c76e1be9513d638ee22a947faa3d0e8d236a5b34e67`  
		Last Modified: Wed, 25 Jul 2018 19:13:56 GMT  
		Size: 17.2 MB (17156534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f741585990ee3ed8a8e873b13b23420014dfb189db0fe8b0c10bc53a5ed61b`  
		Last Modified: Wed, 25 Jul 2018 19:13:51 GMT  
		Size: 2.1 MB (2067735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca414c45e7ec205590ab8231cb385fe11997df41885375874460cb21bb70e29`  
		Last Modified: Wed, 25 Jul 2018 20:32:51 GMT  
		Size: 3.9 KB (3887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0989e201c030bb7b432796f7e3f3988c662d83bff599545f2463ca20ac6495`  
		Last Modified: Wed, 25 Jul 2018 20:32:51 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df307c6ce853c349ff79dc3a85737dd084518013fe849df4cec9a37daed39b2`  
		Last Modified: Wed, 25 Jul 2018 20:33:38 GMT  
		Size: 116.2 MB (116249575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5faa808d11fedce3e643bad028462bbabb02eadfebf577edab0f295a356a0a09`  
		Last Modified: Wed, 25 Jul 2018 20:32:51 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1` - linux; 386

```console
$ docker pull plone@sha256:18076e2e10e9ff3cb6621a17782ce6ad7d1523b0a80f9b2d3d58b92c3d6b59bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160457173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e3e8e183ff398173cc8ec1f386aad3e62fa15cc06aefe256b24f81c9ea4429`
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
# Thu, 26 Jul 2018 11:33:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:33:26 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 26 Jul 2018 11:33:26 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 26 Jul 2018 11:37:15 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 11:37:15 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 11:37:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 11:37:31 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 12:51:47 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Thu, 26 Jul 2018 12:51:47 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 12:51:48 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 12:51:48 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 13:02:52 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 13:02:53 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 13:02:54 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Thu, 26 Jul 2018 13:02:54 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 13:02:54 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 13:02:55 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 13:02:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 13:02:55 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27b2e5a9ed60112ad0b08c6ba62e38a091c3fe11eedf39d370a4cd736c80642`  
		Last Modified: Thu, 26 Jul 2018 12:26:57 GMT  
		Size: 2.5 MB (2517572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0fe3705c2fd5d558a9f7b9ffad0fb894fbb19ce980d7d2562067e85f19d5f`  
		Last Modified: Thu, 26 Jul 2018 12:27:11 GMT  
		Size: 16.4 MB (16356891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183077fca26f7a492637e798fe6ad0fb22cda73a3fb3a856d5daf748eb2647be`  
		Last Modified: Thu, 26 Jul 2018 12:26:57 GMT  
		Size: 2.1 MB (2067564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e8433f277990c0d489907e978efbbe071f69a3caace840e92994a037751cbc`  
		Last Modified: Thu, 26 Jul 2018 13:49:15 GMT  
		Size: 3.9 KB (3876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f80fe935d77df78f8a5307f0255cba1da17b848141cbbba15ac6e752daa666`  
		Last Modified: Thu, 26 Jul 2018 13:49:15 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70eb852e53c1b48283061ce842766a61fded85d52a4ced942ebf147254c01119`  
		Last Modified: Thu, 26 Jul 2018 13:50:24 GMT  
		Size: 116.4 MB (116382243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201322bcd087105c30c4c196a33870975e4940b98141e9def6bb52a2024b9648`  
		Last Modified: Thu, 26 Jul 2018 13:49:18 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1.2`

```console
$ docker pull plone@sha256:2518926c1523659c667772f83a6309ba18af7a26fd25882a1a23feeacd63613d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:5.1.2` - linux; amd64

```console
$ docker pull plone@sha256:a9a9d3ab3151a53bfb7f72d57950644e4a68d241e13b02b2b347e0d2d31d846f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160483187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8aa1f7fc2a1de0889dc6f97b5718afba0f7a20e1d9fa962c4412deba811f48`
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
# Wed, 25 Jul 2018 18:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 18:22:33 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 25 Jul 2018 18:22:33 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 25 Jul 2018 18:26:00 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 25 Jul 2018 18:26:00 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 25 Jul 2018 18:26:13 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 25 Jul 2018 18:26:16 GMT
CMD ["python2"]
# Wed, 25 Jul 2018 19:41:04 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 25 Jul 2018 19:41:04 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 25 Jul 2018 19:41:05 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 25 Jul 2018 19:41:06 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 25 Jul 2018 19:51:06 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 25 Jul 2018 19:51:08 GMT
VOLUME [/data]
# Wed, 25 Jul 2018 19:51:08 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 25 Jul 2018 19:51:09 GMT
EXPOSE 8080/tcp
# Wed, 25 Jul 2018 19:51:09 GMT
WORKDIR /plone/instance
# Wed, 25 Jul 2018 19:51:10 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 25 Jul 2018 19:51:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 19:51:10 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44247e56d488ba4551c298e242540519a87ab3b4e17791d13459ea9d211ffb0e`  
		Last Modified: Wed, 25 Jul 2018 19:13:50 GMT  
		Size: 2.5 MB (2516901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1109c65233d6855f802c76e1be9513d638ee22a947faa3d0e8d236a5b34e67`  
		Last Modified: Wed, 25 Jul 2018 19:13:56 GMT  
		Size: 17.2 MB (17156534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f741585990ee3ed8a8e873b13b23420014dfb189db0fe8b0c10bc53a5ed61b`  
		Last Modified: Wed, 25 Jul 2018 19:13:51 GMT  
		Size: 2.1 MB (2067735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca414c45e7ec205590ab8231cb385fe11997df41885375874460cb21bb70e29`  
		Last Modified: Wed, 25 Jul 2018 20:32:51 GMT  
		Size: 3.9 KB (3887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0989e201c030bb7b432796f7e3f3988c662d83bff599545f2463ca20ac6495`  
		Last Modified: Wed, 25 Jul 2018 20:32:51 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df307c6ce853c349ff79dc3a85737dd084518013fe849df4cec9a37daed39b2`  
		Last Modified: Wed, 25 Jul 2018 20:33:38 GMT  
		Size: 116.2 MB (116249575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5faa808d11fedce3e643bad028462bbabb02eadfebf577edab0f295a356a0a09`  
		Last Modified: Wed, 25 Jul 2018 20:32:51 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.2` - linux; 386

```console
$ docker pull plone@sha256:18076e2e10e9ff3cb6621a17782ce6ad7d1523b0a80f9b2d3d58b92c3d6b59bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160457173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e3e8e183ff398173cc8ec1f386aad3e62fa15cc06aefe256b24f81c9ea4429`
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
# Thu, 26 Jul 2018 11:33:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:33:26 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 26 Jul 2018 11:33:26 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 26 Jul 2018 11:37:15 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 11:37:15 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 11:37:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 11:37:31 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 12:51:47 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Thu, 26 Jul 2018 12:51:47 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 12:51:48 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 12:51:48 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 13:02:52 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 13:02:53 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 13:02:54 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Thu, 26 Jul 2018 13:02:54 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 13:02:54 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 13:02:55 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 13:02:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 13:02:55 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27b2e5a9ed60112ad0b08c6ba62e38a091c3fe11eedf39d370a4cd736c80642`  
		Last Modified: Thu, 26 Jul 2018 12:26:57 GMT  
		Size: 2.5 MB (2517572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0fe3705c2fd5d558a9f7b9ffad0fb894fbb19ce980d7d2562067e85f19d5f`  
		Last Modified: Thu, 26 Jul 2018 12:27:11 GMT  
		Size: 16.4 MB (16356891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183077fca26f7a492637e798fe6ad0fb22cda73a3fb3a856d5daf748eb2647be`  
		Last Modified: Thu, 26 Jul 2018 12:26:57 GMT  
		Size: 2.1 MB (2067564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e8433f277990c0d489907e978efbbe071f69a3caace840e92994a037751cbc`  
		Last Modified: Thu, 26 Jul 2018 13:49:15 GMT  
		Size: 3.9 KB (3876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f80fe935d77df78f8a5307f0255cba1da17b848141cbbba15ac6e752daa666`  
		Last Modified: Thu, 26 Jul 2018 13:49:15 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70eb852e53c1b48283061ce842766a61fded85d52a4ced942ebf147254c01119`  
		Last Modified: Thu, 26 Jul 2018 13:50:24 GMT  
		Size: 116.4 MB (116382243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201322bcd087105c30c4c196a33870975e4940b98141e9def6bb52a2024b9648`  
		Last Modified: Thu, 26 Jul 2018 13:49:18 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1.2-alpine`

```console
$ docker pull plone@sha256:81feaf6bbe4b4770f5d087bfe14d30c1142139fc26b3d99c5acc98066c2a3f8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:5.1.2-alpine` - linux; amd64

```console
$ docker pull plone@sha256:e284cc1cf7ace4577bf79502f5bab33f34cc5f4ce5f1336db227d9cb8fede8c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.8 MB (107782660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9fe7be1eec18dad5b602219e8fae360ac36e7cc74a0c6b050feb4abe562dda3`
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
# Wed, 25 Jul 2018 18:44:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 25 Jul 2018 18:44:10 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 25 Jul 2018 18:44:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 25 Jul 2018 18:44:17 GMT
CMD ["python2"]
# Wed, 25 Jul 2018 19:51:29 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 25 Jul 2018 19:51:30 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 25 Jul 2018 19:51:31 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 25 Jul 2018 19:51:31 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 25 Jul 2018 20:04:25 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 25 Jul 2018 20:04:27 GMT
VOLUME [/data]
# Wed, 25 Jul 2018 20:04:27 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Wed, 25 Jul 2018 20:04:27 GMT
EXPOSE 8080/tcp
# Wed, 25 Jul 2018 20:04:28 GMT
WORKDIR /plone/instance
# Wed, 25 Jul 2018 20:04:28 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 25 Jul 2018 20:04:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 20:04:29 GMT
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
	-	`sha256:2702b237d49bd19d61157f441c3fe2a0341692db77b9ba4bea7962fa6e7d5935`  
		Last Modified: Wed, 25 Jul 2018 19:20:54 GMT  
		Size: 18.9 MB (18875702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de1187d8a36848162a7062610f0bc0c2aa160b46a8931e5663dd6d52bae377d`  
		Last Modified: Wed, 25 Jul 2018 19:20:48 GMT  
		Size: 1.9 MB (1853863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67f5c519aefc6fa1393f80441ce771ddba76287b0c498fbf9b40e471c0c0736`  
		Last Modified: Wed, 25 Jul 2018 20:35:04 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ffc451ec898beb7aa814818a773bd6d24f8c45ded130d28db5944d76681622`  
		Last Modified: Wed, 25 Jul 2018 20:35:04 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7322a6238f48c0a63fdfa2e7822efe3520a5fa6a75752a7d87d69f0f4f88d2f5`  
		Last Modified: Wed, 25 Jul 2018 20:35:41 GMT  
		Size: 84.6 MB (84637252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a26a65eb7e4a28327599e1dc748c5df2871301eb7208112fbb4ffb9aff1710`  
		Last Modified: Wed, 25 Jul 2018 20:35:04 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.2-alpine` - linux; 386

```console
$ docker pull plone@sha256:d6553acb79d4bf903e024ccff030ccca59470db1ba05931d5759298635b9a740
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107112890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c8c731656bf800794827aad21e9c052a4db1402e1524bf4ce626be91930c431`
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
# Thu, 26 Jul 2018 11:58:27 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 11:58:27 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 11:58:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 11:58:35 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 13:03:13 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Thu, 26 Jul 2018 13:03:13 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 13:03:14 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 13:03:14 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 13:17:46 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 13:17:48 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 13:17:48 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 26 Jul 2018 13:17:49 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 13:17:49 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 13:17:49 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 13:17:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 13:17:50 GMT
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
	-	`sha256:f63be1ba27a494205928bc78d9415da8110bb4e3ec2da8b11c586320321cd85d`  
		Last Modified: Thu, 26 Jul 2018 12:33:53 GMT  
		Size: 18.6 MB (18645053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dabd25eacf2eb02bee49fa2c621022dd2c47c1c0c2c42e970b54354bce367ad`  
		Last Modified: Thu, 26 Jul 2018 12:33:47 GMT  
		Size: 1.9 MB (1852752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239f33c960f36fbec1e926b8bd618beb46c92e967b576301be32f1fdf2ce0bce`  
		Last Modified: Thu, 26 Jul 2018 13:51:34 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad9c66cc3820e13bf72e78105b49a1c59dc80e4bcc582ab1de71aa876b4925`  
		Last Modified: Thu, 26 Jul 2018 13:51:34 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0e0cac2c373e034899bc55627513076da815024d51958ea298627c5b0c9be9`  
		Last Modified: Thu, 26 Jul 2018 13:52:30 GMT  
		Size: 84.2 MB (84175964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b88d63f3a2e14cb80071a3fca2773e51968fba6634f7740b27898b3e460f439`  
		Last Modified: Thu, 26 Jul 2018 13:51:35 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1.2-alpine` - linux; s390x

```console
$ docker pull plone@sha256:0fc0905f37c51c253c52b9fb5cf1f5e1d46d402469ce0e8afe7afb6c0a414153
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.8 MB (108821627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aebb54952827a86f69e19d3ddcd16f402f48b9739492790db7fc3227b1cb6244`
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
# Thu, 26 Jul 2018 12:11:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 12:11:09 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 12:11:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 12:11:14 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 12:46:55 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Thu, 26 Jul 2018 12:46:55 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 12:46:56 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 12:46:56 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 12:54:03 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 12:54:05 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 12:54:05 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 26 Jul 2018 12:54:05 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 12:54:06 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 12:54:06 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 12:54:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 12:54:06 GMT
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
	-	`sha256:bf5ad52a409cb80c3e29f41f56d86aab60539d30df433b08cfbaa66594515d08`  
		Last Modified: Thu, 26 Jul 2018 12:22:30 GMT  
		Size: 19.7 MB (19691110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662ebcfc8f6f5c9c5169141fe514af08194c58d0c780b71e0dcaf46f15bc6731`  
		Last Modified: Thu, 26 Jul 2018 12:22:26 GMT  
		Size: 1.9 MB (1853555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41890cf3f352aa30abbfb2399c351f0cbb8033072ffccce7910451a9183652bc`  
		Last Modified: Thu, 26 Jul 2018 13:09:04 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d209a22f6d19aad2be02a04a4a379a31478d746f5c129c9dad2c8bd2993e03`  
		Last Modified: Thu, 26 Jul 2018 13:09:04 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e07125de596fd861e29665024a444df9ce7b8188317a016cf973dd00a01ad4f`  
		Last Modified: Thu, 26 Jul 2018 13:09:25 GMT  
		Size: 84.8 MB (84778437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e4042e4a91685dc4dfedaf6412c52a6844da02c7a10ff35af7d224b5127d98`  
		Last Modified: Thu, 26 Jul 2018 13:09:04 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.1-alpine`

```console
$ docker pull plone@sha256:81feaf6bbe4b4770f5d087bfe14d30c1142139fc26b3d99c5acc98066c2a3f8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:5.1-alpine` - linux; amd64

```console
$ docker pull plone@sha256:e284cc1cf7ace4577bf79502f5bab33f34cc5f4ce5f1336db227d9cb8fede8c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.8 MB (107782660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9fe7be1eec18dad5b602219e8fae360ac36e7cc74a0c6b050feb4abe562dda3`
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
# Wed, 25 Jul 2018 18:44:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 25 Jul 2018 18:44:10 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 25 Jul 2018 18:44:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 25 Jul 2018 18:44:17 GMT
CMD ["python2"]
# Wed, 25 Jul 2018 19:51:29 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 25 Jul 2018 19:51:30 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 25 Jul 2018 19:51:31 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 25 Jul 2018 19:51:31 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 25 Jul 2018 20:04:25 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 25 Jul 2018 20:04:27 GMT
VOLUME [/data]
# Wed, 25 Jul 2018 20:04:27 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Wed, 25 Jul 2018 20:04:27 GMT
EXPOSE 8080/tcp
# Wed, 25 Jul 2018 20:04:28 GMT
WORKDIR /plone/instance
# Wed, 25 Jul 2018 20:04:28 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 25 Jul 2018 20:04:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 20:04:29 GMT
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
	-	`sha256:2702b237d49bd19d61157f441c3fe2a0341692db77b9ba4bea7962fa6e7d5935`  
		Last Modified: Wed, 25 Jul 2018 19:20:54 GMT  
		Size: 18.9 MB (18875702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de1187d8a36848162a7062610f0bc0c2aa160b46a8931e5663dd6d52bae377d`  
		Last Modified: Wed, 25 Jul 2018 19:20:48 GMT  
		Size: 1.9 MB (1853863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67f5c519aefc6fa1393f80441ce771ddba76287b0c498fbf9b40e471c0c0736`  
		Last Modified: Wed, 25 Jul 2018 20:35:04 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ffc451ec898beb7aa814818a773bd6d24f8c45ded130d28db5944d76681622`  
		Last Modified: Wed, 25 Jul 2018 20:35:04 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7322a6238f48c0a63fdfa2e7822efe3520a5fa6a75752a7d87d69f0f4f88d2f5`  
		Last Modified: Wed, 25 Jul 2018 20:35:41 GMT  
		Size: 84.6 MB (84637252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a26a65eb7e4a28327599e1dc748c5df2871301eb7208112fbb4ffb9aff1710`  
		Last Modified: Wed, 25 Jul 2018 20:35:04 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1-alpine` - linux; 386

```console
$ docker pull plone@sha256:d6553acb79d4bf903e024ccff030ccca59470db1ba05931d5759298635b9a740
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107112890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c8c731656bf800794827aad21e9c052a4db1402e1524bf4ce626be91930c431`
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
# Thu, 26 Jul 2018 11:58:27 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 11:58:27 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 11:58:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 11:58:35 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 13:03:13 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Thu, 26 Jul 2018 13:03:13 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 13:03:14 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 13:03:14 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 13:17:46 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 13:17:48 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 13:17:48 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 26 Jul 2018 13:17:49 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 13:17:49 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 13:17:49 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 13:17:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 13:17:50 GMT
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
	-	`sha256:f63be1ba27a494205928bc78d9415da8110bb4e3ec2da8b11c586320321cd85d`  
		Last Modified: Thu, 26 Jul 2018 12:33:53 GMT  
		Size: 18.6 MB (18645053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dabd25eacf2eb02bee49fa2c621022dd2c47c1c0c2c42e970b54354bce367ad`  
		Last Modified: Thu, 26 Jul 2018 12:33:47 GMT  
		Size: 1.9 MB (1852752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239f33c960f36fbec1e926b8bd618beb46c92e967b576301be32f1fdf2ce0bce`  
		Last Modified: Thu, 26 Jul 2018 13:51:34 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad9c66cc3820e13bf72e78105b49a1c59dc80e4bcc582ab1de71aa876b4925`  
		Last Modified: Thu, 26 Jul 2018 13:51:34 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0e0cac2c373e034899bc55627513076da815024d51958ea298627c5b0c9be9`  
		Last Modified: Thu, 26 Jul 2018 13:52:30 GMT  
		Size: 84.2 MB (84175964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b88d63f3a2e14cb80071a3fca2773e51968fba6634f7740b27898b3e460f439`  
		Last Modified: Thu, 26 Jul 2018 13:51:35 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5.1-alpine` - linux; s390x

```console
$ docker pull plone@sha256:0fc0905f37c51c253c52b9fb5cf1f5e1d46d402469ce0e8afe7afb6c0a414153
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.8 MB (108821627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aebb54952827a86f69e19d3ddcd16f402f48b9739492790db7fc3227b1cb6244`
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
# Thu, 26 Jul 2018 12:11:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 12:11:09 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 12:11:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 12:11:14 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 12:46:55 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Thu, 26 Jul 2018 12:46:55 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 12:46:56 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 12:46:56 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 12:54:03 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 12:54:05 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 12:54:05 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 26 Jul 2018 12:54:05 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 12:54:06 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 12:54:06 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 12:54:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 12:54:06 GMT
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
	-	`sha256:bf5ad52a409cb80c3e29f41f56d86aab60539d30df433b08cfbaa66594515d08`  
		Last Modified: Thu, 26 Jul 2018 12:22:30 GMT  
		Size: 19.7 MB (19691110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662ebcfc8f6f5c9c5169141fe514af08194c58d0c780b71e0dcaf46f15bc6731`  
		Last Modified: Thu, 26 Jul 2018 12:22:26 GMT  
		Size: 1.9 MB (1853555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41890cf3f352aa30abbfb2399c351f0cbb8033072ffccce7910451a9183652bc`  
		Last Modified: Thu, 26 Jul 2018 13:09:04 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d209a22f6d19aad2be02a04a4a379a31478d746f5c129c9dad2c8bd2993e03`  
		Last Modified: Thu, 26 Jul 2018 13:09:04 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e07125de596fd861e29665024a444df9ce7b8188317a016cf973dd00a01ad4f`  
		Last Modified: Thu, 26 Jul 2018 13:09:25 GMT  
		Size: 84.8 MB (84778437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e4042e4a91685dc4dfedaf6412c52a6844da02c7a10ff35af7d224b5127d98`  
		Last Modified: Thu, 26 Jul 2018 13:09:04 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5-alpine`

```console
$ docker pull plone@sha256:81feaf6bbe4b4770f5d087bfe14d30c1142139fc26b3d99c5acc98066c2a3f8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:5-alpine` - linux; amd64

```console
$ docker pull plone@sha256:e284cc1cf7ace4577bf79502f5bab33f34cc5f4ce5f1336db227d9cb8fede8c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.8 MB (107782660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9fe7be1eec18dad5b602219e8fae360ac36e7cc74a0c6b050feb4abe562dda3`
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
# Wed, 25 Jul 2018 18:44:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 25 Jul 2018 18:44:10 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 25 Jul 2018 18:44:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 25 Jul 2018 18:44:17 GMT
CMD ["python2"]
# Wed, 25 Jul 2018 19:51:29 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 25 Jul 2018 19:51:30 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 25 Jul 2018 19:51:31 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 25 Jul 2018 19:51:31 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 25 Jul 2018 20:04:25 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 25 Jul 2018 20:04:27 GMT
VOLUME [/data]
# Wed, 25 Jul 2018 20:04:27 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Wed, 25 Jul 2018 20:04:27 GMT
EXPOSE 8080/tcp
# Wed, 25 Jul 2018 20:04:28 GMT
WORKDIR /plone/instance
# Wed, 25 Jul 2018 20:04:28 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 25 Jul 2018 20:04:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 20:04:29 GMT
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
	-	`sha256:2702b237d49bd19d61157f441c3fe2a0341692db77b9ba4bea7962fa6e7d5935`  
		Last Modified: Wed, 25 Jul 2018 19:20:54 GMT  
		Size: 18.9 MB (18875702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de1187d8a36848162a7062610f0bc0c2aa160b46a8931e5663dd6d52bae377d`  
		Last Modified: Wed, 25 Jul 2018 19:20:48 GMT  
		Size: 1.9 MB (1853863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67f5c519aefc6fa1393f80441ce771ddba76287b0c498fbf9b40e471c0c0736`  
		Last Modified: Wed, 25 Jul 2018 20:35:04 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ffc451ec898beb7aa814818a773bd6d24f8c45ded130d28db5944d76681622`  
		Last Modified: Wed, 25 Jul 2018 20:35:04 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7322a6238f48c0a63fdfa2e7822efe3520a5fa6a75752a7d87d69f0f4f88d2f5`  
		Last Modified: Wed, 25 Jul 2018 20:35:41 GMT  
		Size: 84.6 MB (84637252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a26a65eb7e4a28327599e1dc748c5df2871301eb7208112fbb4ffb9aff1710`  
		Last Modified: Wed, 25 Jul 2018 20:35:04 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5-alpine` - linux; 386

```console
$ docker pull plone@sha256:d6553acb79d4bf903e024ccff030ccca59470db1ba05931d5759298635b9a740
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107112890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c8c731656bf800794827aad21e9c052a4db1402e1524bf4ce626be91930c431`
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
# Thu, 26 Jul 2018 11:58:27 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 11:58:27 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 11:58:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 11:58:35 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 13:03:13 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Thu, 26 Jul 2018 13:03:13 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 13:03:14 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 13:03:14 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 13:17:46 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 13:17:48 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 13:17:48 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 26 Jul 2018 13:17:49 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 13:17:49 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 13:17:49 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 13:17:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 13:17:50 GMT
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
	-	`sha256:f63be1ba27a494205928bc78d9415da8110bb4e3ec2da8b11c586320321cd85d`  
		Last Modified: Thu, 26 Jul 2018 12:33:53 GMT  
		Size: 18.6 MB (18645053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dabd25eacf2eb02bee49fa2c621022dd2c47c1c0c2c42e970b54354bce367ad`  
		Last Modified: Thu, 26 Jul 2018 12:33:47 GMT  
		Size: 1.9 MB (1852752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239f33c960f36fbec1e926b8bd618beb46c92e967b576301be32f1fdf2ce0bce`  
		Last Modified: Thu, 26 Jul 2018 13:51:34 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad9c66cc3820e13bf72e78105b49a1c59dc80e4bcc582ab1de71aa876b4925`  
		Last Modified: Thu, 26 Jul 2018 13:51:34 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0e0cac2c373e034899bc55627513076da815024d51958ea298627c5b0c9be9`  
		Last Modified: Thu, 26 Jul 2018 13:52:30 GMT  
		Size: 84.2 MB (84175964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b88d63f3a2e14cb80071a3fca2773e51968fba6634f7740b27898b3e460f439`  
		Last Modified: Thu, 26 Jul 2018 13:51:35 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:5-alpine` - linux; s390x

```console
$ docker pull plone@sha256:0fc0905f37c51c253c52b9fb5cf1f5e1d46d402469ce0e8afe7afb6c0a414153
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.8 MB (108821627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aebb54952827a86f69e19d3ddcd16f402f48b9739492790db7fc3227b1cb6244`
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
# Thu, 26 Jul 2018 12:11:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 12:11:09 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 12:11:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 12:11:14 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 12:46:55 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Thu, 26 Jul 2018 12:46:55 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 12:46:56 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 12:46:56 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 12:54:03 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 12:54:05 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 12:54:05 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 26 Jul 2018 12:54:05 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 12:54:06 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 12:54:06 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 12:54:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 12:54:06 GMT
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
	-	`sha256:bf5ad52a409cb80c3e29f41f56d86aab60539d30df433b08cfbaa66594515d08`  
		Last Modified: Thu, 26 Jul 2018 12:22:30 GMT  
		Size: 19.7 MB (19691110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662ebcfc8f6f5c9c5169141fe514af08194c58d0c780b71e0dcaf46f15bc6731`  
		Last Modified: Thu, 26 Jul 2018 12:22:26 GMT  
		Size: 1.9 MB (1853555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41890cf3f352aa30abbfb2399c351f0cbb8033072ffccce7910451a9183652bc`  
		Last Modified: Thu, 26 Jul 2018 13:09:04 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d209a22f6d19aad2be02a04a4a379a31478d746f5c129c9dad2c8bd2993e03`  
		Last Modified: Thu, 26 Jul 2018 13:09:04 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e07125de596fd861e29665024a444df9ce7b8188317a016cf973dd00a01ad4f`  
		Last Modified: Thu, 26 Jul 2018 13:09:25 GMT  
		Size: 84.8 MB (84778437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e4042e4a91685dc4dfedaf6412c52a6844da02c7a10ff35af7d224b5127d98`  
		Last Modified: Thu, 26 Jul 2018 13:09:04 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:alpine`

```console
$ docker pull plone@sha256:81feaf6bbe4b4770f5d087bfe14d30c1142139fc26b3d99c5acc98066c2a3f8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; s390x

### `plone:alpine` - linux; amd64

```console
$ docker pull plone@sha256:e284cc1cf7ace4577bf79502f5bab33f34cc5f4ce5f1336db227d9cb8fede8c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.8 MB (107782660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9fe7be1eec18dad5b602219e8fae360ac36e7cc74a0c6b050feb4abe562dda3`
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
# Wed, 25 Jul 2018 18:44:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 25 Jul 2018 18:44:10 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 25 Jul 2018 18:44:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 25 Jul 2018 18:44:17 GMT
CMD ["python2"]
# Wed, 25 Jul 2018 19:51:29 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 25 Jul 2018 19:51:30 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 25 Jul 2018 19:51:31 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Wed, 25 Jul 2018 19:51:31 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 25 Jul 2018 20:04:25 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Wed, 25 Jul 2018 20:04:27 GMT
VOLUME [/data]
# Wed, 25 Jul 2018 20:04:27 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Wed, 25 Jul 2018 20:04:27 GMT
EXPOSE 8080/tcp
# Wed, 25 Jul 2018 20:04:28 GMT
WORKDIR /plone/instance
# Wed, 25 Jul 2018 20:04:28 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 25 Jul 2018 20:04:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 20:04:29 GMT
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
	-	`sha256:2702b237d49bd19d61157f441c3fe2a0341692db77b9ba4bea7962fa6e7d5935`  
		Last Modified: Wed, 25 Jul 2018 19:20:54 GMT  
		Size: 18.9 MB (18875702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de1187d8a36848162a7062610f0bc0c2aa160b46a8931e5663dd6d52bae377d`  
		Last Modified: Wed, 25 Jul 2018 19:20:48 GMT  
		Size: 1.9 MB (1853863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67f5c519aefc6fa1393f80441ce771ddba76287b0c498fbf9b40e471c0c0736`  
		Last Modified: Wed, 25 Jul 2018 20:35:04 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ffc451ec898beb7aa814818a773bd6d24f8c45ded130d28db5944d76681622`  
		Last Modified: Wed, 25 Jul 2018 20:35:04 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7322a6238f48c0a63fdfa2e7822efe3520a5fa6a75752a7d87d69f0f4f88d2f5`  
		Last Modified: Wed, 25 Jul 2018 20:35:41 GMT  
		Size: 84.6 MB (84637252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a26a65eb7e4a28327599e1dc748c5df2871301eb7208112fbb4ffb9aff1710`  
		Last Modified: Wed, 25 Jul 2018 20:35:04 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:alpine` - linux; 386

```console
$ docker pull plone@sha256:d6553acb79d4bf903e024ccff030ccca59470db1ba05931d5759298635b9a740
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107112890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c8c731656bf800794827aad21e9c052a4db1402e1524bf4ce626be91930c431`
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
# Thu, 26 Jul 2018 11:58:27 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 11:58:27 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 11:58:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 11:58:35 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 13:03:13 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Thu, 26 Jul 2018 13:03:13 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 13:03:14 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 13:03:14 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 13:17:46 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 13:17:48 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 13:17:48 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 26 Jul 2018 13:17:49 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 13:17:49 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 13:17:49 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 13:17:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 13:17:50 GMT
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
	-	`sha256:f63be1ba27a494205928bc78d9415da8110bb4e3ec2da8b11c586320321cd85d`  
		Last Modified: Thu, 26 Jul 2018 12:33:53 GMT  
		Size: 18.6 MB (18645053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dabd25eacf2eb02bee49fa2c621022dd2c47c1c0c2c42e970b54354bce367ad`  
		Last Modified: Thu, 26 Jul 2018 12:33:47 GMT  
		Size: 1.9 MB (1852752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239f33c960f36fbec1e926b8bd618beb46c92e967b576301be32f1fdf2ce0bce`  
		Last Modified: Thu, 26 Jul 2018 13:51:34 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad9c66cc3820e13bf72e78105b49a1c59dc80e4bcc582ab1de71aa876b4925`  
		Last Modified: Thu, 26 Jul 2018 13:51:34 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0e0cac2c373e034899bc55627513076da815024d51958ea298627c5b0c9be9`  
		Last Modified: Thu, 26 Jul 2018 13:52:30 GMT  
		Size: 84.2 MB (84175964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b88d63f3a2e14cb80071a3fca2773e51968fba6634f7740b27898b3e460f439`  
		Last Modified: Thu, 26 Jul 2018 13:51:35 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:alpine` - linux; s390x

```console
$ docker pull plone@sha256:0fc0905f37c51c253c52b9fb5cf1f5e1d46d402469ce0e8afe7afb6c0a414153
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.8 MB (108821627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aebb54952827a86f69e19d3ddcd16f402f48b9739492790db7fc3227b1cb6244`
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
# Thu, 26 Jul 2018 12:11:08 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libnsl-dev 		libressl 		libressl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 12:11:09 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 12:11:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apk del .fetch-deps; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 12:11:14 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 12:46:55 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Thu, 26 Jul 2018 12:46:55 GMT
LABEL plone=5.1.2 os=alpine os.version=3.7 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 12:46:56 GMT
RUN addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 12:46:56 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 12:54:03 GMT
RUN apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo "$PLONE_MD5  Plone.tgz" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 12:54:05 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 12:54:05 GMT
COPY multi:d193f88189d80de1389ebe4d144dbb9536f8453eecfc990fe90accd796fb2fb3 in / 
# Thu, 26 Jul 2018 12:54:05 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 12:54:06 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 12:54:06 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 12:54:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 12:54:06 GMT
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
	-	`sha256:bf5ad52a409cb80c3e29f41f56d86aab60539d30df433b08cfbaa66594515d08`  
		Last Modified: Thu, 26 Jul 2018 12:22:30 GMT  
		Size: 19.7 MB (19691110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662ebcfc8f6f5c9c5169141fe514af08194c58d0c780b71e0dcaf46f15bc6731`  
		Last Modified: Thu, 26 Jul 2018 12:22:26 GMT  
		Size: 1.9 MB (1853555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41890cf3f352aa30abbfb2399c351f0cbb8033072ffccce7910451a9183652bc`  
		Last Modified: Thu, 26 Jul 2018 13:09:04 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d209a22f6d19aad2be02a04a4a379a31478d746f5c129c9dad2c8bd2993e03`  
		Last Modified: Thu, 26 Jul 2018 13:09:04 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e07125de596fd861e29665024a444df9ce7b8188317a016cf973dd00a01ad4f`  
		Last Modified: Thu, 26 Jul 2018 13:09:25 GMT  
		Size: 84.8 MB (84778437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e4042e4a91685dc4dfedaf6412c52a6844da02c7a10ff35af7d224b5127d98`  
		Last Modified: Thu, 26 Jul 2018 13:09:04 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:latest`

```console
$ docker pull plone@sha256:2518926c1523659c667772f83a6309ba18af7a26fd25882a1a23feeacd63613d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

### `plone:latest` - linux; amd64

```console
$ docker pull plone@sha256:a9a9d3ab3151a53bfb7f72d57950644e4a68d241e13b02b2b347e0d2d31d846f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160483187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8aa1f7fc2a1de0889dc6f97b5718afba0f7a20e1d9fa962c4412deba811f48`
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
# Wed, 25 Jul 2018 18:22:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Jul 2018 18:22:33 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 25 Jul 2018 18:22:33 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 25 Jul 2018 18:26:00 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 25 Jul 2018 18:26:00 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 25 Jul 2018 18:26:13 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 25 Jul 2018 18:26:16 GMT
CMD ["python2"]
# Wed, 25 Jul 2018 19:41:04 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Wed, 25 Jul 2018 19:41:04 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 25 Jul 2018 19:41:05 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 25 Jul 2018 19:41:06 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Wed, 25 Jul 2018 19:51:06 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 25 Jul 2018 19:51:08 GMT
VOLUME [/data]
# Wed, 25 Jul 2018 19:51:08 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Wed, 25 Jul 2018 19:51:09 GMT
EXPOSE 8080/tcp
# Wed, 25 Jul 2018 19:51:09 GMT
WORKDIR /plone/instance
# Wed, 25 Jul 2018 19:51:10 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 25 Jul 2018 19:51:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Jul 2018 19:51:10 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44247e56d488ba4551c298e242540519a87ab3b4e17791d13459ea9d211ffb0e`  
		Last Modified: Wed, 25 Jul 2018 19:13:50 GMT  
		Size: 2.5 MB (2516901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae1109c65233d6855f802c76e1be9513d638ee22a947faa3d0e8d236a5b34e67`  
		Last Modified: Wed, 25 Jul 2018 19:13:56 GMT  
		Size: 17.2 MB (17156534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f741585990ee3ed8a8e873b13b23420014dfb189db0fe8b0c10bc53a5ed61b`  
		Last Modified: Wed, 25 Jul 2018 19:13:51 GMT  
		Size: 2.1 MB (2067735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca414c45e7ec205590ab8231cb385fe11997df41885375874460cb21bb70e29`  
		Last Modified: Wed, 25 Jul 2018 20:32:51 GMT  
		Size: 3.9 KB (3887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0989e201c030bb7b432796f7e3f3988c662d83bff599545f2463ca20ac6495`  
		Last Modified: Wed, 25 Jul 2018 20:32:51 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df307c6ce853c349ff79dc3a85737dd084518013fe849df4cec9a37daed39b2`  
		Last Modified: Wed, 25 Jul 2018 20:33:38 GMT  
		Size: 116.2 MB (116249575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5faa808d11fedce3e643bad028462bbabb02eadfebf577edab0f295a356a0a09`  
		Last Modified: Wed, 25 Jul 2018 20:32:51 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; 386

```console
$ docker pull plone@sha256:18076e2e10e9ff3cb6621a17782ce6ad7d1523b0a80f9b2d3d58b92c3d6b59bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160457173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e3e8e183ff398173cc8ec1f386aad3e62fa15cc06aefe256b24f81c9ea4429`
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
# Thu, 26 Jul 2018 11:33:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 11:33:26 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 26 Jul 2018 11:33:26 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 26 Jul 2018 11:37:15 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 11:37:15 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 11:37:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 11:37:31 GMT
CMD ["python2"]
# Thu, 26 Jul 2018 12:51:47 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.2 SETUPTOOLS=38.7.0 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.2 PLONE_MD5=e34790cea362b8db6a8ffe30854c6fc3
# Thu, 26 Jul 2018 12:51:47 GMT
LABEL plone=5.1.2 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 26 Jul 2018 12:51:48 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 26 Jul 2018 12:51:48 GMT
COPY file:2777fb88557d1566bae7463262767c6d4af4cf46bac1f98cd838ee5b84e6cc68 in /plone/instance/ 
# Thu, 26 Jul 2018 13:02:52 GMT
RUN buildDeps="wget gcc libc6-dev libpcre3-dev libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev zlib1g-dev"  && runDeps="gosu poppler-utils wv rsync lynx netcat libxml2 libxslt1.1 libjpeg62 libtiff5 libopenjp2-7"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT  && cd /plone/instance  && buildout  && ln -s /usr/local/bin/pip /plone/instance/bin/pip  && ln -s /usr/local/bin/python /plone/instance/bin/python  && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 26 Jul 2018 13:02:53 GMT
VOLUME [/data]
# Thu, 26 Jul 2018 13:02:54 GMT
COPY multi:34383588eabd50110cfa12f64606569433c191280a87b2e6043b02d5f705d73f in / 
# Thu, 26 Jul 2018 13:02:54 GMT
EXPOSE 8080/tcp
# Thu, 26 Jul 2018 13:02:54 GMT
WORKDIR /plone/instance
# Thu, 26 Jul 2018 13:02:55 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 26 Jul 2018 13:02:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Jul 2018 13:02:55 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27b2e5a9ed60112ad0b08c6ba62e38a091c3fe11eedf39d370a4cd736c80642`  
		Last Modified: Thu, 26 Jul 2018 12:26:57 GMT  
		Size: 2.5 MB (2517572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b0fe3705c2fd5d558a9f7b9ffad0fb894fbb19ce980d7d2562067e85f19d5f`  
		Last Modified: Thu, 26 Jul 2018 12:27:11 GMT  
		Size: 16.4 MB (16356891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183077fca26f7a492637e798fe6ad0fb22cda73a3fb3a856d5daf748eb2647be`  
		Last Modified: Thu, 26 Jul 2018 12:26:57 GMT  
		Size: 2.1 MB (2067564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e8433f277990c0d489907e978efbbe071f69a3caace840e92994a037751cbc`  
		Last Modified: Thu, 26 Jul 2018 13:49:15 GMT  
		Size: 3.9 KB (3876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f80fe935d77df78f8a5307f0255cba1da17b848141cbbba15ac6e752daa666`  
		Last Modified: Thu, 26 Jul 2018 13:49:15 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70eb852e53c1b48283061ce842766a61fded85d52a4ced942ebf147254c01119`  
		Last Modified: Thu, 26 Jul 2018 13:50:24 GMT  
		Size: 116.4 MB (116382243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201322bcd087105c30c4c196a33870975e4940b98141e9def6bb52a2024b9648`  
		Last Modified: Thu, 26 Jul 2018 13:49:18 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
