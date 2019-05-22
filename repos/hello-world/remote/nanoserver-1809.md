## `hello-world:nanoserver-1809`

```console
$ docker pull hello-world@sha256:9590a279d3efcea67f4c4753f9b5899b88cb6c40111621b177a53d6f4ef16ce5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.504; amd64

### `hello-world:nanoserver-1809` - windows version 10.0.17763.504; amd64

```console
$ docker pull hello-world@sha256:5d19e25c286ae10aa7acfe8ceff01725f5c6fb66d83a3e2dc7d2110d0659b08d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100564296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1328f0714794cda6011b3c00490425384fca94142c451f3b37f0a6a4988cccc`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Fri, 17 May 2019 11:37:51 GMT
RUN Apply image 1809-amd64
# Wed, 22 May 2019 12:14:37 GMT
RUN cmd /S /C #(nop) COPY file:0afaffc2fa64462107b7178b2ae7d20404ff12f637eabe3a8046192b9d9a0338 in C: 
# Wed, 22 May 2019 12:14:38 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:b22999bfb02f58953159d958c4df0d13bc7723b89b727eb020c785dc24a5baec`  
		Last Modified: Sun, 19 May 2019 19:10:07 GMT  
		Size: 100.6 MB (100561668 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c8353a1aacae12ad02f1b94cfde252859ca1c6559332e7639c23d21bfc901cc8`  
		Last Modified: Wed, 22 May 2019 12:15:03 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c51178a6c10238442705a106b83c0d4077059e3ece7d95c47623ae4c999711a`  
		Last Modified: Wed, 22 May 2019 12:15:03 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
