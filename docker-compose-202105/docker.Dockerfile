FROM docker:20-dind

RUN ln -s /root/Documents/dotfiles/dotfiles/.tmux.conf /root/.tmux.conf && \
		ln -s /root/Documents/dotfiles/dotfiles/.zshrc /root/.zshrc && \
		ln -s /root/Documents/.aws /root/.aws && \
		ln -s /root/Documents/.ssh /root/.ssh && \
		ln -s /root/Documents/.kube /root/.kube
