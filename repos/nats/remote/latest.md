## `nats:latest`

```console
$ docker pull nats@sha256:8bab142b7c8c9d51907194a2b4691e7c8226dcdfd505aa60f3e7c10d810e33d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2312; amd64

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:81347e6a6e3f50b1d6edd6cdf0378e0791338f8202373f043b22f199ba246bf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2428752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba6ec78ed907929166e620e562e39b0bd944ecf9b20adbc0f073d4c9294c8cbd`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 06 Jul 2018 07:56:17 GMT
COPY file:c0709a77e10efcf9a4d60326007891eaf5ae3c3d235900d47bc5d0b69e8c28ac in /gnatsd 
# Fri, 06 Jul 2018 07:56:17 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 06 Jul 2018 07:56:18 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 06 Jul 2018 07:56:18 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 06 Jul 2018 07:56:18 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:c06c7f58f05d0800f5963beff7b7edcdac849c4e9ecc1d15cf5f3a8489ef7bad`  
		Last Modified: Fri, 06 Jul 2018 07:56:27 GMT  
		Size: 2.4 MB (2428277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4032a9ac7b62e1c18b158ae4a3ddeff3db685fac457415e1e6f12adf7df9d991`  
		Last Modified: Fri, 06 Jul 2018 07:56:26 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm variant v7

```console
$ docker pull nats@sha256:fb457ecbd5efd2f6075f10c96a5a095d9eb4e36016ee80233a1ca7ef89759e4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2426310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af6d26083f993ffc320665f0b09b21984244930d1430c868eec8a6a819ec33d`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 06 Jul 2018 11:57:49 GMT
COPY file:57f232556951a2f5755ee372f28730e18e8bc8507a3a38d375fc53856dd137ef in /gnatsd 
# Fri, 06 Jul 2018 11:57:50 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 06 Jul 2018 11:57:56 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 06 Jul 2018 11:57:57 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 06 Jul 2018 11:57:57 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:0a3e075bc40a5aaf4a60a8ae5351665c3ed811f143ed7f84d9bff4def76e4bef`  
		Last Modified: Fri, 06 Jul 2018 11:58:16 GMT  
		Size: 2.4 MB (2425833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6341f50d418bf59a8c311d4e1252570ab000df0b96d18e9fbf35689a11379d1`  
		Last Modified: Fri, 06 Jul 2018 11:58:15 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:e7b0f21856e24ea96397cadf0de9d6ca28fc97dcbf2e1a332eff8eb25ce761f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2377634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b452cb3409a51686a00b7e659ebfd624b77e3aee3c558580d198d1e1874171`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 06 Jul 2018 08:43:20 GMT
COPY file:738460bb407aaf2e699352a55a1b04147a62a3da1d5c34b59bac18d24ff1eede in /gnatsd 
# Fri, 06 Jul 2018 08:43:30 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 06 Jul 2018 08:43:30 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 06 Jul 2018 08:43:31 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 06 Jul 2018 08:43:32 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:5c64bb4f130cdcd5847e7b052b79af63283baed5777eb45bde84572dfcbbc790`  
		Last Modified: Fri, 06 Jul 2018 08:43:56 GMT  
		Size: 2.4 MB (2377156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8afd130607a2dcc5e817a803e9921a34a1c64ec6df68664bf5d49556736cb2`  
		Last Modified: Fri, 06 Jul 2018 08:43:55 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - windows version 10.0.14393.2312; amd64

```console
$ docker pull nats@sha256:0e03a92e8257155eb878b6fada4b11c9049d0aec79167493ab78a442b6cfad64
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.0 MB (421004165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004f5bc5214f8713d8fba2f0b8e8b9b52210012eead418c17a6505d23363b9a3`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:03 GMT
RUN Install update 10.0.14393.2312
# Wed, 04 Jul 2018 09:46:03 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Fri, 06 Jul 2018 09:41:17 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Fri, 06 Jul 2018 09:41:19 GMT
RUN cmd /S /C #(nop) COPY file:6ed5bb76c8a5f2c4b0c291249c9295e7a5f5e0688654335aa44e0b36cc55227a in gnatsd.exe 
# Fri, 06 Jul 2018 09:41:21 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 06 Jul 2018 09:41:21 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 06 Jul 2018 09:41:24 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 06 Jul 2018 09:41:26 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e7a598ed389ee13dc16cb56bd512d2eecc9597d79797803ef538a02b1e12351f`  
		Last Modified: Wed, 13 Jun 2018 00:36:03 GMT  
		Size: 165.7 MB (165749131 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a9b8eb83c4be00aa333cea97cdf6ceaf95035481bde902ce5e8f1490185df8ac`  
		Last Modified: Wed, 04 Jul 2018 09:46:26 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff745c8ded4f28bd94acebfca95d79b7ebda60d227df9f25287f143ae3074b38`  
		Last Modified: Fri, 06 Jul 2018 09:41:51 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f46c5f116d0ba090b824d08fbe1932dbc9cf6368b07d5707c8c3f53b11f251`  
		Last Modified: Fri, 06 Jul 2018 09:41:50 GMT  
		Size: 2.6 MB (2557368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5e645f7f069a02c3af0ea7fd9a0d3136e2476a6738c2a2bbc5a3e8ab9c6870`  
		Last Modified: Fri, 06 Jul 2018 09:41:49 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b5ac2d242bae56cf5a5b5eb461bb9c636e4a5050b9475ebd4e5a7862786564`  
		Last Modified: Fri, 06 Jul 2018 09:41:49 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d77792766f137e837e95f2c7ba3bf8d5504b9200f2280e4ead05a9fc017aa59`  
		Last Modified: Fri, 06 Jul 2018 09:41:49 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc91f57abfa02b7ccf6c1f7046021e8f69f4f834366406400c12fe7c4701858`  
		Last Modified: Fri, 06 Jul 2018 09:41:49 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
