## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:a8927793c52fd83b93450f73d0aa521a6e3c8398b9147297192980cc6fd51465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2125; amd64
	-	windows version 10.0.16299.309; amd64

### `hello-world:nanoserver` - windows version 10.0.14393.2125; amd64

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

### `hello-world:nanoserver` - windows version 10.0.16299.309; amd64

```console
$ docker pull hello-world@sha256:b247b3d4edf37723814e86c5953b06537125bbd3fdba7af8f602a0ca70a6cc93
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.3 MB (127288353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9cbd4045d2ce61f2c24ed8a501347378848d5f180f8fa0f53fb8a01e905616`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Mon, 05 Mar 2018 01:53:57 GMT
RUN Install update 10.0.16299.309
# Wed, 14 Mar 2018 04:13:00 GMT
RUN cmd /S /C #(nop) COPY file:f7c8910f60a7ec8d3a775a4b5ae8797e5a3efb9d531b782e2a57d2f65314d2dd in C: 
# Wed, 14 Mar 2018 04:13:01 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Tue, 17 Oct 2017 15:49:36 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5ebc0041967d6ebf38de2a33ade241e7e7541b04ce12c5455452272e3bcaa08f`  
		Last Modified: Tue, 13 Mar 2018 01:07:25 GMT  
		Size: 46.2 MB (46246002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:40bcee57bab35b27b763e7a1ef26c6a08f710da6785ee4fa625885a8a0de3093`  
		Last Modified: Wed, 14 Mar 2018 04:13:17 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aab69753ee4197e0790a9d9f10aff88edae269481277ca7135a6bc83d417e4`  
		Last Modified: Wed, 14 Mar 2018 04:13:17 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
