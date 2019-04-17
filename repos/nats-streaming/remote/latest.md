## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:8d48128d5d441702c181c46b589df2b1f4a1ad11f59c40e66a7ba2c8d996597c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2551; amd64

### `nats-streaming:latest` - linux; amd64

```console
$ docker pull nats-streaming@sha256:9a19f117c77e1876fcfb2000f1409e731b6b79e419f813221c2d5a57fc5c1f2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4785643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6752e20936976213df663b4074306339dafddd2e0e107a2722d262f8f8e5fff2`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Tue, 16 Apr 2019 22:20:30 GMT
COPY file:1dcb4421369c12aefe857c21aeb606a0cfb79ce2ef85a7fc58cf2f66ae762aeb in /nats-streaming-server 
# Tue, 16 Apr 2019 22:20:30 GMT
EXPOSE 4222 8222
# Tue, 16 Apr 2019 22:20:31 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Tue, 16 Apr 2019 22:20:31 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:cec9f3f6661fcf1ff77ce8c73cfff263585f7bb9d26c608fa97aae43d762f061`  
		Last Modified: Tue, 16 Apr 2019 22:20:45 GMT  
		Size: 4.8 MB (4785643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:6d4d9c62830d562d66ccdf126126a0d31350e38a84210267dad352e9f268f1d7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4500297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d8d4fc603e6c213f32fde5190b2fe3e9e4186e15a654d63ccfd3b84c215d1c`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Wed, 17 Apr 2019 07:50:55 GMT
COPY file:f6b268521e907897b87aca7b4219d318fa68231c438f9faf8ad6aa04fbea4a49 in /nats-streaming-server 
# Wed, 17 Apr 2019 07:50:55 GMT
EXPOSE 4222 8222
# Wed, 17 Apr 2019 07:50:55 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Wed, 17 Apr 2019 07:50:56 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:7cbc29ff7f43ea5b8ef19a6ac1f8ccfbbf575328df31a0bd8d8e43844dc84d63`  
		Last Modified: Wed, 17 Apr 2019 07:51:06 GMT  
		Size: 4.5 MB (4500297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:64906981bc71d7bb35b4c2541a8cbc026897d710abb77daae293be88f2ca1172
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4357701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b24b4694dc01e5c3384fd85279b12d74aefad8d05ef0b0bc17071b2d5fa8aaf`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Wed, 17 Apr 2019 08:50:41 GMT
COPY file:186149f94dda3e0b2bae2e6d48a69bee3afcdbd37e15ae9ad214151adc20f66a in /nats-streaming-server 
# Wed, 17 Apr 2019 08:50:41 GMT
EXPOSE 4222 8222
# Wed, 17 Apr 2019 08:50:42 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Wed, 17 Apr 2019 08:50:43 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:5ed24db3dac53d4bde090ecbe23dccfede9b49e018c9171c527f3d068fb1585c`  
		Last Modified: Wed, 17 Apr 2019 08:50:57 GMT  
		Size: 4.4 MB (4357701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats-streaming@sha256:e805a860b5261d95fb6928e97bb43426e40d45924474f27d70081c7448df7f98
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.3 MB (440262671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b0a5acbaab97b0f3cc5b8893ff49a71df63179ee5c845b27df8cb31bc929b1e`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 18:58:14 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 25 Dec 2018 18:58:15 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Wed, 17 Apr 2019 09:17:19 GMT
RUN cmd /S /C #(nop) COPY file:b72fb1a350c298851f55cd93a37c2e3cfd569fd6d6f872d91cfbb98e5986074e in nats-streaming-server.exe 
# Wed, 17 Apr 2019 09:17:21 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Wed, 17 Apr 2019 09:17:22 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
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
	-	`sha256:1d20c4d5c8a24ed1dedf4f428bf83dbcf505730bc0af377a47b81d2a024817d2`  
		Last Modified: Tue, 25 Dec 2018 18:58:46 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3757046450b3e3328715bdbca6c9a365573b92b486c43155522817cd384903`  
		Last Modified: Tue, 25 Dec 2018 18:58:46 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69569f3d5ec20672ccad464521b3f5f65fc12260b8e3fe63c888516d8c83c3c7`  
		Last Modified: Wed, 17 Apr 2019 09:17:50 GMT  
		Size: 4.9 MB (4861848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab31525a470fdcff00811acff78b605c4acf08ebb403d02e54724d91ac6471a`  
		Last Modified: Wed, 17 Apr 2019 09:17:49 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68feda548fcf89fb81cfefbd7353129a12e69f182f41a2895a77d3004fcf1cb8`  
		Last Modified: Wed, 17 Apr 2019 09:17:49 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
