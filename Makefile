export FULL_VESRION="$$(cat ./VERSION)"

.PHONY: build build-local install clean test run

all: build

build:
	@echo "Making production version ${FULL_VESRION} of Docksbt"
	docker build -t alekslitvinenk/sbt:${FULL_VESRION} -t alekslitvinenk/sbt:latest . --no-cache
	docker push alekslitvinenk/sbt:${FULL_VESRION}
	docker push alekslitvinenk/sbt:latest

build-local:
	@echo "Making local version ${FULL_VESRION} of Docksbt"
	docker build -t alekslitvinenk/sbt:local . --no-cache

install:
	@echo "Installing Docksbt ${FULL_VESRION}"

clean:
	@echo "Making cleanup"
	docker rm docksbt

test:
	@echo "Running tests for Docksbt ${FULL_VESRION}"

run:
	@echo "Running Docksbt ${FULL_VESRION}"
	docker run alekslitvinenk/sbt
