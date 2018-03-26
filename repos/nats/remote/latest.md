## `nats:latest`

```console
$ docker pull nats@sha256:8f68a04f65540ea6e4f9aaaa8937f1fdd046f6724678a7a67d485b1875318eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:a15dc89056a15f2d174659c4c463ce573a5c3d09e9425fa86e88b2bf00408540
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2475191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c6bb90d1d3873477a7485375736ade43cbe3020ba886ec535314001672dbc25`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Mon, 26 Mar 2018 19:59:03 GMT
COPY file:91e25fd91e4246dd04fc79d904f6fb141e41bed3d70b72cbc39b00828b404a95 in /gnatsd 
# Mon, 26 Mar 2018 19:59:04 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Mon, 26 Mar 2018 19:59:04 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Mon, 26 Mar 2018 19:59:04 GMT
ENTRYPOINT ["/gnatsd"]
# Mon, 26 Mar 2018 19:59:05 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:3e2cbb976f15111342a6bb6a66a3eb1af64700fd84016cf434fc7b5a8c3c62d9`  
		Last Modified: Mon, 26 Mar 2018 19:59:28 GMT  
		Size: 2.5 MB (2474714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d370c5b7a46c5c5274930e92ea32bc964026c1fa18e3db3d300227c4242becd2`  
		Last Modified: Mon, 26 Mar 2018 19:59:27 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:9925e4bcc40d1c8edfe9e8acbb686a282b2d1685b62941ba62d7555ab761166e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2643bb9e12c95b9fb06eec38f16fe7ae8802e58fff5232881a902140437db6be`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Mon, 26 Mar 2018 20:03:58 GMT
COPY file:01d8875dccc82d47e37e9aff807f8bb02539dd8a98e07833faa1c0a4efc4b9f5 in /gnatsd 
# Mon, 26 Mar 2018 20:03:58 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Mon, 26 Mar 2018 20:03:58 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Mon, 26 Mar 2018 20:03:58 GMT
ENTRYPOINT ["/gnatsd"]
# Mon, 26 Mar 2018 20:03:59 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:ace5839e3c653b5d6cd0106302ff353822074540c4abb9251de555430d3e1190`  
		Last Modified: Mon, 26 Mar 2018 20:04:54 GMT  
		Size: 2.3 MB (2310418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a71e087fed0553ec93731bdaa1c42bb0f850d85f4555a5e4743d4027adcc19`  
		Last Modified: Mon, 26 Mar 2018 20:04:29 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
