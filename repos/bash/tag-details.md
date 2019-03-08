<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bash`

-	[`bash:3`](#bash3)
-	[`bash:3.0`](#bash30)
-	[`bash:3.0.22`](#bash3022)
-	[`bash:3.1`](#bash31)
-	[`bash:3.1.23`](#bash3123)
-	[`bash:3.2`](#bash32)
-	[`bash:3.2.57`](#bash3257)
-	[`bash:4`](#bash4)
-	[`bash:4.0`](#bash40)
-	[`bash:4.0.44`](#bash4044)
-	[`bash:4.1`](#bash41)
-	[`bash:4.1.17`](#bash4117)
-	[`bash:4.2`](#bash42)
-	[`bash:4.2.53`](#bash4253)
-	[`bash:4.3`](#bash43)
-	[`bash:4.3.48`](#bash4348)
-	[`bash:4.4`](#bash44)
-	[`bash:4.4.23`](#bash4423)
-	[`bash:5`](#bash5)
-	[`bash:5.0`](#bash50)
-	[`bash:5.0.2`](#bash502)
-	[`bash:latest`](#bashlatest)

## `bash:3`

```console
$ docker pull bash@sha256:b6b2ce7aa757800563445a2c5bba2bc43e64d24782bd9d8ab410d415a4aca700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:3` - linux; amd64

```console
$ docker pull bash@sha256:1fc2134f72c243bd0433c219659d55ff0b78564c520837bcde5435fc8c4a232f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4924286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0715437954a56b868bf7b593be009949d6f153bff1837315ad887439cbf6cfaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 23:01:59 GMT
ENV _BASH_VERSION=3.2
# Thu, 07 Mar 2019 23:02:00 GMT
ENV _BASH_PATCH_LEVEL=57
# Thu, 07 Mar 2019 23:02:00 GMT
ENV _BASH_LATEST_PATCH=57
# Thu, 07 Mar 2019 23:03:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 23:03:44 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:03:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:03:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876e3fc374ca31abf4644f22247f6983738c57a0e59d0754e32c8f8cbdb4ec6e`  
		Last Modified: Thu, 07 Mar 2019 23:08:45 GMT  
		Size: 2.2 MB (2169216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80129847a100bf8c79a7d0326f4b56b97690b1d5d6e18e7178a270302783bfef`  
		Last Modified: Thu, 07 Mar 2019 23:08:45 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3` - linux; arm variant v6

```console
$ docker pull bash@sha256:188c720cd44f2f9118dc79c01049fb5fab7350e9efae8d47e2eb7adb3a953f17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4634701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b1e8027f7a5b734bc8fbbd6e7da2e682b4c2ab9fb044e38d71f61e0c25bd60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:59:35 GMT
ENV _BASH_VERSION=3.2
# Fri, 08 Mar 2019 03:59:36 GMT
ENV _BASH_PATCH_LEVEL=57
# Fri, 08 Mar 2019 03:59:36 GMT
ENV _BASH_LATEST_PATCH=57
# Fri, 08 Mar 2019 04:01:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:01:34 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:01:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:01:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47d983ddd61b1a53957c01a53e5c1853a367acb90688fedfe8c36235ee8b45a`  
		Last Modified: Fri, 08 Mar 2019 04:06:57 GMT  
		Size: 2.1 MB (2093686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5d9557d82ecca6108070dd498ba5f4f2bb492a70a1694033c908b5c3771d2c`  
		Last Modified: Fri, 08 Mar 2019 04:06:56 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:95606c83f9b8f70a42a18349358a121e5bc0c5b2e300ee39cfe96403ed430fa5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4867160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec4342ae99e52e5417c77a08d90868bae1c4c103cb4b89bf21643bf0e9bb1757`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:05:14 GMT
ENV _BASH_VERSION=3.2
# Fri, 08 Mar 2019 04:05:15 GMT
ENV _BASH_PATCH_LEVEL=57
# Fri, 08 Mar 2019 04:05:16 GMT
ENV _BASH_LATEST_PATCH=57
# Fri, 08 Mar 2019 04:07:44 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:07:45 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:07:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:07:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722f9d79c4317ffda5074a3a6d9e51c28658459a8a4bd0f4e195cb503842464c`  
		Last Modified: Fri, 08 Mar 2019 04:14:43 GMT  
		Size: 2.2 MB (2178876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00215c4083541f2bdee1306167649526f375872043a9ca6ba2591348feaf190`  
		Last Modified: Fri, 08 Mar 2019 04:14:41 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3` - linux; 386

```console
$ docker pull bash@sha256:b49a380cbf412c62c147913c1fc32120a3a89b7e1c3bc5c9806275af844661b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4883545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fc0d604801dff340a0a5e2d1b4bc1f95ef25557d58e257d68cbe8a82c706445`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:01:36 GMT
ENV _BASH_VERSION=3.2
# Fri, 08 Mar 2019 04:01:36 GMT
ENV _BASH_PATCH_LEVEL=57
# Fri, 08 Mar 2019 04:01:36 GMT
ENV _BASH_LATEST_PATCH=57
# Fri, 08 Mar 2019 04:03:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:03:30 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:03:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:03:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5766933bc3ea39265afbe404d9516ecb2d366170c468cae9142fb1c70db766`  
		Last Modified: Fri, 08 Mar 2019 04:08:26 GMT  
		Size: 2.1 MB (2133848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14be520a3a7712edbec61832812a8cf39d696e0477ca9c04a1179c16e6b134dd`  
		Last Modified: Fri, 08 Mar 2019 04:08:25 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3` - linux; ppc64le

```console
$ docker pull bash@sha256:02b02014a1685cdeb4b419ad5e217620f093673f382d074f9b2676b39f276a8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5069858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d3aa655bd1b4376e8e2ee4dcedec304bd1fd5711caca37493a841915ecc314b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:31:58 GMT
ENV _BASH_VERSION=3.2
# Wed, 06 Feb 2019 09:31:59 GMT
ENV _BASH_PATCH_LEVEL=57
# Wed, 06 Feb 2019 09:32:00 GMT
ENV _BASH_LATEST_PATCH=57
# Wed, 06 Feb 2019 09:33:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:33:50 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:33:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:33:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee53ad13e70e68a70996edaecc9eae0f3b345e19afdf040e14a8fd9911ba43d`  
		Last Modified: Wed, 06 Feb 2019 09:40:59 GMT  
		Size: 2.3 MB (2290676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9c0da7f9867b8f53cef474b947c76c899973a6229853378701b39c737d9997`  
		Last Modified: Wed, 06 Feb 2019 09:40:58 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3` - linux; s390x

```console
$ docker pull bash@sha256:6db454dfa5211009177e1a8b3a3b67101dbf8edcb8a2dd8c11ec66075a031f34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4730612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1999f88fe38cc3daaab4d59e2c4a56d986711d0b0f4749bf2d6fb522909818a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:57:41 GMT
ENV _BASH_VERSION=3.2
# Fri, 08 Mar 2019 03:57:41 GMT
ENV _BASH_PATCH_LEVEL=57
# Fri, 08 Mar 2019 03:57:41 GMT
ENV _BASH_LATEST_PATCH=57
# Fri, 08 Mar 2019 03:59:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:59:19 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:59:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:59:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0f98f3d125f87a5644ef5bac7ae20a1719f632b8f9f42b1f4ffc60dfe35e57`  
		Last Modified: Fri, 08 Mar 2019 04:03:59 GMT  
		Size: 2.2 MB (2188965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abc0edb90e51f30076088e4114c5f6698a6146497ecbadcd19bd3f008d2cfeb`  
		Last Modified: Fri, 08 Mar 2019 04:03:59 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3.0`

```console
$ docker pull bash@sha256:58b668a63928eb88603bebadf93f6213a677269a644c39533791de5fe857da9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:3.0` - linux; amd64

```console
$ docker pull bash@sha256:ea74a372886b25c9fe969d7caa8d8629ad911096774de41c89fcd291bdcc8465
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4848173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37b9d5e3f706bb2e48294dc3ac30980a4e5aac6d2fd531784db796056881b58b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 23:06:10 GMT
ENV _BASH_VERSION=3.0
# Thu, 07 Mar 2019 23:06:11 GMT
ENV _BASH_PATCH_LEVEL=16
# Thu, 07 Mar 2019 23:06:11 GMT
ENV _BASH_LATEST_PATCH=22
# Thu, 07 Mar 2019 23:08:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION}0.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 23:08:04 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:08:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:08:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cccc0e5c2743e2f30a70241c686f13501836d1ea21f6b9fd6615628bdaeb50b3`  
		Last Modified: Thu, 07 Mar 2019 23:08:52 GMT  
		Size: 2.1 MB (2093106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcc68a9695fa4bc49af45f985f0dd11b98c8ac15de5c533a261f6338ae832c3`  
		Last Modified: Thu, 07 Mar 2019 23:08:52 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.0` - linux; arm variant v6

```console
$ docker pull bash@sha256:395d75c4c367b4c57978e375f8e899fbf824b3f9ce8ff5c10c38736df87fd7d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4556198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be9aeb8c17d5519c4d49503e1a038cb308b2a535b57fc99b18d81b5f6a59b8b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:04:03 GMT
ENV _BASH_VERSION=3.0
# Fri, 08 Mar 2019 04:04:04 GMT
ENV _BASH_PATCH_LEVEL=16
# Fri, 08 Mar 2019 04:04:04 GMT
ENV _BASH_LATEST_PATCH=22
# Fri, 08 Mar 2019 04:05:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION}0.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:05:57 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:05:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:05:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4819107f4798d74ba5a6e18489737c1d94314708df5d4bcf4fe7f51398089f65`  
		Last Modified: Fri, 08 Mar 2019 04:07:15 GMT  
		Size: 2.0 MB (2015185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42611a01e0685afb2a6187f141f806ce26ee86bcb054bd65dd503b6a444c109`  
		Last Modified: Fri, 08 Mar 2019 04:07:14 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.0` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:46db093cef6931cd82e3e3732b5fa76467e4aefa0ce8a3b2338afe48adc4bff3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4791568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce36ce9ff89667cd021a9e24bad336c95a376ca98b1a7164ffae9151ed776d92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:10:40 GMT
ENV _BASH_VERSION=3.0
# Fri, 08 Mar 2019 04:10:41 GMT
ENV _BASH_PATCH_LEVEL=16
# Fri, 08 Mar 2019 04:10:41 GMT
ENV _BASH_LATEST_PATCH=22
# Fri, 08 Mar 2019 04:13:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION}0.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:13:12 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:13:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:13:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7417aa7b284352b5519a649b7b3e10f29a2664b5a3cf6d4cf4dacf629f6f8d`  
		Last Modified: Fri, 08 Mar 2019 04:15:02 GMT  
		Size: 2.1 MB (2103289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6f3dc346f73351c10e49a375fbebd3dc464a743f76a2b57ab0c8a606f0ba7a`  
		Last Modified: Fri, 08 Mar 2019 04:15:01 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.0` - linux; 386

```console
$ docker pull bash@sha256:bf95f54b47e1b3696527a39146c674a51ae8027ff0a157d58a7c3feb0e2e9941
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4809878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfbddc3fc9e8af27901bab8ff9320c650b857a0580ffc852dbd8c91b2a3ad161`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:05:48 GMT
ENV _BASH_VERSION=3.0
# Fri, 08 Mar 2019 04:05:48 GMT
ENV _BASH_PATCH_LEVEL=16
# Fri, 08 Mar 2019 04:05:48 GMT
ENV _BASH_LATEST_PATCH=22
# Fri, 08 Mar 2019 04:07:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION}0.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:07:36 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:07:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:07:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d9c16e7eb65b17f66965a8e755a4a5f74b3d25684872f4dcc4dee9b9ff57a2`  
		Last Modified: Fri, 08 Mar 2019 04:08:35 GMT  
		Size: 2.1 MB (2060181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fbe149d474db62966b55eb5023c47340add4b62786fdbf54ce7eb0713cff9a8`  
		Last Modified: Fri, 08 Mar 2019 04:08:34 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.0` - linux; ppc64le

```console
$ docker pull bash@sha256:380b8dd2b811e939367af868420b590b429cdac013e366fce93950ed5baef9e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4985667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7923f55dbe3595389316aea490022ee029ff6bd4db1477c9b35a6f239b2a18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:36:48 GMT
ENV _BASH_VERSION=3.0
# Wed, 06 Feb 2019 09:36:49 GMT
ENV _BASH_PATCH_LEVEL=16
# Wed, 06 Feb 2019 09:36:50 GMT
ENV _BASH_LATEST_PATCH=22
# Wed, 06 Feb 2019 09:39:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION}0.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:39:07 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:39:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:39:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf81ec9bf3e9d21b4d5acd1b3293da9b1efc36d2043755ef818144a6ed1f7b8`  
		Last Modified: Wed, 06 Feb 2019 09:41:26 GMT  
		Size: 2.2 MB (2206482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f647c01bad2cc44d2ec544d23bcbff4f093643987a6325ea3b4478a4359931b8`  
		Last Modified: Wed, 06 Feb 2019 09:41:25 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.0` - linux; s390x

```console
$ docker pull bash@sha256:3b672003f243e5690985e3f9d81bfa96bcdf85551c3c03c28479b364d84cf192
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4654394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ffd2fa112692353e3f3d8d0329db9c17769c21abfcaed561951c8b7349bb16b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:01:24 GMT
ENV _BASH_VERSION=3.0
# Fri, 08 Mar 2019 04:01:25 GMT
ENV _BASH_PATCH_LEVEL=16
# Fri, 08 Mar 2019 04:01:25 GMT
ENV _BASH_LATEST_PATCH=22
# Fri, 08 Mar 2019 04:02:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION}0.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:02:58 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:02:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:02:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8a6438cf6b2e630763b28705273a71517a4ac2679ba9eb3f492e1fb121022e`  
		Last Modified: Fri, 08 Mar 2019 04:04:12 GMT  
		Size: 2.1 MB (2112749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3485238830e9a1b22adc1517dca7b433c467c5346d9fcceb75b85fa9686ce28e`  
		Last Modified: Fri, 08 Mar 2019 04:04:11 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3.0.22`

```console
$ docker pull bash@sha256:58b668a63928eb88603bebadf93f6213a677269a644c39533791de5fe857da9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:3.0.22` - linux; amd64

```console
$ docker pull bash@sha256:ea74a372886b25c9fe969d7caa8d8629ad911096774de41c89fcd291bdcc8465
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4848173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37b9d5e3f706bb2e48294dc3ac30980a4e5aac6d2fd531784db796056881b58b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 23:06:10 GMT
ENV _BASH_VERSION=3.0
# Thu, 07 Mar 2019 23:06:11 GMT
ENV _BASH_PATCH_LEVEL=16
# Thu, 07 Mar 2019 23:06:11 GMT
ENV _BASH_LATEST_PATCH=22
# Thu, 07 Mar 2019 23:08:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION}0.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 23:08:04 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:08:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:08:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cccc0e5c2743e2f30a70241c686f13501836d1ea21f6b9fd6615628bdaeb50b3`  
		Last Modified: Thu, 07 Mar 2019 23:08:52 GMT  
		Size: 2.1 MB (2093106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dcc68a9695fa4bc49af45f985f0dd11b98c8ac15de5c533a261f6338ae832c3`  
		Last Modified: Thu, 07 Mar 2019 23:08:52 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.0.22` - linux; arm variant v6

```console
$ docker pull bash@sha256:395d75c4c367b4c57978e375f8e899fbf824b3f9ce8ff5c10c38736df87fd7d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4556198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be9aeb8c17d5519c4d49503e1a038cb308b2a535b57fc99b18d81b5f6a59b8b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:04:03 GMT
ENV _BASH_VERSION=3.0
# Fri, 08 Mar 2019 04:04:04 GMT
ENV _BASH_PATCH_LEVEL=16
# Fri, 08 Mar 2019 04:04:04 GMT
ENV _BASH_LATEST_PATCH=22
# Fri, 08 Mar 2019 04:05:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION}0.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:05:57 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:05:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:05:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4819107f4798d74ba5a6e18489737c1d94314708df5d4bcf4fe7f51398089f65`  
		Last Modified: Fri, 08 Mar 2019 04:07:15 GMT  
		Size: 2.0 MB (2015185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42611a01e0685afb2a6187f141f806ce26ee86bcb054bd65dd503b6a444c109`  
		Last Modified: Fri, 08 Mar 2019 04:07:14 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.0.22` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:46db093cef6931cd82e3e3732b5fa76467e4aefa0ce8a3b2338afe48adc4bff3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4791568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce36ce9ff89667cd021a9e24bad336c95a376ca98b1a7164ffae9151ed776d92`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:10:40 GMT
ENV _BASH_VERSION=3.0
# Fri, 08 Mar 2019 04:10:41 GMT
ENV _BASH_PATCH_LEVEL=16
# Fri, 08 Mar 2019 04:10:41 GMT
ENV _BASH_LATEST_PATCH=22
# Fri, 08 Mar 2019 04:13:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION}0.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:13:12 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:13:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:13:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7417aa7b284352b5519a649b7b3e10f29a2664b5a3cf6d4cf4dacf629f6f8d`  
		Last Modified: Fri, 08 Mar 2019 04:15:02 GMT  
		Size: 2.1 MB (2103289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6f3dc346f73351c10e49a375fbebd3dc464a743f76a2b57ab0c8a606f0ba7a`  
		Last Modified: Fri, 08 Mar 2019 04:15:01 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.0.22` - linux; 386

```console
$ docker pull bash@sha256:bf95f54b47e1b3696527a39146c674a51ae8027ff0a157d58a7c3feb0e2e9941
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4809878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfbddc3fc9e8af27901bab8ff9320c650b857a0580ffc852dbd8c91b2a3ad161`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:05:48 GMT
ENV _BASH_VERSION=3.0
# Fri, 08 Mar 2019 04:05:48 GMT
ENV _BASH_PATCH_LEVEL=16
# Fri, 08 Mar 2019 04:05:48 GMT
ENV _BASH_LATEST_PATCH=22
# Fri, 08 Mar 2019 04:07:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION}0.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:07:36 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:07:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:07:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d9c16e7eb65b17f66965a8e755a4a5f74b3d25684872f4dcc4dee9b9ff57a2`  
		Last Modified: Fri, 08 Mar 2019 04:08:35 GMT  
		Size: 2.1 MB (2060181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fbe149d474db62966b55eb5023c47340add4b62786fdbf54ce7eb0713cff9a8`  
		Last Modified: Fri, 08 Mar 2019 04:08:34 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.0.22` - linux; ppc64le

```console
$ docker pull bash@sha256:380b8dd2b811e939367af868420b590b429cdac013e366fce93950ed5baef9e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4985667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7923f55dbe3595389316aea490022ee029ff6bd4db1477c9b35a6f239b2a18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:36:48 GMT
ENV _BASH_VERSION=3.0
# Wed, 06 Feb 2019 09:36:49 GMT
ENV _BASH_PATCH_LEVEL=16
# Wed, 06 Feb 2019 09:36:50 GMT
ENV _BASH_LATEST_PATCH=22
# Wed, 06 Feb 2019 09:39:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION}0.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:39:07 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:39:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:39:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf81ec9bf3e9d21b4d5acd1b3293da9b1efc36d2043755ef818144a6ed1f7b8`  
		Last Modified: Wed, 06 Feb 2019 09:41:26 GMT  
		Size: 2.2 MB (2206482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f647c01bad2cc44d2ec544d23bcbff4f093643987a6325ea3b4478a4359931b8`  
		Last Modified: Wed, 06 Feb 2019 09:41:25 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.0.22` - linux; s390x

```console
$ docker pull bash@sha256:3b672003f243e5690985e3f9d81bfa96bcdf85551c3c03c28479b364d84cf192
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4654394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ffd2fa112692353e3f3d8d0329db9c17769c21abfcaed561951c8b7349bb16b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:01:24 GMT
ENV _BASH_VERSION=3.0
# Fri, 08 Mar 2019 04:01:25 GMT
ENV _BASH_PATCH_LEVEL=16
# Fri, 08 Mar 2019 04:01:25 GMT
ENV _BASH_LATEST_PATCH=22
# Fri, 08 Mar 2019 04:02:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION}0.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:02:58 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:02:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:02:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8a6438cf6b2e630763b28705273a71517a4ac2679ba9eb3f492e1fb121022e`  
		Last Modified: Fri, 08 Mar 2019 04:04:12 GMT  
		Size: 2.1 MB (2112749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3485238830e9a1b22adc1517dca7b433c467c5346d9fcceb75b85fa9686ce28e`  
		Last Modified: Fri, 08 Mar 2019 04:04:11 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3.1`

```console
$ docker pull bash@sha256:4d3a95f24c05a9a768f4ef9a5cd2f05a0892230f6702a36179d18609417a2c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:3.1` - linux; amd64

```console
$ docker pull bash@sha256:6a2b44492d6f28c095b056a7adafee9a98f00ba68f87b7a38ed3b550339b5888
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4901103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6fd9d4f087a47f68c3148b47bffbe6432be05096f5158d8ceddeb55fa99f3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 23:03:57 GMT
ENV _BASH_VERSION=3.1
# Thu, 07 Mar 2019 23:03:58 GMT
ENV _BASH_PATCH_LEVEL=0
# Thu, 07 Mar 2019 23:03:58 GMT
ENV _BASH_LATEST_PATCH=23
# Thu, 07 Mar 2019 23:05:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 23:05:57 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:05:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:05:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da64cf342eff97db5e91f65f9d64e3bed6eb1f78fac72db951cc92a0eb008122`  
		Last Modified: Thu, 07 Mar 2019 23:08:49 GMT  
		Size: 2.1 MB (2146032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83289e360e4310789aff5887ce3a1d2e9c120a356753afaafe189645764b1220`  
		Last Modified: Thu, 07 Mar 2019 23:08:48 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.1` - linux; arm variant v6

```console
$ docker pull bash@sha256:6a2118421f67a86c3d3f287b6a88ec19e05d9bb59200f77e092719257e62411c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4609727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5d4ff3b524309ddd5fbb1edb8ad697c7ce88812c63721e71c1a9c671cf7f7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:01:49 GMT
ENV _BASH_VERSION=3.1
# Fri, 08 Mar 2019 04:01:49 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 04:01:49 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 04:03:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:03:46 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:03:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:03:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b7ee1a8e80b887449fbb036bbd022830ae820056c0cd599cbe8f0e31338acd`  
		Last Modified: Fri, 08 Mar 2019 04:07:04 GMT  
		Size: 2.1 MB (2068712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431fd6e19db0076dc411c4b066dd06553bed5147c191b079ad7d1bc061715009`  
		Last Modified: Fri, 08 Mar 2019 04:07:03 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.1` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:07425bf75ce2a745d8353e35ce08af94d2fe7c775d1cd7b8f61488ed9a86fc6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4839790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:307d10fa96f5c4590b2cc25f7d127ecd55fba7632d4fc7cfe709b0a6378edfb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:07:57 GMT
ENV _BASH_VERSION=3.1
# Fri, 08 Mar 2019 04:07:58 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 04:07:59 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 04:10:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:10:32 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:10:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:10:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf617bfc72fce86826537c32abd7617e91240dfb16c28eb72c3ab65812f93572`  
		Last Modified: Fri, 08 Mar 2019 04:14:53 GMT  
		Size: 2.2 MB (2151512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222dd5032823b2642c0768ecec0f9fd2bcb9e1b6f9dae99092a744ca594cd206`  
		Last Modified: Fri, 08 Mar 2019 04:14:52 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.1` - linux; 386

```console
$ docker pull bash@sha256:e355447f32b8b0db3cbfe238ffb319b09ed07d079b91eb5de1e53710bd7955be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4857994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe19aca340b5a514b5e166d60714785b71081e925c908dcc8fa4f7f59b2e51ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:03:35 GMT
ENV _BASH_VERSION=3.1
# Fri, 08 Mar 2019 04:03:35 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 04:03:35 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 04:05:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:05:34 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:05:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:05:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9736e5badd4abe855340bdb73fa4de0ce5eed9fd7a52c98ebb392b5bc899f367`  
		Last Modified: Fri, 08 Mar 2019 04:08:31 GMT  
		Size: 2.1 MB (2108300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89a982b7ecc5ceb2c006449b0722d9b4f71d5276de842bd7f9b24310f628f83`  
		Last Modified: Fri, 08 Mar 2019 04:08:30 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.1` - linux; ppc64le

```console
$ docker pull bash@sha256:f88c2dc6849687015fbf3de991e06e48bf06c918b2ef98d6a5219a5134274035
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5042691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:444214e1ba727a8c6933eb7e248659461c13ec32e80a4b8d7a9391de6b50bd0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:34:08 GMT
ENV _BASH_VERSION=3.1
# Wed, 06 Feb 2019 09:34:10 GMT
ENV _BASH_PATCH_LEVEL=0
# Wed, 06 Feb 2019 09:34:13 GMT
ENV _BASH_LATEST_PATCH=23
# Wed, 06 Feb 2019 09:36:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:36:25 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:36:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:36:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b1ac1945f7030e5f2d5cb2c347c0cb0492eb888bab57234d078fbe0c965973`  
		Last Modified: Wed, 06 Feb 2019 09:41:14 GMT  
		Size: 2.3 MB (2263507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa88551ac1f531d8efc142714325a0ff796f943f6f82f94e7fbb9a086a7bfbb`  
		Last Modified: Wed, 06 Feb 2019 09:41:13 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.1` - linux; s390x

```console
$ docker pull bash@sha256:79403f459ce8ac8ded515cb205627097c9a8c327a2281301024b7ae1fb6c595b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4705196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9bea91b190e0b4040ac28941cebfe360bdc4aeaf5562b622ba414d3267c6389`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:59:24 GMT
ENV _BASH_VERSION=3.1
# Fri, 08 Mar 2019 03:59:25 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:59:25 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 04:01:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:01:10 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:01:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:01:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701180f1911db2223f206f3677633043f2a23ab0e3266eac160fd29750d8d5cb`  
		Last Modified: Fri, 08 Mar 2019 04:04:07 GMT  
		Size: 2.2 MB (2163550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1303428ade72384c058416538eb52ab03abaa46c588a23700df904fd175e4e4d`  
		Last Modified: Fri, 08 Mar 2019 04:04:07 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3.1.23`

```console
$ docker pull bash@sha256:4d3a95f24c05a9a768f4ef9a5cd2f05a0892230f6702a36179d18609417a2c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:3.1.23` - linux; amd64

```console
$ docker pull bash@sha256:6a2b44492d6f28c095b056a7adafee9a98f00ba68f87b7a38ed3b550339b5888
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4901103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6fd9d4f087a47f68c3148b47bffbe6432be05096f5158d8ceddeb55fa99f3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 23:03:57 GMT
ENV _BASH_VERSION=3.1
# Thu, 07 Mar 2019 23:03:58 GMT
ENV _BASH_PATCH_LEVEL=0
# Thu, 07 Mar 2019 23:03:58 GMT
ENV _BASH_LATEST_PATCH=23
# Thu, 07 Mar 2019 23:05:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 23:05:57 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:05:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:05:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da64cf342eff97db5e91f65f9d64e3bed6eb1f78fac72db951cc92a0eb008122`  
		Last Modified: Thu, 07 Mar 2019 23:08:49 GMT  
		Size: 2.1 MB (2146032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83289e360e4310789aff5887ce3a1d2e9c120a356753afaafe189645764b1220`  
		Last Modified: Thu, 07 Mar 2019 23:08:48 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.1.23` - linux; arm variant v6

```console
$ docker pull bash@sha256:6a2118421f67a86c3d3f287b6a88ec19e05d9bb59200f77e092719257e62411c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4609727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5d4ff3b524309ddd5fbb1edb8ad697c7ce88812c63721e71c1a9c671cf7f7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:01:49 GMT
ENV _BASH_VERSION=3.1
# Fri, 08 Mar 2019 04:01:49 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 04:01:49 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 04:03:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:03:46 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:03:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:03:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b7ee1a8e80b887449fbb036bbd022830ae820056c0cd599cbe8f0e31338acd`  
		Last Modified: Fri, 08 Mar 2019 04:07:04 GMT  
		Size: 2.1 MB (2068712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431fd6e19db0076dc411c4b066dd06553bed5147c191b079ad7d1bc061715009`  
		Last Modified: Fri, 08 Mar 2019 04:07:03 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.1.23` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:07425bf75ce2a745d8353e35ce08af94d2fe7c775d1cd7b8f61488ed9a86fc6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4839790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:307d10fa96f5c4590b2cc25f7d127ecd55fba7632d4fc7cfe709b0a6378edfb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:07:57 GMT
ENV _BASH_VERSION=3.1
# Fri, 08 Mar 2019 04:07:58 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 04:07:59 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 04:10:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:10:32 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:10:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:10:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf617bfc72fce86826537c32abd7617e91240dfb16c28eb72c3ab65812f93572`  
		Last Modified: Fri, 08 Mar 2019 04:14:53 GMT  
		Size: 2.2 MB (2151512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222dd5032823b2642c0768ecec0f9fd2bcb9e1b6f9dae99092a744ca594cd206`  
		Last Modified: Fri, 08 Mar 2019 04:14:52 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.1.23` - linux; 386

```console
$ docker pull bash@sha256:e355447f32b8b0db3cbfe238ffb319b09ed07d079b91eb5de1e53710bd7955be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4857994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe19aca340b5a514b5e166d60714785b71081e925c908dcc8fa4f7f59b2e51ae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:03:35 GMT
ENV _BASH_VERSION=3.1
# Fri, 08 Mar 2019 04:03:35 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 04:03:35 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 04:05:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:05:34 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:05:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:05:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9736e5badd4abe855340bdb73fa4de0ce5eed9fd7a52c98ebb392b5bc899f367`  
		Last Modified: Fri, 08 Mar 2019 04:08:31 GMT  
		Size: 2.1 MB (2108300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89a982b7ecc5ceb2c006449b0722d9b4f71d5276de842bd7f9b24310f628f83`  
		Last Modified: Fri, 08 Mar 2019 04:08:30 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.1.23` - linux; ppc64le

```console
$ docker pull bash@sha256:f88c2dc6849687015fbf3de991e06e48bf06c918b2ef98d6a5219a5134274035
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5042691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:444214e1ba727a8c6933eb7e248659461c13ec32e80a4b8d7a9391de6b50bd0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:34:08 GMT
ENV _BASH_VERSION=3.1
# Wed, 06 Feb 2019 09:34:10 GMT
ENV _BASH_PATCH_LEVEL=0
# Wed, 06 Feb 2019 09:34:13 GMT
ENV _BASH_LATEST_PATCH=23
# Wed, 06 Feb 2019 09:36:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:36:25 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:36:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:36:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b1ac1945f7030e5f2d5cb2c347c0cb0492eb888bab57234d078fbe0c965973`  
		Last Modified: Wed, 06 Feb 2019 09:41:14 GMT  
		Size: 2.3 MB (2263507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa88551ac1f531d8efc142714325a0ff796f943f6f82f94e7fbb9a086a7bfbb`  
		Last Modified: Wed, 06 Feb 2019 09:41:13 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.1.23` - linux; s390x

```console
$ docker pull bash@sha256:79403f459ce8ac8ded515cb205627097c9a8c327a2281301024b7ae1fb6c595b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4705196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9bea91b190e0b4040ac28941cebfe360bdc4aeaf5562b622ba414d3267c6389`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:59:24 GMT
ENV _BASH_VERSION=3.1
# Fri, 08 Mar 2019 03:59:25 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:59:25 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 04:01:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:01:10 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:01:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:01:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701180f1911db2223f206f3677633043f2a23ab0e3266eac160fd29750d8d5cb`  
		Last Modified: Fri, 08 Mar 2019 04:04:07 GMT  
		Size: 2.2 MB (2163550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1303428ade72384c058416538eb52ab03abaa46c588a23700df904fd175e4e4d`  
		Last Modified: Fri, 08 Mar 2019 04:04:07 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3.2`

```console
$ docker pull bash@sha256:b6b2ce7aa757800563445a2c5bba2bc43e64d24782bd9d8ab410d415a4aca700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:3.2` - linux; amd64

```console
$ docker pull bash@sha256:1fc2134f72c243bd0433c219659d55ff0b78564c520837bcde5435fc8c4a232f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4924286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0715437954a56b868bf7b593be009949d6f153bff1837315ad887439cbf6cfaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 23:01:59 GMT
ENV _BASH_VERSION=3.2
# Thu, 07 Mar 2019 23:02:00 GMT
ENV _BASH_PATCH_LEVEL=57
# Thu, 07 Mar 2019 23:02:00 GMT
ENV _BASH_LATEST_PATCH=57
# Thu, 07 Mar 2019 23:03:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 23:03:44 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:03:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:03:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876e3fc374ca31abf4644f22247f6983738c57a0e59d0754e32c8f8cbdb4ec6e`  
		Last Modified: Thu, 07 Mar 2019 23:08:45 GMT  
		Size: 2.2 MB (2169216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80129847a100bf8c79a7d0326f4b56b97690b1d5d6e18e7178a270302783bfef`  
		Last Modified: Thu, 07 Mar 2019 23:08:45 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.2` - linux; arm variant v6

```console
$ docker pull bash@sha256:188c720cd44f2f9118dc79c01049fb5fab7350e9efae8d47e2eb7adb3a953f17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4634701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b1e8027f7a5b734bc8fbbd6e7da2e682b4c2ab9fb044e38d71f61e0c25bd60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:59:35 GMT
ENV _BASH_VERSION=3.2
# Fri, 08 Mar 2019 03:59:36 GMT
ENV _BASH_PATCH_LEVEL=57
# Fri, 08 Mar 2019 03:59:36 GMT
ENV _BASH_LATEST_PATCH=57
# Fri, 08 Mar 2019 04:01:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:01:34 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:01:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:01:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47d983ddd61b1a53957c01a53e5c1853a367acb90688fedfe8c36235ee8b45a`  
		Last Modified: Fri, 08 Mar 2019 04:06:57 GMT  
		Size: 2.1 MB (2093686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5d9557d82ecca6108070dd498ba5f4f2bb492a70a1694033c908b5c3771d2c`  
		Last Modified: Fri, 08 Mar 2019 04:06:56 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.2` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:95606c83f9b8f70a42a18349358a121e5bc0c5b2e300ee39cfe96403ed430fa5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4867160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec4342ae99e52e5417c77a08d90868bae1c4c103cb4b89bf21643bf0e9bb1757`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:05:14 GMT
ENV _BASH_VERSION=3.2
# Fri, 08 Mar 2019 04:05:15 GMT
ENV _BASH_PATCH_LEVEL=57
# Fri, 08 Mar 2019 04:05:16 GMT
ENV _BASH_LATEST_PATCH=57
# Fri, 08 Mar 2019 04:07:44 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:07:45 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:07:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:07:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722f9d79c4317ffda5074a3a6d9e51c28658459a8a4bd0f4e195cb503842464c`  
		Last Modified: Fri, 08 Mar 2019 04:14:43 GMT  
		Size: 2.2 MB (2178876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00215c4083541f2bdee1306167649526f375872043a9ca6ba2591348feaf190`  
		Last Modified: Fri, 08 Mar 2019 04:14:41 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.2` - linux; 386

```console
$ docker pull bash@sha256:b49a380cbf412c62c147913c1fc32120a3a89b7e1c3bc5c9806275af844661b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4883545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fc0d604801dff340a0a5e2d1b4bc1f95ef25557d58e257d68cbe8a82c706445`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:01:36 GMT
ENV _BASH_VERSION=3.2
# Fri, 08 Mar 2019 04:01:36 GMT
ENV _BASH_PATCH_LEVEL=57
# Fri, 08 Mar 2019 04:01:36 GMT
ENV _BASH_LATEST_PATCH=57
# Fri, 08 Mar 2019 04:03:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:03:30 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:03:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:03:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5766933bc3ea39265afbe404d9516ecb2d366170c468cae9142fb1c70db766`  
		Last Modified: Fri, 08 Mar 2019 04:08:26 GMT  
		Size: 2.1 MB (2133848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14be520a3a7712edbec61832812a8cf39d696e0477ca9c04a1179c16e6b134dd`  
		Last Modified: Fri, 08 Mar 2019 04:08:25 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.2` - linux; ppc64le

```console
$ docker pull bash@sha256:02b02014a1685cdeb4b419ad5e217620f093673f382d074f9b2676b39f276a8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5069858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d3aa655bd1b4376e8e2ee4dcedec304bd1fd5711caca37493a841915ecc314b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:31:58 GMT
ENV _BASH_VERSION=3.2
# Wed, 06 Feb 2019 09:31:59 GMT
ENV _BASH_PATCH_LEVEL=57
# Wed, 06 Feb 2019 09:32:00 GMT
ENV _BASH_LATEST_PATCH=57
# Wed, 06 Feb 2019 09:33:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:33:50 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:33:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:33:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee53ad13e70e68a70996edaecc9eae0f3b345e19afdf040e14a8fd9911ba43d`  
		Last Modified: Wed, 06 Feb 2019 09:40:59 GMT  
		Size: 2.3 MB (2290676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9c0da7f9867b8f53cef474b947c76c899973a6229853378701b39c737d9997`  
		Last Modified: Wed, 06 Feb 2019 09:40:58 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.2` - linux; s390x

```console
$ docker pull bash@sha256:6db454dfa5211009177e1a8b3a3b67101dbf8edcb8a2dd8c11ec66075a031f34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4730612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1999f88fe38cc3daaab4d59e2c4a56d986711d0b0f4749bf2d6fb522909818a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:57:41 GMT
ENV _BASH_VERSION=3.2
# Fri, 08 Mar 2019 03:57:41 GMT
ENV _BASH_PATCH_LEVEL=57
# Fri, 08 Mar 2019 03:57:41 GMT
ENV _BASH_LATEST_PATCH=57
# Fri, 08 Mar 2019 03:59:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:59:19 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:59:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:59:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0f98f3d125f87a5644ef5bac7ae20a1719f632b8f9f42b1f4ffc60dfe35e57`  
		Last Modified: Fri, 08 Mar 2019 04:03:59 GMT  
		Size: 2.2 MB (2188965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abc0edb90e51f30076088e4114c5f6698a6146497ecbadcd19bd3f008d2cfeb`  
		Last Modified: Fri, 08 Mar 2019 04:03:59 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:3.2.57`

```console
$ docker pull bash@sha256:b6b2ce7aa757800563445a2c5bba2bc43e64d24782bd9d8ab410d415a4aca700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:3.2.57` - linux; amd64

```console
$ docker pull bash@sha256:1fc2134f72c243bd0433c219659d55ff0b78564c520837bcde5435fc8c4a232f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4924286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0715437954a56b868bf7b593be009949d6f153bff1837315ad887439cbf6cfaf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 23:01:59 GMT
ENV _BASH_VERSION=3.2
# Thu, 07 Mar 2019 23:02:00 GMT
ENV _BASH_PATCH_LEVEL=57
# Thu, 07 Mar 2019 23:02:00 GMT
ENV _BASH_LATEST_PATCH=57
# Thu, 07 Mar 2019 23:03:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 23:03:44 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:03:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:03:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876e3fc374ca31abf4644f22247f6983738c57a0e59d0754e32c8f8cbdb4ec6e`  
		Last Modified: Thu, 07 Mar 2019 23:08:45 GMT  
		Size: 2.2 MB (2169216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80129847a100bf8c79a7d0326f4b56b97690b1d5d6e18e7178a270302783bfef`  
		Last Modified: Thu, 07 Mar 2019 23:08:45 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.2.57` - linux; arm variant v6

```console
$ docker pull bash@sha256:188c720cd44f2f9118dc79c01049fb5fab7350e9efae8d47e2eb7adb3a953f17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4634701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b1e8027f7a5b734bc8fbbd6e7da2e682b4c2ab9fb044e38d71f61e0c25bd60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:59:35 GMT
ENV _BASH_VERSION=3.2
# Fri, 08 Mar 2019 03:59:36 GMT
ENV _BASH_PATCH_LEVEL=57
# Fri, 08 Mar 2019 03:59:36 GMT
ENV _BASH_LATEST_PATCH=57
# Fri, 08 Mar 2019 04:01:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:01:34 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:01:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:01:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47d983ddd61b1a53957c01a53e5c1853a367acb90688fedfe8c36235ee8b45a`  
		Last Modified: Fri, 08 Mar 2019 04:06:57 GMT  
		Size: 2.1 MB (2093686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5d9557d82ecca6108070dd498ba5f4f2bb492a70a1694033c908b5c3771d2c`  
		Last Modified: Fri, 08 Mar 2019 04:06:56 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.2.57` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:95606c83f9b8f70a42a18349358a121e5bc0c5b2e300ee39cfe96403ed430fa5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4867160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec4342ae99e52e5417c77a08d90868bae1c4c103cb4b89bf21643bf0e9bb1757`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:05:14 GMT
ENV _BASH_VERSION=3.2
# Fri, 08 Mar 2019 04:05:15 GMT
ENV _BASH_PATCH_LEVEL=57
# Fri, 08 Mar 2019 04:05:16 GMT
ENV _BASH_LATEST_PATCH=57
# Fri, 08 Mar 2019 04:07:44 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:07:45 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:07:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:07:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722f9d79c4317ffda5074a3a6d9e51c28658459a8a4bd0f4e195cb503842464c`  
		Last Modified: Fri, 08 Mar 2019 04:14:43 GMT  
		Size: 2.2 MB (2178876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00215c4083541f2bdee1306167649526f375872043a9ca6ba2591348feaf190`  
		Last Modified: Fri, 08 Mar 2019 04:14:41 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.2.57` - linux; 386

```console
$ docker pull bash@sha256:b49a380cbf412c62c147913c1fc32120a3a89b7e1c3bc5c9806275af844661b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4883545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fc0d604801dff340a0a5e2d1b4bc1f95ef25557d58e257d68cbe8a82c706445`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:01:36 GMT
ENV _BASH_VERSION=3.2
# Fri, 08 Mar 2019 04:01:36 GMT
ENV _BASH_PATCH_LEVEL=57
# Fri, 08 Mar 2019 04:01:36 GMT
ENV _BASH_LATEST_PATCH=57
# Fri, 08 Mar 2019 04:03:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:03:30 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:03:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:03:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5766933bc3ea39265afbe404d9516ecb2d366170c468cae9142fb1c70db766`  
		Last Modified: Fri, 08 Mar 2019 04:08:26 GMT  
		Size: 2.1 MB (2133848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14be520a3a7712edbec61832812a8cf39d696e0477ca9c04a1179c16e6b134dd`  
		Last Modified: Fri, 08 Mar 2019 04:08:25 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.2.57` - linux; ppc64le

```console
$ docker pull bash@sha256:02b02014a1685cdeb4b419ad5e217620f093673f382d074f9b2676b39f276a8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5069858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d3aa655bd1b4376e8e2ee4dcedec304bd1fd5711caca37493a841915ecc314b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:31:58 GMT
ENV _BASH_VERSION=3.2
# Wed, 06 Feb 2019 09:31:59 GMT
ENV _BASH_PATCH_LEVEL=57
# Wed, 06 Feb 2019 09:32:00 GMT
ENV _BASH_LATEST_PATCH=57
# Wed, 06 Feb 2019 09:33:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:33:50 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:33:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:33:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee53ad13e70e68a70996edaecc9eae0f3b345e19afdf040e14a8fd9911ba43d`  
		Last Modified: Wed, 06 Feb 2019 09:40:59 GMT  
		Size: 2.3 MB (2290676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9c0da7f9867b8f53cef474b947c76c899973a6229853378701b39c737d9997`  
		Last Modified: Wed, 06 Feb 2019 09:40:58 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:3.2.57` - linux; s390x

```console
$ docker pull bash@sha256:6db454dfa5211009177e1a8b3a3b67101dbf8edcb8a2dd8c11ec66075a031f34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4730612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1999f88fe38cc3daaab4d59e2c4a56d986711d0b0f4749bf2d6fb522909818a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:57:41 GMT
ENV _BASH_VERSION=3.2
# Fri, 08 Mar 2019 03:57:41 GMT
ENV _BASH_PATCH_LEVEL=57
# Fri, 08 Mar 2019 03:57:41 GMT
ENV _BASH_LATEST_PATCH=57
# Fri, 08 Mar 2019 03:59:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/locale 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:59:19 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:59:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:59:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0f98f3d125f87a5644ef5bac7ae20a1719f632b8f9f42b1f4ffc60dfe35e57`  
		Last Modified: Fri, 08 Mar 2019 04:03:59 GMT  
		Size: 2.2 MB (2188965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abc0edb90e51f30076088e4114c5f6698a6146497ecbadcd19bd3f008d2cfeb`  
		Last Modified: Fri, 08 Mar 2019 04:03:59 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4`

```console
$ docker pull bash@sha256:81e2a3af9b8922f7afd5694222885dc884afee0df859b3dafbe7158540e34c6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:4` - linux; amd64

```console
$ docker pull bash@sha256:024e84052dceb0d8c5682a2147dc61693eff705812e9dbcffcdccd9f4a7ae15d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5739733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c8dee16af33d0525414fb54a456d2cc579896b8e9fa16e21bc389f85b13dd32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 22:56:22 GMT
ENV _BASH_VERSION=4.4
# Thu, 07 Mar 2019 22:56:23 GMT
ENV _BASH_PATCH_LEVEL=18
# Thu, 07 Mar 2019 22:56:23 GMT
ENV _BASH_LATEST_PATCH=23
# Thu, 07 Mar 2019 22:57:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 22:57:25 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 22:57:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 22:57:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7cf314be100814f178dfe095777944d7784d87ed0ebf90e65e34dcafd014bc`  
		Last Modified: Thu, 07 Mar 2019 23:08:27 GMT  
		Size: 3.0 MB (2984661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f7e8c7710031b76a8c21e091a002c6d1b3ab6c4b1a2d0f6dcf24df0ebcb0bf`  
		Last Modified: Thu, 07 Mar 2019 23:08:26 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4` - linux; arm variant v6

```console
$ docker pull bash@sha256:d0c00e35e30993e7148cc859146bde5525ffc057b8518b9231c7282e98189b9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5426896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e2e8fc65da286248a8d387cd74b66a395205f5807db5f14d6a0d15957ba5e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:53:25 GMT
ENV _BASH_VERSION=4.4
# Fri, 08 Mar 2019 03:53:25 GMT
ENV _BASH_PATCH_LEVEL=18
# Fri, 08 Mar 2019 03:53:26 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 03:54:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:54:13 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4252be3544bf3a2aa1f35a96e3f051145190491b400326738c37c048119a31`  
		Last Modified: Fri, 08 Mar 2019 04:06:25 GMT  
		Size: 2.9 MB (2885879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ec34a201a510030070a62932a625962ba6541a7626fb00d8ac31b4a9c012e7`  
		Last Modified: Fri, 08 Mar 2019 04:06:24 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:fb156c3d82e3bea48d7833a084bb6b93faed86499ff49551cf3f70c58b94ab58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5681505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c080103a7913a83b97916c47c2212d14e999dd339accad40640dcdbdad4e2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:55:38 GMT
ENV _BASH_VERSION=4.4
# Fri, 08 Mar 2019 03:55:39 GMT
ENV _BASH_PATCH_LEVEL=18
# Fri, 08 Mar 2019 03:55:39 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 03:56:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:56:58 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:56:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:57:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b22f3a08922836a7ccbff52a0713c48949fb7cb1a342290b3873bd873e4da1`  
		Last Modified: Fri, 08 Mar 2019 04:13:57 GMT  
		Size: 3.0 MB (2993223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51842f2b221e16e743d2277bbb6083840f1f27df3fc2a30ce1885f3c107ff23`  
		Last Modified: Fri, 08 Mar 2019 04:13:55 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4` - linux; 386

```console
$ docker pull bash@sha256:69833be05cc1f8858de9dfe396aacf58abff5c921f8fd3a01b16c6f784c2b055
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5681079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:134efbf0c1dc0f75b000937f33945ad158d63d5e763bc434619337d2858639bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:53:59 GMT
ENV _BASH_VERSION=4.4
# Fri, 08 Mar 2019 03:53:59 GMT
ENV _BASH_PATCH_LEVEL=18
# Fri, 08 Mar 2019 03:54:00 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 03:55:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:55:22 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:55:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:55:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b38db50824c14e72574e95f70aa97d0893e8dc1d5027763221f259e04f481a2`  
		Last Modified: Fri, 08 Mar 2019 04:08:04 GMT  
		Size: 2.9 MB (2931380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2dcf7a4b1e71177a098d92a297ca5178e3f45c2fe310d2bce929c9ee7cf8c1`  
		Last Modified: Fri, 08 Mar 2019 04:08:03 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4` - linux; ppc64le

```console
$ docker pull bash@sha256:0a61355e09161a95efc1aaaf34c2338053368f032d9f1cb2ff8c02b8f5a13f2d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5998915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f8bd7618d9735bd7c9972a37e591082fb1340d537b0910eccd4b1d984d4e268`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:17:40 GMT
ENV _BASH_VERSION=4.4
# Wed, 06 Feb 2019 09:17:42 GMT
ENV _BASH_PATCH_LEVEL=18
# Wed, 06 Feb 2019 09:17:44 GMT
ENV _BASH_LATEST_PATCH=23
# Wed, 06 Feb 2019 09:18:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:18:32 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:18:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:18:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a7d118f4ef136f0bd1ea3a489cb1965749a7b7bf6cd99258191e5231278b87`  
		Last Modified: Wed, 06 Feb 2019 09:40:07 GMT  
		Size: 3.2 MB (3219731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51982983cfa6ba84d3bda2868db2532af21da71b4a3592b6ac0a8756f295fd1a`  
		Last Modified: Wed, 06 Feb 2019 09:40:03 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4` - linux; s390x

```console
$ docker pull bash@sha256:734a6db489ac2d2f26b373e68fe3e6bd34fb77c7b818bceb73ed36abc457d280
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5543460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05932b39bf11230866aa43245fdfca7104ade951ee0cc96e7d061e94c772fae3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:53:49 GMT
ENV _BASH_VERSION=4.4
# Fri, 08 Mar 2019 03:53:49 GMT
ENV _BASH_PATCH_LEVEL=18
# Fri, 08 Mar 2019 03:53:50 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 03:54:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:54:32 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c3a16cffd0b3349222a7cf86871ff317495cc917bf8cce5735a41aae1f233f`  
		Last Modified: Fri, 08 Mar 2019 04:03:31 GMT  
		Size: 3.0 MB (3001816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425699a4e32150547f23f4490e165d4b03ec2acf5d2b9fe8960141e5ad6dbe7e`  
		Last Modified: Fri, 08 Mar 2019 04:03:30 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.0`

```console
$ docker pull bash@sha256:6a6332a883c9304f033905519bf2df6e85931bbb8779642be47da9b6231d777d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:4.0` - linux; amd64

```console
$ docker pull bash@sha256:98b97424f93cc262ea78768b6977d442fd9ee08c08d1f22ad47c78c7873caf36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5060822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cee41c5e558a49815eb34cd1d114f404996f2fdc3e4d00dc876f609dc101b726`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 23:00:46 GMT
ENV _BASH_VERSION=4.0
# Thu, 07 Mar 2019 23:00:46 GMT
ENV _BASH_PATCH_LEVEL=0
# Thu, 07 Mar 2019 23:00:46 GMT
ENV _BASH_LATEST_PATCH=44
# Thu, 07 Mar 2019 23:01:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		autoconf 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 23:01:53 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:01:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:01:54 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bc88f496e9fe6b46431da55a62e9320b2efa5ddcee14bfd58619679e90b054`  
		Last Modified: Thu, 07 Mar 2019 23:08:42 GMT  
		Size: 2.3 MB (2305745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4074ed52711a34b54179193220027a31fa1209a16c7881374c67e0f0cd81e87`  
		Last Modified: Thu, 07 Mar 2019 23:08:41 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.0` - linux; arm variant v6

```console
$ docker pull bash@sha256:6b5d2106675c0ca4831fe8bbfa24022e324bf6eff1e860cbb6a2fee57a9afdd0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4768744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be3a4dfe2f278d373a9059e9b2b0d03145ae12dec71b4fcedbe7d1a4f66dcd0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:57:51 GMT
ENV _BASH_VERSION=4.0
# Fri, 08 Mar 2019 03:57:51 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:57:51 GMT
ENV _BASH_LATEST_PATCH=44
# Fri, 08 Mar 2019 03:59:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		autoconf 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:59:25 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:59:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:59:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57898fbdb1528e638c957913f7a8aeeaf80a26e9996626a0a788abc3726d364d`  
		Last Modified: Fri, 08 Mar 2019 04:06:51 GMT  
		Size: 2.2 MB (2227723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4cd0662c1d9b8dbe570678a2eac4299b8f6b7be38bc8c39a23cc5cee8430dfa`  
		Last Modified: Fri, 08 Mar 2019 04:06:49 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.0` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:7d98ea696a003532d528a72dfbe26eae66e95af17c77109bfc1fce32aa0c7d53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4998531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5094ab2a991277915213742f0137d04678f4d82329d782318cb6ec3ec97aac2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:02:00 GMT
ENV _BASH_VERSION=4.0
# Fri, 08 Mar 2019 04:02:01 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 04:02:02 GMT
ENV _BASH_LATEST_PATCH=44
# Fri, 08 Mar 2019 04:04:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		autoconf 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:05:00 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:05:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:05:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fec2259a7b61880c594aabdec8745443019361895045a09b8b74c67dd0725c`  
		Last Modified: Fri, 08 Mar 2019 04:14:34 GMT  
		Size: 2.3 MB (2310243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a97845f220befc3dcc42f15cd5ce924e354ec13efda7cb0d797ae787255d122`  
		Last Modified: Fri, 08 Mar 2019 04:14:33 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.0` - linux; 386

```console
$ docker pull bash@sha256:2056c79bd742e6c7ad719a04a9a4776ea04c756d2301696f0dbf2da46dfd8799
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5016769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3362ee1757252629ad0e46901507624dd7afe063f84de129fc24bc16d510b63f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:59:38 GMT
ENV _BASH_VERSION=4.0
# Fri, 08 Mar 2019 03:59:38 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:59:39 GMT
ENV _BASH_LATEST_PATCH=44
# Fri, 08 Mar 2019 04:01:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		autoconf 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:01:26 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:01:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:01:26 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8f7efce7baa4afee7f6ae7415bc6169fd9eb14ad6491cec229e66f970f4e99`  
		Last Modified: Fri, 08 Mar 2019 04:08:22 GMT  
		Size: 2.3 MB (2267068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c16869b8691ef9ee26504b7028e3ef0999758776243b2d477bd04c1dcfa998`  
		Last Modified: Fri, 08 Mar 2019 04:08:21 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.0` - linux; ppc64le

```console
$ docker pull bash@sha256:878104bdb8f12838fc2bf73c982db09bacb8645f556812ccbcd0818fa7465398
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4299163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d6a035759b4d330c363820b786ba7201e07ed918b702b5133204b0a89dd13b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:03:50 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 21 Dec 2018 10:12:09 GMT
ENV _BASH_VERSION=4.0
# Fri, 21 Dec 2018 10:12:12 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 21 Dec 2018 10:12:15 GMT
ENV _BASH_LATEST_PATCH=44
# Fri, 21 Dec 2018 10:14:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		autoconf 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 21 Dec 2018 10:14:11 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:14:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:14:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5eb4f25943645531da296bed92e1ae1ab46b25814f3aa1272bd97ef55ab6168`  
		Last Modified: Fri, 21 Dec 2018 10:24:45 GMT  
		Size: 2.1 MB (2103866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bf06a11485533c4053ec9790ff931ad9fa3d5831a58ae9122992cb1e031872`  
		Last Modified: Fri, 21 Dec 2018 10:24:40 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.0` - linux; s390x

```console
$ docker pull bash@sha256:4e0239a4fb0763a14c7695f3629c1795b1037fb61d1837b50b353011044af8dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4865368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:045e9902c424cd8d6b40d3311723a849b9b627bb048b352ed3626c6aa764895f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:56:35 GMT
ENV _BASH_VERSION=4.0
# Fri, 08 Mar 2019 03:56:35 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:56:35 GMT
ENV _BASH_LATEST_PATCH=44
# Fri, 08 Mar 2019 03:57:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		autoconf 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:57:35 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:57:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:57:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9b392bb44fd8b22d2ba4cb9789556679c1e35fcaa30303c946017ca32cd79e`  
		Last Modified: Fri, 08 Mar 2019 04:03:50 GMT  
		Size: 2.3 MB (2323713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87cc043b3f63a91f8e6fc71f08a55455b6f4a7b7d9d1e485703d44577d082c`  
		Last Modified: Fri, 08 Mar 2019 04:03:50 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.0.44`

```console
$ docker pull bash@sha256:6a6332a883c9304f033905519bf2df6e85931bbb8779642be47da9b6231d777d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:4.0.44` - linux; amd64

```console
$ docker pull bash@sha256:98b97424f93cc262ea78768b6977d442fd9ee08c08d1f22ad47c78c7873caf36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5060822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cee41c5e558a49815eb34cd1d114f404996f2fdc3e4d00dc876f609dc101b726`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 23:00:46 GMT
ENV _BASH_VERSION=4.0
# Thu, 07 Mar 2019 23:00:46 GMT
ENV _BASH_PATCH_LEVEL=0
# Thu, 07 Mar 2019 23:00:46 GMT
ENV _BASH_LATEST_PATCH=44
# Thu, 07 Mar 2019 23:01:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		autoconf 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 23:01:53 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:01:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:01:54 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bc88f496e9fe6b46431da55a62e9320b2efa5ddcee14bfd58619679e90b054`  
		Last Modified: Thu, 07 Mar 2019 23:08:42 GMT  
		Size: 2.3 MB (2305745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4074ed52711a34b54179193220027a31fa1209a16c7881374c67e0f0cd81e87`  
		Last Modified: Thu, 07 Mar 2019 23:08:41 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.0.44` - linux; arm variant v6

```console
$ docker pull bash@sha256:6b5d2106675c0ca4831fe8bbfa24022e324bf6eff1e860cbb6a2fee57a9afdd0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4768744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be3a4dfe2f278d373a9059e9b2b0d03145ae12dec71b4fcedbe7d1a4f66dcd0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:57:51 GMT
ENV _BASH_VERSION=4.0
# Fri, 08 Mar 2019 03:57:51 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:57:51 GMT
ENV _BASH_LATEST_PATCH=44
# Fri, 08 Mar 2019 03:59:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		autoconf 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:59:25 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:59:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:59:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57898fbdb1528e638c957913f7a8aeeaf80a26e9996626a0a788abc3726d364d`  
		Last Modified: Fri, 08 Mar 2019 04:06:51 GMT  
		Size: 2.2 MB (2227723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4cd0662c1d9b8dbe570678a2eac4299b8f6b7be38bc8c39a23cc5cee8430dfa`  
		Last Modified: Fri, 08 Mar 2019 04:06:49 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.0.44` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:7d98ea696a003532d528a72dfbe26eae66e95af17c77109bfc1fce32aa0c7d53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4998531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5094ab2a991277915213742f0137d04678f4d82329d782318cb6ec3ec97aac2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:02:00 GMT
ENV _BASH_VERSION=4.0
# Fri, 08 Mar 2019 04:02:01 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 04:02:02 GMT
ENV _BASH_LATEST_PATCH=44
# Fri, 08 Mar 2019 04:04:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		autoconf 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:05:00 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:05:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:05:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21fec2259a7b61880c594aabdec8745443019361895045a09b8b74c67dd0725c`  
		Last Modified: Fri, 08 Mar 2019 04:14:34 GMT  
		Size: 2.3 MB (2310243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a97845f220befc3dcc42f15cd5ce924e354ec13efda7cb0d797ae787255d122`  
		Last Modified: Fri, 08 Mar 2019 04:14:33 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.0.44` - linux; 386

```console
$ docker pull bash@sha256:2056c79bd742e6c7ad719a04a9a4776ea04c756d2301696f0dbf2da46dfd8799
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5016769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3362ee1757252629ad0e46901507624dd7afe063f84de129fc24bc16d510b63f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:59:38 GMT
ENV _BASH_VERSION=4.0
# Fri, 08 Mar 2019 03:59:38 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:59:39 GMT
ENV _BASH_LATEST_PATCH=44
# Fri, 08 Mar 2019 04:01:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		autoconf 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:01:26 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:01:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:01:26 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8f7efce7baa4afee7f6ae7415bc6169fd9eb14ad6491cec229e66f970f4e99`  
		Last Modified: Fri, 08 Mar 2019 04:08:22 GMT  
		Size: 2.3 MB (2267068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c16869b8691ef9ee26504b7028e3ef0999758776243b2d477bd04c1dcfa998`  
		Last Modified: Fri, 08 Mar 2019 04:08:21 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.0.44` - linux; ppc64le

```console
$ docker pull bash@sha256:878104bdb8f12838fc2bf73c982db09bacb8645f556812ccbcd0818fa7465398
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4299163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d6a035759b4d330c363820b786ba7201e07ed918b702b5133204b0a89dd13b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:03:50 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 21 Dec 2018 10:12:09 GMT
ENV _BASH_VERSION=4.0
# Fri, 21 Dec 2018 10:12:12 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 21 Dec 2018 10:12:15 GMT
ENV _BASH_LATEST_PATCH=44
# Fri, 21 Dec 2018 10:14:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		autoconf 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 21 Dec 2018 10:14:11 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 21 Dec 2018 10:14:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:14:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5eb4f25943645531da296bed92e1ae1ab46b25814f3aa1272bd97ef55ab6168`  
		Last Modified: Fri, 21 Dec 2018 10:24:45 GMT  
		Size: 2.1 MB (2103866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bf06a11485533c4053ec9790ff931ad9fa3d5831a58ae9122992cb1e031872`  
		Last Modified: Fri, 21 Dec 2018 10:24:40 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.0.44` - linux; s390x

```console
$ docker pull bash@sha256:4e0239a4fb0763a14c7695f3629c1795b1037fb61d1837b50b353011044af8dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4865368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:045e9902c424cd8d6b40d3311723a849b9b627bb048b352ed3626c6aa764895f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:56:35 GMT
ENV _BASH_VERSION=4.0
# Fri, 08 Mar 2019 03:56:35 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:56:35 GMT
ENV _BASH_LATEST_PATCH=44
# Fri, 08 Mar 2019 03:57:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		autoconf 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make y.tab.c; make builtins/libbuiltins.a; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:57:35 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:57:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:57:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9b392bb44fd8b22d2ba4cb9789556679c1e35fcaa30303c946017ca32cd79e`  
		Last Modified: Fri, 08 Mar 2019 04:03:50 GMT  
		Size: 2.3 MB (2323713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87cc043b3f63a91f8e6fc71f08a55455b6f4a7b7d9d1e485703d44577d082c`  
		Last Modified: Fri, 08 Mar 2019 04:03:50 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.1`

```console
$ docker pull bash@sha256:acb37bee5bbc759e683b4b5a383ed97ebfa96786caa1a739d0ff07a4faa1efb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:4.1` - linux; amd64

```console
$ docker pull bash@sha256:b42a3620a3f4a6d2604bb44b0ce89dfec43e2ba92e0bfe29554b69c9e11a895d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5087970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17a43d2cdb93fe86c213cee536490e05e292fc6ee081bc6f03885037489d0de7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 22:59:32 GMT
ENV _BASH_VERSION=4.1
# Thu, 07 Mar 2019 22:59:32 GMT
ENV _BASH_PATCH_LEVEL=0
# Thu, 07 Mar 2019 22:59:33 GMT
ENV _BASH_LATEST_PATCH=17
# Thu, 07 Mar 2019 23:00:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 23:00:38 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:00:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:00:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbfc85f926bf97937089138de0d5534b2e4493b6e775f9240814bc74fe3e0b0`  
		Last Modified: Thu, 07 Mar 2019 23:08:38 GMT  
		Size: 2.3 MB (2332893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450ea37301417c15f29128b7815eed4791dbafd5d06c73ac94627d96dfa0c3ab`  
		Last Modified: Thu, 07 Mar 2019 23:08:38 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.1` - linux; arm variant v6

```console
$ docker pull bash@sha256:2417de4b0b55ff615aa140d51202feb52438d65130a02b15edf6daf6d9745043
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4797147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ce43fb889a6c6d3fbedd5fe6f58eabb79e0c3e9a2d35ce413fad8dac2b339a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:56:14 GMT
ENV _BASH_VERSION=4.1
# Fri, 08 Mar 2019 03:56:15 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:56:15 GMT
ENV _BASH_LATEST_PATCH=17
# Fri, 08 Mar 2019 03:57:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:57:44 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:57:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:57:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1aa99caa6ca408d257e06cb2e70665105ff8162cd80e27a9ee95618f1f0ea91`  
		Last Modified: Fri, 08 Mar 2019 04:06:44 GMT  
		Size: 2.3 MB (2256126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a18e49affc733141679b1628c39eb2d85d59d310e00e887fb940d6615e6d4f`  
		Last Modified: Fri, 08 Mar 2019 04:06:43 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.1` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:479afd3aeca13f3099b0c32bc6c9f49d3bca6fb0238aa1a4524a418eac52235e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5033488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1108d864f8b90508c16e413eda7c24888ac078e0844121f4580f86789bc7442c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:00:18 GMT
ENV _BASH_VERSION=4.1
# Fri, 08 Mar 2019 04:00:19 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 04:00:20 GMT
ENV _BASH_LATEST_PATCH=17
# Fri, 08 Mar 2019 04:01:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:01:42 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:01:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:01:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff7774edc94a1a144dc0621f828a9a89657e1a65cf8539fa3edcaec0047af9e`  
		Last Modified: Fri, 08 Mar 2019 04:14:26 GMT  
		Size: 2.3 MB (2345201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e79bdca10a5800cc7a7e026a50d7197da416a0cbf8755dff28b5b244288a66`  
		Last Modified: Fri, 08 Mar 2019 04:14:24 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.1` - linux; 386

```console
$ docker pull bash@sha256:9f08520de101de467f5a2ec935f11f68327633ba347a8c2f5eb868bccd519c9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5041171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59352cdbd091c076239573951dac67c606390ed7eeeafa447af51dfb136c4c56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:58:10 GMT
ENV _BASH_VERSION=4.1
# Fri, 08 Mar 2019 03:58:10 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:58:10 GMT
ENV _BASH_LATEST_PATCH=17
# Fri, 08 Mar 2019 03:59:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:59:23 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:59:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:59:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a494d735e727d1444804ec4c5aa024ba8773211c71d35da493b09aa96f0dc5`  
		Last Modified: Fri, 08 Mar 2019 04:08:18 GMT  
		Size: 2.3 MB (2291468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa4a31780ac00022bcfa3d3d767c8183ccfd2f1eb813fb91b41273529da1dd2`  
		Last Modified: Fri, 08 Mar 2019 04:08:17 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.1` - linux; ppc64le

```console
$ docker pull bash@sha256:b4f415c6c117bc8f332394e95620e0f45d526d500d51ab1b397d4da4ec826ac0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5249616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d7a50980417e4fc08116598561252801ab9da69d973fd0b210b1028639cac40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:25:27 GMT
ENV _BASH_VERSION=4.1
# Wed, 06 Feb 2019 09:25:29 GMT
ENV _BASH_PATCH_LEVEL=0
# Wed, 06 Feb 2019 09:25:30 GMT
ENV _BASH_LATEST_PATCH=17
# Wed, 06 Feb 2019 09:26:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:26:30 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:26:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:26:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85988df6a27f8f2506825b8802f761f8549d70e53b3c5dbe69c0634b63544923`  
		Last Modified: Wed, 06 Feb 2019 09:40:48 GMT  
		Size: 2.5 MB (2470429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f1170c6b6ff0d7efd39d942b4267ae4386a9fc995d5abac5aafd6a9f26b33f`  
		Last Modified: Wed, 06 Feb 2019 09:40:45 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.1` - linux; s390x

```console
$ docker pull bash@sha256:1561cb7360973ad590caa03905ab1ac3d6f038739c3a3f92eadd51101d0b92c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4898281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbcf83b43238f9fb76902895b45418cba85cb5fe3c488715c51e38665d1b1331`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:55:49 GMT
ENV _BASH_VERSION=4.1
# Fri, 08 Mar 2019 03:55:49 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:55:49 GMT
ENV _BASH_LATEST_PATCH=17
# Fri, 08 Mar 2019 03:56:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:56:26 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:56:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:56:26 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345adfe0e43b7c3066f3f85663114fb1cf5c906118e24ac595dc713c5bd78664`  
		Last Modified: Fri, 08 Mar 2019 04:03:46 GMT  
		Size: 2.4 MB (2356628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c10d159fad3120c4c04d3004afa44c0e36f926042f8896b28735f8e5c2b528`  
		Last Modified: Fri, 08 Mar 2019 04:03:45 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.1.17`

```console
$ docker pull bash@sha256:acb37bee5bbc759e683b4b5a383ed97ebfa96786caa1a739d0ff07a4faa1efb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:4.1.17` - linux; amd64

```console
$ docker pull bash@sha256:b42a3620a3f4a6d2604bb44b0ce89dfec43e2ba92e0bfe29554b69c9e11a895d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5087970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17a43d2cdb93fe86c213cee536490e05e292fc6ee081bc6f03885037489d0de7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 22:59:32 GMT
ENV _BASH_VERSION=4.1
# Thu, 07 Mar 2019 22:59:32 GMT
ENV _BASH_PATCH_LEVEL=0
# Thu, 07 Mar 2019 22:59:33 GMT
ENV _BASH_LATEST_PATCH=17
# Thu, 07 Mar 2019 23:00:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 23:00:38 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 23:00:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:00:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbfc85f926bf97937089138de0d5534b2e4493b6e775f9240814bc74fe3e0b0`  
		Last Modified: Thu, 07 Mar 2019 23:08:38 GMT  
		Size: 2.3 MB (2332893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450ea37301417c15f29128b7815eed4791dbafd5d06c73ac94627d96dfa0c3ab`  
		Last Modified: Thu, 07 Mar 2019 23:08:38 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.1.17` - linux; arm variant v6

```console
$ docker pull bash@sha256:2417de4b0b55ff615aa140d51202feb52438d65130a02b15edf6daf6d9745043
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4797147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ce43fb889a6c6d3fbedd5fe6f58eabb79e0c3e9a2d35ce413fad8dac2b339a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:56:14 GMT
ENV _BASH_VERSION=4.1
# Fri, 08 Mar 2019 03:56:15 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:56:15 GMT
ENV _BASH_LATEST_PATCH=17
# Fri, 08 Mar 2019 03:57:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:57:44 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:57:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:57:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1aa99caa6ca408d257e06cb2e70665105ff8162cd80e27a9ee95618f1f0ea91`  
		Last Modified: Fri, 08 Mar 2019 04:06:44 GMT  
		Size: 2.3 MB (2256126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a18e49affc733141679b1628c39eb2d85d59d310e00e887fb940d6615e6d4f`  
		Last Modified: Fri, 08 Mar 2019 04:06:43 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.1.17` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:479afd3aeca13f3099b0c32bc6c9f49d3bca6fb0238aa1a4524a418eac52235e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5033488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1108d864f8b90508c16e413eda7c24888ac078e0844121f4580f86789bc7442c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 04:00:18 GMT
ENV _BASH_VERSION=4.1
# Fri, 08 Mar 2019 04:00:19 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 04:00:20 GMT
ENV _BASH_LATEST_PATCH=17
# Fri, 08 Mar 2019 04:01:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:01:42 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:01:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:01:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff7774edc94a1a144dc0621f828a9a89657e1a65cf8539fa3edcaec0047af9e`  
		Last Modified: Fri, 08 Mar 2019 04:14:26 GMT  
		Size: 2.3 MB (2345201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e79bdca10a5800cc7a7e026a50d7197da416a0cbf8755dff28b5b244288a66`  
		Last Modified: Fri, 08 Mar 2019 04:14:24 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.1.17` - linux; 386

```console
$ docker pull bash@sha256:9f08520de101de467f5a2ec935f11f68327633ba347a8c2f5eb868bccd519c9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5041171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59352cdbd091c076239573951dac67c606390ed7eeeafa447af51dfb136c4c56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:58:10 GMT
ENV _BASH_VERSION=4.1
# Fri, 08 Mar 2019 03:58:10 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:58:10 GMT
ENV _BASH_LATEST_PATCH=17
# Fri, 08 Mar 2019 03:59:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:59:23 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:59:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:59:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a494d735e727d1444804ec4c5aa024ba8773211c71d35da493b09aa96f0dc5`  
		Last Modified: Fri, 08 Mar 2019 04:08:18 GMT  
		Size: 2.3 MB (2291468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa4a31780ac00022bcfa3d3d767c8183ccfd2f1eb813fb91b41273529da1dd2`  
		Last Modified: Fri, 08 Mar 2019 04:08:17 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.1.17` - linux; ppc64le

```console
$ docker pull bash@sha256:b4f415c6c117bc8f332394e95620e0f45d526d500d51ab1b397d4da4ec826ac0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5249616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d7a50980417e4fc08116598561252801ab9da69d973fd0b210b1028639cac40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:25:27 GMT
ENV _BASH_VERSION=4.1
# Wed, 06 Feb 2019 09:25:29 GMT
ENV _BASH_PATCH_LEVEL=0
# Wed, 06 Feb 2019 09:25:30 GMT
ENV _BASH_LATEST_PATCH=17
# Wed, 06 Feb 2019 09:26:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:26:30 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:26:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:26:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85988df6a27f8f2506825b8802f761f8549d70e53b3c5dbe69c0634b63544923`  
		Last Modified: Wed, 06 Feb 2019 09:40:48 GMT  
		Size: 2.5 MB (2470429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f1170c6b6ff0d7efd39d942b4267ae4386a9fc995d5abac5aafd6a9f26b33f`  
		Last Modified: Wed, 06 Feb 2019 09:40:45 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.1.17` - linux; s390x

```console
$ docker pull bash@sha256:1561cb7360973ad590caa03905ab1ac3d6f038739c3a3f92eadd51101d0b92c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4898281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbcf83b43238f9fb76902895b45418cba85cb5fe3c488715c51e38665d1b1331`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:55:49 GMT
ENV _BASH_VERSION=4.1
# Fri, 08 Mar 2019 03:55:49 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:55:49 GMT
ENV _BASH_LATEST_PATCH=17
# Fri, 08 Mar 2019 03:56:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:56:26 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:56:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:56:26 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345adfe0e43b7c3066f3f85663114fb1cf5c906118e24ac595dc713c5bd78664`  
		Last Modified: Fri, 08 Mar 2019 04:03:46 GMT  
		Size: 2.4 MB (2356628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c10d159fad3120c4c04d3004afa44c0e36f926042f8896b28735f8e5c2b528`  
		Last Modified: Fri, 08 Mar 2019 04:03:45 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.2`

```console
$ docker pull bash@sha256:38f7e5c4c005d4705b93cec54d7683548ce6d97450ddc5168f8202ef127c44c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:4.2` - linux; amd64

```console
$ docker pull bash@sha256:3144eaf1e8ac1fa0784bd2bfa3d7b8405cd0fe341d7e139ae48720974d92e5e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5138734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eabb6b25a8674f09e916b1c890479af1866ab1860001b964f84962dd2cc5596`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 22:58:39 GMT
ENV _BASH_VERSION=4.2
# Thu, 07 Mar 2019 22:58:39 GMT
ENV _BASH_PATCH_LEVEL=53
# Thu, 07 Mar 2019 22:58:39 GMT
ENV _BASH_LATEST_PATCH=53
# Thu, 07 Mar 2019 22:59:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 22:59:22 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 22:59:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 22:59:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992eebbb480a39a56673423cb0a722546994fda1381d82715e6ab31794f3f3a2`  
		Last Modified: Thu, 07 Mar 2019 23:08:35 GMT  
		Size: 2.4 MB (2383657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3130f6af6e6573835df5a979a70715cac49c70dfe9c94b8644f40f6a830537`  
		Last Modified: Thu, 07 Mar 2019 23:08:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.2` - linux; arm variant v6

```console
$ docker pull bash@sha256:322a65d7f2af396c4df4c9e78bfb890bcbc355c16eb13d029efd90b68b4d7231
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4845407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b77d4e84a5f101a2ed129719fdb0c25a6799460aeefc388e19e8be215fcb05c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:55:21 GMT
ENV _BASH_VERSION=4.2
# Fri, 08 Mar 2019 03:55:21 GMT
ENV _BASH_PATCH_LEVEL=53
# Fri, 08 Mar 2019 03:55:21 GMT
ENV _BASH_LATEST_PATCH=53
# Fri, 08 Mar 2019 03:56:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:56:04 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:56:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:56:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f762970a1b417d9eb382f2cd508688bb8dd743be69361cfed19baf993f552d3`  
		Last Modified: Fri, 08 Mar 2019 04:06:38 GMT  
		Size: 2.3 MB (2304388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f030f912d2938d1e223e504b09f2ad7859563ae2302188b9242628c6010e92`  
		Last Modified: Fri, 08 Mar 2019 04:06:37 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.2` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:6d88839ec956788993c9ca454e79fdfa597115dd4fd7122524dace800be6a043
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5087694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec458cc1230a72b4e78cf33a613347e5293a85e24b7975ba4033c29026a4fe29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:58:33 GMT
ENV _BASH_VERSION=4.2
# Fri, 08 Mar 2019 03:58:34 GMT
ENV _BASH_PATCH_LEVEL=53
# Fri, 08 Mar 2019 03:58:35 GMT
ENV _BASH_LATEST_PATCH=53
# Fri, 08 Mar 2019 04:00:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:00:09 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:00:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:00:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb814c21101febc0436bcf8607d84dd75e70537eb2a39857e27468f665d95437`  
		Last Modified: Fri, 08 Mar 2019 04:14:17 GMT  
		Size: 2.4 MB (2399407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e94945ab99afaf57cb0db41bf4fdef02807f210156404041bb43a32cf3c91a`  
		Last Modified: Fri, 08 Mar 2019 04:14:16 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.2` - linux; 386

```console
$ docker pull bash@sha256:0171a20436652a902ea975be759bc9ea062e81fa983ec4dd3ec0ceb341e042d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5089857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01dbeb52512bb804a5decd05fc4807e792c48590e11427b1ca4bb47666169ee9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:56:56 GMT
ENV _BASH_VERSION=4.2
# Fri, 08 Mar 2019 03:56:56 GMT
ENV _BASH_PATCH_LEVEL=53
# Fri, 08 Mar 2019 03:56:56 GMT
ENV _BASH_LATEST_PATCH=53
# Fri, 08 Mar 2019 03:58:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:58:05 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:58:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:58:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10aa4b2478ade11f910060fd39fd1c2f34934b7b962136d92c123f9583ca1c86`  
		Last Modified: Fri, 08 Mar 2019 04:08:13 GMT  
		Size: 2.3 MB (2340154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fd77cccbe4f96e533f0018f41013f9fca310c2677cf7df56303c8968204b2e`  
		Last Modified: Fri, 08 Mar 2019 04:08:13 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.2` - linux; ppc64le

```console
$ docker pull bash@sha256:9e18734a8a0599f7940b1614a944920bfd594564550e4e4fe600d88bd38fd422
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5303881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da194727d260d1dbfa7de3207df95e954840cd695aa3ede88693fabe0ed52b83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:24:14 GMT
ENV _BASH_VERSION=4.2
# Wed, 06 Feb 2019 09:24:19 GMT
ENV _BASH_PATCH_LEVEL=53
# Wed, 06 Feb 2019 09:24:21 GMT
ENV _BASH_LATEST_PATCH=53
# Wed, 06 Feb 2019 09:25:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:25:06 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:25:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:25:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ef9ede94038e54634408f7cb462e68a519fcbad70fa7507cdc0dad7e7e2687`  
		Last Modified: Wed, 06 Feb 2019 09:40:36 GMT  
		Size: 2.5 MB (2524695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555f714ba54e2e69546d2bd67ca1aeff1dce77ea445c8efc1d323f1919776b29`  
		Last Modified: Wed, 06 Feb 2019 09:40:35 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.2` - linux; s390x

```console
$ docker pull bash@sha256:127c6f4ee441ff931a6e184abb0e5438e1e2cfd17ee633f1b291cc358ca1792a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4950919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1621e53128a77e5991928a66fe01eec7f41d2152ee199a3f6041f74336fc1b91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:55:15 GMT
ENV _BASH_VERSION=4.2
# Fri, 08 Mar 2019 03:55:15 GMT
ENV _BASH_PATCH_LEVEL=53
# Fri, 08 Mar 2019 03:55:15 GMT
ENV _BASH_LATEST_PATCH=53
# Fri, 08 Mar 2019 03:55:45 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:55:45 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:55:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:55:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7a97de4e8317a8ffae55edf987d9850aaaac28d03d464176ace7a8975dca86`  
		Last Modified: Fri, 08 Mar 2019 04:03:42 GMT  
		Size: 2.4 MB (2409266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aa50e2ff324e1b2180874aa892e8c15df68407eb40e50be60eb186041f634c`  
		Last Modified: Fri, 08 Mar 2019 04:03:41 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.2.53`

```console
$ docker pull bash@sha256:38f7e5c4c005d4705b93cec54d7683548ce6d97450ddc5168f8202ef127c44c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:4.2.53` - linux; amd64

```console
$ docker pull bash@sha256:3144eaf1e8ac1fa0784bd2bfa3d7b8405cd0fe341d7e139ae48720974d92e5e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5138734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eabb6b25a8674f09e916b1c890479af1866ab1860001b964f84962dd2cc5596`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 22:58:39 GMT
ENV _BASH_VERSION=4.2
# Thu, 07 Mar 2019 22:58:39 GMT
ENV _BASH_PATCH_LEVEL=53
# Thu, 07 Mar 2019 22:58:39 GMT
ENV _BASH_LATEST_PATCH=53
# Thu, 07 Mar 2019 22:59:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 22:59:22 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 22:59:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 22:59:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992eebbb480a39a56673423cb0a722546994fda1381d82715e6ab31794f3f3a2`  
		Last Modified: Thu, 07 Mar 2019 23:08:35 GMT  
		Size: 2.4 MB (2383657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3130f6af6e6573835df5a979a70715cac49c70dfe9c94b8644f40f6a830537`  
		Last Modified: Thu, 07 Mar 2019 23:08:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.2.53` - linux; arm variant v6

```console
$ docker pull bash@sha256:322a65d7f2af396c4df4c9e78bfb890bcbc355c16eb13d029efd90b68b4d7231
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4845407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b77d4e84a5f101a2ed129719fdb0c25a6799460aeefc388e19e8be215fcb05c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:55:21 GMT
ENV _BASH_VERSION=4.2
# Fri, 08 Mar 2019 03:55:21 GMT
ENV _BASH_PATCH_LEVEL=53
# Fri, 08 Mar 2019 03:55:21 GMT
ENV _BASH_LATEST_PATCH=53
# Fri, 08 Mar 2019 03:56:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:56:04 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:56:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:56:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f762970a1b417d9eb382f2cd508688bb8dd743be69361cfed19baf993f552d3`  
		Last Modified: Fri, 08 Mar 2019 04:06:38 GMT  
		Size: 2.3 MB (2304388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f030f912d2938d1e223e504b09f2ad7859563ae2302188b9242628c6010e92`  
		Last Modified: Fri, 08 Mar 2019 04:06:37 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.2.53` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:6d88839ec956788993c9ca454e79fdfa597115dd4fd7122524dace800be6a043
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5087694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec458cc1230a72b4e78cf33a613347e5293a85e24b7975ba4033c29026a4fe29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:58:33 GMT
ENV _BASH_VERSION=4.2
# Fri, 08 Mar 2019 03:58:34 GMT
ENV _BASH_PATCH_LEVEL=53
# Fri, 08 Mar 2019 03:58:35 GMT
ENV _BASH_LATEST_PATCH=53
# Fri, 08 Mar 2019 04:00:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 04:00:09 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:00:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:00:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb814c21101febc0436bcf8607d84dd75e70537eb2a39857e27468f665d95437`  
		Last Modified: Fri, 08 Mar 2019 04:14:17 GMT  
		Size: 2.4 MB (2399407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e94945ab99afaf57cb0db41bf4fdef02807f210156404041bb43a32cf3c91a`  
		Last Modified: Fri, 08 Mar 2019 04:14:16 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.2.53` - linux; 386

```console
$ docker pull bash@sha256:0171a20436652a902ea975be759bc9ea062e81fa983ec4dd3ec0ceb341e042d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5089857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01dbeb52512bb804a5decd05fc4807e792c48590e11427b1ca4bb47666169ee9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:56:56 GMT
ENV _BASH_VERSION=4.2
# Fri, 08 Mar 2019 03:56:56 GMT
ENV _BASH_PATCH_LEVEL=53
# Fri, 08 Mar 2019 03:56:56 GMT
ENV _BASH_LATEST_PATCH=53
# Fri, 08 Mar 2019 03:58:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:58:05 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:58:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:58:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10aa4b2478ade11f910060fd39fd1c2f34934b7b962136d92c123f9583ca1c86`  
		Last Modified: Fri, 08 Mar 2019 04:08:13 GMT  
		Size: 2.3 MB (2340154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fd77cccbe4f96e533f0018f41013f9fca310c2677cf7df56303c8968204b2e`  
		Last Modified: Fri, 08 Mar 2019 04:08:13 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.2.53` - linux; ppc64le

```console
$ docker pull bash@sha256:9e18734a8a0599f7940b1614a944920bfd594564550e4e4fe600d88bd38fd422
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5303881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da194727d260d1dbfa7de3207df95e954840cd695aa3ede88693fabe0ed52b83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:24:14 GMT
ENV _BASH_VERSION=4.2
# Wed, 06 Feb 2019 09:24:19 GMT
ENV _BASH_PATCH_LEVEL=53
# Wed, 06 Feb 2019 09:24:21 GMT
ENV _BASH_LATEST_PATCH=53
# Wed, 06 Feb 2019 09:25:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:25:06 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:25:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:25:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ef9ede94038e54634408f7cb462e68a519fcbad70fa7507cdc0dad7e7e2687`  
		Last Modified: Wed, 06 Feb 2019 09:40:36 GMT  
		Size: 2.5 MB (2524695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555f714ba54e2e69546d2bd67ca1aeff1dce77ea445c8efc1d323f1919776b29`  
		Last Modified: Wed, 06 Feb 2019 09:40:35 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.2.53` - linux; s390x

```console
$ docker pull bash@sha256:127c6f4ee441ff931a6e184abb0e5438e1e2cfd17ee633f1b291cc358ca1792a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4950919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1621e53128a77e5991928a66fe01eec7f41d2152ee199a3f6041f74336fc1b91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:55:15 GMT
ENV _BASH_VERSION=4.2
# Fri, 08 Mar 2019 03:55:15 GMT
ENV _BASH_PATCH_LEVEL=53
# Fri, 08 Mar 2019 03:55:15 GMT
ENV _BASH_LATEST_PATCH=53
# Fri, 08 Mar 2019 03:55:45 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:55:45 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:55:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:55:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7a97de4e8317a8ffae55edf987d9850aaaac28d03d464176ace7a8975dca86`  
		Last Modified: Fri, 08 Mar 2019 04:03:42 GMT  
		Size: 2.4 MB (2409266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aa50e2ff324e1b2180874aa892e8c15df68407eb40e50be60eb186041f634c`  
		Last Modified: Fri, 08 Mar 2019 04:03:41 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.3`

```console
$ docker pull bash@sha256:2ca3cb78a18cf13442318e0531aa9f9e7ad19da9e48927cf1e181f768107cc82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:4.3` - linux; amd64

```console
$ docker pull bash@sha256:4e64dcd04368d55a0335c1b833eaacf40032a3824a6db26c2e6d97bd033ab56d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5413678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea1f2a472af2001b26178ac22edec2443f6b359623ba7106165cdf08a319759a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 22:57:37 GMT
ENV _BASH_VERSION=4.3
# Thu, 07 Mar 2019 22:57:37 GMT
ENV _BASH_PATCH_LEVEL=30
# Thu, 07 Mar 2019 22:57:38 GMT
ENV _BASH_LATEST_PATCH=48
# Thu, 07 Mar 2019 22:58:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 22:58:36 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 22:58:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 22:58:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da07211f3f7441d4f70618de873f5f7c834f0f0d7e4b5688ad81d975868ab179`  
		Last Modified: Thu, 07 Mar 2019 23:08:31 GMT  
		Size: 2.7 MB (2658601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509e3f7e0085d523d911933ad277de6e97df319d1726d0f4f8cd0fda2f94365e`  
		Last Modified: Thu, 07 Mar 2019 23:08:31 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.3` - linux; arm variant v6

```console
$ docker pull bash@sha256:08dc322ed69f5800bedfb6bdceee26c1b96fd78f76efd21b0dbdaa02114516d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5116812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0d80e576508f31567f7710931d178f053b5c8522740872ead7464357500c52b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:54:18 GMT
ENV _BASH_VERSION=4.3
# Fri, 08 Mar 2019 03:54:18 GMT
ENV _BASH_PATCH_LEVEL=30
# Fri, 08 Mar 2019 03:54:18 GMT
ENV _BASH_LATEST_PATCH=48
# Fri, 08 Mar 2019 03:55:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:55:10 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:55:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:55:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde4c38b29921707806160b65b4f4247cf7f7493bf85c31f42f0ef6cfac97736`  
		Last Modified: Fri, 08 Mar 2019 04:06:33 GMT  
		Size: 2.6 MB (2575790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7764f7443a7c715fa2406caea9e35be7d75ac5dfec28ef806237c245817613e2`  
		Last Modified: Fri, 08 Mar 2019 04:06:31 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.3` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:85dbe50a11b1639ce59cf4c560713c7195240e193bb1875dc594ddce617b2ee5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15a3d718b130ee5e6c5281a3ad61fbab419d08ff06a8801c4322c38c2e1c76c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:57:06 GMT
ENV _BASH_VERSION=4.3
# Fri, 08 Mar 2019 03:57:07 GMT
ENV _BASH_PATCH_LEVEL=30
# Fri, 08 Mar 2019 03:57:07 GMT
ENV _BASH_LATEST_PATCH=48
# Fri, 08 Mar 2019 03:58:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:58:27 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:58:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:58:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7da7c0b4ec41f258f6320da666b8152ba5ec85cf3167fd9ac2ca4bd6cae8b90`  
		Last Modified: Fri, 08 Mar 2019 04:14:08 GMT  
		Size: 2.7 MB (2667664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae34c57c9df6ddc85f307f4cadb72058d284634fca20fa61262560391bf777c`  
		Last Modified: Fri, 08 Mar 2019 04:14:06 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.3` - linux; 386

```console
$ docker pull bash@sha256:5b2b38b73e55261af374113574f8fa2591be37fa2d458fd4c71c8e191b4f1e34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5363096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:285044cc0997d516aab4683163f39597fff58998c991f9cb970936fe1cce8a7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:55:27 GMT
ENV _BASH_VERSION=4.3
# Fri, 08 Mar 2019 03:55:28 GMT
ENV _BASH_PATCH_LEVEL=30
# Fri, 08 Mar 2019 03:55:28 GMT
ENV _BASH_LATEST_PATCH=48
# Fri, 08 Mar 2019 03:56:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:56:42 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:56:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:56:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f8f6ad2ba9efe2770d67765cd2ecfe1b4c453612d4efe789899e1bb3f91587`  
		Last Modified: Fri, 08 Mar 2019 04:08:09 GMT  
		Size: 2.6 MB (2613393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a52e516ec3f44b91b10eb5a221cf09f864528b0a0597b80fe6275367166475`  
		Last Modified: Fri, 08 Mar 2019 04:08:08 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.3` - linux; ppc64le

```console
$ docker pull bash@sha256:673ea09ddeea8d03e40d89906d9501db1d2c357a792771e420c27a05526a9b74
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5577077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e71ba374c5bb00f85332d27a61d2da219aac699012d7e50c625e933d3dc2b20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:18:50 GMT
ENV _BASH_VERSION=4.3
# Wed, 06 Feb 2019 09:18:54 GMT
ENV _BASH_PATCH_LEVEL=30
# Wed, 06 Feb 2019 09:18:56 GMT
ENV _BASH_LATEST_PATCH=48
# Wed, 06 Feb 2019 09:19:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:24:01 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:24:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:24:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149ccba03945370cf08e0263cd819e26991856c5fc506e0420aefde8a7b5524c`  
		Last Modified: Wed, 06 Feb 2019 09:40:23 GMT  
		Size: 2.8 MB (2797887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab1c1a35bcbea80a1e2fc5284991e9e36121f24255d52b2688b0b8ad37be7ca`  
		Last Modified: Wed, 06 Feb 2019 09:40:18 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.3` - linux; s390x

```console
$ docker pull bash@sha256:7c6ac35a37ff8b736066ca351aa680cd2ca957facfeaa4336e9d469f8b416e28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5215250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b06786c346cba63ed85547f00066ae5b4a4e90a87b34ff40e70796dacc008051`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:54:35 GMT
ENV _BASH_VERSION=4.3
# Fri, 08 Mar 2019 03:54:36 GMT
ENV _BASH_PATCH_LEVEL=30
# Fri, 08 Mar 2019 03:54:36 GMT
ENV _BASH_LATEST_PATCH=48
# Fri, 08 Mar 2019 03:55:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:55:08 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:55:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:55:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad2103dfe7d40a8a335ca98eccb1519792ee1c23e8883b571a23d2dcce90e34`  
		Last Modified: Fri, 08 Mar 2019 04:03:37 GMT  
		Size: 2.7 MB (2673597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431f3cb3aa4a4246b2b7b8a288cd25e35a513e34c14a8c8a6e9d87925309ec95`  
		Last Modified: Fri, 08 Mar 2019 04:03:36 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.3.48`

```console
$ docker pull bash@sha256:2ca3cb78a18cf13442318e0531aa9f9e7ad19da9e48927cf1e181f768107cc82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:4.3.48` - linux; amd64

```console
$ docker pull bash@sha256:4e64dcd04368d55a0335c1b833eaacf40032a3824a6db26c2e6d97bd033ab56d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5413678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea1f2a472af2001b26178ac22edec2443f6b359623ba7106165cdf08a319759a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 22:57:37 GMT
ENV _BASH_VERSION=4.3
# Thu, 07 Mar 2019 22:57:37 GMT
ENV _BASH_PATCH_LEVEL=30
# Thu, 07 Mar 2019 22:57:38 GMT
ENV _BASH_LATEST_PATCH=48
# Thu, 07 Mar 2019 22:58:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 22:58:36 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 22:58:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 22:58:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da07211f3f7441d4f70618de873f5f7c834f0f0d7e4b5688ad81d975868ab179`  
		Last Modified: Thu, 07 Mar 2019 23:08:31 GMT  
		Size: 2.7 MB (2658601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509e3f7e0085d523d911933ad277de6e97df319d1726d0f4f8cd0fda2f94365e`  
		Last Modified: Thu, 07 Mar 2019 23:08:31 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.3.48` - linux; arm variant v6

```console
$ docker pull bash@sha256:08dc322ed69f5800bedfb6bdceee26c1b96fd78f76efd21b0dbdaa02114516d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5116812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0d80e576508f31567f7710931d178f053b5c8522740872ead7464357500c52b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:54:18 GMT
ENV _BASH_VERSION=4.3
# Fri, 08 Mar 2019 03:54:18 GMT
ENV _BASH_PATCH_LEVEL=30
# Fri, 08 Mar 2019 03:54:18 GMT
ENV _BASH_LATEST_PATCH=48
# Fri, 08 Mar 2019 03:55:09 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:55:10 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:55:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:55:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde4c38b29921707806160b65b4f4247cf7f7493bf85c31f42f0ef6cfac97736`  
		Last Modified: Fri, 08 Mar 2019 04:06:33 GMT  
		Size: 2.6 MB (2575790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7764f7443a7c715fa2406caea9e35be7d75ac5dfec28ef806237c245817613e2`  
		Last Modified: Fri, 08 Mar 2019 04:06:31 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.3.48` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:85dbe50a11b1639ce59cf4c560713c7195240e193bb1875dc594ddce617b2ee5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5355950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15a3d718b130ee5e6c5281a3ad61fbab419d08ff06a8801c4322c38c2e1c76c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:57:06 GMT
ENV _BASH_VERSION=4.3
# Fri, 08 Mar 2019 03:57:07 GMT
ENV _BASH_PATCH_LEVEL=30
# Fri, 08 Mar 2019 03:57:07 GMT
ENV _BASH_LATEST_PATCH=48
# Fri, 08 Mar 2019 03:58:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:58:27 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:58:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:58:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7da7c0b4ec41f258f6320da666b8152ba5ec85cf3167fd9ac2ca4bd6cae8b90`  
		Last Modified: Fri, 08 Mar 2019 04:14:08 GMT  
		Size: 2.7 MB (2667664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae34c57c9df6ddc85f307f4cadb72058d284634fca20fa61262560391bf777c`  
		Last Modified: Fri, 08 Mar 2019 04:14:06 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.3.48` - linux; 386

```console
$ docker pull bash@sha256:5b2b38b73e55261af374113574f8fa2591be37fa2d458fd4c71c8e191b4f1e34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5363096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:285044cc0997d516aab4683163f39597fff58998c991f9cb970936fe1cce8a7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:55:27 GMT
ENV _BASH_VERSION=4.3
# Fri, 08 Mar 2019 03:55:28 GMT
ENV _BASH_PATCH_LEVEL=30
# Fri, 08 Mar 2019 03:55:28 GMT
ENV _BASH_LATEST_PATCH=48
# Fri, 08 Mar 2019 03:56:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:56:42 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:56:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:56:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f8f6ad2ba9efe2770d67765cd2ecfe1b4c453612d4efe789899e1bb3f91587`  
		Last Modified: Fri, 08 Mar 2019 04:08:09 GMT  
		Size: 2.6 MB (2613393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a52e516ec3f44b91b10eb5a221cf09f864528b0a0597b80fe6275367166475`  
		Last Modified: Fri, 08 Mar 2019 04:08:08 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.3.48` - linux; ppc64le

```console
$ docker pull bash@sha256:673ea09ddeea8d03e40d89906d9501db1d2c357a792771e420c27a05526a9b74
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5577077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e71ba374c5bb00f85332d27a61d2da219aac699012d7e50c625e933d3dc2b20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:18:50 GMT
ENV _BASH_VERSION=4.3
# Wed, 06 Feb 2019 09:18:54 GMT
ENV _BASH_PATCH_LEVEL=30
# Wed, 06 Feb 2019 09:18:56 GMT
ENV _BASH_LATEST_PATCH=48
# Wed, 06 Feb 2019 09:19:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:24:01 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:24:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:24:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149ccba03945370cf08e0263cd819e26991856c5fc506e0420aefde8a7b5524c`  
		Last Modified: Wed, 06 Feb 2019 09:40:23 GMT  
		Size: 2.8 MB (2797887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab1c1a35bcbea80a1e2fc5284991e9e36121f24255d52b2688b0b8ad37be7ca`  
		Last Modified: Wed, 06 Feb 2019 09:40:18 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.3.48` - linux; s390x

```console
$ docker pull bash@sha256:7c6ac35a37ff8b736066ca351aa680cd2ca957facfeaa4336e9d469f8b416e28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5215250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b06786c346cba63ed85547f00066ae5b4a4e90a87b34ff40e70796dacc008051`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:54:35 GMT
ENV _BASH_VERSION=4.3
# Fri, 08 Mar 2019 03:54:36 GMT
ENV _BASH_PATCH_LEVEL=30
# Fri, 08 Mar 2019 03:54:36 GMT
ENV _BASH_LATEST_PATCH=48
# Fri, 08 Mar 2019 03:55:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:55:08 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:55:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:55:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad2103dfe7d40a8a335ca98eccb1519792ee1c23e8883b571a23d2dcce90e34`  
		Last Modified: Fri, 08 Mar 2019 04:03:37 GMT  
		Size: 2.7 MB (2673597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:431f3cb3aa4a4246b2b7b8a288cd25e35a513e34c14a8c8a6e9d87925309ec95`  
		Last Modified: Fri, 08 Mar 2019 04:03:36 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.4`

```console
$ docker pull bash@sha256:81e2a3af9b8922f7afd5694222885dc884afee0df859b3dafbe7158540e34c6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:4.4` - linux; amd64

```console
$ docker pull bash@sha256:024e84052dceb0d8c5682a2147dc61693eff705812e9dbcffcdccd9f4a7ae15d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5739733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c8dee16af33d0525414fb54a456d2cc579896b8e9fa16e21bc389f85b13dd32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 22:56:22 GMT
ENV _BASH_VERSION=4.4
# Thu, 07 Mar 2019 22:56:23 GMT
ENV _BASH_PATCH_LEVEL=18
# Thu, 07 Mar 2019 22:56:23 GMT
ENV _BASH_LATEST_PATCH=23
# Thu, 07 Mar 2019 22:57:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 22:57:25 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 22:57:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 22:57:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7cf314be100814f178dfe095777944d7784d87ed0ebf90e65e34dcafd014bc`  
		Last Modified: Thu, 07 Mar 2019 23:08:27 GMT  
		Size: 3.0 MB (2984661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f7e8c7710031b76a8c21e091a002c6d1b3ab6c4b1a2d0f6dcf24df0ebcb0bf`  
		Last Modified: Thu, 07 Mar 2019 23:08:26 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.4` - linux; arm variant v6

```console
$ docker pull bash@sha256:d0c00e35e30993e7148cc859146bde5525ffc057b8518b9231c7282e98189b9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5426896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e2e8fc65da286248a8d387cd74b66a395205f5807db5f14d6a0d15957ba5e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:53:25 GMT
ENV _BASH_VERSION=4.4
# Fri, 08 Mar 2019 03:53:25 GMT
ENV _BASH_PATCH_LEVEL=18
# Fri, 08 Mar 2019 03:53:26 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 03:54:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:54:13 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4252be3544bf3a2aa1f35a96e3f051145190491b400326738c37c048119a31`  
		Last Modified: Fri, 08 Mar 2019 04:06:25 GMT  
		Size: 2.9 MB (2885879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ec34a201a510030070a62932a625962ba6541a7626fb00d8ac31b4a9c012e7`  
		Last Modified: Fri, 08 Mar 2019 04:06:24 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.4` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:fb156c3d82e3bea48d7833a084bb6b93faed86499ff49551cf3f70c58b94ab58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5681505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c080103a7913a83b97916c47c2212d14e999dd339accad40640dcdbdad4e2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:55:38 GMT
ENV _BASH_VERSION=4.4
# Fri, 08 Mar 2019 03:55:39 GMT
ENV _BASH_PATCH_LEVEL=18
# Fri, 08 Mar 2019 03:55:39 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 03:56:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:56:58 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:56:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:57:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b22f3a08922836a7ccbff52a0713c48949fb7cb1a342290b3873bd873e4da1`  
		Last Modified: Fri, 08 Mar 2019 04:13:57 GMT  
		Size: 3.0 MB (2993223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51842f2b221e16e743d2277bbb6083840f1f27df3fc2a30ce1885f3c107ff23`  
		Last Modified: Fri, 08 Mar 2019 04:13:55 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.4` - linux; 386

```console
$ docker pull bash@sha256:69833be05cc1f8858de9dfe396aacf58abff5c921f8fd3a01b16c6f784c2b055
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5681079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:134efbf0c1dc0f75b000937f33945ad158d63d5e763bc434619337d2858639bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:53:59 GMT
ENV _BASH_VERSION=4.4
# Fri, 08 Mar 2019 03:53:59 GMT
ENV _BASH_PATCH_LEVEL=18
# Fri, 08 Mar 2019 03:54:00 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 03:55:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:55:22 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:55:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:55:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b38db50824c14e72574e95f70aa97d0893e8dc1d5027763221f259e04f481a2`  
		Last Modified: Fri, 08 Mar 2019 04:08:04 GMT  
		Size: 2.9 MB (2931380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2dcf7a4b1e71177a098d92a297ca5178e3f45c2fe310d2bce929c9ee7cf8c1`  
		Last Modified: Fri, 08 Mar 2019 04:08:03 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.4` - linux; ppc64le

```console
$ docker pull bash@sha256:0a61355e09161a95efc1aaaf34c2338053368f032d9f1cb2ff8c02b8f5a13f2d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5998915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f8bd7618d9735bd7c9972a37e591082fb1340d537b0910eccd4b1d984d4e268`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:17:40 GMT
ENV _BASH_VERSION=4.4
# Wed, 06 Feb 2019 09:17:42 GMT
ENV _BASH_PATCH_LEVEL=18
# Wed, 06 Feb 2019 09:17:44 GMT
ENV _BASH_LATEST_PATCH=23
# Wed, 06 Feb 2019 09:18:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:18:32 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:18:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:18:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a7d118f4ef136f0bd1ea3a489cb1965749a7b7bf6cd99258191e5231278b87`  
		Last Modified: Wed, 06 Feb 2019 09:40:07 GMT  
		Size: 3.2 MB (3219731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51982983cfa6ba84d3bda2868db2532af21da71b4a3592b6ac0a8756f295fd1a`  
		Last Modified: Wed, 06 Feb 2019 09:40:03 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.4` - linux; s390x

```console
$ docker pull bash@sha256:734a6db489ac2d2f26b373e68fe3e6bd34fb77c7b818bceb73ed36abc457d280
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5543460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05932b39bf11230866aa43245fdfca7104ade951ee0cc96e7d061e94c772fae3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:53:49 GMT
ENV _BASH_VERSION=4.4
# Fri, 08 Mar 2019 03:53:49 GMT
ENV _BASH_PATCH_LEVEL=18
# Fri, 08 Mar 2019 03:53:50 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 03:54:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:54:32 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c3a16cffd0b3349222a7cf86871ff317495cc917bf8cce5735a41aae1f233f`  
		Last Modified: Fri, 08 Mar 2019 04:03:31 GMT  
		Size: 3.0 MB (3001816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425699a4e32150547f23f4490e165d4b03ec2acf5d2b9fe8960141e5ad6dbe7e`  
		Last Modified: Fri, 08 Mar 2019 04:03:30 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:4.4.23`

```console
$ docker pull bash@sha256:81e2a3af9b8922f7afd5694222885dc884afee0df859b3dafbe7158540e34c6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:4.4.23` - linux; amd64

```console
$ docker pull bash@sha256:024e84052dceb0d8c5682a2147dc61693eff705812e9dbcffcdccd9f4a7ae15d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5739733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c8dee16af33d0525414fb54a456d2cc579896b8e9fa16e21bc389f85b13dd32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 22:56:22 GMT
ENV _BASH_VERSION=4.4
# Thu, 07 Mar 2019 22:56:23 GMT
ENV _BASH_PATCH_LEVEL=18
# Thu, 07 Mar 2019 22:56:23 GMT
ENV _BASH_LATEST_PATCH=23
# Thu, 07 Mar 2019 22:57:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 22:57:25 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 22:57:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 22:57:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7cf314be100814f178dfe095777944d7784d87ed0ebf90e65e34dcafd014bc`  
		Last Modified: Thu, 07 Mar 2019 23:08:27 GMT  
		Size: 3.0 MB (2984661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f7e8c7710031b76a8c21e091a002c6d1b3ab6c4b1a2d0f6dcf24df0ebcb0bf`  
		Last Modified: Thu, 07 Mar 2019 23:08:26 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.4.23` - linux; arm variant v6

```console
$ docker pull bash@sha256:d0c00e35e30993e7148cc859146bde5525ffc057b8518b9231c7282e98189b9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5426896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e2e8fc65da286248a8d387cd74b66a395205f5807db5f14d6a0d15957ba5e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:53:25 GMT
ENV _BASH_VERSION=4.4
# Fri, 08 Mar 2019 03:53:25 GMT
ENV _BASH_PATCH_LEVEL=18
# Fri, 08 Mar 2019 03:53:26 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 03:54:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:54:13 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4252be3544bf3a2aa1f35a96e3f051145190491b400326738c37c048119a31`  
		Last Modified: Fri, 08 Mar 2019 04:06:25 GMT  
		Size: 2.9 MB (2885879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ec34a201a510030070a62932a625962ba6541a7626fb00d8ac31b4a9c012e7`  
		Last Modified: Fri, 08 Mar 2019 04:06:24 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.4.23` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:fb156c3d82e3bea48d7833a084bb6b93faed86499ff49551cf3f70c58b94ab58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5681505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c080103a7913a83b97916c47c2212d14e999dd339accad40640dcdbdad4e2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:55:38 GMT
ENV _BASH_VERSION=4.4
# Fri, 08 Mar 2019 03:55:39 GMT
ENV _BASH_PATCH_LEVEL=18
# Fri, 08 Mar 2019 03:55:39 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 03:56:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:56:58 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:56:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:57:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92b22f3a08922836a7ccbff52a0713c48949fb7cb1a342290b3873bd873e4da1`  
		Last Modified: Fri, 08 Mar 2019 04:13:57 GMT  
		Size: 3.0 MB (2993223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51842f2b221e16e743d2277bbb6083840f1f27df3fc2a30ce1885f3c107ff23`  
		Last Modified: Fri, 08 Mar 2019 04:13:55 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.4.23` - linux; 386

```console
$ docker pull bash@sha256:69833be05cc1f8858de9dfe396aacf58abff5c921f8fd3a01b16c6f784c2b055
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5681079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:134efbf0c1dc0f75b000937f33945ad158d63d5e763bc434619337d2858639bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:53:59 GMT
ENV _BASH_VERSION=4.4
# Fri, 08 Mar 2019 03:53:59 GMT
ENV _BASH_PATCH_LEVEL=18
# Fri, 08 Mar 2019 03:54:00 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 03:55:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:55:22 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:55:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:55:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b38db50824c14e72574e95f70aa97d0893e8dc1d5027763221f259e04f481a2`  
		Last Modified: Fri, 08 Mar 2019 04:08:04 GMT  
		Size: 2.9 MB (2931380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2dcf7a4b1e71177a098d92a297ca5178e3f45c2fe310d2bce929c9ee7cf8c1`  
		Last Modified: Fri, 08 Mar 2019 04:08:03 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.4.23` - linux; ppc64le

```console
$ docker pull bash@sha256:0a61355e09161a95efc1aaaf34c2338053368f032d9f1cb2ff8c02b8f5a13f2d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5998915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f8bd7618d9735bd7c9972a37e591082fb1340d537b0910eccd4b1d984d4e268`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:17:40 GMT
ENV _BASH_VERSION=4.4
# Wed, 06 Feb 2019 09:17:42 GMT
ENV _BASH_PATCH_LEVEL=18
# Wed, 06 Feb 2019 09:17:44 GMT
ENV _BASH_LATEST_PATCH=23
# Wed, 06 Feb 2019 09:18:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:18:32 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:18:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:18:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a7d118f4ef136f0bd1ea3a489cb1965749a7b7bf6cd99258191e5231278b87`  
		Last Modified: Wed, 06 Feb 2019 09:40:07 GMT  
		Size: 3.2 MB (3219731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51982983cfa6ba84d3bda2868db2532af21da71b4a3592b6ac0a8756f295fd1a`  
		Last Modified: Wed, 06 Feb 2019 09:40:03 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:4.4.23` - linux; s390x

```console
$ docker pull bash@sha256:734a6db489ac2d2f26b373e68fe3e6bd34fb77c7b818bceb73ed36abc457d280
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5543460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05932b39bf11230866aa43245fdfca7104ade951ee0cc96e7d061e94c772fae3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:53:49 GMT
ENV _BASH_VERSION=4.4
# Fri, 08 Mar 2019 03:53:49 GMT
ENV _BASH_PATCH_LEVEL=18
# Fri, 08 Mar 2019 03:53:50 GMT
ENV _BASH_LATEST_PATCH=23
# Fri, 08 Mar 2019 03:54:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "$_BASH_VERSION.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:54:32 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c3a16cffd0b3349222a7cf86871ff317495cc917bf8cce5735a41aae1f233f`  
		Last Modified: Fri, 08 Mar 2019 04:03:31 GMT  
		Size: 3.0 MB (3001816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425699a4e32150547f23f4490e165d4b03ec2acf5d2b9fe8960141e5ad6dbe7e`  
		Last Modified: Fri, 08 Mar 2019 04:03:30 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:5`

```console
$ docker pull bash@sha256:2ffca0cc03bcaabc05e7ea2e8a7514f56ded6e4255a12cf4b81a4064e40f0e40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:5` - linux; amd64

```console
$ docker pull bash@sha256:66621d171c825591f4d56f971efc5007c58408154faa8b06e4926637ffe00cf1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5922009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5721f6764f4de9e038b10b89f6f13ee2765f29a1871437cd65436600573e3b0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_VERSION=5.0
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_PATCH_LEVEL=0
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_LATEST_PATCH=2
# Thu, 07 Mar 2019 22:56:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 22:56:14 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 22:56:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 22:56:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf1ecedbafba80f7e60ab8f2d65e056d8f7d83527c155079c8c21b739bfd34a`  
		Last Modified: Thu, 07 Mar 2019 23:08:22 GMT  
		Size: 3.2 MB (3166937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e042c8f4397bcf84af401f4efd068fb3dda307977c4ac0efcf32a3aa5e13973`  
		Last Modified: Thu, 07 Mar 2019 23:08:21 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:5` - linux; arm variant v6

```console
$ docker pull bash@sha256:139aa08741c59d3038f497e0260613850cb442262642272f9c11dc63efeda56b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5587521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5663276be981dbaa295cfbf9613c2e746c31fe0620868fde812a3a0b7d139dc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_VERSION=5.0
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:52:23 GMT
ENV _BASH_LATEST_PATCH=2
# Fri, 08 Mar 2019 03:53:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:53:12 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f88ca4f4e71d1089fdf7572ac254b23a85dc28a4758681a15907fbf90b3b2ff`  
		Last Modified: Fri, 08 Mar 2019 04:06:17 GMT  
		Size: 3.0 MB (3046504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f280894e264cd6b6aa576734f7a0f4d109b99538145d79e5b4cec36873521f`  
		Last Modified: Fri, 08 Mar 2019 04:06:15 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:5` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:8d1de8c7bbf8622b38fc4c0ba864b2da748cf03fdde9c73ce9fd948e5cb4206e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5860820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58555467b5be68fd285de4acfb869091b444ae11780eb671d28c9c5ac840cdec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:53:56 GMT
ENV _BASH_VERSION=5.0
# Fri, 08 Mar 2019 03:53:57 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:53:57 GMT
ENV _BASH_LATEST_PATCH=2
# Fri, 08 Mar 2019 03:55:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:55:24 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:55:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:55:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a426016003eac940d630733c4a0bbfef279babd3765504b2977fd98db8b748bb`  
		Last Modified: Fri, 08 Mar 2019 04:13:44 GMT  
		Size: 3.2 MB (3172538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f527fb2d0b859e24dea2d014805012aa992ac80ca9ec597b5ec6ef4c1c1f4a1b`  
		Last Modified: Fri, 08 Mar 2019 04:13:43 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:5` - linux; 386

```console
$ docker pull bash@sha256:5cb77079df24e0b95e14d4259558956622e1cae44947b0553399243cfe254615
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5852027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59d7444b4a3962e7c23423565fbb3fb116886d8407e3755a393d8eef4249c96f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_VERSION=5.0
# Fri, 08 Mar 2019 03:52:16 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:52:16 GMT
ENV _BASH_LATEST_PATCH=2
# Fri, 08 Mar 2019 03:53:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:53:47 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c0f251d629a13ec959516ecfd60f73c202ae8f696d8af325de8a95c0f57c77`  
		Last Modified: Fri, 08 Mar 2019 04:07:58 GMT  
		Size: 3.1 MB (3102330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f82a7717b66a1ff11e2eddf2c3927bdb4a776f0e9937c51e954bd61e62bc1e`  
		Last Modified: Fri, 08 Mar 2019 04:07:57 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:5` - linux; ppc64le

```console
$ docker pull bash@sha256:0f667d91edf83f6ff531bcae53ba05f369cc01707888430cc81e4f968a0eb123
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6184081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:007bb73a1d9c224670789f30708314f842237bdd72c2e847e5c7941f03f8bcb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:16:31 GMT
ENV _BASH_VERSION=5.0
# Wed, 06 Feb 2019 09:16:33 GMT
ENV _BASH_PATCH_LEVEL=0
# Wed, 06 Feb 2019 09:16:34 GMT
ENV _BASH_LATEST_PATCH=2
# Wed, 06 Feb 2019 09:17:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:17:27 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:17:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:17:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a7ecaf1c566cd633a568d9ed6bea492eca780a482786ae69647ad3d05c552e`  
		Last Modified: Wed, 06 Feb 2019 09:39:48 GMT  
		Size: 3.4 MB (3404898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a1196d8086f742553c4f81f0c90c175a8a71fc8eedcf4876a5a44e8989a773`  
		Last Modified: Wed, 06 Feb 2019 09:39:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:5` - linux; s390x

```console
$ docker pull bash@sha256:601cb80c62d91dbfbfdccc1fd2fbd13833bc39b9d72c81cee469598a36eb28c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5707299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c6462914c505e2edc99716bad04fd9ba7996563837e027415f19cbc23c8011e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_VERSION=5.0
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_LATEST_PATCH=2
# Fri, 08 Mar 2019 03:53:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:53:42 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95a9c445534a70067ba49b4532bdf0ade6a7dc966ad02a641e33c00db38fddf`  
		Last Modified: Fri, 08 Mar 2019 04:03:24 GMT  
		Size: 3.2 MB (3165655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85588d80b1265e860cfbc3e22f0e71a9214345d3e5e1b90f85ba4959901ff6de`  
		Last Modified: Fri, 08 Mar 2019 04:03:23 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:5.0`

```console
$ docker pull bash@sha256:2ffca0cc03bcaabc05e7ea2e8a7514f56ded6e4255a12cf4b81a4064e40f0e40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:5.0` - linux; amd64

```console
$ docker pull bash@sha256:66621d171c825591f4d56f971efc5007c58408154faa8b06e4926637ffe00cf1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5922009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5721f6764f4de9e038b10b89f6f13ee2765f29a1871437cd65436600573e3b0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_VERSION=5.0
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_PATCH_LEVEL=0
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_LATEST_PATCH=2
# Thu, 07 Mar 2019 22:56:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 22:56:14 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 22:56:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 22:56:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf1ecedbafba80f7e60ab8f2d65e056d8f7d83527c155079c8c21b739bfd34a`  
		Last Modified: Thu, 07 Mar 2019 23:08:22 GMT  
		Size: 3.2 MB (3166937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e042c8f4397bcf84af401f4efd068fb3dda307977c4ac0efcf32a3aa5e13973`  
		Last Modified: Thu, 07 Mar 2019 23:08:21 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:5.0` - linux; arm variant v6

```console
$ docker pull bash@sha256:139aa08741c59d3038f497e0260613850cb442262642272f9c11dc63efeda56b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5587521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5663276be981dbaa295cfbf9613c2e746c31fe0620868fde812a3a0b7d139dc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_VERSION=5.0
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:52:23 GMT
ENV _BASH_LATEST_PATCH=2
# Fri, 08 Mar 2019 03:53:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:53:12 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f88ca4f4e71d1089fdf7572ac254b23a85dc28a4758681a15907fbf90b3b2ff`  
		Last Modified: Fri, 08 Mar 2019 04:06:17 GMT  
		Size: 3.0 MB (3046504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f280894e264cd6b6aa576734f7a0f4d109b99538145d79e5b4cec36873521f`  
		Last Modified: Fri, 08 Mar 2019 04:06:15 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:5.0` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:8d1de8c7bbf8622b38fc4c0ba864b2da748cf03fdde9c73ce9fd948e5cb4206e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5860820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58555467b5be68fd285de4acfb869091b444ae11780eb671d28c9c5ac840cdec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:53:56 GMT
ENV _BASH_VERSION=5.0
# Fri, 08 Mar 2019 03:53:57 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:53:57 GMT
ENV _BASH_LATEST_PATCH=2
# Fri, 08 Mar 2019 03:55:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:55:24 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:55:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:55:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a426016003eac940d630733c4a0bbfef279babd3765504b2977fd98db8b748bb`  
		Last Modified: Fri, 08 Mar 2019 04:13:44 GMT  
		Size: 3.2 MB (3172538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f527fb2d0b859e24dea2d014805012aa992ac80ca9ec597b5ec6ef4c1c1f4a1b`  
		Last Modified: Fri, 08 Mar 2019 04:13:43 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:5.0` - linux; 386

```console
$ docker pull bash@sha256:5cb77079df24e0b95e14d4259558956622e1cae44947b0553399243cfe254615
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5852027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59d7444b4a3962e7c23423565fbb3fb116886d8407e3755a393d8eef4249c96f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_VERSION=5.0
# Fri, 08 Mar 2019 03:52:16 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:52:16 GMT
ENV _BASH_LATEST_PATCH=2
# Fri, 08 Mar 2019 03:53:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:53:47 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c0f251d629a13ec959516ecfd60f73c202ae8f696d8af325de8a95c0f57c77`  
		Last Modified: Fri, 08 Mar 2019 04:07:58 GMT  
		Size: 3.1 MB (3102330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f82a7717b66a1ff11e2eddf2c3927bdb4a776f0e9937c51e954bd61e62bc1e`  
		Last Modified: Fri, 08 Mar 2019 04:07:57 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:5.0` - linux; ppc64le

```console
$ docker pull bash@sha256:0f667d91edf83f6ff531bcae53ba05f369cc01707888430cc81e4f968a0eb123
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6184081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:007bb73a1d9c224670789f30708314f842237bdd72c2e847e5c7941f03f8bcb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:16:31 GMT
ENV _BASH_VERSION=5.0
# Wed, 06 Feb 2019 09:16:33 GMT
ENV _BASH_PATCH_LEVEL=0
# Wed, 06 Feb 2019 09:16:34 GMT
ENV _BASH_LATEST_PATCH=2
# Wed, 06 Feb 2019 09:17:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:17:27 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:17:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:17:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a7ecaf1c566cd633a568d9ed6bea492eca780a482786ae69647ad3d05c552e`  
		Last Modified: Wed, 06 Feb 2019 09:39:48 GMT  
		Size: 3.4 MB (3404898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a1196d8086f742553c4f81f0c90c175a8a71fc8eedcf4876a5a44e8989a773`  
		Last Modified: Wed, 06 Feb 2019 09:39:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:5.0` - linux; s390x

```console
$ docker pull bash@sha256:601cb80c62d91dbfbfdccc1fd2fbd13833bc39b9d72c81cee469598a36eb28c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5707299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c6462914c505e2edc99716bad04fd9ba7996563837e027415f19cbc23c8011e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_VERSION=5.0
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_LATEST_PATCH=2
# Fri, 08 Mar 2019 03:53:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:53:42 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95a9c445534a70067ba49b4532bdf0ade6a7dc966ad02a641e33c00db38fddf`  
		Last Modified: Fri, 08 Mar 2019 04:03:24 GMT  
		Size: 3.2 MB (3165655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85588d80b1265e860cfbc3e22f0e71a9214345d3e5e1b90f85ba4959901ff6de`  
		Last Modified: Fri, 08 Mar 2019 04:03:23 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:5.0.2`

```console
$ docker pull bash@sha256:2ffca0cc03bcaabc05e7ea2e8a7514f56ded6e4255a12cf4b81a4064e40f0e40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:5.0.2` - linux; amd64

```console
$ docker pull bash@sha256:66621d171c825591f4d56f971efc5007c58408154faa8b06e4926637ffe00cf1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5922009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5721f6764f4de9e038b10b89f6f13ee2765f29a1871437cd65436600573e3b0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_VERSION=5.0
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_PATCH_LEVEL=0
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_LATEST_PATCH=2
# Thu, 07 Mar 2019 22:56:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 22:56:14 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 22:56:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 22:56:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf1ecedbafba80f7e60ab8f2d65e056d8f7d83527c155079c8c21b739bfd34a`  
		Last Modified: Thu, 07 Mar 2019 23:08:22 GMT  
		Size: 3.2 MB (3166937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e042c8f4397bcf84af401f4efd068fb3dda307977c4ac0efcf32a3aa5e13973`  
		Last Modified: Thu, 07 Mar 2019 23:08:21 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:5.0.2` - linux; arm variant v6

```console
$ docker pull bash@sha256:139aa08741c59d3038f497e0260613850cb442262642272f9c11dc63efeda56b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5587521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5663276be981dbaa295cfbf9613c2e746c31fe0620868fde812a3a0b7d139dc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_VERSION=5.0
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:52:23 GMT
ENV _BASH_LATEST_PATCH=2
# Fri, 08 Mar 2019 03:53:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:53:12 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f88ca4f4e71d1089fdf7572ac254b23a85dc28a4758681a15907fbf90b3b2ff`  
		Last Modified: Fri, 08 Mar 2019 04:06:17 GMT  
		Size: 3.0 MB (3046504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f280894e264cd6b6aa576734f7a0f4d109b99538145d79e5b4cec36873521f`  
		Last Modified: Fri, 08 Mar 2019 04:06:15 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:5.0.2` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:8d1de8c7bbf8622b38fc4c0ba864b2da748cf03fdde9c73ce9fd948e5cb4206e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5860820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58555467b5be68fd285de4acfb869091b444ae11780eb671d28c9c5ac840cdec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:53:56 GMT
ENV _BASH_VERSION=5.0
# Fri, 08 Mar 2019 03:53:57 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:53:57 GMT
ENV _BASH_LATEST_PATCH=2
# Fri, 08 Mar 2019 03:55:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:55:24 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:55:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:55:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a426016003eac940d630733c4a0bbfef279babd3765504b2977fd98db8b748bb`  
		Last Modified: Fri, 08 Mar 2019 04:13:44 GMT  
		Size: 3.2 MB (3172538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f527fb2d0b859e24dea2d014805012aa992ac80ca9ec597b5ec6ef4c1c1f4a1b`  
		Last Modified: Fri, 08 Mar 2019 04:13:43 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:5.0.2` - linux; 386

```console
$ docker pull bash@sha256:5cb77079df24e0b95e14d4259558956622e1cae44947b0553399243cfe254615
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5852027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59d7444b4a3962e7c23423565fbb3fb116886d8407e3755a393d8eef4249c96f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_VERSION=5.0
# Fri, 08 Mar 2019 03:52:16 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:52:16 GMT
ENV _BASH_LATEST_PATCH=2
# Fri, 08 Mar 2019 03:53:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:53:47 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c0f251d629a13ec959516ecfd60f73c202ae8f696d8af325de8a95c0f57c77`  
		Last Modified: Fri, 08 Mar 2019 04:07:58 GMT  
		Size: 3.1 MB (3102330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f82a7717b66a1ff11e2eddf2c3927bdb4a776f0e9937c51e954bd61e62bc1e`  
		Last Modified: Fri, 08 Mar 2019 04:07:57 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:5.0.2` - linux; ppc64le

```console
$ docker pull bash@sha256:0f667d91edf83f6ff531bcae53ba05f369cc01707888430cc81e4f968a0eb123
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6184081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:007bb73a1d9c224670789f30708314f842237bdd72c2e847e5c7941f03f8bcb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:16:31 GMT
ENV _BASH_VERSION=5.0
# Wed, 06 Feb 2019 09:16:33 GMT
ENV _BASH_PATCH_LEVEL=0
# Wed, 06 Feb 2019 09:16:34 GMT
ENV _BASH_LATEST_PATCH=2
# Wed, 06 Feb 2019 09:17:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:17:27 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:17:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:17:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a7ecaf1c566cd633a568d9ed6bea492eca780a482786ae69647ad3d05c552e`  
		Last Modified: Wed, 06 Feb 2019 09:39:48 GMT  
		Size: 3.4 MB (3404898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a1196d8086f742553c4f81f0c90c175a8a71fc8eedcf4876a5a44e8989a773`  
		Last Modified: Wed, 06 Feb 2019 09:39:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:5.0.2` - linux; s390x

```console
$ docker pull bash@sha256:601cb80c62d91dbfbfdccc1fd2fbd13833bc39b9d72c81cee469598a36eb28c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5707299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c6462914c505e2edc99716bad04fd9ba7996563837e027415f19cbc23c8011e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_VERSION=5.0
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_LATEST_PATCH=2
# Fri, 08 Mar 2019 03:53:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:53:42 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95a9c445534a70067ba49b4532bdf0ade6a7dc966ad02a641e33c00db38fddf`  
		Last Modified: Fri, 08 Mar 2019 04:03:24 GMT  
		Size: 3.2 MB (3165655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85588d80b1265e860cfbc3e22f0e71a9214345d3e5e1b90f85ba4959901ff6de`  
		Last Modified: Fri, 08 Mar 2019 04:03:23 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bash:latest`

```console
$ docker pull bash@sha256:2ffca0cc03bcaabc05e7ea2e8a7514f56ded6e4255a12cf4b81a4064e40f0e40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `bash:latest` - linux; amd64

```console
$ docker pull bash@sha256:66621d171c825591f4d56f971efc5007c58408154faa8b06e4926637ffe00cf1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5922009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5721f6764f4de9e038b10b89f6f13ee2765f29a1871437cd65436600573e3b0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_VERSION=5.0
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_PATCH_LEVEL=0
# Thu, 07 Mar 2019 22:55:21 GMT
ENV _BASH_LATEST_PATCH=2
# Thu, 07 Mar 2019 22:56:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Thu, 07 Mar 2019 22:56:14 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Thu, 07 Mar 2019 22:56:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 22:56:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf1ecedbafba80f7e60ab8f2d65e056d8f7d83527c155079c8c21b739bfd34a`  
		Last Modified: Thu, 07 Mar 2019 23:08:22 GMT  
		Size: 3.2 MB (3166937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e042c8f4397bcf84af401f4efd068fb3dda307977c4ac0efcf32a3aa5e13973`  
		Last Modified: Thu, 07 Mar 2019 23:08:21 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:latest` - linux; arm variant v6

```console
$ docker pull bash@sha256:139aa08741c59d3038f497e0260613850cb442262642272f9c11dc63efeda56b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5587521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5663276be981dbaa295cfbf9613c2e746c31fe0620868fde812a3a0b7d139dc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_VERSION=5.0
# Fri, 08 Mar 2019 03:52:22 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:52:23 GMT
ENV _BASH_LATEST_PATCH=2
# Fri, 08 Mar 2019 03:53:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:53:12 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f88ca4f4e71d1089fdf7572ac254b23a85dc28a4758681a15907fbf90b3b2ff`  
		Last Modified: Fri, 08 Mar 2019 04:06:17 GMT  
		Size: 3.0 MB (3046504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f280894e264cd6b6aa576734f7a0f4d109b99538145d79e5b4cec36873521f`  
		Last Modified: Fri, 08 Mar 2019 04:06:15 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:latest` - linux; arm64 variant v8

```console
$ docker pull bash@sha256:8d1de8c7bbf8622b38fc4c0ba864b2da748cf03fdde9c73ce9fd948e5cb4206e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5860820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58555467b5be68fd285de4acfb869091b444ae11780eb671d28c9c5ac840cdec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:53:56 GMT
ENV _BASH_VERSION=5.0
# Fri, 08 Mar 2019 03:53:57 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:53:57 GMT
ENV _BASH_LATEST_PATCH=2
# Fri, 08 Mar 2019 03:55:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:55:24 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:55:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:55:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a426016003eac940d630733c4a0bbfef279babd3765504b2977fd98db8b748bb`  
		Last Modified: Fri, 08 Mar 2019 04:13:44 GMT  
		Size: 3.2 MB (3172538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f527fb2d0b859e24dea2d014805012aa992ac80ca9ec597b5ec6ef4c1c1f4a1b`  
		Last Modified: Fri, 08 Mar 2019 04:13:43 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:latest` - linux; 386

```console
$ docker pull bash@sha256:5cb77079df24e0b95e14d4259558956622e1cae44947b0553399243cfe254615
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5852027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59d7444b4a3962e7c23423565fbb3fb116886d8407e3755a393d8eef4249c96f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:52:15 GMT
ENV _BASH_VERSION=5.0
# Fri, 08 Mar 2019 03:52:16 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:52:16 GMT
ENV _BASH_LATEST_PATCH=2
# Fri, 08 Mar 2019 03:53:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:53:47 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c0f251d629a13ec959516ecfd60f73c202ae8f696d8af325de8a95c0f57c77`  
		Last Modified: Fri, 08 Mar 2019 04:07:58 GMT  
		Size: 3.1 MB (3102330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f82a7717b66a1ff11e2eddf2c3927bdb4a776f0e9937c51e954bd61e62bc1e`  
		Last Modified: Fri, 08 Mar 2019 04:07:57 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:latest` - linux; ppc64le

```console
$ docker pull bash@sha256:0f667d91edf83f6ff531bcae53ba05f369cc01707888430cc81e4f968a0eb123
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6184081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:007bb73a1d9c224670789f30708314f842237bdd72c2e847e5c7941f03f8bcb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:16:29 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Wed, 06 Feb 2019 09:16:31 GMT
ENV _BASH_VERSION=5.0
# Wed, 06 Feb 2019 09:16:33 GMT
ENV _BASH_PATCH_LEVEL=0
# Wed, 06 Feb 2019 09:16:34 GMT
ENV _BASH_LATEST_PATCH=2
# Wed, 06 Feb 2019 09:17:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Wed, 06 Feb 2019 09:17:27 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Wed, 06 Feb 2019 09:17:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 09:17:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a7ecaf1c566cd633a568d9ed6bea492eca780a482786ae69647ad3d05c552e`  
		Last Modified: Wed, 06 Feb 2019 09:39:48 GMT  
		Size: 3.4 MB (3404898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a1196d8086f742553c4f81f0c90c175a8a71fc8eedcf4876a5a44e8989a773`  
		Last Modified: Wed, 06 Feb 2019 09:39:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bash:latest` - linux; s390x

```console
$ docker pull bash@sha256:601cb80c62d91dbfbfdccc1fd2fbd13833bc39b9d72c81cee469598a36eb28c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5707299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c6462914c505e2edc99716bad04fd9ba7996563837e027415f19cbc23c8011e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_VERSION=5.0
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_PATCH_LEVEL=0
# Fri, 08 Mar 2019 03:52:55 GMT
ENV _BASH_LATEST_PATCH=2
# Fri, 08 Mar 2019 03:53:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Fri, 08 Mar 2019 03:53:42 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:53:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:53:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95a9c445534a70067ba49b4532bdf0ade6a7dc966ad02a641e33c00db38fddf`  
		Last Modified: Fri, 08 Mar 2019 04:03:24 GMT  
		Size: 3.2 MB (3165655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85588d80b1265e860cfbc3e22f0e71a9214345d3e5e1b90f85ba4959901ff6de`  
		Last Modified: Fri, 08 Mar 2019 04:03:23 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
