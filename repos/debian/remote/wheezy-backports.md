## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:892a9c7053ff04b3b9cbecc64045c95e10dafddecc290433101dbf11cbc3f4d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:58590cf67982b4d8dc37605ba00463681f1279bac622a1c4b82b75be766aa717
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df16d0c4b99e9b86765d6fa3463261398d5a7044791186acfcf434ceab33d89f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:32:10 GMT
ADD file:7d97c6060d2f2ed127bfa6caf63275d4d8d4a3828f243204370a117e3bde0923 in / 
# Fri, 28 Dec 2018 23:32:11 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:32:17 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:0ac552c681ffeeb04e8a77bde853c03dd88f87b3936e140ebff2919aef76fe84`  
		Last Modified: Fri, 28 Dec 2018 23:36:56 GMT  
		Size: 39.3 MB (39339686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852a569dff46283f60fd96bd050b27d66b1715c3b74e11de1bedcb1ee1ae4bd8`  
		Last Modified: Fri, 28 Dec 2018 23:37:01 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:cceec3f9c2b93afed2713a1c9b3c7a6cc97f7ff7c28fa1bd08be7bfb53e11ebd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37992433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb1d32e62598bf91d738d05b5e4ef1fcbf6ee54388fc4d35b7ffda577e23b10`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:57:51 GMT
ADD file:2176455c0a806208679d84cd68bd333f8550a0221930164de204c0d700ef0732 in / 
# Sat, 29 Dec 2018 09:57:52 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 09:58:00 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:0a88807c02a49bee45e800ff85ea3cdd0868f83fffa6aa89ab393861b593d635`  
		Last Modified: Sat, 29 Dec 2018 10:04:37 GMT  
		Size: 38.0 MB (37992205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c44626dbf4b8ebd873e6eaa42a15337b16783960e84e9e95b232d7c6a0f42d4`  
		Last Modified: Sat, 29 Dec 2018 10:04:45 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:52fc709bf2147ba6846ef13554c4eabb27d3d3e0c93e17aa1aced4681b91995b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13dc4261063e4cfb23eed8ffefa5427fd574baf18f79c59f09e75a1e424ee93b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:12:20 GMT
ADD file:dfb9a1807e0b40371535a3989eaae9fa4919d4de1416b9c2cdcec3adaf13e53e in / 
# Fri, 16 Nov 2018 13:12:21 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:12:38 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:294971fb9750100ae6e2fc4bc1c804489beb76ade829b844b445e8d52d095655`  
		Last Modified: Fri, 16 Nov 2018 13:24:45 GMT  
		Size: 36.6 MB (36620343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648c116325af48d7423371c31f05a89134ddc4beb4e4560ffd3b0107fc072ff1`  
		Last Modified: Fri, 16 Nov 2018 13:25:23 GMT  
		Size: 227.0 B  
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
