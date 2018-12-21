## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:39735e91303af9070b24b841d9feb842c122d6b09f6069c7c38207ecf8e120a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:13b2f532334293a9d31a6b1e45d530ac51341dab9f5290f8ed45904becaef81b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23084881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20fca16b544f20582b4f629a3dcb8a195bd3d735939372091a0ca55052dea7c9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:52:19 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 05:06:01 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Fri, 21 Dec 2018 05:06:25 GMT
ENV TELEGRAF_VERSION=1.9.1
# Fri, 21 Dec 2018 05:06:30 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 05:06:30 GMT
EXPOSE 8092/udp 8094 8125/udp
# Fri, 21 Dec 2018 05:06:30 GMT
COPY file:a8a66b0d8dac2aee66897c63ce9b7a3d282bb5d7b796ffb12c2cd9227fed341b in /entrypoint.sh 
# Fri, 21 Dec 2018 05:06:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 05:06:31 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c4a5c6312c5d86f737c0a4cfcee90a60b986e34ea8e9f0127a776b63a6eeff`  
		Last Modified: Fri, 21 Dec 2018 00:53:01 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110518df74bd2a8da8d37c98b0f9589f644aff1c7ff072c1158d01c3b041620e`  
		Last Modified: Fri, 21 Dec 2018 05:06:42 GMT  
		Size: 3.4 MB (3354423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c81034010f87d41944bc51627d4d1ab84e4199ce86e6c977b69bbe38fdb866`  
		Last Modified: Fri, 21 Dec 2018 05:07:07 GMT  
		Size: 17.7 MB (17713430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a54b16575d900835dc6cc33b339c2d93f86fa8275404583bc05a076c85e780`  
		Last Modified: Fri, 21 Dec 2018 05:07:02 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
