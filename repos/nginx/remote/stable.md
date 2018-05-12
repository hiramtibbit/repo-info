## `nginx:stable`

```console
$ docker pull nginx@sha256:ccec51bccf6cf451393c809831cff022ae9c5374a3bea8361a09e142a49b9ed4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:stable` - linux; amd64

```console
$ docker pull nginx@sha256:0bf115168ab84ca0ddd41724e78db21c2e7daecca35bae1ff59e644d4b558e8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44606983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f759510436c8fd6f7ffa13dd9e9d85e64bec8d2bfd12c5aa3fb9af1288eccdab`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 13:55:06 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 09 May 2018 16:44:40 GMT
ENV NGINX_VERSION=1.14.0-1~stretch
# Wed, 09 May 2018 16:44:40 GMT
ENV NJS_VERSION=1.14.0.0.2.0-1~stretch
# Wed, 09 May 2018 16:45:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 09 May 2018 16:45:17 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 09 May 2018 16:45:17 GMT
EXPOSE 80/tcp
# Wed, 09 May 2018 16:45:17 GMT
STOPSIGNAL [SIGTERM]
# Wed, 09 May 2018 16:45:18 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6160d1ac49e9d8a3f347c2d5c3ba45ec415b4fd134db589504bdcba1de01536d`  
		Last Modified: Wed, 09 May 2018 16:48:06 GMT  
		Size: 22.1 MB (22110754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046b6740877618157187db052dd450838d9ff4ad6a9551da4ba5617af62a27da`  
		Last Modified: Wed, 09 May 2018 16:48:03 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable` - linux; arm variant v7

```console
$ docker pull nginx@sha256:c7a52824ee49caa254f54f591c6279357dae5e44277e11625515431f6f510c57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 MB (40046128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e40ea071e3d76ac477556079ba938797695d0ab38d5385565d833451e6f988b`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:32:21 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 09 May 2018 11:58:43 GMT
ENV NGINX_VERSION=1.14.0-1~stretch
# Wed, 09 May 2018 11:58:43 GMT
ENV NJS_VERSION=1.14.0.0.2.0-1~stretch
# Wed, 09 May 2018 12:02:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 09 May 2018 12:02:55 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 09 May 2018 12:02:55 GMT
EXPOSE 80/tcp
# Wed, 09 May 2018 12:02:55 GMT
STOPSIGNAL [SIGTERM]
# Wed, 09 May 2018 12:02:56 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da231b655a80e91cbae9069b12e916123b2575eba9847c5c9983d8a8f0ccae7f`  
		Last Modified: Wed, 09 May 2018 12:08:03 GMT  
		Size: 20.8 MB (20759134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96394bfce3ee00bda0750ea788bcfb4819f7040392790066676ebb2e941b70ae`  
		Last Modified: Wed, 09 May 2018 12:07:58 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:d8d4facf6865e0e41096c6336c92a396b606cf599ca6b995419788de841978bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 MB (41815007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7acb038ea302d629a4b0dd4f0704cf0da3aae40e7e4c3e8381829bad6b4bd4ba`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Tue, 01 May 2018 11:30:03 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 09 May 2018 08:40:14 GMT
ENV NGINX_VERSION=1.14.0-1~stretch
# Wed, 09 May 2018 08:40:14 GMT
ENV NJS_VERSION=1.14.0.0.2.0-1~stretch
# Wed, 09 May 2018 08:52:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 09 May 2018 08:52:03 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 09 May 2018 08:52:04 GMT
EXPOSE 80/tcp
# Wed, 09 May 2018 08:52:06 GMT
STOPSIGNAL [SIGTERM]
# Wed, 09 May 2018 08:52:08 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dde0a5eb94ae4ec22fb8d436e93db28e032993844a2cfd166c5e0da5c80cb35`  
		Last Modified: Wed, 09 May 2018 09:09:14 GMT  
		Size: 21.5 MB (21466895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052684fac95109e765ad02c3b40fe520eff02774dd75f6bccafac281500a1a68`  
		Last Modified: Wed, 09 May 2018 09:09:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable` - linux; 386

```console
$ docker pull nginx@sha256:a449e7a42669e60c44a59e2d78ece248952ed1ffd9067a4c7666e2e29be39ec1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45788929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bd43d9d9303c70c510c275378d84801269c91f209f6407fcb4ec8e6cd1b087e`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:41:32 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 09 May 2018 10:38:30 GMT
ENV NGINX_VERSION=1.14.0-1~stretch
# Wed, 09 May 2018 10:38:30 GMT
ENV NJS_VERSION=1.14.0.0.2.0-1~stretch
# Wed, 09 May 2018 10:39:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 09 May 2018 10:39:11 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 09 May 2018 10:39:12 GMT
EXPOSE 80/tcp
# Wed, 09 May 2018 10:39:12 GMT
STOPSIGNAL [SIGTERM]
# Wed, 09 May 2018 10:39:12 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ffb9a51b05d1d685f9a643ff57ef70432e9a071a48bfc89b75a4c6177d81bf`  
		Last Modified: Wed, 09 May 2018 10:43:36 GMT  
		Size: 22.7 MB (22650212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8d08f99d077d322bd6f8c4608f1c792390cfe80d546ddfa23a586a8745327c`  
		Last Modified: Wed, 09 May 2018 10:43:31 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable` - linux; ppc64le

```console
$ docker pull nginx@sha256:9d7e703afa5ffd2b82b967220eacd4e77626424cfe37017eff75bfb330fee46e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44784435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:563fae3ddcb53d588f034e02f62bc79561059d1bdd0cd09df852bf161796411c`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:21:11 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Sat, 12 May 2018 09:05:57 GMT
ENV NGINX_VERSION=1.14.0-1~stretch
# Sat, 12 May 2018 09:05:57 GMT
ENV NJS_VERSION=1.14.0.0.2.0-1~stretch
# Sat, 12 May 2018 09:17:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 12 May 2018 09:17:27 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Sat, 12 May 2018 09:17:28 GMT
EXPOSE 80/tcp
# Sat, 12 May 2018 09:17:31 GMT
STOPSIGNAL [SIGTERM]
# Sat, 12 May 2018 09:17:32 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6845360f0a4072b81db6bc00789a9de38500c36c9b622108b1486d7b0dbbee95`  
		Last Modified: Sat, 12 May 2018 09:34:18 GMT  
		Size: 22.0 MB (22031135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43473d58177b1f4e713e8cc4f5f17323f2b93445da861b301dbf2f59e0c22008`  
		Last Modified: Sat, 12 May 2018 09:34:07 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable` - linux; s390x

```console
$ docker pull nginx@sha256:96e2a07c40666a80e2503bc8dd0f47927178bf0e86b51a4a7e56d21d756c1e9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44543729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe2c6cd738ff91cfab694fa99ad624d41b585f34c492f17dfb059d45dcde796`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:29 GMT
ADD file:89223bc6886b09479a52e6d05479980ad8e46c8c707ac40cd81b664fe9827428 in / 
# Sat, 28 Apr 2018 11:45:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:01:25 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 09 May 2018 11:41:45 GMT
ENV NGINX_VERSION=1.14.0-1~stretch
# Wed, 09 May 2018 11:41:45 GMT
ENV NJS_VERSION=1.14.0.0.2.0-1~stretch
# Wed, 09 May 2018 11:44:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 09 May 2018 11:44:44 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 09 May 2018 11:44:44 GMT
EXPOSE 80/tcp
# Wed, 09 May 2018 11:44:45 GMT
STOPSIGNAL [SIGTERM]
# Wed, 09 May 2018 11:44:45 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:39cbaa616b05fb96ca4be9aac8b4d99ba8bf573e07a754a8c43dbec7ff518bbb`  
		Last Modified: Sat, 28 Apr 2018 11:51:43 GMT  
		Size: 22.3 MB (22349898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81095a9dd91cccb4a9201ce53ea43b4d13dcca32a5659197f4fd0f96954f2f45`  
		Last Modified: Wed, 09 May 2018 11:50:24 GMT  
		Size: 22.2 MB (22193627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8090b10662ce1c48be29028373da7b66859f5199734338654285e6dad6eee5e8`  
		Last Modified: Wed, 09 May 2018 11:50:20 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
