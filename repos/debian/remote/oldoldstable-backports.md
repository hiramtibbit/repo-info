## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:3d73bbd3730b547611e2d423cb55ecbe8750d399f9e25493e2be25c86ca453cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldoldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:77a5efe49901ce98ea8f052f71dd2e8003c26edf9e996148e292d7dfdb59ccc6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14dd27cae8b1a951866dbd0b299125ea04beae7b757ad841441f05f4f984c0f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:22:12 GMT
ADD file:f62997cab09d220952bcd36db7649898d96679536f1b55c4123c104b7e0bc261 in / 
# Tue, 17 Jul 2018 00:22:13 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:22:29 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:57dffa0239bf0ff8ea8603b8fd80f1fc0f340e1000cfab5314035bbe8d9efdb8`  
		Last Modified: Tue, 17 Jul 2018 00:36:37 GMT  
		Size: 39.3 MB (39339291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053eaf7dd6e417f1b220fb7af8c52b4dd7ff69b3853e9670527b332d7e76a78c`  
		Last Modified: Tue, 17 Jul 2018 00:37:11 GMT  
		Size: 228.0 B  
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
