## `hola-mundo:nanoserver-1709`

```console
$ docker pull hola-mundo@sha256:ffe2d2dff13be0198601286cf0c68b6e6c8069da30f1ac66701df92415b2ca81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.611; amd64

### `hola-mundo:nanoserver-1709` - windows version 10.0.16299.611; amd64

```console
$ docker pull hola-mundo@sha256:86c26179b7fa898ecf4b4abb8b160ecfc7555b52a13d47b5f0520e757dfe848b
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135627845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710eb0bd8fb69b2ca6350d92de01b51c46e50a2ea0d7c9a5740e19ec4cde1a1a`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:02:10 GMT
RUN Install update 10.0.16299.611
# Sat, 08 Sep 2018 09:39:45 GMT
RUN cmd /S /C #(nop) COPY file:64cae34b5df67b50cf455501f1587414dec9bb628a9a2e2f24de820a388df7d7 in C: 
# Sat, 08 Sep 2018 09:39:45 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Mon, 17 Sep 2018 20:22:04 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10288d9444107391fbf14d7bcca60d7043fccf0fb52d8b726814ba29a88a33a3`  
		Last Modified: Mon, 13 Aug 2018 18:28:19 GMT  
		Size: 54.6 MB (54585475 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:94931baafad3333661227eb47d49a917017f2a242125e21d94fb416bb902f50d`  
		Last Modified: Sat, 08 Sep 2018 09:40:10 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833e97d8b8b3436c630472624d80f90f8592479f89c6753ce7a711c10a71875a`  
		Last Modified: Sat, 08 Sep 2018 09:40:10 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
