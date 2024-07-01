echo ""
echo "Starting process"
echo "======================="
echo "creating a .env file from .example.env file"
cp .example.env .env
echo ""
echo "clonning assectra rep"
git clone git@github.com:lschedel/assectra.git ../assectra
echo "clonning trader rep"
git clone git@github.com:lschedel/trader.git ../trader
echo ""

echo ""
echo "starting docker-compose"
docker-compose up --build -d

echo "finish. Bye! Bye!"
