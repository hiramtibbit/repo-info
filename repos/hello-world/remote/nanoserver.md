## `hello-world:nanoserver`

```console
$ docker pull hello-world@sha256:347e0c5e55751d2ee2470f1a57463c26e81515583838286b67ae7d140d0480da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64
	-	windows version 10.0.17763.504; amd64

### `hello-world:nanoserver` - windows version 10.0.17134.766; amd64

```console
$ docker pull hello-world@sha256:dab3932ee58dae08b87ee10ac43cb4720bc79ebfeb6dd574c4ea8f038bd2801e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149394530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d4c3b2cf1784d4560f6d2853fa565f76f490f59eb94ee088a0bd592e93e5a77`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:43:10 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 12:14:30 GMT
RUN cmd /S /C #(nop) COPY file:7b1666bf57eab9af43a34ac3bff0f0d60d153096912881d488e2dd82ff129a57 in C: 
# Wed, 22 May 2019 12:14:31 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:e46172273a4e4384e1eec7fb01091c828a256ea0f87b30f61381fba9bc511371`  
		Last Modified: Mon, 17 Sep 2018 20:23:30 GMT  
		Size: 92.8 MB (92818888 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3d65648a54d83dbe2c837a70c7d65673aa8e1a354e4fce74a997b5345b754d43`  
		Last Modified: Sun, 19 May 2019 18:54:13 GMT  
		Size: 56.6 MB (56573043 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:aee656205468e9d7725cb5e9638b8daf03bcb191dcfcc280b1f1447f93ca21ef`  
		Last Modified: Wed, 22 May 2019 12:14:55 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9475349f525ff8b6f4dc8d2c208ce3257058c1ba1313d14726672c8477f12fa6`  
		Last Modified: Wed, 22 May 2019 12:14:54 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hello-world:nanoserver` - windows version 10.0.17763.504; amd64

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
