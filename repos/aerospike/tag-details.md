<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:4.3.1.8`](#aerospike4318)
-	[`aerospike:4.4.0.8`](#aerospike4408)
-	[`aerospike:4.5.0.3`](#aerospike4503)
-	[`aerospike:latest`](#aerospikelatest)

## `aerospike:4.3.1.8`

```console
$ docker pull aerospike@sha256:2eba786eda88cc963fa1569a1a5d7718e23a1115685178e0ee769c5ed2689951
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.3.1.8` - linux; amd64

```console
$ docker pull aerospike@sha256:6005b8a780f5196bcf614a0e924e43bd184c3d4069145b7c1477b3b0f8f4ddfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49289045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c8ecb5d8154dbf3140aa1f96b3d8cb56377a5892b8764b8a1e6cadd3d8f6a7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:17:22 GMT
ENV AEROSPIKE_VERSION=4.3.1.8
# Tue, 22 Jan 2019 23:17:22 GMT
ENV AEROSPIKE_SHA256=63df952ad6dc031749d09322091760ba5836b6921b6004cb5b7d14c292591380
# Tue, 22 Jan 2019 23:17:50 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Tue, 22 Jan 2019 23:17:50 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Tue, 22 Jan 2019 23:17:51 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Tue, 22 Jan 2019 23:17:51 GMT
VOLUME [/opt/aerospike/data]
# Tue, 22 Jan 2019 23:17:51 GMT
EXPOSE 3000 3001 3002 3003
# Tue, 22 Jan 2019 23:17:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Jan 2019 23:17:52 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62afb9467631111fc4c9118189ad32381ada00c79468948bc897728df7661788`  
		Last Modified: Tue, 22 Jan 2019 23:18:44 GMT  
		Size: 26.8 MB (26786343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719dca5fd4d92cd91da59d73723714d8adf466c0c72a1a6774e586acb4677a2b`  
		Last Modified: Tue, 22 Jan 2019 23:18:36 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eea92c0a8dc6dafb69a70e7eaa909f9cbff057dffb3a1000a1f4867f6835724`  
		Last Modified: Tue, 22 Jan 2019 23:18:37 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.4.0.8`

```console
$ docker pull aerospike@sha256:d58938cbc3e666a85a460ab78b38a7886627f4182856dc32a199212613851f04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.4.0.8` - linux; amd64

```console
$ docker pull aerospike@sha256:bbc08f1bb2966c7cf0759cdaf8fe5a57ca46583ea5879db10740a1c72105d476
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49252698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b07d59218861a488f3571b450623c2e614bf22427c46921037ac09c31559d99b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:16:59 GMT
ENV AEROSPIKE_VERSION=4.4.0.8
# Tue, 22 Jan 2019 23:16:59 GMT
ENV AEROSPIKE_SHA256=d9fe9642346e8ada2fe0c1f621f49eb9a5be12a91fee72e74a9391de9bab6f58
# Tue, 22 Jan 2019 23:17:16 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Tue, 22 Jan 2019 23:17:17 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Tue, 22 Jan 2019 23:17:17 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Tue, 22 Jan 2019 23:17:17 GMT
VOLUME [/opt/aerospike/data]
# Tue, 22 Jan 2019 23:17:17 GMT
EXPOSE 3000 3001 3002 3003
# Tue, 22 Jan 2019 23:17:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Jan 2019 23:17:18 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0daeb4af9fa13e1a2acc13575950c043119372846004cb5e45ee73403e50e7f6`  
		Last Modified: Tue, 22 Jan 2019 23:18:33 GMT  
		Size: 26.7 MB (26749996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc1eda3203dfd76338c5dfbea6d2ebcb56fe03d4bd6e0f58242d480956d30a9`  
		Last Modified: Tue, 22 Jan 2019 23:18:26 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36de3427a26f50e4cf1ea849bb96746d615eb90ccddb10d2603658e9aa6809de`  
		Last Modified: Tue, 22 Jan 2019 23:18:26 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.5.0.3`

```console
$ docker pull aerospike@sha256:49e2523af86a5ff7970108eb1ea3dc62814b031442068d0a999d75507ef01477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.5.0.3` - linux; amd64

```console
$ docker pull aerospike@sha256:3ed33b064ae46f28c5f1fa7ee7cc2d02496adbc469325f7ef9649715fc22eb2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49259346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ebb4a5cc126f68cd922db224212a20b5a257c211f7184bc24c1792e0203864b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:16:28 GMT
ENV AEROSPIKE_VERSION=4.5.0.3
# Tue, 22 Jan 2019 23:16:28 GMT
ENV AEROSPIKE_SHA256=baf76fbb822cb8cfc420c18ab789c3d772280736e248dac44f2b225e789d366e
# Tue, 22 Jan 2019 23:16:50 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Tue, 22 Jan 2019 23:16:50 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Tue, 22 Jan 2019 23:16:51 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Tue, 22 Jan 2019 23:16:51 GMT
VOLUME [/opt/aerospike/data]
# Tue, 22 Jan 2019 23:16:52 GMT
EXPOSE 3000 3001 3002 3003
# Tue, 22 Jan 2019 23:16:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Jan 2019 23:16:53 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118a1e22ec90a708a6d4fda4ad2133d6ee4049a3545d421c877d42f5e1aacd92`  
		Last Modified: Tue, 22 Jan 2019 23:18:14 GMT  
		Size: 26.8 MB (26756645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88b1b9bc3c8edb671d879f3003f2fcc850fb7ba84fb4891c3b91c02f4d9caae`  
		Last Modified: Tue, 22 Jan 2019 23:18:07 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc41a3a23976fada5a711d1a3e88bacef41b3c44ad05e41152e679bbb407ee60`  
		Last Modified: Tue, 22 Jan 2019 23:18:07 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:latest`

```console
$ docker pull aerospike@sha256:49e2523af86a5ff7970108eb1ea3dc62814b031442068d0a999d75507ef01477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

```console
$ docker pull aerospike@sha256:3ed33b064ae46f28c5f1fa7ee7cc2d02496adbc469325f7ef9649715fc22eb2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49259346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ebb4a5cc126f68cd922db224212a20b5a257c211f7184bc24c1792e0203864b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 23:16:28 GMT
ENV AEROSPIKE_VERSION=4.5.0.3
# Tue, 22 Jan 2019 23:16:28 GMT
ENV AEROSPIKE_SHA256=baf76fbb822cb8cfc420c18ab789c3d772280736e248dac44f2b225e789d366e
# Tue, 22 Jan 2019 23:16:50 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Tue, 22 Jan 2019 23:16:50 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Tue, 22 Jan 2019 23:16:51 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Tue, 22 Jan 2019 23:16:51 GMT
VOLUME [/opt/aerospike/data]
# Tue, 22 Jan 2019 23:16:52 GMT
EXPOSE 3000 3001 3002 3003
# Tue, 22 Jan 2019 23:16:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Jan 2019 23:16:53 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118a1e22ec90a708a6d4fda4ad2133d6ee4049a3545d421c877d42f5e1aacd92`  
		Last Modified: Tue, 22 Jan 2019 23:18:14 GMT  
		Size: 26.8 MB (26756645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88b1b9bc3c8edb671d879f3003f2fcc850fb7ba84fb4891c3b91c02f4d9caae`  
		Last Modified: Tue, 22 Jan 2019 23:18:07 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc41a3a23976fada5a711d1a3e88bacef41b3c44ad05e41152e679bbb407ee60`  
		Last Modified: Tue, 22 Jan 2019 23:18:07 GMT  
		Size: 882.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
