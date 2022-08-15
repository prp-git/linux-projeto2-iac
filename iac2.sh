echo ">>>>>>>> Atualizando repositorios...<<<<<<<<<<"
apt-get update
echo ">>>>>>>> Atualizando servidor linux...<<<<<<<<<<"
apt-get upgrade -y
echo ">>>>>>>> Instalando apacahe...<<<<<<<<<<"
apt-get install apache2 -y
echo ">>>>>>>> Instalando unzip...<<<<<<<<<<"
apt-get install unzip -y

cd /temp
echo ">>>>>>>> Baixando arquivos do site  a partir do github...<<<<<<<<<<"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
echo ">>>>>>>> Descompactando arquivos do site...<<<<<<<<<<"
unzip main.zip
cd linux-site-dio-main
echo ">>>>>>>> Copiando arquivos do site para diretório padrão do apache...<<<<<<<<<<"
cp -R * /var/www/html/
