## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:84c1776ae3db7e3238b4580b1d7066563d94eb3e69342d85a92345b4280e78b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:bb6698262419a03ec3eea4d1f08ebfd285d2f22417c626a3af1088aa35e34090
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (19003421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55aed6a090d23d6230ac60a515ca390e62ef161b2371b1590bae3953d2d461b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Thu, 30 Aug 2018 22:02:41 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 04 Sep 2018 23:04:40 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 05 Sep 2018 11:04:09 GMT
ENV KAPACITOR_VERSION=1.5.1
# Wed, 05 Sep 2018 11:04:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 05 Sep 2018 11:04:16 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 05 Sep 2018 11:04:16 GMT
EXPOSE 9092/tcp
# Wed, 05 Sep 2018 11:04:16 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 05 Sep 2018 11:04:17 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 05 Sep 2018 11:04:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 11:04:17 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72645f13036d032a355da86f6dbd210460b976b408bd03617c93bf67107a4b0`  
		Last Modified: Thu, 30 Aug 2018 22:05:03 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a734d2446babb42d332054eac162e2a058a89bdbf614687248798711d7eb66e3`  
		Last Modified: Tue, 04 Sep 2018 23:05:40 GMT  
		Size: 351.3 KB (351292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df9102562b0b620eba4f2956a2a6990709996dda80a2c4a8bf908d9efa7e955`  
		Last Modified: Wed, 05 Sep 2018 11:05:36 GMT  
		Size: 16.6 MB (16636860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df8ac12404e80bc298a727c285ca20445694cb92d484ecc9fe3a83f6bbdbcfd`  
		Last Modified: Wed, 05 Sep 2018 11:05:31 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6394af37c427e9d5ed450140a7434ca880ab3ae2a8f895f926c7274cb6ccdb22`  
		Last Modified: Wed, 05 Sep 2018 11:05:30 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
