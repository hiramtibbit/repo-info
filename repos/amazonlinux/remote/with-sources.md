## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:bef41954cc142a4807475ddde3f8655b2db922a5bf8379101703be4d766d87b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:16e1751ab6ee25117d7a4c244aeaab1006247e2379a5790da31ab0a49c710240
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (410960802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eeeffad662977c4fd09d80343054dfc1129ce6b972fdd800326e2f0c5296b38`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Feb 2019 00:22:08 GMT
ADD file:3e10074b48c51f563af4a2b01b8e449c872ee7d119abdfb374d56a22c65149f0 in / 
# Tue, 26 Feb 2019 00:22:09 GMT
CMD ["/bin/bash"]
# Tue, 26 Feb 2019 00:22:30 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-444d8c6710a3027a6c520d9ce5108f0f2570052a15d712f13454c6c6d2d232f9.tar.gz"  && echo "63aba32ac76cee05220b1ef7ebdb8e451e8b12bb8712896883f511ee625b8b45  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:d56dfdfb8504435b47d51e0f3ce14132b8242d2b479fa6d684adf958f84e712b`  
		Last Modified: Tue, 26 Feb 2019 00:23:01 GMT  
		Size: 61.3 MB (61300792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4f01b2a3170e697dcf779df7e9ec07785f7b416c724abe408357b1ebf717f3`  
		Last Modified: Tue, 26 Feb 2019 00:23:30 GMT  
		Size: 349.7 MB (349660010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:with-sources` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:a28a6c59e1029ecaaec482863fa06ca36f37eca33fccf2deec685946d23f3c7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.4 MB (434405406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ef033640cd9b9d1ab15bf992b545979bf51bba1f4909cffa712fe1d3b1a45ef`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Feb 2019 09:46:10 GMT
ADD file:590a3f06060bb605fccc7a23fa5da0b68a4ca23b843795a78f74dbc31c767784 in / 
# Tue, 26 Feb 2019 09:46:12 GMT
CMD ["/bin/bash"]
# Tue, 26 Feb 2019 09:47:07 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-444d8c6710a3027a6c520d9ce5108f0f2570052a15d712f13454c6c6d2d232f9.tar.gz"  && echo "63aba32ac76cee05220b1ef7ebdb8e451e8b12bb8712896883f511ee625b8b45  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:a1a5a8b5370d1d7bc3013116e0da2af18db695c79b08a67451a76bfcb7339d55`  
		Last Modified: Tue, 26 Feb 2019 09:47:57 GMT  
		Size: 84.7 MB (84745394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede59a84df060b0a01a3ef5c4c709120918393fb16bff4b8dea80c34327a74e7`  
		Last Modified: Tue, 26 Feb 2019 09:49:12 GMT  
		Size: 349.7 MB (349660012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
