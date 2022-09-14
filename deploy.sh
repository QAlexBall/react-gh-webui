COMMIT_MESSAGE=$1
GITHUB_IO_PATH=$2
echo $1 $2
npm run deploy -- -m $COMMIT_MESSAGE
git add .
git commit -m $COMMIT_MESSAGE
git push

# update submodule for github.io
cd $GITHUB_IO_PATH 
git submodule update --remote
git add .
git commit -m $COMMIT_MESSAGE
git push

