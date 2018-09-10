## `hola-mundo:nanoserver-1803`

```console
$ docker pull hola-mundo@sha256:d7104ba8d9a523421e597d9950424fa6fac78cad16a50d42df12fec3d1c22504
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.228; amd64

### `hola-mundo:nanoserver-1803` - windows version 10.0.17134.228; amd64

```console
$ docker pull hola-mundo@sha256:adc53b37ad725eafae529a3b1dd0d4c9c2c1ab5a1d738c2c21daf8d7be2a38fe
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.5 MB (141453633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a52fc859b8409049ceef2739b0943e2cd755d7073e2fc113e3f40ac76210d79e`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 10.0.17134.1
# Mon, 06 Aug 2018 18:09:11 GMT
RUN Install update 10.0.17134.228
# Sat, 08 Sep 2018 09:39:50 GMT
RUN cmd /S /C #(nop) COPY file:aad8ca90c3adb91d55f3fad725aa18fc78ca270799d273e63829ff03ae5dc36b in C: 
# Sat, 08 Sep 2018 09:39:51 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:e46172273a4e4384e1eec7fb01091c828a256ea0f87b30f61381fba9bc511371`  
		Last Modified: Mon, 07 May 2018 21:17:40 GMT  
		Size: 92.8 MB (92818888 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1f7d468f830cb0ed4beb8edc9438f18096e8c682e56a35242f60e6c61b718b30`  
		Last Modified: Mon, 13 Aug 2018 19:09:58 GMT  
		Size: 48.6 MB (48632111 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:828764807e49d7783facd9fc2d9f4c72579063a9ba6910d16de07586572e32ae`  
		Last Modified: Sat, 08 Sep 2018 09:40:22 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8c40d32371ef5d67e685031c8de5cac443af22c570eb62ad991a73813dc969`  
		Last Modified: Sat, 08 Sep 2018 09:40:23 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
