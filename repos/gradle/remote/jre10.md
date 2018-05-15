## `gradle:jre10`

```console
$ docker pull gradle@sha256:100d156aef5f7f23d89ef93806147936ce385c251c4f29866f5a9544c1700e2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre10` - linux; amd64

```console
$ docker pull gradle@sha256:c5e3c3427c81e3e3f49e4a44c00ce2e8245ef453aa017078a1a8053ad478e081
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.2 MB (326188847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d54d949af0f6104ee20c087c5cd699593bab97a96f672e808edf6eb9e473abe8`
-	Default Command: `["gradle"]`

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
# Sat, 05 May 2018 08:03:27 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 08:03:27 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 08:03:27 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 09 May 2018 17:40:34 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Mon, 14 May 2018 22:35:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 01:45:38 GMT
CMD ["gradle"]
# Tue, 15 May 2018 01:45:38 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 May 2018 01:45:38 GMT
ENV GRADLE_VERSION=4.7
# Tue, 15 May 2018 01:45:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=fca5087dc8b50c64655c000989635664a73b11b9bd3703c7d6cabd31b7dcdb04
# Tue, 15 May 2018 01:45:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=fca5087dc8b50c64655c000989635664a73b11b9bd3703c7d6cabd31b7dcdb04
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 15 May 2018 01:45:42 GMT
USER [gradle]
# Tue, 15 May 2018 01:45:42 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 May 2018 01:45:42 GMT
WORKDIR /home/gradle
# Tue, 15 May 2018 01:45:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=fca5087dc8b50c64655c000989635664a73b11b9bd3703c7d6cabd31b7dcdb04
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
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
	-	`sha256:f593c47715b297c7719cc4a01ec7d73f9afc35f0ea3d3f172597139d16dfa1d4`  
		Last Modified: Sat, 05 May 2018 08:11:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c041887ec72c930059fc2c1c6b6e24df5c010cb5ea6d45908d3fe63a2ae537`  
		Last Modified: Mon, 14 May 2018 23:00:58 GMT  
		Size: 183.6 MB (183613980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13096d7ca076e5259661e92bfa8596b0a9baedd937a5b278f16949914c8bc4cc`  
		Last Modified: Tue, 15 May 2018 01:50:59 GMT  
		Size: 75.3 MB (75312186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e80fa3276bbd12fb018b59790f15a704612d1174ffa0d61765ae8d911252bd`  
		Last Modified: Tue, 15 May 2018 01:50:54 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
