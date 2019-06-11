<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:4.4.0.15`](#aerospike44015)
-	[`aerospike:4.5.1.7`](#aerospike4517)
-	[`aerospike:4.5.2.2`](#aerospike4522)
-	[`aerospike:latest`](#aerospikelatest)

## `aerospike:4.4.0.15`

```console
$ docker pull aerospike@sha256:1ee30409af239f4560b4b66ff2c12bcbcc9fc86727999c20a4b28303c82ffe76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.4.0.15` - linux; amd64

```console
$ docker pull aerospike@sha256:75f87d18e6e41b496a8ad3417dca87d0f9046d359cce2cb8b7cf58672e189ed2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49249057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5431dccd7f2c5e94e93d54e26199b162773ba4197843141eafd868dd37e67202`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 05:15:23 GMT
ENV AEROSPIKE_VERSION=4.4.0.15
# Tue, 11 Jun 2019 05:15:24 GMT
ENV AEROSPIKE_SHA256=442c98e4c7a0c64ede0bf6733ddd167b9facdcef4d87f4a357183d67335f15d7
# Tue, 11 Jun 2019 05:15:52 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Tue, 11 Jun 2019 05:15:52 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Tue, 11 Jun 2019 05:15:52 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Tue, 11 Jun 2019 05:15:53 GMT
VOLUME [/opt/aerospike/data]
# Tue, 11 Jun 2019 05:15:53 GMT
EXPOSE 3000 3001 3002 3003
# Tue, 11 Jun 2019 05:15:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 05:15:54 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc26f9bb7ba4cf398c1bf624d27c8417fa311fe95e7f6eee3eafb869c1b387ff`  
		Last Modified: Tue, 11 Jun 2019 05:17:04 GMT  
		Size: 26.8 MB (26757758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e7a3653f739c5fc91d4ff75171d580a1fc41ab12f12ea4c31043c1cac91dca`  
		Last Modified: Tue, 11 Jun 2019 05:16:57 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9282cbb503a44a9cd5b481f452c0491bc405b1371f9320564b45c5b0143d42d3`  
		Last Modified: Tue, 11 Jun 2019 05:16:57 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.5.1.7`

```console
$ docker pull aerospike@sha256:98be94607473834dcb67f66e1cbdd644112bbecec0ca1128eeacb448a240cfea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.5.1.7` - linux; amd64

```console
$ docker pull aerospike@sha256:4a42e2b2335865af3a9ae6b86ae5722a94db7d465f9bac541239bf0e718b14cb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48679351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ade67e04f199c98540f1938986ab1b02489ab8b43cb37f915f074b908174c0ec`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 05:16:01 GMT
ENV AEROSPIKE_VERSION=4.5.1.7
# Tue, 11 Jun 2019 05:16:02 GMT
ENV AEROSPIKE_SHA256=ebbd904b6a11c88068b009d4a32eb27dc026bb489b665f619739f02b6527f554
# Tue, 11 Jun 2019 05:16:31 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Tue, 11 Jun 2019 05:16:32 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Tue, 11 Jun 2019 05:16:32 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Tue, 11 Jun 2019 05:16:32 GMT
VOLUME [/opt/aerospike/data]
# Tue, 11 Jun 2019 05:16:32 GMT
EXPOSE 3000 3001 3002 3003
# Tue, 11 Jun 2019 05:16:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 05:16:33 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8ba3e2035e5a7d8602af580ceab262ac1bec1490e6721d0e33f359a2f2b128`  
		Last Modified: Tue, 11 Jun 2019 05:17:14 GMT  
		Size: 26.2 MB (26188055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6b27ba677633efd7168c1561d9a72fb71e5a60e153cc1e6479e570dfbf688f`  
		Last Modified: Tue, 11 Jun 2019 05:17:08 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa166a46ae20d19658ae3f7b8b3a18009192d56b35b0462e84b21c817fa7081c`  
		Last Modified: Tue, 11 Jun 2019 05:17:08 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.5.2.2`

```console
$ docker pull aerospike@sha256:f37fdce2227239295dce3ee0a66db8fb0c9cdd3a8dde0f23a7116026f31a25dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.5.2.2` - linux; amd64

```console
$ docker pull aerospike@sha256:2d3980034035d9d26b9f4ab111eba35857d8438e8ebc6be8cd2b5cd033c7a7b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48690669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfe6668e2a096a642057a5b1a1bc7a3a4662ef7358dc48a97e0874321b1d6ff0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 05:14:46 GMT
ENV AEROSPIKE_VERSION=4.5.2.2
# Tue, 11 Jun 2019 05:14:46 GMT
ENV AEROSPIKE_SHA256=7bae8c7cdbb6604b841f9b7d27f4f8baf5ddc84378e0206e0feff545cd9b67f8
# Tue, 11 Jun 2019 05:15:16 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Tue, 11 Jun 2019 05:15:16 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Tue, 11 Jun 2019 05:15:16 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Tue, 11 Jun 2019 05:15:17 GMT
VOLUME [/opt/aerospike/data]
# Tue, 11 Jun 2019 05:15:17 GMT
EXPOSE 3000 3001 3002 3003
# Tue, 11 Jun 2019 05:15:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 05:15:17 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277b63d96e608c6a9d8cef63b84f99abda001eee5d7095f0f5e315bda56ef37d`  
		Last Modified: Tue, 11 Jun 2019 05:16:52 GMT  
		Size: 26.2 MB (26199372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba99ea67f91d57b840fc46496edfea6bf113a2abfcf0bed2dc065b5609af33f0`  
		Last Modified: Tue, 11 Jun 2019 05:16:46 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd80769d23ae9bb45c1c3f1b053045d2e49945c5789802880615b543c5b4d26`  
		Last Modified: Tue, 11 Jun 2019 05:16:46 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:latest`

```console
$ docker pull aerospike@sha256:f37fdce2227239295dce3ee0a66db8fb0c9cdd3a8dde0f23a7116026f31a25dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

```console
$ docker pull aerospike@sha256:2d3980034035d9d26b9f4ab111eba35857d8438e8ebc6be8cd2b5cd033c7a7b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48690669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfe6668e2a096a642057a5b1a1bc7a3a4662ef7358dc48a97e0874321b1d6ff0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 05:14:46 GMT
ENV AEROSPIKE_VERSION=4.5.2.2
# Tue, 11 Jun 2019 05:14:46 GMT
ENV AEROSPIKE_SHA256=7bae8c7cdbb6604b841f9b7d27f4f8baf5ddc84378e0206e0feff545cd9b67f8
# Tue, 11 Jun 2019 05:15:16 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Tue, 11 Jun 2019 05:15:16 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Tue, 11 Jun 2019 05:15:16 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Tue, 11 Jun 2019 05:15:17 GMT
VOLUME [/opt/aerospike/data]
# Tue, 11 Jun 2019 05:15:17 GMT
EXPOSE 3000 3001 3002 3003
# Tue, 11 Jun 2019 05:15:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 05:15:17 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277b63d96e608c6a9d8cef63b84f99abda001eee5d7095f0f5e315bda56ef37d`  
		Last Modified: Tue, 11 Jun 2019 05:16:52 GMT  
		Size: 26.2 MB (26199372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba99ea67f91d57b840fc46496edfea6bf113a2abfcf0bed2dc065b5609af33f0`  
		Last Modified: Tue, 11 Jun 2019 05:16:46 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd80769d23ae9bb45c1c3f1b053045d2e49945c5789802880615b543c5b4d26`  
		Last Modified: Tue, 11 Jun 2019 05:16:46 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
