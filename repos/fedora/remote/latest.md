## `fedora:latest`

```console
$ docker pull fedora@sha256:1e57463a7abc6d6e44024f4dd1a5eb62a62ba9dd6427c124b40577a2f56a03b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `fedora:latest` - linux; amd64

```console
$ docker pull fedora@sha256:352f9dc4edf5ef4c56fcc334fa68d225f617cfc994a4fa7ae9f03366aa6d1a99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89867780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26ffec5b4a8ad65083424903b7aa175953329413fe5cc4c0dac6fedbe81f2fbb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Jan 2019 21:21:55 GMT
LABEL maintainer=Clement Verna <cverna@fedoraproject.org>
# Wed, 16 Jan 2019 21:24:29 GMT
ENV DISTTAG=f29container FGC=f29 FBR=f29
# Wed, 16 Jan 2019 21:24:39 GMT
ADD file:64073625e1c5360b0087c5036fbd5b47a569db773c3fc2b172df69a50c5d7ce9 in / 
# Wed, 16 Jan 2019 21:24:39 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0be2a68855d7bbbba01b447a79c873f137e6fb47362e79f2fd79c72575c9b73a`  
		Last Modified: Wed, 16 Jan 2019 21:25:42 GMT  
		Size: 89.9 MB (89867780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fedora:latest` - linux; arm variant v7

```console
$ docker pull fedora@sha256:7cc75f3349c5fd86790850fccd3a503c9146433fbb2732a3fbba4a4c63b60066
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84518053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba6a0534a86eaefebd048c1ed9d99af5cd21093873b2831698698ca2eb67f8b3`

```dockerfile
# Wed, 27 Sep 2017 04:18:33 GMT
MAINTAINER [Adam Miller <maxamillion@fedoraproject.org>] [Patrick Uiterwijk <patrick@puiterwijk.org>]
# Tue, 18 Dec 2018 12:59:59 GMT
ENV DISTTAG=f29container FGC=f29 FBR=f29
# Thu, 10 Jan 2019 12:59:28 GMT
ADD file:06b3ee3612f2cca49698cb7eaa4ffa4f11a39ff4b2d102e7795c462a3a669133 in / 
```

-	Layers:
	-	`sha256:8bbf33325e5bb84314d4b235921f354ac28aae2d12c4699d742af2358272a9e0`  
		Last Modified: Thu, 10 Jan 2019 13:00:12 GMT  
		Size: 84.5 MB (84518053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fedora:latest` - linux; arm64 variant v8

```console
$ docker pull fedora@sha256:1f5208e0de03b210bc003a3ae24c0b7678f16a4b0aaa069c7b24f877be62f17e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88850541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b38e3af72374ce4472013699bb4ba8a49123b22cf29ecc10054b5f08418d9ac`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Jan 2019 09:42:52 GMT
LABEL maintainer=Clement Verna <cverna@fedoraproject.org>
# Thu, 17 Jan 2019 09:44:47 GMT
ENV DISTTAG=f29container FGC=f29 FBR=f29
# Thu, 17 Jan 2019 09:45:07 GMT
ADD file:d4638b4d92c8dd2e313d462618d9b9321d3c2074137c0d8314ee0cd43f9f426d in / 
# Thu, 17 Jan 2019 09:45:08 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c4c54f236fdaadeeb217fea5b44fb2a49adc38c1b83f0df1533270a2d1a909f5`  
		Last Modified: Thu, 17 Jan 2019 09:46:52 GMT  
		Size: 88.9 MB (88850541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fedora:latest` - linux; ppc64le

```console
$ docker pull fedora@sha256:99b8e62eb09c065764f516a525759c3620dbefe3469e19b432e53e3fd274b6a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95800107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8eaa988fb2dfb96d777533984925d7562dd9fb97d4122e32aa48cdc9e0e1226`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Jan 2019 09:23:17 GMT
LABEL maintainer=Clement Verna <cverna@fedoraproject.org>
# Thu, 17 Jan 2019 09:23:49 GMT
ENV DISTTAG=f29container FGC=f29 FBR=f29
# Thu, 17 Jan 2019 09:24:04 GMT
ADD file:93300e559f0dce250f0e6ae344c5cf97f60425b7b7e22a635749f9c5380271c2 in / 
# Thu, 17 Jan 2019 09:24:09 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9af0162f423cecf479d5b43a587ce01df18930dd4def88b96aef3f231c9e2217`  
		Last Modified: Thu, 17 Jan 2019 09:25:16 GMT  
		Size: 95.8 MB (95800107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fedora:latest` - linux; s390x

```console
$ docker pull fedora@sha256:31bbc42c9282536040493247dcb3b76fd0c21d4e7ce79a7245ce2d27774bb8b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87778231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aae28221aa654eb5b1ac7ab6c2eb65627fbdccae8f313a3a9a070ebcc3beaa90`

```dockerfile
# Wed, 07 Nov 2018 12:42:01 GMT
MAINTAINER [Adam Miller <maxamillion@fedoraproject.org>] [Patrick Uiterwijk <patrick@puiterwijk.org>]
# Wed, 07 Nov 2018 12:42:22 GMT
ENV DISTTAG=f29container FGC=f29 FBR=f29
# Thu, 10 Jan 2019 12:46:38 GMT
ADD file:ee8e102989d74d0fcafa5722c1bb2697ef619227a245fb7e27fd362ea818aa7c in / 
```

-	Layers:
	-	`sha256:c70fa852a3d636c1e5c0ee64af96a3058b2a71465475f5b7227a3eef898c1e0a`  
		Last Modified: Thu, 10 Jan 2019 12:47:11 GMT  
		Size: 87.8 MB (87778231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
