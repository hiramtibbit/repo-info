## `nats:windowsservercore`

```console
$ docker pull nats@sha256:c17d23a88ec6a875a365ba3d6e03ceb671530fb165d9ced966c99a9060145c18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `nats:windowsservercore` - windows version 10.0.14393.2724; amd64

```console
$ docker pull nats@sha256:74620e38c0d0701454bc2397fa979a2476b0010222cae8ce61e4065725160175
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5638976615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b8fc285143e9a6e987159f6a4db3638157be7a3cc818199a09bb11cdc4b0514`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Wed, 16 Jan 2019 10:15:22 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 16 Jan 2019 10:15:23 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Wed, 16 Jan 2019 10:15:25 GMT
RUN cmd /S /C #(nop) COPY file:bdbacb3a8303d2b35808a725baa9ca785382cc9c84a1cae21c227170bae11e45 in gnatsd.exe 
# Wed, 16 Jan 2019 10:15:27 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Wed, 16 Jan 2019 10:15:28 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 16 Jan 2019 10:15:29 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Wed, 16 Jan 2019 10:15:30 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:841388388e527c92b099880239db11e129d4d9d0ffa56a19dccc5811e33c0874`  
		Last Modified: Wed, 16 Jan 2019 10:16:00 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695fd6bfa703d397b2891a0f71228b0d1bd5e88c2360e62278faf716aa17253a`  
		Last Modified: Wed, 16 Jan 2019 10:16:00 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b259c3213e9b0d3d4e0c739d73a54d7647824b73a06bd2c0bf584f232dc5bbf`  
		Last Modified: Wed, 16 Jan 2019 10:15:59 GMT  
		Size: 3.2 MB (3152445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f4dd1ec7a18c868012d37959216b3ba04a061c384ec1bf8626fddccb6bc53`  
		Last Modified: Wed, 16 Jan 2019 10:15:58 GMT  
		Size: 1.9 KB (1894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aec7837b2fc28309c65d6ac16bd6d1385ca9a70edcf5ac60e51eb1281fcea47`  
		Last Modified: Wed, 16 Jan 2019 10:15:58 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524d44c21f8aa86535c655c9609f003e2c0b956747c305349d06afe9401342fe`  
		Last Modified: Wed, 16 Jan 2019 10:15:58 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1600ac90dddfc333c75aa8ec1194b8c33cec44ca29a89228500f1af373e9b0d6`  
		Last Modified: Wed, 16 Jan 2019 10:15:58 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
