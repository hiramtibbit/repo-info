## `hylang:python2.7-windowsservercore-1809`

```console
$ docker pull hylang@sha256:f2927635fc1c3946aa33e1c1df4d41d57e65a568945c4009d5e416cd47d3a3be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `hylang:python2.7-windowsservercore-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull hylang@sha256:b21733c9b579b81079dd6189672e0457f3c0ab7acd73c4a6c6e72549098eedb3
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2432701379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3824d69be4e2a1406e751766008aa380f2fc2a34596d1d3dbf67b7f7bf16e5b3`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:38:55 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 12 Jun 2019 14:38:56 GMT
ENV PYTHON_RELEASE=2.7.16
# Wed, 12 Jun 2019 14:40:43 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:40:44 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 12 Jun 2019 14:41:45 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:42:15 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 12 Jun 2019 14:42:17 GMT
CMD ["python"]
# Wed, 12 Jun 2019 18:33:19 GMT
ENV HY_VERSION=0.17.0
# Wed, 12 Jun 2019 18:34:00 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION)
# Wed, 12 Jun 2019 18:34:02 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259a7bc6de02343ff5e143bba2b9cde6d9ac9dbadea69517c6bd5dbb9d1bc226`  
		Last Modified: Wed, 12 Jun 2019 14:51:25 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a6b49aeb9f567643919151bccd17ddd0440b4523e5efa0bd9b3d26595cca0`  
		Last Modified: Wed, 12 Jun 2019 14:51:25 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef909845babd217e60367fd914696394b601b2e2e2fc629872e7ea8b8e51460`  
		Last Modified: Wed, 12 Jun 2019 14:51:46 GMT  
		Size: 38.4 MB (38364257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeeb8139fdeb5318ef6415502c19e75deb0c06394a86900d507395ba66e2c91d`  
		Last Modified: Wed, 12 Jun 2019 14:51:23 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22704657bcfce4245db71f4cfb6b59a3ee4be04bd49d95e3f7e15e9ec200922`  
		Last Modified: Wed, 12 Jun 2019 14:51:34 GMT  
		Size: 4.8 MB (4846369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e65c6e7a84da2521544194cedc5c6044eb0f32981b898ed0ba675106110195`  
		Last Modified: Wed, 12 Jun 2019 14:51:24 GMT  
		Size: 2.4 MB (2363345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda1fefdf28762741738521f8af11492bcd438f70354b2e9ac6cab72a593b051`  
		Last Modified: Wed, 12 Jun 2019 14:51:22 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a040aa52fbc6a9fcee16d293a3b0e3d9f392a7e51da958db61eeb702c037f2`  
		Last Modified: Wed, 12 Jun 2019 19:11:38 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270d0fdf5e9a9b4ab73124dba9070e9e6dd11cd2e552da5e00d811114c23a636`  
		Last Modified: Wed, 12 Jun 2019 19:11:39 GMT  
		Size: 1.1 MB (1052763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea53f66b5557bb138a2ebe350c12d3937bad8dd6e547a992b6bf338012faeb48`  
		Last Modified: Wed, 12 Jun 2019 19:11:38 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
