## `openjdk:11-ea-19-jre-slim`

```console
$ docker pull openjdk@sha256:2a258e7c489e35ae9806e42eaffb9bb2a257832227356f2f695da2723f9d6239
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

### `openjdk:11-ea-19-jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:d2b6d831d4a96717e22685db314c716349c979578d949075610d1e85fbce0982
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100205967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d35d870612980c1aff246732c2fb47f510060b3ce37256d5a8162eabc5d77a6f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:23:47 GMT
ADD file:f6f1518ff68043ed3ca8bae9ce07dcc969ae13bbdbfa6de70c869a9082f53e3c in / 
# Tue, 26 Jun 2018 21:23:47 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:19:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:19:36 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:19:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:19:37 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:19:38 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 03 Jul 2018 00:57:18 GMT
ENV JAVA_VERSION=11-ea+19
# Tue, 03 Jul 2018 00:57:19 GMT
ENV JAVA_DEBIAN_VERSION=11~19-1
# Tue, 03 Jul 2018 00:59:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:469c03946d59bad3e2f921c73851b892468df0e7358d603dc6cf4cf3754df71d`  
		Last Modified: Tue, 26 Jun 2018 21:34:51 GMT  
		Size: 26.1 MB (26124512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9071a53fca24b6a916b853d0e5fc165853317f150c46e8cb23f78f07cbd910cd`  
		Last Modified: Tue, 26 Jun 2018 23:42:22 GMT  
		Size: 460.1 KB (460064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5abfd2a20a1c0b8700b067a71251d414d178315c2de46c9f6d0c0a85d105c810`  
		Last Modified: Tue, 26 Jun 2018 23:42:21 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719f4cbb5569561c96d9d0647fec42a80f7405d19386a870c81ac38bc97cf472`  
		Last Modified: Tue, 03 Jul 2018 01:02:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87231bdcd7b10ab4ffb6807273cb65b6ce9a166c309ed30df13e103c7c14f085`  
		Last Modified: Tue, 03 Jul 2018 01:08:05 GMT  
		Size: 73.6 MB (73621024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-19-jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:a280e99cfae3b75d3625466f30de3d8cbcece818a41ed8a2257fcf225cdaae62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82343766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b906a2d222cbbb3363c98879feecdd7b4954767ee2e977db953ee90ed38cf550`
-	Default Command: `["bash"]`

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
# Tue, 03 Jul 2018 09:01:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
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
	-	`sha256:94ea19d9a25945b9a4e928f38ebaa9b978085155caae6811b4896192603a4c38`  
		Last Modified: Tue, 03 Jul 2018 09:06:43 GMT  
		Size: 57.8 MB (57807887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:11-ea-19-jre-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:6c7f194249a91e6e783566e5aef51000ddda31be98ddb51148def1ef5c3fccec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90945132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60fd9ae54d899c969ee0cb44795d8d9f4cfee83db686ff9251118ea072cb47c1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:19:43 GMT
ADD file:b78eeabafaf8782971a5f0656c75c78c8c5433892c3eaf767f7929efef69c569 in / 
# Wed, 27 Jun 2018 08:19:44 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:09:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:09:45 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:09:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:10:00 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:10:01 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 03 Jul 2018 08:43:21 GMT
ENV JAVA_VERSION=11-ea+19
# Tue, 03 Jul 2018 08:43:22 GMT
ENV JAVA_DEBIAN_VERSION=11~19-1
# Tue, 03 Jul 2018 08:53:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:97c5cc34273d3c2f949fe7e1929100eee6ce7c2a2cd3643a25cdf70d6de85dc0`  
		Last Modified: Wed, 27 Jun 2018 08:29:18 GMT  
		Size: 27.4 MB (27418879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d97ed0631635aedd4374fc866e43da4d472d2db0823719ee368e40e6e1a9bb`  
		Last Modified: Wed, 27 Jun 2018 14:00:53 GMT  
		Size: 454.8 KB (454789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40effdc3cf774d1ccc0bb80e0f9f3ca757b9aacb532d5e613e4f3ae4c64642a9`  
		Last Modified: Wed, 27 Jun 2018 14:00:52 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11363c83812e250e75693f6bf5d58df83dd5da1c543469f17b5467d3c3553dc`  
		Last Modified: Tue, 03 Jul 2018 09:08:21 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b3a3a232e873f09f9e0ded83e4d954e4261856a2bc78d5f741a02b67359014`  
		Last Modified: Tue, 03 Jul 2018 09:13:01 GMT  
		Size: 63.1 MB (63071095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
