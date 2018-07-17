## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:9fbcf587b7f38a6061da0d52df4b5a203c1d836dd6db4257fbe196e1b9c3e9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:63c05baf05c077ead5da813f8bdec73086bdc2e43aea59f51fa8001bca10a020
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15826871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3abbde3ce62b0a9b4c07dca5a217c520bea49a5109a4f209dee17f2fa93078c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:20:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 17 Jul 2018 23:21:09 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Tue, 17 Jul 2018 23:23:04 GMT
ENV TELEGRAF_VERSION=1.7.1
# Tue, 17 Jul 2018 23:23:11 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 17 Jul 2018 23:23:24 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 23:23:25 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 17 Jul 2018 23:23:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:23:26 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3fc09cd3173af0ccd136f8de7a9f2352e1e8d0fa0c7df8233c7c0092ff4faa`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f39ed2e1344853a0bfec2e846d27e44d0d1cb77a6f78b122a5870c7da5cbe9`  
		Last Modified: Tue, 17 Jul 2018 23:24:34 GMT  
		Size: 3.3 MB (3346823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d69a0e587a624b30574e51ee2d070a1984630cd71d1c5cc556fa6f7d2a229d`  
		Last Modified: Tue, 17 Jul 2018 23:28:16 GMT  
		Size: 10.5 MB (10465056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0694bad76779181ab014ad17a13cf76b0d435af14126d4ddc70c9d99e210a024`  
		Last Modified: Tue, 17 Jul 2018 23:28:10 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
