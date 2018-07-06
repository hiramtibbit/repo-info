## `nats:linux`

```console
$ docker pull nats@sha256:ea8e9e283fc2e33f81b28916ff403d3cb6b6a45390bfcc9d84e13646319f1f3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `nats:linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:81347e6a6e3f50b1d6edd6cdf0378e0791338f8202373f043b22f199ba246bf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2428752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba6ec78ed907929166e620e562e39b0bd944ecf9b20adbc0f073d4c9294c8cbd`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 06 Jul 2018 07:56:17 GMT
COPY file:c0709a77e10efcf9a4d60326007891eaf5ae3c3d235900d47bc5d0b69e8c28ac in /gnatsd 
# Fri, 06 Jul 2018 07:56:17 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 06 Jul 2018 07:56:18 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 06 Jul 2018 07:56:18 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 06 Jul 2018 07:56:18 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:c06c7f58f05d0800f5963beff7b7edcdac849c4e9ecc1d15cf5f3a8489ef7bad`  
		Last Modified: Fri, 06 Jul 2018 07:56:27 GMT  
		Size: 2.4 MB (2428277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4032a9ac7b62e1c18b158ae4a3ddeff3db685fac457415e1e6f12adf7df9d991`  
		Last Modified: Fri, 06 Jul 2018 07:56:26 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:e7b0f21856e24ea96397cadf0de9d6ca28fc97dcbf2e1a332eff8eb25ce761f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2377634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b452cb3409a51686a00b7e659ebfd624b77e3aee3c558580d198d1e1874171`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 06 Jul 2018 08:43:20 GMT
COPY file:738460bb407aaf2e699352a55a1b04147a62a3da1d5c34b59bac18d24ff1eede in /gnatsd 
# Fri, 06 Jul 2018 08:43:30 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 06 Jul 2018 08:43:30 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 06 Jul 2018 08:43:31 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 06 Jul 2018 08:43:32 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:5c64bb4f130cdcd5847e7b052b79af63283baed5777eb45bde84572dfcbbc790`  
		Last Modified: Fri, 06 Jul 2018 08:43:56 GMT  
		Size: 2.4 MB (2377156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8afd130607a2dcc5e817a803e9921a34a1c64ec6df68664bf5d49556736cb2`  
		Last Modified: Fri, 06 Jul 2018 08:43:55 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
