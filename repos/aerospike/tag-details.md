<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:4.3.1.12`](#aerospike43112)
-	[`aerospike:4.4.0.13`](#aerospike44013)
-	[`aerospike:4.5.0.8`](#aerospike4508)
-	[`aerospike:latest`](#aerospikelatest)

## `aerospike:4.3.1.12`

```console
$ docker pull aerospike@sha256:b32c0053f026e3d95da15bdfa1154cc83fb1ea1e77f26631326246163f067e95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.3.1.12` - linux; amd64

```console
$ docker pull aerospike@sha256:e6f19b06de0d68a0835db9bd6048f561b7f8a8c3c6359f97266243bc5514cb3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49286858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c04f319c1afc95658fb48b01ca8412143e78dc4aa2c7edcc917ba6bd3f1826a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:10:01 GMT
ENV AEROSPIKE_VERSION=4.3.1.12
# Tue, 26 Mar 2019 23:10:01 GMT
ENV AEROSPIKE_SHA256=7c5351a9a8399e7b0a2cb40452699d08721a24abfb74e88342ac6b83e10c92c3
# Tue, 26 Mar 2019 23:10:19 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Tue, 26 Mar 2019 23:10:19 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Tue, 26 Mar 2019 23:10:20 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Tue, 26 Mar 2019 23:10:20 GMT
VOLUME [/opt/aerospike/data]
# Tue, 26 Mar 2019 23:10:20 GMT
EXPOSE 3000 3001 3002 3003
# Tue, 26 Mar 2019 23:10:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Mar 2019 23:10:20 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccfcaf2b3bfa30e35b763ee2d94988db663d1417a0c1138bafb342041115ae7`  
		Last Modified: Tue, 26 Mar 2019 23:10:49 GMT  
		Size: 26.8 MB (26788814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6875199e71bedef942cb7448aabc4a84930980e0c111e95ae943089d32dc1252`  
		Last Modified: Tue, 26 Mar 2019 23:10:44 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3f138a7b8d5128ec584f86945e4adaa7e6a8172f94516cf27b12151b3898f4`  
		Last Modified: Tue, 26 Mar 2019 23:10:44 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.4.0.13`

```console
$ docker pull aerospike@sha256:15671ab1f3165b2efb8e0e77b8e6bd5cd860c98d81a5f49bdc08cd8a3a417fd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.4.0.13` - linux; amd64

```console
$ docker pull aerospike@sha256:dd4998db96351d0031f9db8308aff7f3aa7883af340ca4df89b9cfd753179d36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49250621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f90dc276e3184317f7b31116299426dc3e00c9efa5767a8fc2b7836f8b8bb9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:09:38 GMT
ENV AEROSPIKE_VERSION=4.4.0.13
# Tue, 26 Mar 2019 23:09:38 GMT
ENV AEROSPIKE_SHA256=861dc08575da79aa8ebf2943abde1936e306d484145069957aed36d392a304e1
# Tue, 26 Mar 2019 23:09:56 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Tue, 26 Mar 2019 23:09:56 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Tue, 26 Mar 2019 23:09:56 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Tue, 26 Mar 2019 23:09:56 GMT
VOLUME [/opt/aerospike/data]
# Tue, 26 Mar 2019 23:09:57 GMT
EXPOSE 3000 3001 3002 3003
# Tue, 26 Mar 2019 23:09:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Mar 2019 23:09:57 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f362cbac19438aedb5b0c00476c7d1d68456dc9bd9f06afa3aa713d800e28a0`  
		Last Modified: Tue, 26 Mar 2019 23:10:41 GMT  
		Size: 26.8 MB (26752574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae649d8cf7f04e038d0bb4d1025db42121611acfd853f92def255a1f6d29677`  
		Last Modified: Tue, 26 Mar 2019 23:10:37 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d60ab900c60827bc5067a8ad45b7744f4a15d555bd3f033491c123dc87277d`  
		Last Modified: Tue, 26 Mar 2019 23:10:37 GMT  
		Size: 885.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.5.0.8`

```console
$ docker pull aerospike@sha256:66b83bbbada6687eb701bcc2b1f052559d82d4158506f4ba02464d3ec1a3a07e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.5.0.8` - linux; amd64

```console
$ docker pull aerospike@sha256:34e46fd6e339c611365c0da2933ffb8f5efc656fed7763de4a86cfce2eeda97d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49256955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee850f0fbe8e32d98556ed6fd9530d4b214986bd6a19bf4d168451abf5a998f6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:09:15 GMT
ENV AEROSPIKE_VERSION=4.5.0.8
# Tue, 26 Mar 2019 23:09:16 GMT
ENV AEROSPIKE_SHA256=0dfc7207921659cd852c962a746eecd99bea345e53f6c72f56302ecfbe7d2db1
# Tue, 26 Mar 2019 23:09:34 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Tue, 26 Mar 2019 23:09:34 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Tue, 26 Mar 2019 23:09:34 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Tue, 26 Mar 2019 23:09:34 GMT
VOLUME [/opt/aerospike/data]
# Tue, 26 Mar 2019 23:09:34 GMT
EXPOSE 3000 3001 3002 3003
# Tue, 26 Mar 2019 23:09:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Mar 2019 23:09:35 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e60b2f19a5859016ce4846e083d63fc33b709c6ab3b1e6a3cffd1ce9d87458`  
		Last Modified: Tue, 26 Mar 2019 23:10:34 GMT  
		Size: 26.8 MB (26758914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e71978f8872891c9af0338e4ed6213bcdf0c790bfccca2c06b08586f07331d`  
		Last Modified: Tue, 26 Mar 2019 23:10:28 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87940d99bb7ae6b29d4c7f703889f1e74c2b53bdfce0276d30788db7941d9f18`  
		Last Modified: Tue, 26 Mar 2019 23:10:28 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:latest`

```console
$ docker pull aerospike@sha256:66b83bbbada6687eb701bcc2b1f052559d82d4158506f4ba02464d3ec1a3a07e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

```console
$ docker pull aerospike@sha256:34e46fd6e339c611365c0da2933ffb8f5efc656fed7763de4a86cfce2eeda97d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49256955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee850f0fbe8e32d98556ed6fd9530d4b214986bd6a19bf4d168451abf5a998f6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:09:15 GMT
ENV AEROSPIKE_VERSION=4.5.0.8
# Tue, 26 Mar 2019 23:09:16 GMT
ENV AEROSPIKE_SHA256=0dfc7207921659cd852c962a746eecd99bea345e53f6c72f56302ecfbe7d2db1
# Tue, 26 Mar 2019 23:09:34 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Tue, 26 Mar 2019 23:09:34 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Tue, 26 Mar 2019 23:09:34 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Tue, 26 Mar 2019 23:09:34 GMT
VOLUME [/opt/aerospike/data]
# Tue, 26 Mar 2019 23:09:34 GMT
EXPOSE 3000 3001 3002 3003
# Tue, 26 Mar 2019 23:09:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Mar 2019 23:09:35 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e60b2f19a5859016ce4846e083d63fc33b709c6ab3b1e6a3cffd1ce9d87458`  
		Last Modified: Tue, 26 Mar 2019 23:10:34 GMT  
		Size: 26.8 MB (26758914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e71978f8872891c9af0338e4ed6213bcdf0c790bfccca2c06b08586f07331d`  
		Last Modified: Tue, 26 Mar 2019 23:10:28 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87940d99bb7ae6b29d4c7f703889f1e74c2b53bdfce0276d30788db7941d9f18`  
		Last Modified: Tue, 26 Mar 2019 23:10:28 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
