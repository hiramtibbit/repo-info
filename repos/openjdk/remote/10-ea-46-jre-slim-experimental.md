## `openjdk:10-ea-46-jre-slim-experimental`

```console
$ docker pull openjdk@sha256:26c6235fe54afa3e3db7c753a50c29a27f23d731b458f656e72afc9cb6c42eda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v5
	-	linux; arm variant v7

### `openjdk:10-ea-46-jre-slim-experimental` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:15155ca6e6d0e0b8ef48a35f1ee6d83a452ba3b78b9ec5a02690961fa2e5d57a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85768709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec1049d59a67420a72f7e9ed5628afffbe7c7d7d99a91b7ffa5dcd8d5b008b03`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 19:59:20 GMT
ADD file:b829fe1b85a76eaae255627baf7572a89310e31a86d94c40353cdf5184a08296 in / 
# Wed, 14 Mar 2018 19:59:21 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:37:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:37:39 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 22:37:39 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:37:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:37:41 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:37:41 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 08:06:12 GMT
ENV JAVA_VERSION=10-ea+46
# Fri, 16 Mar 2018 08:06:13 GMT
ENV JAVA_DEBIAN_VERSION=10~46-1
# Fri, 16 Mar 2018 08:06:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1df428c58793052c39aa67c5a0cfc437c4f5e97e12915970ffa3b5a637915c81`  
		Last Modified: Wed, 14 Mar 2018 20:10:52 GMT  
		Size: 23.7 MB (23719570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ea34fa7879bc512ea22a1ff5fd2caeccec4a4a30a175ae662a07c22e57532a`  
		Last Modified: Wed, 14 Mar 2018 23:01:39 GMT  
		Size: 453.8 KB (453792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776bfc1a4d82edc51af7414f4ba86c5a55a2fea41d0435b1156d0a45f9314cdf`  
		Last Modified: Fri, 16 Mar 2018 08:13:23 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd4eae367488fd6282f6411d1881f884a7bdd5a8edeb8e726a29ea5a1f26c69`  
		Last Modified: Fri, 16 Mar 2018 08:13:23 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909d8cb63b9fa000d247c5f22cb48d46f6d4a11c4076742a3ce5538816b9706f`  
		Last Modified: Fri, 16 Mar 2018 08:13:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0f574f1d683b4f44aca4afab03903f682a5c127ad703056b26a5e332b91525`  
		Last Modified: Fri, 16 Mar 2018 08:13:40 GMT  
		Size: 61.6 MB (61594757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:10-ea-46-jre-slim-experimental` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:019b0e768f13c226145c67eceb5f47edbd2352be34fa87a341d2ad24033fd3dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85691296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f695480e3c213ea48f746ceb35f55fac7e8b98175f24eff507985886dfd1f49f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:30:51 GMT
ADD file:01a57c20f154d841f3d0067187339035634947891cdd63b93cf26c052ccec8a9 in / 
# Wed, 14 Mar 2018 12:30:52 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:49:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:49:47 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 13:49:49 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 13:49:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 13:49:51 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 13:49:53 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 01:25:43 GMT
ENV JAVA_VERSION=10-ea+46
# Fri, 16 Mar 2018 01:25:43 GMT
ENV JAVA_DEBIAN_VERSION=10~46-1
# Fri, 16 Mar 2018 01:26:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:eb4d24f57aa2e9887d736ab5ae837254043a7420798488e113011250c3d45c6b`  
		Last Modified: Wed, 14 Mar 2018 12:42:40 GMT  
		Size: 21.7 MB (21736182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6632e794ba04784b0b45265566f4f18a26d40bdfdd4aa6726c2df55600f62e`  
		Last Modified: Wed, 14 Mar 2018 14:18:56 GMT  
		Size: 436.4 KB (436377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26c0e249a49e408893c222a4071e831d9959c016bda599d2e774b78084f3574`  
		Last Modified: Wed, 14 Mar 2018 14:18:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab9b299374d7501067c56288dda6111b30b796922317319edfddd816199e278`  
		Last Modified: Wed, 14 Mar 2018 14:18:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4132579df0f58e592491642768b2a8efbc4f35d457c56866659e56e8134a203`  
		Last Modified: Wed, 14 Mar 2018 14:18:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220ba2c7ccb91e9749b79f993f40a7e85f23ffdd16cac00615f0fca2aa0199f3`  
		Last Modified: Fri, 16 Mar 2018 01:37:04 GMT  
		Size: 63.5 MB (63518143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
