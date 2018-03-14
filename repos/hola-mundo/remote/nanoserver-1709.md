## `hola-mundo:nanoserver-1709`

```console
$ docker pull hola-mundo@sha256:047c37fa47207829a82d6c38582d8196c0ea887d0b4384008ff4e188abad0800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.309; amd64

### `hola-mundo:nanoserver-1709` - windows version 10.0.16299.309; amd64

```console
$ docker pull hola-mundo@sha256:9c22078ccbcce2d1909eb5ca613b17ef264f6d88e582d0fc13a2e8f5b7125c4e
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.3 MB (127288387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f0872a9cc90f3cb155d9706ab1cedf5faf09acd9547ccebc718970462e67e7d`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Mon, 05 Mar 2018 01:53:57 GMT
RUN Install update 10.0.16299.309
# Wed, 14 Mar 2018 10:46:58 GMT
RUN cmd /S /C #(nop) COPY file:eaff51099b4f6a2fcf020c7b16acf09ef8f3c2802c4417b65b14efe9b0540dd8 in C: 
# Wed, 14 Mar 2018 10:46:59 GMT
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
	-	`sha256:c532292a59e2b81cf016231a3bd279259a9b8862bcfe123c13eb314baf341188`  
		Last Modified: Wed, 14 Mar 2018 10:47:17 GMT  
		Size: 1.7 KB (1699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6786322f984b734333294707db3939c52ed25d8151695d1fdc78e920a0e96b`  
		Last Modified: Wed, 14 Mar 2018 10:47:23 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
