## `debian:experimental`

```console
$ docker pull debian@sha256:388459c73d097d96d8cdfd75454f2893ab11fea6648fe596de9225c80faf872f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `debian:experimental` - linux; amd64

```console
$ docker pull debian@sha256:978fa1d56cfb25185580565691f4529b0b85dc2766d3d03e7074be45049f64ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47869427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:096fd1297839ecdb85706988491239ea5145bb1a6145ce0773672f6668e6e988`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 02:03:24 GMT
ADD file:46e67a1008eb6346c331c08389aea6bc64703783c1847cdf8df3c87ca0898138 in / 
# Thu, 15 Feb 2018 02:03:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 02:07:33 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:bfde1f2db49f64a31969c414ea6f6767416f433471b812e2eccd11f9458feecf`  
		Last Modified: Thu, 15 Feb 2018 02:30:44 GMT  
		Size: 47.9 MB (47869202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8abcf9d8372ddc0a08602ee96f36886c911c5d1013d462422ddc245155515e`  
		Last Modified: Thu, 15 Feb 2018 02:34:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v5

```console
$ docker pull debian@sha256:89e936c7f6f396ae6c64e33ab825a5f70636ccd86df8f0d0a047bee388cf7138
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46118664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91e1ab3a725b565ff1a3504c7e458197e5cb2696535481c6fb7c303ccb3288db`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 21:01:37 GMT
ADD file:14851e3a21fcb99363ea7866ad064e958d1c6e240c027610f8e62b47613a54bf in / 
# Thu, 15 Feb 2018 21:01:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:02:57 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:db62c7025babf250db45b4c149951b264cb43656c6d8eaf345f529a71ec73644`  
		Last Modified: Thu, 15 Feb 2018 21:12:43 GMT  
		Size: 46.1 MB (46118445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c390fdbf3470e9f89a70bff302871d98e552db8a4be2d4106d6c265fd94ab6`  
		Last Modified: Thu, 15 Feb 2018 21:14:46 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:164ca1955e0aa4148387f6acaeb5db41d259278a392cb914eea55bbc6c95d9ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44042031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abf9cccfd4416025428577087673b028e94f5696b7aacf67640db2fedb567b54`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:32:37 GMT
ADD file:31f93e694d592a4bd7fa3111452a3887b775a9fe33f433ba9b072382cdbdcdde in / 
# Thu, 15 Feb 2018 13:32:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 13:34:05 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:48d34ce58d949fc0f06f43f9d0fe0f52411309d4f9c7bb3da26dc3c76547e405`  
		Last Modified: Thu, 15 Feb 2018 13:43:17 GMT  
		Size: 44.0 MB (44041809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e465402b76a4d3ef395d93f75f325c198e395afb69c58dee55560503d0c6c5a6`  
		Last Modified: Thu, 15 Feb 2018 13:45:22 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:83ee37c88b8005a8486eac04c13e11e678733cde12f732ad21ebd37b680d4c74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45441391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7c6537bceabe6fbb48d528a77e652d06263f5c6d742cef3deff9aa67d2c34c`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:31:33 GMT
ADD file:2386f14ffea1b3b9df20232ef6924b0710301972a852e76b13d95db6392a81a6 in / 
# Thu, 15 Feb 2018 18:31:33 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 18:32:21 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:6e1cfac1dc3ddc43ec24f452a675241c98704c0e09efe0c0727f8c91546441a2`  
		Last Modified: Thu, 15 Feb 2018 18:45:16 GMT  
		Size: 45.4 MB (45441169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784ce35df42a4100f3442698b1ba3153c45708a3213c6d67fb54afeb04e1dc09`  
		Last Modified: Thu, 15 Feb 2018 18:46:13 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:cd9d711064420d28e6e28fbca30a6e5e3dd4f4d19b779e10af94a303a9652fd2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49251248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9439194ecca814444be029cedeea747f5f979afbd59e72046043ace2087079f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:37:25 GMT
ADD file:c8910df1edda65fbc639138733075bc042c7109577938fc346c909cefa66e895 in / 
# Tue, 12 Dec 2017 14:37:26 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:44:29 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:dd4c74665efbafdac6a4c44585e6e73aef31526266149b8672b3e8d2ab3dcde0`  
		Last Modified: Tue, 12 Dec 2017 15:07:41 GMT  
		Size: 49.3 MB (49251025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5c5ebd93e3b4b8ba307edc20a9c97f15f39a989a6c627a960546dd6e4a1386`  
		Last Modified: Tue, 12 Dec 2017 15:14:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; ppc64le

```console
$ docker pull debian@sha256:c98e8d34818972792e6e1d7a7b588711a8f430b5b378a7554163a78aca6a686d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49453173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a376180d725957466f7d72e44e85ea8b7242b49dbd7b7bc5e8ab97c2883b777d`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:39:36 GMT
ADD file:b611d7364c1d240674be77fde7ce15911eb798ae82dea1ff6f451aa9de01561a in / 
# Thu, 15 Feb 2018 01:39:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 01:40:12 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:a6955ac6eeb0cf260cbbdbaf0c5db000a11d2a9fe7ea218d7e373c6352f7193a`  
		Last Modified: Thu, 15 Feb 2018 01:48:00 GMT  
		Size: 49.5 MB (49452948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d409c0d979aeb1fde8a69bc778f909daf2ef8bef8f890b1982af96a3aad344`  
		Last Modified: Thu, 15 Feb 2018 01:48:33 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:d4e1f194fefb3621a88c4e453ee902fae170a06b7df48ae219d5e725e2e07552
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47238242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad6023a28086940a52b2faa32d15873dfba81172b7ecea1313c8015143c65d8`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:51 GMT
ADD file:ab3b8edc086530d935e8b39f69a3d96efc2286aa42063fa5b364016390a259e7 in / 
# Thu, 15 Feb 2018 06:24:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:25:05 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f63790692d0ca62300f1b3f8c8a7ef2e90031e51245d8ef7f2be085049e25d23`  
		Last Modified: Thu, 15 Feb 2018 06:30:00 GMT  
		Size: 47.2 MB (47238021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80a4a5d30d2d0cb011b82dc64442ef8b25cd4f781d32cbde4b129777ce1ccd5`  
		Last Modified: Thu, 15 Feb 2018 06:30:22 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
