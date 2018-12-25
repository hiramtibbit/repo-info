## `nats:nanoserver`

```console
$ docker pull nats@sha256:2229f6eea42af4731e546713a0a7d80a4f116c64ec1e8540e952da446042803b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `nats:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats@sha256:b6042d7d030c98bcf5c25f59a418634d41642a26fbaa983f4f97b194bed847eb
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.4 MB (438419942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e120ee45af2b220524a0940576a2a20848d360ac3b9efeefe7240a4016fb5972`
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
# Tue, 25 Dec 2018 18:59:41 GMT
RUN cmd /S /C #(nop) COPY file:6ecb5fc12b6dd56a695012369475c26102c409a2f7b9ae55e7e6d5d5498e74c3 in gnatsd.exe 
# Tue, 25 Dec 2018 18:59:43 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Tue, 25 Dec 2018 18:59:44 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 25 Dec 2018 18:59:45 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Tue, 25 Dec 2018 18:59:46 GMT
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
	-	`sha256:bf313607be73cda1a77caa6fb976972db8c260676a9356fe2bb85eef32d4ce3e`  
		Last Modified: Tue, 25 Dec 2018 19:00:11 GMT  
		Size: 3.0 MB (3016474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a658d250f7818d1bdb88f39b6facc91acc133244f0de906d046355218ecd39`  
		Last Modified: Tue, 25 Dec 2018 19:00:10 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee26e35bc26cf933f903b162f196fbb37b2453a259b884fb5ca20e9b60e22b3b`  
		Last Modified: Tue, 25 Dec 2018 19:00:10 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2c3903d3fda05d179525690724e58465ccd0ead89016c9e655ed96ba125850`  
		Last Modified: Tue, 25 Dec 2018 19:00:10 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c6ccce171702a7e182fc479fa6c618fb8f9fee6f365002ce48729a18b9ab6b`  
		Last Modified: Tue, 25 Dec 2018 19:00:10 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
