## `hylang:pypy2.7-jessie`

```console
$ docker pull hylang@sha256:96a35473ee3e932763b5cb5598df54b5edcf58b6cfbdd3dc0a73b18dd7ab206a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `hylang:pypy2.7-jessie` - linux; amd64

```console
$ docker pull hylang@sha256:396842a6c2a1d5bd87e19f316e8568f24d71da2c468b45940ddc68cdbd822626
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.1 MB (64131143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:929c83cd7d410135a6b6a8fd714df279dfdb68b939679ce176d2f0e302f373b9`
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
# Tue, 11 Jun 2019 07:03:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:03:19 GMT
ENV PYPY_VERSION=7.1.1
# Tue, 11 Jun 2019 07:03:19 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 07:08:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='73b09ef0860eb9ad7997af3030b22909806a273d90786d78420926df53279d66' ;; 		i386) pypyArch='linux32'; sha256='41ca390a76ca0d47b8353a0d6a20d5aab5fad8b0bb647b960d8c33e873d18ef5' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		wget 		libncurses5 	; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2.7-v${PYPY_VERSION}-${pypyArch}.tar.bz2" --progress=dot:giga; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		if [ -f /usr/local/lib_pypy/_ssl_build.py ]; then 		apt-get install -y --no-install-recommends gcc libc6-dev libssl-dev; 		cd /usr/local/lib_pypy; 		pypy _ssl_build.py; 	fi; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	pypy --version; 	pip --version
# Tue, 11 Jun 2019 07:08:06 GMT
CMD ["pypy"]
# Tue, 11 Jun 2019 12:11:02 GMT
ENV HY_VERSION=0.17.0
# Tue, 11 Jun 2019 12:11:11 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Tue, 11 Jun 2019 12:11:12 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3ec709e8878b42cbd0833eeaf93930ca3cf04a1ee9faa5734114dabe3cd82bf9`  
		Last Modified: Mon, 10 Jun 2019 23:26:30 GMT  
		Size: 30.2 MB (30154031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94ba31f1a2c9abf790bbfabd8428d2b78f44a1149459ddc4e79a19d4bb0d8d3`  
		Last Modified: Tue, 11 Jun 2019 07:14:32 GMT  
		Size: 2.8 MB (2811779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8328b250e9f96efa83df55b5dc1d66172a9d4348babe64735f88e952508eed8`  
		Last Modified: Tue, 11 Jun 2019 07:14:44 GMT  
		Size: 30.8 MB (30787898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf089bbac22a32cd421d1d58cf1d6569ca74b1f2198c6d747e053dff5ec22f8`  
		Last Modified: Tue, 11 Jun 2019 12:14:00 GMT  
		Size: 377.4 KB (377435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
