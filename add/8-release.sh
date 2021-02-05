set -x

assets=()
for asset in ./supppig/*; do
    assets+=("-a" "$asset")
done

da=$(date '+%Y%m%d-%H%M%S')
echo $da >./x.txt
echo >>./x.txt
cat url.log >>./x.txt

ls

echo 

cat ./x.txt

echo

hub --help

echo "************************"


hub release --help

echo "************************"

# hub release create ${assets[@]} -F ./x.txt "$da"
hub release create -F ./x.txt "$da"
