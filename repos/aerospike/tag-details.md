<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:4.4.0.15`](#aerospike44015)
-	[`aerospike:4.5.1.7`](#aerospike4517)
-	[`aerospike:4.5.2.2`](#aerospike4522)
-	[`aerospike:latest`](#aerospikelatest)

## `aerospike:4.4.0.15`

```console
$ docker pull aerospike@sha256:e902c490c27e334cc6fe0ab9344d89f4a36324df8c8d946315c039dc0383c45b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.4.0.15` - linux; amd64

```console
$ docker pull aerospike@sha256:71a179e608af7336f43c651c274fe0cce184284e32f277c360670af15c34c562
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49248795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e077ff41f11047adf97df8cb678757c497dd5f7ebb8c45977e2d6dcbc314ae92`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Sat, 11 May 2019 00:03:38 GMT
ENV AEROSPIKE_VERSION=4.4.0.15
# Sat, 11 May 2019 00:03:38 GMT
ENV AEROSPIKE_SHA256=442c98e4c7a0c64ede0bf6733ddd167b9facdcef4d87f4a357183d67335f15d7
# Sat, 11 May 2019 00:03:55 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Sat, 11 May 2019 00:03:55 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Sat, 11 May 2019 00:03:55 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Sat, 11 May 2019 00:03:56 GMT
VOLUME [/opt/aerospike/data]
# Sat, 11 May 2019 00:03:56 GMT
EXPOSE 3000 3001 3002 3003
# Sat, 11 May 2019 00:03:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 00:03:56 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd90310ef3bac94d70c990ac2cbda3e1502ab2f57abb4ea0d30ef5f9b7d46c3`  
		Last Modified: Sat, 11 May 2019 00:04:41 GMT  
		Size: 26.8 MB (26757450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0fa1b20789dca4dcd1d644ee48b076bfca7ce0b2ce2cde12661f322aaeb19f`  
		Last Modified: Sat, 11 May 2019 00:04:37 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c92b32cae1711269477a5f01977764c8bb70afbfe9d789ffd7a6fffd3342c2`  
		Last Modified: Sat, 11 May 2019 00:04:36 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.5.1.7`

```console
$ docker pull aerospike@sha256:4719250326072488c2eda6694cb4d3bf73d628d51da4f25b7aa60173949165ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.5.1.7` - linux; amd64

```console
$ docker pull aerospike@sha256:1ef3d5a058d29ae7d412abecdd4238297ecb5782c26e25122e0e1712b35ace6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48679305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02fe882f76896cbc04409ed76ce83bd67f1002488545aa1ec2156d5dea661d1f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Sat, 11 May 2019 00:04:01 GMT
ENV AEROSPIKE_VERSION=4.5.1.7
# Sat, 11 May 2019 00:04:01 GMT
ENV AEROSPIKE_SHA256=ebbd904b6a11c88068b009d4a32eb27dc026bb489b665f619739f02b6527f554
# Sat, 11 May 2019 00:04:18 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Sat, 11 May 2019 00:04:18 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Sat, 11 May 2019 00:04:18 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Sat, 11 May 2019 00:04:18 GMT
VOLUME [/opt/aerospike/data]
# Sat, 11 May 2019 00:04:18 GMT
EXPOSE 3000 3001 3002 3003
# Sat, 11 May 2019 00:04:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 00:04:19 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d560e4933dcdaace7fb7c1d9a572a39724188c7880a19ddaa867dcc4803cb9`  
		Last Modified: Sat, 11 May 2019 00:04:49 GMT  
		Size: 26.2 MB (26187959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8933b586734f92578d0b08f85bf82769100ebfb98946cf823f6032e21ff1f6`  
		Last Modified: Sat, 11 May 2019 00:04:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99642b72b786db0a0af0611c6a94f75b3e629bf22a55c1bb2938b62a0247ece8`  
		Last Modified: Sat, 11 May 2019 00:04:44 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.5.2.2`

```console
$ docker pull aerospike@sha256:0a05a9c4c3a42cea3212ec2f1a3b36855c769f53aac9b77eb752fd2e426ffc48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.5.2.2` - linux; amd64

```console
$ docker pull aerospike@sha256:a470fa490770ec4dc170523c59d1817c7fc8b2317c21d841b228c0ccc9bc38a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48689813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743890cbbe792f207012c7d9b60c9759dd8ecc7ac9857b4f332f9dff1ca76e48`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Sat, 11 May 2019 00:03:11 GMT
ENV AEROSPIKE_VERSION=4.5.2.2
# Sat, 11 May 2019 00:03:11 GMT
ENV AEROSPIKE_SHA256=7bae8c7cdbb6604b841f9b7d27f4f8baf5ddc84378e0206e0feff545cd9b67f8
# Sat, 11 May 2019 00:03:32 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Sat, 11 May 2019 00:03:33 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Sat, 11 May 2019 00:03:33 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Sat, 11 May 2019 00:03:33 GMT
VOLUME [/opt/aerospike/data]
# Sat, 11 May 2019 00:03:33 GMT
EXPOSE 3000 3001 3002 3003
# Sat, 11 May 2019 00:03:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 00:03:34 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabaf4f0463661321854a3b0727b375fab9cd1c6619b2086b85a4497f02b405e`  
		Last Modified: Sat, 11 May 2019 00:04:33 GMT  
		Size: 26.2 MB (26198466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a857713759dc1c11d592c60f861df86d69cd4e088e2d28e2802bc5f8e5d7a690`  
		Last Modified: Sat, 11 May 2019 00:04:28 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9f89f9a310daa9af789024919e31a5c25dcc93e0fc3c6cadf2e5b11839d3ff`  
		Last Modified: Sat, 11 May 2019 00:04:28 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:latest`

```console
$ docker pull aerospike@sha256:0a05a9c4c3a42cea3212ec2f1a3b36855c769f53aac9b77eb752fd2e426ffc48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

```console
$ docker pull aerospike@sha256:a470fa490770ec4dc170523c59d1817c7fc8b2317c21d841b228c0ccc9bc38a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48689813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743890cbbe792f207012c7d9b60c9759dd8ecc7ac9857b4f332f9dff1ca76e48`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Sat, 11 May 2019 00:03:11 GMT
ENV AEROSPIKE_VERSION=4.5.2.2
# Sat, 11 May 2019 00:03:11 GMT
ENV AEROSPIKE_SHA256=7bae8c7cdbb6604b841f9b7d27f4f8baf5ddc84378e0206e0feff545cd9b67f8
# Sat, 11 May 2019 00:03:32 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Sat, 11 May 2019 00:03:33 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Sat, 11 May 2019 00:03:33 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Sat, 11 May 2019 00:03:33 GMT
VOLUME [/opt/aerospike/data]
# Sat, 11 May 2019 00:03:33 GMT
EXPOSE 3000 3001 3002 3003
# Sat, 11 May 2019 00:03:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 11 May 2019 00:03:34 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabaf4f0463661321854a3b0727b375fab9cd1c6619b2086b85a4497f02b405e`  
		Last Modified: Sat, 11 May 2019 00:04:33 GMT  
		Size: 26.2 MB (26198466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a857713759dc1c11d592c60f861df86d69cd4e088e2d28e2802bc5f8e5d7a690`  
		Last Modified: Sat, 11 May 2019 00:04:28 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9f89f9a310daa9af789024919e31a5c25dcc93e0fc3c6cadf2e5b11839d3ff`  
		Last Modified: Sat, 11 May 2019 00:04:28 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
