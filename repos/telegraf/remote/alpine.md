## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:7f6873f5745fe9b4f610c5dcfaaa73d7cd75adb63bd770bb70c26a7e85c94a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:74a56edd5eb28c8587429ba26632979ed6b5abe6f041f36b8d6ed2c4195ca653
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19442319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af8a406cd91428e750eae0081f8656bc6c193bf9fea4c71e5b22573f789bf65f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 12 Sep 2018 03:34:30 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Mon, 08 Oct 2018 23:31:04 GMT
ENV TELEGRAF_VERSION=1.8.1
# Mon, 08 Oct 2018 23:31:10 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 08 Oct 2018 23:31:10 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 08 Oct 2018 23:31:10 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Mon, 08 Oct 2018 23:31:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 08 Oct 2018 23:31:11 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe6adc180ad61c0fc3a7f7d7be119abff4a049d68c17b1360ff4d64931a453c`  
		Last Modified: Wed, 12 Sep 2018 03:35:40 GMT  
		Size: 3.4 MB (3354114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b513adc17e38130eed796bb73d4f3ba9f5fd88e87851bf7c89f3317438b887`  
		Last Modified: Mon, 08 Oct 2018 23:31:59 GMT  
		Size: 14.1 MB (14071174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e4ef8b67f7a45906c8da9457e001e13cfc5fd66bb4b8bf674e13b61591f53f`  
		Last Modified: Mon, 08 Oct 2018 23:31:55 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
