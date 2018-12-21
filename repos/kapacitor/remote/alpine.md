## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:ce3e6085afd71cb47d3d5aca99df3badf59e8ac71d3bf63aab4af3d6fec31b57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:6bda70cdb9f4907abb9fc1ea3b73d204f8ed19122a53293b11f64615bb924649
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.8 MB (21804956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:781294558773729b0b2a091110316d218cd4fa4a32e504f4ec3dbc19e871a8be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:52:19 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 00:52:20 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 21 Dec 2018 05:02:16 GMT
ENV KAPACITOR_VERSION=1.5.2
# Fri, 21 Dec 2018 05:02:23 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 05:02:23 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Fri, 21 Dec 2018 05:02:23 GMT
EXPOSE 9092
# Fri, 21 Dec 2018 05:02:23 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 21 Dec 2018 05:02:24 GMT
COPY file:a64543022a380a96e18ddc4e841e034238df340064743d570fa109d5086b123a in /entrypoint.sh 
# Fri, 21 Dec 2018 05:02:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 05:02:24 GMT
CMD ["kapacitord"]
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
	-	`sha256:b7d228c4591f48d5bc91f319ba1d7b4bf506e2077cb8bd71bce818b220441e15`  
		Last Modified: Fri, 21 Dec 2018 00:53:00 GMT  
		Size: 351.5 KB (351523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56902e2c90f79fd45317588fccb4fa52b14ffff81ce130ce93ed4421b1d6c3fd`  
		Last Modified: Fri, 21 Dec 2018 05:02:58 GMT  
		Size: 19.4 MB (19436137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f3956f7065cc5c454642b28a64f9cc4bcf89c056d1fdca0c2a18304e4437bf`  
		Last Modified: Fri, 21 Dec 2018 05:02:53 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0b224e412e9aa410d39335858f743c8b7e22bfc436fd378b856c26363b9b6e`  
		Last Modified: Fri, 21 Dec 2018 05:02:53 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
