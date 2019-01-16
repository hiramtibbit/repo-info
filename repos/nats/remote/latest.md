## `nats:latest`

```console
$ docker pull nats@sha256:ab9aef412f4084c937884f5f10bb79859a4c7af2727327fe4adebf65a3538093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:954817bf98bd6c37d1722bdfdaec7a7cd5b2815fe19e96ecaabf8a2b3bdeba7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2984278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77f246f2b78a9b225c8406c5c24dfbac6b0cc93b7090c5367eb5a932bab81289`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 16 Jan 2019 08:49:43 GMT
COPY file:7589f4129b0cf07d03cc5b3efab3de863f8a0a7f11391d43bb55a7f219d53985 in /gnatsd 
# Wed, 16 Jan 2019 08:49:43 GMT
COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Wed, 16 Jan 2019 08:49:45 GMT
EXPOSE 4222 6222 8222
# Wed, 16 Jan 2019 08:49:46 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 16 Jan 2019 08:49:46 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:ce15ca7fa528aa397c86d5a7c2691b4570a8e45230821510158a54df5c8951aa`  
		Last Modified: Wed, 16 Jan 2019 08:49:57 GMT  
		Size: 3.0 MB (2983801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755b9447d3ce9b00d42f7f11b115202374fe4e34945dbb15d315ca52126acbf2`  
		Last Modified: Wed, 16 Jan 2019 08:49:56 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
