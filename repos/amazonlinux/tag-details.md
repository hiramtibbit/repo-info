<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `amazonlinux`

-	[`amazonlinux:1`](#amazonlinux1)
-	[`amazonlinux:1-with-sources`](#amazonlinux1-with-sources)
-	[`amazonlinux:2`](#amazonlinux2)
-	[`amazonlinux:2018.03`](#amazonlinux201803)
-	[`amazonlinux:2018.03.0.20190514`](#amazonlinux201803020190514)
-	[`amazonlinux:2018.03.0.20190514-with-sources`](#amazonlinux201803020190514-with-sources)
-	[`amazonlinux:2018.03-with-sources`](#amazonlinux201803-with-sources)
-	[`amazonlinux:2.0.20190508`](#amazonlinux2020190508)
-	[`amazonlinux:2.0.20190508-with-sources`](#amazonlinux2020190508-with-sources)
-	[`amazonlinux:2-with-sources`](#amazonlinux2-with-sources)
-	[`amazonlinux:latest`](#amazonlinuxlatest)
-	[`amazonlinux:with-sources`](#amazonlinuxwith-sources)

## `amazonlinux:1`

```console
$ docker pull amazonlinux@sha256:9a712720ba49101d90a71d319b35d2bf578657cc114e48f13e15441bf3da679b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1` - linux; amd64

```console
$ docker pull amazonlinux@sha256:259b45b20ffb661b6b2aa67c2d7995b0066664176755b4beb5e114f4c2b4e1fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62100939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a89f4a191d4c1061567bd8ba7275620ef344145bc01e7e33592f1766b9ce95d1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:21:03 GMT
ADD file:40e548499a317a061b6352a599663bc113d39b500045922756ac5b047efc8af7 in / 
# Thu, 23 May 2019 22:21:04 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6b06fe0eab1d2f5bb53a35308f536336f934821f756af9dd63aa94b88fe51856`  
		Last Modified: Thu, 23 May 2019 22:23:20 GMT  
		Size: 62.1 MB (62100939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:1-with-sources`

```console
$ docker pull amazonlinux@sha256:a90397cf1340f9c382d4c44d683239a6ecffb1d9791eefdb5107e6225191f471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:f2fcae13bb98db6c579c2d0044c11c1263b84fbb7e7d6250058f336dee78f567
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.9 MB (386898139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0363787f493c61272c39026029d9f39115e69669de1d27abfa2f9dad48505d0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:21:03 GMT
ADD file:40e548499a317a061b6352a599663bc113d39b500045922756ac5b047efc8af7 in / 
# Thu, 23 May 2019 22:21:04 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:21:35 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-625a3a68ed10fa636aba58fe309d08e4638037f2108b3a37c642b706beb1e08c.tar.gz"  && echo "90ce192c1119a23d810b5699a48d19f016922d56c6ee9700919f403d351eb7df  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:6b06fe0eab1d2f5bb53a35308f536336f934821f756af9dd63aa94b88fe51856`  
		Last Modified: Thu, 23 May 2019 22:23:20 GMT  
		Size: 62.1 MB (62100939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e170d8a932826d0e7d3cba3024d649a3892f200d9aad5590d4553273a5eec7`  
		Last Modified: Thu, 23 May 2019 22:23:53 GMT  
		Size: 324.8 MB (324797200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2`

```console
$ docker pull amazonlinux@sha256:730fae68c6a180e8006443b0f090e56419da5ceb5d11250d96e627660ffbc674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2` - linux; amd64

```console
$ docker pull amazonlinux@sha256:04f5ea9fec3f1f514451ea7c1a1a77a7c023787cb6cc066cc6d0413b56cd0eac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61285177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b94321659aca6a89cb7650a5b864bc8ec4bf62c620b8f1a01530c2e90a88c391`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:19:59 GMT
ADD file:3cf811fe5073384ff1d5f405992ef7e5e452ad6d4a4cb873eee65007382f3a4a in / 
# Thu, 23 May 2019 22:20:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:72d97abdfae3b3c933ff41e39779cc72853d7bd9dc1e4800c5294d6715257799`  
		Last Modified: Thu, 23 May 2019 22:22:16 GMT  
		Size: 61.3 MB (61285177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:2` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:efd5950fae902f97ba722eee99b3593777002027b5ccb0ceef5eeb2b04ec424c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62453151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42bb8117160608f18d7ead3e2ebdb85c7ea09a1303e6f6e900e690b1c033bab5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:39:34 GMT
ADD file:358a4a50e1cb5e7181b9cc49d23e60d7b0ba5ca2ce18ced74be5843836d54004 in / 
# Thu, 23 May 2019 22:39:35 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0c8ee56cea53bee75dce23897c1c0f77aa13a698e7b49d9f20c788cef45fadea`  
		Last Modified: Thu, 23 May 2019 22:40:27 GMT  
		Size: 62.5 MB (62453151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03`

```console
$ docker pull amazonlinux@sha256:9a712720ba49101d90a71d319b35d2bf578657cc114e48f13e15441bf3da679b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03` - linux; amd64

```console
$ docker pull amazonlinux@sha256:259b45b20ffb661b6b2aa67c2d7995b0066664176755b4beb5e114f4c2b4e1fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62100939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a89f4a191d4c1061567bd8ba7275620ef344145bc01e7e33592f1766b9ce95d1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:21:03 GMT
ADD file:40e548499a317a061b6352a599663bc113d39b500045922756ac5b047efc8af7 in / 
# Thu, 23 May 2019 22:21:04 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6b06fe0eab1d2f5bb53a35308f536336f934821f756af9dd63aa94b88fe51856`  
		Last Modified: Thu, 23 May 2019 22:23:20 GMT  
		Size: 62.1 MB (62100939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03.0.20190514`

```console
$ docker pull amazonlinux@sha256:9a712720ba49101d90a71d319b35d2bf578657cc114e48f13e15441bf3da679b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03.0.20190514` - linux; amd64

```console
$ docker pull amazonlinux@sha256:259b45b20ffb661b6b2aa67c2d7995b0066664176755b4beb5e114f4c2b4e1fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62100939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a89f4a191d4c1061567bd8ba7275620ef344145bc01e7e33592f1766b9ce95d1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:21:03 GMT
ADD file:40e548499a317a061b6352a599663bc113d39b500045922756ac5b047efc8af7 in / 
# Thu, 23 May 2019 22:21:04 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6b06fe0eab1d2f5bb53a35308f536336f934821f756af9dd63aa94b88fe51856`  
		Last Modified: Thu, 23 May 2019 22:23:20 GMT  
		Size: 62.1 MB (62100939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03.0.20190514-with-sources`

```console
$ docker pull amazonlinux@sha256:a90397cf1340f9c382d4c44d683239a6ecffb1d9791eefdb5107e6225191f471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03.0.20190514-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:f2fcae13bb98db6c579c2d0044c11c1263b84fbb7e7d6250058f336dee78f567
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.9 MB (386898139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0363787f493c61272c39026029d9f39115e69669de1d27abfa2f9dad48505d0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:21:03 GMT
ADD file:40e548499a317a061b6352a599663bc113d39b500045922756ac5b047efc8af7 in / 
# Thu, 23 May 2019 22:21:04 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:21:35 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-625a3a68ed10fa636aba58fe309d08e4638037f2108b3a37c642b706beb1e08c.tar.gz"  && echo "90ce192c1119a23d810b5699a48d19f016922d56c6ee9700919f403d351eb7df  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:6b06fe0eab1d2f5bb53a35308f536336f934821f756af9dd63aa94b88fe51856`  
		Last Modified: Thu, 23 May 2019 22:23:20 GMT  
		Size: 62.1 MB (62100939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e170d8a932826d0e7d3cba3024d649a3892f200d9aad5590d4553273a5eec7`  
		Last Modified: Thu, 23 May 2019 22:23:53 GMT  
		Size: 324.8 MB (324797200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03-with-sources`

```console
$ docker pull amazonlinux@sha256:a90397cf1340f9c382d4c44d683239a6ecffb1d9791eefdb5107e6225191f471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:f2fcae13bb98db6c579c2d0044c11c1263b84fbb7e7d6250058f336dee78f567
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.9 MB (386898139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0363787f493c61272c39026029d9f39115e69669de1d27abfa2f9dad48505d0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:21:03 GMT
ADD file:40e548499a317a061b6352a599663bc113d39b500045922756ac5b047efc8af7 in / 
# Thu, 23 May 2019 22:21:04 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:21:35 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-625a3a68ed10fa636aba58fe309d08e4638037f2108b3a37c642b706beb1e08c.tar.gz"  && echo "90ce192c1119a23d810b5699a48d19f016922d56c6ee9700919f403d351eb7df  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:6b06fe0eab1d2f5bb53a35308f536336f934821f756af9dd63aa94b88fe51856`  
		Last Modified: Thu, 23 May 2019 22:23:20 GMT  
		Size: 62.1 MB (62100939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e170d8a932826d0e7d3cba3024d649a3892f200d9aad5590d4553273a5eec7`  
		Last Modified: Thu, 23 May 2019 22:23:53 GMT  
		Size: 324.8 MB (324797200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2.0.20190508`

```console
$ docker pull amazonlinux@sha256:730fae68c6a180e8006443b0f090e56419da5ceb5d11250d96e627660ffbc674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2.0.20190508` - linux; amd64

```console
$ docker pull amazonlinux@sha256:04f5ea9fec3f1f514451ea7c1a1a77a7c023787cb6cc066cc6d0413b56cd0eac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61285177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b94321659aca6a89cb7650a5b864bc8ec4bf62c620b8f1a01530c2e90a88c391`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:19:59 GMT
ADD file:3cf811fe5073384ff1d5f405992ef7e5e452ad6d4a4cb873eee65007382f3a4a in / 
# Thu, 23 May 2019 22:20:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:72d97abdfae3b3c933ff41e39779cc72853d7bd9dc1e4800c5294d6715257799`  
		Last Modified: Thu, 23 May 2019 22:22:16 GMT  
		Size: 61.3 MB (61285177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:2.0.20190508` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:efd5950fae902f97ba722eee99b3593777002027b5ccb0ceef5eeb2b04ec424c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62453151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42bb8117160608f18d7ead3e2ebdb85c7ea09a1303e6f6e900e690b1c033bab5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:39:34 GMT
ADD file:358a4a50e1cb5e7181b9cc49d23e60d7b0ba5ca2ce18ced74be5843836d54004 in / 
# Thu, 23 May 2019 22:39:35 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0c8ee56cea53bee75dce23897c1c0f77aa13a698e7b49d9f20c788cef45fadea`  
		Last Modified: Thu, 23 May 2019 22:40:27 GMT  
		Size: 62.5 MB (62453151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2.0.20190508-with-sources`

```console
$ docker pull amazonlinux@sha256:4c0f29089428d1a2b1225e226eadf8c8684e7a01914fee149352b3c1fd26c983
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2.0.20190508-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fcd73965625b9c0de8400ab8b8c31b20595c545374b64689240c4a2894e8ca58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (410960103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eaaa89c4223d2027c8dd9a1a4e265f15a168d5fde6b2aa89192a1aa4e2aad2d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:19:59 GMT
ADD file:3cf811fe5073384ff1d5f405992ef7e5e452ad6d4a4cb873eee65007382f3a4a in / 
# Thu, 23 May 2019 22:20:00 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:20:34 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-ad69d19055549443625cfbf1bb083d60f6d5648578856ca22e3741eca92decbc.tar.gz"  && echo "5f117ceb75e376f975baa4c495e5cf2422c551fabd0f9262261e781daf550d95  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:72d97abdfae3b3c933ff41e39779cc72853d7bd9dc1e4800c5294d6715257799`  
		Last Modified: Thu, 23 May 2019 22:22:16 GMT  
		Size: 61.3 MB (61285177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c5ca75c90568489ab3b9bb13a4ed227fa53b57acad2ab63205c676d617373d`  
		Last Modified: Thu, 23 May 2019 22:22:55 GMT  
		Size: 349.7 MB (349674926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:2.0.20190508-with-sources` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:39b64ce3215b789dd17885e354bd2a4db2e78814044512e3e209b6a68e98c3af
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.1 MB (412128109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbee7d92cc78e07acd5622053f052a5a5c26b419db75eb8a4f53daff9c7cf76f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:39:34 GMT
ADD file:358a4a50e1cb5e7181b9cc49d23e60d7b0ba5ca2ce18ced74be5843836d54004 in / 
# Thu, 23 May 2019 22:39:35 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:39:57 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-ad69d19055549443625cfbf1bb083d60f6d5648578856ca22e3741eca92decbc.tar.gz"  && echo "5f117ceb75e376f975baa4c495e5cf2422c551fabd0f9262261e781daf550d95  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:0c8ee56cea53bee75dce23897c1c0f77aa13a698e7b49d9f20c788cef45fadea`  
		Last Modified: Thu, 23 May 2019 22:40:27 GMT  
		Size: 62.5 MB (62453151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29df043f931d0e06fff848237e2c171c2d803f1aab63eb0be968bdc2abacddad`  
		Last Modified: Thu, 23 May 2019 22:41:10 GMT  
		Size: 349.7 MB (349674958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2-with-sources`

```console
$ docker pull amazonlinux@sha256:4c0f29089428d1a2b1225e226eadf8c8684e7a01914fee149352b3c1fd26c983
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fcd73965625b9c0de8400ab8b8c31b20595c545374b64689240c4a2894e8ca58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (410960103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eaaa89c4223d2027c8dd9a1a4e265f15a168d5fde6b2aa89192a1aa4e2aad2d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:19:59 GMT
ADD file:3cf811fe5073384ff1d5f405992ef7e5e452ad6d4a4cb873eee65007382f3a4a in / 
# Thu, 23 May 2019 22:20:00 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:20:34 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-ad69d19055549443625cfbf1bb083d60f6d5648578856ca22e3741eca92decbc.tar.gz"  && echo "5f117ceb75e376f975baa4c495e5cf2422c551fabd0f9262261e781daf550d95  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:72d97abdfae3b3c933ff41e39779cc72853d7bd9dc1e4800c5294d6715257799`  
		Last Modified: Thu, 23 May 2019 22:22:16 GMT  
		Size: 61.3 MB (61285177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c5ca75c90568489ab3b9bb13a4ed227fa53b57acad2ab63205c676d617373d`  
		Last Modified: Thu, 23 May 2019 22:22:55 GMT  
		Size: 349.7 MB (349674926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:2-with-sources` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:39b64ce3215b789dd17885e354bd2a4db2e78814044512e3e209b6a68e98c3af
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.1 MB (412128109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbee7d92cc78e07acd5622053f052a5a5c26b419db75eb8a4f53daff9c7cf76f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:39:34 GMT
ADD file:358a4a50e1cb5e7181b9cc49d23e60d7b0ba5ca2ce18ced74be5843836d54004 in / 
# Thu, 23 May 2019 22:39:35 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:39:57 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-ad69d19055549443625cfbf1bb083d60f6d5648578856ca22e3741eca92decbc.tar.gz"  && echo "5f117ceb75e376f975baa4c495e5cf2422c551fabd0f9262261e781daf550d95  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:0c8ee56cea53bee75dce23897c1c0f77aa13a698e7b49d9f20c788cef45fadea`  
		Last Modified: Thu, 23 May 2019 22:40:27 GMT  
		Size: 62.5 MB (62453151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29df043f931d0e06fff848237e2c171c2d803f1aab63eb0be968bdc2abacddad`  
		Last Modified: Thu, 23 May 2019 22:41:10 GMT  
		Size: 349.7 MB (349674958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:latest`

```console
$ docker pull amazonlinux@sha256:730fae68c6a180e8006443b0f090e56419da5ceb5d11250d96e627660ffbc674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:latest` - linux; amd64

```console
$ docker pull amazonlinux@sha256:04f5ea9fec3f1f514451ea7c1a1a77a7c023787cb6cc066cc6d0413b56cd0eac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61285177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b94321659aca6a89cb7650a5b864bc8ec4bf62c620b8f1a01530c2e90a88c391`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:19:59 GMT
ADD file:3cf811fe5073384ff1d5f405992ef7e5e452ad6d4a4cb873eee65007382f3a4a in / 
# Thu, 23 May 2019 22:20:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:72d97abdfae3b3c933ff41e39779cc72853d7bd9dc1e4800c5294d6715257799`  
		Last Modified: Thu, 23 May 2019 22:22:16 GMT  
		Size: 61.3 MB (61285177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:latest` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:efd5950fae902f97ba722eee99b3593777002027b5ccb0ceef5eeb2b04ec424c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 MB (62453151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42bb8117160608f18d7ead3e2ebdb85c7ea09a1303e6f6e900e690b1c033bab5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:39:34 GMT
ADD file:358a4a50e1cb5e7181b9cc49d23e60d7b0ba5ca2ce18ced74be5843836d54004 in / 
# Thu, 23 May 2019 22:39:35 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0c8ee56cea53bee75dce23897c1c0f77aa13a698e7b49d9f20c788cef45fadea`  
		Last Modified: Thu, 23 May 2019 22:40:27 GMT  
		Size: 62.5 MB (62453151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:4c0f29089428d1a2b1225e226eadf8c8684e7a01914fee149352b3c1fd26c983
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fcd73965625b9c0de8400ab8b8c31b20595c545374b64689240c4a2894e8ca58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (410960103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eaaa89c4223d2027c8dd9a1a4e265f15a168d5fde6b2aa89192a1aa4e2aad2d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:19:59 GMT
ADD file:3cf811fe5073384ff1d5f405992ef7e5e452ad6d4a4cb873eee65007382f3a4a in / 
# Thu, 23 May 2019 22:20:00 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:20:34 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-ad69d19055549443625cfbf1bb083d60f6d5648578856ca22e3741eca92decbc.tar.gz"  && echo "5f117ceb75e376f975baa4c495e5cf2422c551fabd0f9262261e781daf550d95  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:72d97abdfae3b3c933ff41e39779cc72853d7bd9dc1e4800c5294d6715257799`  
		Last Modified: Thu, 23 May 2019 22:22:16 GMT  
		Size: 61.3 MB (61285177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c5ca75c90568489ab3b9bb13a4ed227fa53b57acad2ab63205c676d617373d`  
		Last Modified: Thu, 23 May 2019 22:22:55 GMT  
		Size: 349.7 MB (349674926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:with-sources` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:39b64ce3215b789dd17885e354bd2a4db2e78814044512e3e209b6a68e98c3af
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.1 MB (412128109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbee7d92cc78e07acd5622053f052a5a5c26b419db75eb8a4f53daff9c7cf76f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 May 2019 22:39:34 GMT
ADD file:358a4a50e1cb5e7181b9cc49d23e60d7b0ba5ca2ce18ced74be5843836d54004 in / 
# Thu, 23 May 2019 22:39:35 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:39:57 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-ad69d19055549443625cfbf1bb083d60f6d5648578856ca22e3741eca92decbc.tar.gz"  && echo "5f117ceb75e376f975baa4c495e5cf2422c551fabd0f9262261e781daf550d95  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:0c8ee56cea53bee75dce23897c1c0f77aa13a698e7b49d9f20c788cef45fadea`  
		Last Modified: Thu, 23 May 2019 22:40:27 GMT  
		Size: 62.5 MB (62453151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29df043f931d0e06fff848237e2c171c2d803f1aab63eb0be968bdc2abacddad`  
		Last Modified: Thu, 23 May 2019 22:41:10 GMT  
		Size: 349.7 MB (349674958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
