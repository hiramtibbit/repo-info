## `nats:linux`

```console
$ docker pull nats@sha256:ea920cb5d2fa26991ebd5645d75c0dd9c68816b81bab29e452661dd5ad284c27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `nats:linux` - linux; amd64

```console
$ docker pull nats@sha256:28eb780ab00a512b20c96eff87da342cd8f6319080846352372f461211092c8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3049391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a6f5ca1594f2bb8f97f1aa1c5d97dce54fbc913aab48838e712e741883340c`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 31 Aug 2018 18:19:47 GMT
COPY file:d5a83c895bb36214cac7d41dfc7fba9b973e67ff76e01fc1c2a4fcf4735c57ad in /gnatsd 
# Fri, 31 Aug 2018 18:19:48 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 31 Aug 2018 18:19:48 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 31 Aug 2018 18:19:48 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 31 Aug 2018 18:19:48 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:f3780679080c6d9005202a4f1fb264409c4b7d87c78779f083a163ca29b8d7bb`  
		Last Modified: Fri, 31 Aug 2018 18:19:57 GMT  
		Size: 3.0 MB (3048914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0525adc546e4edb91f093fcf7349480a6d1f95fb985a788ac9a55310c8ec29`  
		Last Modified: Fri, 31 Aug 2018 18:19:56 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:429d1935f323c9a5174070a16e6c8a91dc6dbaa50905890e5aa6478b25196aca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2858289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:011c70ca43801dc212734cd714b1d3a09f27c9937f7c61b98511f4e0ea58e039`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Sat, 01 Sep 2018 08:01:55 GMT
COPY file:56a959227abba5248c58608ff99653810af244a11d6c5713091af1d84fc39c38 in /gnatsd 
# Sat, 01 Sep 2018 08:01:55 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Sat, 01 Sep 2018 08:01:55 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Sat, 01 Sep 2018 08:01:56 GMT
ENTRYPOINT ["/gnatsd"]
# Sat, 01 Sep 2018 08:01:56 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:46dcd44345d3a5e9651cdeed2296efa111bc9622ecf328aadbacd677f0b74429`  
		Last Modified: Sat, 01 Sep 2018 08:02:08 GMT  
		Size: 2.9 MB (2857811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df871aaa7657f720a6fba2814f184aee8406b7433dd4f92c6a372a46ca1131a4`  
		Last Modified: Sat, 01 Sep 2018 08:02:06 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:26d95c924922a52fa572f3dc7e723fb01290f096bd74bce779f369d396d204a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2787722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bed0c21fdffbf58a435ec0d0caf49ab19ecbcbbe46a5277ce7a13e6d2cf3406`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Sat, 01 Sep 2018 08:54:37 GMT
COPY file:4df4d4aaa4168abde97fce56b0670f0ea1dd6ce6254e02e785cdc90072551064 in /gnatsd 
# Sat, 01 Sep 2018 08:54:38 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Sat, 01 Sep 2018 08:54:38 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Sat, 01 Sep 2018 08:54:39 GMT
ENTRYPOINT ["/gnatsd"]
# Sat, 01 Sep 2018 08:54:40 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:ae5821041f2acf0a193d1f47f25adcd7577be38acadb3f27fdbf472cb5414646`  
		Last Modified: Sat, 01 Sep 2018 08:55:13 GMT  
		Size: 2.8 MB (2787245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed5988f07f52153fd46aaadc8406cc221ca76f949dde5f77a90475ac5c36a95`  
		Last Modified: Sat, 01 Sep 2018 08:55:13 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
