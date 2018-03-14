## `hello-world:nanoserver-1709`

```console
$ docker pull hello-world@sha256:3f93bacf8ec487a704348fb8d29fde814dfa83a8ab257cadac62970202a4f56b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.309; amd64

### `hello-world:nanoserver-1709` - windows version 10.0.16299.309; amd64

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
