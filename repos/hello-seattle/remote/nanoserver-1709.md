## `hello-seattle:nanoserver-1709`

```console
$ docker pull hello-seattle@sha256:34125726a73fc30ede6796e685b1bd14000435888c9dfc72932c319fb65fdd10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.846; amd64

### `hello-seattle:nanoserver-1709` - windows version 10.0.16299.846; amd64

```console
$ docker pull hello-seattle@sha256:ed9cc5ff13244d3680dcbb1f2167a94e89edd66154b4b2fe13fb3f22e6e016b5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.0 MB (137000315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf726949ef99b0a18850f7281a233822d98143cb49de7bcd2fd6d9883bd2572`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:27:28 GMT
RUN Install update 10.0.16299.846
# Tue, 25 Dec 2018 21:15:48 GMT
RUN cmd /S /C #(nop) COPY file:7695aef773d00db8abb5914f0c8f2fc529f27e66cec4516f7aa2a61eec815358 in C: 
# Tue, 25 Dec 2018 21:15:49 GMT
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
	-	`sha256:36eeeec2bd5e8da5abf9f2e56c12e3ba074ff8c4e8db11df160edf4b9bb93244`  
		Last Modified: Tue, 25 Dec 2018 21:16:14 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3165f29ff1ea2a5d514eeaa5e3420e5d123cb5beae310fb88b280ff1dbb75680`  
		Last Modified: Tue, 25 Dec 2018 21:16:15 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
