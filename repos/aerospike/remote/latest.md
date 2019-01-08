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
