## `photon:latest`

```console
$ docker pull photon@sha256:87ba3f27c3aead956009ba8f90a7a6a91c9558ebed445ef8f5de21cfb8492c33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `photon:latest` - linux; amd64

```console
$ docker pull photon@sha256:eafa7319bfd56a35432934a818b01705ff4574ca0de599b2d0346393d5db57e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14606921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d277c19123b240b52d5e52d4723a6fd9a3541f56f99997983677da2bd246215`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 Apr 2019 20:20:35 GMT
ADD file:532716a695a94922e7986ae29661daf6633e2e0da852475ca676b9297ac79bc6 in / 
# Mon, 15 Apr 2019 20:20:35 GMT
LABEL name=Photon OS x86_64/3.0 Base Image vendor=VMware build-date=20190413
# Mon, 15 Apr 2019 20:20:36 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5c5d523cfd09077783f9784c5c2f56927a02093564d870a4a48ebe19fa0d00a1`  
		Last Modified: Mon, 15 Apr 2019 20:20:57 GMT  
		Size: 14.6 MB (14606921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `photon:latest` - linux; arm64 variant v8

```console
$ docker pull photon@sha256:16790cef41995cf6280db00ea5a2968a540ea9a47462372c1856a38b74cb56b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.5 MB (12477085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7657a375116c56e9047878dc681cd3fa6893a655e3813db7e86b05ef63f3ba4e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 17 Apr 2019 09:15:59 GMT
ADD file:9c15c16a29e37a7ddfcd8ba447970eb20724ed65bc2d3c5577e17d9bff406afd in / 
# Wed, 17 Apr 2019 09:16:00 GMT
LABEL name=Photon OS aarch64/3.0 Base Image vendor=VMware build-date=20190413
# Wed, 17 Apr 2019 09:16:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0e8192cead136c4ea05fea448d526bbe8df25e77fc672b6ee2cc3af0f0c227bc`  
		Last Modified: Wed, 17 Apr 2019 09:16:22 GMT  
		Size: 12.5 MB (12477085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
