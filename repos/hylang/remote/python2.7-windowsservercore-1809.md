## `hylang:python2.7-windowsservercore-1809`

```console
$ docker pull hylang@sha256:50a774ceef1fe8b1aee5235143bf39b16b3276b4033f5e666ff5a81a0a4edd2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.504; amd64

### `hylang:python2.7-windowsservercore-1809` - windows version 10.0.17763.504; amd64

```console
$ docker pull hylang@sha256:58ad78677ffcf6ef9e4502be6c53ce7f5d80241017c080e1f2039a751ee2cc3e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2125742633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99431a923614aa34a87a602803b8377e38eb2eb60aca785d0bad56899dea7a41`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 18 May 2019 18:40:00 GMT
RUN Install update 1809-amd64
# Wed, 22 May 2019 12:57:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 14:42:46 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 22 May 2019 14:42:47 GMT
ENV PYTHON_RELEASE=2.7.16
# Wed, 22 May 2019 14:44:40 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:44:42 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 22 May 2019 14:45:48 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:46:19 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 22 May 2019 14:46:20 GMT
CMD ["python"]
# Thu, 23 May 2019 00:22:42 GMT
ENV HY_VERSION=0.17.0
# Thu, 23 May 2019 00:23:26 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION)
# Thu, 23 May 2019 00:23:28 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b16cfeeaf4b37af9fc146f7043ceb629c1bc50ace967227817e50e47f4a71529`  
		Last Modified: Sun, 19 May 2019 19:09:22 GMT  
		Size: 544.4 MB (544441311 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:51cd7ddd4054cb845626f99a0b0388fcfe1f6e9521bd4a1a8337620d6452ef34`  
		Last Modified: Wed, 22 May 2019 13:24:53 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94981e937484fec59d5fc0a429db37f7d4399577fa536c40f352e54a803ce60f`  
		Last Modified: Wed, 22 May 2019 14:57:42 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a60ac0dbbe39852ba4cad50e19c9d0981205ff1b2c0368c5e40e954a17dfea5`  
		Last Modified: Wed, 22 May 2019 14:57:41 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42c1fde6a395bb80faa482ec6b90f6efe79415c4d3b2fa1764f18c734ceef69`  
		Last Modified: Wed, 22 May 2019 14:58:00 GMT  
		Size: 38.3 MB (38344395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e31be28b245b8f633e65a089200f5a418cb920d1ca44bc2d9b1f89e6963f0d`  
		Last Modified: Wed, 22 May 2019 14:57:39 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0294b26795ca05c348d898778a8762e8c06247dc9a9c3a7e052c249c0324f9b`  
		Last Modified: Wed, 22 May 2019 14:57:51 GMT  
		Size: 4.8 MB (4846525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f9f442bef647a05c83d4deae675de8ae132589fc7c5e0ef001b5e0a5c5959f`  
		Last Modified: Wed, 22 May 2019 14:57:40 GMT  
		Size: 2.4 MB (2363666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07246d1dfeae11aba1abb0f547a99a8f29d58df7b97195bf44ae09d758c1fd2`  
		Last Modified: Wed, 22 May 2019 14:57:39 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253de5b71ad0ae5af728c70220cd3636d313ec289da6bab862839464fc543765`  
		Last Modified: Thu, 23 May 2019 00:30:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a6285b051b40618ee0e8b63145876819e0b5331f7c2ab3423fc106ff41b272`  
		Last Modified: Thu, 23 May 2019 00:30:38 GMT  
		Size: 1.1 MB (1052942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfb9455ff642e701474abb186909389dc3f8965eb71ca6e5cda5372ee60f9c7`  
		Last Modified: Thu, 23 May 2019 00:30:36 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
