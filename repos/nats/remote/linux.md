## `nats:linux`

```console
$ docker pull nats@sha256:971eb6de68c0ecd7d2d459826bb3d762517265716295e38c709219a1ea65b48c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `nats:linux` - linux; amd64

```console
$ docker pull nats@sha256:7bbc31229601059b39876f74de190d8c91a94993c8f222a7146334abd3857c84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2469522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adf3ecbf9f39abaea9fc1dcfcb23850b3a655c3970b0f191371c25e20ef8d46`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 03 Nov 2017 23:13:39 GMT
COPY file:63ad17619d77b10929e5a355d42e4e4635cf82cf72bdd52c317304c905228e98 in /gnatsd 
# Fri, 03 Nov 2017 23:13:39 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 03 Nov 2017 23:13:39 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 03 Nov 2017 23:13:39 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 03 Nov 2017 23:13:39 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:f169c9506d7479c0ce61575a67c1639e6dd6fe19ecd9e9280470fa0550ce87d2`  
		Last Modified: Fri, 03 Nov 2017 23:13:45 GMT  
		Size: 2.5 MB (2469046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9eff5cafb0142f09f1a6ff709e01b177b4c897ee8d72c7deb2dafe2ee3d084`  
		Last Modified: Fri, 03 Nov 2017 23:13:45 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:6dd43224063e2b9046aa41c50dc9fabe596210af53cd4eabaf41aa226ce9fd11
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2329240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a610dcf5cdc0db5d9c5f51ff7396a1427614aa623ecb5d7065d89155aa9d9e6`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Wed, 27 Sep 2017 20:16:10 GMT
COPY file:a0e52c4419ba6ab9831aee70be5514dae9704c507f99b282eb6f96a67f2fb0c9 in /gnatsd 
# Wed, 27 Sep 2017 20:16:11 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Wed, 27 Sep 2017 20:16:11 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Wed, 27 Sep 2017 20:16:11 GMT
ENTRYPOINT ["/gnatsd"]
# Wed, 27 Sep 2017 20:16:11 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:5f27a895f642168fda2e117c11c900354afc849edd5b10542b6c4a546472297f`  
		Last Modified: Wed, 27 Sep 2017 20:16:20 GMT  
		Size: 2.3 MB (2328763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c868785b92f6ccc57fcf787299f2351b7e3282f2766bb6e823a2b39a15ccec7`  
		Last Modified: Wed, 27 Sep 2017 20:16:20 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
