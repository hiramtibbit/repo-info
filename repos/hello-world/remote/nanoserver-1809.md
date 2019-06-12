## `hello-world:nanoserver-1809`

```console
$ docker pull hello-world@sha256:ddf027c57ed6c1d3087733e16890bf314cc8ed923a65e558fc79393f6b6ec350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `hello-world:nanoserver-1809` - windows version 10.0.17763.557; amd64

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
		Last Modified: Tue, 11 Jun 2019 18:44:48 GMT  
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
