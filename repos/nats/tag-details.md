<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats`

-	[`nats:1.0.6`](#nats106)
-	[`nats:1.0.6-linux`](#nats106-linux)
-	[`nats:1.0.6-nanoserver`](#nats106-nanoserver)
-	[`nats:1.0.6-windowsservercore`](#nats106-windowsservercore)
-	[`nats:latest`](#natslatest)
-	[`nats:linux`](#natslinux)
-	[`nats:nanoserver`](#natsnanoserver)
-	[`nats:windowsservercore`](#natswindowsservercore)

## `nats:1.0.6`

```console
$ docker pull nats@sha256:e5e6022b5ebf97b7c0757d72f4d06c9edb423e97c924011ec5e2b7ac24746d30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.2068; amd64

### `nats:1.0.6` - linux; amd64

```console
$ docker pull nats@sha256:7bbc31229601059b39876f74de190d8c91a94993c8f222a7146334abd3857c84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2469522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adf3ecbf9f39abaea9fc1dcfcb23850b3a655c3970b0f191371c25e20ef8d46`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 03 Nov 2017 23:13:39 GMT
COPY file:63ad17619d77b10929e5a355d42e4e4635cf82cf72bdd52c317304c905228e98 in /gnatsd 
# Fri, 03 Nov 2017 23:13:39 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 03 Nov 2017 23:13:39 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 03 Nov 2017 23:13:39 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 03 Nov 2017 23:13:39 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:f169c9506d7479c0ce61575a67c1639e6dd6fe19ecd9e9280470fa0550ce87d2`  
		Last Modified: Fri, 03 Nov 2017 23:13:45 GMT  
		Size: 2.5 MB (2469046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9eff5cafb0142f09f1a6ff709e01b177b4c897ee8d72c7deb2dafe2ee3d084`  
		Last Modified: Fri, 03 Nov 2017 23:13:45 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:1.0.6` - windows version 10.0.14393.2068; amd64

```console
$ docker pull nats@sha256:a40883e4ef9e68cf5af1a85fd9e258c819185f63298f624138457d1391cdc496
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.0 MB (407982344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc15ccd094484b999a5635371b5a3983dff45cf03b16eda5eda82e31d2d94e7e`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:43:23 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 00:36:47 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Feb 2018 00:36:49 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 14 Feb 2018 00:36:50 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 14 Feb 2018 00:36:51 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 14 Feb 2018 00:36:52 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 14 Feb 2018 00:36:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 14 Feb 2018 00:36:53 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cb1aafb7147372cc64faa070b94a893b8cd2e3de3a0e8001dc225c627d991c58`  
		Last Modified: Tue, 13 Feb 2018 19:43:23 GMT  
		Size: 152.8 MB (152802641 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:519ff6e2ee5971b673c031efcb8024058dd88c0d995c3abf303def2652d3429a`  
		Last Modified: Wed, 14 Feb 2018 00:37:19 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca2b33537e2731b959493bccb10d6ef5c55122747a2f5cf7e79d2a574f9f93c`  
		Last Modified: Wed, 14 Feb 2018 00:37:18 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e20cb22bdae412027cf063f0776df9c5c3cdc1e48a6b8dfef25ce4b01d33c04`  
		Last Modified: Wed, 14 Feb 2018 00:37:17 GMT  
		Size: 2.5 MB (2482072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbdcea984738415b02a933274b9aaccd3fbfd79c942bc65f1b4bcd73e6021c3`  
		Last Modified: Wed, 14 Feb 2018 00:37:15 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e22bf071a2a0efcbdbf8fbe3d77876f40e89f0593359a63ac4147160e5e24be`  
		Last Modified: Wed, 14 Feb 2018 00:37:16 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691880faa41978256edb96ff1145e60d18c425f9867affd3a1c4072698004d50`  
		Last Modified: Wed, 14 Feb 2018 00:37:16 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2cdf38264ebd22cd30112f3c3f7ff81cbe3eabd62c5364312faac89d79567d4`  
		Last Modified: Wed, 14 Feb 2018 00:37:15 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.0.6-linux`

```console
$ docker pull nats@sha256:2a6a9a7ddb63659ffc1e5311b960467204634dd35cb276dc522ff0c73d3a987e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nats:1.0.6-linux` - linux; amd64

```console
$ docker pull nats@sha256:7bbc31229601059b39876f74de190d8c91a94993c8f222a7146334abd3857c84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2469522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adf3ecbf9f39abaea9fc1dcfcb23850b3a655c3970b0f191371c25e20ef8d46`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 03 Nov 2017 23:13:39 GMT
COPY file:63ad17619d77b10929e5a355d42e4e4635cf82cf72bdd52c317304c905228e98 in /gnatsd 
# Fri, 03 Nov 2017 23:13:39 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 03 Nov 2017 23:13:39 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 03 Nov 2017 23:13:39 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 03 Nov 2017 23:13:39 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:f169c9506d7479c0ce61575a67c1639e6dd6fe19ecd9e9280470fa0550ce87d2`  
		Last Modified: Fri, 03 Nov 2017 23:13:45 GMT  
		Size: 2.5 MB (2469046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9eff5cafb0142f09f1a6ff709e01b177b4c897ee8d72c7deb2dafe2ee3d084`  
		Last Modified: Fri, 03 Nov 2017 23:13:45 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.0.6-nanoserver`

```console
$ docker pull nats@sha256:ed4c2df667c5ee0b27fa63b7f58bf574487301738941efdcffebd4841ba85c79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `nats:1.0.6-nanoserver` - windows version 10.0.14393.2068; amd64

```console
$ docker pull nats@sha256:a40883e4ef9e68cf5af1a85fd9e258c819185f63298f624138457d1391cdc496
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.0 MB (407982344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc15ccd094484b999a5635371b5a3983dff45cf03b16eda5eda82e31d2d94e7e`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:43:23 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 00:36:47 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Feb 2018 00:36:49 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 14 Feb 2018 00:36:50 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 14 Feb 2018 00:36:51 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 14 Feb 2018 00:36:52 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 14 Feb 2018 00:36:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 14 Feb 2018 00:36:53 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cb1aafb7147372cc64faa070b94a893b8cd2e3de3a0e8001dc225c627d991c58`  
		Last Modified: Tue, 13 Feb 2018 19:43:23 GMT  
		Size: 152.8 MB (152802641 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:519ff6e2ee5971b673c031efcb8024058dd88c0d995c3abf303def2652d3429a`  
		Last Modified: Wed, 14 Feb 2018 00:37:19 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca2b33537e2731b959493bccb10d6ef5c55122747a2f5cf7e79d2a574f9f93c`  
		Last Modified: Wed, 14 Feb 2018 00:37:18 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e20cb22bdae412027cf063f0776df9c5c3cdc1e48a6b8dfef25ce4b01d33c04`  
		Last Modified: Wed, 14 Feb 2018 00:37:17 GMT  
		Size: 2.5 MB (2482072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbdcea984738415b02a933274b9aaccd3fbfd79c942bc65f1b4bcd73e6021c3`  
		Last Modified: Wed, 14 Feb 2018 00:37:15 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e22bf071a2a0efcbdbf8fbe3d77876f40e89f0593359a63ac4147160e5e24be`  
		Last Modified: Wed, 14 Feb 2018 00:37:16 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691880faa41978256edb96ff1145e60d18c425f9867affd3a1c4072698004d50`  
		Last Modified: Wed, 14 Feb 2018 00:37:16 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2cdf38264ebd22cd30112f3c3f7ff81cbe3eabd62c5364312faac89d79567d4`  
		Last Modified: Wed, 14 Feb 2018 00:37:15 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.0.6-windowsservercore`

```console
$ docker pull nats@sha256:42b52f277a7887a080020571e4ddf43c46c0feed6beb1bd1647d599cb2aed0f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `nats:1.0.6-windowsservercore` - windows version 10.0.14393.2068; amd64

```console
$ docker pull nats@sha256:a7dace3a5facc2cbb5f0c234e53b229f3a6b11f8e4a7b72ffb77575cad8e7c78
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5380632266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efae723a48c37758098bc438d2cbb8f90545a57bd6b8efcbd5ca2bda981a286f`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 00:36:59 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Feb 2018 00:37:00 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 14 Feb 2018 00:37:01 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 14 Feb 2018 00:37:03 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 14 Feb 2018 00:37:04 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 14 Feb 2018 00:37:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 14 Feb 2018 00:37:05 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f00f076cc1bedff049d5fbc1d724645767133c4e01b51ce5f579d69aab8f391c`  
		Last Modified: Wed, 14 Feb 2018 00:37:32 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1c0ea28840eaab9944b1afda97e4a183336f167de384548a9b9c5f41aef2631`  
		Last Modified: Wed, 14 Feb 2018 00:37:33 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31995a6dac1953312354203fad66ee5e5a09c0f6e60966faf64654b59a3a027`  
		Last Modified: Wed, 14 Feb 2018 00:37:31 GMT  
		Size: 2.5 MB (2482284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c1390e3cfd84a1cec694dfe7d7cd4fb3b98ec6f4d026f78190f147d15be00b`  
		Last Modified: Wed, 14 Feb 2018 00:37:30 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e917930c831976dee98d8a05a3e9fcd6455c78ea2af26ad6853f31cf522629`  
		Last Modified: Wed, 14 Feb 2018 00:37:30 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c33bf5e01c2aa0e1a4773976bcb24d3b22c3c1fa5b2adb7527bfe52f4e9d979`  
		Last Modified: Wed, 14 Feb 2018 00:37:30 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ee8e107257ff01a753a6bd3633ac45280d29b63b63ccd01f837eb094bc9b1a`  
		Last Modified: Wed, 14 Feb 2018 00:37:30 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:latest`

```console
$ docker pull nats@sha256:e5e6022b5ebf97b7c0757d72f4d06c9edb423e97c924011ec5e2b7ac24746d30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.2068; amd64

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:7bbc31229601059b39876f74de190d8c91a94993c8f222a7146334abd3857c84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2469522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adf3ecbf9f39abaea9fc1dcfcb23850b3a655c3970b0f191371c25e20ef8d46`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 03 Nov 2017 23:13:39 GMT
COPY file:63ad17619d77b10929e5a355d42e4e4635cf82cf72bdd52c317304c905228e98 in /gnatsd 
# Fri, 03 Nov 2017 23:13:39 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 03 Nov 2017 23:13:39 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 03 Nov 2017 23:13:39 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 03 Nov 2017 23:13:39 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:f169c9506d7479c0ce61575a67c1639e6dd6fe19ecd9e9280470fa0550ce87d2`  
		Last Modified: Fri, 03 Nov 2017 23:13:45 GMT  
		Size: 2.5 MB (2469046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9eff5cafb0142f09f1a6ff709e01b177b4c897ee8d72c7deb2dafe2ee3d084`  
		Last Modified: Fri, 03 Nov 2017 23:13:45 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - windows version 10.0.14393.2068; amd64

```console
$ docker pull nats@sha256:a40883e4ef9e68cf5af1a85fd9e258c819185f63298f624138457d1391cdc496
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.0 MB (407982344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc15ccd094484b999a5635371b5a3983dff45cf03b16eda5eda82e31d2d94e7e`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:43:23 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 00:36:47 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Feb 2018 00:36:49 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 14 Feb 2018 00:36:50 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 14 Feb 2018 00:36:51 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 14 Feb 2018 00:36:52 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 14 Feb 2018 00:36:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 14 Feb 2018 00:36:53 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cb1aafb7147372cc64faa070b94a893b8cd2e3de3a0e8001dc225c627d991c58`  
		Last Modified: Tue, 13 Feb 2018 19:43:23 GMT  
		Size: 152.8 MB (152802641 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:519ff6e2ee5971b673c031efcb8024058dd88c0d995c3abf303def2652d3429a`  
		Last Modified: Wed, 14 Feb 2018 00:37:19 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca2b33537e2731b959493bccb10d6ef5c55122747a2f5cf7e79d2a574f9f93c`  
		Last Modified: Wed, 14 Feb 2018 00:37:18 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e20cb22bdae412027cf063f0776df9c5c3cdc1e48a6b8dfef25ce4b01d33c04`  
		Last Modified: Wed, 14 Feb 2018 00:37:17 GMT  
		Size: 2.5 MB (2482072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbdcea984738415b02a933274b9aaccd3fbfd79c942bc65f1b4bcd73e6021c3`  
		Last Modified: Wed, 14 Feb 2018 00:37:15 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e22bf071a2a0efcbdbf8fbe3d77876f40e89f0593359a63ac4147160e5e24be`  
		Last Modified: Wed, 14 Feb 2018 00:37:16 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691880faa41978256edb96ff1145e60d18c425f9867affd3a1c4072698004d50`  
		Last Modified: Wed, 14 Feb 2018 00:37:16 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2cdf38264ebd22cd30112f3c3f7ff81cbe3eabd62c5364312faac89d79567d4`  
		Last Modified: Wed, 14 Feb 2018 00:37:15 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:linux`

```console
$ docker pull nats@sha256:2a6a9a7ddb63659ffc1e5311b960467204634dd35cb276dc522ff0c73d3a987e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nats:linux` - linux; amd64

```console
$ docker pull nats@sha256:7bbc31229601059b39876f74de190d8c91a94993c8f222a7146334abd3857c84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2469522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adf3ecbf9f39abaea9fc1dcfcb23850b3a655c3970b0f191371c25e20ef8d46`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 03 Nov 2017 23:13:39 GMT
COPY file:63ad17619d77b10929e5a355d42e4e4635cf82cf72bdd52c317304c905228e98 in /gnatsd 
# Fri, 03 Nov 2017 23:13:39 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 03 Nov 2017 23:13:39 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 03 Nov 2017 23:13:39 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 03 Nov 2017 23:13:39 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:f169c9506d7479c0ce61575a67c1639e6dd6fe19ecd9e9280470fa0550ce87d2`  
		Last Modified: Fri, 03 Nov 2017 23:13:45 GMT  
		Size: 2.5 MB (2469046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9eff5cafb0142f09f1a6ff709e01b177b4c897ee8d72c7deb2dafe2ee3d084`  
		Last Modified: Fri, 03 Nov 2017 23:13:45 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver`

```console
$ docker pull nats@sha256:ed4c2df667c5ee0b27fa63b7f58bf574487301738941efdcffebd4841ba85c79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `nats:nanoserver` - windows version 10.0.14393.2068; amd64

```console
$ docker pull nats@sha256:a40883e4ef9e68cf5af1a85fd9e258c819185f63298f624138457d1391cdc496
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.0 MB (407982344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc15ccd094484b999a5635371b5a3983dff45cf03b16eda5eda82e31d2d94e7e`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:43:23 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 00:36:47 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Feb 2018 00:36:49 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 14 Feb 2018 00:36:50 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 14 Feb 2018 00:36:51 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 14 Feb 2018 00:36:52 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 14 Feb 2018 00:36:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 14 Feb 2018 00:36:53 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cb1aafb7147372cc64faa070b94a893b8cd2e3de3a0e8001dc225c627d991c58`  
		Last Modified: Tue, 13 Feb 2018 19:43:23 GMT  
		Size: 152.8 MB (152802641 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:519ff6e2ee5971b673c031efcb8024058dd88c0d995c3abf303def2652d3429a`  
		Last Modified: Wed, 14 Feb 2018 00:37:19 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca2b33537e2731b959493bccb10d6ef5c55122747a2f5cf7e79d2a574f9f93c`  
		Last Modified: Wed, 14 Feb 2018 00:37:18 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e20cb22bdae412027cf063f0776df9c5c3cdc1e48a6b8dfef25ce4b01d33c04`  
		Last Modified: Wed, 14 Feb 2018 00:37:17 GMT  
		Size: 2.5 MB (2482072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbdcea984738415b02a933274b9aaccd3fbfd79c942bc65f1b4bcd73e6021c3`  
		Last Modified: Wed, 14 Feb 2018 00:37:15 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e22bf071a2a0efcbdbf8fbe3d77876f40e89f0593359a63ac4147160e5e24be`  
		Last Modified: Wed, 14 Feb 2018 00:37:16 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691880faa41978256edb96ff1145e60d18c425f9867affd3a1c4072698004d50`  
		Last Modified: Wed, 14 Feb 2018 00:37:16 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2cdf38264ebd22cd30112f3c3f7ff81cbe3eabd62c5364312faac89d79567d4`  
		Last Modified: Wed, 14 Feb 2018 00:37:15 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:42b52f277a7887a080020571e4ddf43c46c0feed6beb1bd1647d599cb2aed0f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `nats:windowsservercore` - windows version 10.0.14393.2068; amd64

```console
$ docker pull nats@sha256:a7dace3a5facc2cbb5f0c234e53b229f3a6b11f8e4a7b72ffb77575cad8e7c78
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5380632266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efae723a48c37758098bc438d2cbb8f90545a57bd6b8efcbd5ca2bda981a286f`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 00:36:59 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Feb 2018 00:37:00 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 14 Feb 2018 00:37:01 GMT
RUN cmd /S /C #(nop) COPY file:61c1931f3ccb93e5489015f8e20111fb3b675785d0003458700c148a3daff2df in gnatsd.exe 
# Wed, 14 Feb 2018 00:37:03 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 14 Feb 2018 00:37:04 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 14 Feb 2018 00:37:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 14 Feb 2018 00:37:05 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f00f076cc1bedff049d5fbc1d724645767133c4e01b51ce5f579d69aab8f391c`  
		Last Modified: Wed, 14 Feb 2018 00:37:32 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1c0ea28840eaab9944b1afda97e4a183336f167de384548a9b9c5f41aef2631`  
		Last Modified: Wed, 14 Feb 2018 00:37:33 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31995a6dac1953312354203fad66ee5e5a09c0f6e60966faf64654b59a3a027`  
		Last Modified: Wed, 14 Feb 2018 00:37:31 GMT  
		Size: 2.5 MB (2482284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c1390e3cfd84a1cec694dfe7d7cd4fb3b98ec6f4d026f78190f147d15be00b`  
		Last Modified: Wed, 14 Feb 2018 00:37:30 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e917930c831976dee98d8a05a3e9fcd6455c78ea2af26ad6853f31cf522629`  
		Last Modified: Wed, 14 Feb 2018 00:37:30 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c33bf5e01c2aa0e1a4773976bcb24d3b22c3c1fa5b2adb7527bfe52f4e9d979`  
		Last Modified: Wed, 14 Feb 2018 00:37:30 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ee8e107257ff01a753a6bd3633ac45280d29b63b63ccd01f837eb094bc9b1a`  
		Last Modified: Wed, 14 Feb 2018 00:37:30 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
