## `nats-streaming:linux`

```console
$ docker pull nats-streaming@sha256:6a17093bec36a768fef68964ccef26fc61470e2c33c203145fdeb44eb20201cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nats-streaming:linux` - linux; amd64

```console
$ docker pull nats-streaming@sha256:6b0c76c6a6570ad066a20a32d0de15e4e023524c5eac7076fa765ec91a12ff67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4642863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdbad19bf11e580b1ac85e830909d8f76d69afaa5ea7c9bfad9b11e9722852c8`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 18 Oct 2018 00:19:49 GMT
COPY file:b1d07409ee412c0b1d850da7b2e7c8d746ef152bc800f60b65aa8991eb1c490b in /nats-streaming-server 
# Thu, 18 Oct 2018 00:19:49 GMT
EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 00:19:49 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 18 Oct 2018 00:19:49 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:af90b4afe8a451aeb8fd868d23b13f9e57c712f79afce23afd9b7474109bab07`  
		Last Modified: Thu, 18 Oct 2018 00:20:04 GMT  
		Size: 4.6 MB (4642863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
