## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:a83d1932467e6dd9cea3a25af0a18263e91de17aeff200d9f8667b4d420ff206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldoldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:060f27b1fb18533325d181ecc308265e81b9fbf9110feb81719dd47fbe8d1703
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39340137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4124eac067dc0b83c932f46a73b571d95fe21b4e23d693ff2f6e8cf32e583118`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:25:38 GMT
ADD file:07c536258b62e1aea77f3bec28f3f9aa54da67c56da49a89fde6cf072b6a0076 in / 
# Tue, 22 Jan 2019 19:25:38 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 19:25:48 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:698b7bc251d89c1acd1516a9581db31567465223714c315b8d733dd5a400e0e2`  
		Last Modified: Tue, 22 Jan 2019 19:35:03 GMT  
		Size: 39.3 MB (39339913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96cd4e8d8351f15bc522a54f41036777f68ca395ab99f2ca61ad63f6139532a2`  
		Last Modified: Tue, 22 Jan 2019 19:35:07 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:20744fe5e5fb30d34c61a092122e19c83e96193eab733f3660d17bb3a08b97be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37992406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea192e535461e0e78c84725e4ba1f24cf572c260dd94691ad2bebcd72f5f58a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:51:09 GMT
ADD file:8be1fb46e99eddee1297b3bdb303e9459a7303823c84a7a3af956d7b363eed72 in / 
# Sat, 29 Dec 2018 09:51:10 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 09:51:18 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2ebdafb222cac75b909b4817fade26ec234b82e377689261320d6de79cefdcb8`  
		Last Modified: Sat, 29 Dec 2018 10:00:37 GMT  
		Size: 38.0 MB (37992177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872a75b035e27fb2a81a7cc76ea5c522e336a9f91edfb32f9588d23f32b02983`  
		Last Modified: Sat, 29 Dec 2018 10:00:43 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:94ede84165da561d4d93128ff27651ecb05538e2c5efb23aca1571abbfd2ed03
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:864aa2df212a93720f1cabb62a5184a4b16fe7eee2a94e7bb004c92da28dd3d5`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:00:21 GMT
ADD file:4d5fa4959c90b256650fbf98da2a552c2b0fe37e87f80feac1af73f43edecc22 in / 
# Sat, 29 Dec 2018 13:00:24 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:00:31 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:98b94aac0cb954266eaa2822cb294efa9d6d3f462eeb4a00979c4466d55fbb0a`  
		Last Modified: Sat, 29 Dec 2018 13:10:15 GMT  
		Size: 36.6 MB (36619998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76cb9a872c31d76fa53d56282abaa39802d31f360a7381c9112d1aef90f0620`  
		Last Modified: Sat, 29 Dec 2018 13:10:21 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:9e745e9670c64f828d9647617e13f5c521a2d75b37e4f7961689077fe5983423
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5919816b78678e9d9dd94bc808fbebd6938950bdc77cf72510423ca19b98a648`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:45:42 GMT
ADD file:3866edd2e7d717aff647267b18d4bd961d89d3799b05cdf16b3b162abd4940b6 in / 
# Sat, 29 Dec 2018 11:45:43 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:45:54 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:1cde3c2e19b83d1ed7845316d663b920a81f154168ef18338d16b04dd42bc7f4`  
		Last Modified: Sat, 29 Dec 2018 12:07:07 GMT  
		Size: 40.5 MB (40532877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97fdf1ef2c9417b333dc5c77d3a0d09ba85bc2058e14668b0212714fb995780`  
		Last Modified: Sat, 29 Dec 2018 12:07:12 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
