## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:90858c2f4c025a1e775217a7b45dbd61bbec867e68b2628ad8591a605c5b8f1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:54aacf42da1aeb06fe728da7f7b04a745dbc158534a68b77287c597230ff4d51
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.4 MB (54386009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fa7bdfd7d159c582ecef4f01ebf6e52d6cbaca86d883452f20bfcade20e8766`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:26:42 GMT
ADD file:7b08a86cb2ca147b31ca5352b841e26809c4ff866c7e8c4853b3a1a11667361d in / 
# Tue, 22 Jan 2019 19:26:43 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 19:26:50 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:9f5b0804b422210f55ca7f15bd115b37bbb06c4559a7875705a59e93f6c7e58f`  
		Last Modified: Tue, 22 Jan 2019 19:35:29 GMT  
		Size: 54.4 MB (54385786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784c5f6e6995a5a39b2afc74a0886764ac16a8d99b0cdb5d6b47b69251dacd4c`  
		Last Modified: Tue, 22 Jan 2019 19:35:37 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:71b33db9c167fd5c26f3860912016a6f49ff4e1b9b06626c89ddc17cb8960628
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52574785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f90e879c7e36c78278460a9c1c57836c456431394b6ce1eaf67ba113eddd3f5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:51:53 GMT
ADD file:33f96ebef57f293658bf5a3ab104d222ade9885f0329076cbc0cb3e71d733790 in / 
# Wed, 23 Jan 2019 09:51:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 09:51:59 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:883355164af36adbd1307fd33b53bdd2a3768c6c82ec4d55d51f74c6c39f37c1`  
		Last Modified: Wed, 23 Jan 2019 10:00:17 GMT  
		Size: 52.6 MB (52574557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d8fbb639f5a13c2dcfd147a5daba18708f3c786ed467bbd30b8237cc217764`  
		Last Modified: Wed, 23 Jan 2019 10:00:26 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:1bd9263d9ae3036f40c1f064a859055cf32d1d1016b26aba0595b7aec9dcd013
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50294412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:439ac85424c460cfe1b423036e22e212a72f6f2fd2139781f7443ca97e04541f`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:01:27 GMT
ADD file:1ae8df9da226f7342c47f25e59c76e3c5021cfca54dcc8bc459dd63d41291118 in / 
# Sat, 29 Dec 2018 13:01:28 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:01:35 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b1ec38487856fd01f0c98baf89f7e298c661d4218c59e8dc29350cc0d22bd8d7`  
		Last Modified: Sat, 29 Dec 2018 13:10:47 GMT  
		Size: 50.3 MB (50294186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c018e0ee7a5424719b58e87c732b27af6e4cfe0b99825c4d69db711029abc438`  
		Last Modified: Sat, 29 Dec 2018 13:10:52 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:0a2b3a8968296c36bdda210d2f3fab81d2f1aa564cb0143050a928a14deeeb18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54598714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4edbcc84464c5f0a81e5256d74b86018d1dac9a6e4fe86f9ef42491ef887d7cd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:45:50 GMT
ADD file:58829975bf962561998b90731df56a4751d951940359d5aeaae8704cc54073d8 in / 
# Wed, 23 Jan 2019 11:45:51 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:45:59 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:00f02dec39c80e4c9b2b19685dcab94b60ea163398f6a1ebf5073223a166aae0`  
		Last Modified: Wed, 23 Jan 2019 12:00:31 GMT  
		Size: 54.6 MB (54598490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4968ac569be6fa5969b8928074d0bb78b35bf8c4108f30650b5ac267290fdcc1`  
		Last Modified: Wed, 23 Jan 2019 12:00:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
