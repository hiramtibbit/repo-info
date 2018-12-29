## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:4f88a21226723d755b40b7071928b68bba068a5711d6ecb7537ceeb95d708d5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:8a27d206b435cf02900555db7c7c0ec04998f9c06f9127a04618c5fdb1040a81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.4 MB (54387358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e126f0b28204b29b8906bfb76e445a8d13a9d106a5ee38a13b45d26e47edc264`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:43 GMT
ADD file:00999723bb63909a7eda0aeba935a5b63175972941887b767912e0e6532d6655 in / 
# Fri, 28 Dec 2018 23:25:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:25:47 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:cb6efa474a10348d1429b9eaaf30ee24568546530bdbbcdba240d5d03306eed4`  
		Last Modified: Fri, 28 Dec 2018 23:34:42 GMT  
		Size: 54.4 MB (54387132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2389c91078e4c81e4f06eb5d95a447472e8bf292092f4d86615d3955569418a9`  
		Last Modified: Fri, 28 Dec 2018 23:34:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:f687e0e4a53ab4da599106092260a6d50fef8432ba38d3f55b05e5f119048126
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52578974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3013cac42340d2168446a2003f4edc59769d6b3fac8cf6315a5afaac374d4188`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:52:09 GMT
ADD file:a55e69d50a335f9a243b46caa9317403d19a924e6a5065b487390cbabf8f7e3a in / 
# Sat, 29 Dec 2018 09:52:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 09:52:19 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b97af2d9a7b1be67c0de300bb8e9d0d39f2641770f8e5ea5f85163422ad4b8a0`  
		Last Modified: Sat, 29 Dec 2018 10:01:13 GMT  
		Size: 52.6 MB (52578749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22bd8ecaf84b41dd99f4934787782c4994199ba2a7a47e7fc859256a41fb210`  
		Last Modified: Sat, 29 Dec 2018 10:01:19 GMT  
		Size: 225.0 B  
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
$ docker pull debian@sha256:adc538b9891c6b45c5abd47d7142226388ed34cdd03fbf5af0127f4328f3ddf1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54604478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15949cdff22f227c3a68c2bf430fd52f03cb5e06b6098153c2f2c059abb94734`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:47:50 GMT
ADD file:f81df23486af734e8fe633f14b2768adc32eaa2a7980bff2f8b43e052e6dd67a in / 
# Sat, 29 Dec 2018 11:47:50 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:47:56 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:76a3b98bb946da6354c1618f5c98bfd72f1e4236bcbabffda12b374bb1a67604`  
		Last Modified: Sat, 29 Dec 2018 12:07:55 GMT  
		Size: 54.6 MB (54604254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aaa452e049751f0bf5c6dcf6f54f3d2a8566b6078026e76a6c25178a74b2fad`  
		Last Modified: Sat, 29 Dec 2018 12:08:00 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
