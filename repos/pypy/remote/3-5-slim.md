## `pypy:3-5-slim`

```console
$ docker pull pypy@sha256:a91173982b0f201f393a39fbb43265af6930891f3f12f80331864bceeb615e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-5-slim` - linux; amd64

```console
$ docker pull pypy@sha256:059035a1be653db2758d7eb0fdb83f94a9e11c071906f47592492488d1c954d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66456369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9e13e097b0d51b128ae09f902e40b277cca867df235e3c0c63d94a806abfab`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:08:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 17:08:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 17:08:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 17:13:02 GMT
ENV PYPY_VERSION=5.10.1
# Wed, 14 Mar 2018 17:13:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Mar 2018 17:13:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 17:13:42 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169b113f0fd195b3b722c17cb4eb4007ee4d27565e349b08152feb4a062c4e4`  
		Last Modified: Wed, 14 Mar 2018 17:15:33 GMT  
		Size: 2.9 MB (2859539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f31c4ed41a8aeab81903c27731ecb375673041673ad1e849cbe5902556c3684`  
		Last Modified: Wed, 14 Mar 2018 17:18:34 GMT  
		Size: 33.5 MB (33474428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-5-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:ec9beddcc1cd463b2ec60a55cbae7cd58d2371a8f197b9acb9edada7746ece51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62747593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1c60ae7c8abee786243aebc15cf5e204a308fd080363538969ae164437d0bb`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 20:56:30 GMT
ADD file:7590562c1d62ac7d305af7caf8771e09bcbf6d396e4d8d2b66d878327b4d3f52 in / 
# Thu, 15 Feb 2018 20:56:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:26:03 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:26:03 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:26:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:29:02 GMT
ENV PYPY_VERSION=5.10.1
# Thu, 15 Feb 2018 22:29:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:30:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:30:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:74273dae7ee101471a164eb562356e7b2e60d34be2b15b077b6dae6a9aa063ec`  
		Last Modified: Thu, 15 Feb 2018 21:05:26 GMT  
		Size: 28.4 MB (28430874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf26de43f681a5cf6f3be6e38ca95cb0f9bb0ed6fc82fe8a5596f82741919c1a`  
		Last Modified: Thu, 15 Feb 2018 22:32:01 GMT  
		Size: 2.6 MB (2607990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0667fcb389db612e1381f8bd910ef2069bcc63efe4754e841ebeb82c7f251f0d`  
		Last Modified: Thu, 15 Feb 2018 22:33:57 GMT  
		Size: 31.7 MB (31708729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-5-slim` - linux; 386

```console
$ docker pull pypy@sha256:7cd5e173a063b330b815f944f058f3d17a342cc48784a9b4c52266176124c823
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65933853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c179daab6edd87704a435d77cc9f93306513291b012650de86d224653d94fc6e`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Mon, 19 Feb 2018 18:58:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Feb 2018 18:58:50 GMT
ENV LANG=C.UTF-8
# Wed, 21 Feb 2018 02:25:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 02:42:55 GMT
ENV PYPY_VERSION=5.10.1
# Wed, 21 Feb 2018 02:42:55 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 21 Feb 2018 02:43:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Feb 2018 02:43:55 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10dfbfa132919f23984f266d5a8e6b83b62f425e2de7f21a98ea6911261eea51`  
		Last Modified: Wed, 21 Feb 2018 02:49:23 GMT  
		Size: 5.0 MB (4957788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697879d83c1cdcf19d293d06c1cddc1deb95ee285d380a8eb05158784d99e1bb`  
		Last Modified: Wed, 21 Feb 2018 02:55:43 GMT  
		Size: 30.7 MB (30702867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
