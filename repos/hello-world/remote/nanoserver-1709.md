## `hello-world:nanoserver-1709`

```console
$ docker pull hello-world@sha256:d30ad2cea84fd52fa0cd2eff98d4ff544c91696277ad51f34bb08a8a20f53c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.846; amd64

### `hello-world:nanoserver-1709` - windows version 10.0.16299.846; amd64

```console
$ docker pull hello-world@sha256:4c0c09dd5a7fe632acd637acf0a676ead5ce2aeaa5b79c181636171bf57aa153
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.0 MB (137000419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365a278e3083dfdb08b9a2251d4cda5fe9261e9a0345507279a64244085c6060`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:27:28 GMT
RUN Install update 10.0.16299.846
# Tue, 01 Jan 2019 10:20:20 GMT
RUN cmd /S /C #(nop) COPY file:415eb109aac20c548c615bac3dfa9d6152d0a1ed3b56ea5739eb1b60accd8075 in C: 
# Tue, 01 Jan 2019 10:20:21 GMT
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
	-	`sha256:820bcf206accb2b4a8f0dc15cc291863b0acc4fd959697bafca029c0cafd4e29`  
		Last Modified: Tue, 01 Jan 2019 10:20:53 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ba9b09a17a569c68431a3958ab6864d347ab8d0410011efe89b9023b747677`  
		Last Modified: Tue, 01 Jan 2019 10:20:53 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
