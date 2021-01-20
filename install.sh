while read line;do  
    eval "$line"  
done < .env  

# node
mkdir -p $DATA_PATH_HOST/node/
cp -r ./node/index.js $DATA_PATH_HOST/node/index.js


docker-compose up