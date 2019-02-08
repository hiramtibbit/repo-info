<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats`

-	[`nats:1.4.1`](#nats141)
-	[`nats:1.4.1-linux`](#nats141-linux)
-	[`nats:1.4.1-nanoserver`](#nats141-nanoserver)
-	[`nats:1.4.1-windowsservercore`](#nats141-windowsservercore)
-	[`nats:latest`](#natslatest)
-	[`nats:linux`](#natslinux)
-	[`nats:nanoserver`](#natsnanoserver)
-	[`nats:windowsservercore`](#natswindowsservercore)

## `nats:1.4.1`

```console
$ docker pull nats@sha256:324514aa61e8d83331e7504283dc4ef0799e951caba7f50f629137ef61298a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `nats:1.4.1` - linux; amd64

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

### `nats:1.4.1` - linux; arm variant v6

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

### `nats:1.4.1` - linux; arm64 variant v8

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

## `nats:1.4.1-linux`

```console
$ docker pull nats@sha256:324514aa61e8d83331e7504283dc4ef0799e951caba7f50f629137ef61298a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `nats:1.4.1-linux` - linux; amd64

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

### `nats:1.4.1-linux` - linux; arm variant v6

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

### `nats:1.4.1-linux` - linux; arm64 variant v8

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

## `nats:1.4.1-nanoserver`

**does not exist** (yet?)

## `nats:1.4.1-windowsservercore`

**does not exist** (yet?)

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

## `nats:linux`

```console
$ docker pull nats@sha256:324514aa61e8d83331e7504283dc4ef0799e951caba7f50f629137ef61298a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `nats:linux` - linux; amd64

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

### `nats:linux` - linux; arm variant v6

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

### `nats:linux` - linux; arm64 variant v8

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

## `nats:nanoserver`

```console
$ docker pull nats@sha256:9fb1ab6462516b4fbc794a7655b6241b480d9d4fed6f125f33eb92a328374c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `nats:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats@sha256:43ca4dc35b3439c3a3c84e1b7f331fe37e0f9f1cc7913d8c87add1ed75c00347
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.6 MB (438555718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6ff29b3a59076f8bf7443d72bed3a702ce0add39dad507f2a74a76fe1e634d`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 18:58:14 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 25 Dec 2018 18:59:38 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 16 Jan 2019 10:15:12 GMT
RUN cmd /S /C #(nop) COPY file:bdbacb3a8303d2b35808a725baa9ca785382cc9c84a1cae21c227170bae11e45 in gnatsd.exe 
# Wed, 16 Jan 2019 10:15:13 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Wed, 16 Jan 2019 10:15:14 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 16 Jan 2019 10:15:16 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 16 Jan 2019 10:15:17 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1d20c4d5c8a24ed1dedf4f428bf83dbcf505730bc0af377a47b81d2a024817d2`  
		Last Modified: Tue, 25 Dec 2018 18:58:46 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb95733af4db6592407624c90544531d34aad8b9f6a5d636b61af1b274ea9213`  
		Last Modified: Tue, 25 Dec 2018 19:00:13 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb9f4c90ef2c9b51edb879fad8bde03deb6eb7fa78c7ad82c62b0a720219ab0`  
		Last Modified: Wed, 16 Jan 2019 10:15:47 GMT  
		Size: 3.2 MB (3152241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8324a08036428de881723c8e46ed2067cbd4d893479862a32180de13db0b4aac`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac0a9d6f2d8d82652b8477ee6c9a207fae8964f565b28548fd1f6c4d72d2da1`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f723d2f470e7f1e618cda636a5141b199fbcb9f1be37998e5df383e474b49e76`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace6ed46c089763d593ddcf87e4d243121ce81eac5c32f1eed558bfa97a03f29`  
		Last Modified: Wed, 16 Jan 2019 10:15:45 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:c17d23a88ec6a875a365ba3d6e03ceb671530fb165d9ced966c99a9060145c18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `nats:windowsservercore` - windows version 10.0.14393.2724; amd64

```console
$ docker pull nats@sha256:74620e38c0d0701454bc2397fa979a2476b0010222cae8ce61e4065725160175
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5638976615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b8fc285143e9a6e987159f6a4db3638157be7a3cc818199a09bb11cdc4b0514`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Wed, 16 Jan 2019 10:15:22 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 16 Jan 2019 10:15:23 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 16 Jan 2019 10:15:25 GMT
RUN cmd /S /C #(nop) COPY file:bdbacb3a8303d2b35808a725baa9ca785382cc9c84a1cae21c227170bae11e45 in gnatsd.exe 
# Wed, 16 Jan 2019 10:15:27 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Wed, 16 Jan 2019 10:15:28 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 16 Jan 2019 10:15:29 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 16 Jan 2019 10:15:30 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:841388388e527c92b099880239db11e129d4d9d0ffa56a19dccc5811e33c0874`  
		Last Modified: Wed, 16 Jan 2019 10:16:00 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695fd6bfa703d397b2891a0f71228b0d1bd5e88c2360e62278faf716aa17253a`  
		Last Modified: Wed, 16 Jan 2019 10:16:00 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b259c3213e9b0d3d4e0c739d73a54d7647824b73a06bd2c0bf584f232dc5bbf`  
		Last Modified: Wed, 16 Jan 2019 10:15:59 GMT  
		Size: 3.2 MB (3152445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f4dd1ec7a18c868012d37959216b3ba04a061c384ec1bf8626fddccb6bc53`  
		Last Modified: Wed, 16 Jan 2019 10:15:58 GMT  
		Size: 1.9 KB (1894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aec7837b2fc28309c65d6ac16bd6d1385ca9a70edcf5ac60e51eb1281fcea47`  
		Last Modified: Wed, 16 Jan 2019 10:15:58 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524d44c21f8aa86535c655c9609f003e2c0b956747c305349d06afe9401342fe`  
		Last Modified: Wed, 16 Jan 2019 10:15:58 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1600ac90dddfc333c75aa8ec1194b8c33cec44ca29a89228500f1af373e9b0d6`  
		Last Modified: Wed, 16 Jan 2019 10:15:58 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
