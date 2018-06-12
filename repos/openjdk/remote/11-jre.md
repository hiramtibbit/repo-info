## `openjdk:11-jre`

```console
$ docker pull openjdk@sha256:84ad2815562dad7d0c0dcaed8e7536881a6059d35082d49f50dfc6a05a66c1fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:11-jre` - linux; amd64

```console
$ docker pull openjdk@sha256:c3cf7f6842588e2c62abccc470c4b46882e2e7b9a6706e0114344913ba744ff2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.4 MB (245441610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80c85b13aea82a14bac6b402bc5861d94dc982130606772ec159bb5435b1f151`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:49:58 GMT
ADD file:229ad62fdc5e079bf925fb084264841ce27bf7125beb1fd821cbd6ed5132b37c in / 
# Sat, 28 Apr 2018 06:49:59 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:11:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 18:39:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:39:49 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:39:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:39:51 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:39:51 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Jun 2018 00:28:46 GMT
ENV JAVA_VERSION=11-ea+17
# Tue, 12 Jun 2018 00:28:46 GMT
ENV JAVA_DEBIAN_VERSION=11~17-2
# Tue, 12 Jun 2018 00:29:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e7cb83f94a464daabb5fa4e63ae521d65d7956bfcb3619bc75857f7d598ff12c`  
		Last Modified: Sat, 28 Apr 2018 08:58:22 GMT  
		Size: 48.3 MB (48303234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea75eac4dae2f20cbd6fa1d55bc23e09e128934c845cd07f16ce17d88bf39af5`  
		Last Modified: Tue, 05 Jun 2018 23:39:45 GMT  
		Size: 7.0 MB (7030508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c35a0f820b4b715ac0c1825dacb71e27c6e5bbbc9320b94c42a479cb1f55eb`  
		Last Modified: Tue, 05 Jun 2018 23:39:49 GMT  
		Size: 10.3 MB (10334570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ef45ead295c4ee8d4d01af89bfa975475808968dd96d1917ded74eb4eca49e`  
		Last Modified: Wed, 06 Jun 2018 18:54:50 GMT  
		Size: 845.0 KB (844985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8173ebf385fa72497d72391cc38b3f3ad948853d501395bae26094545a03436`  
		Last Modified: Wed, 06 Jun 2018 18:54:49 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18856c258b6551e949ca5472158dba9ce7635a1a2b27e3ebe402dc00926a2790`  
		Last Modified: Wed, 06 Jun 2018 18:54:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d92b1e8bad7a8d5fb6638ab1d813cf825f7372e4c11e2ee372dc9c9d6ec568`  
		Last Modified: Tue, 12 Jun 2018 00:43:12 GMT  
		Size: 178.9 MB (178927944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
