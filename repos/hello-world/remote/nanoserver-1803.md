## `hello-world:nanoserver-1803`

```console
$ docker pull hello-world@sha256:b1b3b61558518fb0bf5aa6926c0c8c8517843143936192492d8c29075be7c2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64

### `hello-world:nanoserver-1803` - windows version 10.0.17134.766; amd64

```console
$ docker pull hello-world@sha256:dab3932ee58dae08b87ee10ac43cb4720bc79ebfeb6dd574c4ea8f038bd2801e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149394530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d4c3b2cf1784d4560f6d2853fa565f76f490f59eb94ee088a0bd592e93e5a77`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:43:10 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 12:14:30 GMT
RUN cmd /S /C #(nop) COPY file:7b1666bf57eab9af43a34ac3bff0f0d60d153096912881d488e2dd82ff129a57 in C: 
# Wed, 22 May 2019 12:14:31 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:e46172273a4e4384e1eec7fb01091c828a256ea0f87b30f61381fba9bc511371`  
		Last Modified: Mon, 17 Sep 2018 20:23:30 GMT  
		Size: 92.8 MB (92818888 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3d65648a54d83dbe2c837a70c7d65673aa8e1a354e4fce74a997b5345b754d43`  
		Last Modified: Sun, 19 May 2019 18:54:13 GMT  
		Size: 56.6 MB (56573043 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:aee656205468e9d7725cb5e9638b8daf03bcb191dcfcc280b1f1447f93ca21ef`  
		Last Modified: Wed, 22 May 2019 12:14:55 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9475349f525ff8b6f4dc8d2c208ce3257058c1ba1313d14726672c8477f12fa6`  
		Last Modified: Wed, 22 May 2019 12:14:54 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
