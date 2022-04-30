#!/bin/sh

PIXLET=/bin/pixlet

${PIXLET} render ${1} && \
  ${PIXLET} push --background \
                 --api-token ${PIXLET_API_TOKEN} \
                 --installation-id ${PIXLET_INSTALLATION_ID} \
                 ${PIXLET_DEVICE_ID} \
                 `dirname ${1}`/`basename ${1} .star`.webp