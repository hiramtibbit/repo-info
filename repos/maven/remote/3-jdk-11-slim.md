## `maven:3-jdk-11-slim`

```console
$ docker pull maven@sha256:739b1bc96cc5bf0a79bbdd8867a08171a3422b0a21d4688c6a3aa0659161fada
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

### `maven:3-jdk-11-slim` - linux; amd64

```console
$ docker pull maven@sha256:c1f66821baaf409057c58247f5b4210dc162288b1b76a2b0e427e89e031aa259
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.5 MB (185466924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b5d0da8d032ff580d707b217490a9770f1a57d527d7497384076eb2dfb1cf8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 17 Jul 2018 00:25:12 GMT
ADD file:f91110c5482cb29a759356df06fea755606755e05306ca55f921f44a5b9470fb in / 
# Tue, 17 Jul 2018 00:25:12 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 06:09:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:09:54 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:09:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:09:55 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:09:56 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 06:09:56 GMT
ENV JAVA_VERSION=11-ea+22
# Tue, 17 Jul 2018 06:09:56 GMT
ENV JAVA_DEBIAN_VERSION=11~22-2
# Tue, 17 Jul 2018 06:10:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 06:10:32 GMT
CMD ["jshell"]
# Tue, 17 Jul 2018 16:58:41 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 17 Jul 2018 16:58:42 GMT
ARG USER_HOME_DIR=/root
# Tue, 17 Jul 2018 16:58:42 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 17 Jul 2018 16:58:42 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 17 Jul 2018 16:58:51 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:58:55 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Tue, 17 Jul 2018 16:58:59 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 17 Jul 2018 16:59:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 17 Jul 2018 16:59:07 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 17 Jul 2018 16:59:08 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 17 Jul 2018 16:59:08 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 17 Jul 2018 16:59:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 17 Jul 2018 16:59:09 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:21c77be511c9830e11f7da7f8796340d6103e5b1e4124bb1639947aa0f11c19e`  
		Last Modified: Tue, 17 Jul 2018 00:40:27 GMT  
		Size: 26.2 MB (26153708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9a9bc4c131a474462e235e575844d60055d3904745b1cd7e9bcb0bbd1ed82b7`  
		Last Modified: Tue, 17 Jul 2018 06:33:28 GMT  
		Size: 460.1 KB (460144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85403034af41f2da36b479c531eb04f843b0af4715e65ee84a91e1fbb5f1bf9`  
		Last Modified: Tue, 17 Jul 2018 06:33:27 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd5e0c34299187bbde044e4b8e5f7de695a016f6b69d6794a3ea6142e320d1a`  
		Last Modified: Tue, 17 Jul 2018 06:33:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f443b9879f3b1bcc595960b857bf6b84f7c48bfb9d96a3fd1660ae515ccdc1`  
		Last Modified: Tue, 17 Jul 2018 06:33:58 GMT  
		Size: 148.0 MB (148000888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65058cb007620a84813ba4e71294a995401594d176a012e28701c914358d1aec`  
		Last Modified: Tue, 17 Jul 2018 17:08:04 GMT  
		Size: 1.9 MB (1861288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272aae9cd60e9a7c95ef4a7b1cd820e0779b1f976bc62ee5b3bc47a86bd55264`  
		Last Modified: Tue, 17 Jul 2018 17:08:03 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537f387a024e48c71a24f2d9f78f8a6edc9498b4cf31fb3c45ae84a6030235da`  
		Last Modified: Tue, 17 Jul 2018 17:08:04 GMT  
		Size: 9.0 MB (8989204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c0c6648b4ded6f57aa4e3bd63e6da30ecfb0dd40688b36d7ca52242f860707`  
		Last Modified: Tue, 17 Jul 2018 17:08:03 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725d7871ce402d26f2c35158c82b0745b6cc9996500b1ae1a76f1edab75d1117`  
		Last Modified: Tue, 17 Jul 2018 17:08:03 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:75504a1e45a376022b2c73f3c8c0020d6241411d0147355de486cff0f1b49b02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.9 MB (154893648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec3e2c2ddc5416f40930a2f0434c651e81a6501542018bf3c25eee436bb27d17`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 27 Jun 2018 08:52:27 GMT
ADD file:e57206d1e45e262bfb6e4f3bc11722f30ee3b33538b4c1095792a076d5b4b2aa in / 
# Wed, 27 Jun 2018 08:52:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:25:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:25:21 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:25:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:25:24 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:25:24 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 03 Jul 2018 08:58:41 GMT
ENV JAVA_VERSION=11-ea+19
# Tue, 03 Jul 2018 08:58:41 GMT
ENV JAVA_DEBIAN_VERSION=11~19-1
# Tue, 03 Jul 2018 08:59:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 03 Jul 2018 08:59:15 GMT
CMD ["jshell"]
# Tue, 03 Jul 2018 09:31:25 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 03 Jul 2018 09:31:26 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Jul 2018 09:31:26 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 03 Jul 2018 09:31:26 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 03 Jul 2018 09:31:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 09:31:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Tue, 03 Jul 2018 09:31:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 03 Jul 2018 09:31:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Jul 2018 09:31:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Jul 2018 09:31:40 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 03 Jul 2018 09:31:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 03 Jul 2018 09:31:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Jul 2018 09:31:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ab290037f4b3ddf1d7b1d19da8d2becec47e1854d7d4ee1442ab7f82bde3b262`  
		Last Modified: Wed, 27 Jun 2018 09:01:27 GMT  
		Size: 24.1 MB (24081950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68d3622f3af06525b6108a0a3e2bb840402b384b4d8f18836036fec4bccc750`  
		Last Modified: Wed, 27 Jun 2018 12:47:58 GMT  
		Size: 453.6 KB (453561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7078e99830203460c84053319478b36f2cb0988d2ecd3309a56a01fb37a93fbd`  
		Last Modified: Wed, 27 Jun 2018 12:47:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3d0b1ae35fca8130defce0103a4309a5c905402a7c6646e2827f0934dd77aaa`  
		Last Modified: Tue, 03 Jul 2018 09:03:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1141d78eec885380c5e10dfa4278f8df1e03e69f2d86bcd1056c18e59de1c730`  
		Last Modified: Tue, 03 Jul 2018 09:03:30 GMT  
		Size: 119.6 MB (119595166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc70a52bd58dd6ba35efaa7db678e23fdb9eac40eaefd30f37f50b083b18c72e`  
		Last Modified: Tue, 03 Jul 2018 09:32:42 GMT  
		Size: 1.8 MB (1772054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794ff1d0c23114e0e039dae9c9ee4fa6a3f24d16f21f054ea53cfdb55983f43c`  
		Last Modified: Tue, 03 Jul 2018 09:32:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff37b47976b3798e641d8bcd91af6c9a9fbf63e2af061ccc323e5f821b7573fa`  
		Last Modified: Tue, 03 Jul 2018 09:32:43 GMT  
		Size: 9.0 MB (8989223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb121f29bf73b30ae5e936191951b3be1132bbbc8ef7cdc48c89e942f0b868b0`  
		Last Modified: Tue, 03 Jul 2018 09:32:42 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9806cab02656d26d817f4df59c61beb136107978378aa4483a5461e9ed445674`  
		Last Modified: Tue, 03 Jul 2018 09:32:42 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:e36ab180a3e593be896c33445a3a0eb311eceedc86647a5865eb621e0b4a3b46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.9 MB (158893841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636834aa1a1d45c2c09b70116f3ca6658b61c6eeb522319a8fd8cf7bb4ead5a1`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 17 Jul 2018 12:03:40 GMT
ADD file:430c173aee26cd9ee26f12a79095a7590ef88c7c48a0ae19a07a09942eaae79a in / 
# Tue, 17 Jul 2018 12:03:41 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:34:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:34:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:34:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:34:50 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:34:50 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 12:34:51 GMT
ENV JAVA_VERSION=11-ea+22
# Tue, 17 Jul 2018 12:34:51 GMT
ENV JAVA_DEBIAN_VERSION=11~22-2
# Tue, 17 Jul 2018 12:35:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 12:35:34 GMT
CMD ["jshell"]
# Tue, 17 Jul 2018 17:01:19 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 17 Jul 2018 17:01:19 GMT
ARG USER_HOME_DIR=/root
# Tue, 17 Jul 2018 17:01:20 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 17 Jul 2018 17:01:20 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 17 Jul 2018 17:01:28 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:01:29 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Tue, 17 Jul 2018 17:01:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 17 Jul 2018 17:01:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 17 Jul 2018 17:01:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 17 Jul 2018 17:01:41 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 17 Jul 2018 17:01:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 17 Jul 2018 17:01:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 17 Jul 2018 17:01:42 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:1e5341b5f8a7f0c7e651d696478846f375e478fc35a15daad21057ed34c86aa0`  
		Last Modified: Tue, 17 Jul 2018 12:16:07 GMT  
		Size: 22.1 MB (22054548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201706a9d8742be6b39b2112a52a81180a89c547979584ec52ab950ef13a4768`  
		Last Modified: Tue, 17 Jul 2018 12:55:17 GMT  
		Size: 436.3 KB (436272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db9f0721f2ca238b0a84c406f829b0b7c9a960dd91b6ebd65d2e4825db85f79`  
		Last Modified: Tue, 17 Jul 2018 12:55:17 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc9b2cda3454dd54d9134d49524faa78c52f7dbf220f21d80d55fb384c98815`  
		Last Modified: Tue, 17 Jul 2018 12:55:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c542847d4645304b842368016583f6f19d9b6ef4aab805ecbfa9f8e69ebf7e91`  
		Last Modified: Tue, 17 Jul 2018 12:55:39 GMT  
		Size: 125.8 MB (125764845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78188907c00312256f722a9a29cf7034399075353ab8d64ade344c028682cae`  
		Last Modified: Tue, 17 Jul 2018 17:06:15 GMT  
		Size: 1.6 MB (1647256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921ffff0e08972aa93876af998c8c7cf4085483e9310d549079c31e8236757d2`  
		Last Modified: Tue, 17 Jul 2018 17:06:14 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c5a6b652706f6f4927dc736e417041b4729d79917a2dadb59389cf4821dc5`  
		Last Modified: Tue, 17 Jul 2018 17:06:16 GMT  
		Size: 9.0 MB (8989224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbde29f55f52549bdc66912e610f382a7e102736a217feb1967f269ff2ba944`  
		Last Modified: Tue, 17 Jul 2018 17:06:14 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb4814b6f503a5f2eba1b7c085f21e5188feaa63d59bfaf0d1f73b8540e071d`  
		Last Modified: Tue, 17 Jul 2018 17:06:14 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:3f4bb2faee5d7213fff6274a352a7fd79c6d849736ee0f8fc4031de33097b269
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.2 MB (173182805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fbf203840aaef9e74a70f5198c4f3e63d2cf3f43580f06c2bde2a73f80b72d9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 27 Jun 2018 08:45:15 GMT
ADD file:43ec4f040b626f1ded3ce1a923597ce0c4c7f95f69f95f086a3847e8aeb74bd3 in / 
# Wed, 27 Jun 2018 08:45:17 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:20:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:20:30 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 10:20:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 10:20:34 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 10:20:34 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 07 Jul 2018 09:01:08 GMT
ENV JAVA_VERSION=11-ea+21
# Tue, 10 Jul 2018 08:56:32 GMT
ENV JAVA_DEBIAN_VERSION=11~21-2
# Tue, 10 Jul 2018 08:57:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Jul 2018 08:57:44 GMT
CMD ["jshell"]
# Tue, 10 Jul 2018 10:14:37 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 10 Jul 2018 10:14:38 GMT
ARG USER_HOME_DIR=/root
# Tue, 10 Jul 2018 10:14:39 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 10 Jul 2018 10:14:40 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 10 Jul 2018 10:15:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 10 Jul 2018 10:15:17 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Tue, 10 Jul 2018 10:15:22 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 10 Jul 2018 10:15:22 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 10 Jul 2018 10:15:23 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 10 Jul 2018 10:15:24 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 10 Jul 2018 10:15:25 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 10 Jul 2018 10:15:25 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 10 Jul 2018 10:15:26 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6a0581b8511ac26263e1c081abe6382d7ce4481f47612f79a5460165410d1da7`  
		Last Modified: Wed, 27 Jun 2018 08:55:56 GMT  
		Size: 23.5 MB (23467711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a41f0f7beab1d044e8af784988f7edba4c2864fc3c3a8895b4a9923cf8688a`  
		Last Modified: Wed, 27 Jun 2018 10:44:50 GMT  
		Size: 445.0 KB (444977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a408113d860847fc397e2efe7e9e5b70c792848f6cdd53715333f04f14d5151c`  
		Last Modified: Wed, 27 Jun 2018 10:44:50 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd458d56d880b6428089d57db1f9444c119d14b8c4e74402c0c1d2d91264316`  
		Last Modified: Tue, 03 Jul 2018 10:06:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baa05e06aff3dc96545c06f74e9a526a059252c4d43988c1039bf4ffb700a86`  
		Last Modified: Tue, 10 Jul 2018 09:13:31 GMT  
		Size: 138.5 MB (138514846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9682a7e935f42d647a5a4e6b09007d9415052424079f124de76985a03fc3f7`  
		Last Modified: Tue, 10 Jul 2018 10:17:34 GMT  
		Size: 1.8 MB (1764352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a2ef7994fa2127397425fd797ffe1e6d3eb2be0e2d114422abb6e12d67c8dd`  
		Last Modified: Tue, 10 Jul 2018 10:17:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8893e48d3cfe4f521f7095a9ef3d59c2484d0b122ca250265a82b4a82e42f9d`  
		Last Modified: Tue, 10 Jul 2018 10:17:34 GMT  
		Size: 9.0 MB (8989224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f9dc908eb02ed6e35f17a7a26d2af142a737e574e157c7df705fbace4dfa57`  
		Last Modified: Tue, 10 Jul 2018 10:17:33 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067359c0359b1887e5aa5b1ac2a695c86d82f5a1d4a0720afa0c762ce61c90cb`  
		Last Modified: Tue, 10 Jul 2018 10:17:33 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; 386

```console
$ docker pull maven@sha256:3c8030521569ee601536717735736c493fe921ed5b22857cba7643c89ee9d0b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188303557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d7c78c468b9524839b79575252f65a4ba719b1226a14b436372fc2ee7c4b025`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 17 Jul 2018 10:47:10 GMT
ADD file:20144dcfd227e7e2fd2fa000865bff7a8586b26f763501c4602235f1d4f04119 in / 
# Tue, 17 Jul 2018 10:47:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:22:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:22:06 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 11:22:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 11:22:09 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 11:22:09 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 11:22:10 GMT
ENV JAVA_VERSION=11-ea+22
# Tue, 17 Jul 2018 11:22:10 GMT
ENV JAVA_DEBIAN_VERSION=11~22-2
# Tue, 17 Jul 2018 11:22:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 11:22:55 GMT
CMD ["jshell"]
# Tue, 17 Jul 2018 19:00:30 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 17 Jul 2018 19:00:31 GMT
ARG USER_HOME_DIR=/root
# Tue, 17 Jul 2018 19:00:31 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 17 Jul 2018 19:00:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 17 Jul 2018 19:00:42 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:00:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Tue, 17 Jul 2018 19:00:49 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 17 Jul 2018 19:00:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 17 Jul 2018 19:01:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 17 Jul 2018 19:01:01 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 17 Jul 2018 19:01:01 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 17 Jul 2018 19:01:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 17 Jul 2018 19:01:02 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5dfc5302b4bfc84b249f67f2e7094fdf4be54645eb3b6ce014c0c7ecca1e6df4`  
		Last Modified: Tue, 17 Jul 2018 11:04:29 GMT  
		Size: 26.8 MB (26847422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2f3a405923c070ef2fc1a30ce2d9036eee908d3d315c21569898eb8390c12e`  
		Last Modified: Tue, 17 Jul 2018 11:40:12 GMT  
		Size: 468.8 KB (468803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d96811d096ea29f146e1f9e59c6100f66189bee526673d4cc256ae946095fe`  
		Last Modified: Tue, 17 Jul 2018 11:40:12 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c5731eb629f64cb6cf33bd9be4f0ccc2af036f5e4d4fc2cd686c5dd88a1832`  
		Last Modified: Tue, 17 Jul 2018 11:40:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f964866fb31a65950cda3a8eed4a2e0eeddb51f057fd84f64ea263438687b9`  
		Last Modified: Tue, 17 Jul 2018 11:40:51 GMT  
		Size: 150.0 MB (150041095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd1303a25ac68b8e54f9fa418e4c149e2de42a998e8899f1582259370027abea`  
		Last Modified: Tue, 17 Jul 2018 19:09:15 GMT  
		Size: 2.0 MB (1955322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbee44cdc1a3512dbd84f8a7861e3e1f5dbffcff16bc0734f793d0a73857b18`  
		Last Modified: Tue, 17 Jul 2018 19:09:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8926ebd06e4749ae8feeecef9f595eea41f2b2ea956b6a61609ff8b375d4af`  
		Last Modified: Tue, 17 Jul 2018 19:09:16 GMT  
		Size: 9.0 MB (8989227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a65d5c5b3c4e6ff428edab18684aa773fc46b423b9db161cd6aa76546b5362b`  
		Last Modified: Tue, 17 Jul 2018 19:09:14 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2512e75a9c492714ad3825b07beb063db16aee2fe80860c5d4111969db188376`  
		Last Modified: Tue, 17 Jul 2018 19:09:14 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:f8790986e858814bac2fcdbc19768724fc8427129a9c65ba446e72ef04a22b41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169076288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0e54033670d2e6db89a59ba4cd20fddef8da03406f5d4cb7ba861644060aba8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 17 Jul 2018 08:18:51 GMT
ADD file:2854a5536a6cd3d364473dbde290890875599447fe57e02214642a7ea4c4199a in / 
# Tue, 17 Jul 2018 08:18:54 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:49:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:49:34 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 08:49:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 08:49:38 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 08:49:39 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 08:49:40 GMT
ENV JAVA_VERSION=11-ea+22
# Tue, 17 Jul 2018 08:49:41 GMT
ENV JAVA_DEBIAN_VERSION=11~22-2
# Tue, 17 Jul 2018 08:51:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 08:51:33 GMT
CMD ["jshell"]
# Tue, 17 Jul 2018 18:56:43 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 17 Jul 2018 18:56:44 GMT
ARG USER_HOME_DIR=/root
# Tue, 17 Jul 2018 18:56:45 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 17 Jul 2018 18:56:46 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 17 Jul 2018 18:57:40 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:57:47 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Tue, 17 Jul 2018 18:57:51 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 17 Jul 2018 18:57:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 17 Jul 2018 18:57:54 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 17 Jul 2018 18:57:55 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 17 Jul 2018 18:57:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 17 Jul 2018 18:57:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 17 Jul 2018 18:57:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c0079deb5131e41ff48e218a11dc6d4aaf2ee6f48d4674431d4da149f01bd944`  
		Last Modified: Tue, 17 Jul 2018 08:24:11 GMT  
		Size: 27.4 MB (27423639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf7a34d4ae23534bc74ed18c6c3b2d4528589acd4a6c4ed1172442e070315e5`  
		Last Modified: Tue, 17 Jul 2018 09:43:03 GMT  
		Size: 454.8 KB (454843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2189ec7f1e039011f776c44f0becd3e5065e0a06e25dca83d56e0698d7c16fdc`  
		Last Modified: Tue, 17 Jul 2018 09:43:02 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a24d44be9692f4c723c652f3ab74ad80496ecfa0a51aecc2f812334ba67821`  
		Last Modified: Tue, 17 Jul 2018 09:43:01 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f445e341aeacf373137ba793aeeed6cab56e6278beec9b927e2f93b69c1901c`  
		Last Modified: Tue, 17 Jul 2018 09:43:46 GMT  
		Size: 130.3 MB (130250740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd9b691fb5caa504b5f24f2a72129bbdfe42ff35773cf40c114187d5a32b331`  
		Last Modified: Tue, 17 Jul 2018 19:03:57 GMT  
		Size: 2.0 MB (1956157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c69aab1bac480a14c606ebde10b56cac132b6b088ba3dd88c1a78a34e5bab6d`  
		Last Modified: Tue, 17 Jul 2018 19:03:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6335347afa27956e2f82c0f3bb39401e7f8a2a6fc212eacdd5db10f20ea678`  
		Last Modified: Tue, 17 Jul 2018 19:03:58 GMT  
		Size: 9.0 MB (8989209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623c04d9a8dc9387da73debf0bc0d32bf4ae9b2c8aaa6824e1347eccfc8e54f5`  
		Last Modified: Tue, 17 Jul 2018 19:03:57 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aedd468950706c83e39387148c57d089658ea3c8c9e1f8ab7d06e8cc99f7e23`  
		Last Modified: Tue, 17 Jul 2018 19:03:56 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; s390x

```console
$ docker pull maven@sha256:f4b972edc9b41d0b67aa46ed08865c67fde6b5fe2cece72baea2a759b18e31fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162960936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4193aa7404144d299cac2c09b8826d6ecc2550c97392a3c5a67164577984b59b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 17 Jul 2018 11:42:33 GMT
ADD file:34516dd4f3a5de10b651fdb63328fddb718471eaf74d2efaa6760e1cc35f585c in / 
# Tue, 17 Jul 2018 11:42:34 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:03:10 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:03:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:03:12 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:03:12 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 17 Jul 2018 12:03:12 GMT
ENV JAVA_VERSION=11-ea+22
# Tue, 17 Jul 2018 12:03:12 GMT
ENV JAVA_DEBIAN_VERSION=11~22-2
# Tue, 17 Jul 2018 12:03:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 17 Jul 2018 12:03:41 GMT
CMD ["jshell"]
# Tue, 17 Jul 2018 14:54:48 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 17 Jul 2018 14:54:48 GMT
ARG USER_HOME_DIR=/root
# Tue, 17 Jul 2018 14:54:49 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 17 Jul 2018 14:54:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 17 Jul 2018 14:54:53 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:54:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Tue, 17 Jul 2018 14:55:04 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 17 Jul 2018 14:55:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 17 Jul 2018 14:55:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 17 Jul 2018 14:55:05 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 17 Jul 2018 14:55:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 17 Jul 2018 14:55:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 17 Jul 2018 14:55:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:1a7175b896da3e09b9a3ca6e3eb08f48c4a4243431b90adbec26e8baa7abec49`  
		Last Modified: Tue, 17 Jul 2018 11:45:48 GMT  
		Size: 25.1 MB (25130390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae7fd283a35bc996c3e40072f47e06f5a1863d130778afd8486985973fe079c`  
		Last Modified: Tue, 17 Jul 2018 12:10:30 GMT  
		Size: 470.9 KB (470909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b36a405f4357de759ca613cac9db408120a959b381a08b4c3ca780fe0e66965`  
		Last Modified: Tue, 17 Jul 2018 12:10:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13be106628117d44b0baab4035a3607a1dcbe5ece4061889f3546aec4b6304a7`  
		Last Modified: Tue, 17 Jul 2018 12:10:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b42220b35a7d1a84b5bc1208e12b3a1d25bf7a62267a56b25ed3261c4080a83`  
		Last Modified: Tue, 17 Jul 2018 12:10:55 GMT  
		Size: 126.5 MB (126536109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f480017ed917b6d8a1ca3e3d7dda84f610d47e1cba30ae800552ba7a2a73ca63`  
		Last Modified: Tue, 17 Jul 2018 14:57:32 GMT  
		Size: 1.8 MB (1832628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c089c1003ccc7cebb1e2fb8cb9a959cbce2eccf126b5d810f684aedd02f99f0`  
		Last Modified: Tue, 17 Jul 2018 14:57:32 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99004a9543302e7b38e1f3343750256fe8a947861bbfbab7060dfd474fe9dd14`  
		Last Modified: Tue, 17 Jul 2018 14:57:33 GMT  
		Size: 9.0 MB (8989205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d036ea73a29c6276c0bd247247ccd6168aef1c826b50f4fd61139e69a4a226c`  
		Last Modified: Tue, 17 Jul 2018 14:57:32 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f7fc1a7839834f9b785d6847c2ec069bb012339d50ce6df7bd499d07eb0f22`  
		Last Modified: Tue, 17 Jul 2018 14:57:32 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
