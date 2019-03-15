<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:4.3.1.12`](#aerospike43112)
-	[`aerospike:4.4.0.13`](#aerospike44013)
-	[`aerospike:4.5.0.8`](#aerospike4508)
-	[`aerospike:latest`](#aerospikelatest)

## `aerospike:4.3.1.12`

```console
$ docker pull aerospike@sha256:4ecd67ddb12cab6e89ce353bf22d6c3b1cef5fcdaa796eeb9256013b2d888b50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.3.1.12` - linux; amd64

```console
$ docker pull aerospike@sha256:e203ee7c82c109b2a86c5e16fe7e867f1ae2670c39b279a281bf822a24d386a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49286908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22cabb8c7e852860611134a2a90998f129a99ee5f96f4ebfef2859777ec0d0fd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Fri, 15 Mar 2019 00:20:17 GMT
ENV AEROSPIKE_VERSION=4.3.1.12
# Fri, 15 Mar 2019 00:20:18 GMT
ENV AEROSPIKE_SHA256=7c5351a9a8399e7b0a2cb40452699d08721a24abfb74e88342ac6b83e10c92c3
# Fri, 15 Mar 2019 00:20:35 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Fri, 15 Mar 2019 00:20:35 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Fri, 15 Mar 2019 00:20:35 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Fri, 15 Mar 2019 00:20:35 GMT
VOLUME [/opt/aerospike/data]
# Fri, 15 Mar 2019 00:20:35 GMT
EXPOSE 3000 3001 3002 3003
# Fri, 15 Mar 2019 00:20:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Mar 2019 00:20:36 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7a49d860415067dda296ad54f551b83530b9561f0b723b44ba88306e244a8c`  
		Last Modified: Fri, 15 Mar 2019 00:21:08 GMT  
		Size: 26.8 MB (26788878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ebc3fa3b244d0354e1545ffb18d0a9ba79bc6dfc80f6a550e28be74c85aaf2`  
		Last Modified: Fri, 15 Mar 2019 00:21:03 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da99e85757f5c0f37f8fbfa6459fccb4402ae79226426723b3607b62b8bb930`  
		Last Modified: Fri, 15 Mar 2019 00:21:03 GMT  
		Size: 885.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.4.0.13`

```console
$ docker pull aerospike@sha256:95f90ebf87005cac4fab8429320ac02462cec8dd2715c255925ed9c244bc5404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.4.0.13` - linux; amd64

```console
$ docker pull aerospike@sha256:63322fb5bd85ff8877fb22c51cbc6ee3deed435fef3c7da99310a5b9a7275878
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49250678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e4ebfc704f7fa95d148398ea9c0c9c270ede62aef393215c76b06f3e03e856f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Fri, 15 Mar 2019 00:19:54 GMT
ENV AEROSPIKE_VERSION=4.4.0.13
# Fri, 15 Mar 2019 00:19:54 GMT
ENV AEROSPIKE_SHA256=861dc08575da79aa8ebf2943abde1936e306d484145069957aed36d392a304e1
# Fri, 15 Mar 2019 00:20:13 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Fri, 15 Mar 2019 00:20:13 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Fri, 15 Mar 2019 00:20:13 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Fri, 15 Mar 2019 00:20:13 GMT
VOLUME [/opt/aerospike/data]
# Fri, 15 Mar 2019 00:20:13 GMT
EXPOSE 3000 3001 3002 3003
# Fri, 15 Mar 2019 00:20:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Mar 2019 00:20:14 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ff21183a6f545c94ae417ad33d403ec5b6220c1f868dd2e65f88ad6d02b909`  
		Last Modified: Fri, 15 Mar 2019 00:21:00 GMT  
		Size: 26.8 MB (26752648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b32121e9ef4d0da906738c70e81acf6e047ca9d0b518d10b7272b6dd946d47e`  
		Last Modified: Fri, 15 Mar 2019 00:20:53 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253c886c8e0e0f14d12ef76aefc73c62548be0841deaa4710108ff9ed51bb75d`  
		Last Modified: Fri, 15 Mar 2019 00:20:53 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.5.0.8`

```console
$ docker pull aerospike@sha256:566c9a729d03574305a58b3b88c68f4da65b72a1a70ac59215ea92f9d4c5518f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.5.0.8` - linux; amd64

```console
$ docker pull aerospike@sha256:122546118e5173ed07136fd8812283e23c84778bc85a9654d227dbe8aecdb398
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49256927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6350d210598cbdfb9ec179f34c1715a028d04b7b2aa7464d0fe17c33fb0f3212`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Fri, 15 Mar 2019 00:19:17 GMT
ENV AEROSPIKE_VERSION=4.5.0.8
# Fri, 15 Mar 2019 00:19:17 GMT
ENV AEROSPIKE_SHA256=0dfc7207921659cd852c962a746eecd99bea345e53f6c72f56302ecfbe7d2db1
# Fri, 15 Mar 2019 00:19:49 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Fri, 15 Mar 2019 00:19:49 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Fri, 15 Mar 2019 00:19:49 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Fri, 15 Mar 2019 00:19:49 GMT
VOLUME [/opt/aerospike/data]
# Fri, 15 Mar 2019 00:19:49 GMT
EXPOSE 3000 3001 3002 3003
# Fri, 15 Mar 2019 00:19:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Mar 2019 00:19:50 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3a4943c296a4d7d8ef7d6e40f3f68dc15bb90ea57575728606615a6ff1ffaf`  
		Last Modified: Fri, 15 Mar 2019 00:20:49 GMT  
		Size: 26.8 MB (26758897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb39a16cbefc9457d898ac0568b12f96d5c7190b21812fa4e6a78b213aa4152`  
		Last Modified: Fri, 15 Mar 2019 00:20:44 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:675e78b815cfcb1862938c1e3e12fb282c8dd79fccce5bf5ab39138f30b2ae84`  
		Last Modified: Fri, 15 Mar 2019 00:20:44 GMT  
		Size: 885.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:latest`

```console
$ docker pull aerospike@sha256:566c9a729d03574305a58b3b88c68f4da65b72a1a70ac59215ea92f9d4c5518f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

```console
$ docker pull aerospike@sha256:122546118e5173ed07136fd8812283e23c84778bc85a9654d227dbe8aecdb398
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49256927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6350d210598cbdfb9ec179f34c1715a028d04b7b2aa7464d0fe17c33fb0f3212`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Fri, 15 Mar 2019 00:19:17 GMT
ENV AEROSPIKE_VERSION=4.5.0.8
# Fri, 15 Mar 2019 00:19:17 GMT
ENV AEROSPIKE_SHA256=0dfc7207921659cd852c962a746eecd99bea345e53f6c72f56302ecfbe7d2db1
# Fri, 15 Mar 2019 00:19:49 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Fri, 15 Mar 2019 00:19:49 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Fri, 15 Mar 2019 00:19:49 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Fri, 15 Mar 2019 00:19:49 GMT
VOLUME [/opt/aerospike/data]
# Fri, 15 Mar 2019 00:19:49 GMT
EXPOSE 3000 3001 3002 3003
# Fri, 15 Mar 2019 00:19:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Mar 2019 00:19:50 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3a4943c296a4d7d8ef7d6e40f3f68dc15bb90ea57575728606615a6ff1ffaf`  
		Last Modified: Fri, 15 Mar 2019 00:20:49 GMT  
		Size: 26.8 MB (26758897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb39a16cbefc9457d898ac0568b12f96d5c7190b21812fa4e6a78b213aa4152`  
		Last Modified: Fri, 15 Mar 2019 00:20:44 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:675e78b815cfcb1862938c1e3e12fb282c8dd79fccce5bf5ab39138f30b2ae84`  
		Last Modified: Fri, 15 Mar 2019 00:20:44 GMT  
		Size: 885.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
