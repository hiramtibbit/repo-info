## `openjdk:11-ea-21-jre`

```console
$ docker pull openjdk@sha256:bea7c9290464cc5519c9134fc87013956932842d25c838999423a2865f444581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:11-ea-21-jre` - linux; amd64

```console
$ docker pull openjdk@sha256:8ebdd5512e0fb2f80fd9b5cb59b5abf5df437452183dd7a5fd8075d26ce9b799
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245843331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e193c46e57eee3fbcb99f7a4b9de711df1ac2e70f71183a63e669d0cc451629`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:23:26 GMT
ADD file:10ef22e92828bf2e3e64f0617e248ec4f9885da94b826c950bdc8416d67d96cd in / 
# Tue, 26 Jun 2018 21:23:26 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 23:20:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:20:23 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:20:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:20:25 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:20:25 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 07 Jul 2018 03:57:34 GMT
ENV JAVA_VERSION=11-ea+21
# Sat, 07 Jul 2018 03:57:35 GMT
ENV JAVA_DEBIAN_VERSION=11~21-1
# Sat, 07 Jul 2018 03:58:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:26254fbb7f1ecf87788ab9644ed2990fda0f5efe4ce585efa529013e3e61b8f3`  
		Last Modified: Tue, 26 Jun 2018 21:34:18 GMT  
		Size: 48.6 MB (48648929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb95abe62cf617072cd93a562dd3c073f8fabba929bb1aa8f0573971554b41a5`  
		Last Modified: Tue, 26 Jun 2018 22:27:31 GMT  
		Size: 7.0 MB (7033853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dbb6315c68fc7776b3dd34584b03f3a00f3e9fcd9058dbed42208d2843b593`  
		Last Modified: Tue, 26 Jun 2018 22:27:31 GMT  
		Size: 9.2 MB (9245186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f563a46814efa01419e07fc08d159913791a167f783f9cff6788d256ccd7e7ad`  
		Last Modified: Tue, 26 Jun 2018 23:45:08 GMT  
		Size: 846.3 KB (846308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b360bf052f04eddb1d4e4deaaf2a68a7fcd2c47f255c14e620f4c92cb0e891`  
		Last Modified: Tue, 26 Jun 2018 23:45:08 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917022829fa1b52343fdf5d3d484fc7f1ed4a6872a433b4fc5090499e491ebb5`  
		Last Modified: Tue, 03 Jul 2018 01:05:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2331c546dec519400330a886e6d6c3ab1783625267c3fcafa6bf112d59b959b2`  
		Last Modified: Sat, 07 Jul 2018 04:10:12 GMT  
		Size: 180.1 MB (180068689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
