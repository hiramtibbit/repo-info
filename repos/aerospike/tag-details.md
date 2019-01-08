<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:4.3.1.8`](#aerospike4318)
-	[`aerospike:4.4.0.8`](#aerospike4408)
-	[`aerospike:4.5.0.3`](#aerospike4503)
-	[`aerospike:latest`](#aerospikelatest)

## `aerospike:4.3.1.8`

```console
$ docker pull aerospike@sha256:9ca990ec008b29f0a521863a4e63c04e247dd835cc2b12662f7552f3b1ba3cd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.3.1.8` - linux; amd64

```console
$ docker pull aerospike@sha256:87864258bbefabb28b7225b8c67186d67c4a7b91a7ad3b2eda428a428ba9e1ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49281186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5ae61917789cef4a61f9d7fadcfecc81a72badbd3500c0453f76f7f9b171052`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 07 Jan 2019 21:20:10 GMT
ENV AEROSPIKE_VERSION=4.3.1.8
# Mon, 07 Jan 2019 21:20:10 GMT
ENV AEROSPIKE_SHA256=63df952ad6dc031749d09322091760ba5836b6921b6004cb5b7d14c292591380
# Mon, 07 Jan 2019 21:20:27 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Mon, 07 Jan 2019 21:20:28 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Mon, 07 Jan 2019 21:20:28 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Mon, 07 Jan 2019 21:20:28 GMT
VOLUME [/opt/aerospike/data]
# Mon, 07 Jan 2019 21:20:28 GMT
EXPOSE 3000 3001 3002 3003
# Mon, 07 Jan 2019 21:20:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 07 Jan 2019 21:20:29 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eabada5ca2ad74fd7a39b6903a09c788036099975ef3dd2b94b29376e3ee217`  
		Last Modified: Mon, 07 Jan 2019 21:21:06 GMT  
		Size: 26.8 MB (26786275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed39cb9f776b815514f552a74e70d9b401cfd812de4a3b8218752aa2d1ea33c`  
		Last Modified: Mon, 07 Jan 2019 21:21:01 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfc945e7a950c55fa094029c81a9d435c2db8fc456cbb79dc68730ba823c33b`  
		Last Modified: Mon, 07 Jan 2019 21:21:02 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.4.0.8`

```console
$ docker pull aerospike@sha256:16f953e9e30717e69d2d728c19ed2d5f760910e633feb74495d07312b33cd0ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.4.0.8` - linux; amd64

```console
$ docker pull aerospike@sha256:e7b476d1c6099132f78bc0eb9c2b6cf1863f0a7a3d534fbc5c8002323a932c47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49245019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:586b8afec09d60083944e53135fa98aa878742832d3556f14981fd910a910abf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 07 Jan 2019 21:19:47 GMT
ENV AEROSPIKE_VERSION=4.4.0.8
# Mon, 07 Jan 2019 21:19:47 GMT
ENV AEROSPIKE_SHA256=d9fe9642346e8ada2fe0c1f621f49eb9a5be12a91fee72e74a9391de9bab6f58
# Mon, 07 Jan 2019 21:20:06 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Mon, 07 Jan 2019 21:20:06 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Mon, 07 Jan 2019 21:20:06 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Mon, 07 Jan 2019 21:20:06 GMT
VOLUME [/opt/aerospike/data]
# Mon, 07 Jan 2019 21:20:07 GMT
EXPOSE 3000 3001 3002 3003
# Mon, 07 Jan 2019 21:20:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 07 Jan 2019 21:20:07 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8346df250a9dd6451be2470132fcd17801b2f96ef52982f39a59e63a1b83433d`  
		Last Modified: Mon, 07 Jan 2019 21:20:51 GMT  
		Size: 26.8 MB (26750107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1996eebaf2ab8d05c51c27bbe43e39dfc930ff12f2143a2a1f6fad7cfab42ae9`  
		Last Modified: Mon, 07 Jan 2019 21:20:46 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edfd4c7a2536be3a720a3b4b17814739d890b000842ff620349269636c4c8689`  
		Last Modified: Mon, 07 Jan 2019 21:20:46 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.5.0.3`

```console
$ docker pull aerospike@sha256:ba65535c9dbc5ed1548a329808c1b238c90d4d923dbbe7c7a8e5bcb17c79f6a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.5.0.3` - linux; amd64

```console
$ docker pull aerospike@sha256:81db9d6e9b44bde036e79bea22e75988bff2bb9a2cd48032036c8a2082af43d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49251501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f5165d91d662511491dcac19f7b14b90a8c57a975388735320b712ecf38cc80`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 07 Jan 2019 21:19:19 GMT
ENV AEROSPIKE_VERSION=4.5.0.3
# Mon, 07 Jan 2019 21:19:20 GMT
ENV AEROSPIKE_SHA256=baf76fbb822cb8cfc420c18ab789c3d772280736e248dac44f2b225e789d366e
# Mon, 07 Jan 2019 21:19:41 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Mon, 07 Jan 2019 21:19:41 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Mon, 07 Jan 2019 21:19:41 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Mon, 07 Jan 2019 21:19:42 GMT
VOLUME [/opt/aerospike/data]
# Mon, 07 Jan 2019 21:19:42 GMT
EXPOSE 3000 3001 3002 3003
# Mon, 07 Jan 2019 21:19:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 07 Jan 2019 21:19:42 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:accf0e89e83b1d9f010b1d39387e11cc4f199a175899f6dbe0944b13fa3491ab`  
		Last Modified: Mon, 07 Jan 2019 21:20:42 GMT  
		Size: 26.8 MB (26756590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7702b8d42a636d4829cb982a14add78d2b5e0fde356e9e13c6c0b14e8e4ca2b`  
		Last Modified: Mon, 07 Jan 2019 21:20:37 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6789673bd0dfc1f39dcc1e74296871a6dbc1dd3142b7fd30fc21f2705847dd2`  
		Last Modified: Mon, 07 Jan 2019 21:20:37 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:latest`

```console
$ docker pull aerospike@sha256:ba65535c9dbc5ed1548a329808c1b238c90d4d923dbbe7c7a8e5bcb17c79f6a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

```console
$ docker pull aerospike@sha256:81db9d6e9b44bde036e79bea22e75988bff2bb9a2cd48032036c8a2082af43d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49251501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f5165d91d662511491dcac19f7b14b90a8c57a975388735320b712ecf38cc80`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 07 Jan 2019 21:19:19 GMT
ENV AEROSPIKE_VERSION=4.5.0.3
# Mon, 07 Jan 2019 21:19:20 GMT
ENV AEROSPIKE_SHA256=baf76fbb822cb8cfc420c18ab789c3d772280736e248dac44f2b225e789d366e
# Mon, 07 Jan 2019 21:19:41 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Mon, 07 Jan 2019 21:19:41 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Mon, 07 Jan 2019 21:19:41 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Mon, 07 Jan 2019 21:19:42 GMT
VOLUME [/opt/aerospike/data]
# Mon, 07 Jan 2019 21:19:42 GMT
EXPOSE 3000 3001 3002 3003
# Mon, 07 Jan 2019 21:19:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 07 Jan 2019 21:19:42 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:accf0e89e83b1d9f010b1d39387e11cc4f199a175899f6dbe0944b13fa3491ab`  
		Last Modified: Mon, 07 Jan 2019 21:20:42 GMT  
		Size: 26.8 MB (26756590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7702b8d42a636d4829cb982a14add78d2b5e0fde356e9e13c6c0b14e8e4ca2b`  
		Last Modified: Mon, 07 Jan 2019 21:20:37 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6789673bd0dfc1f39dcc1e74296871a6dbc1dd3142b7fd30fc21f2705847dd2`  
		Last Modified: Mon, 07 Jan 2019 21:20:37 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
