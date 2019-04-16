## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:8da01a058ac750d261fb822490207f84bd754cec6876b3bef47e2f31812e3ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nats-streaming:latest` - linux; amd64

```console
$ docker pull nats-streaming@sha256:9a19f117c77e1876fcfb2000f1409e731b6b79e419f813221c2d5a57fc5c1f2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4785643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6752e20936976213df663b4074306339dafddd2e0e107a2722d262f8f8e5fff2`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Tue, 16 Apr 2019 22:20:30 GMT
COPY file:1dcb4421369c12aefe857c21aeb606a0cfb79ce2ef85a7fc58cf2f66ae762aeb in /nats-streaming-server 
# Tue, 16 Apr 2019 22:20:30 GMT
EXPOSE 4222 8222
# Tue, 16 Apr 2019 22:20:31 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Tue, 16 Apr 2019 22:20:31 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:cec9f3f6661fcf1ff77ce8c73cfff263585f7bb9d26c608fa97aae43d762f061`  
		Last Modified: Tue, 16 Apr 2019 22:20:45 GMT  
		Size: 4.8 MB (4785643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
