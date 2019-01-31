## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:c2bc1fe95f16aeb54e6114bdcc295058d4d2b322c061ec7af1342db390f5debc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:1bd2bfef80216fb20823bf71b50b74ff6d0ed576860f02d3b6a31fd1fb0cb801
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.1 MB (51089247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b82d175cadb9fd59729e4820a4d10da5c5b722dd65b7f3dd14a3961c147103`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 01:45:45 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 31 Jan 2019 01:47:19 GMT
ENV INFLUXDB_VERSION=1.7.3
# Thu, 31 Jan 2019 01:47:29 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 01:47:30 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 31 Jan 2019 01:47:30 GMT
EXPOSE 8086
# Thu, 31 Jan 2019 01:47:30 GMT
VOLUME [/var/lib/influxdb]
# Thu, 31 Jan 2019 01:47:30 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 31 Jan 2019 01:47:31 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 31 Jan 2019 01:47:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 01:47:31 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc741e575cbed81d8f84e8f1f782804230bb1a3dfb0d2765f31b4eb19235dca`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb7f3537548274ea5ea9af1a35c31d3d5f29f19b8f891c3cb02f630b549e6d8`  
		Last Modified: Thu, 31 Jan 2019 01:48:02 GMT  
		Size: 1.9 MB (1870425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680aaf59c511cfb580a17baec594151cc86da36d8c4a0e7e8a6fa97cf7e81392`  
		Last Modified: Thu, 31 Jan 2019 01:49:20 GMT  
		Size: 47.0 MB (47010029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054b57f252ec40e9beb35e165d4e853be9cae7fa307dd88472d34185e8f1be4e`  
		Last Modified: Thu, 31 Jan 2019 01:49:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3d874732c595c90224946e71ea8d9eb5d5555a3bd16066efcd2ca4ad08a805`  
		Last Modified: Thu, 31 Jan 2019 01:49:11 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093eda11b37a6efca477cc5af41aa3d9544210ff1013d71a3152b8088e217570`  
		Last Modified: Thu, 31 Jan 2019 01:49:10 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
