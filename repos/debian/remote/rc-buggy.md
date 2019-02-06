## `debian:rc-buggy`

```console
$ docker pull debian@sha256:4e5ece7315a31ceee4f30b7416fc18f0eefcdf759caba8b0930b4e546c1e5305
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
$ docker pull debian@sha256:0dd142f8041eece9d548e220f3a6f33428fb81c0dc1af50da63b7aadebf98c98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47788299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:771a31076e5242bfc680015215646777b3b94c8623fba3fd6e7e779405ee46d7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:53:24 GMT
ADD file:4e593f3c63d03786f440188acbbea550ce86062209c46e20f63d24ce79b28a98 in / 
# Wed, 06 Feb 2019 09:53:26 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:58:51 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:5d98b845510e824de79b82c74edace1d0080fa051241864343f26d41e5a67343`  
		Last Modified: Wed, 06 Feb 2019 10:02:21 GMT  
		Size: 47.8 MB (47788070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485e0b790c726556f762500db7109007d48221734cd3f28734206063397f5033`  
		Last Modified: Wed, 06 Feb 2019 10:06:01 GMT  
		Size: 229.0 B  
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
$ docker pull debian@sha256:53a241128104ac89ddcd73a8a1e3bbdc2e60f995c1b737192453778167b7a3af
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48820926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d37ce108583e560be873e69f6b10b6651ba28f93de732ce5b6a1802a45e7cc9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:07:17 GMT
ADD file:7b42d90311ba4721000b061ce5688b7617c00f357746b95a1001654a8305cf2e in / 
# Wed, 06 Feb 2019 10:07:20 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:11:10 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f20511bfb9032422f9398607efa0d22ecc98b39ed90a1905a9bdf23e4a9fac4d`  
		Last Modified: Wed, 06 Feb 2019 10:13:03 GMT  
		Size: 48.8 MB (48820697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c2f9bee10cb34fb7a2026ddf0a01f7ed400411b2d6192297dae510cb3c07e5`  
		Last Modified: Wed, 06 Feb 2019 10:16:47 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; 386

```console
$ docker pull debian@sha256:c48f8f2e869453ee6ca3857fce23877585818d294d534d7933d88a8fc4e1747d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50830160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec71d047b5c56785beb5a90c803c56f06b61e21c416ace1905bd90bfe4c0d9a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:00:13 GMT
ADD file:ce7c45fff0d74bfe603a7138b818751de070b078ca0721b047e8567c30f61cf0 in / 
# Wed, 06 Feb 2019 12:00:13 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:02:47 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:7f5d83ecefd7c06c9ad1f3c8e31a16ca0808dd67c4c337ffd67e9a10a97d7675`  
		Last Modified: Wed, 06 Feb 2019 12:06:14 GMT  
		Size: 50.8 MB (50829933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8823c4b6538fcdf949923b7593dab0cfa6c91d5508722992a6c399ea40ead61`  
		Last Modified: Wed, 06 Feb 2019 12:09:49 GMT  
		Size: 227.0 B  
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
