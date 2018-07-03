## `openjdk:11-ea-19-jre`

```console
$ docker pull openjdk@sha256:1808952506bc0ccba942635b2cdecff453bd000ca77a14492ca91312aef7a78a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:11-ea-19-jre` - linux; amd64

```console
$ docker pull openjdk@sha256:953e0fcb885cd438c477f507ed497d6f68569c29a255e7ba714f2b966e969561
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246228512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c44ea0ecb677a63cf8d2f236b7acc3e65f27372d987a28541cd85bc678edf45`
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
# Mon, 02 Jul 2018 23:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:41:46 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jul 2018 23:41:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 02 Jul 2018 23:41:47 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 02 Jul 2018 23:41:47 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 02 Jul 2018 23:41:48 GMT
ENV JAVA_VERSION=11-ea+19
# Mon, 02 Jul 2018 23:41:48 GMT
ENV JAVA_DEBIAN_VERSION=11~19-1
# Mon, 02 Jul 2018 23:42:26 GMT
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
	-	`sha256:7c773eac6c27a9046c44342740ca8882f91b5a736d2a99d806ee43b1eb782b96`  
		Last Modified: Tue, 03 Jul 2018 00:12:09 GMT  
		Size: 846.3 KB (846348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ceaee4051a3c105be82375a9ff89465ae192b085aa80f22dfe6ff74264ab46`  
		Last Modified: Tue, 03 Jul 2018 00:12:07 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2616390c2c6c7fa9109499cd73ab76c461aad3dd9262de3e11ea3a7438a56717`  
		Last Modified: Tue, 03 Jul 2018 00:12:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772694685cbbbe1f313b613d266ef017a8638fb71addd23b4b91b6afe1dd06c0`  
		Last Modified: Tue, 03 Jul 2018 00:12:42 GMT  
		Size: 180.5 MB (180453827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
