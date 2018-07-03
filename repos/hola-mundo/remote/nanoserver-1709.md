## `hola-mundo:nanoserver-1709`

```console
$ docker pull hola-mundo@sha256:c8c49344361a3260b2241ddc85f5738b628c7b96c4f0bef8967969fbc58f5c11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.492; amd64

### `hola-mundo:nanoserver-1709` - windows version 10.0.16299.492; amd64

```console
$ docker pull hola-mundo@sha256:72b2c4626b43dd2b6a6cccfd1978638c792f9d701a067d12322b5b8e8771b004
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.6 MB (133580834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35aa1f3936267d41cd3d347501fa6e58cec925d0fbf48469a1743f8c6833a7d2`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Mon, 11 Jun 2018 20:15:59 GMT
RUN Install update 10.0.16299.492
# Mon, 02 Jul 2018 23:45:18 GMT
RUN cmd /S /C #(nop) COPY file:30c2f29ade1ee7efbfd09310655094eb71bc50476bba2ddd6f836c126778822b in C: 
# Mon, 02 Jul 2018 23:45:19 GMT
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
	-	`sha256:5c5a35c8ee2fd74c844fd34fd2a6fd28a520d2e438339600d92f892a868043b2`  
		Last Modified: Mon, 02 Jul 2018 23:45:37 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993e711f662c283efaeb85ed0430adc130a6bb4fa4908402dffb96f7ea3561ba`  
		Last Modified: Mon, 02 Jul 2018 23:45:38 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
