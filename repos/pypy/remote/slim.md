## `pypy:slim`

```console
$ docker pull pypy@sha256:2741c876a736bd2f497e9e447941fef59392b531cd162f49f9713e315803130c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:slim` - linux; amd64

```console
$ docker pull pypy@sha256:fe0b4af51d52dbcceae6615b485d3ea00e6b344baca9eb5ffafde3b15d0b510f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63280300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a51612b54fb246de5045b8ebfb97be77dccc3d01b8b7722bf8d451e39963ee4`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 04:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:01:53 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 29 Dec 2018 04:01:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 04:08:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 04:08:18 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca598cb320fb755ae0443d3781a99d509098dab1b1831ba5961e23291e5f750`  
		Last Modified: Sat, 29 Dec 2018 04:09:16 GMT  
		Size: 2.8 MB (2811478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9ae72cb2b71730129d7c3a16de437e690c683f8ebe217b7f9aa06b7c99c98d`  
		Last Modified: Sat, 29 Dec 2018 04:09:57 GMT  
		Size: 30.3 MB (30314869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:9a03f5c5186e2218a8857d43b3d8aee00226cefcfa2139d96a8ea1135e972603
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59547991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7a046fe0d162cd8c49e907614cd4807af506a9aace1fdd1372dd1bcc612d03`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 14:28:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:28:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f1086e4b1a4a6f6675743b3b0931471247d8aed4e05fcb5ee62cca3a9b5ce`  
		Last Modified: Wed, 23 Jan 2019 14:29:51 GMT  
		Size: 2.6 MB (2563377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b17a27a3e4a2d037477a83f491d58ea4f93dc667685fbdcc80c2d227f6da488`  
		Last Modified: Wed, 23 Jan 2019 14:30:54 GMT  
		Size: 28.5 MB (28525326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:slim` - linux; 386

```console
$ docker pull pypy@sha256:d975a019ee6d6aa44f59d55ba4fcf5b8340cc110853ada6447da0350a5e60a61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63201966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74779069e3039862700cd492ac1503e524732f5eda22545a2b4e584465277581`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:30:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:39:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 17:39:03 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beab62285670d4f11fe161612872e8b2cb371a54309f8859c6011d71c5cec5f`  
		Last Modified: Wed, 23 Jan 2019 17:39:43 GMT  
		Size: 4.9 MB (4918269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7c4fc32096b51d19f2d53df33abacab66352a20679a153ab30903a30a3d19a`  
		Last Modified: Wed, 23 Jan 2019 17:40:26 GMT  
		Size: 28.0 MB (27990088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
