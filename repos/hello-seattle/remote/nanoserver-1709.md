## `hello-seattle:nanoserver-1709`

```console
$ docker pull hello-seattle@sha256:11047521855e8b684cbb73ffae0303dc6cf53735cc72157e03485855f1b382d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.547; amd64

### `hello-seattle:nanoserver-1709` - windows version 10.0.16299.547; amd64

```console
$ docker pull hello-seattle@sha256:cf192b70f7bedd030747964826ed11846efcd05c54a175c4b4b810dde068907f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.2 MB (134159582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:967459e0c213db18a6a4dd42d00d380fc9440d727ac3c0d365ea8f7f8488a598`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 29 Sep 2017 09:50:38 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Jul 2018 17:52:28 GMT
RUN Install update 10.0.16299.547
# Wed, 11 Jul 2018 09:18:15 GMT
RUN cmd /S /C #(nop) COPY file:624e4099fcc00c87cca93a94a047c9dd2c34c298664b52edac64be603612ae2b in C: 
# Wed, 11 Jul 2018 09:18:16 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:407ada6e90de9752a53cb9f52b7947a0e38a9b21a349970ace15c68890d72511`  
		Last Modified: Tue, 17 Oct 2017 15:49:36 GMT  
		Size: 81.0 MB (81039739 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:34fb1446c2c9d000074687309a5ee1c0d8e0d26e67ba03d9532c1aa139f9990a`  
		Last Modified: Tue, 10 Jul 2018 23:35:57 GMT  
		Size: 53.1 MB (53117210 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:336711ac72760259ead4c019188b2857ffaf642d6651e26ec348d1ab50e3b820`  
		Last Modified: Wed, 11 Jul 2018 09:18:40 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5435908797957a3f68594dbc41e2456ce8ce67487c904839bcc29625a4ed7070`  
		Last Modified: Wed, 11 Jul 2018 09:18:40 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
