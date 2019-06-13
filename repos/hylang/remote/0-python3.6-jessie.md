## `hylang:0-python3.6-jessie`

```console
$ docker pull hylang@sha256:4929d4f78d3ed10bbfd39570da156254dbc364944b42fb2b36451a77be6da8dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `hylang:0-python3.6-jessie` - linux; amd64

```console
$ docker pull hylang@sha256:dc16004b21dfebda76ecacab54f7b7040441e0cb803b6d2747105ec531a7fe2a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 MB (57906826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e11a67af75408e9cd8534f1e6b1f01fff6eb68c28a77d1ddbc402c6c34f11d69`
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
# Tue, 11 Jun 2019 01:26:38 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 11 Jun 2019 01:26:39 GMT
ENV PYTHON_VERSION=3.6.8
# Tue, 11 Jun 2019 01:34:53 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Tue, 11 Jun 2019 01:34:54 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 11 Jun 2019 01:34:54 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 01:38:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 11 Jun 2019 01:38:24 GMT
CMD ["python3"]
# Tue, 11 Jun 2019 12:08:37 GMT
ENV HY_VERSION=0.17.0
# Tue, 11 Jun 2019 12:08:44 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Tue, 11 Jun 2019 12:08:45 GMT
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
	-	`sha256:bcc07c63d4bcc73bd45d3aece9d7d73cb4be4128c1f810c4e2b829afd3f2fd9b`  
		Last Modified: Tue, 11 Jun 2019 02:25:28 GMT  
		Size: 20.7 MB (20681911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b651e63065cf9a4148fe581654c021adbb450e65b22f82121a99a06117dee3`  
		Last Modified: Tue, 11 Jun 2019 02:25:22 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01307c7ed301996124465e91fdae1370444e14a9f3625ad5dee6d915cc187140`  
		Last Modified: Tue, 11 Jun 2019 02:25:23 GMT  
		Size: 2.1 MB (2125654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a28bf5ef257c064de217092c05bb32a6fee4ced004d28d40c07424b66b9da32`  
		Last Modified: Tue, 11 Jun 2019 12:12:58 GMT  
		Size: 2.7 MB (2729609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python3.6-jessie` - linux; arm variant v5

```console
$ docker pull hylang@sha256:40190f5e87801c7145d3f59bcb8087463cbf84df6b12a99b7025f472d593c636
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55397244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9db925108c553943e8140c71606f323205d5a966d3411bee06fa1c8ccddc5276`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 10 Jun 2019 23:50:19 GMT
ADD file:6d0c19e7736178829ad3befa94f11a75322da6417be5c97823d9af5a02b85d11 in / 
# Mon, 10 Jun 2019 23:50:20 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:11:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 03:11:08 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 03:12:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:12:18 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 11 Jun 2019 03:12:19 GMT
ENV PYTHON_VERSION=3.6.8
# Tue, 11 Jun 2019 03:16:58 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Tue, 11 Jun 2019 03:17:01 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 11 Jun 2019 03:17:01 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 03:18:54 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 11 Jun 2019 03:18:54 GMT
CMD ["python3"]
# Thu, 13 Jun 2019 01:22:30 GMT
ENV HY_VERSION=0.17.0
# Thu, 13 Jun 2019 01:22:44 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Thu, 13 Jun 2019 01:22:45 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:9dde9221113107a9cace4c8772f5d1d747a762e1190ea8325a33f91c84734c26`  
		Last Modified: Mon, 10 Jun 2019 23:57:04 GMT  
		Size: 28.5 MB (28459066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e17269f3fd2b2b0be59b7433b07cd85476f4b8232218f19a3d38bdc6747c14`  
		Last Modified: Tue, 11 Jun 2019 05:02:51 GMT  
		Size: 2.0 MB (2018187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290a7fd72340ea064e447b17b4dd063b0d1744f5049a661efef6f5178a3b287`  
		Last Modified: Tue, 11 Jun 2019 05:02:57 GMT  
		Size: 20.1 MB (20063986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fb5db056efa2d6db24cd7b7f74d8e566aa1fab65a9d69de039748582393cc3`  
		Last Modified: Tue, 11 Jun 2019 05:02:50 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe33f211d9de170165c2040481a03bc5382f78b307dd910b08379af84b4adc80`  
		Last Modified: Tue, 11 Jun 2019 05:02:51 GMT  
		Size: 2.1 MB (2125367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6c60245fdfc46ea9aa6144bcd55ce001b67a8fcac5b1905c90fefcadca70ac`  
		Last Modified: Thu, 13 Jun 2019 01:25:12 GMT  
		Size: 2.7 MB (2730397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python3.6-jessie` - linux; arm variant v7

```console
$ docker pull hylang@sha256:9df1d19d910fd514ee285ef3e41ca648fa2c40bc0ce1089fa18ef65cdec0c8e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52657639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb043c88e84eb21c17ed26ec84e506dc16fd051046d5ce6bfaffe49000ff1077`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 10 Jun 2019 23:59:19 GMT
ADD file:553e792da1bb0d1b64563abeafb2edf3966d76658be53a9c52f5bfa1a15c1511 in / 
# Mon, 10 Jun 2019 23:59:20 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:39:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 03:39:14 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 03:40:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:40:28 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 11 Jun 2019 03:40:28 GMT
ENV PYTHON_VERSION=3.6.8
# Tue, 11 Jun 2019 03:45:03 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Tue, 11 Jun 2019 03:45:05 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 11 Jun 2019 03:45:06 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 03:46:52 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 11 Jun 2019 03:46:53 GMT
CMD ["python3"]
# Thu, 13 Jun 2019 03:05:42 GMT
ENV HY_VERSION=0.17.0
# Thu, 13 Jun 2019 03:05:54 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Thu, 13 Jun 2019 03:05:54 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b8ae20fff38199dbe7d7ef5454440884f543a819de8130e8d067022642b6011c`  
		Last Modified: Tue, 11 Jun 2019 00:06:59 GMT  
		Size: 26.3 MB (26308327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d795ff2ec2a40554ef96caeb0e6b394c8c6ebfd85452fafb33c2a668f5d93f14`  
		Last Modified: Thu, 13 Jun 2019 00:30:31 GMT  
		Size: 1.9 MB (1942819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe2b6e5bb5cc295754e50743e9d1ef6f1b14717e6403a5eba358aa2f2e89c4c`  
		Last Modified: Thu, 13 Jun 2019 02:59:37 GMT  
		Size: 19.6 MB (19550530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9256805f31555e36bf79e6d63371dd35c68b102de6eceeb5030a1eb5bd65aa`  
		Last Modified: Thu, 13 Jun 2019 02:59:29 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c0237c4577f85e141f837346c1519ca67fb48eca8d86701436e2fabae97965`  
		Last Modified: Thu, 13 Jun 2019 02:59:31 GMT  
		Size: 2.1 MB (2125421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d5d66952361db8325d7fa40038a6bded2e057bc8866b8fbbc17a5fcd35a2ef`  
		Last Modified: Thu, 13 Jun 2019 03:08:41 GMT  
		Size: 2.7 MB (2730304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python3.6-jessie` - linux; 386

```console
$ docker pull hylang@sha256:c7b8b56c312462a9765288df05a10960627b062deef29444a90e64d39e9e924a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58479456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cebeec47e0784d3cc89e8ddd552990c162dc168db769d03e071c05ce7b8c5b2b`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 10 Jun 2019 23:39:45 GMT
ADD file:9b8a9dfad73fe7a01576e1f84ef01680fcb8a1708ac6efa450edc2958ab3ddb8 in / 
# Mon, 10 Jun 2019 23:39:45 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:54:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 03:54:42 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 03:57:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:57:54 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 11 Jun 2019 03:57:55 GMT
ENV PYTHON_VERSION=3.6.8
# Tue, 11 Jun 2019 04:07:30 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Tue, 11 Jun 2019 04:07:32 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 11 Jun 2019 04:07:32 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 04:13:02 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 11 Jun 2019 04:13:03 GMT
CMD ["python3"]
# Tue, 11 Jun 2019 16:55:06 GMT
ENV HY_VERSION=0.17.0
# Tue, 11 Jun 2019 16:55:20 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Tue, 11 Jun 2019 16:55:20 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5d0f6afe901e3a0b5c4ec212a2c27c5df643d387ddffa02558a099c347ad0003`  
		Last Modified: Mon, 10 Jun 2019 23:43:50 GMT  
		Size: 30.3 MB (30299527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb8f011c6a4ae608d7aeb28ec4a003bce1e370c13e5bf95c3dd69aefb058e46`  
		Last Modified: Tue, 11 Jun 2019 05:17:13 GMT  
		Size: 4.3 MB (4282326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d0aef080ddcd83d0605eddccfec5e62814314393148fc84d5b243f000a9fc3`  
		Last Modified: Tue, 11 Jun 2019 05:17:23 GMT  
		Size: 19.0 MB (19042184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6245f194b735faf09a4d3ad596738f4db9ec54c8acf7d9503e721e694c9ca9`  
		Last Modified: Tue, 11 Jun 2019 05:17:10 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5ce527457ff5534f12349180c1f4f489e2ba7785e82c988569936034a50004`  
		Last Modified: Tue, 11 Jun 2019 05:17:13 GMT  
		Size: 2.1 MB (2125392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52af89a404291b9c1adce5bd137c570b7ecd70f3935100cdeba05691054a0c87`  
		Last Modified: Tue, 11 Jun 2019 17:00:21 GMT  
		Size: 2.7 MB (2729787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
