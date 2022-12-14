# Signed, Sealed, Delivery

A blog to showcase signing workflow

## Local

```sh
IMAGE=denhamparry/signedsealeddelivery:latest
docker build -t $IMAGE .
docker run -d -p 8080:8080 --name signedsealeddelivery $IMAGE
```

### SBOM

```sh
IMAGE=denhamparry/signedsealeddelivery:latest
docker sbom $IMAGE > docker-image.sbom
syft packages $IMAGE > syft-image.sbom
trivy i --format cosign-vuln $IMAGE > trivy-image.sbom
```

