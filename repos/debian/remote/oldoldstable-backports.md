## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:47a930fc9947da619f65e3f029444b142143d04623de429bf8ffb84e63e4ee35
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
$ docker pull debian@sha256:91dbb4fe47de7003be7b5e33b85fc6fead889ecb197f8acf54d46af4d1dc1e12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be47db7097873f715a33296da6f3b0c2daa79bd5f4efaf08d321bd465af3b6c8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 12:00:06 GMT
ADD file:7a8c68924d28cffaa64f338f7ce455ef64e10d4a0e2af39e01fc9de6312c5530 in / 
# Wed, 05 Sep 2018 12:00:07 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:00:17 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:9c0af60cac4369b963b5183e48d6e7a1086fe57ed370c4e0df41d27242ab0cd0`  
		Last Modified: Wed, 05 Sep 2018 12:09:38 GMT  
		Size: 36.6 MB (36620316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb283238110855df5fb1aa2792d6b56658bf62f3baec1518a6b8cf94346ddab`  
		Last Modified: Wed, 05 Sep 2018 12:09:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:4f35976613132f1ef4a78cb2e45e292f050efbccb48849f614a090a76999bb1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2456b8b09730aad4316e85188f73e35e4fd1ae116d90ddfcd390b2245e9048`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:29 GMT
ADD file:97e0114626d9f68dd2c6085b1e8cce3bcb1f43a92aa00cdb04dc4c08f49073b7 in / 
# Wed, 05 Sep 2018 10:40:29 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:40:34 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:7da6cc10225e50e36a8876927bf6e7fb346dde3eeb17365cfc287ba12f15c758`  
		Last Modified: Wed, 05 Sep 2018 10:48:48 GMT  
		Size: 40.5 MB (40532877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9b286a5b583135fa2a67c66875be9f52151a87ceb49559e7bacb862b0503b7`  
		Last Modified: Wed, 05 Sep 2018 10:48:55 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
