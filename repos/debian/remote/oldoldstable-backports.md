## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:786057874ab67bfb2d1bbeb236c1729a973ae01eea8593ff88241789cb916e39
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
$ docker pull debian@sha256:f1731f49b4741399386770f904510eb083184b3669e9849c6429b9d4abc0ca4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37992572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f527a86c1681c6984f8a64f0b25571012b993e8fe1ca21742f1647f70893b27e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:51:00 GMT
ADD file:1b7fa64ad795d90163cacd96929e5eb73d02e5c9c476b03b8827af3669ef575f in / 
# Wed, 23 Jan 2019 09:51:01 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 09:51:08 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f953db2907f9b560ca3b0e04e9e01246333e6e0988b72a440fcdf979e6788a18`  
		Last Modified: Wed, 23 Jan 2019 09:59:42 GMT  
		Size: 38.0 MB (37992346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601e9c2a686d4a04ea7bc9709e9d240708893ef7e10b10d00c17c6e5bfcc15c4`  
		Last Modified: Wed, 23 Jan 2019 09:59:47 GMT  
		Size: 226.0 B  
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
$ docker pull debian@sha256:286ef8d25fc22424a0a7d1564829dddc0f3e4e8b4ccacc3483d2b84d4556e602
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b34eeeea822c6f64a2f047864ab448cc666b705b54d57628f0f950b50f7f245`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:44:24 GMT
ADD file:6e7501b6afe448cc8383b4fa2b8d1c6d59c571b8d971f0f0fbb0215a93246128 in / 
# Wed, 23 Jan 2019 11:44:24 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:44:33 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:231c22a7f6c6225d57e475a8307f321dd62567fc778dfaef83300a6d63d5ec46`  
		Last Modified: Wed, 23 Jan 2019 11:59:54 GMT  
		Size: 40.5 MB (40533283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d9f389adf205b93c58a76dd7db89817127ad7978a20b293d67c874517773b4`  
		Last Modified: Wed, 23 Jan 2019 11:59:59 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
