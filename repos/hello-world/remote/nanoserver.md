## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:1d03599ff34bf61b3b9aec616939dd6c85d6f5dd6cebf7ed173bab1ddfbb26f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64
	-	windows version 10.0.17763.557; amd64

### `hello-world:nanoserver` - windows version 10.0.17134.829; amd64

```console
$ docker pull hello-world@sha256:b0735fcb32a0e9f647c8758bfce2bf8b0e71a097549c7d3945d9ad978fd0dfec
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.2 MB (150237595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8b1d8bfa6648dc36c1debdf546b1e2b884e5e6b722f4bf86d98a6592243bcc`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 16:52:04 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:13:45 GMT
RUN cmd /S /C #(nop) COPY file:7b1666bf57eab9af43a34ac3bff0f0d60d153096912881d488e2dd82ff129a57 in C: 
# Wed, 12 Jun 2019 12:13:46 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
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
	-	`sha256:a17b8d9caad682128743a022c4a40fb6364f9a0d32621f3408e579117a7ba1c7`  
		Last Modified: Wed, 12 Jun 2019 12:14:13 GMT  
		Size: 1.6 KB (1639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dccc7619f71f1c78b2e244858358e01045f7dc08315495e432243f9daca37c8`  
		Last Modified: Wed, 12 Jun 2019 12:14:13 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hello-world:nanoserver` - windows version 10.0.17763.557; amd64

```console
$ docker pull hello-world@sha256:26cbbd7458900f0d0e7bf460a08ebcb79c185b4a6c7a2c5eb45ea688cd7140c2
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100448909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcad0f019fd8b8a90851a653ecf07e4a1a890f706237a12f4dd34730f72ff5b`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 07 Jun 2019 10:43:28 GMT
RUN Apply image 1809-amd64
# Wed, 12 Jun 2019 12:13:53 GMT
RUN cmd /S /C #(nop) COPY file:0afaffc2fa64462107b7178b2ae7d20404ff12f637eabe3a8046192b9d9a0338 in C: 
# Wed, 12 Jun 2019 12:13:54 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:4afaf8a8c3fabe3f23cf85c8e4ec49d95c842576e4f348302edb8b7fd64d6036`  
		Size: 100.4 MB (100446304 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c3ef6ef40a0347b719a3e37d5be455346d9d55ea637231c9bbf4af4e0bacb6cc`  
		Last Modified: Wed, 12 Jun 2019 12:14:22 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ba837a05497ab4cf95b3644e1876d74b721a34fa047716b168ad58763e3520`  
		Last Modified: Wed, 12 Jun 2019 12:14:22 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
