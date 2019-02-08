## `nats:latest`

```console
$ docker pull nats@sha256:324514aa61e8d83331e7504283dc4ef0799e951caba7f50f629137ef61298a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:3071c930f2851b07e76e55f49218a50a4f22a1d81e0ae1036882be2c29048ca3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450cf18d7b2a017253578539f7fa2b2f91578a2fa0fd7963de3b49950f5f061c`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 08 Feb 2019 01:19:51 GMT
COPY file:d05cdb1caa120b1cda303306d87dab1f3e28983e2fa8b67471e05743b1edb0c4 in /gnatsd 
# Fri, 08 Feb 2019 01:19:51 GMT
COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Fri, 08 Feb 2019 01:19:51 GMT
EXPOSE 4222 6222 8222
# Fri, 08 Feb 2019 01:19:52 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 08 Feb 2019 01:19:52 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:32353d21546095be560760f0fe25139ef429b54e5dfaf4e453262a1eef7d3177`  
		Last Modified: Fri, 08 Feb 2019 01:19:59 GMT  
		Size: 3.2 MB (3178768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9b6dd50578493fdaedfb10601e4eae7db78a5a78599c5b61f7ed07fac9d181`  
		Last Modified: Fri, 08 Feb 2019 01:19:58 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:b2dadb3a93a19c819fd6ca90bd892403664db156dd378d137ddaf6a2b03b084e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2984355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a586d820b9bf75c0534458931c0deca0960cd8a81c2eca141c237f2e984332ae`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 08 Feb 2019 08:49:37 GMT
COPY file:829caf86f46ae2fd73e35598dbc9f3023ad79fac560f23f7d19b10567a2fdc02 in /gnatsd 
# Fri, 08 Feb 2019 08:49:37 GMT
COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Fri, 08 Feb 2019 08:49:39 GMT
EXPOSE 4222 6222 8222
# Fri, 08 Feb 2019 08:49:39 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 08 Feb 2019 08:49:40 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:475b0effa1dd020f27026c829620b338b77a28a6c86d2ae4670803c88cc7f685`  
		Last Modified: Fri, 08 Feb 2019 08:49:49 GMT  
		Size: 3.0 MB (2983878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef7fdcbd9aae6ab85b94e739501b954b4ba4762ee06d1faeaf8820fd3eec579`  
		Last Modified: Fri, 08 Feb 2019 08:49:48 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:ae23014a0c4c7a0ca0af119f2f619f0a402b0f2e542599b4a318c4d182b28a76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2910381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4535ae6dadd3f1d70b5f2b6b8999ec8af350774b510e85702e31f1ffb4ef2877`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 08 Feb 2019 09:44:43 GMT
COPY file:cb80b284de4255f3b453dd927cf036556918ac5e397cd02a2ad56c635f33b306 in /gnatsd 
# Fri, 08 Feb 2019 09:44:43 GMT
COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Fri, 08 Feb 2019 09:44:44 GMT
EXPOSE 4222 6222 8222
# Fri, 08 Feb 2019 09:44:45 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 08 Feb 2019 09:44:46 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:8725bca6a0569e39c05adbfc1b6e4d55dca11adf1272f2bf2d15797119d43af3`  
		Last Modified: Fri, 08 Feb 2019 09:44:58 GMT  
		Size: 2.9 MB (2909906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba9c01d1192057a8d57bbe406b82a9979dccd5cf0a52cc59af9ac3b07e7d25f`  
		Last Modified: Fri, 08 Feb 2019 09:44:56 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
