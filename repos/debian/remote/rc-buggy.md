## `debian:rc-buggy`

```console
$ docker pull debian@sha256:4d2175370ed24a0f8bc88b7557c8bc7d2e23ed232c7696886a2c4ba2c66a1fbe
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
$ docker pull debian@sha256:a4af7abd3796f60189dae1325f8f661b5a34b4211a55cc0c969803b2e485768c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50076600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d17f78d66a7031ce20bac1025b4c72bda9487e92e31057150e7d37dcb994038`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:28:59 GMT
ADD file:9c6a8e35fb0a355b15c531885f92b45f2a8f4a102a8fdb351280826b1dc8a455 in / 
# Wed, 06 Feb 2019 03:28:59 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:31:56 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:7c225361587bd702b61e38248f9c9566e1150260cbc201bb504e523904acde83`  
		Last Modified: Wed, 06 Feb 2019 03:34:53 GMT  
		Size: 50.1 MB (50076371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:673bd384e4a6d9a49be771e0ea1c89a06ca7ae9e58072d940135852c660e12ae`  
		Last Modified: Wed, 06 Feb 2019 03:37:16 GMT  
		Size: 229.0 B  
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
$ docker pull debian@sha256:d29c1ada1a0e087ea0379014a8c442f3beeb2437efe793b3d121116c9c78dc59
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45626288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:effa75f7d89b149dc06e80ea007e10028f4cef3a7e06be84fa8b3b6e2b73e952`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:02:34 GMT
ADD file:547d53792a57ce6ff63351b170c574a64a1f3879da9da1d784f1bc3ce581c4d6 in / 
# Wed, 23 Jan 2019 13:02:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:07:53 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:288ce18ba4ebcc42443c496b55fcdfac3c2e3adca52487bd34a8f33e12ea6b63`  
		Last Modified: Wed, 23 Jan 2019 13:11:04 GMT  
		Size: 45.6 MB (45626061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4a85bb38096cc751b3571ce3afef8cb36c4f2dc38ae43f506a4277609c22c5`  
		Last Modified: Wed, 23 Jan 2019 13:14:12 GMT  
		Size: 227.0 B  
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
$ docker pull debian@sha256:0c21d13e18215c19864bd364b4bf1330e13ce939a8df9c85184e06c2e771ca5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50870857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c403a0baadd3e4b9892c72b550ec7a9abddfe1f9a7f98e3b6e2bfbf1e0374c8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:48:01 GMT
ADD file:60156a4ab549dbfbe647fe6d75c15be3d59c7f78e100b23d7fece33f9987a4a4 in / 
# Wed, 23 Jan 2019 11:48:02 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:57:46 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:a8187159bf7265f13ac93029826bfe83d3a39efa74759af602cccd661f6c58cd`  
		Last Modified: Wed, 23 Jan 2019 12:01:14 GMT  
		Size: 50.9 MB (50870631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32979fcd6fea21473317d03c25e13ca6e9a4013fdb8677035a74f1c00468db`  
		Last Modified: Wed, 23 Jan 2019 12:04:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; ppc64le

```console
$ docker pull debian@sha256:5d716849bd8181fab6a17d9a7295dffffa235f7c9648f3f6c3c6b2580f5277de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.8 MB (53768862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a12d22fc2feb7d7e65ccaed641a82b5ae804f8ab52bef91996fa4bbb8d90dde`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:25:27 GMT
ADD file:a2cf5ae39385f7b927131248a493d2e950537da2b4a33c9a1623275b4c1f37cb in / 
# Wed, 06 Feb 2019 09:25:29 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:28:08 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:7ca445fe7afd63ed9c58b670083df50dbc0ebbb9cb6206ca9bbdafb0f88349e3`  
		Last Modified: Wed, 06 Feb 2019 09:29:35 GMT  
		Size: 53.8 MB (53768634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818e2fac9fc526fe2c0f9773b37e1e67e3a0d834be49050c1a7126d6f62afa88`  
		Last Modified: Wed, 06 Feb 2019 09:33:11 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; s390x

```console
$ docker pull debian@sha256:4933b9951265ab8e9ea0090f26ded0a47333a57ea987682cbd8548bc0f20c231
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48689520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e538221de12bd134669e7f1222c1bfae8e805e38c3bde2daf08cc18ae69e0b86`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:42:37 GMT
ADD file:e5871bf8cff4f81c448ae9511dbbc13d61c082611aaf1b4ed8fd3d39599d50e3 in / 
# Wed, 23 Jan 2019 12:42:38 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:46:12 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:fffe3a591fe99af7dbd591007a2b6abac8ccd06112b230fccf7a91aa94a56b57`  
		Last Modified: Wed, 23 Jan 2019 12:47:44 GMT  
		Size: 48.7 MB (48689293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fbed72981c4f97a32b191e823447cd8519fde9b106cbba85e89ab9c5deab64`  
		Last Modified: Wed, 23 Jan 2019 12:50:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
