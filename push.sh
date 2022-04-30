#!/bin/sh

PIXLET=/bin/pixlet

${PIXLET} render ${1} && \
  ${PIXLET} push --api-token ${PIXLET_API_TOKEN} \
                 --installation-id ${PIXLET_INSTALLATION_ID} \
                 ${PIXLET_DEVICE_ID} \
                 `basename ${1} .star`.webp