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
