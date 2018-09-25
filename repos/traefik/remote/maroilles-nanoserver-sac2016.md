## `traefik:maroilles-nanoserver-sac2016`

```console
$ docker pull traefik@sha256:d138c4812f324465c45e8a7b81fc9f29af7a8fc5455c481add813ad4cb1f9b58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `traefik:maroilles-nanoserver-sac2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull traefik@sha256:2aa1b3e8cf27cdd4ad29278ce3ddef7970b773bdfb8c92d74980c241f88cf2e9
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.2 MB (452231768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac2dc54b2e6151d8298cc57adc0183f05596e4f3dae21f7938919ec43816c2a7`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:25 GMT
RUN Install update 10.0.14393.2485
# Tue, 25 Sep 2018 09:16:06 GMT
RUN cmd /S /C #(nop) COPY file:9cea0f646012d174ebf75b6fce9717e7e54f1be8351f7d32004f71fe9884e736 in \traefik.exe 
# Tue, 25 Sep 2018 09:16:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 80/tcp
# Tue, 25 Sep 2018 09:16:10 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 25 Sep 2018 09:16:12 GMT
RUN cmd /S /C #(nop)  LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.0 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b1b0c61be11f6d053756595f70211e6044137b150fc1cc23d52ee0852eaf9146`  
		Last Modified: Tue, 11 Sep 2018 16:53:25 GMT  
		Size: 180.5 MB (180533966 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:209df75c819f9748a77b840dec5fdddf07d6bc797b250197d2ee03e49387013f`  
		Last Modified: Tue, 25 Sep 2018 09:16:34 GMT  
		Size: 19.0 MB (19003966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bf1b828f5a63000df15676af7e4e7b92e583dc9f734a2d9013aa9ab31ef125`  
		Last Modified: Tue, 25 Sep 2018 09:16:29 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f58ab4ac17e4c99f0f43fa093c02b4ed7def82e24012b93468c237c5599872`  
		Last Modified: Tue, 25 Sep 2018 09:16:28 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b7324ba9494198b85200b687c0a63c4937c0a56d275f23aeaef7d9394a06d6`  
		Last Modified: Tue, 25 Sep 2018 09:16:28 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
