## `openjdk:11-ea-jre`

```console
$ docker pull openjdk@sha256:28081f0d2346e5e92f7afbe5a94c0585e2198ca35d7f66a24f03796aa9d51636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:11-ea-jre` - linux; amd64

```console
$ docker pull openjdk@sha256:df473a1fcc4604659f86529caa17f6db4d052307c8971849e3b11e976367eea1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (252981574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:918d8d0fe3f257d2061a5d4cc744e9fd56e730c0cf9f3dfe86f44a1a965cc205`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:49:58 GMT
ADD file:229ad62fdc5e079bf925fb084264841ce27bf7125beb1fd821cbd6ed5132b37c in / 
# Sat, 28 Apr 2018 06:49:59 GMT
CMD ["bash"]
# Sat, 05 May 2018 04:59:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 04:59:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 08:00:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:00:25 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 08:00:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 08:00:26 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 08:00:27 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 08:00:27 GMT
ENV JAVA_VERSION=11-ea+11
# Sat, 05 May 2018 08:00:27 GMT
ENV JAVA_DEBIAN_VERSION=11~11-2
# Sat, 05 May 2018 08:01:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e7cb83f94a464daabb5fa4e63ae521d65d7956bfcb3619bc75857f7d598ff12c`  
		Last Modified: Sat, 28 Apr 2018 08:58:22 GMT  
		Size: 48.3 MB (48303234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2af7c2bd543ba42600867217cd2f676eae7c4c38a8ba8a3cf8edce489534cfe`  
		Last Modified: Sat, 05 May 2018 05:02:11 GMT  
		Size: 8.6 MB (8642335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5286ee17a380311ffd9b7f82c5c957c59358a2103c0a1cc96c0be7eb91528f`  
		Last Modified: Sat, 05 May 2018 05:02:10 GMT  
		Size: 9.5 MB (9459894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6f948f766f58ed5e0b5c75b9b6338f3a6a7ee3ac64fe98c946b196b1a92515`  
		Last Modified: Sat, 05 May 2018 08:08:30 GMT  
		Size: 856.7 KB (856710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ca5a1068e6437056cf1b53c145bb93231b122e13be7e8760336394bfb30a32`  
		Last Modified: Sat, 05 May 2018 08:08:30 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9776722d85d54280072bd69f6b18338a5c92efaa267679990c2094d022af6838`  
		Last Modified: Sat, 05 May 2018 08:08:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76aa0353c6ba511276d8491c3356b7ed5a9e12e590a3a38aebf4e87aa7a11c64`  
		Last Modified: Sat, 05 May 2018 08:09:08 GMT  
		Size: 185.7 MB (185719032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
