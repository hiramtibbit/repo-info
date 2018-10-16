## `debian:jessie-backports`

```console
$ docker pull debian@sha256:afdf9fc4d6cf2f1cdc4829c048708d7ecad2c56fd14d1519e34b56a8ad0ab9c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:jessie-backports` - linux; amd64

```console
$ docker pull debian@sha256:b9074d3a885b90a491ff1c4354e5a62fa2242fe02eb8c82193b75ed113afc37b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54252351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2abf53b33688a03f9e7e98c24bd53091b328c8af0f8e1b10b1044ada348fe7ce`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:20:36 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc097f195a9e92d9ae8016d6f56c17614b58b817812209aa99cac864f45a7f6`  
		Last Modified: Mon, 15 Oct 2018 23:29:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:ee4afcc6d563116cff503ec3fe8a1dc0516183260438fcefd00ca58cee373ea6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52448173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6be069aaae8d9698e68901f223eab407fbf07efa23558861de1b49076dee92`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:50:03 GMT
ADD file:7b66da06b04342d6312147be471b07c9280814a36b863bd49a0217020323e65e in / 
# Tue, 16 Oct 2018 08:50:04 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:50:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e4274eb716467eff2e7b204e8b5c7870ed82dd4fc89f821939b7f3017c84480f`  
		Last Modified: Tue, 16 Oct 2018 08:59:33 GMT  
		Size: 52.4 MB (52447946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8023452cf8e0f8c0cad858252852931388388174876136debeecfe648c2324`  
		Last Modified: Tue, 16 Oct 2018 08:59:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:72e4092e78213281e06a27d3ad3cc946d18403f9ca000ab8aa883c7eb97c7747
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50188612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0910af0b8d50b1c86696a04f5f04b3f242845e6dd64df5a02ef951cdbf839c31`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:11 GMT
ADD file:807e1499dd3578811c9df2630d381e29d52684675650039494a60eecfbbe9027 in / 
# Wed, 05 Sep 2018 11:59:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:59:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:16b1b4bf69814b0a3f82bfd8b5c3117909ae89accabd8bee13a723080db56a75`  
		Last Modified: Wed, 05 Sep 2018 12:08:24 GMT  
		Size: 50.2 MB (50188388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9821467049fe747d3b121f00317c837ca233d55e46faeedd2e2c08546775bd1`  
		Last Modified: Wed, 05 Sep 2018 12:08:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; 386

```console
$ docker pull debian@sha256:ae3a7589256481c868ade87895d2ccb997827a91e9d4a04eb7826e0c0de427a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54484277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7fe11260db5fc7a7a289c8d935ccea095e57b9ad4cf72a1a5c7891662d09f82`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:39:59 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3654a2579dcd3de3ee0a090a16019a8746b583806215a413853a4ec7040ad54d`  
		Last Modified: Wed, 05 Sep 2018 10:48:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
