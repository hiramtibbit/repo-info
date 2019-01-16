<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats`

-	[`nats:1.4.0`](#nats140)
-	[`nats:1.4.0-linux`](#nats140-linux)
-	[`nats:1.4.0-nanoserver`](#nats140-nanoserver)
-	[`nats:1.4.0-windowsservercore`](#nats140-windowsservercore)
-	[`nats:latest`](#natslatest)
-	[`nats:linux`](#natslinux)
-	[`nats:nanoserver`](#natsnanoserver)
-	[`nats:windowsservercore`](#natswindowsservercore)

## `nats:1.4.0`

```console
$ docker pull nats@sha256:5e25736ee9eea5f8d78ebb75db5b94d1c5f790712cddb6b203a360cba48066c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2551; amd64

### `nats:1.4.0` - linux; amd64

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

### `nats:1.4.0` - linux; arm variant v6

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

### `nats:1.4.0` - linux; arm variant v7

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

### `nats:1.4.0` - linux; arm64 variant v8

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

### `nats:1.4.0` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats@sha256:43ca4dc35b3439c3a3c84e1b7f331fe37e0f9f1cc7913d8c87add1ed75c00347
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.6 MB (438555718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6ff29b3a59076f8bf7443d72bed3a702ce0add39dad507f2a74a76fe1e634d`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 18:58:14 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 25 Dec 2018 18:59:38 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 16 Jan 2019 10:15:12 GMT
RUN cmd /S /C #(nop) COPY file:bdbacb3a8303d2b35808a725baa9ca785382cc9c84a1cae21c227170bae11e45 in gnatsd.exe 
# Wed, 16 Jan 2019 10:15:13 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Wed, 16 Jan 2019 10:15:14 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 16 Jan 2019 10:15:16 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 16 Jan 2019 10:15:17 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d20c4d5c8a24ed1dedf4f428bf83dbcf505730bc0af377a47b81d2a024817d2`  
		Last Modified: Tue, 25 Dec 2018 18:58:46 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb95733af4db6592407624c90544531d34aad8b9f6a5d636b61af1b274ea9213`  
		Last Modified: Tue, 25 Dec 2018 19:00:13 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb9f4c90ef2c9b51edb879fad8bde03deb6eb7fa78c7ad82c62b0a720219ab0`  
		Last Modified: Wed, 16 Jan 2019 10:15:47 GMT  
		Size: 3.2 MB (3152241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8324a08036428de881723c8e46ed2067cbd4d893479862a32180de13db0b4aac`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac0a9d6f2d8d82652b8477ee6c9a207fae8964f565b28548fd1f6c4d72d2da1`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f723d2f470e7f1e618cda636a5141b199fbcb9f1be37998e5df383e474b49e76`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace6ed46c089763d593ddcf87e4d243121ce81eac5c32f1eed558bfa97a03f29`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.4.0-linux`

```console
$ docker pull nats@sha256:d775c851c027b8ec45d486b5101fd593a700cab6664205a37a776b23854ab3a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:1.4.0-linux` - linux; amd64

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

### `nats:1.4.0-linux` - linux; arm variant v6

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

### `nats:1.4.0-linux` - linux; arm variant v7

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

### `nats:1.4.0-linux` - linux; arm64 variant v8

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

## `nats:1.4.0-nanoserver`

```console
$ docker pull nats@sha256:9fb1ab6462516b4fbc794a7655b6241b480d9d4fed6f125f33eb92a328374c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `nats:1.4.0-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats@sha256:43ca4dc35b3439c3a3c84e1b7f331fe37e0f9f1cc7913d8c87add1ed75c00347
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.6 MB (438555718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6ff29b3a59076f8bf7443d72bed3a702ce0add39dad507f2a74a76fe1e634d`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 18:58:14 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 25 Dec 2018 18:59:38 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 16 Jan 2019 10:15:12 GMT
RUN cmd /S /C #(nop) COPY file:bdbacb3a8303d2b35808a725baa9ca785382cc9c84a1cae21c227170bae11e45 in gnatsd.exe 
# Wed, 16 Jan 2019 10:15:13 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Wed, 16 Jan 2019 10:15:14 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 16 Jan 2019 10:15:16 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 16 Jan 2019 10:15:17 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d20c4d5c8a24ed1dedf4f428bf83dbcf505730bc0af377a47b81d2a024817d2`  
		Last Modified: Tue, 25 Dec 2018 18:58:46 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb95733af4db6592407624c90544531d34aad8b9f6a5d636b61af1b274ea9213`  
		Last Modified: Tue, 25 Dec 2018 19:00:13 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb9f4c90ef2c9b51edb879fad8bde03deb6eb7fa78c7ad82c62b0a720219ab0`  
		Last Modified: Wed, 16 Jan 2019 10:15:47 GMT  
		Size: 3.2 MB (3152241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8324a08036428de881723c8e46ed2067cbd4d893479862a32180de13db0b4aac`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac0a9d6f2d8d82652b8477ee6c9a207fae8964f565b28548fd1f6c4d72d2da1`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f723d2f470e7f1e618cda636a5141b199fbcb9f1be37998e5df383e474b49e76`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace6ed46c089763d593ddcf87e4d243121ce81eac5c32f1eed558bfa97a03f29`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.4.0-windowsservercore`

```console
$ docker pull nats@sha256:c17d23a88ec6a875a365ba3d6e03ceb671530fb165d9ced966c99a9060145c18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `nats:1.4.0-windowsservercore` - windows version 10.0.14393.2724; amd64

```console
$ docker pull nats@sha256:74620e38c0d0701454bc2397fa979a2476b0010222cae8ce61e4065725160175
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5638976615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b8fc285143e9a6e987159f6a4db3638157be7a3cc818199a09bb11cdc4b0514`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Wed, 16 Jan 2019 10:15:22 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 16 Jan 2019 10:15:23 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 16 Jan 2019 10:15:25 GMT
RUN cmd /S /C #(nop) COPY file:bdbacb3a8303d2b35808a725baa9ca785382cc9c84a1cae21c227170bae11e45 in gnatsd.exe 
# Wed, 16 Jan 2019 10:15:27 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Wed, 16 Jan 2019 10:15:28 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 16 Jan 2019 10:15:29 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 16 Jan 2019 10:15:30 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:841388388e527c92b099880239db11e129d4d9d0ffa56a19dccc5811e33c0874`  
		Last Modified: Wed, 16 Jan 2019 10:16:00 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695fd6bfa703d397b2891a0f71228b0d1bd5e88c2360e62278faf716aa17253a`  
		Last Modified: Wed, 16 Jan 2019 10:16:00 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b259c3213e9b0d3d4e0c739d73a54d7647824b73a06bd2c0bf584f232dc5bbf`  
		Last Modified: Wed, 16 Jan 2019 10:15:59 GMT  
		Size: 3.2 MB (3152445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f4dd1ec7a18c868012d37959216b3ba04a061c384ec1bf8626fddccb6bc53`  
		Last Modified: Wed, 16 Jan 2019 10:15:58 GMT  
		Size: 1.9 KB (1894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aec7837b2fc28309c65d6ac16bd6d1385ca9a70edcf5ac60e51eb1281fcea47`  
		Last Modified: Wed, 16 Jan 2019 10:15:58 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524d44c21f8aa86535c655c9609f003e2c0b956747c305349d06afe9401342fe`  
		Last Modified: Wed, 16 Jan 2019 10:15:58 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1600ac90dddfc333c75aa8ec1194b8c33cec44ca29a89228500f1af373e9b0d6`  
		Last Modified: Wed, 16 Jan 2019 10:15:58 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:latest`

```console
$ docker pull nats@sha256:5e25736ee9eea5f8d78ebb75db5b94d1c5f790712cddb6b203a360cba48066c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2551; amd64

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

### `nats:latest` - linux; arm variant v7

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

### `nats:latest` - linux; arm64 variant v8

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

### `nats:latest` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats@sha256:43ca4dc35b3439c3a3c84e1b7f331fe37e0f9f1cc7913d8c87add1ed75c00347
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.6 MB (438555718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6ff29b3a59076f8bf7443d72bed3a702ce0add39dad507f2a74a76fe1e634d`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 18:58:14 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 25 Dec 2018 18:59:38 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 16 Jan 2019 10:15:12 GMT
RUN cmd /S /C #(nop) COPY file:bdbacb3a8303d2b35808a725baa9ca785382cc9c84a1cae21c227170bae11e45 in gnatsd.exe 
# Wed, 16 Jan 2019 10:15:13 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Wed, 16 Jan 2019 10:15:14 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 16 Jan 2019 10:15:16 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 16 Jan 2019 10:15:17 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d20c4d5c8a24ed1dedf4f428bf83dbcf505730bc0af377a47b81d2a024817d2`  
		Last Modified: Tue, 25 Dec 2018 18:58:46 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb95733af4db6592407624c90544531d34aad8b9f6a5d636b61af1b274ea9213`  
		Last Modified: Tue, 25 Dec 2018 19:00:13 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb9f4c90ef2c9b51edb879fad8bde03deb6eb7fa78c7ad82c62b0a720219ab0`  
		Last Modified: Wed, 16 Jan 2019 10:15:47 GMT  
		Size: 3.2 MB (3152241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8324a08036428de881723c8e46ed2067cbd4d893479862a32180de13db0b4aac`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac0a9d6f2d8d82652b8477ee6c9a207fae8964f565b28548fd1f6c4d72d2da1`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f723d2f470e7f1e618cda636a5141b199fbcb9f1be37998e5df383e474b49e76`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace6ed46c089763d593ddcf87e4d243121ce81eac5c32f1eed558bfa97a03f29`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `nats:nanoserver`

```console
$ docker pull nats@sha256:9fb1ab6462516b4fbc794a7655b6241b480d9d4fed6f125f33eb92a328374c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `nats:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats@sha256:43ca4dc35b3439c3a3c84e1b7f331fe37e0f9f1cc7913d8c87add1ed75c00347
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.6 MB (438555718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6ff29b3a59076f8bf7443d72bed3a702ce0add39dad507f2a74a76fe1e634d`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 18:58:14 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 25 Dec 2018 18:59:38 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 16 Jan 2019 10:15:12 GMT
RUN cmd /S /C #(nop) COPY file:bdbacb3a8303d2b35808a725baa9ca785382cc9c84a1cae21c227170bae11e45 in gnatsd.exe 
# Wed, 16 Jan 2019 10:15:13 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Wed, 16 Jan 2019 10:15:14 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 16 Jan 2019 10:15:16 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 16 Jan 2019 10:15:17 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d20c4d5c8a24ed1dedf4f428bf83dbcf505730bc0af377a47b81d2a024817d2`  
		Last Modified: Tue, 25 Dec 2018 18:58:46 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb95733af4db6592407624c90544531d34aad8b9f6a5d636b61af1b274ea9213`  
		Last Modified: Tue, 25 Dec 2018 19:00:13 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb9f4c90ef2c9b51edb879fad8bde03deb6eb7fa78c7ad82c62b0a720219ab0`  
		Last Modified: Wed, 16 Jan 2019 10:15:47 GMT  
		Size: 3.2 MB (3152241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8324a08036428de881723c8e46ed2067cbd4d893479862a32180de13db0b4aac`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac0a9d6f2d8d82652b8477ee6c9a207fae8964f565b28548fd1f6c4d72d2da1`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f723d2f470e7f1e618cda636a5141b199fbcb9f1be37998e5df383e474b49e76`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace6ed46c089763d593ddcf87e4d243121ce81eac5c32f1eed558bfa97a03f29`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:c17d23a88ec6a875a365ba3d6e03ceb671530fb165d9ced966c99a9060145c18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `nats:windowsservercore` - windows version 10.0.14393.2724; amd64

```console
$ docker pull nats@sha256:74620e38c0d0701454bc2397fa979a2476b0010222cae8ce61e4065725160175
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5638976615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b8fc285143e9a6e987159f6a4db3638157be7a3cc818199a09bb11cdc4b0514`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Wed, 16 Jan 2019 10:15:22 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 16 Jan 2019 10:15:23 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 16 Jan 2019 10:15:25 GMT
RUN cmd /S /C #(nop) COPY file:bdbacb3a8303d2b35808a725baa9ca785382cc9c84a1cae21c227170bae11e45 in gnatsd.exe 
# Wed, 16 Jan 2019 10:15:27 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Wed, 16 Jan 2019 10:15:28 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 16 Jan 2019 10:15:29 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 16 Jan 2019 10:15:30 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:841388388e527c92b099880239db11e129d4d9d0ffa56a19dccc5811e33c0874`  
		Last Modified: Wed, 16 Jan 2019 10:16:00 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695fd6bfa703d397b2891a0f71228b0d1bd5e88c2360e62278faf716aa17253a`  
		Last Modified: Wed, 16 Jan 2019 10:16:00 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b259c3213e9b0d3d4e0c739d73a54d7647824b73a06bd2c0bf584f232dc5bbf`  
		Last Modified: Wed, 16 Jan 2019 10:15:59 GMT  
		Size: 3.2 MB (3152445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f4dd1ec7a18c868012d37959216b3ba04a061c384ec1bf8626fddccb6bc53`  
		Last Modified: Wed, 16 Jan 2019 10:15:58 GMT  
		Size: 1.9 KB (1894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aec7837b2fc28309c65d6ac16bd6d1385ca9a70edcf5ac60e51eb1281fcea47`  
		Last Modified: Wed, 16 Jan 2019 10:15:58 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524d44c21f8aa86535c655c9609f003e2c0b956747c305349d06afe9401342fe`  
		Last Modified: Wed, 16 Jan 2019 10:15:58 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1600ac90dddfc333c75aa8ec1194b8c33cec44ca29a89228500f1af373e9b0d6`  
		Last Modified: Wed, 16 Jan 2019 10:15:58 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
