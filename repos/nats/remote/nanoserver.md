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
