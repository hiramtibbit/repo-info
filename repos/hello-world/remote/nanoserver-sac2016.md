## `hello-world:nanoserver-sac2016`

```console
$ docker pull hello-world@sha256:5a7f341465e1856c39d104943940c68809b53900af9f65e206dcd7e4bb088de0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `hello-world:nanoserver-sac2016` - windows version 10.0.14393.2189; amd64

```console
$ docker pull hello-world@sha256:0bd9af81b2037d02466fb89db8736e936d7790a65a0168305d6bd9e3322640b1
```

-	Docker Version: 17.06.2-ee-7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.9 MB (407946052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1bf314a296b6c9da7e93efb25c8b259ea1e7e90d569bd902661fbf4a9a1425a`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:37:58 GMT
RUN Install update 10.0.14393.2189
# Thu, 12 Apr 2018 09:45:05 GMT
RUN cmd /S /C #(nop) COPY file:19018ab37dc27dc638e8a285323c17fba700589fa097293b8cf3bc77d2d350ac in C: 
# Thu, 12 Apr 2018 09:45:11 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:83eec61707e8c8a926a02da0ac7156cf6b64d3630672a6790004f10b87ae805b`  
		Last Modified: Fri, 06 Apr 2018 21:37:58 GMT  
		Size: 155.3 MB (155252511 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:eaac79658f140753d3b7e239b2467d4396c6cb13211b25c0cf9fa0122b9dc206`  
		Last Modified: Thu, 12 Apr 2018 09:46:51 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09da508370884067d19be6e7d6b23f2ea9435b5a13f0053a6014be2788affc85`  
		Last Modified: Thu, 12 Apr 2018 09:46:51 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
