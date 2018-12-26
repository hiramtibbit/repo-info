## `openjdk:11-jre-slim-stretch`

```console
$ docker pull openjdk@sha256:dc41f8a23943c486e687469a36f064afdcf301a26f4bf9d78d1a506a869d31d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:11-jre-slim-stretch` - linux; amd64

```console
$ docker pull openjdk@sha256:0506c24fc70b8a8792f72b0caa011d9133188f987d8b5eb08466b0a88ec43f8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.1 MB (100086867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c05650af38718dc048dccc4d6809befead18c8cd49508b313be94017bfd8725`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:59:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 08:30:51 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 08:30:51 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 08:30:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 08:30:53 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 08:30:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 08:30:53 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 08:30:53 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 26 Dec 2018 08:33:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f6dd39b85823bd8b7dedf55493b2571443143909aa32cecfcce74bf0280d18`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 454.8 KB (454816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d96dc2d8d59f4244c0b28889d27a9aab69b8afa47cb74b815e5d2a75c6f7023`  
		Last Modified: Wed, 26 Dec 2018 08:38:27 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a906637ab91018abc08fc7097f11f2f4424f7fd54d216b0164b1fdbe05b14a7e`  
		Last Modified: Wed, 26 Dec 2018 08:38:27 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121e1b9b66435b310d1b163c7e01932452be678482da76134fa79c630f8733ef`  
		Last Modified: Wed, 26 Dec 2018 08:38:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271729db8e1d8a3f53429205b85f2be7604eb72b0d39db8a8d2c948f854f9c0e`  
		Last Modified: Wed, 26 Dec 2018 08:39:51 GMT  
		Size: 77.1 MB (77145166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
