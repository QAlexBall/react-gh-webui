COMMIT_MESSAGE=$1
GITHUB_IO_PATH=$2

npm run deploy -- -m $COMMIT_MESSAGE
git add .
git commit -m $COMMIT_MESSAGE
git push

# update submodule for github.io
cd $GITHUB_IO_PATH 
cd $GITHUB_TO_PATH && git submodule update --remote
cd $GITHUB_TO_PATH && git add .
cd $GITHUB_TO_PATH && git commit -m $COMMIT_MESSAGE
cd $GITHUB_TO_PATH && git push

