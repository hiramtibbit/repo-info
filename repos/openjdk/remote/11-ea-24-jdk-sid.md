## `openjdk:11-ea-24-jdk-sid`

```console
$ docker pull openjdk@sha256:1cdf40f2cf004c848ae29ca966081707c1d5bbaed9e6f7e4ca701de8ae9318d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:11-ea-24-jdk-sid` - linux; amd64

```console
$ docker pull openjdk@sha256:97db9e4a8d4b5f0c8796194288cbf9f85826fb240f79ef09431e431652f6dfcd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **510.2 MB (510242596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f684efd78557b35f19e91b84cc3070e852b2344bac22ed4f3d3470c604babc66`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Jul 2018 00:24:39 GMT
ADD file:f04b64a73c29541d70cda855be7033dbd8e0b173ab11cd93458f3400fd270d85 in / 
# Tue, 17 Jul 2018 00:24:40 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:09:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:09:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:08:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:08:04 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:08:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:08:05 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:08:05 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 27 Jul 2018 22:20:21 GMT
ENV JAVA_VERSION=11-ea+24
# Fri, 27 Jul 2018 22:20:21 GMT
ENV JAVA_DEBIAN_VERSION=11~24-1
# Fri, 27 Jul 2018 22:22:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 27 Jul 2018 22:22:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e367ac4072dc48836ab52faeb39e943b075e21aa02c1a88f838651b9b384de50`  
		Last Modified: Tue, 17 Jul 2018 00:39:42 GMT  
		Size: 48.7 MB (48725588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a57779b5dbaefdeb5306372ffa77aee257957dd74042f9ea2572052c5cc9201`  
		Last Modified: Tue, 17 Jul 2018 03:50:25 GMT  
		Size: 7.0 MB (7035962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4c28c5ff25d086ba826711dd56a6652542b6dd75f3c5a4bb6daa1c8977bf7e`  
		Last Modified: Tue, 17 Jul 2018 03:50:27 GMT  
		Size: 9.2 MB (9245784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8bf5e9a1f1f0c917d4b4cacd63eb974e31d4bb74c6b35ac2905c39c7568f37`  
		Last Modified: Tue, 17 Jul 2018 03:51:19 GMT  
		Size: 51.4 MB (51432749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e45f9a301efabcdf81e1b0b3ab3803d71b47963b8900551c9956c55fd7853c0`  
		Last Modified: Tue, 17 Jul 2018 06:29:35 GMT  
		Size: 898.4 KB (898412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70656c3c93966b66d9f46242ea274d59996a24e5d3b3deb9d0a9307c58845f1e`  
		Last Modified: Tue, 17 Jul 2018 06:29:35 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7fc9308a9fe5a8750ffa4848b6ded0bdb612504de7e036086f31b9a2ec49fe8`  
		Last Modified: Tue, 17 Jul 2018 06:29:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeddd0598760bf7bfda7002651cf61b21987030bec079262b0972f22dd5c496f`  
		Last Modified: Fri, 27 Jul 2018 22:29:37 GMT  
		Size: 392.9 MB (392903735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
