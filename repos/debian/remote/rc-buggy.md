## `debian:rc-buggy`

```console
$ docker pull debian@sha256:142350a936efe3a65f03cc529d35c19cd9333529084590468a25b841465cd30f
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

### `debian:rc-buggy` - linux; amd64

```console
$ docker pull debian@sha256:c2ce8dbd1036ab785d886770ada203085357fd22fd052f284d42795d1f9a138d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50122175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42a10545ac726f83e8c62177629de3adb8ca7f1e84313cd898fd167c9c1994c8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:27:44 GMT
ADD file:10ceb3ed065b964c9332532874322c1278da8bda0c7caa7ea790da93e84d49e7 in / 
# Tue, 22 Jan 2019 19:27:44 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 19:33:35 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f695fc1eb490900cdc6224504e9f758820a8d68fb1e4512ed93d354848277d3d`  
		Last Modified: Tue, 22 Jan 2019 19:36:00 GMT  
		Size: 50.1 MB (50121951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd75ac083debe3af6328d62560cff3124cb1d8bb7ff51ac39212b4b6a91cb1aa`  
		Last Modified: Tue, 22 Jan 2019 19:38:30 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm variant v5

```console
$ docker pull debian@sha256:b648e9010a551551158d3c597a63ea05d18bd2bfb59eccf176fe620c6d064daf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47834779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55fb0702e564eba32bff6f41fc4204b7e45e4d6609bf8891771d0c43c5f21add`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:52:49 GMT
ADD file:3cf7a3febf73a64743197e788ae0c4cbac2910591e7309af2b64c6711b5a11ab in / 
# Wed, 23 Jan 2019 09:52:50 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 09:57:37 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:3b276ad85512834c81c9b2f95f5b5ea289977d77c9c5631f51025db927c73b71`  
		Last Modified: Wed, 23 Jan 2019 10:00:59 GMT  
		Size: 47.8 MB (47834554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:082577d36f4cdda5a52497887bd413359f87d6e772be28ec2919dc81abea00a5`  
		Last Modified: Wed, 23 Jan 2019 10:04:11 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm variant v7

```console
$ docker pull debian@sha256:8d24bc803fba5c90605cf4e57b4497cfa8f1648d278dc0f7c2a138d665022b9f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45260545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc1dd91daf9be758e63f2182651ac10b384244f6ad474735ff679d12fdf560f`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:02:31 GMT
ADD file:4410480801a6ff66a1068c94456f31359fa9346cc412479929df3ce6cb93e7fb in / 
# Sat, 29 Dec 2018 13:02:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:08:11 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:a17a606f0d1dbe6a3c0c748e0a1e8f502af3849e9263c3d661120fbd26dc6028`  
		Last Modified: Sat, 29 Dec 2018 13:11:20 GMT  
		Size: 45.3 MB (45260316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eae6ea03150a2b78e18581cbeefe68e800b675f8ce0b4bf871099ee78f1f499`  
		Last Modified: Sat, 29 Dec 2018 13:14:17 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:2ce54de77a534f85a660967918abbcc8aa166252fe92b6537123a1f33b4df5ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48871029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3094ef20d6dc2eb7979cdd00a35badf0c26bb38644f76c3b4feef2c5e0f4585f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:01:05 GMT
ADD file:ff590bd97c318e1b971e94b526f1fff0d759f771c34aa9eea5f043b4cfbf29d7 in / 
# Wed, 23 Jan 2019 10:01:08 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:08:05 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:2c920e2af67ba7b08381e9d4a3fec2e3f6e4f4779f5a6e0e9c8b577c937ba2db`  
		Last Modified: Wed, 23 Jan 2019 10:09:39 GMT  
		Size: 48.9 MB (48870802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:715fdcd452e9f83807dc48aa15fca98120deb2cd24b8ee528ba1226231ddd0a4`  
		Last Modified: Wed, 23 Jan 2019 10:13:18 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; 386

```console
$ docker pull debian@sha256:a849d2d111fe45949174d6b2c2fbc002d6b0c510bf4c13bbcfc310c2221f27e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.6 MB (50553700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf1452f2e2758ec20734b5de34b5541e5ca0b17f9b5800715d4f5066d0b75c89`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:49:49 GMT
ADD file:b879bf0d08d1273e509a19b6ef7111b0ed2dcb1de16a7715dae55f362d2b5efe in / 
# Sat, 29 Dec 2018 11:49:49 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:03:50 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:6d9293f359b656b26182f0ec7ff44edb5301074fb77a7fb5baa27ff469b778ce`  
		Last Modified: Sat, 29 Dec 2018 12:08:46 GMT  
		Size: 50.6 MB (50553475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9195655e7f26a8bd4c42ae11d5542d66d5bad5367074f67d42a467de182ffed`  
		Last Modified: Sat, 29 Dec 2018 12:12:45 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; ppc64le

```console
$ docker pull debian@sha256:d6fd6a53db0c660a4de18cf0822b74eb6fd8a49da51ddce77fc0490479c3eb35
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.8 MB (53810048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae63dce64d07f761fd0e7447f61f6fab965d89229a63252331c6d18c404fcf2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:25:21 GMT
ADD file:c381862d77eba21c30de94ac29d9a3662382b745f356c741e2c6aa911117567b in / 
# Wed, 23 Jan 2019 09:25:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 09:29:12 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:16c9a23335b4b9488f472a518d41a12e801a47bfaa70248bc6ae0dbf20e9c9ad`  
		Last Modified: Wed, 23 Jan 2019 09:31:00 GMT  
		Size: 53.8 MB (53809819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8ff16d4f18a1c0a572a8759f460210a4708650ce7be459d8151340521d42d3`  
		Last Modified: Wed, 23 Jan 2019 09:36:20 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; s390x

```console
$ docker pull debian@sha256:b5bfc63a0d4f3adadd85807d890b6e4245acb183ee29828e79e513b217a199da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48371378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b6407b452a13cc8fc4cebb48fb3749141eeb98b6c34cd72064f4a84855ffea6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:42:41 GMT
ADD file:ea74ad702ee4e4806ae6232378b3387a7e1a47d808be83db391a7d5266cc3450 in / 
# Sat, 29 Dec 2018 12:42:41 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:45:00 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:3b95e9248260917e0fbc6d296dfa921cc71782d00d267186d0ba00d2acaeb0d9`  
		Last Modified: Sat, 29 Dec 2018 12:45:53 GMT  
		Size: 48.4 MB (48371149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5f34d2a26d607dc0ddc42b27df4f4c488681a0c6c5cc3a14a8b282615d3265`  
		Last Modified: Sat, 29 Dec 2018 12:47:44 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
