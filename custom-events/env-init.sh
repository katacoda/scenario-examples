<<<<<<< HEAD
curl -L https://github.com/katacoda/scenario-examples/blob/master/custom-events/site/site.tar.gz > ~/site.tar.gz
=======
curl -L https://github.com/katacoda/scenario-examples/blob/master/custom-events/site/site.tar.gz?raw=true > ~/site.tar.gz
>>>>>>> master
tar -xvzf ~/site.tar.gz -C /home/scrapbook/tutorial
cd /home/scrapbook/tutorial
npm install
echo "Starting... this will block the rest of the commands from running..."
npm start
