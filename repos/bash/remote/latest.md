## `bash:latest`

```console
$ docker pull bash@sha256:d5cd1bfc94dc0e9cd5454e51a41c26c7f63fc772cb548de9bf882b7aa0ecb880
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bash:latest` - linux; amd64

```console
$ docker pull bash@sha256:1c023e2498e734ad24cd07a9a2df785160adf1f4afe1e2e04756d3bca3e176a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5094340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d84710408996280d3c3798bd0d33e9e420fc58693dbd995da6a3acdc8c0c574`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:05:46 GMT
ENV _BASH_GPG_KEY=7C0135FB088AAF6C66C650B9BB5869F064EA74AB
# Tue, 08 Jan 2019 23:19:17 GMT
ENV _BASH_VERSION=5.0
# Tue, 08 Jan 2019 23:19:17 GMT
ENV _BASH_PATCH_LEVEL=0
# Mon, 21 Jan 2019 21:19:22 GMT
ENV _BASH_LATEST_PATCH=2
# Mon, 21 Jan 2019 21:20:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		bison 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		make 		ncurses-dev 		openssl 		patch 		tar 	; 		version="$_BASH_VERSION"; 	if [ "$_BASH_PATCH_LEVEL" -gt 0 ]; then 		version="$version.$_BASH_PATCH_LEVEL"; 	fi; 	wget -O bash.tar.gz "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz"; 	wget -O bash.tar.gz.sig "https://ftp.gnu.org/gnu/bash/bash-$version.tar.gz.sig"; 		if [ "$_BASH_LATEST_PATCH" -gt "$_BASH_PATCH_LEVEL" ]; then 		mkdir -p bash-patches; 		first="$(printf '%03d' "$(( _BASH_PATCH_LEVEL + 1 ))")"; 		last="$(printf '%03d' "$_BASH_LATEST_PATCH")"; 		for patch in $(seq -w "$first" "$last"); do 			url="https://ftp.gnu.org/gnu/bash/bash-$_BASH_VERSION-patches/bash${_BASH_VERSION//./}-$patch"; 			wget -O "bash-patches/$patch" "$url"; 			wget -O "bash-patches/$patch.sig" "$url.sig"; 		done; 	fi; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$_BASH_GPG_KEY"; 	gpg --batch --verify bash.tar.gz.sig bash.tar.gz; 	gpgconf --kill all; 	rm bash.tar.gz.sig; 	if [ -d bash-patches ]; then 		for sig in bash-patches/*.sig; do 			p="${sig%.sig}"; 			gpg --batch --verify "$sig" "$p"; 			rm "$sig"; 		done; 	fi; 	rm -rf "$GNUPGHOME"; 		mkdir -p /usr/src/bash; 	tar 		--extract 		--file=bash.tar.gz 		--strip-components=1 		--directory=/usr/src/bash 	; 	rm bash.tar.gz; 		if [ -d bash-patches ]; then 		for p in bash-patches/*; do 			patch 				--directory=/usr/src/bash 				--input="$(readlink -f "$p")" 				--strip=0 			; 			rm "$p"; 		done; 		rmdir bash-patches; 	fi; 		wget -O alpine-fix-jobs.patch 'https://github.com/alpinelinux/aports/raw/6c1881db229de5cdc49bc974b7b99badc3e187aa/main/bash/fix-jobs.patch'; 	echo '79473c41e620d78d25139b56c37d18adac5c03dc28939f218729dfcd3558d8cbac5e83db814ffd27aa833cd3e55f81aad26aaf62af3688c927d8ac2a4172eaa4 *alpine-fix-jobs.patch' | sha512sum -c -; 	patch --directory=/usr/src/bash --input="$PWD/alpine-fix-jobs.patch" --strip=1; 	rm alpine-fix-jobs.patch; 		cd /usr/src/bash; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	for f in config.guess config.sub; do 		wget -O "support/$f" "https://git.savannah.gnu.org/cgit/config.git/plain/$f?id=7d3d27baf8107b630586c962c057e22149653deb"; 	done; 	./configure 		--build="$gnuArch" 		--enable-readline 		--with-curses 		--without-bash-malloc 	|| { 		cat >&2 config.log; 		false; 	}; 	make -j "$(nproc)"; 	make install; 	cd /; 	rm -r /usr/src/bash; 		rm -r 		/usr/local/share/doc/bash/*.html 		/usr/local/share/info 		/usr/local/share/locale 		/usr/local/share/man 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache --virtual .bash-rundeps $runDeps; 	apk del .build-deps; 		[ "$(which bash)" = '/usr/local/bin/bash' ]; 	bash --version; 	[ "$(bash -c 'echo "${BASH_VERSION%%[^0-9.]*}"')" = "${_BASH_VERSION%%-*}.$_BASH_LATEST_PATCH" ];
# Mon, 21 Jan 2019 21:20:10 GMT
COPY file:651b3bebeba8be9162c56b3eb561199905235f3e1c7811232b6c9f48ac333651 in /usr/local/bin/ 
# Mon, 21 Jan 2019 21:20:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Jan 2019 21:20:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f15061b74920343d9803596cac34eaaf934387260357ce47c6052e47f403b30`  
		Last Modified: Mon, 21 Jan 2019 21:20:56 GMT  
		Size: 2.9 MB (2886975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dec1bb885d2096e44235925c6554ad6c63730f7d1668b266ea4302687793799`  
		Last Modified: Mon, 21 Jan 2019 21:20:55 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
