FROM debian:latest

ADD . /root/

RUN apt-get update -yq \
&& apt-get install git wget curl tmux zsh fd-find ripgrep exa bat -yq \
&& apt-get clean -y \
&& cd \
&& wget "https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz" \
&& tar -xf nvim-linux64.tar.gz \
&& wget "https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.4-linux-x86_64.tar.gz" \                                                        && tar -xf julia-1.10.4-linux-x86_64.tar.gz \                                && sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
&& git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
&& julia julia_lsp_setup.jl 

