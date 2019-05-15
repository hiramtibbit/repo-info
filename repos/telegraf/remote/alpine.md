## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:d8f96a4d26cb6ea2e2ed35f61b01d68e4d3d67e7ea3678329fa5c87178405ff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:1a99cd1a3743696c077ec21f946bccce5e0787613ebb012d7a02c60e7d1d5736
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23837696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2411685429053598699de948f5f684bd09f465d9f5516cfc4341474825cb594e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:01:25 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Wed, 15 May 2019 21:20:25 GMT
ENV TELEGRAF_VERSION=1.10.4
# Wed, 15 May 2019 21:20:31 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 15 May 2019 21:20:34 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 15 May 2019 21:20:34 GMT
COPY file:a8a66b0d8dac2aee66897c63ce9b7a3d282bb5d7b796ffb12c2cd9227fed341b in /entrypoint.sh 
# Wed, 15 May 2019 21:20:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 15 May 2019 21:20:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a132459add8b60aa9cfb9a111641ddacd479c9f166dedba4fd83bb2059e586`  
		Last Modified: Fri, 08 Mar 2019 03:02:19 GMT  
		Size: 3.2 MB (3248177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7d4619ab2dd41b53be5ade8b42c8239553a725a15cfc62301e07c5db191dc5`  
		Last Modified: Wed, 15 May 2019 21:21:00 GMT  
		Size: 18.4 MB (18382007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e099a90e9736bab06ebd05b4fdf4a7f6b34bf4a7e7884e786dfb589c9c36c0`  
		Last Modified: Wed, 15 May 2019 21:20:55 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
