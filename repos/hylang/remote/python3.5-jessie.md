## `hylang:python3.5-jessie`

```console
$ docker pull hylang@sha256:f030fe227323918316c2bbce3bc560c38f92c12d5ce197b66ee29291b5334d84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `hylang:python3.5-jessie` - linux; amd64

```console
$ docker pull hylang@sha256:ad9c01e9b48fa35a45d5505380932c512544f6e6d3ad436e00b7195298882207
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (57027795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7b713559d41de09f26c9fc995295476bad71c0015d4384988fe699ab59f86ab`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 10 Jun 2019 23:22:27 GMT
ADD file:235722b778b32c4ad9bc76ade4c42a6d1f05bce216ef941c81113127682b0f8f in / 
# Mon, 10 Jun 2019 23:22:28 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 01:24:30 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 01:26:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:47:49 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 11 Jun 2019 01:47:49 GMT
ENV PYTHON_VERSION=3.5.7
# Tue, 11 Jun 2019 01:55:58 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Tue, 11 Jun 2019 01:56:00 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 11 Jun 2019 01:56:00 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 01:59:51 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 11 Jun 2019 01:59:51 GMT
CMD ["python3"]
# Tue, 11 Jun 2019 12:09:11 GMT
ENV HY_VERSION=0.17.0
# Tue, 11 Jun 2019 12:09:24 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Tue, 11 Jun 2019 12:09:25 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3ec709e8878b42cbd0833eeaf93930ca3cf04a1ee9faa5734114dabe3cd82bf9`  
		Last Modified: Mon, 10 Jun 2019 23:26:30 GMT  
		Size: 30.2 MB (30154031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d696a26708f94cccdb401bd199db4ea1ac084a775099ae83f5f71fcff0a6728`  
		Last Modified: Tue, 11 Jun 2019 02:25:23 GMT  
		Size: 2.2 MB (2215383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ae0ab63b6d8bc8004d66aca538f7ebde227994ed5ac17abcb05bab0593cc3c`  
		Last Modified: Tue, 11 Jun 2019 02:26:04 GMT  
		Size: 19.7 MB (19721400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92e5bf95ff29eb28e29bc555bbe4c2f5f6fc282bd6114571c87de465d05e561`  
		Last Modified: Tue, 11 Jun 2019 02:25:58 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4169ae688f80212260368cbb462b32e48f30d97f09a267dd7c2d907166760e5e`  
		Last Modified: Tue, 11 Jun 2019 02:25:58 GMT  
		Size: 2.1 MB (2125204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c4f39b188217a84710d702844f2e937d0008b220079bb492f5301c669d31af`  
		Last Modified: Tue, 11 Jun 2019 12:13:16 GMT  
		Size: 2.8 MB (2811536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.5-jessie` - linux; arm variant v5

```console
$ docker pull hylang@sha256:d925f573417fcf11ab6cb08504457a033184ff65e6eec913570843addb800ef8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54581484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ebef122aaf0aa8c932abb2a1fccd9c58b6ec90753167042efe48c1a1bfc156`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 08 May 2019 08:50:21 GMT
ADD file:324956f1f259bd99cf6108fbdb8fc733ce537d0b89ba31739395b1328bfb819f in / 
# Wed, 08 May 2019 08:50:22 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:08:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 09:08:36 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 09:09:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 09:20:13 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 08 May 2019 09:20:13 GMT
ENV PYTHON_VERSION=3.5.7
# Wed, 08 May 2019 09:24:30 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 08 May 2019 09:24:31 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 08 May 2019 09:24:32 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 09:26:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 08 May 2019 09:26:18 GMT
CMD ["python3"]
# Wed, 22 May 2019 22:50:03 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:50:15 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:50:15 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:1c07eeafb49b1794eef3297c027b386341a5b14d957a4e321aaa6d4ad6f42ea0`  
		Last Modified: Wed, 08 May 2019 08:57:05 GMT  
		Size: 28.5 MB (28459029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55acc740b2dc7579ddfa01b3e29596b0dec88a2d1faf39cb401e6c219c90c48`  
		Last Modified: Wed, 08 May 2019 09:42:52 GMT  
		Size: 2.0 MB (2018163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec9555f98eea0a8fa5c959218ce2be24076860f3c69ec4dae30c9d4e0e2f063`  
		Last Modified: Wed, 08 May 2019 09:43:40 GMT  
		Size: 19.2 MB (19167141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c60f20f323aa61337c6692f6d8641ae58661a7f663f2f7937601925042136ec`  
		Last Modified: Wed, 08 May 2019 09:43:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbfa7cfb07cd104c0fd133ecbedf3c7747a267a6a030d640efa24b577c9fc5f5`  
		Last Modified: Wed, 08 May 2019 09:43:33 GMT  
		Size: 2.1 MB (2124750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda1202e1886a1214196ea3f23db27eb736efda4d046bb51cc5f34f3629c9019`  
		Last Modified: Wed, 22 May 2019 22:51:58 GMT  
		Size: 2.8 MB (2812161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.5-jessie` - linux; arm variant v7

```console
$ docker pull hylang@sha256:1b10364ab443278683405f48827fa9b1bec41a173d327f3e06a3f2a4e5e1c8b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.0 MB (51983075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb89bb5fc36513a12bdf3971cc28b5175fff63b867e3f2aee9fd33954f92520`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 08 May 2019 12:00:01 GMT
ADD file:bb152e954677aa990a56cf43a95243715ae81fc63067d4c1dd692e140bc80d36 in / 
# Wed, 08 May 2019 12:00:04 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:12:12 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:12:12 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 13:13:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:28:08 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 08 May 2019 13:28:08 GMT
ENV PYTHON_VERSION=3.5.7
# Wed, 08 May 2019 13:32:23 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 08 May 2019 13:32:25 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 08 May 2019 13:32:25 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 13:34:09 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 08 May 2019 13:34:10 GMT
CMD ["python3"]
# Wed, 22 May 2019 22:59:16 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:59:29 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:59:29 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e087398f59c8258df1419a1dab97ac7f54b57bb151a24b88dc99be00bc7546bf`  
		Last Modified: Wed, 08 May 2019 12:07:40 GMT  
		Size: 26.3 MB (26308224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc411128d57babc9d06087de04e152094494dca642a7d2539652ee41cde83178`  
		Last Modified: Wed, 08 May 2019 13:59:40 GMT  
		Size: 1.9 MB (1942830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90569033f60addd0a312054014547d45897dba40c0e97282d80e16b857306526`  
		Last Modified: Wed, 08 May 2019 14:01:01 GMT  
		Size: 18.8 MB (18794984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9281cc6d65d31facedb009d16dbd6b4820560496566b418299759bd7e8a832c5`  
		Last Modified: Wed, 08 May 2019 14:00:53 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7120f1ac409e192f91bf783b2a8d1da94d991a92dcf01a23df0229c47c9d13`  
		Last Modified: Wed, 08 May 2019 14:00:55 GMT  
		Size: 2.1 MB (2124757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a105112365e6cc455ce2ebb85fd76e99a2a56ec94fd896c7e5d8d65ea06c59a9`  
		Last Modified: Wed, 22 May 2019 23:02:50 GMT  
		Size: 2.8 MB (2812040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.5-jessie` - linux; 386

```console
$ docker pull hylang@sha256:e5288a8e184dfb9ed3c6542cf4e0086422b4d57b4a1e1d72d488c9d4e5d7b64d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57807551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb9743032bc51f0bea48b8880964edf0d0d9f48b1d8a60e2ffbebd3ae8250da3`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 08 May 2019 10:43:09 GMT
ADD file:36912bcf0cabb99f7c34c1ef9281884de54d7c93fa512d2dc869584a3fd48bc4 in / 
# Wed, 08 May 2019 10:43:09 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:29:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 14:29:40 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 15:26:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 15:47:35 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 08 May 2019 15:47:35 GMT
ENV PYTHON_VERSION=3.5.7
# Wed, 08 May 2019 15:57:13 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 08 May 2019 15:57:14 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 08 May 2019 15:57:14 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 16:02:39 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 08 May 2019 16:02:39 GMT
CMD ["python3"]
# Wed, 22 May 2019 22:40:16 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:40:23 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:40:24 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:869527f326197631fcfd0ac41c8ce8837a469221bd968469b3ec80cba4d4a5b1`  
		Last Modified: Wed, 08 May 2019 10:54:26 GMT  
		Size: 30.3 MB (30299450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d96475b7cac61cdd4c23e46e886348de6a877933ae8f480c01354575835f190`  
		Last Modified: Wed, 08 May 2019 16:26:28 GMT  
		Size: 4.3 MB (4282306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53701827a8c097f17b1ceef8183fbe43ef83c6a78327bb746d15ee3929082679`  
		Last Modified: Wed, 08 May 2019 16:27:13 GMT  
		Size: 18.3 MB (18289444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7aa8c4b6bd0d267e7c3b88379b22dcd37ad7770b46cbf426e25135982154c0`  
		Last Modified: Wed, 08 May 2019 16:27:09 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5ece5924c07b52a603707aa979b24f4f7bdcfdb690f05d6134d4903f100cff`  
		Last Modified: Wed, 08 May 2019 16:27:09 GMT  
		Size: 2.1 MB (2124915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685e9d092f2a00f7a0aa687dc202539d030f255b54b1ec1be164b3d29d3f849c`  
		Last Modified: Wed, 22 May 2019 22:43:42 GMT  
		Size: 2.8 MB (2811196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
