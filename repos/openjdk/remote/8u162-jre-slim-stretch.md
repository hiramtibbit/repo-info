## `openjdk:8u162-jre-slim-stretch`

```console
$ docker pull openjdk@sha256:020210551792384b6ef96910ccf909e2ae97132872eeafb11852588a9db9f08a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:8u162-jre-slim-stretch` - linux; amd64

```console
$ docker pull openjdk@sha256:83fa9af91246e8a1b8bb9688100475b45b1c9a4e3ee28c9b6d93510eca971763
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79263625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d60fc6fb46e32c62b0a9536b39276d858875661c430301ee36e4034953a3774b`
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
# Wed, 14 Mar 2018 11:07:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:22:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:22:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:22:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:22:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:22:32 GMT
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
	-	`sha256:738a1eed659c303423af71274171c689423bd0d5831be032c5adb438cff57500`  
		Last Modified: Mon, 19 Mar 2018 23:40:01 GMT  
		Size: 56.0 MB (56047319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d68af610a7f793e9c3c794bc12d7b7b4b7286321b09140479450646da47f6f2`  
		Last Modified: Mon, 19 Mar 2018 23:39:51 GMT  
		Size: 272.1 KB (272107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
