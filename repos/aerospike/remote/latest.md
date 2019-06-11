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
