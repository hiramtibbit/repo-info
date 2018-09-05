## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:d3cf6decdde0f4dd856ab9a5a41515a42d7fbff59887477e17efafe8601f3622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:df76dec8e07d4b0e8d829f8b783e6e9b46fc4c979f335267bf117e857aa031e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14124456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f9942e0f7a0742592b7e2993a6cc89057d66789a8af881f62ad082eeb10754`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Thu, 30 Aug 2018 22:02:41 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 04 Sep 2018 23:04:40 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 04 Sep 2018 23:05:10 GMT
ENV CHRONOGRAF_VERSION=1.6.1
# Tue, 04 Sep 2018 23:05:17 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 04 Sep 2018 23:05:17 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 04 Sep 2018 23:05:18 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 04 Sep 2018 23:05:18 GMT
EXPOSE 8888/tcp
# Tue, 04 Sep 2018 23:05:18 GMT
VOLUME [/var/lib/chronograf]
# Tue, 04 Sep 2018 23:05:18 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 04 Sep 2018 23:05:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Sep 2018 23:05:19 GMT
CMD ["chronograf"]
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
	-	`sha256:5521b43865f5d3262b045d5454659f7f8a97bdc95aa74ae771cf052f8f7d8909`  
		Last Modified: Tue, 04 Sep 2018 23:06:06 GMT  
		Size: 11.7 MB (11733985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca5336a51c150857709b0b1a427e957670fe5f2a7a8991eea5a710749c911bf`  
		Last Modified: Tue, 04 Sep 2018 23:06:04 GMT  
		Size: 12.2 KB (12233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c175c84244916d4e3dc50e289289a129c229cd71c5e39046978e63e831289b20`  
		Last Modified: Tue, 04 Sep 2018 23:06:05 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:709eadada6d35850057ab002520e23be07ab077f6d354b2bb695ec25cf20eb83`  
		Last Modified: Tue, 04 Sep 2018 23:06:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
