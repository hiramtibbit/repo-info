## `jenkins:latest`

```console
$ docker pull jenkins@sha256:d31618be76559c7679479757bfd3f602e24299a482c939572bc51b18b9464b4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

```console
$ docker pull jenkins@sha256:7223c09ec3dcd6f5f9774308cabc73647ef540ac1e78b5efa1ead6abd3acc052
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.5 MB (335484609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c51f9409720ac32b818acfb9e2f1f3aa45ab73944e71e2f0d10d36a596db7689`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 20:24:28 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 20:24:29 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 20:25:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 20:25:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 27 Mar 2018 22:45:16 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Tue, 27 Mar 2018 22:45:17 GMT
ARG user=jenkins
# Tue, 27 Mar 2018 22:45:17 GMT
ARG group=jenkins
# Tue, 27 Mar 2018 22:45:17 GMT
ARG uid=1000
# Tue, 27 Mar 2018 22:45:17 GMT
ARG gid=1000
# Tue, 27 Mar 2018 22:45:17 GMT
ARG http_port=8080
# Tue, 27 Mar 2018 22:45:18 GMT
ARG agent_port=50000
# Tue, 27 Mar 2018 22:45:18 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Tue, 27 Mar 2018 22:45:18 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Tue, 27 Mar 2018 22:45:19 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Tue, 27 Mar 2018 22:45:19 GMT
VOLUME [/var/jenkins_home]
# Tue, 27 Mar 2018 22:45:20 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Tue, 27 Mar 2018 22:45:21 GMT
ENV TINI_VERSION=0.14.0
# Tue, 27 Mar 2018 22:45:21 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Tue, 27 Mar 2018 22:45:24 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Tue, 27 Mar 2018 22:45:25 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Tue, 27 Mar 2018 22:45:25 GMT
ARG JENKINS_VERSION
# Tue, 27 Mar 2018 22:45:26 GMT
ENV JENKINS_VERSION=2.60.3
# Tue, 27 Mar 2018 22:45:26 GMT
ARG JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a
# Tue, 27 Mar 2018 22:45:26 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war
# Tue, 27 Mar 2018 22:45:32 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Tue, 27 Mar 2018 22:45:32 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 27 Mar 2018 22:45:33 GMT
ENV JENKINS_UC_EXPERIMENTAL=https://updates.jenkins.io/experimental
# Tue, 27 Mar 2018 22:45:34 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 27 Mar 2018 22:45:34 GMT
EXPOSE 8080/tcp
# Tue, 27 Mar 2018 22:45:34 GMT
EXPOSE 50000/tcp
# Tue, 27 Mar 2018 22:45:35 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 27 Mar 2018 22:45:35 GMT
USER [jenkins]
# Tue, 27 Mar 2018 22:45:36 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 27 Mar 2018 22:45:36 GMT
COPY file:1a774b24a2bbd880e2ce47b3d642b8c04bbdbede0f2256dbdb11f62b65f696ba in /usr/local/bin/jenkins.sh 
# Tue, 27 Mar 2018 22:45:37 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 27 Mar 2018 22:45:37 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Tue, 27 Mar 2018 22:45:38 GMT
COPY file:a4f750618f51f00d2f8268ac43fdd8d8ef5ce16e1d412afa5a9bc7492a5d975f in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad3b24382b8d524ba08be997a8f95f66ca3939719530a4d56aae5e07bb90be`  
		Last Modified: Tue, 27 Mar 2018 21:49:48 GMT  
		Size: 173.3 MB (173257049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776df9bf9f1b917b5274bcadb090db5a8e1218b8701fd53582e69d3df360115c`  
		Last Modified: Tue, 27 Mar 2018 21:49:13 GMT  
		Size: 272.1 KB (272072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0aee8a048f8434b9672821bfcc42b2b85e57b8769049a171247291fea85cdf4`  
		Last Modified: Tue, 27 Mar 2018 22:46:14 GMT  
		Size: 29.7 MB (29748583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994d7fd0f7c396d55650efb9626403d9944dd3a1c3b335f0afddbc96879a22cc`  
		Last Modified: Tue, 27 Mar 2018 22:46:08 GMT  
		Size: 4.2 KB (4176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84579594c1bbf4763ae60fddb3923b7a3f5a11d7f5e7d6e3ee7b20f824c0f795`  
		Last Modified: Tue, 27 Mar 2018 22:46:08 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806c6d25dfebd5dec66e0da76b3980c552c48739938dd9beb9da6bbac5cfaa75`  
		Last Modified: Tue, 27 Mar 2018 22:46:08 GMT  
		Size: 354.8 KB (354776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f32b7c7c315002ae1f3b317d2574c3d89f1994169438aa9c62cffb5dd89b8fc`  
		Last Modified: Tue, 27 Mar 2018 22:46:07 GMT  
		Size: 430.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8b8301e51241dbeba3f6d7c3eb95b2f2434d13c314fda23f8334a717be2598`  
		Last Modified: Tue, 27 Mar 2018 22:46:11 GMT  
		Size: 70.4 MB (70409103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3bb871c8f51a49cdabd1caaff541d7af851399055560105994a076349926e04`  
		Last Modified: Tue, 27 Mar 2018 22:46:05 GMT  
		Size: 438.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536dd58226b501dbbd3ef9e36a1572494d86a0be8c043f51436332b68ea1bfc7`  
		Last Modified: Tue, 27 Mar 2018 22:46:05 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6950cef828165ed251ac18d1de351de915fe82641d98623a4c3847c37271b020`  
		Last Modified: Tue, 27 Mar 2018 22:46:05 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9203a6852c4bd8f1ecf63317762eb78eb7c28f9d259f36ce15777f864f8adc23`  
		Last Modified: Tue, 27 Mar 2018 22:46:06 GMT  
		Size: 1.6 KB (1553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b73e8b23303de0bd086b4c904913821c771f181f94e63a2396c713d1fc4dea`  
		Last Modified: Tue, 27 Mar 2018 22:46:05 GMT  
		Size: 2.6 KB (2627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
