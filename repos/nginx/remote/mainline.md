## `nginx:mainline`

```console
$ docker pull nginx@sha256:d9e32ef2a26b6ff37b2373c682d01b5cb9c4e9f03bf56909ee6ee1087634b4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `nginx:mainline` - linux; amd64

```console
$ docker pull nginx@sha256:082b7224e857035c61eb4a802bfccf8392736953f78a99096acc7e3296739889
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44762587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c9ca4d17702c354fa41432be278d8ce6c0761b1302608034fa3ad49c6da43f9`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:10:32 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Wed, 27 Feb 2019 23:23:29 GMT
ENV NGINX_VERSION=1.15.9-1~stretch
# Wed, 27 Feb 2019 23:23:29 GMT
ENV NJS_VERSION=1.15.9.0.2.8-1~stretch
# Wed, 27 Feb 2019 23:24:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Feb 2019 23:24:02 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Wed, 27 Feb 2019 23:24:03 GMT
EXPOSE 80
# Wed, 27 Feb 2019 23:24:03 GMT
STOPSIGNAL SIGTERM
# Wed, 27 Feb 2019 23:24:03 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58702d4af1973351b67463938c69fa372b9d4232218102580433762ec082544a`  
		Last Modified: Wed, 27 Feb 2019 23:27:47 GMT  
		Size: 22.3 MB (22262095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b165f42e8fd4472a51e153610e90131922860647296eb604bc7b50d0547b59b5`  
		Last Modified: Wed, 27 Feb 2019 23:27:44 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline` - linux; arm64 variant v8

```console
$ docker pull nginx@sha256:b84e3c57bd38da8ac16af2157c63cc4008a9e43f595c02f7440a106afdcedf4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46050231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5d7507a17ddea323ff10b435821a9dbc28245e21256e0db9443bed79913db7a`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:00:23 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 28 Feb 2019 10:24:24 GMT
ENV NGINX_VERSION=1.15.9-1~stretch
# Thu, 28 Feb 2019 10:24:25 GMT
ENV NJS_VERSION=1.15.9.0.2.8-1~stretch
# Thu, 28 Feb 2019 10:43:56 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 28 Feb 2019 10:43:59 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Thu, 28 Feb 2019 10:44:00 GMT
EXPOSE 80
# Thu, 28 Feb 2019 10:44:01 GMT
STOPSIGNAL SIGTERM
# Thu, 28 Feb 2019 10:44:04 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be4652af596e3d938c0ec4497c36e1b02f83c9aa42b580198d68856e2501965`  
		Last Modified: Thu, 28 Feb 2019 11:08:34 GMT  
		Size: 25.7 MB (25699867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0d95b1ab908285b9ebbb72f6d87b53a5f58785b2a75c836a074df8e4f79887`  
		Last Modified: Thu, 28 Feb 2019 11:08:25 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nginx:mainline` - linux; ppc64le

```console
$ docker pull nginx@sha256:f7dce4e1b29db9f514da0cb006a1f207a17979ec26b8125421d53394c55968b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50057046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0bb8610f3882c973ef6a469763e65289e0186c9f2b6bc0ff7ddf53235ecf904`
-	Default Command: `["nginx","-g","daemon off;"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 19:31:09 GMT
LABEL maintainer=NGINX Docker Maintainers <docker-maint@nginx.com>
# Thu, 28 Feb 2019 09:48:20 GMT
ENV NGINX_VERSION=1.15.9-1~stretch
# Thu, 28 Feb 2019 09:48:22 GMT
ENV NJS_VERSION=1.15.9.0.2.8-1~stretch
# Thu, 28 Feb 2019 09:59:52 GMT
RUN set -x 	&& apt-get update 	&& apt-get install --no-install-recommends --no-install-suggests -y gnupg1 apt-transport-https ca-certificates 	&& 	NGINX_GPGKEY=573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62; 	found=''; 	for server in 		ha.pool.sks-keyservers.net 		hkp://keyserver.ubuntu.com:80 		hkp://p80.pool.sks-keyservers.net:80 		pgp.mit.edu 	; do 		echo "Fetching GPG key $NGINX_GPGKEY from $server"; 		apt-key adv --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$NGINX_GPGKEY" && found=yes && break; 	done; 	test -z "$found" && echo >&2 "error: failed to fetch GPG key $NGINX_GPGKEY" && exit 1; 	apt-get remove --purge --auto-remove -y gnupg1 && rm -rf /var/lib/apt/lists/* 	&& dpkgArch="$(dpkg --print-architecture)" 	&& nginxPackages=" 		nginx=${NGINX_VERSION} 		nginx-module-xslt=${NGINX_VERSION} 		nginx-module-geoip=${NGINX_VERSION} 		nginx-module-image-filter=${NGINX_VERSION} 		nginx-module-njs=${NJS_VERSION} 	" 	&& case "$dpkgArch" in 		amd64|i386) 			echo "deb https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 			&& apt-get update 			;; 		*) 			echo "deb-src https://nginx.org/packages/mainline/debian/ stretch nginx" >> /etc/apt/sources.list.d/nginx.list 						&& tempDir="$(mktemp -d)" 			&& chmod 777 "$tempDir" 						&& savedAptMark="$(apt-mark showmanual)" 						&& apt-get update 			&& apt-get build-dep -y $nginxPackages 			&& ( 				cd "$tempDir" 				&& DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 					apt-get source --compile $nginxPackages 			) 						&& apt-mark showmanual | xargs apt-mark auto > /dev/null 			&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 						&& ls -lAFh "$tempDir" 			&& ( cd "$tempDir" && dpkg-scanpackages . > Packages ) 			&& grep '^Package: ' "$tempDir/Packages" 			&& echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list 			&& apt-get -o Acquire::GzipIndexes=false update 			;; 	esac 		&& apt-get install --no-install-recommends --no-install-suggests -y 						$nginxPackages 						gettext-base 	&& apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list 		&& if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove 		&& rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 28 Feb 2019 09:59:58 GMT
RUN ln -sf /dev/stdout /var/log/nginx/access.log 	&& ln -sf /dev/stderr /var/log/nginx/error.log
# Thu, 28 Feb 2019 10:00:00 GMT
EXPOSE 80
# Thu, 28 Feb 2019 10:00:03 GMT
STOPSIGNAL SIGTERM
# Thu, 28 Feb 2019 10:00:07 GMT
CMD ["nginx" "-g" "daemon off;"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83aab390c033be8abbc0a74555c8a9bec2c1fd6326b9c8d126f0b5493345774`  
		Last Modified: Thu, 28 Feb 2019 10:16:40 GMT  
		Size: 27.3 MB (27301449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4635521826bcbbb2d51522d18a070bf55ed67112164e49131893e616ae06ef4`  
		Last Modified: Thu, 28 Feb 2019 10:16:34 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
