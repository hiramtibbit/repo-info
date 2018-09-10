## `hello-seattle:nanoserver-1803`

```console
$ docker pull hello-seattle@sha256:3bdefba19fc6515093f0b90cc5a9d3e20f6e333088c8dd59bfb3857ee59a060e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.228; amd64

### `hello-seattle:nanoserver-1803` - windows version 10.0.17134.228; amd64

```console
$ docker pull hello-seattle@sha256:c4144a3c88f725924b24e403a3cff46aa30b7d76c1a23e7b05defb55eb597570
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.5 MB (141453616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069bbda66183bdbe776993ba8ed143eabc852d2b15f31e292cbdea39591a8210`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 10.0.17134.1
# Mon, 06 Aug 2018 18:09:11 GMT
RUN Install update 10.0.17134.228
# Sat, 08 Sep 2018 09:16:51 GMT
RUN cmd /S /C #(nop) COPY file:a1a1ef463a15a2ade7d91b4a8f0e53581a2e07fc51e5b9eecd114e6cd94dd682 in C: 
# Sat, 08 Sep 2018 09:16:51 GMT
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
	-	`sha256:3a36888a554ddd52068744bac374f30ce2bb1b988339bce547aca1ea146e4da9`  
		Last Modified: Sat, 08 Sep 2018 09:17:23 GMT  
		Size: 1.7 KB (1670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b48d3c6e386ba21e41d7767fd605a98489234906df97e20c413c169071bc1a`  
		Last Modified: Sat, 08 Sep 2018 09:17:23 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
