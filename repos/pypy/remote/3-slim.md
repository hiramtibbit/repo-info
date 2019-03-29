## `pypy:3-slim`

```console
$ docker pull pypy@sha256:60401ab82e0cf2834005632217564e9d9efd69a3f5aeb06b11b1480b00b8f254
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `pypy:3-slim` - linux; amd64

```console
$ docker pull pypy@sha256:011046cf64f2fe3ca6676829b1bccb6c95b32f1c5323c774376a3aab54610a21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62537868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe5c0f6051f9ca2f0a1cc468691a0f24ef690f227453c56f99cfc0cf0c12e61a`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:34:12 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 08:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 29 Mar 2019 22:19:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 22:19:04 GMT
ENV PYPY_VERSION=7.0.0
# Fri, 29 Mar 2019 22:19:04 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 29 Mar 2019 22:19:44 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='729e3c54325969c98bd3658c6342b9f5987b96bad1d6def04250a08401b54c4b' ;; 		i386) pypyArch='linux32'; sha256='b8db8fbca9621de8ea8cd7184b322f2dddb2f385e8e5a63dfb75bb3fea4b2e3f' ;; 		ppc64el) pypyArch='ppc64le'; sha256='2912884da05abc2cdf71dd337c3f280095351312c1a1732a52b6878174a0fd02' ;; 		s390x) pypyArch='s390x'; sha256='d588b045cc0d3a75c31fce54c1d181b1206ad9a5dd272fe79160a6268401605f' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 		libncurses5 	; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3.5-v${PYPY_VERSION}-${pypyArch}.tar.bz2" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		if [ -f /usr/local/lib_pypy/_ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		cd /usr/local/lib_pypy; 		pypy3 _ssl_build.py; 	fi; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy3 --version; 	pip --version
# Fri, 29 Mar 2019 22:19:45 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44472dc38174944d92385be85cc1ddd4715ae329633ea968760a556b6e86a39e`  
		Last Modified: Fri, 29 Mar 2019 22:22:44 GMT  
		Size: 3.3 MB (3271657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415fcfc673ec018f282816022cbd41dcb319c8522b1caedc0269d8c63b0c7dbb`  
		Last Modified: Fri, 29 Mar 2019 22:22:53 GMT  
		Size: 36.8 MB (36770163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
