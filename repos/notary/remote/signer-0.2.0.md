## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:478c61e6aa7537cab686efcb78ba5761d75817f83a43549eb565bacfa6646937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:3c61184aaadd7c24f489468747a51c7bb5ed899372c0f9eb3403f809d20077b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7752114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49055e73e1c8e6862c15b781706ece90fc2db06f82365bf1120423ce028a1356`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:57:45 GMT
EXPOSE 4444/tcp
# Tue, 11 Sep 2018 23:57:45 GMT
EXPOSE 7899/tcp
# Tue, 11 Sep 2018 23:57:46 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 11 Sep 2018 23:58:47 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Tue, 11 Sep 2018 23:58:47 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 11 Sep 2018 23:58:47 GMT
WORKDIR /notary/signer
# Tue, 11 Sep 2018 23:58:48 GMT
RUN adduser -D -H -g "" notary
# Tue, 11 Sep 2018 23:58:49 GMT
USER [notary]
# Tue, 11 Sep 2018 23:58:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 11 Sep 2018 23:58:49 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 11 Sep 2018 23:58:50 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248c58325b1887532e4b2788c3109560be67d0cdd5e9b7df37c938069a7908f0`  
		Last Modified: Tue, 11 Sep 2018 23:59:14 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7afa8830cbbf6686d8eb903996aeceb99eef12a5e79b5b64f4ea099aa157cb`  
		Last Modified: Wed, 12 Sep 2018 00:00:18 GMT  
		Size: 5.5 MB (5543265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef04a5050c049205cf1110d00b834a8a8a8bea0cbfbd81430aecc4aab7f90eb`  
		Last Modified: Wed, 12 Sep 2018 00:00:16 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b44d6105c92c2a6102b5a269421eb9f897145c47376517b0c001e9b66f2bbe`  
		Last Modified: Wed, 12 Sep 2018 00:00:16 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
