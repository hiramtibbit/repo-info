## `hello-seattle:nanoserver-1709`

```console
$ docker pull hello-seattle@sha256:2e78f066a9b7cbbd635b0adc0be4c5b66b34fcd3746220d55889d2354c5bdf25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.492; amd64

### `hello-seattle:nanoserver-1709` - windows version 10.0.16299.492; amd64

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
