# Signed, Sealed, Delivery

A blog to showcase signing workflow

## Local

### Build Website

```sh
IMAGE=denhamparry/signedsealeddelivery:latest
docker build -t $IMAGE .
docker run -d -p 8080:8080 --name signedsealeddelivery $IMAGE
```

When finished testing out the website:

```sh
IMAGE=denhamparry/signedsealeddelivery:latest
docker stop $IMAGE && docker rm $IMAGE
```

Push image to registry:

```sh
IMAGE=denhamparry/signedsealeddelivery:latest
docker push $IMAGE
```

### SBOM

```sh
IMAGE=denhamparry/signedsealeddelivery:latest
docker sbom $IMAGE > sbom/docker-image.sbom
syft packages $IMAGE > sbom/syft-image.sbom
trivy i --format cosign-vuln $IMAGE > sbom/trivy-image.sbom
```
