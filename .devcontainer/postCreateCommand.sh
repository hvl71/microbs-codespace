if command -v skaffold >/dev/null 2>&1; then
    echo "skaffold is already in your PATH"
else
    mkdir -p ~/bin/skaffold
    curl -L https://storage.googleapis.com/skaffold/releases/v1.36.0/skaffold-linux-amd64 --output ~/bin/skaffold/skaffold
    chmod +x ~/bin/skaffold/skaffold
    echo 'export PATH=$PATH:~/bin/skaffold' >> ~/.bashrc
    source ~/.bashrc
fi



