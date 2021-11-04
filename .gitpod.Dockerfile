FROM gitpod/workspace-full

# Install custom tools, runtime, etc.
# RUN brew install fzf
RUN brew install gh
RUN npm install -g http-server