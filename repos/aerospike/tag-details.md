<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:4.3.1.8`](#aerospike4318)
-	[`aerospike:4.4.0.8`](#aerospike4408)
-	[`aerospike:4.5.0.5`](#aerospike4505)
-	[`aerospike:latest`](#aerospikelatest)

## `aerospike:4.3.1.8`

```console
$ docker pull aerospike@sha256:8578ac346e85b0c06289e03c69d213d39bf358762ff400e270a9be74d73ad18b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.3.1.8` - linux; amd64

```console
$ docker pull aerospike@sha256:76e5ce2f44d98fcca64a6ea73e34725e4b9e34b09967e17823e37be6a23a0fa5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49284501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd37b59d3161bb65c11f52e6dc006145ea98c8db6a8fbdfc437ca78e9b2fae0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:18:27 GMT
ENV AEROSPIKE_VERSION=4.3.1.8
# Tue, 05 Mar 2019 03:18:27 GMT
ENV AEROSPIKE_SHA256=63df952ad6dc031749d09322091760ba5836b6921b6004cb5b7d14c292591380
# Tue, 05 Mar 2019 03:18:44 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Tue, 05 Mar 2019 03:18:44 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Tue, 05 Mar 2019 03:18:44 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Tue, 05 Mar 2019 03:18:45 GMT
VOLUME [/opt/aerospike/data]
# Tue, 05 Mar 2019 03:18:45 GMT
EXPOSE 3000 3001 3002 3003
# Tue, 05 Mar 2019 03:18:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 03:18:45 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac74e084d96f8fb3b094fbc95a3c42a0f885a32e24e1a41d38b6f89fe766593`  
		Last Modified: Tue, 05 Mar 2019 03:19:23 GMT  
		Size: 26.8 MB (26786472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7162e81c50b2380237640a94b2c0dcf1c80a5c0983be4d17f288c8d90ca3f021`  
		Last Modified: Tue, 05 Mar 2019 03:19:16 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdcdcbe1cdcc49a739e4eee59c2c5c883cbeade87e3a30b74a8869b398bc5552`  
		Last Modified: Tue, 05 Mar 2019 03:19:16 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.4.0.8`

```console
$ docker pull aerospike@sha256:6098e950bee24f4f7a7719b448ce90fdaca4e828de122a1dda75573686e878ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.4.0.8` - linux; amd64

```console
$ docker pull aerospike@sha256:b0614d0f35009f53071cc0ef5eb2bfeb987693965cb2a9dee1de8d2c850a203d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49248157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205bcdfe3594a218f74f13e34758746ba16e33470724b5c09bc4e9187d201722`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:18:00 GMT
ENV AEROSPIKE_VERSION=4.4.0.8
# Tue, 05 Mar 2019 03:18:00 GMT
ENV AEROSPIKE_SHA256=d9fe9642346e8ada2fe0c1f621f49eb9a5be12a91fee72e74a9391de9bab6f58
# Tue, 05 Mar 2019 03:18:18 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Tue, 05 Mar 2019 03:18:19 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Tue, 05 Mar 2019 03:18:19 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Tue, 05 Mar 2019 03:18:19 GMT
VOLUME [/opt/aerospike/data]
# Tue, 05 Mar 2019 03:18:20 GMT
EXPOSE 3000 3001 3002 3003
# Tue, 05 Mar 2019 03:18:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 03:18:20 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7432e07465285b29ad1adc61a833fc25a5a993656b9b5745f6559570e347cbf5`  
		Last Modified: Tue, 05 Mar 2019 03:19:13 GMT  
		Size: 26.8 MB (26750127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d627e35cb6baca177de973ebef415e820742619fbb4640edc01534aacde462d9`  
		Last Modified: Tue, 05 Mar 2019 03:19:06 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17be8a2515e46b976c2dace30e28cd1ebfaa3141a289d6e29c37936c89801cdd`  
		Last Modified: Tue, 05 Mar 2019 03:19:06 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.5.0.5`

```console
$ docker pull aerospike@sha256:004a6eab46597db4f77552b85d625f6cac5d24d49920e4be970d4a19afb431fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.5.0.5` - linux; amd64

```console
$ docker pull aerospike@sha256:ff950c781c4ce06d6196725176a44fbfa125b63c0d8d877a381aed732de9338f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49255224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97287bee110c72fe72b81da623f4425123ffd5c4005ce613acdbe89902e96095`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:17:33 GMT
ENV AEROSPIKE_VERSION=4.5.0.5
# Tue, 05 Mar 2019 03:17:33 GMT
ENV AEROSPIKE_SHA256=c1062f496cb3e16a22df31d87a04aeda5f1294d30208e25477d51c8973f0e6e6
# Tue, 05 Mar 2019 03:17:51 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Tue, 05 Mar 2019 03:17:51 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Tue, 05 Mar 2019 03:17:52 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Tue, 05 Mar 2019 03:17:52 GMT
VOLUME [/opt/aerospike/data]
# Tue, 05 Mar 2019 03:17:52 GMT
EXPOSE 3000 3001 3002 3003
# Tue, 05 Mar 2019 03:17:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 03:17:53 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48eaea56337739a6dccb4cccf981f1836634df0be71343db9a7ff56decbbb23f`  
		Last Modified: Tue, 05 Mar 2019 03:19:02 GMT  
		Size: 26.8 MB (26757195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136864c6e114a3f2fda3b2ddf2f18df6b9c669de059e1a7b2ecf08eb9a8963dc`  
		Last Modified: Tue, 05 Mar 2019 03:18:55 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:503c17f09a17b6c1b6338fbb27ea0991784a2b975df2caf23514492a85a109c8`  
		Last Modified: Tue, 05 Mar 2019 03:18:55 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:latest`

```console
$ docker pull aerospike@sha256:004a6eab46597db4f77552b85d625f6cac5d24d49920e4be970d4a19afb431fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

```console
$ docker pull aerospike@sha256:ff950c781c4ce06d6196725176a44fbfa125b63c0d8d877a381aed732de9338f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49255224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97287bee110c72fe72b81da623f4425123ffd5c4005ce613acdbe89902e96095`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:17:33 GMT
ENV AEROSPIKE_VERSION=4.5.0.5
# Tue, 05 Mar 2019 03:17:33 GMT
ENV AEROSPIKE_SHA256=c1062f496cb3e16a22df31d87a04aeda5f1294d30208e25477d51c8973f0e6e6
# Tue, 05 Mar 2019 03:17:51 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Tue, 05 Mar 2019 03:17:51 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Tue, 05 Mar 2019 03:17:52 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Tue, 05 Mar 2019 03:17:52 GMT
VOLUME [/opt/aerospike/data]
# Tue, 05 Mar 2019 03:17:52 GMT
EXPOSE 3000 3001 3002 3003
# Tue, 05 Mar 2019 03:17:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 03:17:53 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48eaea56337739a6dccb4cccf981f1836634df0be71343db9a7ff56decbbb23f`  
		Last Modified: Tue, 05 Mar 2019 03:19:02 GMT  
		Size: 26.8 MB (26757195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136864c6e114a3f2fda3b2ddf2f18df6b9c669de059e1a7b2ecf08eb9a8963dc`  
		Last Modified: Tue, 05 Mar 2019 03:18:55 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:503c17f09a17b6c1b6338fbb27ea0991784a2b975df2caf23514492a85a109c8`  
		Last Modified: Tue, 05 Mar 2019 03:18:55 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
