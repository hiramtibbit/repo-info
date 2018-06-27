## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:f2c5fb6665114b9c8ff51697c99dea7b43ed470f72951049594bf6ed113d0fe8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldoldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:a2c6a3d770b0bd945c4cdf514a342779d28a22424d0434c991ae2c3d325b9de2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9512c18199abec984429f6be44fabc8c908599cb8bfb95c31b5aa38448189e6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:39 GMT
ADD file:41d59cf24b9c37a32a2de1ba2f13fb4b3f3528b3db8a514005fd06a7fe38c4cb in / 
# Tue, 26 Jun 2018 21:21:40 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 21:21:50 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:73501dfe3ba71efd269c5ea1616bf75fd01773b4557efeaa0f22864b0602b490`  
		Last Modified: Tue, 26 Jun 2018 21:31:43 GMT  
		Size: 39.3 MB (39339658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f501bbdf3415b865118b17b40454a6d5233cb1709abeafd627a880cd3f142d`  
		Last Modified: Tue, 26 Jun 2018 21:32:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:d30cd886ac50720c003df4e449cb0d51336df030206dbd87573406754dee8c51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37993756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e678a121019ed974598bfa1c385bde6b1280747753afc760cee93a37f6c0666`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:50:22 GMT
ADD file:0647e21d33d97d15d0b13a5572db937cdfeb219068486152b65cb94318712b4f in / 
# Wed, 27 Jun 2018 08:50:26 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:50:35 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c4b30e4c6950a81c830f26126d1c37a1b7e988e9062452e5717863c0e7652f31`  
		Last Modified: Wed, 27 Jun 2018 08:59:23 GMT  
		Size: 38.0 MB (37993527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a774d4a3c8eb7218e5e8dd2d7b28ff4bbeced55409ba58ec7ce5544d1cae5cf`  
		Last Modified: Wed, 27 Jun 2018 08:59:36 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:12ecd5a28407bf7da1ad506c6b20db2034586c7c76a6c752e30635616b827447
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c648adb00876e7ff6c0715fc22caee1d188be11534c6e496eefc450eed505a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:00:04 GMT
ADD file:c5a3bad6812601b09fbcceaee8fc59cda6962feaa12836f7323d183f4ae5e321 in / 
# Sat, 28 Apr 2018 12:00:04 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:00:20 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:bd64eef8443574881719face058120079b6712c567ce0bb30a35097198b0a2f3`  
		Last Modified: Sat, 28 Apr 2018 12:11:56 GMT  
		Size: 36.6 MB (36620132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1cb50c4afc9c5b3d6b64592fe21952c6d5a8bfa998b7aca85dc3aeaf5cc90fd`  
		Last Modified: Sat, 28 Apr 2018 12:12:12 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:391d347a613885db57cc55a85097ea41ff3e79da643597933100a572aa6d1300
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b6e3068217bc90c3908c648110c3518fd3cbc297588459723ae11dce2b30003`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:41:24 GMT
ADD file:00209c2f5e9cb95796861aae2e4e56552fd7d85fa853326e6784770157b2ef3f in / 
# Wed, 27 Jun 2018 10:41:26 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:41:42 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e353278dd25abd22747351ec927892987cd99ea992084b81c26a4663707f1f34`  
		Last Modified: Wed, 27 Jun 2018 11:05:39 GMT  
		Size: 40.5 MB (40532844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634c8ff42e78ed43c58ba667d43152b6aef33ee80aa0c6760c8c53f60fbe5ee5`  
		Last Modified: Wed, 27 Jun 2018 11:06:02 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
