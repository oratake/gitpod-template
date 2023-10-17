# Config例: https://www.gitpod.io/docs/configure/workspaces/workspace-image
FROM gitpod/workspace-full
USER gitpod
RUN chsh -s /usr/bin/zsh gitpod

# Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
RUN cargo install starship
# Dotfiles
RUN cd ~ \
  && git clone --depth 1 https://github.com/oratake/dotfiles.git \
  && cd dotfiles \
  && make zsh