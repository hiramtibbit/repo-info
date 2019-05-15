## `hello-world:nanoserver-1803`

```console
$ docker pull hello-world@sha256:81a1928edefbaf05864232f2cbd7cba8572d360142398509fd39518f3e0827a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.765; amd64

### `hello-world:nanoserver-1803` - windows version 10.0.17134.765; amd64

```console
$ docker pull hello-world@sha256:b8f45a725954e40d2a212b26ed55e55b83ca1974352abfd30327bf017c543076
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149386462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d4538385e3918b77139acde4414c0e1caf5a91853cf269694274b72dfab708`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 1803-RTM-amd64
# Mon, 06 May 2019 17:08:14 GMT
RUN Install update 1803-amd64
# Wed, 15 May 2019 12:14:35 GMT
RUN cmd /S /C #(nop) COPY file:7b1666bf57eab9af43a34ac3bff0f0d60d153096912881d488e2dd82ff129a57 in C: 
# Wed, 15 May 2019 12:14:36 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:e46172273a4e4384e1eec7fb01091c828a256ea0f87b30f61381fba9bc511371`  
		Last Modified: Mon, 17 Sep 2018 20:23:30 GMT  
		Size: 92.8 MB (92818888 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2f1e6aa9e81d07693e943cf000c5341600d603143e27bfe64e88716a8e7b932f`  
		Last Modified: Mon, 13 May 2019 20:35:07 GMT  
		Size: 56.6 MB (56564960 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fd4a4f38d39192f9f4505006d572752cd251c5d7805a25e0a44914eeeaebc657`  
		Last Modified: Wed, 15 May 2019 12:14:57 GMT  
		Size: 1.7 KB (1660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6532b88d042ec9cad81a17a40b9b3daf603b2207f601e0dd3a42516c89f1fb05`  
		Last Modified: Wed, 15 May 2019 12:14:57 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
