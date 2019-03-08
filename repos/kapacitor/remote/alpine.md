## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:fc8780c74f2403ac8da23d1db1ab6335f7bdb951285d8ddf5888ade8c4af3ffb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:9f2becd67c190240b53aef62335a0255178fbccca92fa976c5a660ed7ebba106
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (21953017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e313de93f58fb667c7dd3d1c5e049b10ca05976e2d5c3deebb225b983937fbf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 08 Mar 2019 00:47:09 GMT
ENV KAPACITOR_VERSION=1.5.2
# Fri, 08 Mar 2019 00:47:14 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 08 Mar 2019 00:47:15 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Fri, 08 Mar 2019 00:47:15 GMT
EXPOSE 9092
# Fri, 08 Mar 2019 00:47:15 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 08 Mar 2019 00:47:15 GMT
COPY file:a64543022a380a96e18ddc4e841e034238df340064743d570fa109d5086b123a in /entrypoint.sh 
# Fri, 08 Mar 2019 00:47:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 00:47:16 GMT
CMD ["kapacitord"]
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
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9320153dc004ab05ceff5a224cd7c1f1a9c2bcf13b48afc28aaf5be5f85a4635`  
		Last Modified: Fri, 08 Mar 2019 00:47:41 GMT  
		Size: 19.4 MB (19436109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831c7bc8028a8d7b670f969cbff8194e45cb2dee74b90cdc509784996f9e43d`  
		Last Modified: Fri, 08 Mar 2019 00:47:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fdc29f6c555dc911f8f2605dadb7937bf81a55ac03008fa0fcba184ec4d9b07`  
		Last Modified: Fri, 08 Mar 2019 00:47:37 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
