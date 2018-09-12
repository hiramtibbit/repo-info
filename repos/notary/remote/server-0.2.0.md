## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:780232aaef29b0ac2c0171b6e9002247151c0e199badbf0a0994aefbed872b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:5f1a0c6f57fe5e26e99ec7627628442ad8ea3c5068ea5fde12c99b2b652bb322
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7988037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dae00081c639e953d6f1f935f81bddf35fb2b80e8824cd9d4e9bfd173856f9c4`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:57:36 GMT
EXPOSE 4443/tcp
# Tue, 11 Sep 2018 23:58:16 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 11 Sep 2018 23:58:38 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Tue, 11 Sep 2018 23:58:38 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 11 Sep 2018 23:58:38 GMT
WORKDIR /notary/server
# Tue, 11 Sep 2018 23:58:39 GMT
RUN adduser -D -H -g "" notary
# Tue, 11 Sep 2018 23:58:39 GMT
USER [notary]
# Tue, 11 Sep 2018 23:58:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 11 Sep 2018 23:58:39 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 11 Sep 2018 23:58:39 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6bd3183e94a8667b9a7ce1722dffa973892146a615c749a788324d3ddbc6af`  
		Last Modified: Tue, 11 Sep 2018 23:59:43 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f60ef807175949379a458930c4aa3811b786ae002a6d20ea3e1e5a729016b1`  
		Last Modified: Wed, 12 Sep 2018 00:00:04 GMT  
		Size: 5.8 MB (5779117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2037da3ac59bf2a24c6178540f8515cb221c7cb7cf3dcbb1483b2b060e3fee70`  
		Last Modified: Wed, 12 Sep 2018 00:00:02 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a7cd1c32600b548b662f3bdb6b396e8535782d226bae35c5e3b237df3b2a5d`  
		Last Modified: Wed, 12 Sep 2018 00:00:03 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
