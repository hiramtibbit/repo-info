## `hello-world:nanoserver-1803`

```console
$ docker pull hello-world@sha256:af7ab0453abdbb1e0954f5b81cc51cc6937c621bb3318c7d7202608243467cae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.165; amd64

### `hello-world:nanoserver-1803` - windows version 10.0.17134.165; amd64

```console
$ docker pull hello-world@sha256:88ba4b531f70b60819505f6b74707d7f8d3941a65a6041940ce31bb5c05a0b14
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.4 MB (137449798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:739821c1f6d139290473877eb7c485151a49abce500ca792b3ce91b0bd1627f8`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 10.0.17134.1
# Sat, 07 Jul 2018 22:36:31 GMT
RUN Install update 10.0.17134.165
# Wed, 11 Jul 2018 10:00:35 GMT
RUN cmd /S /C #(nop) COPY file:79c46afc218189d0e21529dc00047ea8419934500700c517563c074a099180b1 in C: 
# Wed, 11 Jul 2018 10:00:36 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:e46172273a4e4384e1eec7fb01091c828a256ea0f87b30f61381fba9bc511371`  
		Last Modified: Mon, 07 May 2018 21:17:40 GMT  
		Size: 92.8 MB (92818888 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c012fa86f9e5cddd7348f95461791fec33dee91c4e56bafa448c80194c8bc8d4`  
		Last Modified: Tue, 10 Jul 2018 21:53:59 GMT  
		Size: 44.6 MB (44628354 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:966bb4253d0f7e038cec87a9cc002a21f6984c86e0cf9375ff0c7733ea79ee0e`  
		Last Modified: Wed, 11 Jul 2018 10:01:01 GMT  
		Size: 1.6 KB (1625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4116cac73a40e6952161a42a9fa3d9bc3e4c1f36b6d25170b7a025e6989f16d1`  
		Last Modified: Wed, 11 Jul 2018 10:01:01 GMT  
		Size: 931.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
