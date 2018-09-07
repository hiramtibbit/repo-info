## `photon:dev`

```console
$ docker pull photon@sha256:c27e22d3dc01e7891342667644822fab9fb3ef7611832bfc66c09c6515039e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `photon:dev` - linux; amd64

```console
$ docker pull photon@sha256:24a6b0334d98fa6feb9e2a6948ec081ff31e9f6a5e314b53eb54e6a8da169719
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14103334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:967f4cae7b06dff9201d7576364b0f959673f1ae89964f72eb660567064ba1fb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 06 Sep 2018 18:20:53 GMT
ADD file:200dac7aaa4285b4c10d60b01b3f28638e24183c6872a3377e5dd993883ef329 in / 
# Thu, 06 Sep 2018 18:20:53 GMT
LABEL name=Photon OS Dev Base Image vendor=VMware build-date=20180901
# Thu, 06 Sep 2018 18:20:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:215e961a2b01876fe288bdcd8336de92de6b725a5935683e412af651a1052835`  
		Last Modified: Thu, 06 Sep 2018 18:21:43 GMT  
		Size: 14.1 MB (14103334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `photon:dev` - linux; arm64 variant v8

```console
$ docker pull photon@sha256:21d2fb56f6ea87a6754f39516e27c61b21ee13254b96b5c091ba637c2ebcc12a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.9 MB (11925621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d138e96320f712653ad937a0b49a84d630879723e567cca2b9c9e8b3beb61186`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 07 Sep 2018 09:00:02 GMT
ADD file:eabc754ac1af7564c69f045fe0b65a491327479bf83e0c41294fac7b44a66808 in / 
# Fri, 07 Sep 2018 09:00:02 GMT
LABEL name=Photon OS Dev Base Image vendor=VMware build-date=20180904
# Fri, 07 Sep 2018 09:00:03 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6126c050f45ccac0e88b69059e4c8ea579ecc39243b8f88ad14d964a260f4799`  
		Last Modified: Fri, 07 Sep 2018 09:01:27 GMT  
		Size: 11.9 MB (11925621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
