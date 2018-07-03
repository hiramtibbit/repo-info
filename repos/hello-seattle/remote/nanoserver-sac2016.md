## `hello-seattle:nanoserver-sac2016`

```console
$ docker pull hello-seattle@sha256:8c4bddd72a5bacbbca96381655e838a13aac897b23be0db4f825ca7ca8d1e6dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64

### `hello-seattle:nanoserver-sac2016` - windows version 10.0.14393.2312; amd64

```console
$ docker pull hello-seattle@sha256:5cbc58bebafda8a68a8f51ec1ce3e77d8a6dca8610ebe6439dea6b38de49031a
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.4 MB (418442747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca0ae883a930f70850fa0f5e2f6f9249b2ca8a3f9efbd98e811835473857b31`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:03 GMT
RUN Install update 10.0.14393.2312
# Mon, 02 Jul 2018 23:44:14 GMT
RUN cmd /S /C #(nop) COPY file:a04f617b384e418c261b5fa30ceb089a22f57b91ac80d8a5cc51f96d6ff98037 in C: 
# Mon, 02 Jul 2018 23:44:15 GMT
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
	-	`sha256:d502cd5a20e47e833be0fdad9b07df4289632db608ee4ce8d39cd90f04f0b92f`  
		Last Modified: Mon, 02 Jul 2018 23:44:29 GMT  
		Size: 1.7 KB (1669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78ab9daa8dffa4d58edde917ba247bac51cb6c0293eb58ef29d95a6d96d35e3`  
		Last Modified: Mon, 02 Jul 2018 23:44:29 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
