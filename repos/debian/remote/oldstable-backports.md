## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:b334378add9e660ae5aad2f62f0e417ad67c06ecbcd7dee59f29cf678031a032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:8f58bdcab27c6591d48411e7888cad48495fcbf713cbd0fa46b77f03bf0a77cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52608532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b871c9a6158a0709f41ec6d7f229f435b50c5e3475b331adc29fe09b637a8a6`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:52:26 GMT
ADD file:10354e6fb6be6f4edca0f17a87339e58070ec95f1a87c0d37dcc6c84b3000f39 in / 
# Thu, 15 Feb 2018 01:52:26 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 01:53:33 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4e8428ad7a56b442cbf0b19e227f4ee6db57440edeaab190bab7a6355e467adb`  
		Last Modified: Thu, 15 Feb 2018 02:21:29 GMT  
		Size: 52.6 MB (52608307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e028164af05ad09c2942e5caecf3e1719752a3320259e3c3b56ed802da7db5`  
		Last Modified: Thu, 15 Feb 2018 02:22:02 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:5a9f53de3bce8fb66a8e3000cd5889b513218ecf5a7fd8848b9ebc2f559e7e5a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50882740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a356630f3c31b878e371d3fd9b36d7f347566f39d29bb7ebab157d7df3e214`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 20:58:56 GMT
ADD file:199e68dd76f55d8f4d1e946d2f45f387e71dc971e8090887d12f849d55cf5f26 in / 
# Tue, 12 Dec 2017 20:58:57 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 20:59:11 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:5e3a280477166867ea7b5eef5d72dc752965eccd0d3ad2e864f82e0448748172`  
		Last Modified: Tue, 12 Dec 2017 21:09:06 GMT  
		Size: 50.9 MB (50882517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b1c9031d7cc391b2c72971c5643df05837f1217199a7b1bae9f48de7a6ae1e`  
		Last Modified: Tue, 12 Dec 2017 21:09:25 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:76862c1bdc7903962d8c60562c285353cd1c2003626710854961567c3cc5cf44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48701629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d7bd5f8854f2af0dfae508068ec22b34f10d8cf7877e8380a3d8d1c38eef641`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:28:18 GMT
ADD file:faa647f715d5c9986dac3f4a1204b66d158d2241156e9321998e0cbaf9fb0920 in / 
# Thu, 15 Feb 2018 13:28:18 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 13:28:30 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:7e8a68282b07fcf9d811107d4e49e25ab92215d7638104c5e6bbb852ccb25661`  
		Last Modified: Thu, 15 Feb 2018 13:38:10 GMT  
		Size: 48.7 MB (48701405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149d96b10bec015b5587f13496e27f7735924a96f2b98aa6b93db59beabee83b`  
		Last Modified: Thu, 15 Feb 2018 13:38:30 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:fb6217f7d4d23e960efc04c18d40ab68b18fd6f2183cddc0db7b408bd3f299b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49926892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbb3115125a6ab4354da76526993c842200c4ee10db64e7cc6f04dc9023f3be5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:50 GMT
ADD file:39286e425325266f72258d06b2c122ab40268ccf0a36f03d6592265c6a997bfa in / 
# Tue, 12 Dec 2017 18:26:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 18:27:15 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2dc0c42b48fb3ad8d630e2d841421e9e08ae5066d2ddf224d8ba47215f8ba699`  
		Last Modified: Tue, 12 Dec 2017 18:42:15 GMT  
		Size: 49.9 MB (49926664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b261a7838ddcd7f45c666b24e891bf87a6f2f745de5d6fcd45da1d9ff15726fb`  
		Last Modified: Tue, 12 Dec 2017 18:42:53 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:f406c20f345407fde782b3cdd461325a186bb712b7ca1b70b4fb4c7cc31809b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52777621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f04d0ee4027fb69738dd9d497fc4cdedcc2e6a803a721f2b8688cbaf81bf251d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:22:45 GMT
ADD file:5358e703c26f0635e76f7c66750b111044b345b1df531918f9abfd4b88891fe8 in / 
# Tue, 12 Dec 2017 14:22:45 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:23:56 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:3936686f65250ddadb5acdef935802b58bc6e411f7f4adcab5cb9bd9865f289c`  
		Last Modified: Tue, 12 Dec 2017 14:55:29 GMT  
		Size: 52.8 MB (52777397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc19a19f7f176cf5361f7024df27eed9cf3111648b327319c69dae4fea41288c`  
		Last Modified: Tue, 12 Dec 2017 14:57:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:99f31db1b1b657921cd937568f14d67acf7dfee0632576b85e17383eea21dede
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51817315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4058d6de86cd89e7b868d9c5598491e4766bb4d11a261daf42fd80c23187523e`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:34:37 GMT
ADD file:ce620289a05cd86343c463057ede90e7901ba231975a4297d1621ff6256a5687 in / 
# Thu, 15 Feb 2018 01:34:40 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 01:34:52 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a6f0a9b3ec0d2ef1cb8ab6aa8264252f10ddb3844b7c830f0bb890462632b0e7`  
		Last Modified: Thu, 15 Feb 2018 01:43:14 GMT  
		Size: 51.8 MB (51817087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7050b27490bec8ae5cfd4064a736af8d8d0c59ac887b68d0ce7bc807c1bdc1c`  
		Last Modified: Thu, 15 Feb 2018 01:43:30 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; s390x

```console
$ docker pull debian@sha256:c829b52e8f9c52c9835d703db830e5e39052a36458d0207406269956c8c25e5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52795088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2cd948fba387735885c154ad087eee80bfb22cd43e67cea357c4f809a9dbe07`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 06:23:00 GMT
ADD file:1f016ff64d2449ee1411701f2462125481fd795bc030cea59b7c11dc5fe038d8 in / 
# Thu, 15 Feb 2018 06:23:01 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:23:06 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:1e801272594ea0ffbbb5c13e3d2b0e9c6cd7e7e0f47f41189a996cfa7c0a26ca`  
		Last Modified: Thu, 15 Feb 2018 06:27:03 GMT  
		Size: 52.8 MB (52794862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caec5a345b87e41c7865e61b1d519e10ec50fb430bae7d9941c7370efc914b1e`  
		Last Modified: Thu, 15 Feb 2018 06:27:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
