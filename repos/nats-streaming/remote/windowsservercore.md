## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:1b62d6096215545208396250c7369f9b4f97aacde9388b6bb5ede52515404056
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.3025; amd64

```console
$ docker pull nats-streaming@sha256:6fcb37f0f97eb7f95b640ea3335e8477fd41a73cf380323ef29efd6745139a4a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5715431242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78a7b3c334b2260f59bb78c33dcdee4c7fc5339639efe5d2d5d8979fa862e6a`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 13:52:42 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 13 Jun 2019 20:16:07 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 13 Jun 2019 20:16:09 GMT
RUN cmd /S /C #(nop) COPY file:bce0965052bfd4646f9a5dc087e5bb5583494b2589991c004e1a6091f1cbae9c in nats-streaming-server.exe 
# Thu, 13 Jun 2019 20:16:11 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:16:13 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:44c0e609957769b596fbc71a1308838095b9c61d4b9deaafe46a49c72ff9e39d`  
		Last Modified: Wed, 12 Jun 2019 13:53:40 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad67da46e6b59c4f4655d24962133efae65c78cf97d7e572ce75bd261fe83d76`  
		Last Modified: Thu, 13 Jun 2019 20:17:05 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ff545cd84e1b4678e2cae861e0d352a370e6bdd81ce2c29b82bd10dbd7cb18`  
		Last Modified: Thu, 13 Jun 2019 20:17:04 GMT  
		Size: 5.5 MB (5451604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acac88082cc1e7b31f6a72ba1afd1ef76036467669f560ac77d66e9d7553c20e`  
		Last Modified: Thu, 13 Jun 2019 20:17:03 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c92f7e072fac5562fc4761551620e75b0c65234f2b68d43da2f0eb3f2aeacd`  
		Last Modified: Thu, 13 Jun 2019 20:17:03 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
