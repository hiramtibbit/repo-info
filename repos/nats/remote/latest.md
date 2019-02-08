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
