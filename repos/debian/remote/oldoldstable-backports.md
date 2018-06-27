## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:d316c697a1f9e992a410be04588dcea5bb5e18825d77ee2738d2208429345f31
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
$ docker pull debian@sha256:7ab527f95d4934176e1ec7edc273773bb74bb24e29408b7e06a7900933ab31b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82977329c2419202d2d2e5a8a6ed599c200d6588d11f93eac62483c33c810de2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:47 GMT
ADD file:47b98435a13b6a9c0bcfdda0a3ce8cebec4bf81fa767ccca868ae736ca4e41fc in / 
# Wed, 27 Jun 2018 11:59:48 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:59:56 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:3928f5a86fb87fbea5609e97004ada93e620f5282b98ed2bdac35788c52dabf8`  
		Last Modified: Wed, 27 Jun 2018 12:09:31 GMT  
		Size: 36.6 MB (36620251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811c8a13b8547fc02c0163ab7fa307aa0c40d03b95e1ba441c40e7fc9a1b027d`  
		Last Modified: Wed, 27 Jun 2018 12:09:49 GMT  
		Size: 228.0 B  
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
