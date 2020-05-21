cat << EOF > /opt/configure-environment.sh
#!/bin/bash

docker run -it -d --name=http -p 80:80 nginx
EOF
chmod +x /opt/configure-environment.sh