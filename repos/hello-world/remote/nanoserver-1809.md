## `hello-world:nanoserver-1809`

```console
$ docker pull hello-world@sha256:8be6c4d7c8ad7d4c3e9455cbf6990c991bf0f3d5536a782a132c9f2061fb6044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.194; amd64

### `hello-world:nanoserver-1809` - windows version 10.0.17763.194; amd64

```console
$ docker pull hello-world@sha256:dd9b7482975b66309507df1365b17ea38ecd5e79005eaa8a57136a60ef5e3cf5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134331358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dddd19ddc595d0cbdfb0ae0a61e1a4dcf8f35eb4801957a116ff460378850da`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Sat, 15 Sep 2018 06:57:49 GMT
RUN Apply image 1809_RTM_amd64
# Wed, 05 Dec 2018 22:22:13 GMT
RUN Install update 1809_amd64
# Tue, 01 Jan 2019 10:20:31 GMT
RUN cmd /S /C #(nop) COPY file:0afaffc2fa64462107b7178b2ae7d20404ff12f637eabe3a8046192b9d9a0338 in C: 
# Tue, 01 Jan 2019 10:20:32 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:6a5e981230da7b34a25588f20c8b6b5366256ab1e0aadc0b7ecb566855bf4679`  
		Last Modified: Tue, 13 Nov 2018 18:49:42 GMT  
		Size: 98.3 MB (98266490 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dc4b656f6979db7d263404975987fda648ab86be681ea2ac619b8758cf23068f`  
		Last Modified: Tue, 11 Dec 2018 19:45:49 GMT  
		Size: 36.1 MB (36062252 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2848c5402b33f0c798e25c7c40fd0b58014150ffd091a92a70afe0024202dfdb`  
		Last Modified: Tue, 01 Jan 2019 10:21:08 GMT  
		Size: 1.7 KB (1670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0171b11ac8093c863e5080abf8b1011ecdbd1aff9bed8087cd124ebf9166e9`  
		Last Modified: Tue, 01 Jan 2019 10:21:07 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
