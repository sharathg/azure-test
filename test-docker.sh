echo "*** Docker Script ***"
echo ""
echo ""
echo "*** Docker Version ***"
docker -v
echo ""
echo ""
echo "*** Docker Build ***"
docker build --iidfile image.id -t testdocker:v0.1 .
cat image.id
echo ""
echo ""
echo "*** Test Docker ***"
docker run -it -u 1000:1000 -v $PWD:/workspace/ -w /workspace $(cat image.id) bash test-versions.sh
