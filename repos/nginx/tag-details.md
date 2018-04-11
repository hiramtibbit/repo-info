<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nginx`

-	[`nginx:1`](#nginx1)
-	[`nginx:1.12`](#nginx112)
-	[`nginx:1.12.2`](#nginx1122)
-	[`nginx:1.12.2-alpine`](#nginx1122-alpine)
-	[`nginx:1.12.2-alpine-perl`](#nginx1122-alpine-perl)
-	[`nginx:1.12.2-perl`](#nginx1122-perl)
-	[`nginx:1.12-alpine`](#nginx112-alpine)
-	[`nginx:1.12-alpine-perl`](#nginx112-alpine-perl)
-	[`nginx:1.12-perl`](#nginx112-perl)
-	[`nginx:1.13`](#nginx113)
-	[`nginx:1.13.12`](#nginx11312)
-	[`nginx:1.13.12-alpine`](#nginx11312-alpine)
-	[`nginx:1.13.12-alpine-perl`](#nginx11312-alpine-perl)
-	[`nginx:1.13.12-perl`](#nginx11312-perl)
-	[`nginx:1.13-alpine`](#nginx113-alpine)
-	[`nginx:1.13-alpine-perl`](#nginx113-alpine-perl)
-	[`nginx:1.13-perl`](#nginx113-perl)
-	[`nginx:1-alpine`](#nginx1-alpine)
-	[`nginx:1-alpine-perl`](#nginx1-alpine-perl)
-	[`nginx:1-perl`](#nginx1-perl)
-	[`nginx:alpine`](#nginxalpine)
-	[`nginx:alpine-perl`](#nginxalpine-perl)
-	[`nginx:latest`](#nginxlatest)
-	[`nginx:mainline`](#nginxmainline)
-	[`nginx:mainline-alpine`](#nginxmainline-alpine)
-	[`nginx:mainline-alpine-perl`](#nginxmainline-alpine-perl)
-	[`nginx:mainline-perl`](#nginxmainline-perl)
-	[`nginx:perl`](#nginxperl)
-	[`nginx:stable`](#nginxstable)
-	[`nginx:stable-alpine`](#nginxstable-alpine)
-	[`nginx:stable-alpine-perl`](#nginxstable-alpine-perl)
-	[`nginx:stable-perl`](#nginxstable-perl)

## `nginx:1`

```console
$ docker pull nginx@sha256:37350fbb4afbb1c01b6e542fe1537dd701e4430983d6d9c673cbb5eccdbec357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:1` - linux; amd64

```console
$ docker pull nginx@sha256:d903fe3076f89ad76afe1cbd0e476d9692d79b3835895b5b3541654c85422bf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44599899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b175e7467d666648e836f666d762be92a56938efe16c874a73bab31be5f99a3b`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:14:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:20:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:20:30 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:20:30 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:20:30 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:20:30 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b2d3302d48e81ac324cdc2d752c7001c8ad85a078126875b6fe2358a617c7a`  
		Last Modified: Tue, 10 Apr 2018 18:35:25 GMT  
		Size: 22.1 MB (22110716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f619103861594f626c38601e5be5c6f70e860ef8cb2d1d49f440fadab423d1`  
		Last Modified: Tue, 10 Apr 2018 18:35:21 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1` - linux; arm variant v7

```console
$ docker pull nginx@sha256:2326c90407740bba0e562c02798882c3e1f44e9255155289ce1c474f6c9c4aa7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 MB (40037109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9a751dd34bb183e7420687b1267bbaacce6db1ac46ea50e4c940bc65341b55`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:34:18 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 11:57:30 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 11:57:34 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 12:01:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 12:01:41 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 12:01:41 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 12:01:42 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 12:01:42 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fcabdbf324699a6f182a7feba31f21d14c04b2b88cf00503b00ff24ccd62f77`  
		Last Modified: Wed, 11 Apr 2018 12:06:44 GMT  
		Size: 20.8 MB (20759295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a250c217acd90ed0d9db487b85b21fe9a1f23d4100373c5445e76358f7f730`  
		Last Modified: Wed, 11 Apr 2018 12:06:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:9cb95611dbeec0c233c1142d7b5f0f08a5f5c20aeb363988bf7b2961b6828268
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 MB (41804388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81aa4596719e218517defebb8f6d1806d1b05ce7dc5468ee7f2f6b9ac20c4498`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:04:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:40:15 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:40:16 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 08:51:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 08:51:25 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:51:26 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:51:28 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:51:29 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14524996ebec9d8cee6880b3c80986296c876b7ed12f03ddaddc83757a0d3d4d`  
		Last Modified: Wed, 11 Apr 2018 09:09:36 GMT  
		Size: 21.5 MB (21466981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8087ad9e89552bfc646a43d91d301d746235475c6fe83c34d346f275de232119`  
		Last Modified: Wed, 11 Apr 2018 09:09:29 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1` - linux; 386

```console
$ docker pull nginx@sha256:5f19078081e95f51b930563694f398db449c1cd68b5639120de521583f0c1018
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45779138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd069b6caf53e5b18a9bfd9494427dfe48abd7ee36c9e564c058cd73cc2937c`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 30 Mar 2018 00:26:46 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 15:53:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 15:53:48 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 15:53:48 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 15:53:48 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 15:53:49 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b23231b0243204229be15ec87bb34319ae172294798b8d7a287320b6716f7bc`  
		Last Modified: Wed, 11 Apr 2018 16:26:17 GMT  
		Size: 22.7 MB (22650150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1a0dc286a4f58a7ea1386f206adac488e41a2ee75cc2b93a7612d7935b8b7f`  
		Last Modified: Wed, 11 Apr 2018 16:26:11 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1` - linux; ppc64le

```console
$ docker pull nginx@sha256:50d00138d9f8632b4727ff56cbe4a562a496146c9fa278909e135afb3cf2155f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44777093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1294f7fb4a6779484eda83ef40aa1155bf210586523316a6fff6273f871a7f`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 06:42:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 08:24:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 08:24:40 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:24:41 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:24:42 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:24:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c876660ea35edfa8250ca232a7e506013f4ca49afcd7949858a7d19b999d84`  
		Last Modified: Wed, 11 Apr 2018 08:36:24 GMT  
		Size: 22.0 MB (22030747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4235b445efab3ac947b80c567fc936cbbe250908737ee2b1fc9d2f4e6de80b5a`  
		Last Modified: Wed, 11 Apr 2018 08:36:18 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1` - linux; s390x

```console
$ docker pull nginx@sha256:d5f1c65191c3de4c1ce34a8bd56fca8f85dfa88efd74a449b4761f4745426f0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44534475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dba1a418335c18350df8d79b3fee8c189f76b2f1bc2ecdaad2f9945b556bbcb`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:18:37 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:15:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:15:28 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:15:28 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:15:28 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:15:28 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0623bed48ddeda93d35898d88a7dd2de6f8f59b6f88707da73dbfb4341fb867`  
		Last Modified: Tue, 10 Apr 2018 18:24:42 GMT  
		Size: 22.2 MB (22193794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3545e127918c82243093305cb7e0bddf7476a5853c1c536131e2da74c4f1a206`  
		Last Modified: Tue, 10 Apr 2018 18:24:35 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.12`

```console
$ docker pull nginx@sha256:416134fd8b36457ee5dfdc08eb7271a30aa0ce0d8a1b55a6bcb9852f8f362630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:1.12` - linux; amd64

```console
$ docker pull nginx@sha256:3390f82ea98dd8d3708c0da78c4012a6b67f5b45dbce8f904e328a7f7ebf1060
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44394770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b155f07a3fa149f5f716ec3d8e74c54d33324c5a03da823514294505f016b7c`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:14:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 08:18:31 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 08:18:31 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 08:18:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 08:18:45 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 08:18:46 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 08:18:46 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 08:18:46 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37cbdc183b265b88db220775ae521536ab525573502f5aac7d528e0b87d5d3d`  
		Last Modified: Wed, 14 Mar 2018 08:22:50 GMT  
		Size: 21.9 MB (21905587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b5ad0b466c6edde6176e53e656dc841bdca51d54e77ab55403c600272df8b0`  
		Last Modified: Wed, 14 Mar 2018 08:22:47 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12` - linux; arm variant v7

```console
$ docker pull nginx@sha256:70beb4e912b1f3449ea5a619eb8f6d66b761a8549824096acd462189942446fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39923850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcad5e0f4d826f8f12c4366ecdc25e0eb2f1c9d07752b9024145cd9e2007a942`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:34:18 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 13:44:22 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 13:44:22 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 13:48:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 13:48:07 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 13:48:07 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 13:48:07 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 13:48:08 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0fc5333f2f3108469912ea07f8e890f5d3cf83efe3b5c6467aa09c3297b979`  
		Last Modified: Wed, 14 Mar 2018 13:55:26 GMT  
		Size: 20.6 MB (20646036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2bfb02f1756284420118a6ed3c70d7d4309f265e844a7302640c2422583846`  
		Last Modified: Wed, 14 Mar 2018 13:55:21 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:e3b31070e64696508b765ecb8d698577d0a14df7cb2dbafcb6c26e5446aa8113
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 MB (41669943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0af0e70ec45f9b637d82dd2089c34ec9288e4e19a21b823cf3b38bfdd1bb04c`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:04:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 20:39:31 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 20:39:32 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 20:52:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 20:53:08 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 20:53:09 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 20:53:10 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 20:53:11 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779eb49fd3fcf0597ad59f65e7b49129de58bb928815e20283baed4918e98b8f`  
		Last Modified: Wed, 14 Mar 2018 21:08:57 GMT  
		Size: 21.3 MB (21332535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83e0d73768b7ec28e090a2732401fd4fa576676cc9272ba0ec9bc785e5f8d29`  
		Last Modified: Wed, 14 Mar 2018 21:08:49 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12` - linux; 386

```console
$ docker pull nginx@sha256:a20f06d67b32fd8aed8b5c19da84542931e91691866ec1bd0db9dd2a7f9753ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45574484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00123fa34261c71ce47779057bdad761054510c9c73c27afe9f0d57d4077dcf8`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 30 Mar 2018 00:26:46 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Fri, 30 Mar 2018 00:49:32 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Fri, 30 Mar 2018 00:49:32 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Fri, 30 Mar 2018 00:49:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 30 Mar 2018 00:49:55 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Fri, 30 Mar 2018 00:49:55 GMT
EXPOSE 80/tcp
# Fri, 30 Mar 2018 00:49:55 GMT
STOPSIGNAL [SIGTERM]
# Fri, 30 Mar 2018 00:49:56 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e952f0bba7505fe42da161ba2d6ddbb818b4628ac9cf62d6fd2ec324804382de`  
		Last Modified: Fri, 30 Mar 2018 02:34:30 GMT  
		Size: 22.4 MB (22445497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1500c51299013cd94ce0f0a99fb4d4fea4baa9793d41ffc94c051f12f87cee4b`  
		Last Modified: Fri, 30 Mar 2018 02:34:24 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12` - linux; ppc64le

```console
$ docker pull nginx@sha256:099e32ca7f73cea0039969c6adf10e07939d99c9d0ce8ed5493369fb3ef6cd42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.7 MB (44652442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b6d082963c4bb4423e92d13d6c89be30f999ef4373d369bf6efb648d765573`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 06:42:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 15 Mar 2018 07:23:56 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Thu, 15 Mar 2018 07:23:58 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Thu, 15 Mar 2018 07:38:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 07:38:20 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Thu, 15 Mar 2018 07:38:21 GMT
EXPOSE 80/tcp
# Thu, 15 Mar 2018 07:38:22 GMT
STOPSIGNAL [SIGTERM]
# Thu, 15 Mar 2018 07:38:24 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8260b927878c919fedd403f2149cc5eec0a2ba687d5c14c851496434186d5496`  
		Last Modified: Thu, 15 Mar 2018 07:57:58 GMT  
		Size: 21.9 MB (21906096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b20212621e028b9870bba06ee1173e48690f1a3db387f1df1e299562363efb0`  
		Last Modified: Thu, 15 Mar 2018 07:57:53 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12` - linux; s390x

```console
$ docker pull nginx@sha256:6df9187bd3e8d895a912d2d947d5b89af72317b77a65980fb62ded04d088c596
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44389882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bada8ad21adbbcab56c0a1ec728d192f81557efff038a68e10c104d4f7eff4b1`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:18:37 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 06:25:20 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 06:25:20 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 06:27:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 06:27:43 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 06:27:43 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 06:27:44 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 06:27:44 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec88c12cb299cae94bb6f2604737398674883fd5902e6263eb9fb737052086a1`  
		Last Modified: Wed, 14 Mar 2018 06:32:18 GMT  
		Size: 22.0 MB (22049201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a231f81a15d69f6fb41b6ac4b09d5e6e890e1262bf4fe41c037936ed4808f0`  
		Last Modified: Wed, 14 Mar 2018 06:32:16 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.12.2`

```console
$ docker pull nginx@sha256:416134fd8b36457ee5dfdc08eb7271a30aa0ce0d8a1b55a6bcb9852f8f362630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:1.12.2` - linux; amd64

```console
$ docker pull nginx@sha256:3390f82ea98dd8d3708c0da78c4012a6b67f5b45dbce8f904e328a7f7ebf1060
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44394770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b155f07a3fa149f5f716ec3d8e74c54d33324c5a03da823514294505f016b7c`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:14:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 08:18:31 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 08:18:31 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 08:18:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 08:18:45 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 08:18:46 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 08:18:46 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 08:18:46 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37cbdc183b265b88db220775ae521536ab525573502f5aac7d528e0b87d5d3d`  
		Last Modified: Wed, 14 Mar 2018 08:22:50 GMT  
		Size: 21.9 MB (21905587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b5ad0b466c6edde6176e53e656dc841bdca51d54e77ab55403c600272df8b0`  
		Last Modified: Wed, 14 Mar 2018 08:22:47 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12.2` - linux; arm variant v7

```console
$ docker pull nginx@sha256:70beb4e912b1f3449ea5a619eb8f6d66b761a8549824096acd462189942446fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39923850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcad5e0f4d826f8f12c4366ecdc25e0eb2f1c9d07752b9024145cd9e2007a942`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:34:18 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 13:44:22 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 13:44:22 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 13:48:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 13:48:07 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 13:48:07 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 13:48:07 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 13:48:08 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0fc5333f2f3108469912ea07f8e890f5d3cf83efe3b5c6467aa09c3297b979`  
		Last Modified: Wed, 14 Mar 2018 13:55:26 GMT  
		Size: 20.6 MB (20646036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2bfb02f1756284420118a6ed3c70d7d4309f265e844a7302640c2422583846`  
		Last Modified: Wed, 14 Mar 2018 13:55:21 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12.2` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:e3b31070e64696508b765ecb8d698577d0a14df7cb2dbafcb6c26e5446aa8113
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 MB (41669943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0af0e70ec45f9b637d82dd2089c34ec9288e4e19a21b823cf3b38bfdd1bb04c`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:04:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 20:39:31 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 20:39:32 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 20:52:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 20:53:08 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 20:53:09 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 20:53:10 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 20:53:11 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779eb49fd3fcf0597ad59f65e7b49129de58bb928815e20283baed4918e98b8f`  
		Last Modified: Wed, 14 Mar 2018 21:08:57 GMT  
		Size: 21.3 MB (21332535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83e0d73768b7ec28e090a2732401fd4fa576676cc9272ba0ec9bc785e5f8d29`  
		Last Modified: Wed, 14 Mar 2018 21:08:49 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12.2` - linux; 386

```console
$ docker pull nginx@sha256:a20f06d67b32fd8aed8b5c19da84542931e91691866ec1bd0db9dd2a7f9753ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45574484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00123fa34261c71ce47779057bdad761054510c9c73c27afe9f0d57d4077dcf8`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 30 Mar 2018 00:26:46 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Fri, 30 Mar 2018 00:49:32 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Fri, 30 Mar 2018 00:49:32 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Fri, 30 Mar 2018 00:49:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 30 Mar 2018 00:49:55 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Fri, 30 Mar 2018 00:49:55 GMT
EXPOSE 80/tcp
# Fri, 30 Mar 2018 00:49:55 GMT
STOPSIGNAL [SIGTERM]
# Fri, 30 Mar 2018 00:49:56 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e952f0bba7505fe42da161ba2d6ddbb818b4628ac9cf62d6fd2ec324804382de`  
		Last Modified: Fri, 30 Mar 2018 02:34:30 GMT  
		Size: 22.4 MB (22445497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1500c51299013cd94ce0f0a99fb4d4fea4baa9793d41ffc94c051f12f87cee4b`  
		Last Modified: Fri, 30 Mar 2018 02:34:24 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12.2` - linux; ppc64le

```console
$ docker pull nginx@sha256:099e32ca7f73cea0039969c6adf10e07939d99c9d0ce8ed5493369fb3ef6cd42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.7 MB (44652442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b6d082963c4bb4423e92d13d6c89be30f999ef4373d369bf6efb648d765573`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 06:42:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 15 Mar 2018 07:23:56 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Thu, 15 Mar 2018 07:23:58 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Thu, 15 Mar 2018 07:38:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 07:38:20 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Thu, 15 Mar 2018 07:38:21 GMT
EXPOSE 80/tcp
# Thu, 15 Mar 2018 07:38:22 GMT
STOPSIGNAL [SIGTERM]
# Thu, 15 Mar 2018 07:38:24 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8260b927878c919fedd403f2149cc5eec0a2ba687d5c14c851496434186d5496`  
		Last Modified: Thu, 15 Mar 2018 07:57:58 GMT  
		Size: 21.9 MB (21906096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b20212621e028b9870bba06ee1173e48690f1a3db387f1df1e299562363efb0`  
		Last Modified: Thu, 15 Mar 2018 07:57:53 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12.2` - linux; s390x

```console
$ docker pull nginx@sha256:6df9187bd3e8d895a912d2d947d5b89af72317b77a65980fb62ded04d088c596
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44389882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bada8ad21adbbcab56c0a1ec728d192f81557efff038a68e10c104d4f7eff4b1`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:18:37 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 06:25:20 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 06:25:20 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 06:27:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 06:27:43 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 06:27:43 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 06:27:44 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 06:27:44 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec88c12cb299cae94bb6f2604737398674883fd5902e6263eb9fb737052086a1`  
		Last Modified: Wed, 14 Mar 2018 06:32:18 GMT  
		Size: 22.0 MB (22049201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a231f81a15d69f6fb41b6ac4b09d5e6e890e1262bf4fe41c037936ed4808f0`  
		Last Modified: Wed, 14 Mar 2018 06:32:16 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.12.2-alpine`

```console
$ docker pull nginx@sha256:db5acc22920799fe387a903437eb89387607e5b3f63cf0f4472ac182d7bad644
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nginx:1.12.2-alpine` - linux; amd64

```console
$ docker pull nginx@sha256:812dd32216edcfd41decaacc8fe7cae80b39e5a87b0b8923bc15c4db94cf5bdb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6742471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ed1c575f8176d90af60ed57f89a9bae0e16c56b48519311f48b106e0e0c407`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:08:56 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 10 Jan 2018 04:13:11 GMT
ENV NGINX_VERSION=1.12.2
# Wed, 10 Jan 2018 04:14:20 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 10 Jan 2018 04:14:22 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 10 Jan 2018 04:14:23 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 10 Jan 2018 04:14:23 GMT
EXPOSE 80/tcp
# Wed, 10 Jan 2018 04:14:23 GMT
STOPSIGNAL [SIGTERM]
# Wed, 10 Jan 2018 04:14:23 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3988949040d4843cce89896dbc55cc29c1ffabf917167ebabe4214e6e66233`  
		Last Modified: Wed, 10 Jan 2018 04:19:47 GMT  
		Size: 4.8 MB (4771217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6642feac7289087182c44548776c392c5cf9ccc73289541335b4c4634670c70`  
		Last Modified: Wed, 10 Jan 2018 04:19:44 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20f0a205eaa02418dc50ce73e8f0dcd680aee77e04338b81b5d92117e6f9d49`  
		Last Modified: Wed, 10 Jan 2018 04:19:44 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.12.2-alpine-perl`

```console
$ docker pull nginx@sha256:b7970b06de2b70acca1784ab92fb06d60f4f714e901a55b6b5211c22a446dbd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nginx:1.12.2-alpine-perl` - linux; amd64

```console
$ docker pull nginx@sha256:301cdd0e2760bd1a5fad429f668187fe44cac2a16c68cb4b36b3ba90a0f6d293
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18125785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a456f1d7aeaa5531a3c5da8bfbda7ca9a364405cfa98f2a0c5aa1166bf3c89`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:08:56 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 10 Jan 2018 04:13:11 GMT
ENV NGINX_VERSION=1.12.2
# Wed, 10 Jan 2018 04:16:03 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 10 Jan 2018 04:16:04 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 10 Jan 2018 04:16:04 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 10 Jan 2018 04:16:05 GMT
EXPOSE 80/tcp
# Wed, 10 Jan 2018 04:16:05 GMT
STOPSIGNAL [SIGTERM]
# Wed, 10 Jan 2018 04:16:06 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a55c7b3b0e144cc853227e6ce574f75b51bc481ce713d06b4a0578f426d448`  
		Last Modified: Wed, 10 Jan 2018 04:20:31 GMT  
		Size: 16.2 MB (16154527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552be5624b14df0a58b547ff1c8695bb3fd62c11ee4d0bca5ef8aca128cc42ba`  
		Last Modified: Wed, 10 Jan 2018 04:20:27 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40fc04944e915238b7394b033a41c3c8d539e518e988dcf882c80e6e9ad3eb61`  
		Last Modified: Wed, 10 Jan 2018 04:20:28 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.12.2-perl`

```console
$ docker pull nginx@sha256:05070a93535b96d48e5caadc66709cfc22ab5653ea23f048e86900065bbf828c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:1.12.2-perl` - linux; amd64

```console
$ docker pull nginx@sha256:9963f9d34928535e14e07e8523b286bdcbdf36b9f1675d1e951cae09727b2f7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54321982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:056eec01604fec89522aefe75ee49ecb0fc62deb037973751b9fd861116e06ef`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:14:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 08:18:31 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 08:18:31 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 08:19:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 08:19:18 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 08:19:19 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 08:19:19 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 08:19:19 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e91a536d41fc57cba782012132971acf4a185a718d9b6116a631cc9748acd5cb`  
		Last Modified: Wed, 14 Mar 2018 08:23:48 GMT  
		Size: 31.8 MB (31832799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022590bda3c4b3ed25d86dd7b34d8dfaf5600d38b2508dd2607e673543476af3`  
		Last Modified: Wed, 14 Mar 2018 08:23:43 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12.2-perl` - linux; arm variant v7

```console
$ docker pull nginx@sha256:a6660be602763693e814e9434f1edab6b5f9faf6ccac43c65e5e3d72e3da3dfa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48942627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:468747828af0f29c25b78ed50bae6aa56cd7c82b145a42b2223253ff0072d392`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:34:18 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 13:44:22 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 13:44:22 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 13:52:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 13:52:45 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 13:52:45 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 13:52:45 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 13:52:45 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190678bfe94a2a940479c4f3fc5cbf34325a7a211c5bba507b92be50021be2df`  
		Last Modified: Wed, 14 Mar 2018 13:56:08 GMT  
		Size: 29.7 MB (29664813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9cbb97a1d3183aaa0fe3efa08bb935ee82b8c49e965a2c12a9863a318ae8367`  
		Last Modified: Wed, 14 Mar 2018 13:55:59 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12.2-perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:1115451d2b8f6b84998cc3fef9cf502752a7a29a902c87b73331944f060ddf1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51416246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:291742646ae285b4c0567b6e49bec256be232a0e5c3996ead6100c1db031fcee`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:04:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 20:39:31 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 20:39:32 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 21:03:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 21:04:08 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 21:04:08 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 21:04:09 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 21:04:10 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7cbfa117458303395a2c9a6edf6f6944457257d95ec88e8f6942c8fc6b90fe`  
		Last Modified: Wed, 14 Mar 2018 21:10:30 GMT  
		Size: 31.1 MB (31078839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2ab806f6745c8a7f8e4c3e38e2cab9a15ea010596771d2763c1e1c4c453881`  
		Last Modified: Wed, 14 Mar 2018 21:10:19 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12.2-perl` - linux; 386

```console
$ docker pull nginx@sha256:1c129507a0f7a71dcba0e08b8b1c4270625c9908380f9594e5f05c81f972cefb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54970041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed35225bbf39570d5d15eead05347ac7d9066d78c4bbdd875d72941a0db0fbcd`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 30 Mar 2018 00:26:46 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Fri, 30 Mar 2018 00:49:32 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Fri, 30 Mar 2018 00:49:32 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Fri, 30 Mar 2018 00:52:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 30 Mar 2018 00:53:00 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Fri, 30 Mar 2018 00:53:00 GMT
EXPOSE 80/tcp
# Fri, 30 Mar 2018 00:53:00 GMT
STOPSIGNAL [SIGTERM]
# Fri, 30 Mar 2018 00:53:01 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d850956bf5cf27205fb4dea58c67b5de3997152aeb9211c33657c145ae3b9a8`  
		Last Modified: Fri, 30 Mar 2018 02:45:18 GMT  
		Size: 31.8 MB (31841056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78c1a63e31f7b993813ff5d374bb0d2cffdc470eea8ace0bd41a5e83bd13982`  
		Last Modified: Fri, 30 Mar 2018 02:45:07 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12.2-perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:68f4aa2e6f6733a6c9dfdfd8c0805a0c6cc8169b448e6abfc441657a1d74e51f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54556575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d226d824ba8054a74b0163fa1f7a7de8505975b5e3c3143633c8984c3492148c`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 06:42:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 15 Mar 2018 07:23:56 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Thu, 15 Mar 2018 07:23:58 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Thu, 15 Mar 2018 07:55:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 07:55:27 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Thu, 15 Mar 2018 07:55:31 GMT
EXPOSE 80/tcp
# Thu, 15 Mar 2018 07:55:36 GMT
STOPSIGNAL [SIGTERM]
# Thu, 15 Mar 2018 07:55:40 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa76f585dfd161ef106b090f1d3e31566ce963c5b08a35ec34e709b6470d16c`  
		Last Modified: Thu, 15 Mar 2018 07:58:28 GMT  
		Size: 31.8 MB (31810229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:208e3f73d9242f4c850ad14ee0b3f3b5aceb8660ac08cd11b3238fa86fbb1969`  
		Last Modified: Thu, 15 Mar 2018 07:58:18 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12.2-perl` - linux; s390x

```console
$ docker pull nginx@sha256:15c8cc40763ea1ace0acda934c3ba68ab571d3f6249c8e05d7eb44d22e04b7fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54652282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524a34cfc49ae96abee67e38ff9dd6ca622a70098612fa9f4a12f31f35954276`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:18:37 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 06:25:20 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 06:25:20 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 06:30:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 06:30:41 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 06:30:41 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 06:30:41 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 06:30:41 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7c36600a3cf51b9444e3dd8371d272e48447d5fc65cf06324a58019492f188`  
		Last Modified: Wed, 14 Mar 2018 06:32:39 GMT  
		Size: 32.3 MB (32311601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0904de48aa7ed835aaf0b3b6747318bc07561e6b06939475dedc3b226ab065`  
		Last Modified: Wed, 14 Mar 2018 06:32:31 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.12-alpine`

```console
$ docker pull nginx@sha256:db5acc22920799fe387a903437eb89387607e5b3f63cf0f4472ac182d7bad644
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nginx:1.12-alpine` - linux; amd64

```console
$ docker pull nginx@sha256:812dd32216edcfd41decaacc8fe7cae80b39e5a87b0b8923bc15c4db94cf5bdb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6742471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ed1c575f8176d90af60ed57f89a9bae0e16c56b48519311f48b106e0e0c407`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:08:56 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 10 Jan 2018 04:13:11 GMT
ENV NGINX_VERSION=1.12.2
# Wed, 10 Jan 2018 04:14:20 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 10 Jan 2018 04:14:22 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 10 Jan 2018 04:14:23 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 10 Jan 2018 04:14:23 GMT
EXPOSE 80/tcp
# Wed, 10 Jan 2018 04:14:23 GMT
STOPSIGNAL [SIGTERM]
# Wed, 10 Jan 2018 04:14:23 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3988949040d4843cce89896dbc55cc29c1ffabf917167ebabe4214e6e66233`  
		Last Modified: Wed, 10 Jan 2018 04:19:47 GMT  
		Size: 4.8 MB (4771217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6642feac7289087182c44548776c392c5cf9ccc73289541335b4c4634670c70`  
		Last Modified: Wed, 10 Jan 2018 04:19:44 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20f0a205eaa02418dc50ce73e8f0dcd680aee77e04338b81b5d92117e6f9d49`  
		Last Modified: Wed, 10 Jan 2018 04:19:44 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.12-alpine-perl`

```console
$ docker pull nginx@sha256:b7970b06de2b70acca1784ab92fb06d60f4f714e901a55b6b5211c22a446dbd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nginx:1.12-alpine-perl` - linux; amd64

```console
$ docker pull nginx@sha256:301cdd0e2760bd1a5fad429f668187fe44cac2a16c68cb4b36b3ba90a0f6d293
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18125785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a456f1d7aeaa5531a3c5da8bfbda7ca9a364405cfa98f2a0c5aa1166bf3c89`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:08:56 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 10 Jan 2018 04:13:11 GMT
ENV NGINX_VERSION=1.12.2
# Wed, 10 Jan 2018 04:16:03 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 10 Jan 2018 04:16:04 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 10 Jan 2018 04:16:04 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 10 Jan 2018 04:16:05 GMT
EXPOSE 80/tcp
# Wed, 10 Jan 2018 04:16:05 GMT
STOPSIGNAL [SIGTERM]
# Wed, 10 Jan 2018 04:16:06 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a55c7b3b0e144cc853227e6ce574f75b51bc481ce713d06b4a0578f426d448`  
		Last Modified: Wed, 10 Jan 2018 04:20:31 GMT  
		Size: 16.2 MB (16154527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552be5624b14df0a58b547ff1c8695bb3fd62c11ee4d0bca5ef8aca128cc42ba`  
		Last Modified: Wed, 10 Jan 2018 04:20:27 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40fc04944e915238b7394b033a41c3c8d539e518e988dcf882c80e6e9ad3eb61`  
		Last Modified: Wed, 10 Jan 2018 04:20:28 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.12-perl`

```console
$ docker pull nginx@sha256:05070a93535b96d48e5caadc66709cfc22ab5653ea23f048e86900065bbf828c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:1.12-perl` - linux; amd64

```console
$ docker pull nginx@sha256:9963f9d34928535e14e07e8523b286bdcbdf36b9f1675d1e951cae09727b2f7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54321982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:056eec01604fec89522aefe75ee49ecb0fc62deb037973751b9fd861116e06ef`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:14:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 08:18:31 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 08:18:31 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 08:19:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 08:19:18 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 08:19:19 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 08:19:19 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 08:19:19 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e91a536d41fc57cba782012132971acf4a185a718d9b6116a631cc9748acd5cb`  
		Last Modified: Wed, 14 Mar 2018 08:23:48 GMT  
		Size: 31.8 MB (31832799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022590bda3c4b3ed25d86dd7b34d8dfaf5600d38b2508dd2607e673543476af3`  
		Last Modified: Wed, 14 Mar 2018 08:23:43 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12-perl` - linux; arm variant v7

```console
$ docker pull nginx@sha256:a6660be602763693e814e9434f1edab6b5f9faf6ccac43c65e5e3d72e3da3dfa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48942627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:468747828af0f29c25b78ed50bae6aa56cd7c82b145a42b2223253ff0072d392`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:34:18 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 13:44:22 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 13:44:22 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 13:52:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 13:52:45 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 13:52:45 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 13:52:45 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 13:52:45 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190678bfe94a2a940479c4f3fc5cbf34325a7a211c5bba507b92be50021be2df`  
		Last Modified: Wed, 14 Mar 2018 13:56:08 GMT  
		Size: 29.7 MB (29664813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9cbb97a1d3183aaa0fe3efa08bb935ee82b8c49e965a2c12a9863a318ae8367`  
		Last Modified: Wed, 14 Mar 2018 13:55:59 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12-perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:1115451d2b8f6b84998cc3fef9cf502752a7a29a902c87b73331944f060ddf1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51416246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:291742646ae285b4c0567b6e49bec256be232a0e5c3996ead6100c1db031fcee`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:04:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 20:39:31 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 20:39:32 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 21:03:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 21:04:08 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 21:04:08 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 21:04:09 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 21:04:10 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7cbfa117458303395a2c9a6edf6f6944457257d95ec88e8f6942c8fc6b90fe`  
		Last Modified: Wed, 14 Mar 2018 21:10:30 GMT  
		Size: 31.1 MB (31078839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2ab806f6745c8a7f8e4c3e38e2cab9a15ea010596771d2763c1e1c4c453881`  
		Last Modified: Wed, 14 Mar 2018 21:10:19 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12-perl` - linux; 386

```console
$ docker pull nginx@sha256:1c129507a0f7a71dcba0e08b8b1c4270625c9908380f9594e5f05c81f972cefb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54970041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed35225bbf39570d5d15eead05347ac7d9066d78c4bbdd875d72941a0db0fbcd`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 30 Mar 2018 00:26:46 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Fri, 30 Mar 2018 00:49:32 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Fri, 30 Mar 2018 00:49:32 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Fri, 30 Mar 2018 00:52:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 30 Mar 2018 00:53:00 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Fri, 30 Mar 2018 00:53:00 GMT
EXPOSE 80/tcp
# Fri, 30 Mar 2018 00:53:00 GMT
STOPSIGNAL [SIGTERM]
# Fri, 30 Mar 2018 00:53:01 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d850956bf5cf27205fb4dea58c67b5de3997152aeb9211c33657c145ae3b9a8`  
		Last Modified: Fri, 30 Mar 2018 02:45:18 GMT  
		Size: 31.8 MB (31841056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78c1a63e31f7b993813ff5d374bb0d2cffdc470eea8ace0bd41a5e83bd13982`  
		Last Modified: Fri, 30 Mar 2018 02:45:07 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12-perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:68f4aa2e6f6733a6c9dfdfd8c0805a0c6cc8169b448e6abfc441657a1d74e51f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54556575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d226d824ba8054a74b0163fa1f7a7de8505975b5e3c3143633c8984c3492148c`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 06:42:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 15 Mar 2018 07:23:56 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Thu, 15 Mar 2018 07:23:58 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Thu, 15 Mar 2018 07:55:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 07:55:27 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Thu, 15 Mar 2018 07:55:31 GMT
EXPOSE 80/tcp
# Thu, 15 Mar 2018 07:55:36 GMT
STOPSIGNAL [SIGTERM]
# Thu, 15 Mar 2018 07:55:40 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa76f585dfd161ef106b090f1d3e31566ce963c5b08a35ec34e709b6470d16c`  
		Last Modified: Thu, 15 Mar 2018 07:58:28 GMT  
		Size: 31.8 MB (31810229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:208e3f73d9242f4c850ad14ee0b3f3b5aceb8660ac08cd11b3238fa86fbb1969`  
		Last Modified: Thu, 15 Mar 2018 07:58:18 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.12-perl` - linux; s390x

```console
$ docker pull nginx@sha256:15c8cc40763ea1ace0acda934c3ba68ab571d3f6249c8e05d7eb44d22e04b7fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54652282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524a34cfc49ae96abee67e38ff9dd6ca622a70098612fa9f4a12f31f35954276`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:18:37 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 06:25:20 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 06:25:20 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 06:30:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 06:30:41 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 06:30:41 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 06:30:41 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 06:30:41 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7c36600a3cf51b9444e3dd8371d272e48447d5fc65cf06324a58019492f188`  
		Last Modified: Wed, 14 Mar 2018 06:32:39 GMT  
		Size: 32.3 MB (32311601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0904de48aa7ed835aaf0b3b6747318bc07561e6b06939475dedc3b226ab065`  
		Last Modified: Wed, 14 Mar 2018 06:32:31 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.13`

```console
$ docker pull nginx@sha256:37350fbb4afbb1c01b6e542fe1537dd701e4430983d6d9c673cbb5eccdbec357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:1.13` - linux; amd64

```console
$ docker pull nginx@sha256:d903fe3076f89ad76afe1cbd0e476d9692d79b3835895b5b3541654c85422bf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44599899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b175e7467d666648e836f666d762be92a56938efe16c874a73bab31be5f99a3b`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:14:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:20:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:20:30 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:20:30 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:20:30 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:20:30 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b2d3302d48e81ac324cdc2d752c7001c8ad85a078126875b6fe2358a617c7a`  
		Last Modified: Tue, 10 Apr 2018 18:35:25 GMT  
		Size: 22.1 MB (22110716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f619103861594f626c38601e5be5c6f70e860ef8cb2d1d49f440fadab423d1`  
		Last Modified: Tue, 10 Apr 2018 18:35:21 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13` - linux; arm variant v7

```console
$ docker pull nginx@sha256:2326c90407740bba0e562c02798882c3e1f44e9255155289ce1c474f6c9c4aa7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 MB (40037109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9a751dd34bb183e7420687b1267bbaacce6db1ac46ea50e4c940bc65341b55`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:34:18 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 11:57:30 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 11:57:34 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 12:01:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 12:01:41 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 12:01:41 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 12:01:42 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 12:01:42 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fcabdbf324699a6f182a7feba31f21d14c04b2b88cf00503b00ff24ccd62f77`  
		Last Modified: Wed, 11 Apr 2018 12:06:44 GMT  
		Size: 20.8 MB (20759295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a250c217acd90ed0d9db487b85b21fe9a1f23d4100373c5445e76358f7f730`  
		Last Modified: Wed, 11 Apr 2018 12:06:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:9cb95611dbeec0c233c1142d7b5f0f08a5f5c20aeb363988bf7b2961b6828268
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 MB (41804388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81aa4596719e218517defebb8f6d1806d1b05ce7dc5468ee7f2f6b9ac20c4498`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:04:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:40:15 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:40:16 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 08:51:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 08:51:25 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:51:26 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:51:28 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:51:29 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14524996ebec9d8cee6880b3c80986296c876b7ed12f03ddaddc83757a0d3d4d`  
		Last Modified: Wed, 11 Apr 2018 09:09:36 GMT  
		Size: 21.5 MB (21466981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8087ad9e89552bfc646a43d91d301d746235475c6fe83c34d346f275de232119`  
		Last Modified: Wed, 11 Apr 2018 09:09:29 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13` - linux; 386

```console
$ docker pull nginx@sha256:5f19078081e95f51b930563694f398db449c1cd68b5639120de521583f0c1018
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45779138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd069b6caf53e5b18a9bfd9494427dfe48abd7ee36c9e564c058cd73cc2937c`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 30 Mar 2018 00:26:46 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 15:53:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 15:53:48 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 15:53:48 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 15:53:48 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 15:53:49 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b23231b0243204229be15ec87bb34319ae172294798b8d7a287320b6716f7bc`  
		Last Modified: Wed, 11 Apr 2018 16:26:17 GMT  
		Size: 22.7 MB (22650150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1a0dc286a4f58a7ea1386f206adac488e41a2ee75cc2b93a7612d7935b8b7f`  
		Last Modified: Wed, 11 Apr 2018 16:26:11 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13` - linux; ppc64le

```console
$ docker pull nginx@sha256:50d00138d9f8632b4727ff56cbe4a562a496146c9fa278909e135afb3cf2155f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44777093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1294f7fb4a6779484eda83ef40aa1155bf210586523316a6fff6273f871a7f`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 06:42:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 08:24:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 08:24:40 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:24:41 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:24:42 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:24:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c876660ea35edfa8250ca232a7e506013f4ca49afcd7949858a7d19b999d84`  
		Last Modified: Wed, 11 Apr 2018 08:36:24 GMT  
		Size: 22.0 MB (22030747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4235b445efab3ac947b80c567fc936cbbe250908737ee2b1fc9d2f4e6de80b5a`  
		Last Modified: Wed, 11 Apr 2018 08:36:18 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13` - linux; s390x

```console
$ docker pull nginx@sha256:d5f1c65191c3de4c1ce34a8bd56fca8f85dfa88efd74a449b4761f4745426f0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44534475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dba1a418335c18350df8d79b3fee8c189f76b2f1bc2ecdaad2f9945b556bbcb`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:18:37 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:15:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:15:28 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:15:28 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:15:28 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:15:28 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0623bed48ddeda93d35898d88a7dd2de6f8f59b6f88707da73dbfb4341fb867`  
		Last Modified: Tue, 10 Apr 2018 18:24:42 GMT  
		Size: 22.2 MB (22193794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3545e127918c82243093305cb7e0bddf7476a5853c1c536131e2da74c4f1a206`  
		Last Modified: Tue, 10 Apr 2018 18:24:35 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.13.12`

```console
$ docker pull nginx@sha256:37350fbb4afbb1c01b6e542fe1537dd701e4430983d6d9c673cbb5eccdbec357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:1.13.12` - linux; amd64

```console
$ docker pull nginx@sha256:d903fe3076f89ad76afe1cbd0e476d9692d79b3835895b5b3541654c85422bf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44599899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b175e7467d666648e836f666d762be92a56938efe16c874a73bab31be5f99a3b`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:14:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:20:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:20:30 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:20:30 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:20:30 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:20:30 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b2d3302d48e81ac324cdc2d752c7001c8ad85a078126875b6fe2358a617c7a`  
		Last Modified: Tue, 10 Apr 2018 18:35:25 GMT  
		Size: 22.1 MB (22110716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f619103861594f626c38601e5be5c6f70e860ef8cb2d1d49f440fadab423d1`  
		Last Modified: Tue, 10 Apr 2018 18:35:21 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13.12` - linux; arm variant v7

```console
$ docker pull nginx@sha256:2326c90407740bba0e562c02798882c3e1f44e9255155289ce1c474f6c9c4aa7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 MB (40037109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9a751dd34bb183e7420687b1267bbaacce6db1ac46ea50e4c940bc65341b55`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:34:18 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 11:57:30 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 11:57:34 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 12:01:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 12:01:41 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 12:01:41 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 12:01:42 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 12:01:42 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fcabdbf324699a6f182a7feba31f21d14c04b2b88cf00503b00ff24ccd62f77`  
		Last Modified: Wed, 11 Apr 2018 12:06:44 GMT  
		Size: 20.8 MB (20759295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a250c217acd90ed0d9db487b85b21fe9a1f23d4100373c5445e76358f7f730`  
		Last Modified: Wed, 11 Apr 2018 12:06:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13.12` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:9cb95611dbeec0c233c1142d7b5f0f08a5f5c20aeb363988bf7b2961b6828268
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 MB (41804388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81aa4596719e218517defebb8f6d1806d1b05ce7dc5468ee7f2f6b9ac20c4498`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:04:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:40:15 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:40:16 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 08:51:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 08:51:25 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:51:26 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:51:28 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:51:29 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14524996ebec9d8cee6880b3c80986296c876b7ed12f03ddaddc83757a0d3d4d`  
		Last Modified: Wed, 11 Apr 2018 09:09:36 GMT  
		Size: 21.5 MB (21466981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8087ad9e89552bfc646a43d91d301d746235475c6fe83c34d346f275de232119`  
		Last Modified: Wed, 11 Apr 2018 09:09:29 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13.12` - linux; 386

```console
$ docker pull nginx@sha256:5f19078081e95f51b930563694f398db449c1cd68b5639120de521583f0c1018
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45779138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd069b6caf53e5b18a9bfd9494427dfe48abd7ee36c9e564c058cd73cc2937c`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 30 Mar 2018 00:26:46 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 15:53:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 15:53:48 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 15:53:48 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 15:53:48 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 15:53:49 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b23231b0243204229be15ec87bb34319ae172294798b8d7a287320b6716f7bc`  
		Last Modified: Wed, 11 Apr 2018 16:26:17 GMT  
		Size: 22.7 MB (22650150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1a0dc286a4f58a7ea1386f206adac488e41a2ee75cc2b93a7612d7935b8b7f`  
		Last Modified: Wed, 11 Apr 2018 16:26:11 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13.12` - linux; ppc64le

```console
$ docker pull nginx@sha256:50d00138d9f8632b4727ff56cbe4a562a496146c9fa278909e135afb3cf2155f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44777093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1294f7fb4a6779484eda83ef40aa1155bf210586523316a6fff6273f871a7f`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 06:42:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 08:24:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 08:24:40 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:24:41 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:24:42 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:24:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c876660ea35edfa8250ca232a7e506013f4ca49afcd7949858a7d19b999d84`  
		Last Modified: Wed, 11 Apr 2018 08:36:24 GMT  
		Size: 22.0 MB (22030747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4235b445efab3ac947b80c567fc936cbbe250908737ee2b1fc9d2f4e6de80b5a`  
		Last Modified: Wed, 11 Apr 2018 08:36:18 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13.12` - linux; s390x

```console
$ docker pull nginx@sha256:d5f1c65191c3de4c1ce34a8bd56fca8f85dfa88efd74a449b4761f4745426f0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44534475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dba1a418335c18350df8d79b3fee8c189f76b2f1bc2ecdaad2f9945b556bbcb`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:18:37 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:15:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:15:28 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:15:28 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:15:28 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:15:28 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0623bed48ddeda93d35898d88a7dd2de6f8f59b6f88707da73dbfb4341fb867`  
		Last Modified: Tue, 10 Apr 2018 18:24:42 GMT  
		Size: 22.2 MB (22193794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3545e127918c82243093305cb7e0bddf7476a5853c1c536131e2da74c4f1a206`  
		Last Modified: Tue, 10 Apr 2018 18:24:35 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.13.12-alpine`

```console
$ docker pull nginx@sha256:16c622109e61813782183d5ed77f28d6d741419d21c58fd34b8b9dd9e021bc95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:1.13.12-alpine` - linux; amd64

```console
$ docker pull nginx@sha256:91d22184f3f9b1be658c2cc2c12d324de7ff12c8b9c9a597905457b4d93b069d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7887778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe2c7c61055cae340273904364fd6c6c0e8bab75ef97777263b248264acf3c8`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 20 Feb 2018 22:54:03 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:27:27 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:28:27 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:28:27 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:28:28 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:28:28 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:28:28 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:28:29 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b430473be128c1302a75e8381dfbaa45182fec81db4f75b749e4896d7816c2ea`  
		Last Modified: Tue, 10 Apr 2018 18:55:33 GMT  
		Size: 5.8 MB (5821123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4e05a01906143afc15671a53151ea9755dac230db376a8b8364b21ca774dbc`  
		Last Modified: Tue, 10 Apr 2018 18:55:32 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aeac9a3205fce5e21ab65ccce330fe389a9aaf47e4b682970b1772ae25a1d73`  
		Last Modified: Tue, 10 Apr 2018 18:55:31 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13.12-alpine` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:03c6374881e5d40487d5a78350fe67dc9e7f203e215760996d9a0674fa7bf9a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afa31b55b92d341e057a71b1a3c202635e12ef99ee6f7d76509120871f855346`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 11:04:25 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 09:04:35 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 09:06:09 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 09:06:11 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 09:06:12 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 09:06:12 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 09:06:13 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 09:06:14 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da672f6f67d62a91fb14c73aeeb014b105b0c9c5be946c79aedac3e68238095e`  
		Last Modified: Wed, 11 Apr 2018 09:13:32 GMT  
		Size: 5.1 MB (5078907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e624a070acd0b7d2ed8794262848954cfa77aff0c9890e8bf9482a24a5e41b`  
		Last Modified: Wed, 11 Apr 2018 09:13:30 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64eb59e92930f382eb0d278b030b32dd8e3eec5d685e8d978f7801cbdfb5ecb`  
		Last Modified: Wed, 11 Apr 2018 09:13:30 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13.12-alpine` - linux; 386

```console
$ docker pull nginx@sha256:7223b995e49f95c97adf98784d4cdddd7bef385151e8c500f530eb1824ce4ee4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7979941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02bc8a67f2f04cd688923ce1efcca20a915994fcc4049c8cae8474d1e5985381`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 04:32:15 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 16:08:00 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 16:09:42 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 16:09:42 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 16:09:43 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 16:09:43 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 16:09:43 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 16:09:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b074a504348cbc3a19c9ebed321e15f5f905dc2237d5c3b099b9f3e2cb5a42`  
		Last Modified: Wed, 11 Apr 2018 17:41:13 GMT  
		Size: 5.9 MB (5852433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1752b7a10b388d5e204948a11b6c74b00e5fa7a00e91fd72bd26189066939dfd`  
		Last Modified: Wed, 11 Apr 2018 17:41:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5d7de0261e5fbf1bceacd602d58af2ac139f00ee84c9e0cbb21a311ed17529`  
		Last Modified: Wed, 11 Apr 2018 17:41:11 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13.12-alpine` - linux; ppc64le

```console
$ docker pull nginx@sha256:9deb1467f878ac3cc27d0b3b1f4d334fb08754c60572eb47ff54f16804cec968
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7473339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef39f9bd3c73974dfc8d063b5be85bdb59111fe953e74e34c52c535651c938a3`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 10:52:11 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:32:30 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 08:34:02 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:34:02 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 08:34:03 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 08:34:04 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:34:04 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:34:05 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4643aff77b51f7d6de7ad4ec61e052cbc3d4ca3f2cd98c5bbb93e3d405fc28`  
		Last Modified: Wed, 11 Apr 2018 08:38:08 GMT  
		Size: 5.4 MB (5390576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45de40f214b7ace3a3d40faab019fb17b827bf513c3486c91cac887b94bc4f09`  
		Last Modified: Wed, 11 Apr 2018 08:38:06 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d371e9209fe94225999dd2ac0e6f5e0388d0fd6e84d5eecfd40b8d8b133454e`  
		Last Modified: Wed, 11 Apr 2018 08:38:06 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13.12-alpine` - linux; s390x

```console
$ docker pull nginx@sha256:6468f49c0a5cd6de4ef0637a94e1bbff8cb814b02df16c0f493238898aba14d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7731691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57762e59bf076ea5a88c7c1ed93cb1568ca99b2ff9f863800b4ed35aa0fa7f56`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 01:06:38 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:19:55 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:21:24 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:21:24 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:21:24 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:21:25 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:21:25 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:21:25 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1446a8a356cc2e0f74896c4493682bd6d911039a3f72ec7586e8ca5de2b7c1`  
		Last Modified: Tue, 10 Apr 2018 18:25:57 GMT  
		Size: 5.5 MB (5545167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0276e40e1efa291a223218318f7dc8f68e6a454b85d2df8377fe114068359f74`  
		Last Modified: Tue, 10 Apr 2018 18:25:58 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a32868181ab005e50d9f83f550f52694adc359bd6e01ba15ec5290ba08a5026`  
		Last Modified: Tue, 10 Apr 2018 18:25:56 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.13.12-alpine-perl`

```console
$ docker pull nginx@sha256:86a2b122c998f028590cb9094d18c1c7e42a12997f5f7083a787eb0293b57800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:1.13.12-alpine-perl` - linux; amd64

```console
$ docker pull nginx@sha256:daf72b363f43fe4e57c4c36860e38bd84ac4ab5f146731426d0a4a03bb98a590
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16619937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:171391c370cfde1f8ba4b37ddb10398564448f7ce00e30aa252f850a9f22b5b9`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 20 Feb 2018 22:54:03 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:27:27 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:34:41 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:34:42 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:34:42 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:34:42 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:34:43 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:34:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57483e80971c30d2a4644cb760e1ff9db06ed9c2e1ae5a19a7a5841f2d42aaef`  
		Last Modified: Tue, 10 Apr 2018 18:57:20 GMT  
		Size: 14.6 MB (14553284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034407509e32c28a4ca88534bcb2cfd16f3db069ab2997ea62e8d1f4b6cd6d39`  
		Last Modified: Tue, 10 Apr 2018 18:57:27 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef8dc6cde476e1eba0725a63f9c3acd6a5971f612577d9f4035945084652e4`  
		Last Modified: Tue, 10 Apr 2018 18:57:15 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13.12-alpine-perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:0b8ee3e9b14b189e106504f8e538d8242e16839adc9b20ca580a9f651df75219
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15737166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b724dd355befc9d6168676ae4380fca2bd9c9f360bedef467ebc2acb1ad12aec`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 11:04:25 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 09:04:35 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 09:08:41 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 09:08:42 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 09:08:43 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 09:08:43 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 09:08:44 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 09:08:44 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe977a1e8db699bc0e200f3585161f9ac344fe2a1fc6f04f9b89dc1f61d05c8`  
		Last Modified: Wed, 11 Apr 2018 09:15:29 GMT  
		Size: 13.7 MB (13747015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce09bd37284769ec1c67bb19ce44cb4b523b06656bdcbad7109c3efc40f4506e`  
		Last Modified: Wed, 11 Apr 2018 09:15:23 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e961f81f354b8ffa61454064828b05f29120f87bbc7a0a978c1dc4e382390f3`  
		Last Modified: Wed, 11 Apr 2018 09:15:22 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13.12-alpine-perl` - linux; 386

```console
$ docker pull nginx@sha256:4c39bc2fb4afa2bcf183d29c81c36c3e775f711f054251076f4cb00e7429da51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16132291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aeca75df0e90a864e26e8c264a62d9736b1085422577292bbeb6f2b74b774e6`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 04:32:15 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 16:08:00 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 16:17:23 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 16:17:23 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 16:17:24 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 16:17:24 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 16:17:24 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 16:17:25 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d479737735daa7a6f7751f0771ea128067454e13a0395120a7eb661f0635afb`  
		Last Modified: Wed, 11 Apr 2018 18:15:39 GMT  
		Size: 14.0 MB (14004782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40d107be6252ab7c0d657b75a99c81e2e465975f7af7cbc9503692dd641c36`  
		Last Modified: Wed, 11 Apr 2018 18:15:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3a694ec2da39d3bdc76341c371b2bba75c2bbba641ca1b44b11dd8a3af4445`  
		Last Modified: Wed, 11 Apr 2018 18:15:32 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13.12-alpine-perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:73dca971c72ee1fb4abf72d071b69c2745727ffa5d5936362792d034a186b161
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16263350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e32168dc619fac9688ef0bc54912749d22181af97d6e3eedd31d03a6e1aef72`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 10:52:11 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:32:30 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 08:35:30 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:35:30 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 08:35:31 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 08:35:32 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:35:33 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:35:35 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47fc22d2957c8efafd560fbd41ff00b62843dde47689e8e635200cb23507fbc`  
		Last Modified: Wed, 11 Apr 2018 08:38:58 GMT  
		Size: 14.2 MB (14180585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94413b5973695675677b5bb06f705ae96b27fb5ed702be07dfeeeeac0fc2644a`  
		Last Modified: Wed, 11 Apr 2018 08:38:53 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88583ce1dfcc9e988563d65ffdb60b6bb06034781c0b9e46c5b7c68283afc6d`  
		Last Modified: Wed, 11 Apr 2018 08:38:53 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13.12-alpine-perl` - linux; s390x

```console
$ docker pull nginx@sha256:3f959b26c3c1938b29860f56d0e4b61ebc2d184bf44014ae36d0d62d69dabc1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16894423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6d3151ed8b5882eeb0ef1c258c3f40c9e90528a825ce208c8cbd10350bc24d4`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 01:06:38 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:19:55 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:23:50 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:23:51 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:23:51 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:23:51 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:23:52 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:23:52 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8355e3ac30cf1798a6d78e73579f27b6942f6264a86f4d35dc85f26d59fb889f`  
		Last Modified: Tue, 10 Apr 2018 18:26:32 GMT  
		Size: 14.7 MB (14707898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf04bb9678088a5daa5664d458b63640ca1d2e317065602d3c037dd59945f128`  
		Last Modified: Tue, 10 Apr 2018 18:26:27 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ceb245c4da01ba6591ed49ac4e3dc87bce45370d4ff4bff10e18ca4e69e803d`  
		Last Modified: Tue, 10 Apr 2018 18:26:28 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.13.12-perl`

```console
$ docker pull nginx@sha256:68a5f3696097ac8c79ef284222ff41d4dc827bac8c4361c3843937f634714876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:1.13.12-perl` - linux; amd64

```console
$ docker pull nginx@sha256:c6852f6a97ae31ceb192788cc55a3a1b8c7277fdfcc56df8ded55603a07e519f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54529344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95c84b7acc14222dfb65b01f9d64c351a3bb8329ab8857954aee0d4b636904ab`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:14:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:21:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:21:11 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:21:12 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:21:12 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:21:12 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd642bb9d3412243059379d629d81213a75772e9780be6c65865a177407173c`  
		Last Modified: Tue, 10 Apr 2018 18:38:23 GMT  
		Size: 32.0 MB (32040161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed13b24eba44b682b612e127b9dd2d98e85b92a0b1e3897ccea851369e95673a`  
		Last Modified: Tue, 10 Apr 2018 18:37:06 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13.12-perl` - linux; arm variant v7

```console
$ docker pull nginx@sha256:93a399ffd0a5a2f3771f859d61e3bb74cac195fff067a39363a4655577579400
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49056613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80f33c3b9573c714927041d108a98aea21fba877b9ae3ebfaa35fbfeb2d8f80`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:34:18 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 11:57:30 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 11:57:34 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 12:06:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 12:06:17 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 12:06:17 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 12:06:17 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 12:06:17 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d37b6898ddc495831fea9d6618edbac1aeea36808231720ddd0925fadc4bc3`  
		Last Modified: Wed, 11 Apr 2018 12:07:20 GMT  
		Size: 29.8 MB (29778799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcadb567d65f7a19bd6ac577763e586be59e15e943e8bcbd09df87614406631`  
		Last Modified: Wed, 11 Apr 2018 12:07:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13.12-perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:66e295495a591c36027174ab217b2050452f961cf1417ab30f90ccdc14909e2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51554092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765ac3571919f3a0c935ce925a32412793eadfcf3b2774df1129acb3dd307380`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:04:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:40:15 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:40:16 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 09:03:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 09:04:01 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 09:04:01 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 09:04:02 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 09:04:03 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e304217935f61a1a7d792573ab7c53679bad49de15c466e6ff11ab44d835dd5a`  
		Last Modified: Wed, 11 Apr 2018 09:11:39 GMT  
		Size: 31.2 MB (31216684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a8c2d3b50e94d808b67278050c14a7c0a63aa83be985b21045e81d099292ad`  
		Last Modified: Wed, 11 Apr 2018 09:11:28 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13.12-perl` - linux; 386

```console
$ docker pull nginx@sha256:e69d6cae769deb0ecdd21d318d75c2aa79767c032e8c86686c21667761974c5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55196981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d8f63a3ab02906b50ace8786f5041fd7d01aa1fea1ca31b27c8711352af366`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 30 Mar 2018 00:26:46 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 15:56:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 15:56:08 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 15:56:09 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 15:56:09 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 15:56:09 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71b7e2c1d7896e718edf5109507f4b4878b7b7ab693190ae2692cdeac7601db`  
		Last Modified: Wed, 11 Apr 2018 17:05:27 GMT  
		Size: 32.1 MB (32067994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ba0e66d2c66ec5a0af77a26de3e782dbf39429b2f62ff49a7aa3c451935cfb`  
		Last Modified: Wed, 11 Apr 2018 17:05:15 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13.12-perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:98b1cd60bbceab425a65cea8a5167cc970fc2c3e90410b67ca5c07a99c83a06d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54699703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f746b2619c0f9115a8d2179ee4b735b5a40c56c15c45b47b566cd3e5f6243b37`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 06:42:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 08:32:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 08:32:14 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:32:15 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:32:16 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:32:16 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52d1095720a76517eff1fd90625ceec4c47d648f76cb6b7f09dd7c10d2f8df1`  
		Last Modified: Wed, 11 Apr 2018 08:37:19 GMT  
		Size: 32.0 MB (31953358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6ee6e72f6dab9365f11a0c4b3a00c03b5f9d47971ade89dbbd9d7aecf33b80`  
		Last Modified: Wed, 11 Apr 2018 08:37:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13.12-perl` - linux; s390x

```console
$ docker pull nginx@sha256:deda949bcc656cff6db6be490ff63dca16d9b1c634bdaf613ff7c1bb73a733f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54794954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c887bb46e8b0a73ea3ee31dc1b8e8bc98c9758a014cbba7f4aee8cb141ecd3b`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:18:37 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:19:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:19:33 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:19:34 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:19:34 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:19:34 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40de666e75668981866d87e18eb2a125bb27852dd7e264483da79a2bde5b273`  
		Last Modified: Tue, 10 Apr 2018 18:25:26 GMT  
		Size: 32.5 MB (32454272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f41838146a7b779223ede30c94d61ab1d4d12e914080b8ed6b4564b13893bcb`  
		Last Modified: Tue, 10 Apr 2018 18:25:18 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.13-alpine`

```console
$ docker pull nginx@sha256:16c622109e61813782183d5ed77f28d6d741419d21c58fd34b8b9dd9e021bc95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:1.13-alpine` - linux; amd64

```console
$ docker pull nginx@sha256:91d22184f3f9b1be658c2cc2c12d324de7ff12c8b9c9a597905457b4d93b069d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7887778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe2c7c61055cae340273904364fd6c6c0e8bab75ef97777263b248264acf3c8`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 20 Feb 2018 22:54:03 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:27:27 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:28:27 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:28:27 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:28:28 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:28:28 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:28:28 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:28:29 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b430473be128c1302a75e8381dfbaa45182fec81db4f75b749e4896d7816c2ea`  
		Last Modified: Tue, 10 Apr 2018 18:55:33 GMT  
		Size: 5.8 MB (5821123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4e05a01906143afc15671a53151ea9755dac230db376a8b8364b21ca774dbc`  
		Last Modified: Tue, 10 Apr 2018 18:55:32 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aeac9a3205fce5e21ab65ccce330fe389a9aaf47e4b682970b1772ae25a1d73`  
		Last Modified: Tue, 10 Apr 2018 18:55:31 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13-alpine` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:03c6374881e5d40487d5a78350fe67dc9e7f203e215760996d9a0674fa7bf9a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afa31b55b92d341e057a71b1a3c202635e12ef99ee6f7d76509120871f855346`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 11:04:25 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 09:04:35 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 09:06:09 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 09:06:11 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 09:06:12 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 09:06:12 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 09:06:13 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 09:06:14 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da672f6f67d62a91fb14c73aeeb014b105b0c9c5be946c79aedac3e68238095e`  
		Last Modified: Wed, 11 Apr 2018 09:13:32 GMT  
		Size: 5.1 MB (5078907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e624a070acd0b7d2ed8794262848954cfa77aff0c9890e8bf9482a24a5e41b`  
		Last Modified: Wed, 11 Apr 2018 09:13:30 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64eb59e92930f382eb0d278b030b32dd8e3eec5d685e8d978f7801cbdfb5ecb`  
		Last Modified: Wed, 11 Apr 2018 09:13:30 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13-alpine` - linux; 386

```console
$ docker pull nginx@sha256:7223b995e49f95c97adf98784d4cdddd7bef385151e8c500f530eb1824ce4ee4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7979941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02bc8a67f2f04cd688923ce1efcca20a915994fcc4049c8cae8474d1e5985381`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 04:32:15 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 16:08:00 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 16:09:42 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 16:09:42 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 16:09:43 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 16:09:43 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 16:09:43 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 16:09:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b074a504348cbc3a19c9ebed321e15f5f905dc2237d5c3b099b9f3e2cb5a42`  
		Last Modified: Wed, 11 Apr 2018 17:41:13 GMT  
		Size: 5.9 MB (5852433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1752b7a10b388d5e204948a11b6c74b00e5fa7a00e91fd72bd26189066939dfd`  
		Last Modified: Wed, 11 Apr 2018 17:41:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5d7de0261e5fbf1bceacd602d58af2ac139f00ee84c9e0cbb21a311ed17529`  
		Last Modified: Wed, 11 Apr 2018 17:41:11 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13-alpine` - linux; ppc64le

```console
$ docker pull nginx@sha256:9deb1467f878ac3cc27d0b3b1f4d334fb08754c60572eb47ff54f16804cec968
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7473339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef39f9bd3c73974dfc8d063b5be85bdb59111fe953e74e34c52c535651c938a3`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 10:52:11 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:32:30 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 08:34:02 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:34:02 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 08:34:03 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 08:34:04 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:34:04 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:34:05 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4643aff77b51f7d6de7ad4ec61e052cbc3d4ca3f2cd98c5bbb93e3d405fc28`  
		Last Modified: Wed, 11 Apr 2018 08:38:08 GMT  
		Size: 5.4 MB (5390576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45de40f214b7ace3a3d40faab019fb17b827bf513c3486c91cac887b94bc4f09`  
		Last Modified: Wed, 11 Apr 2018 08:38:06 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d371e9209fe94225999dd2ac0e6f5e0388d0fd6e84d5eecfd40b8d8b133454e`  
		Last Modified: Wed, 11 Apr 2018 08:38:06 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13-alpine` - linux; s390x

```console
$ docker pull nginx@sha256:6468f49c0a5cd6de4ef0637a94e1bbff8cb814b02df16c0f493238898aba14d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7731691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57762e59bf076ea5a88c7c1ed93cb1568ca99b2ff9f863800b4ed35aa0fa7f56`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 01:06:38 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:19:55 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:21:24 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:21:24 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:21:24 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:21:25 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:21:25 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:21:25 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1446a8a356cc2e0f74896c4493682bd6d911039a3f72ec7586e8ca5de2b7c1`  
		Last Modified: Tue, 10 Apr 2018 18:25:57 GMT  
		Size: 5.5 MB (5545167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0276e40e1efa291a223218318f7dc8f68e6a454b85d2df8377fe114068359f74`  
		Last Modified: Tue, 10 Apr 2018 18:25:58 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a32868181ab005e50d9f83f550f52694adc359bd6e01ba15ec5290ba08a5026`  
		Last Modified: Tue, 10 Apr 2018 18:25:56 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.13-alpine-perl`

```console
$ docker pull nginx@sha256:86a2b122c998f028590cb9094d18c1c7e42a12997f5f7083a787eb0293b57800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:1.13-alpine-perl` - linux; amd64

```console
$ docker pull nginx@sha256:daf72b363f43fe4e57c4c36860e38bd84ac4ab5f146731426d0a4a03bb98a590
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16619937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:171391c370cfde1f8ba4b37ddb10398564448f7ce00e30aa252f850a9f22b5b9`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 20 Feb 2018 22:54:03 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:27:27 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:34:41 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:34:42 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:34:42 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:34:42 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:34:43 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:34:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57483e80971c30d2a4644cb760e1ff9db06ed9c2e1ae5a19a7a5841f2d42aaef`  
		Last Modified: Tue, 10 Apr 2018 18:57:20 GMT  
		Size: 14.6 MB (14553284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034407509e32c28a4ca88534bcb2cfd16f3db069ab2997ea62e8d1f4b6cd6d39`  
		Last Modified: Tue, 10 Apr 2018 18:57:27 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef8dc6cde476e1eba0725a63f9c3acd6a5971f612577d9f4035945084652e4`  
		Last Modified: Tue, 10 Apr 2018 18:57:15 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13-alpine-perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:0b8ee3e9b14b189e106504f8e538d8242e16839adc9b20ca580a9f651df75219
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15737166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b724dd355befc9d6168676ae4380fca2bd9c9f360bedef467ebc2acb1ad12aec`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 11:04:25 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 09:04:35 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 09:08:41 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 09:08:42 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 09:08:43 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 09:08:43 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 09:08:44 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 09:08:44 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe977a1e8db699bc0e200f3585161f9ac344fe2a1fc6f04f9b89dc1f61d05c8`  
		Last Modified: Wed, 11 Apr 2018 09:15:29 GMT  
		Size: 13.7 MB (13747015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce09bd37284769ec1c67bb19ce44cb4b523b06656bdcbad7109c3efc40f4506e`  
		Last Modified: Wed, 11 Apr 2018 09:15:23 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e961f81f354b8ffa61454064828b05f29120f87bbc7a0a978c1dc4e382390f3`  
		Last Modified: Wed, 11 Apr 2018 09:15:22 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13-alpine-perl` - linux; 386

```console
$ docker pull nginx@sha256:4c39bc2fb4afa2bcf183d29c81c36c3e775f711f054251076f4cb00e7429da51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16132291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aeca75df0e90a864e26e8c264a62d9736b1085422577292bbeb6f2b74b774e6`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 04:32:15 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 16:08:00 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 16:17:23 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 16:17:23 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 16:17:24 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 16:17:24 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 16:17:24 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 16:17:25 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d479737735daa7a6f7751f0771ea128067454e13a0395120a7eb661f0635afb`  
		Last Modified: Wed, 11 Apr 2018 18:15:39 GMT  
		Size: 14.0 MB (14004782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40d107be6252ab7c0d657b75a99c81e2e465975f7af7cbc9503692dd641c36`  
		Last Modified: Wed, 11 Apr 2018 18:15:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3a694ec2da39d3bdc76341c371b2bba75c2bbba641ca1b44b11dd8a3af4445`  
		Last Modified: Wed, 11 Apr 2018 18:15:32 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13-alpine-perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:73dca971c72ee1fb4abf72d071b69c2745727ffa5d5936362792d034a186b161
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16263350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e32168dc619fac9688ef0bc54912749d22181af97d6e3eedd31d03a6e1aef72`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 10:52:11 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:32:30 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 08:35:30 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:35:30 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 08:35:31 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 08:35:32 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:35:33 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:35:35 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47fc22d2957c8efafd560fbd41ff00b62843dde47689e8e635200cb23507fbc`  
		Last Modified: Wed, 11 Apr 2018 08:38:58 GMT  
		Size: 14.2 MB (14180585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94413b5973695675677b5bb06f705ae96b27fb5ed702be07dfeeeeac0fc2644a`  
		Last Modified: Wed, 11 Apr 2018 08:38:53 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88583ce1dfcc9e988563d65ffdb60b6bb06034781c0b9e46c5b7c68283afc6d`  
		Last Modified: Wed, 11 Apr 2018 08:38:53 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13-alpine-perl` - linux; s390x

```console
$ docker pull nginx@sha256:3f959b26c3c1938b29860f56d0e4b61ebc2d184bf44014ae36d0d62d69dabc1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16894423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6d3151ed8b5882eeb0ef1c258c3f40c9e90528a825ce208c8cbd10350bc24d4`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 01:06:38 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:19:55 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:23:50 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:23:51 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:23:51 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:23:51 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:23:52 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:23:52 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8355e3ac30cf1798a6d78e73579f27b6942f6264a86f4d35dc85f26d59fb889f`  
		Last Modified: Tue, 10 Apr 2018 18:26:32 GMT  
		Size: 14.7 MB (14707898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf04bb9678088a5daa5664d458b63640ca1d2e317065602d3c037dd59945f128`  
		Last Modified: Tue, 10 Apr 2018 18:26:27 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ceb245c4da01ba6591ed49ac4e3dc87bce45370d4ff4bff10e18ca4e69e803d`  
		Last Modified: Tue, 10 Apr 2018 18:26:28 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1.13-perl`

```console
$ docker pull nginx@sha256:68a5f3696097ac8c79ef284222ff41d4dc827bac8c4361c3843937f634714876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:1.13-perl` - linux; amd64

```console
$ docker pull nginx@sha256:c6852f6a97ae31ceb192788cc55a3a1b8c7277fdfcc56df8ded55603a07e519f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54529344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95c84b7acc14222dfb65b01f9d64c351a3bb8329ab8857954aee0d4b636904ab`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:14:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:21:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:21:11 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:21:12 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:21:12 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:21:12 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd642bb9d3412243059379d629d81213a75772e9780be6c65865a177407173c`  
		Last Modified: Tue, 10 Apr 2018 18:38:23 GMT  
		Size: 32.0 MB (32040161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed13b24eba44b682b612e127b9dd2d98e85b92a0b1e3897ccea851369e95673a`  
		Last Modified: Tue, 10 Apr 2018 18:37:06 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13-perl` - linux; arm variant v7

```console
$ docker pull nginx@sha256:93a399ffd0a5a2f3771f859d61e3bb74cac195fff067a39363a4655577579400
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49056613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80f33c3b9573c714927041d108a98aea21fba877b9ae3ebfaa35fbfeb2d8f80`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:34:18 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 11:57:30 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 11:57:34 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 12:06:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 12:06:17 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 12:06:17 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 12:06:17 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 12:06:17 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d37b6898ddc495831fea9d6618edbac1aeea36808231720ddd0925fadc4bc3`  
		Last Modified: Wed, 11 Apr 2018 12:07:20 GMT  
		Size: 29.8 MB (29778799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcadb567d65f7a19bd6ac577763e586be59e15e943e8bcbd09df87614406631`  
		Last Modified: Wed, 11 Apr 2018 12:07:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13-perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:66e295495a591c36027174ab217b2050452f961cf1417ab30f90ccdc14909e2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51554092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765ac3571919f3a0c935ce925a32412793eadfcf3b2774df1129acb3dd307380`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:04:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:40:15 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:40:16 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 09:03:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 09:04:01 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 09:04:01 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 09:04:02 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 09:04:03 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e304217935f61a1a7d792573ab7c53679bad49de15c466e6ff11ab44d835dd5a`  
		Last Modified: Wed, 11 Apr 2018 09:11:39 GMT  
		Size: 31.2 MB (31216684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a8c2d3b50e94d808b67278050c14a7c0a63aa83be985b21045e81d099292ad`  
		Last Modified: Wed, 11 Apr 2018 09:11:28 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13-perl` - linux; 386

```console
$ docker pull nginx@sha256:e69d6cae769deb0ecdd21d318d75c2aa79767c032e8c86686c21667761974c5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55196981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d8f63a3ab02906b50ace8786f5041fd7d01aa1fea1ca31b27c8711352af366`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 30 Mar 2018 00:26:46 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 15:56:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 15:56:08 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 15:56:09 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 15:56:09 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 15:56:09 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71b7e2c1d7896e718edf5109507f4b4878b7b7ab693190ae2692cdeac7601db`  
		Last Modified: Wed, 11 Apr 2018 17:05:27 GMT  
		Size: 32.1 MB (32067994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ba0e66d2c66ec5a0af77a26de3e782dbf39429b2f62ff49a7aa3c451935cfb`  
		Last Modified: Wed, 11 Apr 2018 17:05:15 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13-perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:98b1cd60bbceab425a65cea8a5167cc970fc2c3e90410b67ca5c07a99c83a06d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54699703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f746b2619c0f9115a8d2179ee4b735b5a40c56c15c45b47b566cd3e5f6243b37`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 06:42:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 08:32:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 08:32:14 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:32:15 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:32:16 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:32:16 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52d1095720a76517eff1fd90625ceec4c47d648f76cb6b7f09dd7c10d2f8df1`  
		Last Modified: Wed, 11 Apr 2018 08:37:19 GMT  
		Size: 32.0 MB (31953358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6ee6e72f6dab9365f11a0c4b3a00c03b5f9d47971ade89dbbd9d7aecf33b80`  
		Last Modified: Wed, 11 Apr 2018 08:37:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1.13-perl` - linux; s390x

```console
$ docker pull nginx@sha256:deda949bcc656cff6db6be490ff63dca16d9b1c634bdaf613ff7c1bb73a733f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54794954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c887bb46e8b0a73ea3ee31dc1b8e8bc98c9758a014cbba7f4aee8cb141ecd3b`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:18:37 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:19:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:19:33 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:19:34 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:19:34 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:19:34 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40de666e75668981866d87e18eb2a125bb27852dd7e264483da79a2bde5b273`  
		Last Modified: Tue, 10 Apr 2018 18:25:26 GMT  
		Size: 32.5 MB (32454272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f41838146a7b779223ede30c94d61ab1d4d12e914080b8ed6b4564b13893bcb`  
		Last Modified: Tue, 10 Apr 2018 18:25:18 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1-alpine`

```console
$ docker pull nginx@sha256:16c622109e61813782183d5ed77f28d6d741419d21c58fd34b8b9dd9e021bc95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:1-alpine` - linux; amd64

```console
$ docker pull nginx@sha256:91d22184f3f9b1be658c2cc2c12d324de7ff12c8b9c9a597905457b4d93b069d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7887778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe2c7c61055cae340273904364fd6c6c0e8bab75ef97777263b248264acf3c8`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 20 Feb 2018 22:54:03 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:27:27 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:28:27 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:28:27 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:28:28 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:28:28 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:28:28 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:28:29 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b430473be128c1302a75e8381dfbaa45182fec81db4f75b749e4896d7816c2ea`  
		Last Modified: Tue, 10 Apr 2018 18:55:33 GMT  
		Size: 5.8 MB (5821123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4e05a01906143afc15671a53151ea9755dac230db376a8b8364b21ca774dbc`  
		Last Modified: Tue, 10 Apr 2018 18:55:32 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aeac9a3205fce5e21ab65ccce330fe389a9aaf47e4b682970b1772ae25a1d73`  
		Last Modified: Tue, 10 Apr 2018 18:55:31 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1-alpine` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:03c6374881e5d40487d5a78350fe67dc9e7f203e215760996d9a0674fa7bf9a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afa31b55b92d341e057a71b1a3c202635e12ef99ee6f7d76509120871f855346`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 11:04:25 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 09:04:35 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 09:06:09 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 09:06:11 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 09:06:12 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 09:06:12 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 09:06:13 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 09:06:14 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da672f6f67d62a91fb14c73aeeb014b105b0c9c5be946c79aedac3e68238095e`  
		Last Modified: Wed, 11 Apr 2018 09:13:32 GMT  
		Size: 5.1 MB (5078907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e624a070acd0b7d2ed8794262848954cfa77aff0c9890e8bf9482a24a5e41b`  
		Last Modified: Wed, 11 Apr 2018 09:13:30 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64eb59e92930f382eb0d278b030b32dd8e3eec5d685e8d978f7801cbdfb5ecb`  
		Last Modified: Wed, 11 Apr 2018 09:13:30 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1-alpine` - linux; 386

```console
$ docker pull nginx@sha256:7223b995e49f95c97adf98784d4cdddd7bef385151e8c500f530eb1824ce4ee4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7979941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02bc8a67f2f04cd688923ce1efcca20a915994fcc4049c8cae8474d1e5985381`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 04:32:15 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 16:08:00 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 16:09:42 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 16:09:42 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 16:09:43 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 16:09:43 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 16:09:43 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 16:09:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b074a504348cbc3a19c9ebed321e15f5f905dc2237d5c3b099b9f3e2cb5a42`  
		Last Modified: Wed, 11 Apr 2018 17:41:13 GMT  
		Size: 5.9 MB (5852433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1752b7a10b388d5e204948a11b6c74b00e5fa7a00e91fd72bd26189066939dfd`  
		Last Modified: Wed, 11 Apr 2018 17:41:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5d7de0261e5fbf1bceacd602d58af2ac139f00ee84c9e0cbb21a311ed17529`  
		Last Modified: Wed, 11 Apr 2018 17:41:11 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1-alpine` - linux; ppc64le

```console
$ docker pull nginx@sha256:9deb1467f878ac3cc27d0b3b1f4d334fb08754c60572eb47ff54f16804cec968
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7473339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef39f9bd3c73974dfc8d063b5be85bdb59111fe953e74e34c52c535651c938a3`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 10:52:11 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:32:30 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 08:34:02 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:34:02 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 08:34:03 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 08:34:04 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:34:04 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:34:05 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4643aff77b51f7d6de7ad4ec61e052cbc3d4ca3f2cd98c5bbb93e3d405fc28`  
		Last Modified: Wed, 11 Apr 2018 08:38:08 GMT  
		Size: 5.4 MB (5390576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45de40f214b7ace3a3d40faab019fb17b827bf513c3486c91cac887b94bc4f09`  
		Last Modified: Wed, 11 Apr 2018 08:38:06 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d371e9209fe94225999dd2ac0e6f5e0388d0fd6e84d5eecfd40b8d8b133454e`  
		Last Modified: Wed, 11 Apr 2018 08:38:06 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1-alpine` - linux; s390x

```console
$ docker pull nginx@sha256:6468f49c0a5cd6de4ef0637a94e1bbff8cb814b02df16c0f493238898aba14d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7731691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57762e59bf076ea5a88c7c1ed93cb1568ca99b2ff9f863800b4ed35aa0fa7f56`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 01:06:38 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:19:55 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:21:24 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:21:24 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:21:24 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:21:25 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:21:25 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:21:25 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1446a8a356cc2e0f74896c4493682bd6d911039a3f72ec7586e8ca5de2b7c1`  
		Last Modified: Tue, 10 Apr 2018 18:25:57 GMT  
		Size: 5.5 MB (5545167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0276e40e1efa291a223218318f7dc8f68e6a454b85d2df8377fe114068359f74`  
		Last Modified: Tue, 10 Apr 2018 18:25:58 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a32868181ab005e50d9f83f550f52694adc359bd6e01ba15ec5290ba08a5026`  
		Last Modified: Tue, 10 Apr 2018 18:25:56 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1-alpine-perl`

```console
$ docker pull nginx@sha256:86a2b122c998f028590cb9094d18c1c7e42a12997f5f7083a787eb0293b57800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:1-alpine-perl` - linux; amd64

```console
$ docker pull nginx@sha256:daf72b363f43fe4e57c4c36860e38bd84ac4ab5f146731426d0a4a03bb98a590
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16619937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:171391c370cfde1f8ba4b37ddb10398564448f7ce00e30aa252f850a9f22b5b9`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 20 Feb 2018 22:54:03 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:27:27 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:34:41 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:34:42 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:34:42 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:34:42 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:34:43 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:34:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57483e80971c30d2a4644cb760e1ff9db06ed9c2e1ae5a19a7a5841f2d42aaef`  
		Last Modified: Tue, 10 Apr 2018 18:57:20 GMT  
		Size: 14.6 MB (14553284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034407509e32c28a4ca88534bcb2cfd16f3db069ab2997ea62e8d1f4b6cd6d39`  
		Last Modified: Tue, 10 Apr 2018 18:57:27 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef8dc6cde476e1eba0725a63f9c3acd6a5971f612577d9f4035945084652e4`  
		Last Modified: Tue, 10 Apr 2018 18:57:15 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1-alpine-perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:0b8ee3e9b14b189e106504f8e538d8242e16839adc9b20ca580a9f651df75219
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15737166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b724dd355befc9d6168676ae4380fca2bd9c9f360bedef467ebc2acb1ad12aec`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 11:04:25 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 09:04:35 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 09:08:41 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 09:08:42 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 09:08:43 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 09:08:43 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 09:08:44 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 09:08:44 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe977a1e8db699bc0e200f3585161f9ac344fe2a1fc6f04f9b89dc1f61d05c8`  
		Last Modified: Wed, 11 Apr 2018 09:15:29 GMT  
		Size: 13.7 MB (13747015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce09bd37284769ec1c67bb19ce44cb4b523b06656bdcbad7109c3efc40f4506e`  
		Last Modified: Wed, 11 Apr 2018 09:15:23 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e961f81f354b8ffa61454064828b05f29120f87bbc7a0a978c1dc4e382390f3`  
		Last Modified: Wed, 11 Apr 2018 09:15:22 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1-alpine-perl` - linux; 386

```console
$ docker pull nginx@sha256:4c39bc2fb4afa2bcf183d29c81c36c3e775f711f054251076f4cb00e7429da51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16132291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aeca75df0e90a864e26e8c264a62d9736b1085422577292bbeb6f2b74b774e6`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 04:32:15 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 16:08:00 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 16:17:23 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 16:17:23 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 16:17:24 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 16:17:24 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 16:17:24 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 16:17:25 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d479737735daa7a6f7751f0771ea128067454e13a0395120a7eb661f0635afb`  
		Last Modified: Wed, 11 Apr 2018 18:15:39 GMT  
		Size: 14.0 MB (14004782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40d107be6252ab7c0d657b75a99c81e2e465975f7af7cbc9503692dd641c36`  
		Last Modified: Wed, 11 Apr 2018 18:15:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3a694ec2da39d3bdc76341c371b2bba75c2bbba641ca1b44b11dd8a3af4445`  
		Last Modified: Wed, 11 Apr 2018 18:15:32 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1-alpine-perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:73dca971c72ee1fb4abf72d071b69c2745727ffa5d5936362792d034a186b161
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16263350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e32168dc619fac9688ef0bc54912749d22181af97d6e3eedd31d03a6e1aef72`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 10:52:11 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:32:30 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 08:35:30 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:35:30 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 08:35:31 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 08:35:32 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:35:33 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:35:35 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47fc22d2957c8efafd560fbd41ff00b62843dde47689e8e635200cb23507fbc`  
		Last Modified: Wed, 11 Apr 2018 08:38:58 GMT  
		Size: 14.2 MB (14180585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94413b5973695675677b5bb06f705ae96b27fb5ed702be07dfeeeeac0fc2644a`  
		Last Modified: Wed, 11 Apr 2018 08:38:53 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88583ce1dfcc9e988563d65ffdb60b6bb06034781c0b9e46c5b7c68283afc6d`  
		Last Modified: Wed, 11 Apr 2018 08:38:53 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1-alpine-perl` - linux; s390x

```console
$ docker pull nginx@sha256:3f959b26c3c1938b29860f56d0e4b61ebc2d184bf44014ae36d0d62d69dabc1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16894423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6d3151ed8b5882eeb0ef1c258c3f40c9e90528a825ce208c8cbd10350bc24d4`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 01:06:38 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:19:55 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:23:50 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:23:51 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:23:51 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:23:51 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:23:52 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:23:52 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8355e3ac30cf1798a6d78e73579f27b6942f6264a86f4d35dc85f26d59fb889f`  
		Last Modified: Tue, 10 Apr 2018 18:26:32 GMT  
		Size: 14.7 MB (14707898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf04bb9678088a5daa5664d458b63640ca1d2e317065602d3c037dd59945f128`  
		Last Modified: Tue, 10 Apr 2018 18:26:27 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ceb245c4da01ba6591ed49ac4e3dc87bce45370d4ff4bff10e18ca4e69e803d`  
		Last Modified: Tue, 10 Apr 2018 18:26:28 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:1-perl`

```console
$ docker pull nginx@sha256:68a5f3696097ac8c79ef284222ff41d4dc827bac8c4361c3843937f634714876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:1-perl` - linux; amd64

```console
$ docker pull nginx@sha256:c6852f6a97ae31ceb192788cc55a3a1b8c7277fdfcc56df8ded55603a07e519f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54529344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95c84b7acc14222dfb65b01f9d64c351a3bb8329ab8857954aee0d4b636904ab`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:14:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:21:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:21:11 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:21:12 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:21:12 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:21:12 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd642bb9d3412243059379d629d81213a75772e9780be6c65865a177407173c`  
		Last Modified: Tue, 10 Apr 2018 18:38:23 GMT  
		Size: 32.0 MB (32040161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed13b24eba44b682b612e127b9dd2d98e85b92a0b1e3897ccea851369e95673a`  
		Last Modified: Tue, 10 Apr 2018 18:37:06 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1-perl` - linux; arm variant v7

```console
$ docker pull nginx@sha256:93a399ffd0a5a2f3771f859d61e3bb74cac195fff067a39363a4655577579400
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49056613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80f33c3b9573c714927041d108a98aea21fba877b9ae3ebfaa35fbfeb2d8f80`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:34:18 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 11:57:30 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 11:57:34 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 12:06:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 12:06:17 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 12:06:17 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 12:06:17 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 12:06:17 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d37b6898ddc495831fea9d6618edbac1aeea36808231720ddd0925fadc4bc3`  
		Last Modified: Wed, 11 Apr 2018 12:07:20 GMT  
		Size: 29.8 MB (29778799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcadb567d65f7a19bd6ac577763e586be59e15e943e8bcbd09df87614406631`  
		Last Modified: Wed, 11 Apr 2018 12:07:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1-perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:66e295495a591c36027174ab217b2050452f961cf1417ab30f90ccdc14909e2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51554092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765ac3571919f3a0c935ce925a32412793eadfcf3b2774df1129acb3dd307380`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:04:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:40:15 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:40:16 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 09:03:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 09:04:01 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 09:04:01 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 09:04:02 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 09:04:03 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e304217935f61a1a7d792573ab7c53679bad49de15c466e6ff11ab44d835dd5a`  
		Last Modified: Wed, 11 Apr 2018 09:11:39 GMT  
		Size: 31.2 MB (31216684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a8c2d3b50e94d808b67278050c14a7c0a63aa83be985b21045e81d099292ad`  
		Last Modified: Wed, 11 Apr 2018 09:11:28 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1-perl` - linux; 386

```console
$ docker pull nginx@sha256:e69d6cae769deb0ecdd21d318d75c2aa79767c032e8c86686c21667761974c5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55196981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d8f63a3ab02906b50ace8786f5041fd7d01aa1fea1ca31b27c8711352af366`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 30 Mar 2018 00:26:46 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 15:56:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 15:56:08 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 15:56:09 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 15:56:09 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 15:56:09 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71b7e2c1d7896e718edf5109507f4b4878b7b7ab693190ae2692cdeac7601db`  
		Last Modified: Wed, 11 Apr 2018 17:05:27 GMT  
		Size: 32.1 MB (32067994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ba0e66d2c66ec5a0af77a26de3e782dbf39429b2f62ff49a7aa3c451935cfb`  
		Last Modified: Wed, 11 Apr 2018 17:05:15 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1-perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:98b1cd60bbceab425a65cea8a5167cc970fc2c3e90410b67ca5c07a99c83a06d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54699703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f746b2619c0f9115a8d2179ee4b735b5a40c56c15c45b47b566cd3e5f6243b37`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 06:42:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 08:32:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 08:32:14 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:32:15 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:32:16 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:32:16 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52d1095720a76517eff1fd90625ceec4c47d648f76cb6b7f09dd7c10d2f8df1`  
		Last Modified: Wed, 11 Apr 2018 08:37:19 GMT  
		Size: 32.0 MB (31953358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6ee6e72f6dab9365f11a0c4b3a00c03b5f9d47971ade89dbbd9d7aecf33b80`  
		Last Modified: Wed, 11 Apr 2018 08:37:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:1-perl` - linux; s390x

```console
$ docker pull nginx@sha256:deda949bcc656cff6db6be490ff63dca16d9b1c634bdaf613ff7c1bb73a733f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54794954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c887bb46e8b0a73ea3ee31dc1b8e8bc98c9758a014cbba7f4aee8cb141ecd3b`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:18:37 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:19:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:19:33 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:19:34 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:19:34 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:19:34 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40de666e75668981866d87e18eb2a125bb27852dd7e264483da79a2bde5b273`  
		Last Modified: Tue, 10 Apr 2018 18:25:26 GMT  
		Size: 32.5 MB (32454272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f41838146a7b779223ede30c94d61ab1d4d12e914080b8ed6b4564b13893bcb`  
		Last Modified: Tue, 10 Apr 2018 18:25:18 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:alpine`

```console
$ docker pull nginx@sha256:16c622109e61813782183d5ed77f28d6d741419d21c58fd34b8b9dd9e021bc95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:alpine` - linux; amd64

```console
$ docker pull nginx@sha256:91d22184f3f9b1be658c2cc2c12d324de7ff12c8b9c9a597905457b4d93b069d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7887778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe2c7c61055cae340273904364fd6c6c0e8bab75ef97777263b248264acf3c8`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 20 Feb 2018 22:54:03 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:27:27 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:28:27 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:28:27 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:28:28 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:28:28 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:28:28 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:28:29 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b430473be128c1302a75e8381dfbaa45182fec81db4f75b749e4896d7816c2ea`  
		Last Modified: Tue, 10 Apr 2018 18:55:33 GMT  
		Size: 5.8 MB (5821123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4e05a01906143afc15671a53151ea9755dac230db376a8b8364b21ca774dbc`  
		Last Modified: Tue, 10 Apr 2018 18:55:32 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aeac9a3205fce5e21ab65ccce330fe389a9aaf47e4b682970b1772ae25a1d73`  
		Last Modified: Tue, 10 Apr 2018 18:55:31 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:alpine` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:03c6374881e5d40487d5a78350fe67dc9e7f203e215760996d9a0674fa7bf9a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afa31b55b92d341e057a71b1a3c202635e12ef99ee6f7d76509120871f855346`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 11:04:25 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 09:04:35 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 09:06:09 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 09:06:11 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 09:06:12 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 09:06:12 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 09:06:13 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 09:06:14 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da672f6f67d62a91fb14c73aeeb014b105b0c9c5be946c79aedac3e68238095e`  
		Last Modified: Wed, 11 Apr 2018 09:13:32 GMT  
		Size: 5.1 MB (5078907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e624a070acd0b7d2ed8794262848954cfa77aff0c9890e8bf9482a24a5e41b`  
		Last Modified: Wed, 11 Apr 2018 09:13:30 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64eb59e92930f382eb0d278b030b32dd8e3eec5d685e8d978f7801cbdfb5ecb`  
		Last Modified: Wed, 11 Apr 2018 09:13:30 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:alpine` - linux; 386

```console
$ docker pull nginx@sha256:7223b995e49f95c97adf98784d4cdddd7bef385151e8c500f530eb1824ce4ee4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7979941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02bc8a67f2f04cd688923ce1efcca20a915994fcc4049c8cae8474d1e5985381`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 04:32:15 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 16:08:00 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 16:09:42 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 16:09:42 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 16:09:43 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 16:09:43 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 16:09:43 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 16:09:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b074a504348cbc3a19c9ebed321e15f5f905dc2237d5c3b099b9f3e2cb5a42`  
		Last Modified: Wed, 11 Apr 2018 17:41:13 GMT  
		Size: 5.9 MB (5852433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1752b7a10b388d5e204948a11b6c74b00e5fa7a00e91fd72bd26189066939dfd`  
		Last Modified: Wed, 11 Apr 2018 17:41:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5d7de0261e5fbf1bceacd602d58af2ac139f00ee84c9e0cbb21a311ed17529`  
		Last Modified: Wed, 11 Apr 2018 17:41:11 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:alpine` - linux; ppc64le

```console
$ docker pull nginx@sha256:9deb1467f878ac3cc27d0b3b1f4d334fb08754c60572eb47ff54f16804cec968
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7473339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef39f9bd3c73974dfc8d063b5be85bdb59111fe953e74e34c52c535651c938a3`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 10:52:11 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:32:30 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 08:34:02 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:34:02 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 08:34:03 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 08:34:04 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:34:04 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:34:05 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4643aff77b51f7d6de7ad4ec61e052cbc3d4ca3f2cd98c5bbb93e3d405fc28`  
		Last Modified: Wed, 11 Apr 2018 08:38:08 GMT  
		Size: 5.4 MB (5390576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45de40f214b7ace3a3d40faab019fb17b827bf513c3486c91cac887b94bc4f09`  
		Last Modified: Wed, 11 Apr 2018 08:38:06 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d371e9209fe94225999dd2ac0e6f5e0388d0fd6e84d5eecfd40b8d8b133454e`  
		Last Modified: Wed, 11 Apr 2018 08:38:06 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:alpine` - linux; s390x

```console
$ docker pull nginx@sha256:6468f49c0a5cd6de4ef0637a94e1bbff8cb814b02df16c0f493238898aba14d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7731691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57762e59bf076ea5a88c7c1ed93cb1568ca99b2ff9f863800b4ed35aa0fa7f56`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 01:06:38 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:19:55 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:21:24 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:21:24 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:21:24 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:21:25 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:21:25 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:21:25 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1446a8a356cc2e0f74896c4493682bd6d911039a3f72ec7586e8ca5de2b7c1`  
		Last Modified: Tue, 10 Apr 2018 18:25:57 GMT  
		Size: 5.5 MB (5545167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0276e40e1efa291a223218318f7dc8f68e6a454b85d2df8377fe114068359f74`  
		Last Modified: Tue, 10 Apr 2018 18:25:58 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a32868181ab005e50d9f83f550f52694adc359bd6e01ba15ec5290ba08a5026`  
		Last Modified: Tue, 10 Apr 2018 18:25:56 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:alpine-perl`

```console
$ docker pull nginx@sha256:86a2b122c998f028590cb9094d18c1c7e42a12997f5f7083a787eb0293b57800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:alpine-perl` - linux; amd64

```console
$ docker pull nginx@sha256:daf72b363f43fe4e57c4c36860e38bd84ac4ab5f146731426d0a4a03bb98a590
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16619937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:171391c370cfde1f8ba4b37ddb10398564448f7ce00e30aa252f850a9f22b5b9`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 20 Feb 2018 22:54:03 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:27:27 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:34:41 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:34:42 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:34:42 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:34:42 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:34:43 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:34:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57483e80971c30d2a4644cb760e1ff9db06ed9c2e1ae5a19a7a5841f2d42aaef`  
		Last Modified: Tue, 10 Apr 2018 18:57:20 GMT  
		Size: 14.6 MB (14553284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034407509e32c28a4ca88534bcb2cfd16f3db069ab2997ea62e8d1f4b6cd6d39`  
		Last Modified: Tue, 10 Apr 2018 18:57:27 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef8dc6cde476e1eba0725a63f9c3acd6a5971f612577d9f4035945084652e4`  
		Last Modified: Tue, 10 Apr 2018 18:57:15 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:alpine-perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:0b8ee3e9b14b189e106504f8e538d8242e16839adc9b20ca580a9f651df75219
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15737166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b724dd355befc9d6168676ae4380fca2bd9c9f360bedef467ebc2acb1ad12aec`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 11:04:25 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 09:04:35 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 09:08:41 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 09:08:42 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 09:08:43 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 09:08:43 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 09:08:44 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 09:08:44 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe977a1e8db699bc0e200f3585161f9ac344fe2a1fc6f04f9b89dc1f61d05c8`  
		Last Modified: Wed, 11 Apr 2018 09:15:29 GMT  
		Size: 13.7 MB (13747015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce09bd37284769ec1c67bb19ce44cb4b523b06656bdcbad7109c3efc40f4506e`  
		Last Modified: Wed, 11 Apr 2018 09:15:23 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e961f81f354b8ffa61454064828b05f29120f87bbc7a0a978c1dc4e382390f3`  
		Last Modified: Wed, 11 Apr 2018 09:15:22 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:alpine-perl` - linux; 386

```console
$ docker pull nginx@sha256:4c39bc2fb4afa2bcf183d29c81c36c3e775f711f054251076f4cb00e7429da51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16132291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aeca75df0e90a864e26e8c264a62d9736b1085422577292bbeb6f2b74b774e6`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 04:32:15 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 16:08:00 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 16:17:23 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 16:17:23 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 16:17:24 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 16:17:24 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 16:17:24 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 16:17:25 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d479737735daa7a6f7751f0771ea128067454e13a0395120a7eb661f0635afb`  
		Last Modified: Wed, 11 Apr 2018 18:15:39 GMT  
		Size: 14.0 MB (14004782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40d107be6252ab7c0d657b75a99c81e2e465975f7af7cbc9503692dd641c36`  
		Last Modified: Wed, 11 Apr 2018 18:15:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3a694ec2da39d3bdc76341c371b2bba75c2bbba641ca1b44b11dd8a3af4445`  
		Last Modified: Wed, 11 Apr 2018 18:15:32 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:alpine-perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:73dca971c72ee1fb4abf72d071b69c2745727ffa5d5936362792d034a186b161
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16263350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e32168dc619fac9688ef0bc54912749d22181af97d6e3eedd31d03a6e1aef72`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 10:52:11 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:32:30 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 08:35:30 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:35:30 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 08:35:31 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 08:35:32 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:35:33 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:35:35 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47fc22d2957c8efafd560fbd41ff00b62843dde47689e8e635200cb23507fbc`  
		Last Modified: Wed, 11 Apr 2018 08:38:58 GMT  
		Size: 14.2 MB (14180585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94413b5973695675677b5bb06f705ae96b27fb5ed702be07dfeeeeac0fc2644a`  
		Last Modified: Wed, 11 Apr 2018 08:38:53 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88583ce1dfcc9e988563d65ffdb60b6bb06034781c0b9e46c5b7c68283afc6d`  
		Last Modified: Wed, 11 Apr 2018 08:38:53 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:alpine-perl` - linux; s390x

```console
$ docker pull nginx@sha256:3f959b26c3c1938b29860f56d0e4b61ebc2d184bf44014ae36d0d62d69dabc1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16894423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6d3151ed8b5882eeb0ef1c258c3f40c9e90528a825ce208c8cbd10350bc24d4`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 01:06:38 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:19:55 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:23:50 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:23:51 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:23:51 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:23:51 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:23:52 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:23:52 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8355e3ac30cf1798a6d78e73579f27b6942f6264a86f4d35dc85f26d59fb889f`  
		Last Modified: Tue, 10 Apr 2018 18:26:32 GMT  
		Size: 14.7 MB (14707898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf04bb9678088a5daa5664d458b63640ca1d2e317065602d3c037dd59945f128`  
		Last Modified: Tue, 10 Apr 2018 18:26:27 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ceb245c4da01ba6591ed49ac4e3dc87bce45370d4ff4bff10e18ca4e69e803d`  
		Last Modified: Tue, 10 Apr 2018 18:26:28 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:latest`

```console
$ docker pull nginx@sha256:37350fbb4afbb1c01b6e542fe1537dd701e4430983d6d9c673cbb5eccdbec357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:latest` - linux; amd64

```console
$ docker pull nginx@sha256:d903fe3076f89ad76afe1cbd0e476d9692d79b3835895b5b3541654c85422bf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44599899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b175e7467d666648e836f666d762be92a56938efe16c874a73bab31be5f99a3b`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:14:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:20:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:20:30 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:20:30 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:20:30 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:20:30 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b2d3302d48e81ac324cdc2d752c7001c8ad85a078126875b6fe2358a617c7a`  
		Last Modified: Tue, 10 Apr 2018 18:35:25 GMT  
		Size: 22.1 MB (22110716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f619103861594f626c38601e5be5c6f70e860ef8cb2d1d49f440fadab423d1`  
		Last Modified: Tue, 10 Apr 2018 18:35:21 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:latest` - linux; arm variant v7

```console
$ docker pull nginx@sha256:2326c90407740bba0e562c02798882c3e1f44e9255155289ce1c474f6c9c4aa7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 MB (40037109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9a751dd34bb183e7420687b1267bbaacce6db1ac46ea50e4c940bc65341b55`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:34:18 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 11:57:30 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 11:57:34 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 12:01:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 12:01:41 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 12:01:41 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 12:01:42 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 12:01:42 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fcabdbf324699a6f182a7feba31f21d14c04b2b88cf00503b00ff24ccd62f77`  
		Last Modified: Wed, 11 Apr 2018 12:06:44 GMT  
		Size: 20.8 MB (20759295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a250c217acd90ed0d9db487b85b21fe9a1f23d4100373c5445e76358f7f730`  
		Last Modified: Wed, 11 Apr 2018 12:06:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:latest` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:9cb95611dbeec0c233c1142d7b5f0f08a5f5c20aeb363988bf7b2961b6828268
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 MB (41804388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81aa4596719e218517defebb8f6d1806d1b05ce7dc5468ee7f2f6b9ac20c4498`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:04:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:40:15 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:40:16 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 08:51:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 08:51:25 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:51:26 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:51:28 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:51:29 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14524996ebec9d8cee6880b3c80986296c876b7ed12f03ddaddc83757a0d3d4d`  
		Last Modified: Wed, 11 Apr 2018 09:09:36 GMT  
		Size: 21.5 MB (21466981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8087ad9e89552bfc646a43d91d301d746235475c6fe83c34d346f275de232119`  
		Last Modified: Wed, 11 Apr 2018 09:09:29 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:latest` - linux; 386

```console
$ docker pull nginx@sha256:5f19078081e95f51b930563694f398db449c1cd68b5639120de521583f0c1018
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45779138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd069b6caf53e5b18a9bfd9494427dfe48abd7ee36c9e564c058cd73cc2937c`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 30 Mar 2018 00:26:46 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 15:53:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 15:53:48 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 15:53:48 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 15:53:48 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 15:53:49 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b23231b0243204229be15ec87bb34319ae172294798b8d7a287320b6716f7bc`  
		Last Modified: Wed, 11 Apr 2018 16:26:17 GMT  
		Size: 22.7 MB (22650150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1a0dc286a4f58a7ea1386f206adac488e41a2ee75cc2b93a7612d7935b8b7f`  
		Last Modified: Wed, 11 Apr 2018 16:26:11 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:latest` - linux; ppc64le

```console
$ docker pull nginx@sha256:50d00138d9f8632b4727ff56cbe4a562a496146c9fa278909e135afb3cf2155f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44777093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1294f7fb4a6779484eda83ef40aa1155bf210586523316a6fff6273f871a7f`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 06:42:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 08:24:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 08:24:40 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:24:41 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:24:42 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:24:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c876660ea35edfa8250ca232a7e506013f4ca49afcd7949858a7d19b999d84`  
		Last Modified: Wed, 11 Apr 2018 08:36:24 GMT  
		Size: 22.0 MB (22030747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4235b445efab3ac947b80c567fc936cbbe250908737ee2b1fc9d2f4e6de80b5a`  
		Last Modified: Wed, 11 Apr 2018 08:36:18 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:latest` - linux; s390x

```console
$ docker pull nginx@sha256:d5f1c65191c3de4c1ce34a8bd56fca8f85dfa88efd74a449b4761f4745426f0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44534475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dba1a418335c18350df8d79b3fee8c189f76b2f1bc2ecdaad2f9945b556bbcb`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:18:37 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:15:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:15:28 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:15:28 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:15:28 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:15:28 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0623bed48ddeda93d35898d88a7dd2de6f8f59b6f88707da73dbfb4341fb867`  
		Last Modified: Tue, 10 Apr 2018 18:24:42 GMT  
		Size: 22.2 MB (22193794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3545e127918c82243093305cb7e0bddf7476a5853c1c536131e2da74c4f1a206`  
		Last Modified: Tue, 10 Apr 2018 18:24:35 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:mainline`

```console
$ docker pull nginx@sha256:37350fbb4afbb1c01b6e542fe1537dd701e4430983d6d9c673cbb5eccdbec357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:mainline` - linux; amd64

```console
$ docker pull nginx@sha256:d903fe3076f89ad76afe1cbd0e476d9692d79b3835895b5b3541654c85422bf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44599899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b175e7467d666648e836f666d762be92a56938efe16c874a73bab31be5f99a3b`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:14:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:20:29 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:20:30 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:20:30 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:20:30 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:20:30 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b2d3302d48e81ac324cdc2d752c7001c8ad85a078126875b6fe2358a617c7a`  
		Last Modified: Tue, 10 Apr 2018 18:35:25 GMT  
		Size: 22.1 MB (22110716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f619103861594f626c38601e5be5c6f70e860ef8cb2d1d49f440fadab423d1`  
		Last Modified: Tue, 10 Apr 2018 18:35:21 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline` - linux; arm variant v7

```console
$ docker pull nginx@sha256:2326c90407740bba0e562c02798882c3e1f44e9255155289ce1c474f6c9c4aa7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 MB (40037109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9a751dd34bb183e7420687b1267bbaacce6db1ac46ea50e4c940bc65341b55`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:34:18 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 11:57:30 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 11:57:34 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 12:01:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 12:01:41 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 12:01:41 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 12:01:42 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 12:01:42 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fcabdbf324699a6f182a7feba31f21d14c04b2b88cf00503b00ff24ccd62f77`  
		Last Modified: Wed, 11 Apr 2018 12:06:44 GMT  
		Size: 20.8 MB (20759295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a250c217acd90ed0d9db487b85b21fe9a1f23d4100373c5445e76358f7f730`  
		Last Modified: Wed, 11 Apr 2018 12:06:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:9cb95611dbeec0c233c1142d7b5f0f08a5f5c20aeb363988bf7b2961b6828268
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 MB (41804388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81aa4596719e218517defebb8f6d1806d1b05ce7dc5468ee7f2f6b9ac20c4498`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:04:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:40:15 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:40:16 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 08:51:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 08:51:25 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:51:26 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:51:28 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:51:29 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14524996ebec9d8cee6880b3c80986296c876b7ed12f03ddaddc83757a0d3d4d`  
		Last Modified: Wed, 11 Apr 2018 09:09:36 GMT  
		Size: 21.5 MB (21466981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8087ad9e89552bfc646a43d91d301d746235475c6fe83c34d346f275de232119`  
		Last Modified: Wed, 11 Apr 2018 09:09:29 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline` - linux; 386

```console
$ docker pull nginx@sha256:5f19078081e95f51b930563694f398db449c1cd68b5639120de521583f0c1018
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45779138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd069b6caf53e5b18a9bfd9494427dfe48abd7ee36c9e564c058cd73cc2937c`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 30 Mar 2018 00:26:46 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 15:53:47 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 15:53:48 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 15:53:48 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 15:53:48 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 15:53:49 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b23231b0243204229be15ec87bb34319ae172294798b8d7a287320b6716f7bc`  
		Last Modified: Wed, 11 Apr 2018 16:26:17 GMT  
		Size: 22.7 MB (22650150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1a0dc286a4f58a7ea1386f206adac488e41a2ee75cc2b93a7612d7935b8b7f`  
		Last Modified: Wed, 11 Apr 2018 16:26:11 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline` - linux; ppc64le

```console
$ docker pull nginx@sha256:50d00138d9f8632b4727ff56cbe4a562a496146c9fa278909e135afb3cf2155f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44777093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1294f7fb4a6779484eda83ef40aa1155bf210586523316a6fff6273f871a7f`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 06:42:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 08:24:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 08:24:40 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:24:41 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:24:42 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:24:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c876660ea35edfa8250ca232a7e506013f4ca49afcd7949858a7d19b999d84`  
		Last Modified: Wed, 11 Apr 2018 08:36:24 GMT  
		Size: 22.0 MB (22030747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4235b445efab3ac947b80c567fc936cbbe250908737ee2b1fc9d2f4e6de80b5a`  
		Last Modified: Wed, 11 Apr 2018 08:36:18 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline` - linux; s390x

```console
$ docker pull nginx@sha256:d5f1c65191c3de4c1ce34a8bd56fca8f85dfa88efd74a449b4761f4745426f0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44534475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dba1a418335c18350df8d79b3fee8c189f76b2f1bc2ecdaad2f9945b556bbcb`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:18:37 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:15:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:15:28 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:15:28 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:15:28 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:15:28 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0623bed48ddeda93d35898d88a7dd2de6f8f59b6f88707da73dbfb4341fb867`  
		Last Modified: Tue, 10 Apr 2018 18:24:42 GMT  
		Size: 22.2 MB (22193794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3545e127918c82243093305cb7e0bddf7476a5853c1c536131e2da74c4f1a206`  
		Last Modified: Tue, 10 Apr 2018 18:24:35 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:mainline-alpine`

```console
$ docker pull nginx@sha256:16c622109e61813782183d5ed77f28d6d741419d21c58fd34b8b9dd9e021bc95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:mainline-alpine` - linux; amd64

```console
$ docker pull nginx@sha256:91d22184f3f9b1be658c2cc2c12d324de7ff12c8b9c9a597905457b4d93b069d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7887778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe2c7c61055cae340273904364fd6c6c0e8bab75ef97777263b248264acf3c8`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 20 Feb 2018 22:54:03 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:27:27 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:28:27 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:28:27 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:28:28 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:28:28 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:28:28 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:28:29 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b430473be128c1302a75e8381dfbaa45182fec81db4f75b749e4896d7816c2ea`  
		Last Modified: Tue, 10 Apr 2018 18:55:33 GMT  
		Size: 5.8 MB (5821123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4e05a01906143afc15671a53151ea9755dac230db376a8b8364b21ca774dbc`  
		Last Modified: Tue, 10 Apr 2018 18:55:32 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aeac9a3205fce5e21ab65ccce330fe389a9aaf47e4b682970b1772ae25a1d73`  
		Last Modified: Tue, 10 Apr 2018 18:55:31 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline-alpine` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:03c6374881e5d40487d5a78350fe67dc9e7f203e215760996d9a0674fa7bf9a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afa31b55b92d341e057a71b1a3c202635e12ef99ee6f7d76509120871f855346`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 11:04:25 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 09:04:35 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 09:06:09 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 09:06:11 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 09:06:12 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 09:06:12 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 09:06:13 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 09:06:14 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da672f6f67d62a91fb14c73aeeb014b105b0c9c5be946c79aedac3e68238095e`  
		Last Modified: Wed, 11 Apr 2018 09:13:32 GMT  
		Size: 5.1 MB (5078907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e624a070acd0b7d2ed8794262848954cfa77aff0c9890e8bf9482a24a5e41b`  
		Last Modified: Wed, 11 Apr 2018 09:13:30 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64eb59e92930f382eb0d278b030b32dd8e3eec5d685e8d978f7801cbdfb5ecb`  
		Last Modified: Wed, 11 Apr 2018 09:13:30 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline-alpine` - linux; 386

```console
$ docker pull nginx@sha256:7223b995e49f95c97adf98784d4cdddd7bef385151e8c500f530eb1824ce4ee4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7979941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02bc8a67f2f04cd688923ce1efcca20a915994fcc4049c8cae8474d1e5985381`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 04:32:15 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 16:08:00 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 16:09:42 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 16:09:42 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 16:09:43 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 16:09:43 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 16:09:43 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 16:09:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b074a504348cbc3a19c9ebed321e15f5f905dc2237d5c3b099b9f3e2cb5a42`  
		Last Modified: Wed, 11 Apr 2018 17:41:13 GMT  
		Size: 5.9 MB (5852433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1752b7a10b388d5e204948a11b6c74b00e5fa7a00e91fd72bd26189066939dfd`  
		Last Modified: Wed, 11 Apr 2018 17:41:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5d7de0261e5fbf1bceacd602d58af2ac139f00ee84c9e0cbb21a311ed17529`  
		Last Modified: Wed, 11 Apr 2018 17:41:11 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline-alpine` - linux; ppc64le

```console
$ docker pull nginx@sha256:9deb1467f878ac3cc27d0b3b1f4d334fb08754c60572eb47ff54f16804cec968
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7473339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef39f9bd3c73974dfc8d063b5be85bdb59111fe953e74e34c52c535651c938a3`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 10:52:11 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:32:30 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 08:34:02 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:34:02 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 08:34:03 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 08:34:04 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:34:04 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:34:05 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4643aff77b51f7d6de7ad4ec61e052cbc3d4ca3f2cd98c5bbb93e3d405fc28`  
		Last Modified: Wed, 11 Apr 2018 08:38:08 GMT  
		Size: 5.4 MB (5390576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45de40f214b7ace3a3d40faab019fb17b827bf513c3486c91cac887b94bc4f09`  
		Last Modified: Wed, 11 Apr 2018 08:38:06 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d371e9209fe94225999dd2ac0e6f5e0388d0fd6e84d5eecfd40b8d8b133454e`  
		Last Modified: Wed, 11 Apr 2018 08:38:06 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline-alpine` - linux; s390x

```console
$ docker pull nginx@sha256:6468f49c0a5cd6de4ef0637a94e1bbff8cb814b02df16c0f493238898aba14d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7731691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57762e59bf076ea5a88c7c1ed93cb1568ca99b2ff9f863800b4ed35aa0fa7f56`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 01:06:38 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:19:55 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:21:24 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:21:24 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:21:24 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:21:25 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:21:25 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:21:25 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1446a8a356cc2e0f74896c4493682bd6d911039a3f72ec7586e8ca5de2b7c1`  
		Last Modified: Tue, 10 Apr 2018 18:25:57 GMT  
		Size: 5.5 MB (5545167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0276e40e1efa291a223218318f7dc8f68e6a454b85d2df8377fe114068359f74`  
		Last Modified: Tue, 10 Apr 2018 18:25:58 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a32868181ab005e50d9f83f550f52694adc359bd6e01ba15ec5290ba08a5026`  
		Last Modified: Tue, 10 Apr 2018 18:25:56 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:mainline-alpine-perl`

```console
$ docker pull nginx@sha256:86a2b122c998f028590cb9094d18c1c7e42a12997f5f7083a787eb0293b57800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:mainline-alpine-perl` - linux; amd64

```console
$ docker pull nginx@sha256:daf72b363f43fe4e57c4c36860e38bd84ac4ab5f146731426d0a4a03bb98a590
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16619937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:171391c370cfde1f8ba4b37ddb10398564448f7ce00e30aa252f850a9f22b5b9`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 20 Feb 2018 22:54:03 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:27:27 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:34:41 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:34:42 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:34:42 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:34:42 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:34:43 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:34:43 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57483e80971c30d2a4644cb760e1ff9db06ed9c2e1ae5a19a7a5841f2d42aaef`  
		Last Modified: Tue, 10 Apr 2018 18:57:20 GMT  
		Size: 14.6 MB (14553284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034407509e32c28a4ca88534bcb2cfd16f3db069ab2997ea62e8d1f4b6cd6d39`  
		Last Modified: Tue, 10 Apr 2018 18:57:27 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef8dc6cde476e1eba0725a63f9c3acd6a5971f612577d9f4035945084652e4`  
		Last Modified: Tue, 10 Apr 2018 18:57:15 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline-alpine-perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:0b8ee3e9b14b189e106504f8e538d8242e16839adc9b20ca580a9f651df75219
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15737166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b724dd355befc9d6168676ae4380fca2bd9c9f360bedef467ebc2acb1ad12aec`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 11:04:25 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 09:04:35 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 09:08:41 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 09:08:42 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 09:08:43 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 09:08:43 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 09:08:44 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 09:08:44 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe977a1e8db699bc0e200f3585161f9ac344fe2a1fc6f04f9b89dc1f61d05c8`  
		Last Modified: Wed, 11 Apr 2018 09:15:29 GMT  
		Size: 13.7 MB (13747015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce09bd37284769ec1c67bb19ce44cb4b523b06656bdcbad7109c3efc40f4506e`  
		Last Modified: Wed, 11 Apr 2018 09:15:23 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e961f81f354b8ffa61454064828b05f29120f87bbc7a0a978c1dc4e382390f3`  
		Last Modified: Wed, 11 Apr 2018 09:15:22 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline-alpine-perl` - linux; 386

```console
$ docker pull nginx@sha256:4c39bc2fb4afa2bcf183d29c81c36c3e775f711f054251076f4cb00e7429da51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16132291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aeca75df0e90a864e26e8c264a62d9736b1085422577292bbeb6f2b74b774e6`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 04:32:15 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 16:08:00 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 16:17:23 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 16:17:23 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 16:17:24 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 16:17:24 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 16:17:24 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 16:17:25 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d479737735daa7a6f7751f0771ea128067454e13a0395120a7eb661f0635afb`  
		Last Modified: Wed, 11 Apr 2018 18:15:39 GMT  
		Size: 14.0 MB (14004782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40d107be6252ab7c0d657b75a99c81e2e465975f7af7cbc9503692dd641c36`  
		Last Modified: Wed, 11 Apr 2018 18:15:32 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3a694ec2da39d3bdc76341c371b2bba75c2bbba641ca1b44b11dd8a3af4445`  
		Last Modified: Wed, 11 Apr 2018 18:15:32 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline-alpine-perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:73dca971c72ee1fb4abf72d071b69c2745727ffa5d5936362792d034a186b161
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.3 MB (16263350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e32168dc619fac9688ef0bc54912749d22181af97d6e3eedd31d03a6e1aef72`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 10:52:11 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:32:30 GMT
ENV NGINX_VERSION=1.13.12
# Wed, 11 Apr 2018 08:35:30 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:35:30 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 11 Apr 2018 08:35:31 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 11 Apr 2018 08:35:32 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:35:33 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:35:35 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47fc22d2957c8efafd560fbd41ff00b62843dde47689e8e635200cb23507fbc`  
		Last Modified: Wed, 11 Apr 2018 08:38:58 GMT  
		Size: 14.2 MB (14180585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94413b5973695675677b5bb06f705ae96b27fb5ed702be07dfeeeeac0fc2644a`  
		Last Modified: Wed, 11 Apr 2018 08:38:53 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88583ce1dfcc9e988563d65ffdb60b6bb06034781c0b9e46c5b7c68283afc6d`  
		Last Modified: Wed, 11 Apr 2018 08:38:53 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline-alpine-perl` - linux; s390x

```console
$ docker pull nginx@sha256:3f959b26c3c1938b29860f56d0e4b61ebc2d184bf44014ae36d0d62d69dabc1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16894423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6d3151ed8b5882eeb0ef1c258c3f40c9e90528a825ce208c8cbd10350bc24d4`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 01:06:38 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:19:55 GMT
ENV NGINX_VERSION=1.13.12
# Tue, 10 Apr 2018 18:23:50 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL https://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -rf "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& apk add --no-cache tzdata 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:23:51 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Tue, 10 Apr 2018 18:23:51 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Tue, 10 Apr 2018 18:23:51 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:23:52 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:23:52 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8355e3ac30cf1798a6d78e73579f27b6942f6264a86f4d35dc85f26d59fb889f`  
		Last Modified: Tue, 10 Apr 2018 18:26:32 GMT  
		Size: 14.7 MB (14707898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf04bb9678088a5daa5664d458b63640ca1d2e317065602d3c037dd59945f128`  
		Last Modified: Tue, 10 Apr 2018 18:26:27 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ceb245c4da01ba6591ed49ac4e3dc87bce45370d4ff4bff10e18ca4e69e803d`  
		Last Modified: Tue, 10 Apr 2018 18:26:28 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:mainline-perl`

```console
$ docker pull nginx@sha256:68a5f3696097ac8c79ef284222ff41d4dc827bac8c4361c3843937f634714876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:mainline-perl` - linux; amd64

```console
$ docker pull nginx@sha256:c6852f6a97ae31ceb192788cc55a3a1b8c7277fdfcc56df8ded55603a07e519f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54529344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95c84b7acc14222dfb65b01f9d64c351a3bb8329ab8857954aee0d4b636904ab`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:14:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:21:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:21:11 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:21:12 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:21:12 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:21:12 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd642bb9d3412243059379d629d81213a75772e9780be6c65865a177407173c`  
		Last Modified: Tue, 10 Apr 2018 18:38:23 GMT  
		Size: 32.0 MB (32040161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed13b24eba44b682b612e127b9dd2d98e85b92a0b1e3897ccea851369e95673a`  
		Last Modified: Tue, 10 Apr 2018 18:37:06 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline-perl` - linux; arm variant v7

```console
$ docker pull nginx@sha256:93a399ffd0a5a2f3771f859d61e3bb74cac195fff067a39363a4655577579400
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49056613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80f33c3b9573c714927041d108a98aea21fba877b9ae3ebfaa35fbfeb2d8f80`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:34:18 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 11:57:30 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 11:57:34 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 12:06:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 12:06:17 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 12:06:17 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 12:06:17 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 12:06:17 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d37b6898ddc495831fea9d6618edbac1aeea36808231720ddd0925fadc4bc3`  
		Last Modified: Wed, 11 Apr 2018 12:07:20 GMT  
		Size: 29.8 MB (29778799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcadb567d65f7a19bd6ac577763e586be59e15e943e8bcbd09df87614406631`  
		Last Modified: Wed, 11 Apr 2018 12:07:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline-perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:66e295495a591c36027174ab217b2050452f961cf1417ab30f90ccdc14909e2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51554092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765ac3571919f3a0c935ce925a32412793eadfcf3b2774df1129acb3dd307380`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:04:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:40:15 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:40:16 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 09:03:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 09:04:01 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 09:04:01 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 09:04:02 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 09:04:03 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e304217935f61a1a7d792573ab7c53679bad49de15c466e6ff11ab44d835dd5a`  
		Last Modified: Wed, 11 Apr 2018 09:11:39 GMT  
		Size: 31.2 MB (31216684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a8c2d3b50e94d808b67278050c14a7c0a63aa83be985b21045e81d099292ad`  
		Last Modified: Wed, 11 Apr 2018 09:11:28 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline-perl` - linux; 386

```console
$ docker pull nginx@sha256:e69d6cae769deb0ecdd21d318d75c2aa79767c032e8c86686c21667761974c5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55196981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d8f63a3ab02906b50ace8786f5041fd7d01aa1fea1ca31b27c8711352af366`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 30 Mar 2018 00:26:46 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 15:56:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 15:56:08 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 15:56:09 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 15:56:09 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 15:56:09 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71b7e2c1d7896e718edf5109507f4b4878b7b7ab693190ae2692cdeac7601db`  
		Last Modified: Wed, 11 Apr 2018 17:05:27 GMT  
		Size: 32.1 MB (32067994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ba0e66d2c66ec5a0af77a26de3e782dbf39429b2f62ff49a7aa3c451935cfb`  
		Last Modified: Wed, 11 Apr 2018 17:05:15 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline-perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:98b1cd60bbceab425a65cea8a5167cc970fc2c3e90410b67ca5c07a99c83a06d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54699703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f746b2619c0f9115a8d2179ee4b735b5a40c56c15c45b47b566cd3e5f6243b37`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 06:42:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 08:32:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 08:32:14 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:32:15 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:32:16 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:32:16 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52d1095720a76517eff1fd90625ceec4c47d648f76cb6b7f09dd7c10d2f8df1`  
		Last Modified: Wed, 11 Apr 2018 08:37:19 GMT  
		Size: 32.0 MB (31953358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6ee6e72f6dab9365f11a0c4b3a00c03b5f9d47971ade89dbbd9d7aecf33b80`  
		Last Modified: Wed, 11 Apr 2018 08:37:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline-perl` - linux; s390x

```console
$ docker pull nginx@sha256:deda949bcc656cff6db6be490ff63dca16d9b1c634bdaf613ff7c1bb73a733f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54794954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c887bb46e8b0a73ea3ee31dc1b8e8bc98c9758a014cbba7f4aee8cb141ecd3b`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:18:37 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:19:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:19:33 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:19:34 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:19:34 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:19:34 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40de666e75668981866d87e18eb2a125bb27852dd7e264483da79a2bde5b273`  
		Last Modified: Tue, 10 Apr 2018 18:25:26 GMT  
		Size: 32.5 MB (32454272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f41838146a7b779223ede30c94d61ab1d4d12e914080b8ed6b4564b13893bcb`  
		Last Modified: Tue, 10 Apr 2018 18:25:18 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:perl`

```console
$ docker pull nginx@sha256:68a5f3696097ac8c79ef284222ff41d4dc827bac8c4361c3843937f634714876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `nginx:perl` - linux; amd64

```console
$ docker pull nginx@sha256:c6852f6a97ae31ceb192788cc55a3a1b8c7277fdfcc56df8ded55603a07e519f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54529344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95c84b7acc14222dfb65b01f9d64c351a3bb8329ab8857954aee0d4b636904ab`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:14:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:20:05 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:21:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:21:11 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:21:12 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:21:12 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:21:12 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd642bb9d3412243059379d629d81213a75772e9780be6c65865a177407173c`  
		Last Modified: Tue, 10 Apr 2018 18:38:23 GMT  
		Size: 32.0 MB (32040161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed13b24eba44b682b612e127b9dd2d98e85b92a0b1e3897ccea851369e95673a`  
		Last Modified: Tue, 10 Apr 2018 18:37:06 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:perl` - linux; arm variant v7

```console
$ docker pull nginx@sha256:93a399ffd0a5a2f3771f859d61e3bb74cac195fff067a39363a4655577579400
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49056613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80f33c3b9573c714927041d108a98aea21fba877b9ae3ebfaa35fbfeb2d8f80`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:34:18 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 11:57:30 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 11:57:34 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 12:06:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 12:06:17 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 12:06:17 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 12:06:17 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 12:06:17 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d37b6898ddc495831fea9d6618edbac1aeea36808231720ddd0925fadc4bc3`  
		Last Modified: Wed, 11 Apr 2018 12:07:20 GMT  
		Size: 29.8 MB (29778799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcadb567d65f7a19bd6ac577763e586be59e15e943e8bcbd09df87614406631`  
		Last Modified: Wed, 11 Apr 2018 12:07:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:66e295495a591c36027174ab217b2050452f961cf1417ab30f90ccdc14909e2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51554092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765ac3571919f3a0c935ce925a32412793eadfcf3b2774df1129acb3dd307380`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:04:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:40:15 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:40:16 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 09:03:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 09:04:01 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 09:04:01 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 09:04:02 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 09:04:03 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e304217935f61a1a7d792573ab7c53679bad49de15c466e6ff11ab44d835dd5a`  
		Last Modified: Wed, 11 Apr 2018 09:11:39 GMT  
		Size: 31.2 MB (31216684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a8c2d3b50e94d808b67278050c14a7c0a63aa83be985b21045e81d099292ad`  
		Last Modified: Wed, 11 Apr 2018 09:11:28 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:perl` - linux; 386

```console
$ docker pull nginx@sha256:e69d6cae769deb0ecdd21d318d75c2aa79767c032e8c86686c21667761974c5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55196981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d8f63a3ab02906b50ace8786f5041fd7d01aa1fea1ca31b27c8711352af366`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 30 Mar 2018 00:26:46 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 15:53:17 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 15:56:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 15:56:08 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 15:56:09 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 15:56:09 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 15:56:09 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71b7e2c1d7896e718edf5109507f4b4878b7b7ab693190ae2692cdeac7601db`  
		Last Modified: Wed, 11 Apr 2018 17:05:27 GMT  
		Size: 32.1 MB (32067994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ba0e66d2c66ec5a0af77a26de3e782dbf39429b2f62ff49a7aa3c451935cfb`  
		Last Modified: Wed, 11 Apr 2018 17:05:15 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:98b1cd60bbceab425a65cea8a5167cc970fc2c3e90410b67ca5c07a99c83a06d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54699703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f746b2619c0f9115a8d2179ee4b735b5a40c56c15c45b47b566cd3e5f6243b37`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 06:42:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Wed, 11 Apr 2018 08:17:09 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Wed, 11 Apr 2018 08:32:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 11 Apr 2018 08:32:14 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 11 Apr 2018 08:32:15 GMT
EXPOSE 80/tcp
# Wed, 11 Apr 2018 08:32:16 GMT
STOPSIGNAL [SIGTERM]
# Wed, 11 Apr 2018 08:32:16 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52d1095720a76517eff1fd90625ceec4c47d648f76cb6b7f09dd7c10d2f8df1`  
		Last Modified: Wed, 11 Apr 2018 08:37:19 GMT  
		Size: 32.0 MB (31953358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6ee6e72f6dab9365f11a0c4b3a00c03b5f9d47971ade89dbbd9d7aecf33b80`  
		Last Modified: Wed, 11 Apr 2018 08:37:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:perl` - linux; s390x

```console
$ docker pull nginx@sha256:deda949bcc656cff6db6be490ff63dca16d9b1c634bdaf613ff7c1bb73a733f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54794954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c887bb46e8b0a73ea3ee31dc1b8e8bc98c9758a014cbba7f4aee8cb141ecd3b`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:18:37 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NGINX_VERSION=1.13.12-1~stretch
# Tue, 10 Apr 2018 18:10:35 GMT
ENV NJS_VERSION=1.13.12.0.2.0-1~stretch
# Tue, 10 Apr 2018 18:19:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 10 Apr 2018 18:19:33 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Tue, 10 Apr 2018 18:19:34 GMT
EXPOSE 80/tcp
# Tue, 10 Apr 2018 18:19:34 GMT
STOPSIGNAL [SIGTERM]
# Tue, 10 Apr 2018 18:19:34 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40de666e75668981866d87e18eb2a125bb27852dd7e264483da79a2bde5b273`  
		Last Modified: Tue, 10 Apr 2018 18:25:26 GMT  
		Size: 32.5 MB (32454272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f41838146a7b779223ede30c94d61ab1d4d12e914080b8ed6b4564b13893bcb`  
		Last Modified: Tue, 10 Apr 2018 18:25:18 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:stable`

```console
$ docker pull nginx@sha256:416134fd8b36457ee5dfdc08eb7271a30aa0ce0d8a1b55a6bcb9852f8f362630
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
$ docker pull nginx@sha256:3390f82ea98dd8d3708c0da78c4012a6b67f5b45dbce8f904e328a7f7ebf1060
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44394770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b155f07a3fa149f5f716ec3d8e74c54d33324c5a03da823514294505f016b7c`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:14:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 08:18:31 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 08:18:31 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 08:18:45 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 08:18:45 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 08:18:46 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 08:18:46 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 08:18:46 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37cbdc183b265b88db220775ae521536ab525573502f5aac7d528e0b87d5d3d`  
		Last Modified: Wed, 14 Mar 2018 08:22:50 GMT  
		Size: 21.9 MB (21905587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b5ad0b466c6edde6176e53e656dc841bdca51d54e77ab55403c600272df8b0`  
		Last Modified: Wed, 14 Mar 2018 08:22:47 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable` - linux; arm variant v7

```console
$ docker pull nginx@sha256:70beb4e912b1f3449ea5a619eb8f6d66b761a8549824096acd462189942446fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39923850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcad5e0f4d826f8f12c4366ecdc25e0eb2f1c9d07752b9024145cd9e2007a942`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:34:18 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 13:44:22 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 13:44:22 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 13:48:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 13:48:07 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 13:48:07 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 13:48:07 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 13:48:08 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0fc5333f2f3108469912ea07f8e890f5d3cf83efe3b5c6467aa09c3297b979`  
		Last Modified: Wed, 14 Mar 2018 13:55:26 GMT  
		Size: 20.6 MB (20646036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2bfb02f1756284420118a6ed3c70d7d4309f265e844a7302640c2422583846`  
		Last Modified: Wed, 14 Mar 2018 13:55:21 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:e3b31070e64696508b765ecb8d698577d0a14df7cb2dbafcb6c26e5446aa8113
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 MB (41669943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0af0e70ec45f9b637d82dd2089c34ec9288e4e19a21b823cf3b38bfdd1bb04c`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:04:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 20:39:31 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 20:39:32 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 20:52:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 20:53:08 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 20:53:09 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 20:53:10 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 20:53:11 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779eb49fd3fcf0597ad59f65e7b49129de58bb928815e20283baed4918e98b8f`  
		Last Modified: Wed, 14 Mar 2018 21:08:57 GMT  
		Size: 21.3 MB (21332535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83e0d73768b7ec28e090a2732401fd4fa576676cc9272ba0ec9bc785e5f8d29`  
		Last Modified: Wed, 14 Mar 2018 21:08:49 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable` - linux; 386

```console
$ docker pull nginx@sha256:a20f06d67b32fd8aed8b5c19da84542931e91691866ec1bd0db9dd2a7f9753ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45574484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00123fa34261c71ce47779057bdad761054510c9c73c27afe9f0d57d4077dcf8`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 30 Mar 2018 00:26:46 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Fri, 30 Mar 2018 00:49:32 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Fri, 30 Mar 2018 00:49:32 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Fri, 30 Mar 2018 00:49:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 30 Mar 2018 00:49:55 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Fri, 30 Mar 2018 00:49:55 GMT
EXPOSE 80/tcp
# Fri, 30 Mar 2018 00:49:55 GMT
STOPSIGNAL [SIGTERM]
# Fri, 30 Mar 2018 00:49:56 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e952f0bba7505fe42da161ba2d6ddbb818b4628ac9cf62d6fd2ec324804382de`  
		Last Modified: Fri, 30 Mar 2018 02:34:30 GMT  
		Size: 22.4 MB (22445497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1500c51299013cd94ce0f0a99fb4d4fea4baa9793d41ffc94c051f12f87cee4b`  
		Last Modified: Fri, 30 Mar 2018 02:34:24 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable` - linux; ppc64le

```console
$ docker pull nginx@sha256:099e32ca7f73cea0039969c6adf10e07939d99c9d0ce8ed5493369fb3ef6cd42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.7 MB (44652442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b6d082963c4bb4423e92d13d6c89be30f999ef4373d369bf6efb648d765573`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 06:42:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 15 Mar 2018 07:23:56 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Thu, 15 Mar 2018 07:23:58 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Thu, 15 Mar 2018 07:38:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 07:38:20 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Thu, 15 Mar 2018 07:38:21 GMT
EXPOSE 80/tcp
# Thu, 15 Mar 2018 07:38:22 GMT
STOPSIGNAL [SIGTERM]
# Thu, 15 Mar 2018 07:38:24 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8260b927878c919fedd403f2149cc5eec0a2ba687d5c14c851496434186d5496`  
		Last Modified: Thu, 15 Mar 2018 07:57:58 GMT  
		Size: 21.9 MB (21906096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b20212621e028b9870bba06ee1173e48690f1a3db387f1df1e299562363efb0`  
		Last Modified: Thu, 15 Mar 2018 07:57:53 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable` - linux; s390x

```console
$ docker pull nginx@sha256:6df9187bd3e8d895a912d2d947d5b89af72317b77a65980fb62ded04d088c596
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.4 MB (44389882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bada8ad21adbbcab56c0a1ec728d192f81557efff038a68e10c104d4f7eff4b1`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:18:37 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 06:25:20 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 06:25:20 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 06:27:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 06:27:43 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 06:27:43 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 06:27:44 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 06:27:44 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec88c12cb299cae94bb6f2604737398674883fd5902e6263eb9fb737052086a1`  
		Last Modified: Wed, 14 Mar 2018 06:32:18 GMT  
		Size: 22.0 MB (22049201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a231f81a15d69f6fb41b6ac4b09d5e6e890e1262bf4fe41c037936ed4808f0`  
		Last Modified: Wed, 14 Mar 2018 06:32:16 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:stable-alpine`

```console
$ docker pull nginx@sha256:db5acc22920799fe387a903437eb89387607e5b3f63cf0f4472ac182d7bad644
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nginx:stable-alpine` - linux; amd64

```console
$ docker pull nginx@sha256:812dd32216edcfd41decaacc8fe7cae80b39e5a87b0b8923bc15c4db94cf5bdb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6742471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ed1c575f8176d90af60ed57f89a9bae0e16c56b48519311f48b106e0e0c407`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:08:56 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 10 Jan 2018 04:13:11 GMT
ENV NGINX_VERSION=1.12.2
# Wed, 10 Jan 2018 04:14:20 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 10 Jan 2018 04:14:22 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 10 Jan 2018 04:14:23 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 10 Jan 2018 04:14:23 GMT
EXPOSE 80/tcp
# Wed, 10 Jan 2018 04:14:23 GMT
STOPSIGNAL [SIGTERM]
# Wed, 10 Jan 2018 04:14:23 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3988949040d4843cce89896dbc55cc29c1ffabf917167ebabe4214e6e66233`  
		Last Modified: Wed, 10 Jan 2018 04:19:47 GMT  
		Size: 4.8 MB (4771217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6642feac7289087182c44548776c392c5cf9ccc73289541335b4c4634670c70`  
		Last Modified: Wed, 10 Jan 2018 04:19:44 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20f0a205eaa02418dc50ce73e8f0dcd680aee77e04338b81b5d92117e6f9d49`  
		Last Modified: Wed, 10 Jan 2018 04:19:44 GMT  
		Size: 624.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:stable-alpine-perl`

```console
$ docker pull nginx@sha256:b7970b06de2b70acca1784ab92fb06d60f4f714e901a55b6b5211c22a446dbd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nginx:stable-alpine-perl` - linux; amd64

```console
$ docker pull nginx@sha256:301cdd0e2760bd1a5fad429f668187fe44cac2a16c68cb4b36b3ba90a0f6d293
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18125785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a456f1d7aeaa5531a3c5da8bfbda7ca9a364405cfa98f2a0c5aa1166bf3c89`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:08:56 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 10 Jan 2018 04:13:11 GMT
ENV NGINX_VERSION=1.12.2
# Wed, 10 Jan 2018 04:16:03 GMT
RUN GPG_KEYS=B0F4253373F8F6F510D42178520A9993A1C052F8 	&& CONFIG="		--prefix=/etc/nginx 		--sbin-path=/usr/sbin/nginx 		--modules-path=/usr/lib/nginx/modules 		--conf-path=/etc/nginx/nginx.conf 		--error-log-path=/var/log/nginx/error.log 		--http-log-path=/var/log/nginx/access.log 		--pid-path=/var/run/nginx.pid 		--lock-path=/var/run/nginx.lock 		--http-client-body-temp-path=/var/cache/nginx/client_temp 		--http-proxy-temp-path=/var/cache/nginx/proxy_temp 		--http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp 		--http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp 		--http-scgi-temp-path=/var/cache/nginx/scgi_temp 		--user=nginx 		--group=nginx 		--with-http_ssl_module 		--with-http_realip_module 		--with-http_addition_module 		--with-http_sub_module 		--with-http_dav_module 		--with-http_flv_module 		--with-http_mp4_module 		--with-http_gunzip_module 		--with-http_gzip_static_module 		--with-http_random_index_module 		--with-http_secure_link_module 		--with-http_stub_status_module 		--with-http_auth_request_module 		--with-http_xslt_module=dynamic 		--with-http_image_filter_module=dynamic 		--with-http_geoip_module=dynamic 		--with-http_perl_module=dynamic 		--with-threads 		--with-stream 		--with-stream_ssl_module 		--with-stream_ssl_preread_module 		--with-stream_realip_module 		--with-stream_geoip_module=dynamic 		--with-http_slice_module 		--with-mail 		--with-mail_ssl_module 		--with-compat 		--with-file-aio 		--with-http_v2_module 	" 	&& addgroup -S nginx 	&& adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G nginx nginx 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		openssl-dev 		pcre-dev 		zlib-dev 		linux-headers 		curl 		gnupg 		libxslt-dev 		gd-dev 		geoip-dev 		perl-dev 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz -o nginx.tar.gz 	&& curl -fSL http://nginx.org/download/nginx-$NGINX_VERSION.tar.gz.asc  -o nginx.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $GPG_KEYS from $server"; 		gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$GPG_KEYS" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $GPG_KEYS" && exit 1; 	gpg --batch --verify nginx.tar.gz.asc nginx.tar.gz 	&& rm -r "$GNUPGHOME" nginx.tar.gz.asc 	&& mkdir -p /usr/src 	&& tar -zxC /usr/src -f nginx.tar.gz 	&& rm nginx.tar.gz 	&& cd /usr/src/nginx-$NGINX_VERSION 	&& ./configure $CONFIG --with-debug 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& mv objs/nginx objs/nginx-debug 	&& mv objs/ngx_http_xslt_filter_module.so objs/ngx_http_xslt_filter_module-debug.so 	&& mv objs/ngx_http_image_filter_module.so objs/ngx_http_image_filter_module-debug.so 	&& mv objs/ngx_http_geoip_module.so objs/ngx_http_geoip_module-debug.so 	&& mv objs/ngx_http_perl_module.so objs/ngx_http_perl_module-debug.so 	&& mv objs/ngx_stream_geoip_module.so objs/ngx_stream_geoip_module-debug.so 	&& ./configure $CONFIG 	&& make -j$(getconf _NPROCESSORS_ONLN) 	&& make install 	&& rm -rf /etc/nginx/html/ 	&& mkdir /etc/nginx/conf.d/ 	&& mkdir -p /usr/share/nginx/html/ 	&& install -m644 html/index.html /usr/share/nginx/html/ 	&& install -m644 html/50x.html /usr/share/nginx/html/ 	&& install -m755 objs/nginx-debug /usr/sbin/nginx-debug 	&& install -m755 objs/ngx_http_xslt_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_xslt_filter_module-debug.so 	&& install -m755 objs/ngx_http_image_filter_module-debug.so /usr/lib/nginx/modules/ngx_http_image_filter_module-debug.so 	&& install -m755 objs/ngx_http_geoip_module-debug.so /usr/lib/nginx/modules/ngx_http_geoip_module-debug.so 	&& install -m755 objs/ngx_http_perl_module-debug.so /usr/lib/nginx/modules/ngx_http_perl_module-debug.so 	&& install -m755 objs/ngx_stream_geoip_module-debug.so /usr/lib/nginx/modules/ngx_stream_geoip_module-debug.so 	&& ln -s ../../usr/lib/nginx/modules /etc/nginx/modules 	&& strip /usr/sbin/nginx* 	&& strip /usr/lib/nginx/modules/*.so 	&& rm -rf /usr/src/nginx-$NGINX_VERSION 		&& apk add --no-cache --virtual .gettext gettext 	&& mv /usr/bin/envsubst /tmp/ 		&& runDeps="$( 		scanelf --needed --nobanner /usr/sbin/nginx /usr/lib/nginx/modules/*.so /tmp/envsubst 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .nginx-rundeps $runDeps 	&& apk del .build-deps 	&& apk del .gettext 	&& mv /tmp/envsubst /usr/local/bin/ 		&& ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 10 Jan 2018 04:16:04 GMT
COPY file:af94db45bb7e4b8ff4e699f1ff6f41c348f9876073ad91d6e803070415f8d9ce in /etc/nginx/nginx.conf 
# Wed, 10 Jan 2018 04:16:04 GMT
COPY file:1d1ac3b9a14c94a709efa20da1c4268a931f1a234e782801ce5912fdcf53a7af in /etc/nginx/conf.d/default.conf 
# Wed, 10 Jan 2018 04:16:05 GMT
EXPOSE 80/tcp
# Wed, 10 Jan 2018 04:16:05 GMT
STOPSIGNAL [SIGTERM]
# Wed, 10 Jan 2018 04:16:06 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a55c7b3b0e144cc853227e6ce574f75b51bc481ce713d06b4a0578f426d448`  
		Last Modified: Wed, 10 Jan 2018 04:20:31 GMT  
		Size: 16.2 MB (16154527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552be5624b14df0a58b547ff1c8695bb3fd62c11ee4d0bca5ef8aca128cc42ba`  
		Last Modified: Wed, 10 Jan 2018 04:20:27 GMT  
		Size: 490.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40fc04944e915238b7394b033a41c3c8d539e518e988dcf882c80e6e9ad3eb61`  
		Last Modified: Wed, 10 Jan 2018 04:20:28 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nginx:stable-perl`

```console
$ docker pull nginx@sha256:05070a93535b96d48e5caadc66709cfc22ab5653ea23f048e86900065bbf828c
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
$ docker pull nginx@sha256:9963f9d34928535e14e07e8523b286bdcbdf36b9f1675d1e951cae09727b2f7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54321982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:056eec01604fec89522aefe75ee49ecb0fc62deb037973751b9fd861116e06ef`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:14:39 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 08:18:31 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 08:18:31 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 08:19:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 08:19:18 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 08:19:19 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 08:19:19 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 08:19:19 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e91a536d41fc57cba782012132971acf4a185a718d9b6116a631cc9748acd5cb`  
		Last Modified: Wed, 14 Mar 2018 08:23:48 GMT  
		Size: 31.8 MB (31832799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022590bda3c4b3ed25d86dd7b34d8dfaf5600d38b2508dd2607e673543476af3`  
		Last Modified: Wed, 14 Mar 2018 08:23:43 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable-perl` - linux; arm variant v7

```console
$ docker pull nginx@sha256:a6660be602763693e814e9434f1edab6b5f9faf6ccac43c65e5e3d72e3da3dfa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48942627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:468747828af0f29c25b78ed50bae6aa56cd7c82b145a42b2223253ff0072d392`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:34:18 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 13:44:22 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 13:44:22 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 13:52:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 13:52:45 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 13:52:45 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 13:52:45 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 13:52:45 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190678bfe94a2a940479c4f3fc5cbf34325a7a211c5bba507b92be50021be2df`  
		Last Modified: Wed, 14 Mar 2018 13:56:08 GMT  
		Size: 29.7 MB (29664813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9cbb97a1d3183aaa0fe3efa08bb935ee82b8c49e965a2c12a9863a318ae8367`  
		Last Modified: Wed, 14 Mar 2018 13:55:59 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable-perl` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:1115451d2b8f6b84998cc3fef9cf502752a7a29a902c87b73331944f060ddf1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51416246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:291742646ae285b4c0567b6e49bec256be232a0e5c3996ead6100c1db031fcee`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:04:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 20:39:31 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 20:39:32 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 21:03:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 21:04:08 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 21:04:08 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 21:04:09 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 21:04:10 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc7cbfa117458303395a2c9a6edf6f6944457257d95ec88e8f6942c8fc6b90fe`  
		Last Modified: Wed, 14 Mar 2018 21:10:30 GMT  
		Size: 31.1 MB (31078839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2ab806f6745c8a7f8e4c3e38e2cab9a15ea010596771d2763c1e1c4c453881`  
		Last Modified: Wed, 14 Mar 2018 21:10:19 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable-perl` - linux; 386

```console
$ docker pull nginx@sha256:1c129507a0f7a71dcba0e08b8b1c4270625c9908380f9594e5f05c81f972cefb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54970041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed35225bbf39570d5d15eead05347ac7d9066d78c4bbdd875d72941a0db0fbcd`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Tue, 27 Mar 2018 16:09:09 GMT
ADD file:5f8e2fbc1268ac5b46594efb678568241114da3315a48a2b48d45a696e709a59 in / 
# Tue, 27 Mar 2018 16:09:09 GMT
CMD ["bash"]
# Fri, 30 Mar 2018 00:26:46 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Fri, 30 Mar 2018 00:49:32 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Fri, 30 Mar 2018 00:49:32 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Fri, 30 Mar 2018 00:52:59 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 30 Mar 2018 00:53:00 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Fri, 30 Mar 2018 00:53:00 GMT
EXPOSE 80/tcp
# Fri, 30 Mar 2018 00:53:00 GMT
STOPSIGNAL [SIGTERM]
# Fri, 30 Mar 2018 00:53:01 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:4bbaad9d12d2240d446a4bdd775931ab087231a82c5d07172d661861d447f336`  
		Last Modified: Thu, 15 Mar 2018 01:29:42 GMT  
		Size: 23.1 MB (23128783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d850956bf5cf27205fb4dea58c67b5de3997152aeb9211c33657c145ae3b9a8`  
		Last Modified: Fri, 30 Mar 2018 02:45:18 GMT  
		Size: 31.8 MB (31841056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78c1a63e31f7b993813ff5d374bb0d2cffdc470eea8ace0bd41a5e83bd13982`  
		Last Modified: Fri, 30 Mar 2018 02:45:07 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable-perl` - linux; ppc64le

```console
$ docker pull nginx@sha256:68f4aa2e6f6733a6c9dfdfd8c0805a0c6cc8169b448e6abfc441657a1d74e51f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54556575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d226d824ba8054a74b0163fa1f7a7de8505975b5e3c3143633c8984c3492148c`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 06:42:12 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 15 Mar 2018 07:23:56 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Thu, 15 Mar 2018 07:23:58 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Thu, 15 Mar 2018 07:55:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 07:55:27 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Thu, 15 Mar 2018 07:55:31 GMT
EXPOSE 80/tcp
# Thu, 15 Mar 2018 07:55:36 GMT
STOPSIGNAL [SIGTERM]
# Thu, 15 Mar 2018 07:55:40 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa76f585dfd161ef106b090f1d3e31566ce963c5b08a35ec34e709b6470d16c`  
		Last Modified: Thu, 15 Mar 2018 07:58:28 GMT  
		Size: 31.8 MB (31810229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:208e3f73d9242f4c850ad14ee0b3f3b5aceb8660ac08cd11b3238fa86fbb1969`  
		Last Modified: Thu, 15 Mar 2018 07:58:18 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable-perl` - linux; s390x

```console
$ docker pull nginx@sha256:15c8cc40763ea1ace0acda934c3ba68ab571d3f6249c8e05d7eb44d22e04b7fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54652282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524a34cfc49ae96abee67e38ff9dd6ca622a70098612fa9f4a12f31f35954276`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:18:37 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 14 Mar 2018 06:25:20 GMT
ENV NGINX_VERSION=1.12.2-1~stretch
# Wed, 14 Mar 2018 06:25:20 GMT
ENV NJS_VERSION=1.12.2.0.1.14-1~stretch
# Wed, 14 Mar 2018 06:30:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-perl=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 			&& apt-get update 			;; 		*) 			echo "deb-src http://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& rm -rf /var/lib/apt/lists/* 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 06:30:41 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 14 Mar 2018 06:30:41 GMT
EXPOSE 80/tcp
# Wed, 14 Mar 2018 06:30:41 GMT
STOPSIGNAL [SIGTERM]
# Wed, 14 Mar 2018 06:30:41 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7c36600a3cf51b9444e3dd8371d272e48447d5fc65cf06324a58019492f188`  
		Last Modified: Wed, 14 Mar 2018 06:32:39 GMT  
		Size: 32.3 MB (32311601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0904de48aa7ed835aaf0b3b6747318bc07561e6b06939475dedc3b226ab065`  
		Last Modified: Wed, 14 Mar 2018 06:32:31 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
