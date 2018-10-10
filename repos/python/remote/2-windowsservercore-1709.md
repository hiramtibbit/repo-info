## `python:2-windowsservercore-1709`

```console
$ docker pull python@sha256:dc71d36aa8845fca65ba4ed14bdf88937a1467de798b13504c81847575e74118
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.726; amd64

### `python:2-windowsservercore-1709` - windows version 10.0.16299.726; amd64

```console
$ docker pull python@sha256:2a156e65874b6bab66663084c37353afa33ef63cce7c234a9d1214f8c8e43ca8
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3195480654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8e64b9bad5b032239fbb39b8034a00726c7a80c621206bec7ff605fccb5e1f`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 01 Oct 2018 22:02:14 GMT
RUN Install update 10.0.16299.726
# Wed, 10 Oct 2018 09:42:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:02:29 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 10 Oct 2018 10:02:30 GMT
ENV PYTHON_RELEASE=2.7.15
# Wed, 10 Oct 2018 10:04:46 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Wed, 10 Oct 2018 10:04:47 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 10 Oct 2018 10:06:23 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 10 Oct 2018 10:07:28 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 10 Oct 2018 10:07:30 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd7a4737dfbb59b49c30480146e7f0a61842409755bd479b63004c5643d0ed3`  
		Last Modified: Mon, 08 Oct 2018 19:38:11 GMT  
		Size: 866.5 MB (866458210 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cf0d3e1d36b0cda001b50a29a3b2898c0f456696a4491b2d5536e4af41eed468`  
		Last Modified: Wed, 10 Oct 2018 10:08:52 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34136d8664b3505e526978949178a7c9a58156a0dd34a7422b114c9058b15dac`  
		Last Modified: Wed, 10 Oct 2018 10:11:54 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9fcb40bb3bc8b0ad1bab33e03f3ce660689fcb707ae32e47770f0ac672465c`  
		Last Modified: Wed, 10 Oct 2018 10:11:54 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64256a61ec7449d9252a76681e661a8e91e89db25afd319426b6889102b392ba`  
		Last Modified: Wed, 10 Oct 2018 10:12:14 GMT  
		Size: 38.7 MB (38741017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab44bdb741083987fa43eb8301ebc8fbced55845814654e305a848a29289b02f`  
		Last Modified: Wed, 10 Oct 2018 10:11:51 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194cc16c7ee6a650a429e9bffa9524d4b9645f01444f35d3d3e920b426a65aaf`  
		Last Modified: Wed, 10 Oct 2018 10:12:00 GMT  
		Size: 9.2 MB (9207521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198143f5c9eb312afbdc07a1c3d3fcdf4f002d79e35a2b1d2e4d32a7e0d69bfe`  
		Last Modified: Wed, 10 Oct 2018 10:11:53 GMT  
		Size: 6.8 MB (6767346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf01af42046f3179c231ed572f92e86ab642a281a2ff60a684bb3df2bcdc46e`  
		Last Modified: Wed, 10 Oct 2018 10:11:50 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
