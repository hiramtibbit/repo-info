## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:64101af66a625c611d2be7ef241075306cc22f18c79837d693b4a29e42854779
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:9b8cdb0b088601ff6346acd90d2ba95a7032c43554c1f7658f2d8b14b8d496ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28946005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a513052162ec1e6fa8bfac2f4934a0c2a194a0b788120fa08a727660c0d1ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Wed, 17 Oct 2018 21:33:51 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 17 Oct 2018 21:34:01 GMT
RUN apk add --no-cache tzdata bash
# Wed, 17 Oct 2018 21:34:02 GMT
ENV INFLUXDB_VERSION=1.6.4
# Wed, 17 Oct 2018 21:34:10 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 17 Oct 2018 21:34:12 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 17 Oct 2018 21:34:12 GMT
EXPOSE 8086/tcp
# Wed, 17 Oct 2018 21:34:13 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 21:34:13 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 17 Oct 2018 21:34:13 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 17 Oct 2018 21:34:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 21:34:14 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a953c286a2ebfe50a094c2300171addc58cd3b3eb94fea15eee7dded61987f85`  
		Last Modified: Wed, 17 Oct 2018 21:38:34 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1125333738e6e07ed3c0c60fdc975c65717802204219255d630da1823ab97`  
		Last Modified: Wed, 17 Oct 2018 21:38:34 GMT  
		Size: 1.7 MB (1663553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cabf0934ff9e1bbf1ece2362afbfb8ce0ccc95ec1eb1e759ac2e3e3fe885a48`  
		Last Modified: Wed, 17 Oct 2018 21:38:38 GMT  
		Size: 25.2 MB (25173523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f1be1922c8c66ef53c9f998045bc3e527d916780fad32b9c8cc8b60aa98161`  
		Last Modified: Wed, 17 Oct 2018 21:38:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d45875c9de4f9a7a084660ed3acb1089e87ec55d771100d9975f9413eea461`  
		Last Modified: Wed, 17 Oct 2018 21:38:33 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a44883c2b65011274a27021a2969b9b0588e63c9b74cd54399e186d7ea4bf3e`  
		Last Modified: Wed, 17 Oct 2018 21:38:33 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
