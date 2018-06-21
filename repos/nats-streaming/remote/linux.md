## `nats-streaming:linux`

```console
$ docker pull nats-streaming@sha256:0a255689a59cb6fce96d73914106d74cffb822eb4ae1edd4105e715df98adb01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `nats-streaming:linux` - linux; amd64

```console
$ docker pull nats-streaming@sha256:6c75ed5439d82eafffafc7018decf0e4398b879021118e8cb62d742bde70652a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3831427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec380559f1aa32ea11d154212972c5cc61f3a5a2aaade889b916586250ac32e`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Wed, 20 Jun 2018 18:19:48 GMT
COPY file:8a334f64870c92646314b206223e9234ac6a5569f41c55f39a1b9da34a4d3f9f in /nats-streaming-server 
# Wed, 20 Jun 2018 18:19:48 GMT
EXPOSE 4222/tcp 8222/tcp
# Wed, 20 Jun 2018 18:19:48 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Wed, 20 Jun 2018 18:19:48 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:e2210244c825c96f599b3299680e8ac9a5f8137a160684dae70562d6ad54d9da`  
		Last Modified: Wed, 20 Jun 2018 18:20:02 GMT  
		Size: 3.8 MB (3831427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:linux` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:feb0026ff680458233ba37ccc8907c14238b6347fed15e37b793eaaed08edb00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3671761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb27065e8bb7eafcd6371b9e4b822359908e40110e527082ac8e74f1b03432c5`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 21 Jun 2018 07:54:26 GMT
COPY file:b3b69c0e9492e7ef0e795c07d8ab37f163551d1b32feff8883aee3a46fbfdf6b in /nats-streaming-server 
# Thu, 21 Jun 2018 07:54:26 GMT
EXPOSE 4222/tcp 5222/tcp 8222/tcp
# Thu, 21 Jun 2018 07:54:26 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 21 Jun 2018 07:54:26 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:a0c324d8973e8bc382dc7a499c67db3295cf4ffd134c7786cd426ef4b3b01e8f`  
		Last Modified: Thu, 21 Jun 2018 07:54:36 GMT  
		Size: 3.7 MB (3671761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:linux` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:cd9c3ab90d9fce20b5d3710dfde2b0a6d48208e7669a3da9c8e75f378fcad771
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3579790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08500d28c9cc6b59d4d5b63309f304c4d4c1f0c110e3c27cb690ed7af6aadc63`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 21 Jun 2018 09:31:27 GMT
COPY file:ede8bfe61ddd412304a65907babb6d1170ecd712b8c4420f39118191f15735db in /nats-streaming-server 
# Thu, 21 Jun 2018 09:31:28 GMT
EXPOSE 4222/tcp 5222/tcp 8222/tcp
# Thu, 21 Jun 2018 09:31:28 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 21 Jun 2018 09:31:29 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:5b022e822897af58e5369b3a6266514bd788477ce7b8bee9d2cc5f9c6e5921c1`  
		Last Modified: Thu, 21 Jun 2018 09:31:46 GMT  
		Size: 3.6 MB (3579790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
