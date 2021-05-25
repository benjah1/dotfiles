FROM docker:20-dind


FROM centos:7
RUN yum -y install nfs-utils
RUN mkdir -p /root/Documents
COPY --from=0 /usr/local/bin/docker /usr/local/bin/docker

RUN yum install -y zsh git tmux jq tree curl vim

RUN git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git /root/.oh-my-zsh && \
    chsh -s $(grep /zsh$ /etc/shells | tail -1) root

RUN curl -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

RUN ln -s /root/Documents/dotfiles/dotfiles/.tmux.conf /root/.tmux.conf && \
    ln -s /root/Documents/dotfiles/dotfiles/.zshrc /root/.zshrc && \
    ln -s /root/Documents/.aws /root/.aws && \
    ln -s /root/Documents/.ssh /root/.ssh && \
    ln -s /root/Documents/.kube /root/.kube
