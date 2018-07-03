## `hello-seattle:nanoserver`

```console
$ docker pull hello-seattle@sha256:1be77b93df757139e1f9e21745b9dad91c37ad6960e993848691bb235841e384
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64
	-	windows version 10.0.16299.492; amd64

### `hello-seattle:nanoserver` - windows version 10.0.14393.2312; amd64

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

### `hello-seattle:nanoserver` - windows version 10.0.16299.492; amd64

```console
$ docker pull hello-seattle@sha256:ea13446a9bbe03e257d4047cbef0188cccb4c5db26efb88ea6b1059503176d27
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.6 MB (133580800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d4755eea8de173a256ede135db9f55956d882c10ec197dfb03f12d7b51909a7`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Mon, 11 Jun 2018 20:15:59 GMT
RUN Install update 10.0.16299.492
# Mon, 02 Jul 2018 23:44:19 GMT
RUN cmd /S /C #(nop) COPY file:a04f617b384e418c261b5fa30ceb089a22f57b91ac80d8a5cc51f96d6ff98037 in C: 
# Mon, 02 Jul 2018 23:44:19 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Tue, 17 Oct 2017 15:49:36 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:85710d780d680cb5dfe03ec4bec5d928cf13de184c4adfa2ee56c7c7b6d33f8d`  
		Last Modified: Wed, 13 Jun 2018 01:11:25 GMT  
		Size: 52.5 MB (52538468 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f204c96c9991cdd484be869f873d103e12d131755d4ec91027b627e8e0339100`  
		Last Modified: Mon, 02 Jul 2018 23:44:35 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892a7f468c91fe18d070182557403994ad659a54bf91f43a3e316b6ade22ab69`  
		Last Modified: Mon, 02 Jul 2018 23:44:35 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
