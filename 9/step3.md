The Mongo configuration is stored in _server/config.js_. Your running Mongo instance is on a host called _docker_. Use _sed_ to update the configuration.
`sed -i s/localhost/docker/g server/config.js`{{execute}}

You can now start the web server. 
`npm start`{{execute}}

Starting may take a few moments. NPM will indicate when it's started and accessible on port 8000.