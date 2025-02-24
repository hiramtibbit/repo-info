## `nats:nanoserver`

```console
$ docker pull nats@sha256:a4b17b14ad15af4df4ca5616be9928b5284ad1d6f41975d192514eee51d630f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `nats:nanoserver` - windows version 10.0.17134.829; amd64

```console
$ docker pull nats@sha256:63a866829004facaa6d771558c4362258217b04135ec149a79985b9f4152496d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.8 MB (153814802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a42963fc0f8b7ad599887211c11b1e0bffcbd70dc43bfdb3f0d6d519c8466940`
-	Entrypoint: `["nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 16:52:04 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 13:52:10 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 12 Jun 2019 13:52:11 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-server
# Wed, 12 Jun 2019 13:52:13 GMT
RUN cmd /S /C #(nop) COPY file:8bda89c19209ce17886d8f819710d48f0fa30bae2ca05800ddb6f858346a4bd3 in nats-server.exe 
# Wed, 12 Jun 2019 13:52:15 GMT
RUN cmd /S /C #(nop) COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Wed, 12 Jun 2019 13:52:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 12 Jun 2019 13:52:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["nats-server"]
# Wed, 12 Jun 2019 13:52:18 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e46172273a4e4384e1eec7fb01091c828a256ea0f87b30f61381fba9bc511371`  
		Last Modified: Mon, 17 Sep 2018 20:23:30 GMT  
		Size: 92.8 MB (92818888 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:61703422ec932ddc8860cca8c8d4ee04e80e412105b5853e896aaf6bfb018eb8`  
		Last Modified: Tue, 11 Jun 2019 18:13:46 GMT  
		Size: 57.4 MB (57416125 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:24ff25890b0be7c2689e13472be3e7c84887e0056e7edd5dc8821c94275fa606`  
		Last Modified: Wed, 12 Jun 2019 13:53:08 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9bfb8d056d3f506bd3798fe7d1af023d0d30c8d27fc10681d9b60b29304c03`  
		Last Modified: Wed, 12 Jun 2019 13:53:08 GMT  
		Size: 1.1 KB (1136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2dc0797ab6114d6e804e9e91c06bbd6e79bc961aa055b81f26b711bffd8b95`  
		Last Modified: Wed, 12 Jun 2019 13:53:08 GMT  
		Size: 3.6 MB (3573317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2f0fab2fcae71abd6b0157e60e2c86872ae7c43b19b1e9ca5212566723e0e1`  
		Last Modified: Wed, 12 Jun 2019 13:53:06 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1166e6b38f1180b290eddc2ac6d8bac606e02b2aeabc567cb117369d0fd07d74`  
		Last Modified: Wed, 12 Jun 2019 13:53:06 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9f8c4101939a067190f0e79465bf99c83b2a4109ea70190a8ced728838be68`  
		Last Modified: Wed, 12 Jun 2019 13:53:06 GMT  
		Size: 923.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c449fc7226ec521484216ece802c5faf4d94fcd16ad1d1b3b215d3abbd384073`  
		Last Modified: Wed, 12 Jun 2019 13:53:06 GMT  
		Size: 887.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
