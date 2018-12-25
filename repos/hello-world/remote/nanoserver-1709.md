## `hello-world:nanoserver-1709`

```console
$ docker pull hello-world@sha256:489bf6ff9856986c9b7c783bb556c0d9383039eb71959b2b18dabe7d0eae3dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.846; amd64

### `hello-world:nanoserver-1709` - windows version 10.0.16299.846; amd64

```console
$ docker pull hello-world@sha256:d2c933b00844d4c6a39299c6ab98c0ce42b8961e6db93ccc077a874d08e2915a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.0 MB (137000408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b50201066aac910b43f41180302db041c7e6acc5afed837b88e3fefb4c478af`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:27:28 GMT
RUN Install update 10.0.16299.846
# Tue, 25 Dec 2018 21:14:18 GMT
RUN cmd /S /C #(nop) COPY file:2dd11c03720e89e953aeda47c22c0012731b56aee15f1142429384dff81eae85 in C: 
# Tue, 25 Dec 2018 21:14:19 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Mon, 17 Sep 2018 20:22:04 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:59774a31bc8e61a8112b0be9d21f5210bded1bfc99ce63cea3dfc18f50e3c89d`  
		Last Modified: Tue, 11 Dec 2018 21:30:28 GMT  
		Size: 56.0 MB (55958054 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:eeea5621308e34825efe6c6fd0b5273bd2190e484d8a262e8730232271e6071c`  
		Last Modified: Tue, 25 Dec 2018 21:14:44 GMT  
		Size: 1.7 KB (1663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155cee64f3f7fb5e44fe1cda76fa866b4af906f9984a4c428595d8bb23a93175`  
		Last Modified: Tue, 25 Dec 2018 21:14:44 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
