## `pypy:3-slim`

```console
$ docker pull pypy@sha256:75e587b950326b7bc5b13d9fee148ad80c9620e1582e27c50f28c42aaed67175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-slim` - linux; amd64

```console
$ docker pull pypy@sha256:403664b59ba336444e51d0136ff7ac757d6d366c45faa0d520e5af49ac440b63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66455572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb21ed4e07a9b63b2428b2838b6e548a3f32e1cf817ee54b0fa9f0cbb9d712d8`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:11:31 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 06:11:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:16:45 GMT
ENV PYPY_VERSION=5.10.1
# Thu, 15 Feb 2018 06:16:45 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 06:17:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 06:17:16 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b61e5722374388c2728810d98e2dc53efdcd51837fb47b62c85007384dc708`  
		Last Modified: Thu, 15 Feb 2018 06:17:37 GMT  
		Size: 2.9 MB (2859641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19680953dc48d84a0299a42ee0bf4eb551cd30ea1f87b55a13d0617abe83a64`  
		Last Modified: Thu, 15 Feb 2018 06:26:32 GMT  
		Size: 33.5 MB (33473552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-slim` - linux; arm variant v5

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

### `pypy:3-slim` - linux; 386

```console
$ docker pull pypy@sha256:75c5b6a16406f37516e7fcaf92f8a46a89ee1a178e447709f7d98990125f7600
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65926702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c577fc77adc66ad13bcd471ee081ee03df04502b42366b919e1cc48222aad22e`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:02:21 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 22:02:22 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 22:08:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 16:22:25 GMT
ENV PYPY_VERSION=5.10.1
# Tue, 16 Jan 2018 16:22:25 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 16 Jan 2018 16:23:22 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Jan 2018 16:23:23 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846baa5afdbb2caec4218e67e02a9b0793718ada3ec4d2a8c4d9ebe7c73c0713`  
		Last Modified: Tue, 12 Dec 2017 22:13:37 GMT  
		Size: 5.0 MB (4957755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1228cf38c6cd56a8f8aa182089e0f4a66b4fb533533602e4ac61517d1bee965c`  
		Last Modified: Tue, 16 Jan 2018 17:41:31 GMT  
		Size: 30.7 MB (30702690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
