# docker-sbt
Dockerized SBT for building Scala and Java projects

## Usage
1. In the root folder of your Scala project create Dockerfile file the similar content:

    ```Dockerfile
    FROM alekslitvinenk/sbt:latest
    COPY . .
    CMD [ "/bin/bash" ]
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