## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:0302f654ec6820824d92cd33a75e7f6ad59f875bdc5207fa1fb6be5a5db6e213
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:6c4743e68a4cb0c06a746d0bca1e4cca39907afc38236b09682e7977f7d6bc5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a9c139b35b8c3449bebfd71b3f493af8d2563f9893cac88a2287c28d8f2b3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:26:28 GMT
ADD file:5163482b7e1bd84981ddd31e96b6909dc030ab66fc6fe9f35882cdbe6eaba287 in / 
# Mon, 15 Oct 2018 23:26:28 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:26:37 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:bd7a7b0b72f4cd60a822a63b8700fb137ad3ec30a83eccba111b3a726c02efeb`  
		Last Modified: Mon, 15 Oct 2018 23:37:05 GMT  
		Size: 39.3 MB (39339774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15a975e6f7158e2fc9eab374389a10ca26a2d702710a21b0317a5236d45b44d`  
		Last Modified: Mon, 15 Oct 2018 23:37:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:a4350a87fb729c0858b65856ca1e366df99b9b02b47a2e40371f300a57321a3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37993799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af02dd7059aa155f36ee67d490e0e4a3b38e45838c4248baf2e911b8bb20442b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:57:09 GMT
ADD file:61853f14d9d4d56ef0e2310ac18fc7f6767ffe6dadb735b828ae69d950bdcdbc in / 
# Wed, 05 Sep 2018 08:57:09 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:57:20 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:bcbcf7840b6fa343c8f47838ff17667fd75c164d83025f6a65d6533dd4f1512c`  
		Last Modified: Wed, 05 Sep 2018 09:06:40 GMT  
		Size: 38.0 MB (37993571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae84cca8a092533a479c29bc6cf4d7117b2f2a0c22904543aa907e79ac73eb9`  
		Last Modified: Wed, 05 Sep 2018 09:07:06 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:98f26d20ae74d71727c5d264fe7b84b5374ccf015942f471a1e7e37c5b73f431
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7423d5ef343b9df93bcacb434580bc53d8342d44a601b8af5eedbf519c724859`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:06:21 GMT
ADD file:0f03b0fad93abdeea4254956f6ebee6e15d3c63c5b64bc6d973a664168700342 in / 
# Wed, 05 Sep 2018 12:06:22 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:06:33 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:282e383dda957a59e300c3642bf38cce411c9792f7ea952f837854e3effd85b2`  
		Last Modified: Wed, 05 Sep 2018 12:15:34 GMT  
		Size: 36.6 MB (36620285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1ad9c1107a6d7281d6610d4f3aa3b2a0bb740403c67b4b98b5260b543368db`  
		Last Modified: Wed, 05 Sep 2018 12:16:00 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; 386

```console
$ docker pull debian@sha256:f4c845f636db12ffa48d8cd1df52b0b196abcb3249f6354aee43c3c3fb42d460
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a49442b01660f1f6f471f06a2ad4acbec1fb3bbf2b572443ff72563a376f6a3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:45:49 GMT
ADD file:f270dc2a82d00313de1f792ee286405bcb5fa0e79dbfa44cf9cb0abc3c42221d in / 
# Wed, 05 Sep 2018 10:45:50 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:45:57 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ffdb7073d93a02815a69b2a5396cb5bb86c592de0ac9fa593b1c71b964d536cd`  
		Last Modified: Wed, 05 Sep 2018 10:54:06 GMT  
		Size: 40.5 MB (40532872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4767f7de9388e665c7898bb9a90ee628920330f2e0dca4bfb2bc9c319d16504e`  
		Last Modified: Wed, 05 Sep 2018 10:54:16 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
