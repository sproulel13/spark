sudo apt-get update
sudo apt-get install -y python3-pip
pip3 install jupyter
sudo apt-get install -y  default-jre
sudo apt-get install -y scala
pip3 install py4j
wget http://archive.apache.org.org/dist/spark/spark-2.1.1/spark-2.1.1-bin-hadoop2.7.tgz
sudo tar -zxvf spark-2.1.1-bin-hadoop2.7.tgz
mv spark-2.1.1-bin-hadoop2.7.tgz spark
cd ./spark
export SPARK_DIR=$(pwd)
pip3 install findspark
jupyter notebook --generate-config
mkdir certs
cd ./certs
sudo openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout mycert.pem -out mycert.pem

