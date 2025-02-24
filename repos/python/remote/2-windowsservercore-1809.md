## `python:2-windowsservercore-1809`

```console
$ docker pull python@sha256:6d1747b0f83a1677819b5d917af7f1fb9f9bff1e99c4920ecb0ecfde1ac87e14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `python:2-windowsservercore-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull python@sha256:5871661b0e9461f7941566b9173252334424005f4614a682735fe7e742c8064d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2431646286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:826e8fbe90ad2a5c7e08b134dcab4d2bf761eb60cce959fb00074bd8e0a9c673`
-	Default Command: `["python"]`
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
