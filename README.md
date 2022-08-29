# Fly

Small project to test [Fly.io](https://fly.io/). A basic website was created with `create-react-app` and is served with nginx. Note that Fly.io by default expects your application to be using port 8080, so `nginx.conf` was set to listen on port 8080.

## Local Development

You can run the website locally with:

- `docker build -t fly .`
- `docker run -it -p 3000:8080 fly`
- Open [http://127.0.0.1:3000](http://127.0.0.1:3000)

## Launch Application

To launch a new application on `Fly.io`, use command `flyctl launch` from the base of the repo. The fly client will detect the Dockerfile and prompt for an application name, an organization and a prefered deployment region. This generates the `fly.toml` file. At this point your application is ready to deploy.

## Deploy to Fly.io

You can deploy the latest version of this app to Fly.io with:

- `flyctl deploy --local-only`

Note that the `--local-only` option forces building the Docker image locally before the fly client deploys the app image. You can see the resulting website [ancient-sky-4207](https://ancient-sky-4207.fly.dev/).
