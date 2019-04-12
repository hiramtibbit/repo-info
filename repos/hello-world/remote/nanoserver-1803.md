## `hello-world:nanoserver-1803`

```console
$ docker pull hello-world@sha256:69e72ee6a18723966e8e9565e9b13e9537143af8739667b94403b983610978f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `hello-world:nanoserver-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull hello-world@sha256:04efdea6de289ea7f3d9ddbb8317a82bcd0cfefb397a68a42d53af0737fa74b8
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147646323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad2bd7f2fb97e3b0c828143cc859288117bd0efa0fdb49c43df4a179afd8e883`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:07:58 GMT
RUN Install update 1803-amd64
# Fri, 12 Apr 2019 05:20:55 GMT
RUN cmd /S /C #(nop) COPY file:7b1666bf57eab9af43a34ac3bff0f0d60d153096912881d488e2dd82ff129a57 in C: 
# Fri, 12 Apr 2019 05:20:56 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:e46172273a4e4384e1eec7fb01091c828a256ea0f87b30f61381fba9bc511371`  
		Last Modified: Mon, 17 Sep 2018 20:23:30 GMT  
		Size: 92.8 MB (92818888 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:14d968660b11f1d1cb8266e87d2ce9778b2346afb6f2ef34551bcce0b35f051c`  
		Last Modified: Tue, 09 Apr 2019 18:25:01 GMT  
		Size: 54.8 MB (54824826 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c3fd826897a14e6191edce0d257ddffa658546d535f265d40dabb8a58116e4a5`  
		Last Modified: Fri, 12 Apr 2019 05:21:28 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4768c6488139c824f6e38a2ded94af2bba02540eda334f49dc6fe5211240dc`  
		Last Modified: Fri, 12 Apr 2019 05:21:27 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
