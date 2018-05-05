## `openjdk:jre-slim`

```console
$ docker pull openjdk@sha256:c715de63c5b8837efe38723065b1a7904e03d058b94f479fae943bea17bf5bcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:d13eca907242b08d91005ea995de5d1122057625a9d30ccb12013063eb79e50b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79282917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:301eba9dc54a13c69c436b12c1f276239b00f46ab05828386f6acf8b2ac6e658`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Fri, 04 May 2018 23:52:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 23:52:54 GMT
ENV LANG=C.UTF-8
# Fri, 04 May 2018 23:52:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 04 May 2018 23:52:56 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 04 May 2018 23:52:56 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 04 May 2018 23:52:56 GMT
ENV JAVA_VERSION=8u171
# Fri, 04 May 2018 23:52:56 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Fri, 04 May 2018 23:52:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 04 May 2018 23:53:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 04 May 2018 23:53:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a87c8cc1b7facfc2236149f7019c9c221c9a97a6916c08e3f9317fd669ebd85`  
		Last Modified: Sat, 05 May 2018 00:09:26 GMT  
		Size: 454.9 KB (454866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa430945d0642ea0e7898d8ddaffe0fe727048fc181fbca36c77d6640be75eac`  
		Last Modified: Sat, 05 May 2018 00:09:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5770e349ac1c8cb7f950b668c89b252822713160142d235bf95e1796e5b49f1`  
		Last Modified: Sat, 05 May 2018 00:09:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42342c9fe003fa782ff8f02e5f531cdd83e6674b3757d0a77d0738586c70ab6c`  
		Last Modified: Sat, 05 May 2018 00:09:38 GMT  
		Size: 56.1 MB (56059522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6324f0174fa1b6bca7bb6557a456d603f3bd5e34d931fbcf09bc9af9adff16f1`  
		Last Modified: Sat, 05 May 2018 00:09:26 GMT  
		Size: 272.1 KB (272122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
