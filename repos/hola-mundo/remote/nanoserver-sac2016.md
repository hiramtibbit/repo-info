## `hola-mundo:nanoserver-sac2016`

```console
$ docker pull hola-mundo@sha256:05e68f2cf9e625ed38f339eb143576b04ed24af1fbabd97b35711c5a90b287ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64

### `hola-mundo:nanoserver-sac2016` - windows version 10.0.14393.2312; amd64

```console
$ docker pull hola-mundo@sha256:d64732b4ea6320c53d06a83774ae6558fedc813689b2beda00380fa778185419
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.4 MB (418442760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523bff01696b8568bb54640ca6db97324da6f14add6e7a273d68a850b8b38301`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:03 GMT
RUN Install update 10.0.14393.2312
# Mon, 02 Jul 2018 23:45:14 GMT
RUN cmd /S /C #(nop) COPY file:30c2f29ade1ee7efbfd09310655094eb71bc50476bba2ddd6f836c126778822b in C: 
# Mon, 02 Jul 2018 23:45:15 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e7a598ed389ee13dc16cb56bd512d2eecc9597d79797803ef538a02b1e12351f`  
		Last Modified: Wed, 13 Jun 2018 00:36:03 GMT  
		Size: 165.7 MB (165749131 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a126381af87a27300963d1a075cb975085e46da577cf6d434686eb66a63b574f`  
		Last Modified: Mon, 02 Jul 2018 23:45:31 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840cc67436163c49e5d1f5e36f1b578c8d4c866b7ec64e6a86f3ceabe605e54e`  
		Last Modified: Mon, 02 Jul 2018 23:45:31 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
