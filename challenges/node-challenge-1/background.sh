echo "Started"

cat << 'EOF' > /root/multiply.js
function multiply(a, b){
  a * b
}
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