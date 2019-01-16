## `nats:linux`

```console
$ docker pull nats@sha256:d775c851c027b8ec45d486b5101fd593a700cab6664205a37a776b23854ab3a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:linux` - linux; amd64

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

### `nats:linux` - linux; arm variant v6

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

### `nats:linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:ea2f94479dbd2d64152f72a97fed243b72121197de4b61f2bd04988f9a8feb92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2981837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1337b4d019e02b9362c1d08c1a45c23326ae1516306ed73cb29ccff851d3f832`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 16 Jan 2019 12:57:43 GMT
COPY file:1c2f61298a3e5a16805650c90b36059b691ac599592d0d94192b9bf2ba758ead in /gnatsd 
# Wed, 16 Jan 2019 12:57:43 GMT
COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Wed, 16 Jan 2019 12:57:44 GMT
EXPOSE 4222 6222 8222
# Wed, 16 Jan 2019 12:57:44 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 16 Jan 2019 12:57:45 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:40c57dd9982dc8132a3fcd9baacc6bb49ab6838cafcc40797f3ac55950bedc86`  
		Last Modified: Wed, 16 Jan 2019 12:57:55 GMT  
		Size: 3.0 MB (2981359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d430b1b3885f2f9dac1d4e7e802e1f7e7a81de5c7f6be1156edb5724e773c42a`  
		Last Modified: Wed, 16 Jan 2019 12:57:54 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:995c774e3315800cf80a2dbfac59581519fb89dfcd065bfad588406f27408935
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2910550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68db8bd8e09c3b9e34c807693f117f6d59f19b69b2570fd935004cac58b8470d`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 16 Jan 2019 10:08:12 GMT
COPY file:4ad20a233a15f5d721dc6d3d42dc271ceba19dbb17ab05b5193275c71ec6bcf2 in /gnatsd 
# Wed, 16 Jan 2019 10:08:13 GMT
COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Wed, 16 Jan 2019 10:08:14 GMT
EXPOSE 4222 6222 8222
# Wed, 16 Jan 2019 10:08:15 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 16 Jan 2019 10:08:16 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:ecbb34167bb2fa110d6f514c40ad47166059b6648272d0c35fd7f22327ecead3`  
		Last Modified: Wed, 16 Jan 2019 10:08:34 GMT  
		Size: 2.9 MB (2910073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525262b4e74cc8aec0e26170066f28f1c0da99fe5a19823bd68a1f1d27cd4a23`  
		Last Modified: Wed, 16 Jan 2019 10:08:33 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
