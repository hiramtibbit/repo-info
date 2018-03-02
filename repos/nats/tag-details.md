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
$ docker pull nats@sha256:48ec69594d95e79365fef361ad7a3f8c2f84b40557dffb179d52e851a766d93f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
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

### `nats:1.0.6` - linux; arm variant v6

```console
$ docker pull nats@sha256:4401fafef97936e4573e60d1b6a2f167dbca236ec261bb205c45caad5d545d5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50f7faa91d11adc43a677dc156494487fea0647f49d5169a50cbd92b77b878e5`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 02 Mar 2018 22:13:17 GMT
COPY file:4c72f016acd5df0943e94d53abd26b6792081e18fbc8a56999611bd8ef0cd777 in /gnatsd 
# Fri, 02 Mar 2018 22:13:18 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:18 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:18 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 02 Mar 2018 22:13:18 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:c88f8a7f502e9eefec046c167a0dfded0c326ac7b9a899dc38ebd796064d7b1d`  
		Last Modified: Fri, 02 Mar 2018 22:13:27 GMT  
		Size: 2.3 MB (2308639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012b2d05ca0b4d78dcdd574701ecc442bd3f8fe76d0cda143b43cb0cd2b8f899`  
		Last Modified: Fri, 02 Mar 2018 22:13:26 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:1.0.6` - linux; arm variant v7

```console
$ docker pull nats@sha256:b4495122f109839cda22be0a15b56409a63d1723590163187a31a535423d3961
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a5a11ec9fbc279f21a37799b8799ae38b877d870fa7ff523c19c589c6edf9d`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 02 Mar 2018 22:13:31 GMT
COPY file:83d82782ebac3a82b29e92601a5b3baaebf1c9e416bc99e316c1084a0ac1c50c in /gnatsd 
# Fri, 02 Mar 2018 22:13:32 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:32 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:32 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 02 Mar 2018 22:13:32 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:89da658803b80a28819f351c4d9b43b903c2d2f8ad11cd95df0645ce885cecc7`  
		Last Modified: Fri, 02 Mar 2018 22:13:48 GMT  
		Size: 2.3 MB (2306040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c0666ba32ee51ec0bcc3fe9ef323212935644b024aabb6adc13c12cbc522bb`  
		Last Modified: Fri, 02 Mar 2018 22:13:48 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:1.0.6` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:90dd38b20a350dd5a4cdbe48c8a81102d608e52353be041d52e4b7b08cdb576e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2256780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410a4a3f27fa15cf805d050108db6331aba3f1d365a67048c1c56fdefeef7542`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 02 Mar 2018 22:13:53 GMT
COPY file:3f28a91014649df0cc944e5ec4785bee2a35c4a4e3f4031257d30c40cada853a in /gnatsd 
# Fri, 02 Mar 2018 22:13:53 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:54 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:54 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 02 Mar 2018 22:13:55 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bd670005fb569d6108cd2f6f5d66adac644f1466b0ed94c2458c2aafd973f325`  
		Last Modified: Fri, 02 Mar 2018 22:14:20 GMT  
		Size: 2.3 MB (2256304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a0727475b8b918cda3943167bba8f2172579a6826e73ed1760d0269721eb19`  
		Last Modified: Fri, 02 Mar 2018 22:14:19 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:1.0.6` - windows version 10.0.14393.2068; amd64

```console
$ docker pull nats@sha256:f8227ac4a218e95fc229b249d6bf40fc8e390edab9275e9fbf620990354c802f
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.0 MB (407978114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fedca9f8aea59282971c777f3128cd486fff9c121618d34aedb64a32c85fa3a9`
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
# Fri, 02 Mar 2018 22:13:30 GMT
RUN cmd /S /C #(nop) COPY file:3278feddd924b82f37ba78291a4d2812b05205cb187af1a883532fe2ae75db15 in gnatsd.exe 
# Fri, 02 Mar 2018 22:13:32 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:33 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 02 Mar 2018 22:13:34 GMT
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
	-	`sha256:96ac64810d5d8ca0b5305c4cd0bb8f7f54bb7dde285d389d61ed8346503f01e8`  
		Last Modified: Fri, 02 Mar 2018 22:13:58 GMT  
		Size: 2.5 MB (2477811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523fa9c5323d7e6f03ed5d880a412f987531781a091762389941d3d0ab05613e`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 1.7 KB (1712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2506ed6526d7a00ed4d267cb4677bc020131ce3c1835f7251a94195eacce5f84`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdaced3a03e782a3a007fa4fa2d71f514d4f83039c42e827f421a9749c2137a1`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705feb65e740d25598bffe0ad096851d43f723cf0c8ae3865d9f452bfc3b5398`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.0.6-linux`

```console
$ docker pull nats@sha256:d6c53e212268898f05216188dd913f2ed2b15836f6dfd986bea933729f62a7ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

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

### `nats:1.0.6-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:4401fafef97936e4573e60d1b6a2f167dbca236ec261bb205c45caad5d545d5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50f7faa91d11adc43a677dc156494487fea0647f49d5169a50cbd92b77b878e5`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 02 Mar 2018 22:13:17 GMT
COPY file:4c72f016acd5df0943e94d53abd26b6792081e18fbc8a56999611bd8ef0cd777 in /gnatsd 
# Fri, 02 Mar 2018 22:13:18 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:18 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:18 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 02 Mar 2018 22:13:18 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:c88f8a7f502e9eefec046c167a0dfded0c326ac7b9a899dc38ebd796064d7b1d`  
		Last Modified: Fri, 02 Mar 2018 22:13:27 GMT  
		Size: 2.3 MB (2308639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012b2d05ca0b4d78dcdd574701ecc442bd3f8fe76d0cda143b43cb0cd2b8f899`  
		Last Modified: Fri, 02 Mar 2018 22:13:26 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:1.0.6-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:b4495122f109839cda22be0a15b56409a63d1723590163187a31a535423d3961
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a5a11ec9fbc279f21a37799b8799ae38b877d870fa7ff523c19c589c6edf9d`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 02 Mar 2018 22:13:31 GMT
COPY file:83d82782ebac3a82b29e92601a5b3baaebf1c9e416bc99e316c1084a0ac1c50c in /gnatsd 
# Fri, 02 Mar 2018 22:13:32 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:32 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:32 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 02 Mar 2018 22:13:32 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:89da658803b80a28819f351c4d9b43b903c2d2f8ad11cd95df0645ce885cecc7`  
		Last Modified: Fri, 02 Mar 2018 22:13:48 GMT  
		Size: 2.3 MB (2306040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c0666ba32ee51ec0bcc3fe9ef323212935644b024aabb6adc13c12cbc522bb`  
		Last Modified: Fri, 02 Mar 2018 22:13:48 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:1.0.6-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:90dd38b20a350dd5a4cdbe48c8a81102d608e52353be041d52e4b7b08cdb576e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2256780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410a4a3f27fa15cf805d050108db6331aba3f1d365a67048c1c56fdefeef7542`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 02 Mar 2018 22:13:53 GMT
COPY file:3f28a91014649df0cc944e5ec4785bee2a35c4a4e3f4031257d30c40cada853a in /gnatsd 
# Fri, 02 Mar 2018 22:13:53 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:54 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:54 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 02 Mar 2018 22:13:55 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bd670005fb569d6108cd2f6f5d66adac644f1466b0ed94c2458c2aafd973f325`  
		Last Modified: Fri, 02 Mar 2018 22:14:20 GMT  
		Size: 2.3 MB (2256304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a0727475b8b918cda3943167bba8f2172579a6826e73ed1760d0269721eb19`  
		Last Modified: Fri, 02 Mar 2018 22:14:19 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.0.6-nanoserver`

```console
$ docker pull nats@sha256:8215195747cda4187b6fd6cf70c28e327f57b9f9aaa00ecd6c3185739d88cff7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `nats:1.0.6-nanoserver` - windows version 10.0.14393.2068; amd64

```console
$ docker pull nats@sha256:f8227ac4a218e95fc229b249d6bf40fc8e390edab9275e9fbf620990354c802f
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.0 MB (407978114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fedca9f8aea59282971c777f3128cd486fff9c121618d34aedb64a32c85fa3a9`
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
# Fri, 02 Mar 2018 22:13:30 GMT
RUN cmd /S /C #(nop) COPY file:3278feddd924b82f37ba78291a4d2812b05205cb187af1a883532fe2ae75db15 in gnatsd.exe 
# Fri, 02 Mar 2018 22:13:32 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:33 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 02 Mar 2018 22:13:34 GMT
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
	-	`sha256:96ac64810d5d8ca0b5305c4cd0bb8f7f54bb7dde285d389d61ed8346503f01e8`  
		Last Modified: Fri, 02 Mar 2018 22:13:58 GMT  
		Size: 2.5 MB (2477811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523fa9c5323d7e6f03ed5d880a412f987531781a091762389941d3d0ab05613e`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 1.7 KB (1712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2506ed6526d7a00ed4d267cb4677bc020131ce3c1835f7251a94195eacce5f84`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdaced3a03e782a3a007fa4fa2d71f514d4f83039c42e827f421a9749c2137a1`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705feb65e740d25598bffe0ad096851d43f723cf0c8ae3865d9f452bfc3b5398`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.0.6-windowsservercore`

```console
$ docker pull nats@sha256:7747b8ebef47f581553f7b1c37683d705b110f90bde5c8d67a36a03955c9fdd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `nats:1.0.6-windowsservercore` - windows version 10.0.14393.2068; amd64

```console
$ docker pull nats@sha256:2609f5537f3a9c10751db020261c19ab801947e08e3b7824e0a7b1f02e622269
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5380627972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8544c131ab9d5bff51dc9509c243a009beb523b433562e837faa2c9d901755b`
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
# Fri, 02 Mar 2018 22:13:40 GMT
RUN cmd /S /C #(nop) COPY file:3278feddd924b82f37ba78291a4d2812b05205cb187af1a883532fe2ae75db15 in gnatsd.exe 
# Fri, 02 Mar 2018 22:13:42 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:44 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 02 Mar 2018 22:13:45 GMT
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
	-	`sha256:7f63a3a65d08deaf6f07c28baedf8d686ef83423f2fa01645ce73b2908033ee6`  
		Last Modified: Fri, 02 Mar 2018 22:14:09 GMT  
		Size: 2.5 MB (2478012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec890f6c6aa3da9465759f6a6da879d4ec380f64a7ea40c1f4d5d42e6944941`  
		Last Modified: Fri, 02 Mar 2018 22:14:08 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a849659cd6811d55e3655a482cb51bf184541b009003ee4a30b74112dc7dcdb`  
		Last Modified: Fri, 02 Mar 2018 22:14:08 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a792e8fa8339db5b5797d4e11a2aa274e383aadfacb4de4e91de3d5e2ee7191a`  
		Last Modified: Fri, 02 Mar 2018 22:14:08 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78015cde0bb3dd8ea0100d802d095c3cec27b6ee7b6486c6c30603220e287a0`  
		Last Modified: Fri, 02 Mar 2018 22:14:08 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:latest`

```console
$ docker pull nats@sha256:48ec69594d95e79365fef361ad7a3f8c2f84b40557dffb179d52e851a766d93f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
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

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:4401fafef97936e4573e60d1b6a2f167dbca236ec261bb205c45caad5d545d5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50f7faa91d11adc43a677dc156494487fea0647f49d5169a50cbd92b77b878e5`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 02 Mar 2018 22:13:17 GMT
COPY file:4c72f016acd5df0943e94d53abd26b6792081e18fbc8a56999611bd8ef0cd777 in /gnatsd 
# Fri, 02 Mar 2018 22:13:18 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:18 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:18 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 02 Mar 2018 22:13:18 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:c88f8a7f502e9eefec046c167a0dfded0c326ac7b9a899dc38ebd796064d7b1d`  
		Last Modified: Fri, 02 Mar 2018 22:13:27 GMT  
		Size: 2.3 MB (2308639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012b2d05ca0b4d78dcdd574701ecc442bd3f8fe76d0cda143b43cb0cd2b8f899`  
		Last Modified: Fri, 02 Mar 2018 22:13:26 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm variant v7

```console
$ docker pull nats@sha256:b4495122f109839cda22be0a15b56409a63d1723590163187a31a535423d3961
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a5a11ec9fbc279f21a37799b8799ae38b877d870fa7ff523c19c589c6edf9d`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 02 Mar 2018 22:13:31 GMT
COPY file:83d82782ebac3a82b29e92601a5b3baaebf1c9e416bc99e316c1084a0ac1c50c in /gnatsd 
# Fri, 02 Mar 2018 22:13:32 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:32 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:32 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 02 Mar 2018 22:13:32 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:89da658803b80a28819f351c4d9b43b903c2d2f8ad11cd95df0645ce885cecc7`  
		Last Modified: Fri, 02 Mar 2018 22:13:48 GMT  
		Size: 2.3 MB (2306040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c0666ba32ee51ec0bcc3fe9ef323212935644b024aabb6adc13c12cbc522bb`  
		Last Modified: Fri, 02 Mar 2018 22:13:48 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:90dd38b20a350dd5a4cdbe48c8a81102d608e52353be041d52e4b7b08cdb576e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2256780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410a4a3f27fa15cf805d050108db6331aba3f1d365a67048c1c56fdefeef7542`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 02 Mar 2018 22:13:53 GMT
COPY file:3f28a91014649df0cc944e5ec4785bee2a35c4a4e3f4031257d30c40cada853a in /gnatsd 
# Fri, 02 Mar 2018 22:13:53 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:54 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:54 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 02 Mar 2018 22:13:55 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bd670005fb569d6108cd2f6f5d66adac644f1466b0ed94c2458c2aafd973f325`  
		Last Modified: Fri, 02 Mar 2018 22:14:20 GMT  
		Size: 2.3 MB (2256304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a0727475b8b918cda3943167bba8f2172579a6826e73ed1760d0269721eb19`  
		Last Modified: Fri, 02 Mar 2018 22:14:19 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - windows version 10.0.14393.2068; amd64

```console
$ docker pull nats@sha256:f8227ac4a218e95fc229b249d6bf40fc8e390edab9275e9fbf620990354c802f
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.0 MB (407978114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fedca9f8aea59282971c777f3128cd486fff9c121618d34aedb64a32c85fa3a9`
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
# Fri, 02 Mar 2018 22:13:30 GMT
RUN cmd /S /C #(nop) COPY file:3278feddd924b82f37ba78291a4d2812b05205cb187af1a883532fe2ae75db15 in gnatsd.exe 
# Fri, 02 Mar 2018 22:13:32 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:33 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 02 Mar 2018 22:13:34 GMT
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
	-	`sha256:96ac64810d5d8ca0b5305c4cd0bb8f7f54bb7dde285d389d61ed8346503f01e8`  
		Last Modified: Fri, 02 Mar 2018 22:13:58 GMT  
		Size: 2.5 MB (2477811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523fa9c5323d7e6f03ed5d880a412f987531781a091762389941d3d0ab05613e`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 1.7 KB (1712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2506ed6526d7a00ed4d267cb4677bc020131ce3c1835f7251a94195eacce5f84`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdaced3a03e782a3a007fa4fa2d71f514d4f83039c42e827f421a9749c2137a1`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705feb65e740d25598bffe0ad096851d43f723cf0c8ae3865d9f452bfc3b5398`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:linux`

```console
$ docker pull nats@sha256:d6c53e212268898f05216188dd913f2ed2b15836f6dfd986bea933729f62a7ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

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

### `nats:linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:4401fafef97936e4573e60d1b6a2f167dbca236ec261bb205c45caad5d545d5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50f7faa91d11adc43a677dc156494487fea0647f49d5169a50cbd92b77b878e5`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 02 Mar 2018 22:13:17 GMT
COPY file:4c72f016acd5df0943e94d53abd26b6792081e18fbc8a56999611bd8ef0cd777 in /gnatsd 
# Fri, 02 Mar 2018 22:13:18 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:18 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:18 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 02 Mar 2018 22:13:18 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:c88f8a7f502e9eefec046c167a0dfded0c326ac7b9a899dc38ebd796064d7b1d`  
		Last Modified: Fri, 02 Mar 2018 22:13:27 GMT  
		Size: 2.3 MB (2308639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012b2d05ca0b4d78dcdd574701ecc442bd3f8fe76d0cda143b43cb0cd2b8f899`  
		Last Modified: Fri, 02 Mar 2018 22:13:26 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:b4495122f109839cda22be0a15b56409a63d1723590163187a31a535423d3961
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a5a11ec9fbc279f21a37799b8799ae38b877d870fa7ff523c19c589c6edf9d`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 02 Mar 2018 22:13:31 GMT
COPY file:83d82782ebac3a82b29e92601a5b3baaebf1c9e416bc99e316c1084a0ac1c50c in /gnatsd 
# Fri, 02 Mar 2018 22:13:32 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:32 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:32 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 02 Mar 2018 22:13:32 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:89da658803b80a28819f351c4d9b43b903c2d2f8ad11cd95df0645ce885cecc7`  
		Last Modified: Fri, 02 Mar 2018 22:13:48 GMT  
		Size: 2.3 MB (2306040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c0666ba32ee51ec0bcc3fe9ef323212935644b024aabb6adc13c12cbc522bb`  
		Last Modified: Fri, 02 Mar 2018 22:13:48 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:90dd38b20a350dd5a4cdbe48c8a81102d608e52353be041d52e4b7b08cdb576e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2256780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410a4a3f27fa15cf805d050108db6331aba3f1d365a67048c1c56fdefeef7542`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 02 Mar 2018 22:13:53 GMT
COPY file:3f28a91014649df0cc944e5ec4785bee2a35c4a4e3f4031257d30c40cada853a in /gnatsd 
# Fri, 02 Mar 2018 22:13:53 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:54 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:54 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 02 Mar 2018 22:13:55 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bd670005fb569d6108cd2f6f5d66adac644f1466b0ed94c2458c2aafd973f325`  
		Last Modified: Fri, 02 Mar 2018 22:14:20 GMT  
		Size: 2.3 MB (2256304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a0727475b8b918cda3943167bba8f2172579a6826e73ed1760d0269721eb19`  
		Last Modified: Fri, 02 Mar 2018 22:14:19 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver`

```console
$ docker pull nats@sha256:8215195747cda4187b6fd6cf70c28e327f57b9f9aaa00ecd6c3185739d88cff7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `nats:nanoserver` - windows version 10.0.14393.2068; amd64

```console
$ docker pull nats@sha256:f8227ac4a218e95fc229b249d6bf40fc8e390edab9275e9fbf620990354c802f
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.0 MB (407978114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fedca9f8aea59282971c777f3128cd486fff9c121618d34aedb64a32c85fa3a9`
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
# Fri, 02 Mar 2018 22:13:30 GMT
RUN cmd /S /C #(nop) COPY file:3278feddd924b82f37ba78291a4d2812b05205cb187af1a883532fe2ae75db15 in gnatsd.exe 
# Fri, 02 Mar 2018 22:13:32 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:33 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 02 Mar 2018 22:13:34 GMT
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
	-	`sha256:96ac64810d5d8ca0b5305c4cd0bb8f7f54bb7dde285d389d61ed8346503f01e8`  
		Last Modified: Fri, 02 Mar 2018 22:13:58 GMT  
		Size: 2.5 MB (2477811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523fa9c5323d7e6f03ed5d880a412f987531781a091762389941d3d0ab05613e`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 1.7 KB (1712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2506ed6526d7a00ed4d267cb4677bc020131ce3c1835f7251a94195eacce5f84`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdaced3a03e782a3a007fa4fa2d71f514d4f83039c42e827f421a9749c2137a1`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705feb65e740d25598bffe0ad096851d43f723cf0c8ae3865d9f452bfc3b5398`  
		Last Modified: Fri, 02 Mar 2018 22:13:55 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:7747b8ebef47f581553f7b1c37683d705b110f90bde5c8d67a36a03955c9fdd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `nats:windowsservercore` - windows version 10.0.14393.2068; amd64

```console
$ docker pull nats@sha256:2609f5537f3a9c10751db020261c19ab801947e08e3b7824e0a7b1f02e622269
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5380627972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8544c131ab9d5bff51dc9509c243a009beb523b433562e837faa2c9d901755b`
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
# Fri, 02 Mar 2018 22:13:40 GMT
RUN cmd /S /C #(nop) COPY file:3278feddd924b82f37ba78291a4d2812b05205cb187af1a883532fe2ae75db15 in gnatsd.exe 
# Fri, 02 Mar 2018 22:13:42 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:44 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 02 Mar 2018 22:13:45 GMT
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
	-	`sha256:7f63a3a65d08deaf6f07c28baedf8d686ef83423f2fa01645ce73b2908033ee6`  
		Last Modified: Fri, 02 Mar 2018 22:14:09 GMT  
		Size: 2.5 MB (2478012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec890f6c6aa3da9465759f6a6da879d4ec380f64a7ea40c1f4d5d42e6944941`  
		Last Modified: Fri, 02 Mar 2018 22:14:08 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a849659cd6811d55e3655a482cb51bf184541b009003ee4a30b74112dc7dcdb`  
		Last Modified: Fri, 02 Mar 2018 22:14:08 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a792e8fa8339db5b5797d4e11a2aa274e383aadfacb4de4e91de3d5e2ee7191a`  
		Last Modified: Fri, 02 Mar 2018 22:14:08 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78015cde0bb3dd8ea0100d802d095c3cec27b6ee7b6486c6c30603220e287a0`  
		Last Modified: Fri, 02 Mar 2018 22:14:08 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
