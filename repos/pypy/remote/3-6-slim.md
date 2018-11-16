## `pypy:3-6-slim`

```console
$ docker pull pypy@sha256:3d6d83f4982798e1829b28f7ab008b785a778b17dd7712acafae12b01366399a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6-slim` - linux; amd64

```console
$ docker pull pypy@sha256:bbe1a90385e2a8c86fd9e9d21829df422032446077aeebc9b839c07ea2a720c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63255687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1bbb2152ef4f440d24dc5700c27c577640f5b763d242996c1ee6a261751b79`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 06:45:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 06:45:34 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:25:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:25:15 GMT
ENV PYPY_VERSION=6.0.0
# Fri, 16 Nov 2018 16:25:15 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 16:28:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 16:28:39 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8b7825b5005c0b4031ddfabeebf36beb302c8be5a56aab575e34efa83d80a9`  
		Last Modified: Fri, 16 Nov 2018 16:32:44 GMT  
		Size: 2.8 MB (2811094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca795003f17a8fb2f953fa554b0505ff61953e8c2a2d9a45c78eda09795e0301`  
		Last Modified: Fri, 16 Nov 2018 16:39:44 GMT  
		Size: 30.3 MB (30315136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:4ec8403db39067061daa597fb84461819882a766fef0274b6f5b288b358cd80f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59527558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54912f508b24af49710f55b45026b7ed3c27c529a9722b5f230af3ead2b99ee4`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 16 Nov 2018 09:51:23 GMT
ADD file:9ac898339cba260ad76a4387ca44eb463c4686a835b644c946bf729bdd99c9a0 in / 
# Fri, 16 Nov 2018 09:51:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:59:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 14:59:34 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 19:00:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:00:08 GMT
ENV PYPY_VERSION=6.0.0
# Fri, 16 Nov 2018 19:00:08 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 19:05:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Nov 2018 19:05:13 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8e25b1f277cb004ed8d464c873f7b23f682ecb0449ae26255e5683c8117c03cf`  
		Last Modified: Fri, 16 Nov 2018 10:06:38 GMT  
		Size: 28.4 MB (28439693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44c100e0b46d82e561a508a360dd7805a0c1af27b4960439230d5f4b9d82d35`  
		Last Modified: Fri, 16 Nov 2018 19:08:07 GMT  
		Size: 2.6 MB (2561997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05870a800702ae6360e0d4d5f15e94fb82af90fe8a2d0ffa00332d5eb1d6d4d3`  
		Last Modified: Fri, 16 Nov 2018 19:14:13 GMT  
		Size: 28.5 MB (28525868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6-slim` - linux; 386

```console
$ docker pull pypy@sha256:9f0b3031da85b388b4942a5453e3c3f246b1660e4e726ca6b89e8ae1e911ef19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63164056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a404a1d2ff66592f93aa2c9249aeaf748540097d80c08b7f109072977a897b51`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 23:14:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 23:14:43 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 23:15:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 23:15:18 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 16 Oct 2018 23:15:18 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 16 Oct 2018 23:17:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 16 Oct 2018 23:17:48 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c949561bdee6c4cf7a7d32021188de3944667ffe6715e2d49344c0732249b5`  
		Last Modified: Tue, 16 Oct 2018 23:19:22 GMT  
		Size: 4.9 MB (4912313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75fcb659fa8a0c7c1a12ffebda632bdb0358308c44d8e5113222037c7ba43534`  
		Last Modified: Tue, 16 Oct 2018 23:22:17 GMT  
		Size: 28.0 MB (27981711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
