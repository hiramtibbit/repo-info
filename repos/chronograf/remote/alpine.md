## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:c4bd86971db303742e5cd4620ce3475bbb6ee8f672bb436e97b5d6d61fe03dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:a54aa0ebc55dd2d0aa0bf307a3dfc31151f1c337790a8e7b5d906a46dfaf5fc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13991231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d22654c6dcf31c80e8cf0f1a8b80364dc79b5637b2c478275d4f1d742f55a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 02:19:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Jun 2018 23:42:12 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 06 Jun 2018 23:43:15 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 06 Jun 2018 23:43:32 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Jun 2018 23:43:32 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 06 Jun 2018 23:43:32 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Jun 2018 23:43:32 GMT
EXPOSE 8888/tcp
# Wed, 06 Jun 2018 23:43:32 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Jun 2018 23:43:33 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Wed, 06 Jun 2018 23:43:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:43:33 GMT
CMD ["chronograf"]
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
	-	`sha256:5ffdb1617ef576cb00c9954cff658f08d9ad83c52de5631608fcc250b461cbcf`  
		Last Modified: Wed, 06 Jun 2018 23:47:04 GMT  
		Size: 351.0 KB (351019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db9b376782f512cc0a2a2ccb47fea1a0f2fab644d8166b7847b3c7fdebbecbc`  
		Last Modified: Wed, 06 Jun 2018 23:50:24 GMT  
		Size: 11.6 MB (11623940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a002b62e873b362441bcbd0bda6a80b4c7d5fa625bca020381d3ba07cce69f83`  
		Last Modified: Wed, 06 Jun 2018 23:49:42 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a848869075f338d0e955e2a72f53d6dfd3f8a7fc85a4ebbbdb5ded863710e8`  
		Last Modified: Wed, 06 Jun 2018 23:49:43 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfc8145d095bde17addea8c84ea00465bd10f7e5d3dd0e6395bce8abf9c847f`  
		Last Modified: Wed, 06 Jun 2018 23:49:44 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
