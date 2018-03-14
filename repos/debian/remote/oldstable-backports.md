## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:94ab364f45efbb589ea4ac3d5ae5e0922e452af8932ba13577b72f15758a3bc9
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

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:88846e2930af929f56f610dd89670982ba20d3ea6fa95b810650ff3da98f8fb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52608758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dde5d47fa12f46e88ad8892e34dee4e0134d76c8427bc673ff4c17c79a1e516`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:00:10 GMT
ADD file:c72f22cc053a28fe16fcdd72b4f47230b434f4497f369978bd2a1e160555eda1 in / 
# Tue, 13 Mar 2018 22:00:11 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 22:09:58 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:04ed00fe9664a9f0b53537d8b341ae47b8eed91a2053eccbb95659d0850c962d`  
		Last Modified: Tue, 13 Mar 2018 22:48:01 GMT  
		Size: 52.6 MB (52608534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47537fdacd41cd4b69f95c913ef87be2c08870265754ae507e605ac907d66227`  
		Last Modified: Tue, 13 Mar 2018 22:48:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:31828adcc4657dc535b8963232ecfa8bf2a9b4bb7684384261f40a6d66f2f77e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50889872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06d5976e772f862c52bf9632731142773def59ea7bfb5d099f0b883c94dc88c3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:57:41 GMT
ADD file:117c4dc01a383c3efc82807628e1803c1d9cc8d62f0e5adedcee2896b45d9308 in / 
# Thu, 15 Feb 2018 20:57:42 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:57:52 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e30e2f9d2e2660fbb3a048a728c470ef5d86e6d6d78c43b256882aa35cfd10ad`  
		Last Modified: Thu, 15 Feb 2018 21:07:09 GMT  
		Size: 50.9 MB (50889644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31c50b21c762bd9529f2e74c24515f50c7043b2104041315742484b09f2396d`  
		Last Modified: Thu, 15 Feb 2018 21:07:30 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:08c6ff91902a28919da7e053a15bf067d921da095f234cf96bc0a50a205f4948
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48702307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4864a1767f8e616aa832971c21cc84d670582997d961a5c49eab93ab838d365b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:29:12 GMT
ADD file:6fdb7e69ad14653696a99713d9ca8ef82c74c419f4580fd9f1a159b350f6ff9b in / 
# Wed, 14 Mar 2018 12:29:12 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 12:29:28 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:3286d207b14d85959c41f2fbda59b721d054bc0916876d8c2800107ce8329dd2`  
		Last Modified: Wed, 14 Mar 2018 12:41:06 GMT  
		Size: 48.7 MB (48702083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f955cb229bcad07fc474c6d9a85fa130b28a0bf37e86f81fd08d6e6b9b0b196d`  
		Last Modified: Wed, 14 Mar 2018 12:41:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:96ab9bb128f75a37e70eb1bac87e2b58d1230803ea73089ed3af769276fceea6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49934043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60d2572b68a6e6c29e603bdf70021bd1ab6a240004e5632384ff4629f9e79363`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:25:20 GMT
ADD file:29163e68846cc29fa464cd793f4b6d7cef398788f81b39214f068118911021bd in / 
# Thu, 15 Feb 2018 18:25:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 18:25:36 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:c73a95328d3f4d6354070c6d73c6e7ac476574e2ba095e8e9c687895696251a8`  
		Last Modified: Thu, 15 Feb 2018 18:37:48 GMT  
		Size: 49.9 MB (49933817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dde4334fe0be32a9c09677ccca97daa26c414b0b18a80a4e8634e9a32ed05f2`  
		Last Modified: Thu, 15 Feb 2018 18:38:18 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:a59be8ca877bba03ec3dbbbd91af1dabec5567dd0e5598353136df6a19942fb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52787946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f51901d0d4110bbe46be1a33a731f88107411bb6d0dbab36aa53628bf5475d4`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:57:28 GMT
ADD file:13d184c50c8aa3b82af1810d9976b77e6a80b96cf9f74797e6fcf2b29a4d363a in / 
# Thu, 15 Feb 2018 15:57:28 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:05:11 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f6fe53e88218ee030746e8dff3efb89183447f5d4ce541b8c71c7182cf89bab4`  
		Last Modified: Fri, 16 Feb 2018 00:02:19 GMT  
		Size: 52.8 MB (52787722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5238378a3153d1ba47576ff85bba1e14ba18228a9a2aad631ed3a11415746a58`  
		Last Modified: Fri, 16 Feb 2018 00:18:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:316bb94eda703130a716f8096dd450d3bbb68a362d9dab900ea1de9d72ee6891
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51817420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ce218608429d7326ee2f38e0ebb82ff434fb90de7dce0f3d08f29e5e31c939b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:33:00 GMT
ADD file:a5efbe5cf86c65c4053593947084fa7a59a9f2aa1246a817b7ff64884f86f02d in / 
# Wed, 14 Mar 2018 00:33:01 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 00:33:10 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:39f7f6cbe9722617669cb99cd40073a26b6ca078cf1f226de7f2e8827b0454cc`  
		Last Modified: Wed, 14 Mar 2018 00:39:58 GMT  
		Size: 51.8 MB (51817194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ed7ba9b8fbcedc9dcb37f3a8941460d43a139fa90fca574620a1dce995eb7b`  
		Last Modified: Wed, 14 Mar 2018 00:40:16 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; s390x

```console
$ docker pull debian@sha256:8cbb3c0782aa44b3bf2f27e386a0b01f2cba125c3af6b71bb44f39c0c86f0200
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52795712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49942d4547ea7adf2d00616b7efc8c313ac94a798b8c8ece7051e2ad926adcef`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:22:25 GMT
ADD file:bd17bd89f0be158619e4116edda499ededcac719f01c261da332618ed1a6f176 in / 
# Wed, 14 Mar 2018 05:22:26 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:33 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d612b236ba8d1db72bd74a5b2d2f934452a9e9495b037e15cf68fd8e2eb9152b`  
		Last Modified: Wed, 14 Mar 2018 05:27:00 GMT  
		Size: 52.8 MB (52795486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d655b9db463be0b061bf2e4d8a93c525046f7b93f7080433849cdf3c13aadd5d`  
		Last Modified: Wed, 14 Mar 2018 05:27:09 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
