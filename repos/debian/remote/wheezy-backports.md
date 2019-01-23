## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:0b8caab8092ae0eb07fcdc38e2e5c75552696bb66dceb7f8d3d72b1eddb7c3de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:531ea1c48609931c1434eb782af62b5683232b96eaad00b5188ad8d1ebad3837
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39340124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2ddad93dbbfc8650e8150baf3281361a974841fbdf994095a16e02cb48330c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:32:58 GMT
ADD file:ec03145d2cf8c637e8733ce03701058ddfe1076a93bef99b70b01962b089cdd0 in / 
# Tue, 22 Jan 2019 19:32:58 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 19:33:01 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8f07b832660bdbddf1cb2b72bf063629d3fe541abfe3fb0d89248c478acdb242`  
		Last Modified: Tue, 22 Jan 2019 19:38:04 GMT  
		Size: 39.3 MB (39339901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46c8cd8b375d4f4c5c7216d48178ddb74f18d7246589e53a8e7051803ac9b95`  
		Last Modified: Tue, 22 Jan 2019 19:38:09 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:a603c5f5f3a4fbd950545e07943794ea6088a6867da2b832b1d513cd779cbc0f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37992567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e937e320d9c59fdacab83aecef2d73bc12bb88377b3f20e1338ded028315a29`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:57:04 GMT
ADD file:5db8265128cc6f9de34a940ba6318ea3567aae52b29fe6c0c5941ed6e43adfd1 in / 
# Wed, 23 Jan 2019 09:57:05 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 09:57:11 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b9282fffe21aff109811dbcca73fb778b30eaac4a389b4cfbfe8c02b1ac5202d`  
		Last Modified: Wed, 23 Jan 2019 10:03:42 GMT  
		Size: 38.0 MB (37992343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e710a1b73c13b39d594feb17d5149ef9ff275e44ddb47d1d6b009f01d20a8b33`  
		Last Modified: Wed, 23 Jan 2019 10:03:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:a826c92b310485827f8c7335f588c01296618ca419a2c39550bf109196f26dcf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f415c17681c7fca399d0aef2ccaeb72a8307fe0e0df1e510861afc531a410134`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:07:30 GMT
ADD file:afb8fc53fa712796da9dd3634f9727b3a61011287571a7f5b7a83dad001fb48a in / 
# Sat, 29 Dec 2018 13:07:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:07:40 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:365b02c18acb1b27f85922210e9971228cdd4e6b5e8953c9f0759dde2f1c3f41`  
		Last Modified: Sat, 29 Dec 2018 13:13:48 GMT  
		Size: 36.6 MB (36619981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f8303c3ae66efd6ac8a5f3841be5e751e7397e29ca185a792357fe6d20d27d`  
		Last Modified: Sat, 29 Dec 2018 13:13:57 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; 386

```console
$ docker pull debian@sha256:92c500b068baac612099c9bf04a801bfacec599efbda0d2c9ca8412074ff66c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c9bad1ca58addfd0d3635e5e80d29ee7b5584b1661f2c750e910a99dc8afe5`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:01:56 GMT
ADD file:1acbd220f969e13c69f3f789ba79f4436365edeb5d2acae232d1a4c53c3d54b6 in / 
# Sat, 29 Dec 2018 12:01:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:02:10 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:5c1f1b705acc909fc97b326ea9a451bc340d9986219dcb9aabf2c3a691450a29`  
		Last Modified: Sat, 29 Dec 2018 12:12:20 GMT  
		Size: 40.5 MB (40532841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9733b438f4bf3b18a489eb332ac41c718dfb0b8bdcd58e4f8ddf03788e80866`  
		Last Modified: Sat, 29 Dec 2018 12:12:25 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
