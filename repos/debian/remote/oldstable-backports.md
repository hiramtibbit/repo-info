## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:c57a7d6880ed5f620b85790bb31580d7b7ee411b0cba3d72fd14ca4817cab76b
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
$ docker pull debian@sha256:88846e2930af929f56f610dd89670982ba20d3ea6fa95b810650ff3da98f8fb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52608758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dde5d47fa12f46e88ad8892e34dee4e0134d76c8427bc673ff4c17c79a1e516`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:00:10 GMT
ADD file:c72f22cc053a28fe16fcdd72b4f47230b434f4497f369978bd2a1e160555eda1 in / 
# Tue, 13 Mar 2018 22:00:11 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 22:09:58 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:04ed00fe9664a9f0b53537d8b341ae47b8eed91a2053eccbb95659d0850c962d`  
		Last Modified: Tue, 13 Mar 2018 22:48:01 GMT  
		Size: 52.6 MB (52608534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47537fdacd41cd4b69f95c913ef87be2c08870265754ae507e605ac907d66227`  
		Last Modified: Tue, 13 Mar 2018 22:48:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:9da3395118c2eaa62ce8533ec8046321402b7069f244eba8e645d42931ae6d62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50890240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b605b97393bbf5c0e2cb57cc09f6a54d955af6f458934a1a654f397e761b586`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 19:57:48 GMT
ADD file:aef3ac174cc4b5973dba6202230903ee093d047443a04ebf8fb7c7225f3cb7ff in / 
# Wed, 14 Mar 2018 19:57:48 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:58:01 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:940df99e6de3c73b39ab79e096738abe85e334707ea5f39bf3079e5c6c9061a8`  
		Last Modified: Wed, 14 Mar 2018 20:09:18 GMT  
		Size: 50.9 MB (50890016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701a7a83919bc6905bc2d4ed36976f3783c38ac16976088f01b718a42754f6ca`  
		Last Modified: Wed, 14 Mar 2018 20:09:37 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:08c6ff91902a28919da7e053a15bf067d921da095f234cf96bc0a50a205f4948
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48702307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4864a1767f8e616aa832971c21cc84d670582997d961a5c49eab93ab838d365b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:29:12 GMT
ADD file:6fdb7e69ad14653696a99713d9ca8ef82c74c419f4580fd9f1a159b350f6ff9b in / 
# Wed, 14 Mar 2018 12:29:12 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 12:29:28 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:3286d207b14d85959c41f2fbda59b721d054bc0916876d8c2800107ce8329dd2`  
		Last Modified: Wed, 14 Mar 2018 12:41:06 GMT  
		Size: 48.7 MB (48702083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f955cb229bcad07fc474c6d9a85fa130b28a0bf37e86f81fd08d6e6b9b0b196d`  
		Last Modified: Wed, 14 Mar 2018 12:41:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:29516646d1a845f70d15b9743c3a35aadf12eab215630736d0303db53d6cec40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49933667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dff21b2ea48159fc6e341339113338d33d4a6b8533bd9e65afa2b13581c82cd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:26:08 GMT
ADD file:3837f4c1714b48e782c6900a149d6f25d4106fc98e874e3176795382db7b6d92 in / 
# Wed, 14 Mar 2018 17:26:09 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:26:30 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:6a9c011eb68333d1aa59c807f6b92e4c6371a28087107a2f689286cebef774cb`  
		Last Modified: Wed, 14 Mar 2018 17:40:45 GMT  
		Size: 49.9 MB (49933442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c506f75d394fbd7d8703568d9110b6b42977f2d5b8ec6af852f1c6e19a98bc`  
		Last Modified: Wed, 14 Mar 2018 17:41:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:6c761e02b8301159c86b9e4325b1d11446e82c1ae39dc388c6f1e3224a4deff7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52787837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18c9077880fa7cb7824dcebd55e75b72096a8a8f1df9d0b20666bae5838f4b3d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 14:52:00 GMT
ADD file:cbbc1bede330e9c051729b556fe725e70694308e4ae2379c9adae06300f84c78 in / 
# Tue, 27 Mar 2018 14:52:01 GMT
CMD ["bash"]
# Tue, 27 Mar 2018 14:56:59 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:74baf960a8ac19937efb26706a2ebd179686ec7c061914ff1eb83d6649b0b1df`  
		Last Modified: Tue, 27 Mar 2018 17:41:20 GMT  
		Size: 52.8 MB (52787611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865d0c09f034d85927b35da701ee335314d278610bfee836b4be877c81a89e35`  
		Last Modified: Tue, 27 Mar 2018 17:54:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:03ffa37d1be52a8bfa415a3270916b87b9c8c7f9319185a0d7f75943122c8d76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.4 MB (53393049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb38cf482877ffcecabd24e5bf8d9a09fce613f3372d1a79e0e4c56880b9c7ce`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:28 GMT
ADD file:a86d5e08aa2a53056ff9f7bccc8d2d52248513b0488bef5b449b1dacb286a492 in / 
# Sat, 28 Apr 2018 08:18:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:18:40 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:481b29418baa4938db00537f2383a7ccb7a91d3bf4d8a909c54cd7df9118f0a1`  
		Last Modified: Sat, 28 Apr 2018 08:26:32 GMT  
		Size: 53.4 MB (53392821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c25e5394aa9c42cb0b6a8d0c99a514bd5e4a217365d36b08e5a14e97225618`  
		Last Modified: Sat, 28 Apr 2018 08:26:48 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; s390x

```console
$ docker pull debian@sha256:8cbb3c0782aa44b3bf2f27e386a0b01f2cba125c3af6b71bb44f39c0c86f0200
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52795712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49942d4547ea7adf2d00616b7efc8c313ac94a798b8c8ece7051e2ad926adcef`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:22:25 GMT
ADD file:bd17bd89f0be158619e4116edda499ededcac719f01c261da332618ed1a6f176 in / 
# Wed, 14 Mar 2018 05:22:26 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:33 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d612b236ba8d1db72bd74a5b2d2f934452a9e9495b037e15cf68fd8e2eb9152b`  
		Last Modified: Wed, 14 Mar 2018 05:27:00 GMT  
		Size: 52.8 MB (52795486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d655b9db463be0b061bf2e4d8a93c525046f7b93f7080433849cdf3c13aadd5d`  
		Last Modified: Wed, 14 Mar 2018 05:27:09 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
