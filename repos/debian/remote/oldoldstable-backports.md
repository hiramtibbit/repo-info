## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:2d4d80110c9aa54bc7372c2e6261c9c6610316f6c8ca8a65a176266a429aff7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldoldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:1473ceeafdd9845b21621121ae27c1fc25990f85b9bba21dd063bb4359c28965
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aeb168a98eba4aef1c7e9121c12112e4df64e1dc7954b9cdaae96d06e899156`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:13 GMT
ADD file:829cc774860e1eff12fc379cd0089d8ae50d9bad4ae5a42ffb9c9160e132a469 in / 
# Tue, 04 Sep 2018 21:20:13 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:20:17 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:52fc9715572dda58ded6f5503869ca7c91dc8a062dcea4aaebd0c970f2daca07`  
		Last Modified: Tue, 04 Sep 2018 21:23:42 GMT  
		Size: 39.3 MB (39339590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a27e045b8e84065d5aaddacf722e4909b8bfc255be93d7ba302c69b2345d28`  
		Last Modified: Tue, 04 Sep 2018 21:23:47 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:5d213103c3a091a65a00b0b60d16639e329eca4998266ab51ecb8615da7beea2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37993833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1376f48aadf4dbaaeda5fd707087d96895a9816d9e4dff072bcc93df137dcd9b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:57 GMT
ADD file:551ca05f44bac746474303df87d12a6faf56e5ac92e2cd8e6abd8bc01c24d32a in / 
# Wed, 05 Sep 2018 08:50:58 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:51:08 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:0c1dc99b825049ca0a3648b3a7dab9dc7f44a5111f4ad7623606c31685e4e759`  
		Last Modified: Wed, 05 Sep 2018 09:00:32 GMT  
		Size: 38.0 MB (37993606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c2cb14bccf4dc3e100754c0a3826848594c6cb9281edb4667b4c5676538041`  
		Last Modified: Wed, 05 Sep 2018 09:00:50 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:8732798aafa91fa1eeba6076b988397b93b8d2ac742d921ff30e2952187b1f22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36619736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc4e721b4377d8d0040b4def954a2e9de1bf3c5b29317494eceb3f1cb760eeb4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:01:00 GMT
ADD file:70b35bde072817a39bc343f739fa99de28330063c0a75688be8817a672f9588e in / 
# Tue, 17 Jul 2018 12:01:00 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:01:18 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:77ac042c2470d63ccc6b36d14982700b030e5dfcf28c32d49818eab44f4bf684`  
		Last Modified: Tue, 17 Jul 2018 12:13:02 GMT  
		Size: 36.6 MB (36619510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a349530a8957338a64b9121317b0957ee0296b7ebc711f520d45479540f38f43`  
		Last Modified: Tue, 17 Jul 2018 12:13:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:e2e738ec664f14b5947a65c488b248a303496edbbcfdd8bc0511d0753affd4c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40532364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceeebd4aa5cdd6382c2b85ae7925df1198fa990d0e52dca8dd688899efbb00e4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:43:21 GMT
ADD file:e9c6d7a529afda08a65e48013e6b12b7a54d61d2c3dcb62182d966e638a6f622 in / 
# Tue, 17 Jul 2018 10:43:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 10:43:54 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:63d2b231bf65cdb8937f9518f0378e62769cdb9a2326fed129ddde09b7c84b46`  
		Last Modified: Tue, 17 Jul 2018 10:59:45 GMT  
		Size: 40.5 MB (40532137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3c49788252ddc5eed9f08a0bb8279aef5643111f72b72de35923ae917d5ef1`  
		Last Modified: Tue, 17 Jul 2018 11:00:24 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
