<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jenkins`

-	[`jenkins:2.60.3`](#jenkins2603)
-	[`jenkins:2.60.3-alpine`](#jenkins2603-alpine)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:latest`](#jenkinslatest)

## `jenkins:2.60.3`

```console
$ docker pull jenkins@sha256:7f78cad904da7f3cbc3621b46660aba699940964f1c5bbea0dffeba58d9ec357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jenkins:2.60.3` - linux; amd64

```console
$ docker pull jenkins@sha256:88c2c82c9033b5a6a053582c933b97785cdfca26af726cb3b483cf690837df17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.5 MB (366485140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726e21344c0eac4ee812a82452445ec3a8e9287d8520af5bd8f4a9e97fffeb05`
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
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:09:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
ENV JAVA_VERSION=8u151
# Wed, 14 Mar 2018 11:09:02 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 14 Mar 2018 11:09:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 14 Mar 2018 11:09:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 14 Mar 2018 11:09:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Mar 2018 08:53:21 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 08:53:21 GMT
ARG user=jenkins
# Thu, 15 Mar 2018 08:53:21 GMT
ARG group=jenkins
# Thu, 15 Mar 2018 08:53:22 GMT
ARG uid=1000
# Thu, 15 Mar 2018 08:53:22 GMT
ARG gid=1000
# Thu, 15 Mar 2018 08:53:22 GMT
ARG http_port=8080
# Thu, 15 Mar 2018 08:53:22 GMT
ARG agent_port=50000
# Thu, 15 Mar 2018 08:53:23 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Thu, 15 Mar 2018 08:53:23 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Thu, 15 Mar 2018 08:53:24 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Thu, 15 Mar 2018 08:53:24 GMT
VOLUME [/var/jenkins_home]
# Thu, 15 Mar 2018 08:53:25 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Thu, 15 Mar 2018 08:53:26 GMT
ENV TINI_VERSION=0.14.0
# Thu, 15 Mar 2018 08:53:26 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Thu, 15 Mar 2018 08:53:29 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Thu, 15 Mar 2018 08:53:30 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Thu, 15 Mar 2018 08:53:30 GMT
ARG JENKINS_VERSION
# Thu, 15 Mar 2018 08:53:31 GMT
ENV JENKINS_VERSION=2.60.3
# Thu, 15 Mar 2018 08:53:31 GMT
ARG JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a
# Thu, 15 Mar 2018 08:53:31 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war
# Thu, 15 Mar 2018 08:53:35 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Thu, 15 Mar 2018 08:53:36 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Thu, 15 Mar 2018 08:53:36 GMT
ENV JENKINS_UC_EXPERIMENTAL=https://updates.jenkins.io/experimental
# Thu, 15 Mar 2018 08:53:37 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Thu, 15 Mar 2018 08:53:38 GMT
EXPOSE 8080/tcp
# Thu, 15 Mar 2018 08:53:38 GMT
EXPOSE 50000/tcp
# Thu, 15 Mar 2018 08:53:39 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Thu, 15 Mar 2018 08:53:39 GMT
USER [jenkins]
# Thu, 15 Mar 2018 08:53:40 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Thu, 15 Mar 2018 08:53:40 GMT
COPY file:1a774b24a2bbd880e2ce47b3d642b8c04bbdbede0f2256dbdb11f62b65f696ba in /usr/local/bin/jenkins.sh 
# Thu, 15 Mar 2018 08:53:41 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Thu, 15 Mar 2018 08:53:41 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Thu, 15 Mar 2018 08:53:42 GMT
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
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da44f64ae9991a9e8cb7c2af4dfd63608bd4026552b2b6a7f523dcfac960e1ac`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 892.2 KB (892173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbc7b377a9155696eb0b684bd1999bc43937918552d73fd9697ea50ef46528a`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c70b3786f72e5255ccd51e27840d1c853a17561b5e94a4359b17d27494d50`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48010c1717c7374d2efce05bb930227117c0d9a719e7d49027771994fb917d37`  
		Last Modified: Wed, 14 Mar 2018 12:50:43 GMT  
		Size: 182.9 MB (182903460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a6123cacadfb839a6fcd170146a61303ef449c002ac819acb1d7662751804f9`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 272.1 KB (272086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3444bd17a027af3309952f695a4e67ae306937d624680feb85d30fa388f142c`  
		Last Modified: Thu, 15 Mar 2018 08:54:13 GMT  
		Size: 1.0 MB (1039162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e9d0bb84c75d3c3ac8970a3fdcbc114389d80c831b3faae50b05ace2f27d4f7`  
		Last Modified: Thu, 15 Mar 2018 08:54:09 GMT  
		Size: 4.2 KB (4187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d714101e9cc52a1c8493cbe0ea269e83c27b513a58e972c9915e799b8b232d7`  
		Last Modified: Thu, 15 Mar 2018 08:54:08 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3ec24d6c74050617132bac140de9239a0e0fed0d9ab823ce9fba1095b60322`  
		Last Modified: Thu, 15 Mar 2018 08:54:09 GMT  
		Size: 354.8 KB (354775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb041b4eb1a669d5842d10d9001df2804696bb638da664e3e01fe3b6e1fa002`  
		Last Modified: Thu, 15 Mar 2018 08:54:08 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3aa8c401c2e48d277b1b36b90961f0655979e144709cf823830e52a72dcdf84`  
		Last Modified: Thu, 15 Mar 2018 08:54:13 GMT  
		Size: 70.4 MB (70409103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d50af7535d2ed8c4d727cde0d8f43343f8ea7d7fffc5cf4a48e8dee648f51d`  
		Last Modified: Thu, 15 Mar 2018 08:54:06 GMT  
		Size: 441.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbab67264a4debde6b3d26b583fc5d778c11fdadfe8e8f7bd5da7102cfca3292`  
		Last Modified: Thu, 15 Mar 2018 08:54:06 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7119a7ca96cc8c63ad60ddb24ad0b13cf6578cac30ac417a08f0a92483c667`  
		Last Modified: Thu, 15 Mar 2018 08:54:07 GMT  
		Size: 838.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226fe4c0e8f3e1b6c5f1027d6bba4ab794ff18723892a28ce3dbe5ca78467af1`  
		Last Modified: Thu, 15 Mar 2018 08:54:05 GMT  
		Size: 1.6 KB (1554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67c58e071c07f438425e29b04f8bba41d941259453bde87afe00d9545bc10f1`  
		Last Modified: Thu, 15 Mar 2018 08:54:06 GMT  
		Size: 2.6 KB (2627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.60.3-alpine`

```console
$ docker pull jenkins@sha256:dfa2198cc4ad223c06dacb11420b0dda20cf79b3308764ac10fe8f458524210f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jenkins:2.60.3-alpine` - linux; amd64

```console
$ docker pull jenkins@sha256:22531547b41d24f3549fd199d3e0ba0caa3e7f89b83adc36849ba64703018e83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168030358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad007d332533e8fe0fed1ee9b0053d7d09787de7e90886778421b20e3189d68`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 23:51:26 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Sat, 04 Nov 2017 23:51:26 GMT
ARG user=jenkins
# Sat, 04 Nov 2017 23:51:26 GMT
ARG group=jenkins
# Sat, 04 Nov 2017 23:51:26 GMT
ARG uid=1000
# Sat, 04 Nov 2017 23:51:27 GMT
ARG gid=1000
# Sat, 04 Nov 2017 23:51:27 GMT
ARG http_port=8080
# Sat, 04 Nov 2017 23:51:27 GMT
ARG agent_port=50000
# Sat, 04 Nov 2017 23:51:27 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Sat, 04 Nov 2017 23:51:27 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Sat, 04 Nov 2017 23:51:28 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Sat, 04 Nov 2017 23:51:28 GMT
VOLUME [/var/jenkins_home]
# Sat, 04 Nov 2017 23:51:29 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Sat, 04 Nov 2017 23:51:29 GMT
ENV TINI_VERSION=0.14.0
# Sat, 04 Nov 2017 23:51:29 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Sat, 04 Nov 2017 23:51:31 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Sat, 04 Nov 2017 23:51:33 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Sat, 04 Nov 2017 23:51:33 GMT
ARG JENKINS_VERSION
# Sat, 04 Nov 2017 23:51:34 GMT
ENV JENKINS_VERSION=2.60.3
# Sat, 04 Nov 2017 23:51:34 GMT
ARG JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a
# Sat, 04 Nov 2017 23:51:34 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war
# Sat, 04 Nov 2017 23:51:38 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Sat, 04 Nov 2017 23:51:38 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Sat, 04 Nov 2017 23:51:38 GMT
ENV JENKINS_UC_EXPERIMENTAL=https://updates.jenkins.io/experimental
# Sat, 04 Nov 2017 23:51:39 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Sat, 04 Nov 2017 23:51:39 GMT
EXPOSE 8080/tcp
# Sat, 04 Nov 2017 23:51:39 GMT
EXPOSE 50000/tcp
# Sat, 04 Nov 2017 23:51:39 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Sat, 04 Nov 2017 23:51:39 GMT
USER [jenkins]
# Sat, 04 Nov 2017 23:51:40 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Sat, 04 Nov 2017 23:51:40 GMT
COPY file:1a774b24a2bbd880e2ce47b3d642b8c04bbdbede0f2256dbdb11f62b65f696ba in /usr/local/bin/jenkins.sh 
# Sat, 04 Nov 2017 23:51:40 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Sat, 04 Nov 2017 23:51:40 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Sat, 04 Nov 2017 23:51:41 GMT
COPY file:a4f750618f51f00d2f8268ac43fdd8d8ef5ce16e1d412afa5a9bc7492a5d975f in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6954cc62bb70ebb5a3e8376cd779b5704d14ac494fffa70c2dfeebcab7c96287`  
		Last Modified: Sat, 04 Nov 2017 23:51:58 GMT  
		Size: 25.3 MB (25285459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bb3b322bbf6c282aca455999c3b7eba6dcb05baecfd5276293ae8b523e7f11`  
		Last Modified: Sat, 04 Nov 2017 23:51:53 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6d7cf36d7950f6ae3639ec2c6cf0783fee64c76420a459d7b4be96533c8615`  
		Last Modified: Sat, 04 Nov 2017 23:51:53 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d58fbab45c9b3fbce7a367be78a99b4abc7baed2664e469368b96de90166486`  
		Last Modified: Sat, 04 Nov 2017 23:51:53 GMT  
		Size: 354.8 KB (354776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e1e3faa6ccd0fc5e11a82dcea5f7c3baf0d5b86f95973c28096afbdf4a8211`  
		Last Modified: Sat, 04 Nov 2017 23:51:53 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11b7ce60662ccac140c46bd2569c371a11595a9b1e5756e7b0babcaeaacd9ed`  
		Last Modified: Sat, 04 Nov 2017 23:51:58 GMT  
		Size: 70.4 MB (70409102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69ee1843314781148fac759a1975f03c668423c8d94d3dd388a250a2d5286dc`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1a36b81d90f773f60568f5cb388bf5c4fb6bf394b14081a6ff9d72ae997f75`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17f7d647644b760426d7c2b88da815a98704a7a9df0bdd482949cf00dc923a3`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 831.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8b02f3281606b02d0de1a52d20bb9d538188dd442b3a5a87ca7fa59bce802b`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 1.6 KB (1551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e4bb5f4ba5cb4331965bb142df9625c0da7f65a9634fd47a27328a436ca00b`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 2.6 KB (2625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:dfa2198cc4ad223c06dacb11420b0dda20cf79b3308764ac10fe8f458524210f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

```console
$ docker pull jenkins@sha256:22531547b41d24f3549fd199d3e0ba0caa3e7f89b83adc36849ba64703018e83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168030358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad007d332533e8fe0fed1ee9b0053d7d09787de7e90886778421b20e3189d68`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 23:51:26 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Sat, 04 Nov 2017 23:51:26 GMT
ARG user=jenkins
# Sat, 04 Nov 2017 23:51:26 GMT
ARG group=jenkins
# Sat, 04 Nov 2017 23:51:26 GMT
ARG uid=1000
# Sat, 04 Nov 2017 23:51:27 GMT
ARG gid=1000
# Sat, 04 Nov 2017 23:51:27 GMT
ARG http_port=8080
# Sat, 04 Nov 2017 23:51:27 GMT
ARG agent_port=50000
# Sat, 04 Nov 2017 23:51:27 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Sat, 04 Nov 2017 23:51:27 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Sat, 04 Nov 2017 23:51:28 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Sat, 04 Nov 2017 23:51:28 GMT
VOLUME [/var/jenkins_home]
# Sat, 04 Nov 2017 23:51:29 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Sat, 04 Nov 2017 23:51:29 GMT
ENV TINI_VERSION=0.14.0
# Sat, 04 Nov 2017 23:51:29 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Sat, 04 Nov 2017 23:51:31 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Sat, 04 Nov 2017 23:51:33 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Sat, 04 Nov 2017 23:51:33 GMT
ARG JENKINS_VERSION
# Sat, 04 Nov 2017 23:51:34 GMT
ENV JENKINS_VERSION=2.60.3
# Sat, 04 Nov 2017 23:51:34 GMT
ARG JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a
# Sat, 04 Nov 2017 23:51:34 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war
# Sat, 04 Nov 2017 23:51:38 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Sat, 04 Nov 2017 23:51:38 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Sat, 04 Nov 2017 23:51:38 GMT
ENV JENKINS_UC_EXPERIMENTAL=https://updates.jenkins.io/experimental
# Sat, 04 Nov 2017 23:51:39 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Sat, 04 Nov 2017 23:51:39 GMT
EXPOSE 8080/tcp
# Sat, 04 Nov 2017 23:51:39 GMT
EXPOSE 50000/tcp
# Sat, 04 Nov 2017 23:51:39 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Sat, 04 Nov 2017 23:51:39 GMT
USER [jenkins]
# Sat, 04 Nov 2017 23:51:40 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Sat, 04 Nov 2017 23:51:40 GMT
COPY file:1a774b24a2bbd880e2ce47b3d642b8c04bbdbede0f2256dbdb11f62b65f696ba in /usr/local/bin/jenkins.sh 
# Sat, 04 Nov 2017 23:51:40 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Sat, 04 Nov 2017 23:51:40 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Sat, 04 Nov 2017 23:51:41 GMT
COPY file:a4f750618f51f00d2f8268ac43fdd8d8ef5ce16e1d412afa5a9bc7492a5d975f in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6954cc62bb70ebb5a3e8376cd779b5704d14ac494fffa70c2dfeebcab7c96287`  
		Last Modified: Sat, 04 Nov 2017 23:51:58 GMT  
		Size: 25.3 MB (25285459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bb3b322bbf6c282aca455999c3b7eba6dcb05baecfd5276293ae8b523e7f11`  
		Last Modified: Sat, 04 Nov 2017 23:51:53 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6d7cf36d7950f6ae3639ec2c6cf0783fee64c76420a459d7b4be96533c8615`  
		Last Modified: Sat, 04 Nov 2017 23:51:53 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d58fbab45c9b3fbce7a367be78a99b4abc7baed2664e469368b96de90166486`  
		Last Modified: Sat, 04 Nov 2017 23:51:53 GMT  
		Size: 354.8 KB (354776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e1e3faa6ccd0fc5e11a82dcea5f7c3baf0d5b86f95973c28096afbdf4a8211`  
		Last Modified: Sat, 04 Nov 2017 23:51:53 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11b7ce60662ccac140c46bd2569c371a11595a9b1e5756e7b0babcaeaacd9ed`  
		Last Modified: Sat, 04 Nov 2017 23:51:58 GMT  
		Size: 70.4 MB (70409102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69ee1843314781148fac759a1975f03c668423c8d94d3dd388a250a2d5286dc`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1a36b81d90f773f60568f5cb388bf5c4fb6bf394b14081a6ff9d72ae997f75`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17f7d647644b760426d7c2b88da815a98704a7a9df0bdd482949cf00dc923a3`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 831.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8b02f3281606b02d0de1a52d20bb9d538188dd442b3a5a87ca7fa59bce802b`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 1.6 KB (1551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e4bb5f4ba5cb4331965bb142df9625c0da7f65a9634fd47a27328a436ca00b`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 2.6 KB (2625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:latest`

```console
$ docker pull jenkins@sha256:7f78cad904da7f3cbc3621b46660aba699940964f1c5bbea0dffeba58d9ec357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

```console
$ docker pull jenkins@sha256:88c2c82c9033b5a6a053582c933b97785cdfca26af726cb3b483cf690837df17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.5 MB (366485140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726e21344c0eac4ee812a82452445ec3a8e9287d8520af5bd8f4a9e97fffeb05`
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
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:09:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
ENV JAVA_VERSION=8u151
# Wed, 14 Mar 2018 11:09:02 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 14 Mar 2018 11:09:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 14 Mar 2018 11:09:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 14 Mar 2018 11:09:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Mar 2018 08:53:21 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 08:53:21 GMT
ARG user=jenkins
# Thu, 15 Mar 2018 08:53:21 GMT
ARG group=jenkins
# Thu, 15 Mar 2018 08:53:22 GMT
ARG uid=1000
# Thu, 15 Mar 2018 08:53:22 GMT
ARG gid=1000
# Thu, 15 Mar 2018 08:53:22 GMT
ARG http_port=8080
# Thu, 15 Mar 2018 08:53:22 GMT
ARG agent_port=50000
# Thu, 15 Mar 2018 08:53:23 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Thu, 15 Mar 2018 08:53:23 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Thu, 15 Mar 2018 08:53:24 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Thu, 15 Mar 2018 08:53:24 GMT
VOLUME [/var/jenkins_home]
# Thu, 15 Mar 2018 08:53:25 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Thu, 15 Mar 2018 08:53:26 GMT
ENV TINI_VERSION=0.14.0
# Thu, 15 Mar 2018 08:53:26 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Thu, 15 Mar 2018 08:53:29 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Thu, 15 Mar 2018 08:53:30 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Thu, 15 Mar 2018 08:53:30 GMT
ARG JENKINS_VERSION
# Thu, 15 Mar 2018 08:53:31 GMT
ENV JENKINS_VERSION=2.60.3
# Thu, 15 Mar 2018 08:53:31 GMT
ARG JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a
# Thu, 15 Mar 2018 08:53:31 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war
# Thu, 15 Mar 2018 08:53:35 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Thu, 15 Mar 2018 08:53:36 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Thu, 15 Mar 2018 08:53:36 GMT
ENV JENKINS_UC_EXPERIMENTAL=https://updates.jenkins.io/experimental
# Thu, 15 Mar 2018 08:53:37 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Thu, 15 Mar 2018 08:53:38 GMT
EXPOSE 8080/tcp
# Thu, 15 Mar 2018 08:53:38 GMT
EXPOSE 50000/tcp
# Thu, 15 Mar 2018 08:53:39 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Thu, 15 Mar 2018 08:53:39 GMT
USER [jenkins]
# Thu, 15 Mar 2018 08:53:40 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Thu, 15 Mar 2018 08:53:40 GMT
COPY file:1a774b24a2bbd880e2ce47b3d642b8c04bbdbede0f2256dbdb11f62b65f696ba in /usr/local/bin/jenkins.sh 
# Thu, 15 Mar 2018 08:53:41 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Thu, 15 Mar 2018 08:53:41 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Thu, 15 Mar 2018 08:53:42 GMT
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
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da44f64ae9991a9e8cb7c2af4dfd63608bd4026552b2b6a7f523dcfac960e1ac`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 892.2 KB (892173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbc7b377a9155696eb0b684bd1999bc43937918552d73fd9697ea50ef46528a`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c70b3786f72e5255ccd51e27840d1c853a17561b5e94a4359b17d27494d50`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48010c1717c7374d2efce05bb930227117c0d9a719e7d49027771994fb917d37`  
		Last Modified: Wed, 14 Mar 2018 12:50:43 GMT  
		Size: 182.9 MB (182903460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a6123cacadfb839a6fcd170146a61303ef449c002ac819acb1d7662751804f9`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 272.1 KB (272086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3444bd17a027af3309952f695a4e67ae306937d624680feb85d30fa388f142c`  
		Last Modified: Thu, 15 Mar 2018 08:54:13 GMT  
		Size: 1.0 MB (1039162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e9d0bb84c75d3c3ac8970a3fdcbc114389d80c831b3faae50b05ace2f27d4f7`  
		Last Modified: Thu, 15 Mar 2018 08:54:09 GMT  
		Size: 4.2 KB (4187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d714101e9cc52a1c8493cbe0ea269e83c27b513a58e972c9915e799b8b232d7`  
		Last Modified: Thu, 15 Mar 2018 08:54:08 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3ec24d6c74050617132bac140de9239a0e0fed0d9ab823ce9fba1095b60322`  
		Last Modified: Thu, 15 Mar 2018 08:54:09 GMT  
		Size: 354.8 KB (354775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb041b4eb1a669d5842d10d9001df2804696bb638da664e3e01fe3b6e1fa002`  
		Last Modified: Thu, 15 Mar 2018 08:54:08 GMT  
		Size: 433.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3aa8c401c2e48d277b1b36b90961f0655979e144709cf823830e52a72dcdf84`  
		Last Modified: Thu, 15 Mar 2018 08:54:13 GMT  
		Size: 70.4 MB (70409103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d50af7535d2ed8c4d727cde0d8f43343f8ea7d7fffc5cf4a48e8dee648f51d`  
		Last Modified: Thu, 15 Mar 2018 08:54:06 GMT  
		Size: 441.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbab67264a4debde6b3d26b583fc5d778c11fdadfe8e8f7bd5da7102cfca3292`  
		Last Modified: Thu, 15 Mar 2018 08:54:06 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7119a7ca96cc8c63ad60ddb24ad0b13cf6578cac30ac417a08f0a92483c667`  
		Last Modified: Thu, 15 Mar 2018 08:54:07 GMT  
		Size: 838.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226fe4c0e8f3e1b6c5f1027d6bba4ab794ff18723892a28ce3dbe5ca78467af1`  
		Last Modified: Thu, 15 Mar 2018 08:54:05 GMT  
		Size: 1.6 KB (1554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67c58e071c07f438425e29b04f8bba41d941259453bde87afe00d9545bc10f1`  
		Last Modified: Thu, 15 Mar 2018 08:54:06 GMT  
		Size: 2.6 KB (2627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
