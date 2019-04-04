## `aerospike:latest`

```console
$ docker pull aerospike@sha256:eea22c1010af910a5048c75a232f2692433c6ef069b262c1175b10c4daf169ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

```console
$ docker pull aerospike@sha256:0ce6d09837b998271eac432c9a6e43b25edb72c9997a0af2580bcbb6d829b1cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48689617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1feb64ef71a25ff73096858e704067dd7cce6da4f89815b8f3af5b0e54270a21`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Thu, 04 Apr 2019 21:19:24 GMT
ENV AEROSPIKE_VERSION=4.5.2.1
# Thu, 04 Apr 2019 21:19:24 GMT
ENV AEROSPIKE_SHA256=4db8a4771772c11d545ad3b97a42377e12b4ce6830f62edd64c77fc81d6b09db
# Thu, 04 Apr 2019 21:19:46 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Thu, 04 Apr 2019 21:20:14 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Thu, 04 Apr 2019 21:20:14 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Thu, 04 Apr 2019 21:20:15 GMT
VOLUME [/opt/aerospike/data]
# Thu, 04 Apr 2019 21:20:15 GMT
EXPOSE 3000 3001 3002 3003
# Thu, 04 Apr 2019 21:20:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 04 Apr 2019 21:20:15 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b878e4c9515a0b5b8bdaca860f2b11fde2b7a14194792ae4c75bc3535814c8`  
		Last Modified: Thu, 04 Apr 2019 21:21:23 GMT  
		Size: 26.2 MB (26191572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6156243310319a1b92307c2d15a19e9e27d8c2193f84ce97da2c05574bb8218c`  
		Last Modified: Thu, 04 Apr 2019 21:21:18 GMT  
		Size: 1.1 KB (1114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f740d21291090e3860e95c2f977af791ffe0854511cd2bd8475d4b291e4f55`  
		Last Modified: Thu, 04 Apr 2019 21:21:18 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
