## `traefik:nanoserver-sac2016`

```console
$ docker pull traefik@sha256:f292708df1aaa25d882e383b5ddebe5b1755bec7eadc605a7e0d66cf7ce1e3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:085d447b30ee77254df872902889cf651b07408a8af5e343084d7867e8be7f75
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452234544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9dfbf7f5d1c4c00428e89dc0e08c66bb05e3d05b3076b8af5a11921f43b2d8`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 02 Oct 2018 09:15:54 GMT
RUN cmd /S /C #(nop) COPY file:1915325a14783c34932aaf2fbe9ff8219bcd8ebb5b15986082ff6949742a0724 in \traefik.exe 
# Tue, 02 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 02 Oct 2018 09:15:58 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 02 Oct 2018 09:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.1 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0ed41c06570459d8cdeaa4041c99c14b42f7d4ce28afe8d826372d5d39d1ed3f`  
		Last Modified: Tue, 02 Oct 2018 09:16:19 GMT  
		Size: 19.0 MB (19006739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d4f8e77aa340bc4d9271ef28c529d822decffd2a8a5d7955a16764b75ac9bc`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7994d798c07650e5bc401ddfd0565d6428573f839f798a4e851754b565339e`  
		Last Modified: Tue, 02 Oct 2018 09:16:14 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f92a7926b8df569ac0f2e630b0f44e9f62a00496ddb7af93b2b5e046212d563`  
		Last Modified: Tue, 02 Oct 2018 09:16:13 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
