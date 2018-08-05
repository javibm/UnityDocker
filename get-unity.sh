#!/bin/sh

URL=https://beta.unity3d.com/download/10189b18f56e/UnitySetup-2018.2.0f2
INSTALL_LOCATION=/opt/Unity
DOWNLOAD_LOCATION=/app/unity_download
UNITY_COMPONENTS="Unity,Android"

echo "Start Unity3D installer download..."
curl -o /app/unity_setup -s "${URL}"
chmod +x /app/unity_setup
echo "Start Unity3D installer."
mkdir ${INSTALL_LOCATION}
mkdir ${DOWNLOAD_LOCATION}
printf 'y\n' | /app/unity_setup --unattended --components=${UNITY_COMPONENTS} --install-location ${INSTALL_LOCATION} --download-location ${DOWNLOAD_LOCATION}
rm -rf ${DOWNLOAD_LOCATION}
