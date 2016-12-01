# Docker Image for JDownloader

Image based on Ubuntu Xenial (LTS), configured with JRE 9, with JDownloader Installer.

There's a [script](jdownloader-installer) to start a container, making the host's X display available to the container. It runs with the same user and also makes the home available. Use this to install JDownloader. After the script ends the container is commited as a new image that can be used to run JDownloader.

The [script](jdownloader) to run JDownloader using the image built after the installation ends is also available.
