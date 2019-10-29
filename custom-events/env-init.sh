curl -L https://www.dropbox.com/s/m30l752trdcgvu8/site.tar.gz?dl=0 > ~/site.tar.gz
tar -xvzf ~/site.tar.gz -C /home/scrapbook/tutorial
cd /home/scrapbook/tutorial
npm install
echo "Starting... this will block the rest of the commands from running..."
npm start
