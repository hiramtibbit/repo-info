## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:04fcd96af6c0ecc380b7cd059563ec1ae415cb5a6ba067894f02904ba5078ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:c95c6c7c5e8968743ecbba039dc593bdd6dbf34d7a9727f7f4dbdd80cb84699e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5778400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2277b2db9e84e18d007b829b09dc54267c6f659ea2f4ae6230ec8a9e6ce7d1`
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
# Tue, 11 Sep 2018 23:58:04 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Tue, 11 Sep 2018 23:58:04 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 11 Sep 2018 23:58:04 GMT
WORKDIR /notary/signer
# Tue, 11 Sep 2018 23:58:05 GMT
RUN adduser -D -H -g "" notary
# Tue, 11 Sep 2018 23:58:05 GMT
USER [notary]
# Tue, 11 Sep 2018 23:58:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 11 Sep 2018 23:58:06 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 11 Sep 2018 23:58:06 GMT
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
	-	`sha256:def97dfd7ce2c534911d84250fc37f72cdbdb11658f733babd9929f64961d563`  
		Last Modified: Tue, 11 Sep 2018 23:59:36 GMT  
		Size: 3.6 MB (3569553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fd377b2e3965cee0d0c8b1e994e5039001267555e99fc1101a55f0733535fa`  
		Last Modified: Tue, 11 Sep 2018 23:59:35 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6615ba2efd22cefcef90ba20d22db1cb9937dc73d16cd642b35a20f9cc8cc4`  
		Last Modified: Tue, 11 Sep 2018 23:59:36 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
