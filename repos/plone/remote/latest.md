## `plone:latest`

```console
$ docker pull plone@sha256:436d43a422815a8d54a2445caf7b6728ce8f455a006b1ff1fd8a8f691185898d
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
$ docker pull plone@sha256:1ba84b4b25b30f4b8f846ce7a59bb8dc648a8544c4f7d2d6919caf7ed4e5a8db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.8 MB (173775264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62dac6227441ca4d87421e16eeaecbabdf2f10233333b21a5073030df086db15`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:34:12 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 08:34:12 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 09:45:43 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 09:46:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:46:08 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 09:46:08 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 09:59:54 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 09:59:54 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 10:00:15 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 10:00:15 GMT
CMD ["python2"]
# Wed, 27 Mar 2019 13:01:04 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.5 PLONE_MD5=8ed5ff27fab67b1b510a1ce0ee2dd655
# Wed, 27 Mar 2019 13:01:04 GMT
LABEL plone=5.1.5 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 27 Mar 2019 13:01:05 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 27 Mar 2019 13:01:05 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Wed, 27 Mar 2019 13:10:15 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 27 Mar 2019 13:10:17 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 13:10:17 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Wed, 27 Mar 2019 13:10:18 GMT
EXPOSE 8080
# Wed, 27 Mar 2019 13:10:18 GMT
WORKDIR /plone/instance
# Wed, 27 Mar 2019 13:10:18 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 27 Mar 2019 13:10:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 13:10:19 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b35abcb27de3651a8b856a4cbaa752c67fc2fe657be16297a61a236bd94c0ef`  
		Last Modified: Wed, 27 Mar 2019 10:24:22 GMT  
		Size: 2.5 MB (2528316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc6dee9fe4802f03e005a1c8465f3fa2f1aa54b4d870469144cf24fa15eca`  
		Last Modified: Wed, 27 Mar 2019 10:24:26 GMT  
		Size: 17.0 MB (17034081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6a9200356691fc4e8ac35af1e03c78e741fbc917d8e82ead50210415ea65b2`  
		Last Modified: Wed, 27 Mar 2019 10:24:22 GMT  
		Size: 2.1 MB (2092329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7568723a47d347ee06e97b0edea95e6c378a0797cd00fd11877696f773d5d5`  
		Last Modified: Wed, 27 Mar 2019 13:19:55 GMT  
		Size: 3.9 KB (3883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a4b1920de1b07826cdf0fe87f06ed618e5fb185322b142500226229d2bd3af`  
		Last Modified: Wed, 27 Mar 2019 13:19:55 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c580f70b743d6589ae471d8ae2f5352ab867fbc3569949a5d97f4bf9f9d7a6f`  
		Last Modified: Wed, 27 Mar 2019 13:20:35 GMT  
		Size: 129.6 MB (129617681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2adbcb71e8c107178b0bee782c9d355dcff30a675ac82692f16edd192051f8cd`  
		Last Modified: Wed, 27 Mar 2019 13:19:55 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; arm variant v5

```console
$ docker pull plone@sha256:9e2a1914338dba3b47240c9bf9c51baa294b3d619a0f5c0f7b81f3ce8cbfdd74
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168505723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:550361547dc3cee42ea3f585f8a4de0da331e913b5f33e782d1780c31d8b68e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:16:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 10:16:07 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 11:22:23 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 11:22:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:22:51 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 11:22:52 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 11:28:14 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 11:28:15 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 11:28:44 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 11:28:44 GMT
CMD ["python2"]
# Wed, 27 Mar 2019 15:54:57 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.5 PLONE_MD5=8ed5ff27fab67b1b510a1ce0ee2dd655
# Wed, 27 Mar 2019 15:54:58 GMT
LABEL plone=5.1.5 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 27 Mar 2019 15:55:00 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 27 Mar 2019 15:55:00 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Wed, 27 Mar 2019 16:15:49 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 27 Mar 2019 16:15:52 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 16:15:53 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Wed, 27 Mar 2019 16:15:53 GMT
EXPOSE 8080
# Wed, 27 Mar 2019 16:15:54 GMT
WORKDIR /plone/instance
# Wed, 27 Mar 2019 16:15:54 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 27 Mar 2019 16:15:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 16:15:55 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eea6aa05b9e3ea8cd7cb963423f4367e36c767cd877d47e7bbc7b7968bd3e4b`  
		Last Modified: Wed, 27 Mar 2019 11:45:01 GMT  
		Size: 2.3 MB (2253699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f9745067573651d9daf60fbd4e62a1b406e2a653cba4b6e17c674b2ba04e4b`  
		Last Modified: Wed, 27 Mar 2019 11:45:06 GMT  
		Size: 16.5 MB (16476372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd876b25034bd3b5a6ff40864f20d12ad46a2ec7f4a768f1de2d47e5b27a5e01`  
		Last Modified: Wed, 27 Mar 2019 11:45:01 GMT  
		Size: 2.1 MB (2092003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c531a2e4e7ea6bb27c956ab4b140700f741853353a400082e35887a950ef11`  
		Last Modified: Wed, 27 Mar 2019 16:35:06 GMT  
		Size: 3.9 KB (3925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6d3ee7125af566144b055dfe2fe4f0f4609cb4141f1a3bd46888e1726a7803`  
		Last Modified: Wed, 27 Mar 2019 16:35:06 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:329eb831cf57e5d09778a313d5172e4a338e7e3cb78ef54a993c7ab776b0f837`  
		Last Modified: Wed, 27 Mar 2019 16:35:51 GMT  
		Size: 126.5 MB (126516135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbac246f0dff3832a1af8eceebc89e76785d19e0130bb8792d95b7378922f518`  
		Last Modified: Wed, 27 Mar 2019 16:35:06 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; arm variant v7

```console
$ docker pull plone@sha256:28285ee6b7e656a78a4fb123e9b4aab9c1be82f64b5ba74a7571fa89e6b1654f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164805880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6363ae049a64098ee12bc7a243078e4d5b8b917ed72f5041180207bf17cce3d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:41:15 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 13:41:15 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 14:28:08 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 14:28:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 14:28:22 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 14:28:23 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 14:32:04 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 14:32:05 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 14:32:28 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 14:32:29 GMT
CMD ["python2"]
# Wed, 27 Mar 2019 16:27:52 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.5 PLONE_MD5=8ed5ff27fab67b1b510a1ce0ee2dd655
# Wed, 27 Mar 2019 16:27:52 GMT
LABEL plone=5.1.5 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 27 Mar 2019 16:27:54 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 27 Mar 2019 16:27:54 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Wed, 27 Mar 2019 16:43:07 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 27 Mar 2019 16:43:12 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 16:43:13 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Wed, 27 Mar 2019 16:43:14 GMT
EXPOSE 8080
# Wed, 27 Mar 2019 16:43:14 GMT
WORKDIR /plone/instance
# Wed, 27 Mar 2019 16:43:15 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 27 Mar 2019 16:43:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 16:43:16 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63d1875326ea01b337161773a8c8144b39e7062c9822874cc7be5836f1d4a96`  
		Last Modified: Wed, 27 Mar 2019 14:45:05 GMT  
		Size: 2.2 MB (2174384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a17cc4f3bc6d908944be470a3c1ed9d9be95b9b1043afa9b03c2f51d0c121b0`  
		Last Modified: Wed, 27 Mar 2019 14:45:09 GMT  
		Size: 16.1 MB (16061958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ad755dcfcca12d907e8442201df7dc71fe273603132827bb07d5ecdc956d6f`  
		Last Modified: Wed, 27 Mar 2019 14:45:05 GMT  
		Size: 2.1 MB (2092029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a0206ae3eba50eadb1e13132bf6948c46c59aff954ff564f65390ca90a71d2`  
		Last Modified: Wed, 27 Mar 2019 17:00:58 GMT  
		Size: 3.9 KB (3923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02bf23e51a0b53410e55a96ead657a3a4f459fc0ef4af261b1db8d4e6714f78`  
		Last Modified: Wed, 27 Mar 2019 17:00:58 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c44e68a001dcae8033a422421de958ad9c9e44dde9519d800c2cc471be32f91`  
		Last Modified: Wed, 27 Mar 2019 17:01:51 GMT  
		Size: 125.2 MB (125188219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ff705f58a484801bbc2eaa1a7570f343f2e84aaeb2e2fe496a677b8f80ad2d`  
		Last Modified: Wed, 27 Mar 2019 17:00:58 GMT  
		Size: 2.2 KB (2248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; arm64 variant v8

```console
$ docker pull plone@sha256:ab4c0e8e20c3603ed9f50f619c8648c86dd1e9a4e633b30d2daad23c8070bb9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167442892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc1be1d96252d4a4ce8cc62c30419684620ed0772e9b9ee3685586646128b894`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:55:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 12:55:44 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 14:12:39 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 14:13:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 14:13:07 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 14:13:08 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 14:24:53 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 14:24:54 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 14:25:54 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 14:25:57 GMT
CMD ["python2"]
# Thu, 28 Mar 2019 00:41:03 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.5 PLONE_MD5=8ed5ff27fab67b1b510a1ce0ee2dd655
# Thu, 28 Mar 2019 00:41:04 GMT
LABEL plone=5.1.5 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 28 Mar 2019 00:41:08 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 28 Mar 2019 00:41:09 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Thu, 28 Mar 2019 01:07:45 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 28 Mar 2019 01:07:48 GMT
VOLUME [/data]
# Thu, 28 Mar 2019 01:07:49 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Thu, 28 Mar 2019 01:07:50 GMT
EXPOSE 8080
# Thu, 28 Mar 2019 01:07:51 GMT
WORKDIR /plone/instance
# Thu, 28 Mar 2019 01:07:52 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 28 Mar 2019 01:07:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 01:07:55 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:774e45ee858584b9e2cf446520d125487b4cf66ca561464de01f29dd1d66ace6`  
		Last Modified: Wed, 27 Mar 2019 14:32:11 GMT  
		Size: 2.2 MB (2234690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ffe0c15e4e925ac2087b1946ffa859ad1f58183740d686615ddc6666877dec`  
		Last Modified: Wed, 27 Mar 2019 14:32:23 GMT  
		Size: 16.8 MB (16789613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f1129df5915bbdffd60ae1de536a5261aea0c21f483f02bb69fed978bb4a94`  
		Last Modified: Wed, 27 Mar 2019 14:32:11 GMT  
		Size: 2.1 MB (2092955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7535e14ab67e81b89671de9fd6ea889da460ca66bea745b6ffaef23ef8adb551`  
		Last Modified: Thu, 28 Mar 2019 01:42:22 GMT  
		Size: 3.9 KB (3890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205023edc8779f53a2ac67c19cb9cabd31e21988127a69b8316ca66b6b945140`  
		Last Modified: Thu, 28 Mar 2019 01:42:22 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f553fbef757f5d5ec752cc6049c8c2cf9adad0c67a89b62ac17f134ce2e81a`  
		Last Modified: Thu, 28 Mar 2019 01:43:20 GMT  
		Size: 126.0 MB (125978640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1084d8c3b8a0bf683f16f8bdefc81806fad177c89b521980ea71d251f364874b`  
		Last Modified: Thu, 28 Mar 2019 01:42:22 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; 386

```console
$ docker pull plone@sha256:4069af10a50d252ee0447f8b581c0812bb011dd50a15b8d642f143e870bc30d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.8 MB (173842081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67117073748da5bf317444cc299de5b192a06cd93a1c81eb309577a1bc2ad7a6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:26:15 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 16:26:16 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 17:23:52 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 17:24:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:24:00 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 17:24:01 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 17:26:37 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 17:26:37 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 17:26:50 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 17:26:51 GMT
CMD ["python2"]
# Thu, 28 Mar 2019 00:39:38 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.5 PLONE_MD5=8ed5ff27fab67b1b510a1ce0ee2dd655
# Thu, 28 Mar 2019 00:39:38 GMT
LABEL plone=5.1.5 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 28 Mar 2019 00:39:39 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Thu, 28 Mar 2019 00:39:40 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Thu, 28 Mar 2019 00:46:21 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Thu, 28 Mar 2019 00:46:22 GMT
VOLUME [/data]
# Thu, 28 Mar 2019 00:46:22 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Thu, 28 Mar 2019 00:46:23 GMT
EXPOSE 8080
# Thu, 28 Mar 2019 00:46:23 GMT
WORKDIR /plone/instance
# Thu, 28 Mar 2019 00:46:23 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Thu, 28 Mar 2019 00:46:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 00:46:23 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98df342c05845dec5106657e81ac388096c812f8c9998fb059ca6bced6bcbf6f`  
		Last Modified: Wed, 27 Mar 2019 17:49:59 GMT  
		Size: 2.5 MB (2529537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605ddd6e4d61a82589a30fdaab03628b6957a179d9c715239c1cc504cd57222e`  
		Last Modified: Wed, 27 Mar 2019 17:50:03 GMT  
		Size: 16.2 MB (16226049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8196fea03b19be82eee0bbddc7053c767ec71f937774bf10d381cf8822f0c6`  
		Last Modified: Wed, 27 Mar 2019 17:49:59 GMT  
		Size: 2.1 MB (2091978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8eb51b09491890578dc49af908ca77800955fd6dab94173384450fef1f5111`  
		Last Modified: Thu, 28 Mar 2019 00:55:26 GMT  
		Size: 3.9 KB (3877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abcbb4bf8e3939784fc79dfcea28ebec34cfaa34b8a0a53b3657f9772c8d22b9`  
		Last Modified: Thu, 28 Mar 2019 00:55:26 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19e7270db8ed84509bb40d5e9f2f973eaad427bc20c5d7947bcb0231510b367`  
		Last Modified: Thu, 28 Mar 2019 00:56:18 GMT  
		Size: 129.9 MB (129861973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a5022447984a825c77d8e8d5f794fc5d7f6295b5c93c450045df43b8f01ae3`  
		Last Modified: Thu, 28 Mar 2019 00:55:26 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `plone:latest` - linux; ppc64le

```console
$ docker pull plone@sha256:0adfc95b1bc5ecf2e7398fc97f01ad94a4651269a85e4f9eed849f552b16cfb7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.7 MB (171668016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:240548e8eba2cc078d1458d3226f8b6168c301bdcc5cc9c7b7924315ba2fe7d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:59:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 09:59:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 10:53:13 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 10:53:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:53:41 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 10:53:43 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 11:00:45 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 11:00:49 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 11:01:38 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 11:01:41 GMT
CMD ["python2"]
# Wed, 27 Mar 2019 15:40:36 GMT
ENV PIP=9.0.3 ZC_BUILDOUT=2.11.4 SETUPTOOLS=39.1.0 WHEEL=0.31.1 PLONE_MAJOR=5.1 PLONE_VERSION=5.1.5 PLONE_MD5=8ed5ff27fab67b1b510a1ce0ee2dd655
# Wed, 27 Mar 2019 15:40:42 GMT
LABEL plone=5.1.5 os=debian os.version=9 name=Plone 5.1 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 27 Mar 2019 15:40:56 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /plone/instance/ /data/filestorage /data/blobstorage
# Wed, 27 Mar 2019 15:40:58 GMT
COPY file:12338093a1d27fa629b11038d31d28e423ce756c053794ad128d7ee1c5450d1a in /plone/instance/ 
# Wed, 27 Mar 2019 16:02:52 GMT
RUN buildDeps="dpkg-dev gcc libbz2-dev libc6-dev libjpeg62-turbo-dev libopenjp2-7-dev libpcre3-dev libssl-dev libtiff5-dev libxml2-dev libxslt1-dev wget zlib1g-dev"  && runDeps="gosu libjpeg62 libopenjp2-7 libtiff5 libxml2 libxslt1.1 lynx netcat poppler-utils rsync wv"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/  && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg  && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT wheel==$WHEEL  && cd /plone/instance  && buildout  && ln -s /data/filestorage/ /plone/instance/var/filestorage  && ln -s /data/blobstorage /plone/instance/var/blobstorage  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*
# Wed, 27 Mar 2019 16:03:09 GMT
VOLUME [/data]
# Wed, 27 Mar 2019 16:03:12 GMT
COPY multi:487b875ba62639cac2b705e83960b192215962df9e0d5eda9e980c5bd348f2cf in / 
# Wed, 27 Mar 2019 16:03:14 GMT
EXPOSE 8080
# Wed, 27 Mar 2019 16:03:17 GMT
WORKDIR /plone/instance
# Wed, 27 Mar 2019 16:03:20 GMT
HEALTHCHECK &{["CMD-SHELL" "nc -z -w5 127.0.0.1 8080 || exit 1"] "1m0s" "5s" "1m0s" '\x00'}
# Wed, 27 Mar 2019 16:03:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Mar 2019 16:03:25 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ac5632a99b5dc734f1200bd8188520c8f7167d38c6fac94a4b27f5ea96f7ab`  
		Last Modified: Wed, 27 Mar 2019 11:07:18 GMT  
		Size: 2.2 MB (2189432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9a689f1ca2c231343ac258f1f15e256c5754997b6903369e003b7e113d595d`  
		Last Modified: Wed, 27 Mar 2019 11:07:20 GMT  
		Size: 17.2 MB (17209119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548ce4350ba40b94ab6f148a686a3e60d9bac166cde21d7410b5be730393591d`  
		Last Modified: Wed, 27 Mar 2019 11:07:18 GMT  
		Size: 2.1 MB (2093308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5291d3b2440b72a554a15934d5591c4a2684a5439693e6b6f4e68f9764f6a78e`  
		Last Modified: Wed, 27 Mar 2019 16:23:13 GMT  
		Size: 3.9 KB (3934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a251adf91a0d979c2a04a675b8053b2c7e52ac28a96177e72384a5b39db4f5fc`  
		Last Modified: Wed, 27 Mar 2019 16:23:15 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462c6f87a0fb036a217b834af8592ff271fb8234251bdd1372a8f0feecb194ef`  
		Last Modified: Wed, 27 Mar 2019 16:37:16 GMT  
		Size: 127.4 MB (127417912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e4faf58f1361ffbb74549691f48a8982d87d8baa707dfd3ae4a24e5c63bae1`  
		Last Modified: Wed, 27 Mar 2019 16:23:13 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
