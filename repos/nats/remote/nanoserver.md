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
