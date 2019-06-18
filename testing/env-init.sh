#!/usr/bin/env bash
echo '[Unit]' >> postgres.service
echo 'Description=PostgreSQL container' >> postgres.service
echo 'Requires=docker.service' >> postgres.service
echo 'After=docker.service' >> postgres.service
echo '[Service]' >> postgres.service
echo 'Restart=on-failure' >> postgres.service
echo 'RestartSec=10' >> postgres.service
echo 'ExecStartPre=-/usr/bin/docker stop postgres' >> postgres.service
echo 'ExecStartPre=-/usr/bin/docker rm postgres' >> postgres.service
echo 'ExecStart=/usr/bin/docker run --name postgres postgres:alpine' >> postgres.service
echo 'ExecStop=/usr/bin/docker stop postgres' >> postgres.service
echo '[Install]' >> postgres.service
echo 'WantedBy=multi-user.target' >> postgres.service
docker pull postgres:alpine
