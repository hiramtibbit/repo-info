## `pypy:2-5-slim`

```console
$ docker pull pypy@sha256:9ef65c7d3f755ee282188e17fdeecb0b00e0495b9c7f52118bf2a440d67f5089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-5-slim` - linux; amd64

```console
$ docker pull pypy@sha256:9f9a63216e678d5e739803670e4e7eaeb7fcaf3a714aee193a1e61cb3a8c13c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65772230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d53de3cf2cb17a55f3bb48cf1b483ff6540b3117e16ddb3586efe45663483a`
-	Default Command: `["pypy"]`

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
# Thu, 15 Feb 2018 06:11:52 GMT
ENV PYPY_VERSION=5.10.0
# Thu, 15 Feb 2018 06:11:53 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 06:12:22 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 06:12:22 GMT
CMD ["pypy"]
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
	-	`sha256:0ecbaaec6f2a329f5291aa1bd0b7955d70921e9890ca00984d9fcec45495fc4e`  
		Last Modified: Thu, 15 Feb 2018 06:17:43 GMT  
		Size: 32.8 MB (32790210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:02582c8b77dee9d7769ea403d3202aeb04e622dc183be619b657629dedd00ae0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61805743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475ab4937783faeb6f3b4c7a4d68710ea61224d811e01648aff53661990a3e97`
-	Default Command: `["pypy"]`

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
# Thu, 15 Feb 2018 22:26:41 GMT
ENV PYPY_VERSION=5.10.0
# Thu, 15 Feb 2018 22:26:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:27:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:27:55 GMT
CMD ["pypy"]
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
	-	`sha256:c1d199008c3934cfada56a3c064262268ff27dec807a0b3c95afdca3716f0ebc`  
		Last Modified: Thu, 15 Feb 2018 22:32:12 GMT  
		Size: 30.8 MB (30766879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5-slim` - linux; 386

```console
$ docker pull pypy@sha256:4c308f951878d6dcd871bf617f27b54f6dcd911c3435f3e0e0aaf94f57ac06ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64742309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d8346927651b7a18bac4e30b70569ba4f8580144c38a297819c441c1fb60e9`
-	Default Command: `["pypy"]`

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
# Wed, 21 Feb 2018 02:25:25 GMT
ENV PYPY_VERSION=5.10.0
# Wed, 21 Feb 2018 02:25:25 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 21 Feb 2018 02:26:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Feb 2018 02:26:26 GMT
CMD ["pypy"]
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
	-	`sha256:6a60ab5dcc15a2091b3c8122ca4973bcc3361e0e45fee42cbb19991658c7d1c8`  
		Last Modified: Wed, 21 Feb 2018 02:49:38 GMT  
		Size: 29.5 MB (29511323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
