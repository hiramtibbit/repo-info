## `nats:windowsservercore`

```console
$ docker pull nats@sha256:24a77278cf711be1b0a90fea09303bdd3fbfba5f4f9657d96b8e059e3fc96aac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `nats:windowsservercore` - windows version 10.0.14393.2125; amd64

```console
$ docker pull nats@sha256:4b96e3b4ed8492b669d06815ad5696dfa7784e28c8c6cca828bb3dab45da16ca
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5391666938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96727249af345fc7ee62484cf49d571229ecd7e2b7f3f042069f8a0d428c2758`
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
# Tue, 13 Mar 2018 23:39:16 GMT
RUN cmd /S /C #(nop) COPY file:3278feddd924b82f37ba78291a4d2812b05205cb187af1a883532fe2ae75db15 in gnatsd.exe 
# Tue, 13 Mar 2018 23:39:17 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Tue, 13 Mar 2018 23:39:18 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Tue, 13 Mar 2018 23:39:19 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Tue, 13 Mar 2018 23:39:20 GMT
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
	-	`sha256:7384cc43fce58040411489723bd84e2ce6e3418ac89bf389408e16b475e3e37a`  
		Last Modified: Tue, 13 Mar 2018 23:39:45 GMT  
		Size: 2.5 MB (2478046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93b2c68ae4ad7fcf08114e9e082436210a1873fbe81ce69bf2214e5ea6f9f02`  
		Last Modified: Tue, 13 Mar 2018 23:39:44 GMT  
		Size: 1.9 KB (1913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6149a0e4148fd55bbe7fb979c5f09b5dc3bdb36ae84bf024419c4271123c92d7`  
		Last Modified: Tue, 13 Mar 2018 23:39:44 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610f4d6485705157d26beceb97445e30409ebf62ab890b34ca22d6c9f1e4a02a`  
		Last Modified: Tue, 13 Mar 2018 23:39:45 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2669bda6fe3b71acc4a29ed96326c2b6af4fc0e51cb6f4f06a2460790a7f45e1`  
		Last Modified: Tue, 13 Mar 2018 23:39:44 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
