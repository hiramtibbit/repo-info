## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:619cf3bb4f1603195cc2065697f754889a2a59515a46c26c9a8fe1c8cc744f8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldoldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:adcef1e1bd67959685f7e387a047272165eb7238132742816702b4aeaf95db73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19737b1e94c9e3aca8473352135207fe07aaca714f5b7cbb09df9fb8a20349e3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:54 GMT
ADD file:640ca35c5d18a4bf573ae46f0bc1cd128f20e893b1451312d9def38da0a8c075 in / 
# Wed, 06 Feb 2019 03:27:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:27:58 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e846b6d701b77e2ae343d80853d39edda81831d6da50ca5e5c12c3f16563dfec`  
		Last Modified: Wed, 06 Feb 2019 03:33:52 GMT  
		Size: 39.3 MB (39339704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5773a1f80dd4b0d12a9b9e11fd52e127ac1da6ae83775c119e68cd5848dd6d4d`  
		Last Modified: Wed, 06 Feb 2019 03:33:57 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:f1731f49b4741399386770f904510eb083184b3669e9849c6429b9d4abc0ca4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37992572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f527a86c1681c6984f8a64f0b25571012b993e8fe1ca21742f1647f70893b27e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:51:00 GMT
ADD file:1b7fa64ad795d90163cacd96929e5eb73d02e5c9c476b03b8827af3669ef575f in / 
# Wed, 23 Jan 2019 09:51:01 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 09:51:08 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f953db2907f9b560ca3b0e04e9e01246333e6e0988b72a440fcdf979e6788a18`  
		Last Modified: Wed, 23 Jan 2019 09:59:42 GMT  
		Size: 38.0 MB (37992346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601e9c2a686d4a04ea7bc9709e9d240708893ef7e10b10d00c17c6e5bfcc15c4`  
		Last Modified: Wed, 23 Jan 2019 09:59:47 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:d5ea0b8f374a2c5841fb5b141753988a9be3aecfe4306652f9a749c98d7b28e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52491a8e4dee8b9bd7104f67bf17951094d8c73659b1a36f3b4bd22f1b0cd26`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:25 GMT
ADD file:65c8afc6a4afd216e62e6de2d6dfca9cbe568496550345ac0b3131e9ddd2768d in / 
# Wed, 23 Jan 2019 13:00:26 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:00:32 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a716d6fad8580221ca89df892fba50f501f6cd3657be0a129bd263217e4c9553`  
		Last Modified: Wed, 23 Jan 2019 13:09:56 GMT  
		Size: 36.6 MB (36620017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f384917f7f67c9a2adf36fd9f318e9004c19cf84dfcd388436826a7316e8312`  
		Last Modified: Wed, 23 Jan 2019 13:10:01 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:286ef8d25fc22424a0a7d1564829dddc0f3e4e8b4ccacc3483d2b84d4556e602
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b34eeeea822c6f64a2f047864ab448cc666b705b54d57628f0f950b50f7f245`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:44:24 GMT
ADD file:6e7501b6afe448cc8383b4fa2b8d1c6d59c571b8d971f0f0fbb0215a93246128 in / 
# Wed, 23 Jan 2019 11:44:24 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:44:33 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:231c22a7f6c6225d57e475a8307f321dd62567fc778dfaef83300a6d63d5ec46`  
		Last Modified: Wed, 23 Jan 2019 11:59:54 GMT  
		Size: 40.5 MB (40533283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d9f389adf205b93c58a76dd7db89817127ad7978a20b293d67c874517773b4`  
		Last Modified: Wed, 23 Jan 2019 11:59:59 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
