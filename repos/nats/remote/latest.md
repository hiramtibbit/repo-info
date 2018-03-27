## `nats:latest`

```console
$ docker pull nats@sha256:60a7c40710c866cc4258cdc2e82d4b0b88af0130a0e9704ed3bc88ded5038153
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	windows version 10.0.14393.2125; amd64

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:a15dc89056a15f2d174659c4c463ce573a5c3d09e9425fa86e88b2bf00408540
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2475191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c6bb90d1d3873477a7485375736ade43cbe3020ba886ec535314001672dbc25`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Mon, 26 Mar 2018 19:59:03 GMT
COPY file:91e25fd91e4246dd04fc79d904f6fb141e41bed3d70b72cbc39b00828b404a95 in /gnatsd 
# Mon, 26 Mar 2018 19:59:04 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Mon, 26 Mar 2018 19:59:04 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Mon, 26 Mar 2018 19:59:04 GMT
ENTRYPOINT ["/gnatsd"]
# Mon, 26 Mar 2018 19:59:05 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3e2cbb976f15111342a6bb6a66a3eb1af64700fd84016cf434fc7b5a8c3c62d9`  
		Last Modified: Mon, 26 Mar 2018 19:59:28 GMT  
		Size: 2.5 MB (2474714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d370c5b7a46c5c5274930e92ea32bc964026c1fa18e3db3d300227c4242becd2`  
		Last Modified: Mon, 26 Mar 2018 19:59:27 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:9925e4bcc40d1c8edfe9e8acbb686a282b2d1685b62941ba62d7555ab761166e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2643bb9e12c95b9fb06eec38f16fe7ae8802e58fff5232881a902140437db6be`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Mon, 26 Mar 2018 20:03:58 GMT
COPY file:01d8875dccc82d47e37e9aff807f8bb02539dd8a98e07833faa1c0a4efc4b9f5 in /gnatsd 
# Mon, 26 Mar 2018 20:03:58 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Mon, 26 Mar 2018 20:03:58 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Mon, 26 Mar 2018 20:03:58 GMT
ENTRYPOINT ["/gnatsd"]
# Mon, 26 Mar 2018 20:03:59 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:ace5839e3c653b5d6cd0106302ff353822074540c4abb9251de555430d3e1190`  
		Last Modified: Mon, 26 Mar 2018 20:04:54 GMT  
		Size: 2.3 MB (2310418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a71e087fed0553ec93731bdaa1c42bb0f850d85f4555a5e4743d4027adcc19`  
		Last Modified: Mon, 26 Mar 2018 20:04:29 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - windows version 10.0.14393.2125; amd64

```console
$ docker pull nats@sha256:c8e0192f372746ca2e286e9f85c53ad26ffc4f6a21d24a87c725f1d1177171ca
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.2 MB (411180627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1256fb0ffad5b36230e2650aa03ad8ba57a6d5c0888bedfef2ee32f0747440`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:52:57 GMT
RUN Install update 10.0.14393.2125
# Tue, 13 Mar 2018 23:39:00 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 13 Mar 2018 23:39:02 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Mon, 26 Mar 2018 23:25:30 GMT
RUN cmd /S /C #(nop) COPY file:35446248468beffaf5492d36bb8f01d6229ab2416006987418709211af43a5bc in gnatsd.exe 
# Mon, 26 Mar 2018 23:25:31 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Mon, 26 Mar 2018 23:25:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Mon, 26 Mar 2018 23:25:33 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Mon, 26 Mar 2018 23:25:34 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5b557cd80a9856d964887c4ea407b85fca10ce6aaa539984be9dd3570c60fd66`  
		Last Modified: Tue, 13 Mar 2018 00:52:57 GMT  
		Size: 156.0 MB (156003306 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cd6679018c86917df531ece3d8500b5dfaccb8b79ba313225e6b0f40be5f9f9d`  
		Last Modified: Tue, 13 Mar 2018 23:39:33 GMT  
		Size: 915.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c387e8ea34c5c1c13ee3963292c86a3edb8d40b2fef7f0bdbb4870fece8252`  
		Last Modified: Tue, 13 Mar 2018 23:39:33 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc628ded19a12dba90f61631989172f5682146c57f1c99ea85ed540753eaccb4`  
		Last Modified: Mon, 26 Mar 2018 23:25:54 GMT  
		Size: 2.5 MB (2479724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55fd0f10647c13239ffbc03727932db388bfbbc4a35aad9b90577a8e88ad110`  
		Last Modified: Mon, 26 Mar 2018 23:25:53 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f280640e3bc0447bef30ab5c99f9195cf2fffebb7b567b22c49bc3fd7348d64f`  
		Last Modified: Mon, 26 Mar 2018 23:25:53 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88942d090074ddd9057a716e808a0f2400f7e99aba183580de20b26eda27ebb0`  
		Last Modified: Mon, 26 Mar 2018 23:25:53 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103f43aaa8dff3cb59afff6325c8b04f686aa54071456a53770457749e2d11fb`  
		Last Modified: Mon, 26 Mar 2018 23:25:53 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
