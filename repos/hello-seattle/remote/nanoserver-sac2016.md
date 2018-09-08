## `hello-seattle:nanoserver-sac2016`

```console
$ docker pull hello-seattle@sha256:2e4e12d7567b2884936a60ffd1afccb7d4f4b847f6a14b938b82862e632fe920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `hello-seattle:nanoserver-sac2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull hello-seattle@sha256:6a3da2b319353e6b498f4ae2c04b449c2b4af9e3619a0c391e72b2d394461858
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.5 MB (420477662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2827ad71fd5d265e4d6752b463b1714f21380baf967d60e8cb2990609efb87a8`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:51:52 GMT
RUN Install update 10.0.14393.2430
# Sat, 08 Sep 2018 09:16:40 GMT
RUN cmd /S /C #(nop) COPY file:250ac5220ea63a682bc85c94eb974cffc949ff2d7be634477c2ccec8a47d1261 in C: 
# Sat, 08 Sep 2018 09:16:41 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a14bdf6da80603aa5007acea8d5ea659958b0bd1b31d31078023ca0d1c8ee05`  
		Last Modified: Mon, 13 Aug 2018 17:51:52 GMT  
		Size: 167.8 MB (167784035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c3f0046e87cb4b28a76d5b6bd7a78e05c663526abb1e608a784741f916d5fa78`  
		Last Modified: Sat, 08 Sep 2018 09:17:06 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff244a5f3b130ca523228ed0e25785ae88d6c7214d82b4c55323bd5da73ed28e`  
		Last Modified: Sat, 08 Sep 2018 09:17:05 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
