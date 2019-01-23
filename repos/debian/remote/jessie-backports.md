## `debian:jessie-backports`

```console
$ docker pull debian@sha256:7536eed735eb74bbce8ad82277ae9747545eee451cf1f7c6a79aaad0dd4cad29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:jessie-backports` - linux; amd64

```console
$ docker pull debian@sha256:32258da27d575c63671ca59e1db00a614825ed90931fa7202732844a7103f99e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.4 MB (54385992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ccacf615a953294a60ac628e8d9e6e3faa0eeb41d0f0cf6b13d4f3484089ac1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:23:31 GMT
ADD file:3392f08cefaf93484868c5183e810a29e7cc370d21dae7cff10b856b2b21d072 in / 
# Tue, 22 Jan 2019 19:23:31 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 19:23:39 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8ac9f5ca4429ff58493e4cb486b7a5eaa6af0a4711e9bda1ce4671732e25d1d1`  
		Last Modified: Tue, 22 Jan 2019 19:34:35 GMT  
		Size: 54.4 MB (54385768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee25d56628672a56bd87914840fd998c03b5b483e71e2a2969b24e02845a1d`  
		Last Modified: Tue, 22 Jan 2019 19:34:40 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:ae73e9568d8e92d4474c56c4db7acb942b975f3ae3c75356493736e7369927dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52574778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ad1a2c0237de8aa0bf337a43130ab077b2aaa3d88c5772ebd88ee039a01cf2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 09:50:16 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4234f83942e27876073741491158f136685b2f60ab4cdf37a09f411ff57bda56`  
		Last Modified: Wed, 23 Jan 2019 09:59:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:38f8674746202fe4ed8b6c12c99a61e4984236597de3c5608cafc1656982bf1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50291856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:152ab802755f435201886f3efc6e318feb5b7809ce47bca72b048784d3d3c01a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:59:26 GMT
ADD file:82fbc1afc65e113a763fd56969e610ee7f80938bd2f37ffc964d6f5b4525b68b in / 
# Wed, 23 Jan 2019 12:59:27 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:59:35 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8d0ee67914252a6f8316bcf4f5de02a5d7894abb8061e33223a2a3691b209217`  
		Last Modified: Wed, 23 Jan 2019 13:09:16 GMT  
		Size: 50.3 MB (50291632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08a8e2cb9c59f0e2af05e4bd1cd002e7a82b447a502c791b697acb7d1185a34`  
		Last Modified: Wed, 23 Jan 2019 13:09:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; 386

```console
$ docker pull debian@sha256:ded943a2ab61b736852b818856dfb7d595a849e23d48ac399de65130b47dd89a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54598720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c32bf9505e501fd72e0d8bef6d38492bf0580499fc18e8d53ac00a9d8a2d17`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:43:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a572a474016cd168710a52d05967fef8de5d3c0a194267bca6171f79f64805`  
		Last Modified: Wed, 23 Jan 2019 11:59:17 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
