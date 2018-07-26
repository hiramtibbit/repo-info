## `cirros:latest`

```console
$ docker pull cirros@sha256:afbb078f14b467d99e9de0707de62e0e08dce154e5c6e35d62e093abff839175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `cirros:latest` - linux; amd64

```console
$ docker pull cirros@sha256:1a896e2ecba268edef2c63d42e2006d9bfc05da078532d518b2549e78bee53c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4898133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1ecd8c2e01b5e439f2f20e4310738b14438e7d4ff674146128fe334a044d78f`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Wed, 25 Jul 2018 18:19:44 GMT
ADD file:c47735fbd8ec76ba402a2ea81619e620ec0aba6cae0f23373a9c1ecc12bfb53d in / 
# Wed, 25 Jul 2018 18:19:45 GMT
RUN rm /etc/rc3.d/S40-network
# Wed, 25 Jul 2018 18:19:46 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Wed, 25 Jul 2018 18:19:46 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:3d6427f49fe318fc8062066677acb50b2f755b716313f238de517f2b751f15b9`  
		Last Modified: Wed, 25 Jul 2018 18:20:09 GMT  
		Size: 4.9 MB (4896732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f41e3d981b96503c1c04e3903bd3252485b30d1a19f07fd7f5cd2829c86047e`  
		Last Modified: Wed, 25 Jul 2018 18:20:07 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f8ef4ed3d72a69f7afbf84d3015745f2c0a1e6901a1db18ca0b6d877d34912`  
		Last Modified: Wed, 25 Jul 2018 18:20:07 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cirros:latest` - linux; arm variant v5

```console
$ docker pull cirros@sha256:491ee29e6cad06d7cd084d3928b4de3299fdba388e3ccd0254b54c20862898ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4552660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d107b8c671ecb831774affbe0070318e5311dc25cf29f100e72e8c3bbc191215`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Thu, 26 Jul 2018 08:48:46 GMT
ADD file:d35f350c3d3747490f12a69dc7dabbba0bdf42af1e705b2ef124dc4730bb29f1 in / 
# Thu, 26 Jul 2018 08:48:48 GMT
RUN rm /etc/rc3.d/S40-network
# Thu, 26 Jul 2018 08:48:49 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Thu, 26 Jul 2018 08:48:49 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:b94ac560ff64bd44a0a5ac3eafcaa50e94130ea2bb72aaab45c204d7d00f7190`  
		Last Modified: Thu, 26 Jul 2018 08:49:08 GMT  
		Size: 4.6 MB (4551256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ff076465e88dcb4d43a7da11d867e730c9b2b0162d8cea961c4abf4fdc6f809`  
		Last Modified: Thu, 26 Jul 2018 08:49:06 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f01531d70d29f81f67888909648bb09cfeb78785b897048799acd4fd16b36ba`  
		Last Modified: Thu, 26 Jul 2018 08:49:06 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cirros:latest` - linux; arm64 variant v8

```console
$ docker pull cirros@sha256:810d5176ef12243043d309695c14269b63dbb1e07441263a410d99757b81a2fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8180883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f0446752835a8cf5217534d23ccee4ae9f1e01c9549e54f69a96a9ba4fcdb84`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Thu, 26 Jul 2018 08:40:23 GMT
ADD file:fd61ae7812080b0d055ec1da6c4c3a9058c717baa40bfe0f2edab650ca50aa42 in / 
# Thu, 26 Jul 2018 08:40:26 GMT
RUN rm /etc/rc3.d/S40-network
# Thu, 26 Jul 2018 08:40:27 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Thu, 26 Jul 2018 08:40:28 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:a2cb5895ad559485b06ffc60454417d3e9585b90189d83cd322a609924c9b89f`  
		Last Modified: Thu, 26 Jul 2018 08:41:06 GMT  
		Size: 8.2 MB (8179477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc52f8c05de83650b63a3b9bcfbee00096e55efa093d53a6fe4fe1f303789c7a`  
		Last Modified: Thu, 26 Jul 2018 08:41:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e7e8d0b83455a2612f469373be735045e4795ec3917aab2189588edc3e73ca`  
		Last Modified: Thu, 26 Jul 2018 08:41:03 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `cirros:latest` - linux; ppc64le

```console
$ docker pull cirros@sha256:23bb04ad34dde0a9482d78a8eee177b468e842ea35b4f048ed9af2f864ca16ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8631315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3779987c4e3a6a820a3c99fecf2110fbb55cf138a207150ef8a9db81a690ab1a`
-	Default Command: `["\/sbin\/init"]`

```dockerfile
# Thu, 26 Jul 2018 08:16:54 GMT
ADD file:48673b15a50b1958dd9d689bbc5af6187c49cfceb67e67399dd55f23721a89dc in / 
# Thu, 26 Jul 2018 08:17:03 GMT
RUN rm /etc/rc3.d/S40-network
# Thu, 26 Jul 2018 08:17:08 GMT
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
# Thu, 26 Jul 2018 08:17:09 GMT
CMD ["/sbin/init"]
```

-	Layers:
	-	`sha256:b9cc78c330c94db6b434c47d8c31d390d5d7907ff6f5cd248b069e300984a8f1`  
		Last Modified: Thu, 26 Jul 2018 08:17:30 GMT  
		Size: 8.6 MB (8629904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c78701b15f15302094237753457e5c6c733baee7a8a4e121a3fe8ebda53f6c7`  
		Last Modified: Thu, 26 Jul 2018 08:17:28 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f94b09c7b21d4ad038fc4ec2b52592b52aa3ffee20139b1a4c1a92a8b2ecf3b`  
		Last Modified: Thu, 26 Jul 2018 08:17:30 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
