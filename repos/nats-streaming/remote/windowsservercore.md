## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:5cc6bd0990b011c3a6c481474a82626505fd20d8ccad783bb76ead4e7da4bfc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.2430; amd64

```console
$ docker pull nats-streaming@sha256:73d7e2920c690b4c003d8f2ddd3239898051c841b56d30413b98b417dcb270ae
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 GB (5516604399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a9b43b7d7fcdffd80ce06f354b34adba968e5e7289dd678f231a6ad2b0789c0`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Sat, 01 Sep 2018 09:16:46 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 05 Sep 2018 09:16:46 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Wed, 05 Sep 2018 09:16:49 GMT
RUN cmd /S /C #(nop) COPY file:6fceacb4a15339840cf000d448e03db257add8a4e5daf67cfcafa881a6bcc60e in nats-streaming-server.exe 
# Wed, 05 Sep 2018 09:16:49 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Wed, 05 Sep 2018 09:16:50 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0f73b33955d66933884ee06f486d7a25925375ae995520b36e28d4a6f9b2620e`  
		Last Modified: Sat, 01 Sep 2018 09:17:23 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5726dd473b2e902db82adaffb6b4863d99afed5bf643a92f5822b6b3cabd380e`  
		Last Modified: Wed, 05 Sep 2018 09:17:16 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f9048da96bfd60d44d1377e3f2914a2a844e71161618dd6e628cdef8c2420f`  
		Last Modified: Wed, 05 Sep 2018 09:17:17 GMT  
		Size: 4.7 MB (4708490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5194f049d5a81e657f4da1afeec7e9554a8fd49448f78622f8d75bf28d613112`  
		Last Modified: Wed, 05 Sep 2018 09:17:15 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563e3cabf7d3adfbd3e4763f06fc5ca21d9065a1ad2edba4f9f201e209ea704e`  
		Last Modified: Wed, 05 Sep 2018 09:17:16 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
