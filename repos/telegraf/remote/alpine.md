## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:a70ce3dfbbfb1063ac8d7bedad21c4265eeaf46580f8c9f11477b7a9489cf298
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:9eb97d28411ecc5c6b7e63a4852c02ef23fded10c22e8e412c7555a5965b5ae2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14247488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde82a146818b02adb20355c8f355f74e3cfe1033f888d5408261b53a7573aac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 Jan 2018 03:04:44 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps &&     update-ca-certificates
# Fri, 16 Mar 2018 13:47:51 GMT
ENV TELEGRAF_VERSION=1.5.3
# Fri, 16 Mar 2018 13:47:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 16 Mar 2018 13:47:59 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 16 Mar 2018 13:47:59 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Fri, 16 Mar 2018 13:48:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 13:48:00 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744f2d4e2ea14cfa1b936a8f71db3bf1f3bd417925c618740330adc60e1b2b01`  
		Last Modified: Wed, 10 Jan 2018 03:05:41 GMT  
		Size: 2.8 MB (2796395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870fc8f7a153c8bc5615b84bef0f932e297bcdf06a727964f0afaf2ceb5eee1c`  
		Last Modified: Fri, 16 Mar 2018 13:49:23 GMT  
		Size: 9.5 MB (9459011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c9fa177bd9af1f9e86481bea47031d837b894c711cdef8569c8e9d796e4f36`  
		Last Modified: Fri, 16 Mar 2018 13:49:21 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
