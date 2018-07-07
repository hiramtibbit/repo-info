## `openjdk:11-ea-jdk-sid`

```console
$ docker pull openjdk@sha256:7addf9b76ca92e6c949a2bc0350c78ae5306e8bef7e7a281451d487514eca59f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:11-ea-jdk-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:6eec8c0b948867bfa12818295bf30a3f5cd40a0084a4af6a502dd187b460fce7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.8 MB (370821528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767f99e9b8601fc34dee2b82a2c909b14e17645bc8d32aaa30b0d61f82a995b8`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 26 Jun 2018 21:23:26 GMT
ADD file:10ef22e92828bf2e3e64f0617e248ec4f9885da94b826c950bdc8416d67d96cd in / 
# Tue, 26 Jun 2018 21:23:26 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:14:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:18:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:18:32 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:18:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:18:33 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:18:33 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 07 Jul 2018 03:54:09 GMT
ENV JAVA_VERSION=11-ea+21
# Sat, 07 Jul 2018 03:54:10 GMT
ENV JAVA_DEBIAN_VERSION=11~21-1
# Sat, 07 Jul 2018 03:55:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 07 Jul 2018 03:55:52 GMT
CMD ["jshell"]
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
	-	`sha256:4e01fadb90415cfdce67b9b4b78f9daa661339be8a44aa55b8d53d01ccc6ab73`  
		Last Modified: Tue, 26 Jun 2018 22:28:16 GMT  
		Size: 51.4 MB (51430356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e90a4730ea93a961d2497a76e4b79f02b749f6851e905bb8650ef05071a59`  
		Last Modified: Tue, 26 Jun 2018 23:39:07 GMT  
		Size: 897.5 KB (897511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651184a99bc562294783d09f028acd4d42b2a1bc3fb337bd831a0776dcfaa6e9`  
		Last Modified: Tue, 26 Jun 2018 23:39:07 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e10850e4e6da1c974fbd47ffbdb4284c7ef206f758f45e277b6562158f4aa74`  
		Last Modified: Sat, 07 Jul 2018 04:00:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205a50bd7b56ea8380cc8b77583ea17868dedb584143122de5dffc125a248f8b`  
		Last Modified: Sat, 07 Jul 2018 04:02:01 GMT  
		Size: 253.6 MB (253565327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
