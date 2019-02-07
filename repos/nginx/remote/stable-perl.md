## `nginx:stable-perl`

```console
$ docker pull nginx@sha256:2dc681b79f4c55bc4b8cf3e505c9d2392cc913e9cb82687098dcaa0a4b684ad7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:stable-perl` - linux; amd64

```console
$ docker pull nginx@sha256:8039ad5cf1502bbb34af90e7e1ceb4b968ea6f8a586748686485b1f02f9c3ffb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54622571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d45eea5fce3969f388f3f24da129afcf3ba6e75e6c89335969450f81edfbcec`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:10:32 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 06 Feb 2019 08:12:10 GMT
ENV NGINX_VERSION=1.14.2-1~stretch
# Wed, 06 Feb 2019 08:12:10 GMT
ENV NJS_VERSION=1.14.2.0.2.6-1~stretch
# Wed, 06 Feb 2019 08:13:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 06 Feb 2019 08:13:20 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 06 Feb 2019 08:13:20 GMT
EXPOSE 80
# Wed, 06 Feb 2019 08:13:20 GMT
STOPSIGNAL SIGTERM
# Wed, 06 Feb 2019 08:13:20 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc2ce72fcf68c526d8ce02851bced2840f20b34bfa6259d798aadeddc37127e`  
		Last Modified: Wed, 06 Feb 2019 08:14:23 GMT  
		Size: 32.1 MB (32122081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d59499d1169f80fef82e2add4d3cddbcdbb746856332cdea6086d78afa996e4`  
		Last Modified: Wed, 06 Feb 2019 08:14:16 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable-perl` - linux; arm variant v7

```console
$ docker pull nginx@sha256:33c81ba71b165efda824641bedb413961fca1ddc8e5391b5d8d24537fef4c5d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49149125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365802d4288f34d957f8bcd74c358aafbb6ecf7d543bbdfb92d31a2376ca6583`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:10:17 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 23 Jan 2019 14:22:08 GMT
ENV NGINX_VERSION=1.14.2-1~stretch
# Wed, 23 Jan 2019 14:22:09 GMT
ENV NJS_VERSION=1.14.2.0.2.6-1~stretch
# Wed, 23 Jan 2019 14:33:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 23 Jan 2019 14:33:49 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 23 Jan 2019 14:33:49 GMT
EXPOSE 80
# Wed, 23 Jan 2019 14:33:50 GMT
STOPSIGNAL SIGTERM
# Wed, 23 Jan 2019 14:33:51 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e1eed130ddc8689b05b79a164f3c657d635105835e62185a406f1b39d523f0`  
		Last Modified: Wed, 23 Jan 2019 14:35:20 GMT  
		Size: 29.9 MB (29858637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217e96e917ad36d2422e2f561692bff1778954bd55a51ec32b53d2d79d9276a6`  
		Last Modified: Wed, 23 Jan 2019 14:35:10 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable-perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:26591d5b8a62d280123c4754c2006f4805f3a6c2066f8e000cf64296ed272033
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51636996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f66c1c46b5acd5ea3e3bd2540a68291ba467b9f36059aa47d8ec6fd8f103bb9`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:00:23 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 07 Feb 2019 02:32:17 GMT
ENV NGINX_VERSION=1.14.2-1~stretch
# Thu, 07 Feb 2019 02:32:17 GMT
ENV NJS_VERSION=1.14.2.0.2.6-1~stretch
# Thu, 07 Feb 2019 03:04:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 07 Feb 2019 03:04:17 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Thu, 07 Feb 2019 03:04:18 GMT
EXPOSE 80
# Thu, 07 Feb 2019 03:04:19 GMT
STOPSIGNAL SIGTERM
# Thu, 07 Feb 2019 03:04:19 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ab342791b147cdd7fdb7f7ce6e7d3c714dab1fa760446d4d3fa65aa77684df`  
		Last Modified: Thu, 07 Feb 2019 03:06:47 GMT  
		Size: 31.3 MB (31286631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df858b762eb32bae7d1d336530a2e65c9992d9b0f840c0671e72814e4cf9981`  
		Last Modified: Thu, 07 Feb 2019 03:06:35 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable-perl` - linux; 386

```console
$ docker pull nginx@sha256:34b38f14a7058cee53d17fd1f559827809f95dcb88ffc63a24a5397b7bf704d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55313601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20cd91424d937dc8f81a4fbca11064d33f25ee61c6099c4ff0b49573d4b1f9b4`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 03:52:58 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 07 Feb 2019 03:54:12 GMT
ENV NGINX_VERSION=1.14.2-1~stretch
# Thu, 07 Feb 2019 03:54:13 GMT
ENV NJS_VERSION=1.14.2.0.2.6-1~stretch
# Thu, 07 Feb 2019 03:55:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 07 Feb 2019 03:55:12 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Thu, 07 Feb 2019 03:55:12 GMT
EXPOSE 80
# Thu, 07 Feb 2019 03:55:12 GMT
STOPSIGNAL SIGTERM
# Thu, 07 Feb 2019 03:55:12 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91b42ba9a713ad253d8875dad074e63ca04d1eb71878be25d2c2fe6d897395a`  
		Last Modified: Thu, 07 Feb 2019 03:56:15 GMT  
		Size: 32.2 MB (32166424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b541f6f0aa5e31fcee4ed01411ae66e7b6cf9a011462583ecdbf93561b781a`  
		Last Modified: Thu, 07 Feb 2019 03:56:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable-perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:c24c01e3d94564d8bb9e76ba4c7688f3344a4d62f5411bbfa2b8c883feaae478
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54796557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766e0ddfa305cb5ff26363dc034bdd9d0792d9beecb018858a6ddc7ff96e2c96`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 19:31:09 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 06 Feb 2019 19:47:04 GMT
ENV NGINX_VERSION=1.14.2-1~stretch
# Wed, 06 Feb 2019 19:47:06 GMT
ENV NJS_VERSION=1.14.2.0.2.6-1~stretch
# Wed, 06 Feb 2019 20:02:22 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 06 Feb 2019 20:02:33 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 06 Feb 2019 20:02:37 GMT
EXPOSE 80
# Wed, 06 Feb 2019 20:02:40 GMT
STOPSIGNAL SIGTERM
# Wed, 06 Feb 2019 20:02:45 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389165901f814aa9e42378e896555cd14ca36adb20fcf71cd23241a0f5ff23c2`  
		Last Modified: Wed, 06 Feb 2019 20:04:41 GMT  
		Size: 32.0 MB (32040960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88f90046fea420af450bd00dc380b49707fe0bd2e71ef6289a5334843afe4cb`  
		Last Modified: Wed, 06 Feb 2019 20:04:30 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable-perl` - linux; s390x

```console
$ docker pull nginx@sha256:6eca736d7838f45dc8ecf93422c6ff44ccc4f4eea3808c56ce5a481c071d009a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54899130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f57092f079e94cd62e6f601efac9faa9081a180d2983a1a0cc5482a2abb65542`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 16:39:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 06 Feb 2019 16:45:36 GMT
ENV NGINX_VERSION=1.14.2-1~stretch
# Wed, 06 Feb 2019 16:45:36 GMT
ENV NJS_VERSION=1.14.2.0.2.6-1~stretch
# Wed, 06 Feb 2019 16:51:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 06 Feb 2019 16:51:03 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 06 Feb 2019 16:51:03 GMT
EXPOSE 80
# Wed, 06 Feb 2019 16:51:03 GMT
STOPSIGNAL SIGTERM
# Wed, 06 Feb 2019 16:51:03 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed7975b39a21a49e7c9419d55f16bcd58db4801d36e5b6d287d9a9205f8bc82`  
		Last Modified: Wed, 06 Feb 2019 16:52:13 GMT  
		Size: 32.5 MB (32545592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209f9c1f594feb7a102fd8edb3199ddf77c0c346b5356e3d1684f37d0e9c10fa`  
		Last Modified: Wed, 06 Feb 2019 16:52:07 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
