## `nginx:stable`

```console
$ docker pull nginx@sha256:c24fb46f630fe7de44b69d40176385f470203f0c010b27fc1a5d8ded88379dd9
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
$ docker pull nginx@sha256:6c5e37942a2b4c7fc41debf4d904e87446cf5ec5f9b81e6705004f2f6f19f55f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.7 MB (44705512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1293e2b0a1af4854799d5f4a335c59f475cb68ef34e35f8e901d77971eb47315`
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
# Wed, 06 Feb 2019 08:12:43 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 06 Feb 2019 08:12:45 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 06 Feb 2019 08:12:45 GMT
EXPOSE 80
# Wed, 06 Feb 2019 08:12:45 GMT
STOPSIGNAL SIGTERM
# Wed, 06 Feb 2019 08:12:46 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edc8c3fac48dfe4178b0fb93b2f79a18714ca27853b7fd36db13c7995cbddd0`  
		Last Modified: Wed, 06 Feb 2019 08:14:12 GMT  
		Size: 22.2 MB (22205021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19c4a4a77fef5368334a1ea8db22066d69911ca922df88b5966fa2564549023`  
		Last Modified: Wed, 06 Feb 2019 08:14:08 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable` - linux; arm variant v7

```console
$ docker pull nginx@sha256:e9698f28427e6a1eff9c8281a5a8ba472cb85a8d6ec3294f44cb1387bc713480
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.1 MB (40137407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc66a03e3d798fde63a805e88765b674edbc884ed888c44a654dfb1b0043428f`
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
# Wed, 23 Jan 2019 14:27:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 23 Jan 2019 14:27:31 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 23 Jan 2019 14:27:33 GMT
EXPOSE 80
# Wed, 23 Jan 2019 14:27:34 GMT
STOPSIGNAL SIGTERM
# Wed, 23 Jan 2019 14:27:35 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc610cdc540b62191ca4ed58ebeeb906507d392dcc9a97092acc5384bf23918f`  
		Last Modified: Wed, 23 Jan 2019 14:35:04 GMT  
		Size: 20.8 MB (20846916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c492b6d77cb2ef236f8c93bf40da61b98c67e262877b3153720aeec70b67b1`  
		Last Modified: Wed, 23 Jan 2019 14:34:58 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:b997d88fe5b0c7ec88d5db9cc1f40523c2eb6031f4dbb9ed12428e5effe882ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 MB (41902621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f9a8e5c6bfc9a9c6d604cc5b02cae89cb6f98642fbfc41d97b5b6ce9b5f8a3`
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
# Thu, 07 Feb 2019 02:48:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 07 Feb 2019 02:48:10 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Thu, 07 Feb 2019 02:48:12 GMT
EXPOSE 80
# Thu, 07 Feb 2019 02:48:14 GMT
STOPSIGNAL SIGTERM
# Thu, 07 Feb 2019 02:48:17 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a08aa9c35dd47aa3138220cf2ac056c836a3621d8b3b58ae877e8a2b3be6daa`  
		Last Modified: Thu, 07 Feb 2019 03:06:24 GMT  
		Size: 21.6 MB (21552258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f08f843ba314ec74cf2909c95832db64ead26c7da73fb048e98e0e1cb5baec0`  
		Last Modified: Thu, 07 Feb 2019 03:06:13 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable` - linux; 386

```console
$ docker pull nginx@sha256:f8f46579beada157caf9f19055abad44d08a90bf78aac8c699bd5062da5ff44b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45913142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88472f0bff578a1b03b3a39dd25e072fcb4b215fc4842d9958e1ecbec70c2bb6`
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
# Thu, 07 Feb 2019 03:54:38 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 07 Feb 2019 03:54:38 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Thu, 07 Feb 2019 03:54:38 GMT
EXPOSE 80
# Thu, 07 Feb 2019 03:54:39 GMT
STOPSIGNAL SIGTERM
# Thu, 07 Feb 2019 03:54:39 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b301b612d17841b9554f1185cf3ffe177dc7c255904810b27c76f77723f80dc`  
		Last Modified: Thu, 07 Feb 2019 03:56:03 GMT  
		Size: 22.8 MB (22765968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11365832c855546fbccc0786943bd0a996869a7fd3877dc0c868326e6691bf93`  
		Last Modified: Thu, 07 Feb 2019 03:55:58 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable` - linux; ppc64le

```console
$ docker pull nginx@sha256:7966e8170b1cbf99735d85cbd222bdc72736f988cdc65fab9ef548733f20f050
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44880406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:006240243f09a3dd127a58e1ba2c73e82865293fd6d3360453dad037f9a2baeb`
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
# Wed, 06 Feb 2019 19:54:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 06 Feb 2019 19:54:05 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 06 Feb 2019 19:54:07 GMT
EXPOSE 80
# Wed, 06 Feb 2019 19:54:09 GMT
STOPSIGNAL SIGTERM
# Wed, 06 Feb 2019 19:54:10 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4314b1744191bc1381602528cdb3f1709c51043f0b66c2e4aef98e7c3d9b6b7`  
		Last Modified: Wed, 06 Feb 2019 20:04:19 GMT  
		Size: 22.1 MB (22124810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31166dae3f2d4cf4209ec76237dc05e1d1f218828d2a61bd94f5647a14ba586c`  
		Last Modified: Wed, 06 Feb 2019 20:04:14 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:stable` - linux; s390x

```console
$ docker pull nginx@sha256:c5714a250a5dba7e76e9fc895005f84f3269fa5ee7e5bb42386ff66360be3ef2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44636539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51fec3eb48ccb7511421faf4b9eaf11c9f250a5fa7ba118937e84f5fcac0fb96`
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
# Wed, 06 Feb 2019 16:48:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 06 Feb 2019 16:48:06 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 06 Feb 2019 16:48:06 GMT
EXPOSE 80
# Wed, 06 Feb 2019 16:48:06 GMT
STOPSIGNAL SIGTERM
# Wed, 06 Feb 2019 16:48:06 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff991abe6bff109e52abc6864e691bd33b9861159722f06424b66d4aa806279a`  
		Last Modified: Wed, 06 Feb 2019 16:51:58 GMT  
		Size: 22.3 MB (22283001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019d814ad2d2135187f8a60b66e097e9606c86e35cd57e51b243c41a539e2a87`  
		Last Modified: Wed, 06 Feb 2019 16:51:55 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
