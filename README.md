# rust-vendor

## Generate vendor

```bash
# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# source cargo
source "$HOME/.cargo/env"

# Create project
cargo new vendoring-app

# change to folder
cd vendoring-app

# copy dependencies
vi Cargo.toml

# vendor
cargo vendor --versioned-dirs

# tar
tar -czf vendor.tar.gz vendor

# copy tar
cp vendor.tar.gz ../
```

Once done, Tranfer the vendor.tar.gz and cleanup the repo by running:
```bash
# Inside the repo root run
rm -r vendoring-app

git add . -A
git commit --amend -m"reinit"
git push --force
```
