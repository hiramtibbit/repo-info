## `nats:windowsservercore`

```console
$ docker pull nats@sha256:842afa50fda204b72d3338a07af28ff8b813903a3ae5b03be2f42a5b2eb24cf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `nats:windowsservercore` - windows version 10.0.14393.2125; amd64

```console
$ docker pull nats@sha256:808354bda8a0d6d5d8487d542d244aecd11c34656d11dcb218013b0eeaec3817
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5391668758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acfe09a2dd587c9809c37454c7b3cdec69d1f6c910ef0c720011451393ecf8f9`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:53:23 GMT
RUN Install update 10.0.14393.2125
# Tue, 13 Mar 2018 23:39:13 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 13 Mar 2018 23:39:14 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Mon, 26 Mar 2018 23:25:40 GMT
RUN cmd /S /C #(nop) COPY file:35446248468beffaf5492d36bb8f01d6229ab2416006987418709211af43a5bc in gnatsd.exe 
# Mon, 26 Mar 2018 23:25:41 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Mon, 26 Mar 2018 23:25:42 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Mon, 26 Mar 2018 23:25:43 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Mon, 26 Mar 2018 23:25:44 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:133e38d368dd63f5c9da410ed1656fa9c1f3322a661906f3c2a86b4cd3ff292b`  
		Last Modified: Tue, 13 Mar 2018 00:53:23 GMT  
		Size: 1.3 GB (1319194954 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9d7e33bb1c4fd3a32c71bbd03a714782616d0998bf540b08a173b0edb17c1b4f`  
		Last Modified: Tue, 13 Mar 2018 23:39:46 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1660cf3837a8c3c62bd5a1474aea48f661ad650b9835e356309a07b65027dff`  
		Last Modified: Tue, 13 Mar 2018 23:39:46 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640bc2bcabd2e045eb431897ecc67f3b7a63eab8f765a59eaf33c82e8fc8e914`  
		Last Modified: Mon, 26 Mar 2018 23:26:05 GMT  
		Size: 2.5 MB (2479912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751611ee1ac7778c896a22d089c11b43a8d95db118b686a3057e8ca66dedb262`  
		Last Modified: Mon, 26 Mar 2018 23:26:04 GMT  
		Size: 1.9 KB (1891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6129d45067232d0073f5b7979db1c314cf5b25bed14777723290dd6d43243a6`  
		Last Modified: Mon, 26 Mar 2018 23:26:04 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9accba4c74532d13438fa35d1f067477dbae89261a99748a8d05a9871a66f1`  
		Last Modified: Mon, 26 Mar 2018 23:26:04 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cd85ccfae654f6c3ff0f35a42f6a0042c698894ac1081b51dd1130cb15beb1`  
		Last Modified: Mon, 26 Mar 2018 23:26:04 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
