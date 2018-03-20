## `openjdk:8-jre-slim`

```console
$ docker pull openjdk@sha256:91ece34dfb5809cde2b9407c856334e173dd048f04ef53cd1c9afeba65bd7927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `openjdk:8-jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:83fa9af91246e8a1b8bb9688100475b45b1c9a4e3ee28c9b6d93510eca971763
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79263625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d60fc6fb46e32c62b0a9536b39276d858875661c430301ee36e4034953a3774b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 11:07:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:07:04 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:07:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:07:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:07:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 19 Mar 2018 21:22:11 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:22:11 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:22:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:22:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:22:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b826b31940917d1052a280a46c73120f9688ce9b03a4f185d80b57755e0a9d`  
		Last Modified: Wed, 14 Mar 2018 12:48:12 GMT  
		Size: 454.8 KB (454841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb043c2d1520ae17e6480642d46665aeb109f65e9fa57cd74e8d82beb3f6eb5f`  
		Last Modified: Wed, 14 Mar 2018 12:48:11 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9d9a7482db5eaf9dfdeb02742795077ba645020e34eb8d7edade6f3ad7736b`  
		Last Modified: Wed, 14 Mar 2018 12:48:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738a1eed659c303423af71274171c689423bd0d5831be032c5adb438cff57500`  
		Last Modified: Mon, 19 Mar 2018 23:40:01 GMT  
		Size: 56.0 MB (56047319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d68af610a7f793e9c3c794bc12d7b7b4b7286321b09140479450646da47f6f2`  
		Last Modified: Mon, 19 Mar 2018 23:39:51 GMT  
		Size: 272.1 KB (272107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:142a25af320877066e407dfa332f304a9b5a6cf7a1e073050533610fbf3210cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.7 MB (68654319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495936d9dda242a2cb4147b53569ce21d346c7bb924d8a7e7213c608af115379`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:39 GMT
ADD file:c472062baa8d8c35c7642162b18516ecdc2e143d0e5c147b472312cfc532efe9 in / 
# Wed, 14 Mar 2018 20:01:40 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:48:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:48:27 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:48:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:48:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:48:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:10:08 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:10:08 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:10:08 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:10:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:10:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:8efba53ec4136476603e9856d8bb17541faa0f33abada48ac4d2d7efe61ff43f`  
		Last Modified: Wed, 14 Mar 2018 20:13:21 GMT  
		Size: 21.2 MB (21164955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1949e18a328f3c9b962c19755d8a55af0f21d21943810d7daf39862ab8bedf`  
		Last Modified: Wed, 14 Mar 2018 23:12:26 GMT  
		Size: 447.7 KB (447681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b95963c2f246890fe81e80837f0f83814d454828b59a18fb683a23a7f0eb09c`  
		Last Modified: Wed, 14 Mar 2018 23:12:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7dc2f45c72f39e5727403aaf034f49ea08f3db29ca0556933a777d8ea0ff9d`  
		Last Modified: Wed, 14 Mar 2018 23:12:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe7ebe9087566b4846d8d84ad60e770fc58feacc3d48922ba3347086a053c2e`  
		Last Modified: Tue, 20 Mar 2018 10:35:18 GMT  
		Size: 46.8 MB (46769117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04050d4ef04d67036e2c7b7030099e6fe96d79886e9f7a1d55b14daff4488ac5`  
		Last Modified: Tue, 20 Mar 2018 10:35:07 GMT  
		Size: 272.2 KB (272188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jre-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:a76b1912e78fcb0206aa90c1c6bb5866d65a51fe6728ff8218dd8e3e8ad2d3b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.2 MB (69237926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc50086b1e329bffafaf59700fe5379d5571951744fc1fe1652aaae58c4bbf06`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:40:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:40:14 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:40:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:40:20 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:40:21 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 10:53:20 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:53:21 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:53:22 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:54:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:55:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c2c870b6a03218fa96a1914a126961281284a49163a7dac0a01e1e541e1d87`  
		Last Modified: Wed, 14 Mar 2018 21:41:04 GMT  
		Size: 440.8 KB (440847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9452cad7dfe516b55adcda81dc66f8983610a046558f0ff3c2fbc4d640273838`  
		Last Modified: Wed, 14 Mar 2018 21:41:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd53f132dbd6ebdabddfe1a5d0db8da6317d63520610c9287202b678034df19`  
		Last Modified: Wed, 14 Mar 2018 21:41:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d05e73f66f45acf85b3af94a3c6063e748c9204d4cf1cdb958dc5bb6dcfd70d`  
		Last Modified: Tue, 20 Mar 2018 12:08:45 GMT  
		Size: 48.2 MB (48187410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d870bdca30a549212c05dddcbaa5bd6960a6c34694a305bdde5e57307517df27`  
		Last Modified: Tue, 20 Mar 2018 12:08:31 GMT  
		Size: 272.1 KB (272088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jre-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:57fec803289d257b348da8af0b4a025646d836210ea2eb3f79c291f0de3b99d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.1 MB (72145931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e47ee75afba9ae78ab04be89bb5cb46f90f8a866592ee6193bcc8cb205d3aa67`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 04:52:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:52:45 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:52:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:52:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:53:02 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 20 Mar 2018 11:48:08 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:48:09 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:48:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:50:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:50:24 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2161f1e27455c4f326ed4a0e9f04c75ab7cf7ec817ac77d09e60f7546eba89eb`  
		Last Modified: Thu, 15 Mar 2018 06:06:39 GMT  
		Size: 449.8 KB (449810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6707568a8fbabd710d6a1bd122f68bb3fb7bf70a82f71a8166262bc6ea9041`  
		Last Modified: Thu, 15 Mar 2018 06:06:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291e9f652987d4079557622fc40bd32490a0d89f8a608d317ab0dbcdbd3557c5`  
		Last Modified: Thu, 15 Mar 2018 06:06:39 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3c30d2ed678686f06ec167a3119ec5704ce27bdf6a5722f2b73b1a8e43e0f7`  
		Last Modified: Tue, 20 Mar 2018 12:18:33 GMT  
		Size: 48.7 MB (48677527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afbdb0411f5ff6b0c792228f222ddaf9c2d47926328aa7770546cad601ba410`  
		Last Modified: Tue, 20 Mar 2018 12:18:23 GMT  
		Size: 272.1 KB (272071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
