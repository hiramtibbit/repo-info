## `openjdk:10-ea-32-experimental`

```console
$ docker pull openjdk@sha256:bc1520c6d7a7f1f8cf04c15f0c734760a61b7adfcfcb85c8cb9143f2abc6af3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:10-ea-32-experimental` - linux; amd64

```console
$ docker pull openjdk@sha256:3962dc1c318b34563f625e5a103c9094b9272c0f07dd8146b84285dceab7c1ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.7 MB (406748805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5647d20a8c9c90cae2857baa3c1f939ffdfb7cee318971b1fbd243f0ed4a14`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 Dec 2017 01:43:09 GMT
ADD file:f4f0ede88e0b0edf8235b2a5ff46ab7d8de71d56720cb7dc3032bca0e1872695 in / 
# Tue, 12 Dec 2017 01:43:10 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:51:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:51:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 07:51:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:25:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Jan 2018 20:25:27 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 18 Jan 2018 20:25:28 GMT
ENV LANG=C.UTF-8
# Thu, 18 Jan 2018 20:25:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 18 Jan 2018 20:25:30 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 18 Jan 2018 20:25:30 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 18 Jan 2018 20:25:30 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 18 Jan 2018 20:25:31 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 18 Jan 2018 20:26:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 18 Jan 2018 20:35:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8797cd0c76e8b1532d95708a0a38554c89e6fa0cdd856dbede8555225cdea00`  
		Last Modified: Tue, 12 Dec 2017 01:51:30 GMT  
		Size: 48.4 MB (48429060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdce62b256df9c745afac618b5a44d73531cede1a187586e73ed27bd7e1c508`  
		Last Modified: Tue, 12 Dec 2017 08:01:58 GMT  
		Size: 8.6 MB (8636787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c93763e33f35c3974631198e261ac389cb564d90b37f0443650ce34fee2dba2`  
		Last Modified: Tue, 12 Dec 2017 08:01:57 GMT  
		Size: 9.0 MB (8973876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdbb22c778e9128dce650ba952241183b7375138fa397187b7967efef8221039`  
		Last Modified: Tue, 12 Dec 2017 08:02:29 GMT  
		Size: 48.6 MB (48567783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b7d6f2e29096cc93e652b48e0f9cbe3c28587efeb67afb05a4a3c95bfd53cbd`  
		Last Modified: Tue, 12 Dec 2017 16:21:06 GMT  
		Size: 894.4 KB (894420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8510b7bee64b99e74de5966f902f2d1db3e385091d90b38b7e069bb4fb30c037`  
		Last Modified: Thu, 18 Jan 2018 20:57:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea54f58e087f5c52e39c7b9fa7ebfb2469e582ad558f4fdbb0a2f159c1216237`  
		Last Modified: Thu, 18 Jan 2018 20:57:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a2dbcadaf7292df1244b3c736600ea580697572ec19b71271949a43e363bb2`  
		Last Modified: Thu, 18 Jan 2018 20:57:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a8fe9ce22c225c1719cb3d086442e1a7dfff8193edcbadd430fba861859779`  
		Last Modified: Thu, 18 Jan 2018 20:57:55 GMT  
		Size: 291.2 MB (291246276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-32-experimental` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:6541cd891009298dbe3410ad5e8f5b6626eb56da6d77abe13642ad438da0e63e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.8 MB (371820955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f05959020c0f472932bc73226267e1e44faa2bb5a1a6e79a880da0894b759ec`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 Dec 2017 20:59:59 GMT
ADD file:af4cd7d5c7a1769f049a442dfd7a1b0fa6359ce5306569a5130c55609ec5175e in / 
# Tue, 12 Dec 2017 20:59:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:56:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:56:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 22:57:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:39:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 10:58:27 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 10:58:27 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 10:58:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 10:58:29 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 10:58:29 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 10:58:29 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 10:58:29 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 11:00:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Jan 2018 11:00:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:acff8687551d235a654afe80e0891cce1bd27c306fff4e41bb6b44b226a473e4`  
		Last Modified: Tue, 12 Dec 2017 21:10:06 GMT  
		Size: 46.9 MB (46876188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12a8cc19c8faf784e145d3a3c486d1b5a0892e4af7a81189d15f0eb18053a58`  
		Last Modified: Tue, 12 Dec 2017 23:08:24 GMT  
		Size: 7.8 MB (7808219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93c884700496b57c386401815cba851f8f8f992a0295e68194990608ff2dea2`  
		Last Modified: Tue, 12 Dec 2017 23:08:23 GMT  
		Size: 8.7 MB (8718966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ee1043aa0902f88a632c6b234c1bb077d60f488629571507684973eb93faa6`  
		Last Modified: Tue, 12 Dec 2017 23:08:50 GMT  
		Size: 46.4 MB (46397899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2099c7b7dd2213f466f51f6b0bfa54387da43193cf9ce36ee3cbdd2109e550`  
		Last Modified: Tue, 12 Dec 2017 23:57:33 GMT  
		Size: 887.6 KB (887635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919abb32c18dc4cfdd1d0a8dc9c84337d14b0aa030359dbb195286b24471481d`  
		Last Modified: Fri, 19 Jan 2018 11:05:47 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b7a24eb946721ce05176acf170507606a203deb1cf293e4e9098366eb3e252`  
		Last Modified: Fri, 19 Jan 2018 11:05:47 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2af4972beb8cf59f3d36f0e8abbd02159bd141a3765dfd5f13a3f00d0206bbd`  
		Last Modified: Fri, 19 Jan 2018 11:05:47 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8287a8aeb0533d438b588bfd4f4dd40a8cf2d196941dd3c54b6ce977f5342621`  
		Last Modified: Fri, 19 Jan 2018 11:06:43 GMT  
		Size: 261.1 MB (261131443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-32-experimental` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:3b5b3ca88fd93ad081afd8bb69cf532bd242558d90a7450ad0027c912e51ec99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.0 MB (367971201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d813935a7733f54bde8f7f5ed62a33e007305ffce187d0da2d0771f4f560918`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 Dec 2017 13:30:47 GMT
ADD file:b788e24f4cada715c58008741a4bc6b55912bf54f897e9febf55038c7259474a in / 
# Tue, 12 Dec 2017 13:30:48 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:18:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:18:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 14:18:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:20:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 02:25:59 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 02:25:59 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 02:26:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 02:26:01 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 02:26:01 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 02:26:01 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 02:26:01 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 02:27:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Jan 2018 02:27:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ee9da7ca0ecfb9e496d4e6a11a2de17d38b2676f64081ca6643b85f1026bd24a`  
		Last Modified: Tue, 12 Dec 2017 13:42:33 GMT  
		Size: 44.8 MB (44836300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9035433aec00afaaa737a1213c4367cab1ef3d7a572aa2cb952e73854b963d0`  
		Last Modified: Tue, 12 Dec 2017 14:32:26 GMT  
		Size: 7.5 MB (7534247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d036c584b8f46f4616710df516ffdb5657ef66387fcf24bd3752cdeaf9091427`  
		Last Modified: Tue, 12 Dec 2017 14:32:26 GMT  
		Size: 8.4 MB (8438419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b479b9228413b4b2b667f467e0854f29fee2f1d886dafe3d80c8ff1f88f6cb`  
		Last Modified: Tue, 12 Dec 2017 14:33:01 GMT  
		Size: 44.5 MB (44458911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dadcdc8043e8fffd22e2d161e44baa8c3d5ed465d22bc1f5cb8d3931247c41`  
		Last Modified: Tue, 12 Dec 2017 15:36:36 GMT  
		Size: 870.1 KB (870124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786ef264e0c4821b2085322bf40a6da15c8c63fc6171b6fd97f88fbfa213df1c`  
		Last Modified: Fri, 19 Jan 2018 02:35:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74efe9e093fd85806d39a63e14a366dcec1ad80b34a8ac65186d96cb1ed3e190`  
		Last Modified: Fri, 19 Jan 2018 02:35:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab99e64fee5390c2d3bc6c34a3428ac72b4ba2c02ee4fcb93c7a65fb96c71734`  
		Last Modified: Fri, 19 Jan 2018 02:35:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7906b680d90fe0ba97b2777ed590ad8ac0d8310bc7ad1c9fb72a237d9804a516`  
		Last Modified: Fri, 19 Jan 2018 02:35:59 GMT  
		Size: 261.8 MB (261832599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-32-experimental` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:8c05ce9de9250a6b4242d2156d453e4ab10f326a42c6e15c290c6695f0f6ad92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.0 MB (377015928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f97785b11d558dc9469ec7020dedcf1f278d2cfb74f2191b436302b4f87483`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 Dec 2017 18:28:41 GMT
ADD file:7487b447e9ae95ddff2e8f1bbdc2b089a3a6fb70edf7f218bf3c662727c19ade in / 
# Tue, 12 Dec 2017 18:28:42 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:02:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:03:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 16:04:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 21:05:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 11:08:09 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 11:08:10 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 11:08:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 11:08:13 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 11:08:14 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 11:08:15 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 11:08:15 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 11:16:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Jan 2018 11:16:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa10cf671b46f67e3e12579e72f085c7b8402ff25ccafb8616eb9e1cbe71bf85`  
		Last Modified: Tue, 12 Dec 2017 18:44:03 GMT  
		Size: 46.2 MB (46188985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cce7e08176846c9ad6c15ff845d12c630e1d4ab1a0f8ef1e7a0786ec45ad2b`  
		Last Modified: Fri, 15 Dec 2017 17:17:29 GMT  
		Size: 7.9 MB (7856875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a14a037f71e9308ee97c32436f3203d1f06a675930a80dba9a16c2f5c78166`  
		Last Modified: Fri, 15 Dec 2017 17:17:29 GMT  
		Size: 8.7 MB (8712398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc237cede08f1aa41bf239b023687354ee22244dafaac2d899ca82852f5a4e6`  
		Last Modified: Fri, 15 Dec 2017 17:17:54 GMT  
		Size: 46.8 MB (46825072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf59a433671cc9e6cb0740414a980b5866f853840f657a6fe8e0023410f3da07`  
		Last Modified: Fri, 15 Dec 2017 21:23:51 GMT  
		Size: 879.7 KB (879675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f41c9d307ab5cf35da5e8f9e9601d9fde32d26f6f3411e91bf009800329355b`  
		Last Modified: Fri, 19 Jan 2018 11:34:13 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7387c917884f1bcdf277060a9da601000f986cccb04b66b765f1be282da502fa`  
		Last Modified: Fri, 19 Jan 2018 11:34:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d9453ef30f1577f5be671a452ddbbcf6e7688456fce2c00ead679795ee1a97`  
		Last Modified: Fri, 19 Jan 2018 11:34:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4a39315d6a908ca16f7eaff127e50c3535a895e1ff02007abb6a920932e199`  
		Last Modified: Fri, 19 Jan 2018 11:35:17 GMT  
		Size: 266.6 MB (266552319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-32-experimental` - linux; 386

```console
$ docker pull openjdk@sha256:59e71555173715c37ec9e5790570b7a3fd224c017456233758944bbf2523bf3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.2 MB (415231578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8ac1236f706b6143180f7f5354f5684c3844c11939ab4b98bc57c2e90daaa3e`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 Dec 2017 14:24:56 GMT
ADD file:7e72f60be83facf3a36831facc1a26f572f3ae83fc49b2bc4c8de0b6e3321e84 in / 
# Tue, 12 Dec 2017 14:24:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:02:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:02:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 17:03:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:53:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 11:28:37 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 11:28:37 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 11:28:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 11:28:39 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 11:28:40 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 11:28:40 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 11:28:40 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 11:31:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Jan 2018 11:39:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c3cf1d3d69aef55e4aef2c1f0a9455d1dfbbb7ae17d15a0d963e8c55e6e61af4`  
		Last Modified: Tue, 12 Dec 2017 14:58:13 GMT  
		Size: 49.3 MB (49250980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e767ba54897a1df6013ec3b06fd1546d3123979a02ac1f8f8eb0f079fd928126`  
		Last Modified: Tue, 12 Dec 2017 17:33:48 GMT  
		Size: 8.6 MB (8608693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936341216c1a183dced55abc7be29ddca5b53a3fe1a3d85f00538784bd1a090d`  
		Last Modified: Tue, 12 Dec 2017 17:33:48 GMT  
		Size: 9.3 MB (9251281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf1165f2ef33ed9e795182bb0912cf7dd9ac26b5bd6e12fb53b9c469c2f832b`  
		Last Modified: Tue, 12 Dec 2017 17:34:24 GMT  
		Size: 50.2 MB (50228972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3238289ff178b02f347c62e82e28c2045f3d60083b8cf34c8319df235149cb49`  
		Last Modified: Tue, 12 Dec 2017 19:41:48 GMT  
		Size: 902.4 KB (902445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237623ad62491dda3246ec88319b64850ff00d6e9901b4e91ac250106f1fbc9b`  
		Last Modified: Fri, 19 Jan 2018 12:53:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1fc669045fb0df5ad4906b12f713ee3875b19a3f1aa5f710babd3867ecd4aa9`  
		Last Modified: Fri, 19 Jan 2018 12:53:19 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d02444c6fb9a73468099ed464c273832c5f04f6a30e43d6aae42519da86b704`  
		Last Modified: Fri, 19 Jan 2018 12:53:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8122d5d7457fd0afe8d4c118dcc71686ac0068b67e8d44c66fbf8657637f05b1`  
		Last Modified: Fri, 19 Jan 2018 12:54:29 GMT  
		Size: 297.0 MB (296988604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-32-experimental` - linux; ppc64le

```console
$ docker pull openjdk@sha256:38fbb17b4d99b018b9778e663abe65273ebe1b90ac21ca036c99689f6a341150
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.1 MB (394062488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c333c0a305cbb18b8b4b1e41d6ee6005a5fe4b8727341319966777a66420954`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 12 Dec 2017 01:34:15 GMT
ADD file:7904a0f79cc86767c6e3ac367f0df06aa262c6639e79e39652eac766c3faf4b6 in / 
# Tue, 12 Dec 2017 01:34:16 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:12:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:13:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 03:16:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 06:28:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Jan 2018 11:58:51 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 19 Jan 2018 11:58:53 GMT
ENV LANG=C.UTF-8
# Fri, 19 Jan 2018 11:58:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Jan 2018 11:59:02 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Jan 2018 11:59:04 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Jan 2018 11:59:05 GMT
ENV JAVA_VERSION=10-ea+32
# Fri, 19 Jan 2018 11:59:06 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Fri, 19 Jan 2018 12:08:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Jan 2018 12:08:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:21b73404fd38d2445a6ecbcf148b2dd5047623273b33ea9546ddf6796601ec9b`  
		Last Modified: Tue, 12 Dec 2017 01:40:28 GMT  
		Size: 49.7 MB (49652013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3d5e1672290a07cf756dbcee37e26f4e406df9a113e8e2dc11abbc2b31d867`  
		Last Modified: Tue, 12 Dec 2017 03:54:16 GMT  
		Size: 8.2 MB (8207114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7d8032257e5508a59f355bd1eb60e35584078939f47f0f54ca3e647ed03f71`  
		Last Modified: Tue, 12 Dec 2017 03:54:18 GMT  
		Size: 9.2 MB (9192961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf62220ef17b233f919a5cd42f1c6eb64f590665103726af12d898db12754fc2`  
		Last Modified: Tue, 12 Dec 2017 03:54:33 GMT  
		Size: 51.2 MB (51189959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00eec43fc367b4384fdfaa02ad922fa1023ef70d53771f7a360bcf4d37902375`  
		Last Modified: Fri, 15 Dec 2017 06:47:51 GMT  
		Size: 889.6 KB (889573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed78c59f00a9f55270588b2efdcf2e5d50a65297d817e7180b48ad390b7ce77`  
		Last Modified: Fri, 19 Jan 2018 12:23:47 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9749a1caec17d9784863746d66c40240b7418350c53ec1cfeb245d6a5e2de7`  
		Last Modified: Fri, 19 Jan 2018 12:23:47 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95a021fe37d66cc4f8a414afb0094a262767b644dd8037e842a2f2a78c7840b`  
		Last Modified: Fri, 19 Jan 2018 12:23:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9b3ac19aa0ca269d71a819cd3824386b7c68c820d7497d1028fc3c00bf4bb2`  
		Last Modified: Fri, 19 Jan 2018 12:24:35 GMT  
		Size: 274.9 MB (274930261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-32-experimental` - linux; s390x

```console
$ docker pull openjdk@sha256:7734966538352e6d6ae6ad9367f359b7497cc688243680eb816f0c5a71aec34c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.4 MB (358398391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04cdff119d0ee951139eed73dc19fb5074b543d6e3afaee483e4650668641412`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 15 Feb 2018 06:23:25 GMT
ADD file:044e96e222c822455babaf357ef8db0795de4149889cb81364204dca02b492ce in / 
# Thu, 15 Feb 2018 06:23:26 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:52:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:52:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 06:53:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:15:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:15:14 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 15 Feb 2018 08:15:14 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 08:15:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 08:15:16 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 08:15:16 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 08:15:16 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 15 Feb 2018 08:15:16 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 15 Feb 2018 08:16:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 08:16:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2c81921a603ec79dabbd4e8cddf60c1d80b67ca921cfc969b21b2e2786d10aa8`  
		Last Modified: Thu, 15 Feb 2018 01:14:13 GMT  
		Size: 47.2 MB (47237963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91819694b4f3f99b68e351dce6412264a13c403c821302391b468b46a939bdea`  
		Last Modified: Thu, 15 Feb 2018 06:59:38 GMT  
		Size: 8.2 MB (8167378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b1294664ef6e52571bc28e685c8bc665f53866e0616d602895c953f3b7946a`  
		Last Modified: Thu, 15 Feb 2018 06:59:39 GMT  
		Size: 9.0 MB (9039908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fad9e70f14aaa60a609ae652863369ab260bc319dc6853fa496c9d22f54fa5`  
		Last Modified: Thu, 15 Feb 2018 06:59:55 GMT  
		Size: 49.1 MB (49122799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb51cbfe7416f091bc5c0c50d133a4a45bec352451b8def30f7109fc3b714da`  
		Last Modified: Thu, 15 Feb 2018 08:35:04 GMT  
		Size: 904.1 KB (904063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59011e322d811f6566a5e770d8619290143c4afa454c1e553a08d9cd5c7c4c60`  
		Last Modified: Thu, 15 Feb 2018 08:35:04 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419c60e3dfbc6574470cedec77503321541d8a29059d2c9f51a64f6e4f4a40bd`  
		Last Modified: Thu, 15 Feb 2018 08:35:03 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7234a265da010122290d9e666846e9ca719d62f0744552b2e99fd983fd2b1e`  
		Last Modified: Thu, 15 Feb 2018 08:35:03 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f27af74831c628537c7432d323368b6f34e351f0a3cf8e933f87fa82d146bd5`  
		Last Modified: Thu, 15 Feb 2018 08:35:34 GMT  
		Size: 243.9 MB (243925691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
