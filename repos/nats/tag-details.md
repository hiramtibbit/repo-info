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
$ docker pull nats@sha256:ad90aeba1d138c3370985f9f676a14ad3defc3885831f7430b25bdcad49de739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2551; amd64

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

### `nats:1.4.1` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats@sha256:50fc628b326ba77eddcc05ac5d8a80cc7c72eaac51713b3a802d060af2c9388a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.6 MB (438555524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f2ca191fa716366b5638f7c870917ea60bad783c87320fedc0ae84fa183b788`
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
# Fri, 08 Feb 2019 10:16:06 GMT
RUN cmd /S /C #(nop) COPY file:53f750b3ccfc47eeb601ea1c85d33daed8c4a1fed329eb9ac24f35afd83e258a in gnatsd.exe 
# Fri, 08 Feb 2019 10:16:07 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Fri, 08 Feb 2019 10:16:08 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Fri, 08 Feb 2019 10:16:10 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 08 Feb 2019 10:16:11 GMT
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
	-	`sha256:4d475600c1f4be9825aa127113536ab619fc59cfe87405f208ba54916626ce44`  
		Last Modified: Fri, 08 Feb 2019 10:16:37 GMT  
		Size: 3.2 MB (3152077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ce355d44829361d58166805072811f491ab9b9166a74c20a1f5e4c537c3a47`  
		Last Modified: Fri, 08 Feb 2019 10:16:36 GMT  
		Size: 1.7 KB (1675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02056b500e2fb10b0acd0b5b41a07fffc853a85f127d056a8422e521cc22ccca`  
		Last Modified: Fri, 08 Feb 2019 10:16:36 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f922079183c81225d3d0909bc39ac4bee9b0a95db82c310520c934b8103e0071`  
		Last Modified: Fri, 08 Feb 2019 10:16:36 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34891554e7d8acf0ecb662727a87bf428d302c77c258186b2f9488499e7c152`  
		Last Modified: Fri, 08 Feb 2019 10:16:36 GMT  
		Size: 947.0 B  
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

```console
$ docker pull nats@sha256:41397b8aac229201dbe56182e82b5d58b1d5fc5b3007869d013501e76b7c0f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `nats:1.4.1-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats@sha256:50fc628b326ba77eddcc05ac5d8a80cc7c72eaac51713b3a802d060af2c9388a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.6 MB (438555524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f2ca191fa716366b5638f7c870917ea60bad783c87320fedc0ae84fa183b788`
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
# Fri, 08 Feb 2019 10:16:06 GMT
RUN cmd /S /C #(nop) COPY file:53f750b3ccfc47eeb601ea1c85d33daed8c4a1fed329eb9ac24f35afd83e258a in gnatsd.exe 
# Fri, 08 Feb 2019 10:16:07 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Fri, 08 Feb 2019 10:16:08 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Fri, 08 Feb 2019 10:16:10 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 08 Feb 2019 10:16:11 GMT
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
	-	`sha256:4d475600c1f4be9825aa127113536ab619fc59cfe87405f208ba54916626ce44`  
		Last Modified: Fri, 08 Feb 2019 10:16:37 GMT  
		Size: 3.2 MB (3152077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ce355d44829361d58166805072811f491ab9b9166a74c20a1f5e4c537c3a47`  
		Last Modified: Fri, 08 Feb 2019 10:16:36 GMT  
		Size: 1.7 KB (1675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02056b500e2fb10b0acd0b5b41a07fffc853a85f127d056a8422e521cc22ccca`  
		Last Modified: Fri, 08 Feb 2019 10:16:36 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f922079183c81225d3d0909bc39ac4bee9b0a95db82c310520c934b8103e0071`  
		Last Modified: Fri, 08 Feb 2019 10:16:36 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34891554e7d8acf0ecb662727a87bf428d302c77c258186b2f9488499e7c152`  
		Last Modified: Fri, 08 Feb 2019 10:16:36 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:1.4.1-windowsservercore`

```console
$ docker pull nats@sha256:82033e5d1713608a9ce48e8e5e34caa0970d767854626926e8ede3910f2737a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `nats:1.4.1-windowsservercore` - windows version 10.0.14393.2724; amd64

```console
$ docker pull nats@sha256:f9e7d8835828ad5e17e7782829fe793811f36b3a3ae9da5d5ba793cea16d3acf
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5638976327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aafee3f84e1361cbd1889d4373eae324765348b0748cb6ed582cfd985b19f2a`
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
# Fri, 08 Feb 2019 10:16:17 GMT
RUN cmd /S /C #(nop) COPY file:53f750b3ccfc47eeb601ea1c85d33daed8c4a1fed329eb9ac24f35afd83e258a in gnatsd.exe 
# Fri, 08 Feb 2019 10:16:18 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Fri, 08 Feb 2019 10:16:20 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Fri, 08 Feb 2019 10:16:21 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 08 Feb 2019 10:16:22 GMT
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
	-	`sha256:b0c0e661ecc1c075ef708de49da5c0bc129ea9d209dc8007310be51ee1692c4c`  
		Last Modified: Fri, 08 Feb 2019 10:16:49 GMT  
		Size: 3.2 MB (3152272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075baa5f7c7d68b4204496141044cd6f0d0a0292f53b248958214c4f72ec1aaa`  
		Last Modified: Fri, 08 Feb 2019 10:16:48 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69488ebc55430a42484098e80e93dc79b44014c8258816783d87124f9aec750f`  
		Last Modified: Fri, 08 Feb 2019 10:16:48 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26950482be46b5b6c82de0b4841e1d75297f3665641ceb91bfde71c0b75f01b3`  
		Last Modified: Fri, 08 Feb 2019 10:16:48 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825f6ceb3fdd58fd2a09646bb1f57dcaf2266ce95d4b2f41acac2eb1ec0a327e`  
		Last Modified: Fri, 08 Feb 2019 10:16:48 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:latest`

```console
$ docker pull nats@sha256:ad90aeba1d138c3370985f9f676a14ad3defc3885831f7430b25bdcad49de739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2551; amd64

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

### `nats:latest` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats@sha256:50fc628b326ba77eddcc05ac5d8a80cc7c72eaac51713b3a802d060af2c9388a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.6 MB (438555524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f2ca191fa716366b5638f7c870917ea60bad783c87320fedc0ae84fa183b788`
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
# Fri, 08 Feb 2019 10:16:06 GMT
RUN cmd /S /C #(nop) COPY file:53f750b3ccfc47eeb601ea1c85d33daed8c4a1fed329eb9ac24f35afd83e258a in gnatsd.exe 
# Fri, 08 Feb 2019 10:16:07 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Fri, 08 Feb 2019 10:16:08 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Fri, 08 Feb 2019 10:16:10 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 08 Feb 2019 10:16:11 GMT
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
	-	`sha256:4d475600c1f4be9825aa127113536ab619fc59cfe87405f208ba54916626ce44`  
		Last Modified: Fri, 08 Feb 2019 10:16:37 GMT  
		Size: 3.2 MB (3152077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ce355d44829361d58166805072811f491ab9b9166a74c20a1f5e4c537c3a47`  
		Last Modified: Fri, 08 Feb 2019 10:16:36 GMT  
		Size: 1.7 KB (1675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02056b500e2fb10b0acd0b5b41a07fffc853a85f127d056a8422e521cc22ccca`  
		Last Modified: Fri, 08 Feb 2019 10:16:36 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f922079183c81225d3d0909bc39ac4bee9b0a95db82c310520c934b8103e0071`  
		Last Modified: Fri, 08 Feb 2019 10:16:36 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34891554e7d8acf0ecb662727a87bf428d302c77c258186b2f9488499e7c152`  
		Last Modified: Fri, 08 Feb 2019 10:16:36 GMT  
		Size: 947.0 B  
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
$ docker pull nats@sha256:41397b8aac229201dbe56182e82b5d58b1d5fc5b3007869d013501e76b7c0f32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `nats:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats@sha256:50fc628b326ba77eddcc05ac5d8a80cc7c72eaac51713b3a802d060af2c9388a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.6 MB (438555524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f2ca191fa716366b5638f7c870917ea60bad783c87320fedc0ae84fa183b788`
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
# Fri, 08 Feb 2019 10:16:06 GMT
RUN cmd /S /C #(nop) COPY file:53f750b3ccfc47eeb601ea1c85d33daed8c4a1fed329eb9ac24f35afd83e258a in gnatsd.exe 
# Fri, 08 Feb 2019 10:16:07 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Fri, 08 Feb 2019 10:16:08 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Fri, 08 Feb 2019 10:16:10 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 08 Feb 2019 10:16:11 GMT
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
	-	`sha256:4d475600c1f4be9825aa127113536ab619fc59cfe87405f208ba54916626ce44`  
		Last Modified: Fri, 08 Feb 2019 10:16:37 GMT  
		Size: 3.2 MB (3152077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ce355d44829361d58166805072811f491ab9b9166a74c20a1f5e4c537c3a47`  
		Last Modified: Fri, 08 Feb 2019 10:16:36 GMT  
		Size: 1.7 KB (1675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02056b500e2fb10b0acd0b5b41a07fffc853a85f127d056a8422e521cc22ccca`  
		Last Modified: Fri, 08 Feb 2019 10:16:36 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f922079183c81225d3d0909bc39ac4bee9b0a95db82c310520c934b8103e0071`  
		Last Modified: Fri, 08 Feb 2019 10:16:36 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34891554e7d8acf0ecb662727a87bf428d302c77c258186b2f9488499e7c152`  
		Last Modified: Fri, 08 Feb 2019 10:16:36 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:82033e5d1713608a9ce48e8e5e34caa0970d767854626926e8ede3910f2737a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `nats:windowsservercore` - windows version 10.0.14393.2724; amd64

```console
$ docker pull nats@sha256:f9e7d8835828ad5e17e7782829fe793811f36b3a3ae9da5d5ba793cea16d3acf
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5638976327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aafee3f84e1361cbd1889d4373eae324765348b0748cb6ed582cfd985b19f2a`
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
# Fri, 08 Feb 2019 10:16:17 GMT
RUN cmd /S /C #(nop) COPY file:53f750b3ccfc47eeb601ea1c85d33daed8c4a1fed329eb9ac24f35afd83e258a in gnatsd.exe 
# Fri, 08 Feb 2019 10:16:18 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Fri, 08 Feb 2019 10:16:20 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Fri, 08 Feb 2019 10:16:21 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Fri, 08 Feb 2019 10:16:22 GMT
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
	-	`sha256:b0c0e661ecc1c075ef708de49da5c0bc129ea9d209dc8007310be51ee1692c4c`  
		Last Modified: Fri, 08 Feb 2019 10:16:49 GMT  
		Size: 3.2 MB (3152272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075baa5f7c7d68b4204496141044cd6f0d0a0292f53b248958214c4f72ec1aaa`  
		Last Modified: Fri, 08 Feb 2019 10:16:48 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69488ebc55430a42484098e80e93dc79b44014c8258816783d87124f9aec750f`  
		Last Modified: Fri, 08 Feb 2019 10:16:48 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26950482be46b5b6c82de0b4841e1d75297f3665641ceb91bfde71c0b75f01b3`  
		Last Modified: Fri, 08 Feb 2019 10:16:48 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825f6ceb3fdd58fd2a09646bb1f57dcaf2266ce95d4b2f41acac2eb1ec0a327e`  
		Last Modified: Fri, 08 Feb 2019 10:16:48 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
