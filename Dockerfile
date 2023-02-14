FROM zephyrprojectrtos/ci:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install curl

# install rust
RUN curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh -s -- -y

# install rust toolchains for arm m7
RUN source "$HOME/.cargo/env" && rustup target add thumbv7em-none-eabihf

