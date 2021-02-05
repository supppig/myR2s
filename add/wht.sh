echo 1234545 >url.log

mkdir supppig
echo 123 >./supppig/1.txt
echo 456 >./supppig/2.txt


assets=()
for asset in ./supppig/*; do
    assets+=("-a" "$asset")
done

da=$(date '+%Y%m%d-%H%M%S')
echo $da >x.txt
echo >>x.txt
cat url.log >>x.txt

echo "hub release create ${assets[@]} -F x.txt \"$da\""

hub release create ${assets[@]} -F x.txt "$da"
