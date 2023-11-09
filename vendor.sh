#/bin/env sh

cd vendoring-app 
cargo vendor --versioned-dirs
tar -czf vendor.tar.gz vendor
rm -r vendor
mv vendor.tar.gz ../
cd ..
git add . -A
git commit --amend -m"reinit"
git push -f
