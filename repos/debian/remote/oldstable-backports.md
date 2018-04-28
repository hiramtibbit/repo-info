## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:6af599b10d5d07a0398980f0b50d820ebb91c55f5f08e915bb01fe688654f02c
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
$ docker pull debian@sha256:ddbe2c60f1cd81b02827a97df73fcaf601f6d8ceaa7b9faf487ecda8e7d08637
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54262779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c61eda32fad5b630f8732b22f12d0e1b9b990f38bb3d1ff3d396bf482db4a1d`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:48:03 GMT
ADD file:83bd7eb3b198b7d0f4119e9baebb32e1948ababcfde6552424bb478ea5a6bb5a in / 
# Sat, 28 Apr 2018 06:48:04 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 06:48:28 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:0abc07726f0972e2019b666820eaaa376905507f116f702185cbfc9cf9ad81c3`  
		Last Modified: Sat, 28 Apr 2018 08:34:06 GMT  
		Size: 54.3 MB (54262552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397c03ab2620afe9b4dd4e7a23a091949709b1432d0fdca139421412fac9ce1b`  
		Last Modified: Sat, 28 Apr 2018 08:57:11 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:74ffdd049f9fa04e161879db34b94c284210d132556943cd0b6f36d946479c1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52456245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:699c2abd5a26782c58cf7117245430a2417ba404a198d5b598236a0a001d9389`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:50:54 GMT
ADD file:78a636a8a702e210557a5d892ab8d26e4c4f1edb2ebfea6f436ad50b62bd50ab in / 
# Sat, 28 Apr 2018 08:50:54 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:51:02 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4c870b2570a8f8d67ff9beda517183f6decb176f2a4f64af0f5de879f28c1772`  
		Last Modified: Sat, 28 Apr 2018 08:59:10 GMT  
		Size: 52.5 MB (52456020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90cd9d34e90f75595212e6f34955bf2f31bc2ab7813144878c5073c736a95ec`  
		Last Modified: Sat, 28 Apr 2018 08:59:23 GMT  
		Size: 225.0 B  
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
$ docker pull debian@sha256:40138a77ce1b4dfee36b829f0f67f7bfe075c41d130073658ba2f3ccfcd58e6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54487002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7c87166bbc15e3c0c37b0d82a331eae66ce8f394ec36abc427a259c0c3f6ec`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:40:22 GMT
ADD file:70f4ebf28b630b51448247b7b9cc25c0ba4d7803246f0531dee7ae1cf7649393 in / 
# Sat, 28 Apr 2018 10:40:23 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:40:28 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:1cd6ff73a4615a30f4d2b2c95df359eeec40e71515fdc4a40450550e633b9a83`  
		Last Modified: Sat, 28 Apr 2018 10:46:27 GMT  
		Size: 54.5 MB (54486777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5271f47cbcdb8dc7f676431da3ead4386c730a58da54d1f10e5e90b559cb6b06`  
		Last Modified: Sat, 28 Apr 2018 10:46:39 GMT  
		Size: 225.0 B  
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
