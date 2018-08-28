## `gradle:jre10`

```console
$ docker pull gradle@sha256:2166c4a50382c0fc3adf9cb5c2bfcc0fe4e9b40a9c4c86165273737a623c943d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `gradle:jre10` - linux; arm variant v5

```console
$ docker pull gradle@sha256:538f9922067074946a4331c4a1548a38ff2e13c2f898b44dee995f73a9dbb9b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.0 MB (307026258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d7879d2c6255433fa6b7514c45aea0eb0fee906509bb05bb2c392a6338ad51`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 08:53:54 GMT
ADD file:feed6b12801621af72a787e98590f6fd783022a609efc8254532712521e6c570 in / 
# Tue, 17 Jul 2018 08:53:55 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:46:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:46:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:35:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:35:12 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 12:35:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 12:39:20 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 12:39:21 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 21 Jul 2018 11:02:44 GMT
ENV JAVA_VERSION=10.0.2+13
# Sat, 21 Jul 2018 11:02:44 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Sat, 21 Jul 2018 11:03:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 21 Jul 2018 15:05:42 GMT
CMD ["gradle"]
# Sat, 21 Jul 2018 15:05:42 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 28 Aug 2018 08:54:12 GMT
ENV GRADLE_VERSION=4.10
# Tue, 28 Aug 2018 08:54:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
# Tue, 28 Aug 2018 08:54:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 28 Aug 2018 08:54:20 GMT
USER [gradle]
# Tue, 28 Aug 2018 08:54:20 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 28 Aug 2018 08:54:21 GMT
WORKDIR /home/gradle
# Tue, 28 Aug 2018 08:54:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b6112397569f950be7cab355fd3cb9fb3b089c080499c1eebc269ecb7cc3715c`  
		Last Modified: Tue, 17 Jul 2018 09:06:21 GMT  
		Size: 46.6 MB (46645580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe7203031bf40ede6b42be5c3fda4ca4d75813d5bd4b1b964031a91101f44bc`  
		Last Modified: Tue, 17 Jul 2018 11:59:56 GMT  
		Size: 6.6 MB (6628142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70fcc6b3abd37d971fff823418e9e34f70cffa0160a3baf8d7e2eea079fcf3a`  
		Last Modified: Tue, 17 Jul 2018 11:59:57 GMT  
		Size: 9.0 MB (8987743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2ae4496c0916db99e22c0245b34d245a7318740ae4c9f23250d636cf66291a`  
		Last Modified: Tue, 17 Jul 2018 12:52:07 GMT  
		Size: 840.2 KB (840227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0810e84c1a090066340c5d857bf3de97486a9c67a19884712150c85db8d04f`  
		Last Modified: Tue, 17 Jul 2018 12:52:06 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a9d3bd1cde86c197a7efb2ca769a648e6b0bd089e2dba814f5a97d9d504232`  
		Last Modified: Tue, 17 Jul 2018 12:52:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a698db289a2e5fc6d405ef78ced0699c37f4e4652afbd6878d93383f49ab60`  
		Last Modified: Sat, 21 Jul 2018 11:26:08 GMT  
		Size: 165.5 MB (165534782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73951da5505ac6dcb5fccb1d24f73ccd11ad302ddbab3d60795d9f1fd03223ba`  
		Last Modified: Tue, 28 Aug 2018 09:05:48 GMT  
		Size: 78.4 MB (78389179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c9a3637dfb187deb2f30164c678e143bda30e11e2d1bed6c8de91586e19790`  
		Last Modified: Tue, 28 Aug 2018 09:05:38 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre10` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:7358bc9e34bcb930c61fdec25f3d7a33fa5368ed69fcc33c3d5937a1969c6fa3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.2 MB (308177284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb02cec793e382dd7ff5f03208a5c4776086abe30fb484a96c2f6b0bb72164bc`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 08:43:33 GMT
ADD file:1145a1860bba8a4d148966c227a31ee5ee05c524c8af7a2c0963bb5671b11ad7 in / 
# Tue, 17 Jul 2018 08:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:39:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:40:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 19:56:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:56:32 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 19:56:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 20:10:30 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 20:10:33 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 21 Jul 2018 10:31:38 GMT
ENV JAVA_VERSION=10.0.2+13
# Sat, 21 Jul 2018 10:31:39 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Sat, 21 Jul 2018 10:41:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 21 Jul 2018 16:03:44 GMT
CMD ["gradle"]
# Sat, 21 Jul 2018 16:03:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 28 Aug 2018 08:58:44 GMT
ENV GRADLE_VERSION=4.10
# Tue, 28 Aug 2018 08:58:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
# Tue, 28 Aug 2018 08:58:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 28 Aug 2018 08:59:07 GMT
USER [gradle]
# Tue, 28 Aug 2018 08:59:08 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 28 Aug 2018 08:59:09 GMT
WORKDIR /home/gradle
# Tue, 28 Aug 2018 08:59:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:719cf01a9d639f6fad37c3abd73d6746ec6483c438952c7daf2503b9dccde689`  
		Last Modified: Tue, 17 Jul 2018 08:53:02 GMT  
		Size: 46.0 MB (45967380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075accf774284e7b667dd405cd13b8eeb55056113680340e3245fbd09d5d03fa`  
		Last Modified: Tue, 17 Jul 2018 15:07:59 GMT  
		Size: 6.6 MB (6647895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6bf6cdca1c47f36a5665bfdb0fb046730a62f0d3c944aecf285c441be0ea93`  
		Last Modified: Tue, 17 Jul 2018 15:07:59 GMT  
		Size: 9.0 MB (8981452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c840a5bdd30532a63df60e5079cbbe12a8fce1db657e5b27202622471ed9c7`  
		Last Modified: Tue, 17 Jul 2018 20:40:10 GMT  
		Size: 831.8 KB (831820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f84f1479c592353313a7a93277681daa575a4af657abf7514207ccfbf82e462e`  
		Last Modified: Tue, 17 Jul 2018 20:40:10 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dbad20a6791e864adc5624700aa0ec94c2fb833eb1329bc22ef5fbd51a74ee4`  
		Last Modified: Tue, 17 Jul 2018 20:47:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940ebe85911acff293e0432f2548b0d22822b4138db034066a1c0d9c65d1042b`  
		Last Modified: Sat, 21 Jul 2018 11:15:54 GMT  
		Size: 167.4 MB (167358992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7364356dcfdfffc69d1fdf2bc86254c25b571f8d2c5851da472aabb6643b051a`  
		Last Modified: Tue, 28 Aug 2018 09:34:37 GMT  
		Size: 78.4 MB (78389171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3727fabb02fe40961b93019fc698f3d75a9699964da4bcc4837c41ef55ecd8b4`  
		Last Modified: Tue, 28 Aug 2018 09:34:25 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre10` - linux; ppc64le

```console
$ docker pull gradle@sha256:f76c9c121f7a702c40ff7d30be6e3e5e3a2a8cad383260f3d070251420911a23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.1 MB (320074745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b1d4a71394e956ca0e52d6f06300944a8a301dee0dc5f088d9ecf80f99f2f4`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Jul 2018 08:18:22 GMT
ADD file:94ebec540eca8b99572e5842e1f1f2fe8cf7a62fb1366b2459edb37903e41200 in / 
# Tue, 17 Jul 2018 08:18:31 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:56:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:56:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 16:21:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:21:38 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 16:21:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 16:53:58 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 16:53:59 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 21 Jul 2018 09:13:35 GMT
ENV JAVA_VERSION=10.0.2+13
# Sat, 21 Jul 2018 09:13:36 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Sat, 21 Jul 2018 09:18:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 21 Jul 2018 12:07:48 GMT
CMD ["gradle"]
# Sat, 21 Jul 2018 12:07:49 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 28 Aug 2018 08:32:56 GMT
ENV GRADLE_VERSION=4.10
# Tue, 28 Aug 2018 08:32:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
# Tue, 28 Aug 2018 08:33:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 28 Aug 2018 08:33:18 GMT
USER [gradle]
# Tue, 28 Aug 2018 08:33:28 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 28 Aug 2018 08:33:34 GMT
WORKDIR /home/gradle
# Tue, 28 Aug 2018 08:33:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2d7cf41bf039d34ad7c6efe6cb9dc3370c5f55c39226a13fd409d52eb991f335`  
		Last Modified: Tue, 17 Jul 2018 08:23:43 GMT  
		Size: 50.2 MB (50185044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17647cf140d6db3c9f1f92652456b5a6bb54c33ca54b10d4dfb98f2b9f8e5c4`  
		Last Modified: Tue, 17 Jul 2018 14:13:33 GMT  
		Size: 6.9 MB (6876422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd26110f5fee83517301d699e51fa0068429ef004ebc1a0f923f23ededc8621`  
		Last Modified: Tue, 17 Jul 2018 14:13:33 GMT  
		Size: 9.5 MB (9494855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fdca2392dba04cb5aca6b662a42e69264bc5866b553b75b013e019a70b8bcd`  
		Last Modified: Tue, 17 Jul 2018 17:27:19 GMT  
		Size: 841.6 KB (841558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d24a83bd75f6287213ae1609820714c57b8749ccdd46b8d244a7ad258cbfea9`  
		Last Modified: Tue, 17 Jul 2018 17:27:19 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f508017c157c60292ead53c15efdda886c956c827c3e5e322a2e14cb7b03cffa`  
		Last Modified: Tue, 17 Jul 2018 17:37:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3461f9c90c142ebca0382077694c94da85c9c42004dc8e0caab145ccef64d85e`  
		Last Modified: Sat, 21 Jul 2018 09:40:34 GMT  
		Size: 174.3 MB (174286996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b42f4609b7a5c48143199b00ffe84de15e5c4f83beb9b4101ac3806f75649a`  
		Last Modified: Tue, 28 Aug 2018 08:47:21 GMT  
		Size: 78.4 MB (78389263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4130fef6e29c593c5a208ebd5a79d13e4c382293b95b4d20cb2c94d94c836aaf`  
		Last Modified: Tue, 28 Aug 2018 08:47:12 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
