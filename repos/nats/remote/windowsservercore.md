## `nats:windowsservercore`

```console
$ docker pull nats@sha256:e8ceb8a86faf30dddda16e27a28b22a48523866b6af6bfd34b3074e21733b7fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2665; amd64

### `nats:windowsservercore` - windows version 10.0.14393.2665; amd64

```console
$ docker pull nats@sha256:7d2996b2e3ed569973b5abba6c7826b2aeb86430724048fd53b5d9fd0ccc5fba
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5637752010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908ad37e321b52c93128362f90ed457feb8dcad57ca246993d7469bf2ac47465`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Tue, 25 Dec 2018 18:58:27 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 25 Dec 2018 18:59:51 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Tue, 25 Dec 2018 18:59:53 GMT
RUN cmd /S /C #(nop) COPY file:6ecb5fc12b6dd56a695012369475c26102c409a2f7b9ae55e7e6d5d5498e74c3 in gnatsd.exe 
# Tue, 25 Dec 2018 18:59:55 GMT
RUN cmd /S /C #(nop) COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Tue, 25 Dec 2018 18:59:56 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 25 Dec 2018 18:59:57 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Tue, 25 Dec 2018 18:59:59 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bf261bf8d7bc7faa62a55474c337e0c2bf6e7d24df25e7737fa97ace46a2cd9a`  
		Last Modified: Mon, 10 Dec 2018 22:22:29 GMT  
		Size: 1.6 GB (1564741272 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1757f36d2758dac6649fd11788fe1f4aadd5bc256a44a1f15725983aa6bfee6d`  
		Last Modified: Tue, 25 Dec 2018 18:58:56 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ef60a3d931b147563e6a75e1cf6b7b60ac23ac79a76880140d1c62b1d26a87`  
		Last Modified: Tue, 25 Dec 2018 19:00:24 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93889bc46e8c2bfc549af2692223c88fd0f775f03cd1b06e9d74bec578124d29`  
		Last Modified: Tue, 25 Dec 2018 19:00:23 GMT  
		Size: 3.0 MB (3016724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de1461101f492c23fcaf00a9b1f293990e00a8a61bbbb4d3219b030f4572e98`  
		Last Modified: Tue, 25 Dec 2018 19:00:22 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a3233240241d4530b852434ab9e1218930a98c82dedfe55b925d2aeec636d3`  
		Last Modified: Tue, 25 Dec 2018 19:00:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88edd873c7ad2e6338b14104867a60c8782cdd090953cbb58e7bdc7b8fffa9aa`  
		Last Modified: Tue, 25 Dec 2018 19:00:22 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5069db16833cd67fbc1c227af170dc240cbd712f494c504eeae052ac4ffce8b`  
		Last Modified: Tue, 25 Dec 2018 19:00:21 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
