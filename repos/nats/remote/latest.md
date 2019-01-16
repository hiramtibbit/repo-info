## `nats:latest`

```console
$ docker pull nats@sha256:af2191c68225f154a28bfba735921b6caef7cb0d214a54848f779c223ee46948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:702f5a160303e600ae1acd0db371740b2dc2804cdc23752dd1891760dd94eebe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0be12c3a748933a5ee0079b205f70f5f82c1927b0483ddfdbcbf35c878651b73`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 16 Jan 2019 00:21:47 GMT
COPY file:9d24910c024265a250f05027b8a099a018e35a339502235d0a8a9690ccb5a5ee in /gnatsd 
# Wed, 16 Jan 2019 00:21:47 GMT
COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Wed, 16 Jan 2019 00:21:47 GMT
EXPOSE 4222 6222 8222
# Wed, 16 Jan 2019 00:21:47 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 16 Jan 2019 00:21:48 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:a808a68bbadbac34ebf6f956e12728b4d98dd21782522a69ddc6cd183f319125`  
		Last Modified: Wed, 16 Jan 2019 00:22:04 GMT  
		Size: 3.2 MB (3178688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a3059b52bbfbc79b60a17976c5797ce91ff8e37828016d33ed7c9a23189522`  
		Last Modified: Wed, 16 Jan 2019 00:22:04 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
