# docker-sbt
Dockerized SBT for building Scala and Java projects

## Usage

### Bind-monting project-directory
```bash
 docker run -v <path to your scala project on host machine>:/scala-project alekslitvinenk/sbt
```

Optionally, you can bind-mount output directory if you want the artifact to be saved on directory other than <project>/target
```bash
-v <path where you want to output build artefacts on host machine>:/target
```


### Deriving from alekslitvinenk/sbt
1. In the root folder of your Scala project create Dockerfile file the similar content:

    ```Dockerfile
    FROM alekslitvinenk/sbt:latest
    COPY . .
    ```

2. Build image:
    ```bash
    docker build -t <your image derived from alekslitvinenk/sbt>
    ```

3. Run sbt container:
    ```bash
    docker run -v <host output directory>:/target <your image derived from alekslitvinenk/sbt> sbt compile
    ```

    Example:
    ```bash
    docker run -v ~/dist:/target alekslitvinenk/dockovpn-it sbt compile
    ```