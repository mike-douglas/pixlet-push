# pixlet-push

This is a dockerized build of [tidbyt/pixlet](https://github.com/tidbyt/pixlet) with a helpful script that builds and pushes an app to a [Tidbyt](https://tidbyt.com) device.

## Example

```bash
docker run --rm \
  -e PIXLET_API_TOKEN=<YOUR API TOKEN> \
  -e PIXLET_INSTALLATION_ID=<YOUR APP NAME> \
  -e PIXLET_DEVICE_ID=<YOUR DEVICE ID> \
  -v example.star:/app.star \
  -t mdouglas/pixlet-push:latest
```

## Environment Variables

* `PIXLET_API_TOKEN`: The API token retrieved from the mobile app
* `PIXLET_DEVICE_ID`: The Device ID retrieved from the mobile app (on the same screen as the API token)
* `PIXLET_INSTALLATION_ID`: The unique name of your app that will appear in the app when it's pushed
