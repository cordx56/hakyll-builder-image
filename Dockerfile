FROM haskell:9.4.8 AS builder
ENV LC_ALL C.UTF-8
WORKDIR /deps
COPY . .
RUN cabal update
RUN cabal install --only-dependencies
WORKDIR /app
