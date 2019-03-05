## `mono:latest`

```console
$ docker pull mono@sha256:feaf7edbe640c0a5c88ca140dc3258af5aeacdbcdc084d4e65bb2922f43681dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:ede7814a3c1e06474f33e9c18062060b694ff60c874ae151a4e06934b4608718
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223995332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1229bff40f23d49eea06436b60f55b200b030b57a82349e79d8290a25f2986b9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 05:42:00 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 05:42:15 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 05:42:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 05:54:36 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab64c66b580c24bc383b7368bf8c09ebfaabec5b28f330e11006c9f6fbd2d79`  
		Last Modified: Tue, 05 Mar 2019 06:00:22 GMT  
		Size: 244.4 KB (244447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d202d6f45584c525139f0711e2ce66fb5a6afe523fee62c97e086698a258fdf`  
		Last Modified: Tue, 05 Mar 2019 06:00:37 GMT  
		Size: 61.2 MB (61150410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee3c36de170c8e31357ee184faba70f1a485d6a5bbec8009d3b65c71db04d56`  
		Last Modified: Tue, 05 Mar 2019 06:02:01 GMT  
		Size: 140.1 MB (140104441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v5

```console
$ docker pull mono@sha256:5bd61ad31fc82803ecb546e86b5c197d70604d9e841523459177ba63d8d965e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171271749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1110e3fa46e6bab8f886a51e167e2cdcb5616942f5b19e7683b3c370a22e4459`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:25:53 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 10:26:12 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 10:26:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 10:33:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c70aedc6c34c75c59b4ab87a1a8b456b918ca07c6059a90e37aa58e26403ee`  
		Last Modified: Wed, 23 Jan 2019 10:45:11 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5585fac96fed78cff92700c54e6df32c7a69879896fa54549b7a5d668565784`  
		Last Modified: Wed, 23 Jan 2019 10:45:21 GMT  
		Size: 24.3 MB (24274128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2d06888de1b3bd405015c86a54ebdb91deed28326a7c475280a37b8a7752f5`  
		Last Modified: Wed, 23 Jan 2019 10:47:25 GMT  
		Size: 125.6 MB (125571328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:ff52df114453f30769260703e942d1ff6e661583da47d60e15614331aaa5b1b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167334005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e015d0a90ce959b094e11cf58f6395735075e7b2a05d1e71339ba8a5c15659f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 15:51:50 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669bc2532ebc4056c4b7f89abaefc6bfccfdec704856b7d399921f8ccd38a6f7`  
		Last Modified: Thu, 07 Feb 2019 16:04:18 GMT  
		Size: 124.2 MB (124232579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:2523470d4978007402f86e80d912ae53149c31748aaba1c6404da32056d6da16
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188159263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778c3bc57dc14f6063344ee96510bfb914c9e78c6d9847fa8ccafc84615b3c74`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:53:19 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 21:54:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:55:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 22:07:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d1514bbd3e778841de53246a789ac685d10289697578706747939a3fbb6687`  
		Last Modified: Wed, 06 Feb 2019 22:28:50 GMT  
		Size: 244.4 KB (244446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f575b8c41c9c7c9e02c129f8c91a998b072d461e9577cfd9d8776fcf73fcd75`  
		Last Modified: Wed, 06 Feb 2019 22:29:03 GMT  
		Size: 28.2 MB (28223359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b2b54baaf344cdb81cf7126b8ef2acd8d590b7724b62ac56960cae31cafb35`  
		Last Modified: Wed, 06 Feb 2019 22:30:59 GMT  
		Size: 139.3 MB (139341299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:80475efe09cafd3d455f960bb5bea53e458550deb1015950197ae47de06b90c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233038175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7ff8bf223ef7952fc140b228462b492840ef8759bc5b616967e7bc0f649ba9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 02:10:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c9b0c4bafbd1780cbf8703de2e03b24f08d0037e3ce0fb869246b59015ef15`  
		Last Modified: Thu, 07 Feb 2019 02:14:19 GMT  
		Size: 145.7 MB (145691633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; ppc64le

```console
$ docker pull mono@sha256:37ddad5a1483d30933f534095b6e5bf155fcd9fb72d0bb9411b519160261561a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173622133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9e008fbc1f4fe1ab615d77ad7ec2d330dc41ad9e6b478b614f55120692b8d1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 18:00:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67104fd6232aa1fefa6b6e15870bb471a2ed5d07225f32d165937f956c8c73a2`  
		Last Modified: Wed, 06 Feb 2019 18:08:07 GMT  
		Size: 126.0 MB (125985579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
