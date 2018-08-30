## `aerospike:latest`

```console
$ docker pull aerospike@sha256:7ddbb42569c2cb85373224fada189e0b78f06a557c9bb0f053bbff8ae0ebac8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

```console
$ docker pull aerospike@sha256:3c8c008a41a00be6f019d9dd4dfa03ae8601106c3aadf2e13efcf1ca64050943
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48759403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1da44ca992eabca4b8c1957526379182b4d9a5e5b586841ee91b61ebc5f7cb78`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Thu, 30 Aug 2018 22:00:58 GMT
ENV AEROSPIKE_VERSION=4.3.0.6
# Thu, 30 Aug 2018 22:00:59 GMT
ENV AEROSPIKE_SHA256=e8f898211a5fd01c14da8ae1f71468d26cb7d7bac04d9f4674ee61383e8f5de6
# Thu, 30 Aug 2018 22:01:24 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Thu, 30 Aug 2018 22:01:25 GMT
COPY file:92f154ac5768cc66c29bd7ca3d00a0fe0ae8d08f1d309fdcda8bf66d4c73cadd in /etc/aerospike/aerospike.template.conf 
# Thu, 30 Aug 2018 22:01:25 GMT
COPY file:7eece3188902a85a78ecb96d2ec561fce45fa1728926bc66f3903d6955630907 in /entrypoint.sh 
# Thu, 30 Aug 2018 22:01:25 GMT
VOLUME [/opt/aerospike/data]
# Thu, 30 Aug 2018 22:01:25 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Thu, 30 Aug 2018 22:01:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 30 Aug 2018 22:01:25 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806cada1cf5bf2d1e19d12548d7ef41ca68938025575e4afffe5c48861acfab4`  
		Last Modified: Thu, 30 Aug 2018 22:02:05 GMT  
		Size: 26.3 MB (26271506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11ed0f98ae129d96c4f2891b019848420da23decd02f1c7bfd246d1e3b7888b`  
		Last Modified: Thu, 30 Aug 2018 22:01:59 GMT  
		Size: 1.1 KB (1107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78a44d2a6bcaa42124a2cfabac609d670a2d4d2aa3d142784978833e9424c9e`  
		Last Modified: Thu, 30 Aug 2018 22:02:00 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
