## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:05b5f1973450456395b6ea35b7e2fc029c264c810cfbd8559f281ab2747eed5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:2746fb78a433aba4df889728018f45f81fff983e6323f2ef1faeed724133dbea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50678562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:360c3d0880c461f6a6ff54d2e8a86fab4f9384847ff019e783669590723b96e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:20:57 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 04:20:59 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 21 Dec 2018 04:21:37 GMT
ENV INFLUXDB_VERSION=1.7.2
# Fri, 21 Dec 2018 04:21:44 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 04:21:45 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Fri, 21 Dec 2018 04:21:45 GMT
EXPOSE 8086
# Fri, 21 Dec 2018 04:21:45 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Dec 2018 04:21:45 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Fri, 21 Dec 2018 04:21:45 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 21 Dec 2018 04:21:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:21:46 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00f09ce7312b69220662bba01a4ad6c075fe2107adea6644e4b4bf1f7d1d575`  
		Last Modified: Fri, 21 Dec 2018 04:22:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99365142bbe7691f2aea9e22980a485d0509ebba01cd61a1ffaf3c93c4a3cf7`  
		Last Modified: Fri, 21 Dec 2018 04:22:32 GMT  
		Size: 2.0 MB (1966661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690096df6d9410f6a80ef26439d285a5347619d8a0792d043e46ce4162fc9b02`  
		Last Modified: Fri, 21 Dec 2018 04:23:09 GMT  
		Size: 46.6 MB (46602996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d26f3dc0a4003f301864550a0cf469aa5dbf5f122f4814a7e9b87afcdaa713`  
		Last Modified: Fri, 21 Dec 2018 04:23:00 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b66a11af3dbd27dcfe2ea512befd26884685d8dce7e53606b0b3beb4f5d53d`  
		Last Modified: Fri, 21 Dec 2018 04:23:00 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f94835e552274629c88a9e7d3923afd26b6e9087011263d8abe576755b7ca02`  
		Last Modified: Fri, 21 Dec 2018 04:23:00 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
