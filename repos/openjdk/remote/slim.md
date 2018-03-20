## `openjdk:slim`

```console
$ docker pull openjdk@sha256:7cb59a683d3c8fa7d989674c1980581fe1b728f629d590bfab7354d0d6217df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5

### `openjdk:slim` - linux; amd64

```console
$ docker pull openjdk@sha256:d33cf8dafcd58217b221cdc04b320854eaa5e6e86597bbc8ed52d2f2adcec383
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90932891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2918c0749140e6e814a04b2f348f1dbfc25ff59f014fc9eb136d40cc0a4742f3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 11:07:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:07:04 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:07:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:07:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:10:17 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 19 Mar 2018 21:39:19 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:39:19 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:39:20 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:39:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:39:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b826b31940917d1052a280a46c73120f9688ce9b03a4f185d80b57755e0a9d`  
		Last Modified: Wed, 14 Mar 2018 12:48:12 GMT  
		Size: 454.8 KB (454841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb043c2d1520ae17e6480642d46665aeb109f65e9fa57cd74e8d82beb3f6eb5f`  
		Last Modified: Wed, 14 Mar 2018 12:48:11 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d9a7482db5eaf9dfdeb02742795077ba645020e34eb8d7edade6f3ad7736b`  
		Last Modified: Wed, 14 Mar 2018 12:48:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db83168774e27fb4fc5f4df720a3da42a9128277b24e01fd604d3ed7fe62600`  
		Last Modified: Mon, 19 Mar 2018 23:57:02 GMT  
		Size: 67.7 MB (67716605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b596cbbeab9f1cb0ee8492e643bb60979bab16733d625bd488284b76838cc4a9`  
		Last Modified: Mon, 19 Mar 2018 23:56:49 GMT  
		Size: 272.1 KB (272087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:514491a798cb2e66dddde5412c10331990aa136420e91fd379b96d0efddec898
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77947295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d3d6314ab2e39638d198cba5ae1b91cac83596881a1e81113bd29833a77147a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:39 GMT
ADD file:c472062baa8d8c35c7642162b18516ecdc2e143d0e5c147b472312cfc532efe9 in / 
# Wed, 14 Mar 2018 20:01:40 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:48:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:48:27 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:51:07 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:12:27 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:12:28 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:12:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:12:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:13:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:8efba53ec4136476603e9856d8bb17541faa0f33abada48ac4d2d7efe61ff43f`  
		Last Modified: Wed, 14 Mar 2018 20:13:21 GMT  
		Size: 21.2 MB (21164955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1949e18a328f3c9b962c19755d8a55af0f21d21943810d7daf39862ab8bedf`  
		Last Modified: Wed, 14 Mar 2018 23:12:26 GMT  
		Size: 447.7 KB (447681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b95963c2f246890fe81e80837f0f83814d454828b59a18fb683a23a7f0eb09c`  
		Last Modified: Wed, 14 Mar 2018 23:12:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7dc2f45c72f39e5727403aaf034f49ea08f3db29ca0556933a777d8ea0ff9d`  
		Last Modified: Wed, 14 Mar 2018 23:12:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d7f0fda821eb5202813e0a3a699c50c3900e4a005dcf256f65b65288663dc3`  
		Last Modified: Tue, 20 Mar 2018 10:39:16 GMT  
		Size: 56.1 MB (56062093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547ddd96da6cc2373a2a9eb1775b681ac03d1352a3ed94f7d20fb9dfa8a9f2c2`  
		Last Modified: Tue, 20 Mar 2018 10:39:02 GMT  
		Size: 272.2 KB (272188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
