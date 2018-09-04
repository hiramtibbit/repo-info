## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:cce0971b00b801e92d3d2847ab02639b4b9476d314d55f8d9d4255aaf69a2779
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
$ docker pull debian@sha256:fb50dab4ecc64bc0d86276744064c3255cd5cbc5f5061bc64abc2fbf800d82fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37992963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:742c857442aadfcd2c1136d939cf03a2f2d4ea3bc2c973f819a54cd364fe5eca`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:51:31 GMT
ADD file:f6b139149a813b3b31da2117ca2b7ed61a000221f8916ef75c105d769362e196 in / 
# Tue, 17 Jul 2018 08:51:32 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:51:50 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:30079f6166bf8c34cc49c5d093a9aa41ef8161beea0ade9ee810937ae21c675b`  
		Last Modified: Tue, 17 Jul 2018 09:04:04 GMT  
		Size: 38.0 MB (37992739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84dd89a078961e3f7b296a1a58afd4f23b2b7a0d684183dbd595239e0ca6067`  
		Last Modified: Tue, 17 Jul 2018 09:04:22 GMT  
		Size: 224.0 B  
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
