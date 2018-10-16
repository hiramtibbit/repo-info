## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:607b677700a11e38e83dcbf2364340506d7e2c07c012fe648b1b3f935d9e4338
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:6c4743e68a4cb0c06a746d0bca1e4cca39907afc38236b09682e7977f7d6bc5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a9c139b35b8c3449bebfd71b3f493af8d2563f9893cac88a2287c28d8f2b3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:26:28 GMT
ADD file:5163482b7e1bd84981ddd31e96b6909dc030ab66fc6fe9f35882cdbe6eaba287 in / 
# Mon, 15 Oct 2018 23:26:28 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:26:37 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:bd7a7b0b72f4cd60a822a63b8700fb137ad3ec30a83eccba111b3a726c02efeb`  
		Last Modified: Mon, 15 Oct 2018 23:37:05 GMT  
		Size: 39.3 MB (39339774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15a975e6f7158e2fc9eab374389a10ca26a2d702710a21b0317a5236d45b44d`  
		Last Modified: Mon, 15 Oct 2018 23:37:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:393229e0277dae4150d1eb6e2c09d5253178c46a15b84d2ea5e19a6556a7e111
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37993853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2224080e7dc7d1472f6f9a5f2da58e982354b9fbbc15e5ffb0763befab4bdc9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:57:27 GMT
ADD file:a9547253621c5e98ced338e1642b75814f0a522a1c3c2450209e6ecc86dcf865 in / 
# Tue, 16 Oct 2018 08:57:29 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:57:35 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:6a0053223045d511a3aeec9d8c41fee58a3e0832612eaf45036ed25b30ffc51d`  
		Last Modified: Tue, 16 Oct 2018 09:07:09 GMT  
		Size: 38.0 MB (37993627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b976ef52bd138f6593585372c4317a459f681fda92071326f17db3286358499`  
		Last Modified: Tue, 16 Oct 2018 09:07:44 GMT  
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
