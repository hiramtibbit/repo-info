## `hello-world:nanoserver-sac2016`

```console
$ docker pull hello-world@sha256:249a9729aca7d9d3d28e3a08ca30d6e1cd55cfda71477ff6294e3b34f50447a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64

### `hello-world:nanoserver-sac2016` - windows version 10.0.14393.2125; amd64

```console
$ docker pull hello-world@sha256:9ec4f66e89130d3476bbca4a6b7afb052b32d5782baa0174c6b8012f034e9f9f
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.7 MB (408696929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7500fb3fd7cfaa79c6caa8cf15c7bd7bc540345c6d4e077b823b6f123eac4a1f`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:52:57 GMT
RUN Install update 10.0.14393.2125
# Wed, 14 Mar 2018 04:12:54 GMT
RUN cmd /S /C #(nop) COPY file:f7c8910f60a7ec8d3a775a4b5ae8797e5a3efb9d531b782e2a57d2f65314d2dd in C: 
# Wed, 14 Mar 2018 04:12:55 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5b557cd80a9856d964887c4ea407b85fca10ce6aaa539984be9dd3570c60fd66`  
		Last Modified: Tue, 13 Mar 2018 00:52:57 GMT  
		Size: 156.0 MB (156003306 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d3552d0cd5f65feb5744663f9f822622902df5098bfb955fb76949c14f844ff6`  
		Last Modified: Wed, 14 Mar 2018 04:13:10 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a59aef7dedc442f6cd1dcb87d074768f67ab1d7be8693da5a994c68c7d2f1f`  
		Last Modified: Wed, 14 Mar 2018 04:13:10 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
