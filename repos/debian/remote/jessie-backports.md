## `debian:jessie-backports`

```console
$ docker pull debian@sha256:bd2a87ca07dfcc382595b6e496e6f1bbfe08b8260a13bf54613ddb29198c1e3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:jessie-backports` - linux; amd64

```console
$ docker pull debian@sha256:a28f21b8c50f7e036ba924bbb03bfebfab7ce799c54230a8d0bb3e70fe7adf3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.4 MB (54384877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70320f2fa4ff96cec8ab3dbb9090e1f78524c0098d3fc8b1ab682bb5cff74190`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:30 GMT
ADD file:3a1c24c30fbdad1dd44e5f38c66b10a2ddbeb517b2e441dbcf82c221b45b143b in / 
# Wed, 06 Feb 2019 03:27:31 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:27:34 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ff42297909573059acb8e981efbc12eff68641f8449f04470a4f218e53a1e80e`  
		Last Modified: Wed, 06 Feb 2019 03:33:25 GMT  
		Size: 54.4 MB (54384652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6478fe6b2a50d6f96d89ff34e53053f14a05ac1113c3a1bdf6a4c76fc552c07e`  
		Last Modified: Wed, 06 Feb 2019 03:33:29 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:ab2b5c57acf13b23dca556f1ecab91364df1da724a7233f7240cd364c8024540
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52574184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:698b7bddaa5567ba692980580ed6a384f1ba190ad8612c0053834ec2fae6550c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:50:17 GMT
ADD file:f7240d0a65ef2d644ee15c5e025f905b560025993e28d43bc039fc0be058217e in / 
# Wed, 06 Feb 2019 09:50:18 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:50:26 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8c0cf499fb576f37b8316e741bf49d5edf55eaede22b863897521a97f30bc614`  
		Last Modified: Wed, 06 Feb 2019 10:00:22 GMT  
		Size: 52.6 MB (52573962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59dc485e48075ec6fb802092a45b0a4a581c44d247a3ae942c608d19b7e2c9d9`  
		Last Modified: Wed, 06 Feb 2019 10:00:29 GMT  
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
$ docker pull debian@sha256:f3861bb80efc9e63d89779147f970276b06874b7957a0ab6f2b3c98706a42d7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54599818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da531989998c7287dd107747571cec09d615449374b5881efcf57267cb585a8e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 11:58:36 GMT
ADD file:7ee301fb17cb469725296eb34fd4c88b06658dab08befc626157c94e1b1264ae in / 
# Wed, 06 Feb 2019 11:58:37 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:58:44 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:0d2c60a99fbfd5389008365663b1914f58c65ad5174908669d2fd547813d4df9`  
		Last Modified: Wed, 06 Feb 2019 12:04:25 GMT  
		Size: 54.6 MB (54599595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b58d56baafdd83f735ba3e046ac008a5f6d93f589bf18b6ced94a19256c406c3`  
		Last Modified: Wed, 06 Feb 2019 12:04:30 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
