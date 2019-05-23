## `hylang:0-pypy2.7-jessie`

```console
$ docker pull hylang@sha256:4c4ffb8383f7ea997ad675258c46bc80a5a3beae5d7b4436934dc6c9eb6a8931
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `hylang:0-pypy2.7-jessie` - linux; amd64

```console
$ docker pull hylang@sha256:eca4ecf09f09671a585d521b9f67f96d6c02306f87f498bda97ecdc8d00ad12a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.1 MB (64130862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d61785c6fa329b97dd73d066333d7da94ba56de332addadf29a44987d36e7c92`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 08 May 2019 00:30:43 GMT
ADD file:2a97e6ac5eb5fead96f0d2bf3dc1f8732ff2a912450eb7d01a5f81731f66c2b6 in / 
# Wed, 08 May 2019 00:30:43 GMT
CMD ["bash"]
# Wed, 08 May 2019 00:30:45 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 00:30:45 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:58:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:58:05 GMT
ENV PYPY_VERSION=7.1.1
# Wed, 08 May 2019 05:58:05 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 06:01:28 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='73b09ef0860eb9ad7997af3030b22909806a273d90786d78420926df53279d66' ;; 		i386) pypyArch='linux32'; sha256='41ca390a76ca0d47b8353a0d6a20d5aab5fad8b0bb647b960d8c33e873d18ef5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 		libncurses5 	; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2.7-v${PYPY_VERSION}-${pypyArch}.tar.bz2" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		if [ -f /usr/local/lib_pypy/_ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		cd /usr/local/lib_pypy; 		pypy _ssl_build.py; 	fi; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 	pip --version
# Wed, 08 May 2019 06:01:29 GMT
CMD ["pypy"]
# Wed, 22 May 2019 22:25:56 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:26:02 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:26:02 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:80e253c906dee8d7b26d7dafa4166149c57cb763d43ba6d483710370c32da5cd`  
		Last Modified: Wed, 08 May 2019 00:36:18 GMT  
		Size: 30.2 MB (30154060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15632c7bdc2a72872d6d994152ddc5d98b3442b14c5463e81da36fddaf38f`  
		Last Modified: Wed, 08 May 2019 06:05:47 GMT  
		Size: 2.8 MB (2811575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6392aa80d28404f2da2e6ff6ae172d3e11c74dfa30be22f367a81b917b33ea2`  
		Last Modified: Wed, 08 May 2019 06:05:54 GMT  
		Size: 30.8 MB (30787761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122ce734d03e8c067eb91aa807fc86d37d89e49882d0971d9b2c51c05b61bc51`  
		Last Modified: Wed, 22 May 2019 22:28:39 GMT  
		Size: 377.5 KB (377466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
