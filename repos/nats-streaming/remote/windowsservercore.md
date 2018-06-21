## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:0545137ac534794491fc22a227ab44f5de833664cbc662b4679b2fd1bd7def4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.2312; amd64

```console
$ docker pull nats-streaming@sha256:0b3863447c48e0c6115648db00823391992a2230a0df93115702cf922dd30386
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5488187413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1f078cf6d03bb0fb72233b22b86d416a8ffc63aaf84dd4598d31d990eca95f`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:30 GMT
RUN Install update 10.0.14393.2312
# Thu, 21 Jun 2018 09:15:16 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 21 Jun 2018 09:15:18 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 21 Jun 2018 09:15:18 GMT
RUN cmd /S /C #(nop) COPY file:7bdab96492ca0bbf9ad2797c4fe012804152b37008a34a54842860ced0d1d8f2 in nats-streaming-server.exe 
# Thu, 21 Jun 2018 09:15:19 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 5222 8222
# Thu, 21 Jun 2018 09:15:20 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8e9da9bbe3af2118a0b5eef7a3d649367557d0d3992ed0213c79857b23b4140e`  
		Last Modified: Wed, 13 Jun 2018 00:36:30 GMT  
		Size: 1.4 GB (1414319443 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b45ef41914c6cc4ddfdd6c53b735951d6e049dbb6e0ea0054ea9ee9ecc521b75`  
		Last Modified: Thu, 21 Jun 2018 09:16:07 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981f47160136aa23edc1876116c0cd72ca4e196eab214c10a10301363cc1615e`  
		Last Modified: Thu, 21 Jun 2018 09:16:07 GMT  
		Size: 1.4 KB (1368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55a6c13118da264620ac63fec23dc90e8437c5f787078228afc2d912454aec7`  
		Last Modified: Thu, 21 Jun 2018 09:16:10 GMT  
		Size: 3.9 MB (3877101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dee1f7ef5b8044ff7a77d2c42bdc3e32c8fdf67e9aa11a83c7fd19a97a0a9f2`  
		Last Modified: Thu, 21 Jun 2018 09:16:09 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a205040b3d3cfad48570ab85547775b5979eae14dacde4bf6458c87f00b7f1b6`  
		Last Modified: Thu, 21 Jun 2018 09:16:08 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
