## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:e438ba45ede866c4f300a41afe728c49b74579d4c0063e5144373526135f30d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull traefik@sha256:2c3ce9bbfd3cc1e6489e0cae0c46ed6543914ac8f08762c1d34be9866c6224c4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **455.0 MB (455018858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758d483a87536bd8bbcd784d9e90d2bc780bc6f99dc063f7aa1604e43717acf6`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Wed, 30 Jan 2019 10:15:08 GMT
RUN cmd /S /C #(nop) COPY file:002a6821d280a323184edc6749041fb992796e93ab16e626ce660fd362bb1335 in \traefik.exe 
# Wed, 30 Jan 2019 10:15:13 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 30 Jan 2019 10:15:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 30 Jan 2019 10:15:15 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.8 org.label-schema.docker.schema-version=1.0
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
	-	`sha256:a7474d58cbd98c13e22fec68746783aa77ec24d0798be886b43e2fd4fd9a9966`  
		Last Modified: Wed, 30 Jan 2019 10:15:38 GMT  
		Size: 19.6 MB (19619190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2e4f73dcd273b531a92fa4e95715592a51c99cfa9e81f36500d81d92be3962`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc8d15d9b36fd1b2fe1ed5f648f9708f424bbc3a07845f9609e1d235b3242d5`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db7939fa2c193a399423987e891e6e6bf051a5316677bb5b83f6b1b306ce1cc`  
		Last Modified: Wed, 30 Jan 2019 10:15:33 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
