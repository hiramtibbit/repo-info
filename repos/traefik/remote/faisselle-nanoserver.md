## `traefik:faisselle-nanoserver`

```console
$ docker pull traefik@sha256:11bb17831dd6b886116d4d9f62957785c5d0501453095b33b81f40a2073f756d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:faisselle-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:8a9335e2357cb2f121f06ed2068db23aa7e320386041abd905606d20dede8080
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.3 MB (453292630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e12500b320f2e822f7d0d6adff806f9d7fc6a9bdbd654de87a8531bdc3199c99`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 19 Jun 2019 20:14:57 GMT
RUN cmd /S /C #(nop) COPY file:cbef9dc2466d1db4e0f62ba0b7e8f7cc23fa8024ed1fff51b47391f34f64f38c in \traefik.exe 
# Wed, 19 Jun 2019 20:15:04 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 19 Jun 2019 20:15:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 19 Jun 2019 20:15:06 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Containous org.opencontainers.image.url=https://traefik.io org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.0.0-alpha6 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:553bb6ea0d4ffa2707d4003e292f3a860d0605a5d1a1ca1ced120ad69baa6e9c`  
		Last Modified: Wed, 19 Jun 2019 20:15:42 GMT  
		Size: 17.9 MB (17893023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3706ee9dfa84407686e468851f7756a983b5ada9ef31b1a6939b497c43f98ba0`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ed4a594d209d40272924ddd32e748085e707e786e245d34cc97c62cdd07b5e`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 929.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de1b6331fdaeb439d0f634251877786cef56759e2347d2f8c56a97ce39c9029`  
		Last Modified: Wed, 19 Jun 2019 20:15:37 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
