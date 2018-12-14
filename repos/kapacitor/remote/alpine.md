## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:f1c983009bec9d3b7423de7b58ebddf0da8b1cb786a16e00e9b3b528dbad68eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:42b53c1691b8f710ab04e51ff7be7e93ed73571df806b94baf3b5ada275f3bbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.8 MB (21804714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743576939148a23e558786e7de5caa3330bc94cecb1f6fbfb31b296a3585f9bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:45:28 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 13 Dec 2018 23:22:10 GMT
ENV KAPACITOR_VERSION=1.5.2
# Thu, 13 Dec 2018 23:22:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 13 Dec 2018 23:22:16 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 13 Dec 2018 23:22:16 GMT
EXPOSE 9092/tcp
# Thu, 13 Dec 2018 23:22:16 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 13 Dec 2018 23:22:17 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Thu, 13 Dec 2018 23:22:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Dec 2018 23:22:17 GMT
CMD ["kapacitord"]
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
	-	`sha256:19f03c30403d647d96c4f523e09d3a5eed8d31da11d35c90ef78cc830b8f9746`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 351.3 KB (351286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efb6b516fa129fd06a55e82f4c92f5aac9099cd625a72441a37f578fa94373d`  
		Last Modified: Thu, 13 Dec 2018 23:24:25 GMT  
		Size: 19.4 MB (19436131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f752a287b3e4ee442a8390565a366a666e068bb1d124680e6617b4dcc803c5b`  
		Last Modified: Thu, 13 Dec 2018 23:24:20 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d9769b8fb027e0c7a063c5a4b4abdb8674fb5f35465e4bb211cde22056bfc6`  
		Last Modified: Thu, 13 Dec 2018 23:24:20 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
