## `influxdb:data-alpine`

```console
$ docker pull influxdb@sha256:9c9c56e76e6ddf5b6585aaabc3c6bd4f4b1667cc3119e75df8f5f74d72a3b5af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:648fcdb176f04dd8076e1f9a1ea59b1cb14b243dca64ea5932785f1f8a26e403
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27513427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450300cf7a94e44055c8685404c64130ea209de0453316717df1186b28410681`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 02:19:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Jun 2018 02:20:25 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 06 Jun 2018 02:20:26 GMT
ENV INFLUXDB_VERSION=1.5.3-c1.5.3
# Wed, 06 Jun 2018 02:20:36 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Jun 2018 02:20:37 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Wed, 06 Jun 2018 02:20:37 GMT
EXPOSE 8086/tcp
# Wed, 06 Jun 2018 02:20:37 GMT
VOLUME [/var/lib/influxdb]
# Wed, 06 Jun 2018 02:20:37 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Wed, 06 Jun 2018 02:20:38 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 06 Jun 2018 02:20:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 02:20:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3c00c983df21fc6052a045c3017bf50950f08d64bf6f618faf998c77590d6`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53849fc7189ac733c570a26b0992d92916b5b286eaea35767956d62287e9d79d`  
		Last Modified: Wed, 06 Jun 2018 02:23:17 GMT  
		Size: 1.9 MB (1852243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:321dbbb6c088850a16e4d58dbaf4b6c1e592d31a8c65847a62889206677b448a`  
		Last Modified: Wed, 06 Jun 2018 02:23:28 GMT  
		Size: 23.7 MB (23667624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4807487ca6e2bc3116ebe7e06a66bd86a459ec382a323bc63f2053d4dd5b7a64`  
		Last Modified: Wed, 06 Jun 2018 02:23:16 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b1340d0cf271c6ebafdb691f618bd23dcd03a5e72ba089137700cfca72bc96`  
		Last Modified: Wed, 06 Jun 2018 02:23:15 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b8f3fa4503839a01fb710b3d1e79c03f02d8d5b0f08ebdb441759d2f0d464d`  
		Last Modified: Wed, 06 Jun 2018 02:23:15 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
