## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:dfb3de02567ac333a45b15a70cc085e25a8c69b1864e4a7cfabcf9455ae6574e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:fc46b73773f26a088e2ac7a78f0f34f21b5d098928236cbf0c9e0908cea369b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2198bfbe50c9c4d8af7b8f398fab77a11f8644a7184bab0e0347de06295b3d3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:48:51 GMT
ADD file:8699192301f1ef9f9128a50c6fbb453bf22dd5451d822d05a034a99c53d93921 in / 
# Thu, 15 Nov 2018 22:49:00 GMT
CMD ["bash"]
# Thu, 15 Nov 2018 22:49:32 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:75eb993070b83359932a9837d457b21b19952ea305d45fc39f2974e9c174022d`  
		Last Modified: Thu, 15 Nov 2018 23:23:05 GMT  
		Size: 39.3 MB (39339731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be207be2b00a33ca30fd476f6b17a4699b41a6a7df470e42ace7bc277d78eef`  
		Last Modified: Thu, 15 Nov 2018 23:24:48 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:1b5a47520e0b309862aa89de037743eecf0b53bbb8480337f94acecf9191c8e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37993791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79547d454b8ae3f718481b239f575e51dce513465cb67869afecc74161276e31`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:01:50 GMT
ADD file:7fa32f63a9a6cff48266f7afe3843db8f84995b13663eac5199dd7027bef743c in / 
# Fri, 16 Nov 2018 10:01:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 10:02:05 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f2509498a89240dc1cfe86f8e2bc15366b63a69b5a49e209394999a4297dedde`  
		Last Modified: Fri, 16 Nov 2018 10:16:29 GMT  
		Size: 38.0 MB (37993565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9498ed29df0bf7fc61bdf5ae24e3846b6a22421e9349de43823ab5f6a15b6db`  
		Last Modified: Fri, 16 Nov 2018 10:17:09 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:14dfd6d9be60ecdb3b7000fed2a799f6a474ecc256c2436c785d97a44a22f9d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ea68ac4fc4647bfb0932d12e35bec14eda86e6dd9eb2ce27ef6ef54f1c2879`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 12:09:26 GMT
ADD file:8935227f32a3e91c86efa1305b607c27bdd98b340fdd6ad7342366363999a514 in / 
# Tue, 16 Oct 2018 12:09:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:09:42 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ec8fef9acc449b28b0c87a81f00dd797c93892b15c350b9cd5f042f27f80de6d`  
		Last Modified: Tue, 16 Oct 2018 12:18:26 GMT  
		Size: 36.6 MB (36620330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6052d18f0109cd79293ce25c7e6daa0337fca779ff13c126ba80076ef4a12e`  
		Last Modified: Tue, 16 Oct 2018 12:18:48 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; 386

```console
$ docker pull debian@sha256:809d3efdc78d6c4032493e9fb3dd26b98d1d35796027d09ba317e5cc097be4c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50bbb0813de951801fa90fcc1a2a724a7a22146c1551bf7689d1f4c6c14a7791`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:52:08 GMT
ADD file:802fa935f1c519c7f94aaeea65d44725095f32d1f2af893dc2039a760dd79742 in / 
# Tue, 16 Oct 2018 10:52:08 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:52:22 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:bcc2ae1457e5537ae226201c76b3020749f51c0286a8026bfc95b92fa3ee382a`  
		Last Modified: Tue, 16 Oct 2018 11:10:17 GMT  
		Size: 40.5 MB (40532875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ac44aa5952140c0041b270652d160f822a76b941cfd89d9662c17320735466`  
		Last Modified: Tue, 16 Oct 2018 11:11:08 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
