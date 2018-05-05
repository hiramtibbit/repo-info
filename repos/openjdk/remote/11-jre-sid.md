## `openjdk:11-jre-sid`

```console
$ docker pull openjdk@sha256:7a5b41c9415ec9f6a5b5e3361928f7a3a10a04177e7af65e279deb408ee3a0d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:11-jre-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:3235abf51a631ab757a3fd0299a398b15eb18e1b908944f206713717b6ddd57e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (252952713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad9db6be07ee86a92613cd945cb683fe66e1f8a8a5191def1962fed634978d76`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:49:58 GMT
ADD file:229ad62fdc5e079bf925fb084264841ce27bf7125beb1fd821cbd6ed5132b37c in / 
# Sat, 28 Apr 2018 06:49:59 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 16:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:41:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 09:09:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 09:09:43 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 09:09:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 04 May 2018 23:44:59 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 04 May 2018 23:45:00 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 04 May 2018 23:45:00 GMT
ENV JAVA_VERSION=11-ea+11
# Fri, 04 May 2018 23:45:00 GMT
ENV JAVA_DEBIAN_VERSION=11~11-2
# Fri, 04 May 2018 23:46:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e7cb83f94a464daabb5fa4e63ae521d65d7956bfcb3619bc75857f7d598ff12c`  
		Last Modified: Sat, 28 Apr 2018 08:58:22 GMT  
		Size: 48.3 MB (48303234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d9e4316522ac259c31b51deac1204cdf4e714ddff3a1d4a1bce1d0d5cfce90`  
		Last Modified: Sat, 28 Apr 2018 20:33:31 GMT  
		Size: 8.6 MB (8617077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e07faf2012b70a40ec906e76db167c387c5d2bd39160622144d2bdd95cb490e`  
		Last Modified: Sat, 28 Apr 2018 20:33:31 GMT  
		Size: 9.5 MB (9459618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc1ead89531c8ed441139a3b4a3e5f2817c92f6853321ce4921565cd8e06cc0`  
		Last Modified: Tue, 01 May 2018 13:44:24 GMT  
		Size: 856.3 KB (856292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e6ff21efc5418a58d864a177c38144b3343e18d67f69e249ea6221d2f38337`  
		Last Modified: Tue, 01 May 2018 13:44:23 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7181e17b6f0db31a40af301b4c1e47f47a628cd3b710d1eb3247ca5c6a8344d0`  
		Last Modified: Fri, 04 May 2018 23:58:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d921ae6f297ffe58f653b3beaa504a66e1c28e9aaa06de7b0e2860bebab7f1ec`  
		Last Modified: Fri, 04 May 2018 23:59:16 GMT  
		Size: 185.7 MB (185716124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
