`
docker run -d -p 80:80 katacoda/docker-http-server
docker run -d -p 8500:80 katacoda/docker-http-server
`{{execute}}

Render port 8500: https://[[HOST_SUBDOMAIN]]-8500-[[KATACODA_HOST]].environments.katacoda.com/

Render port 80: https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/

Display page allowing user to select port:
https://[[HOST_SUBDOMAIN]]-[[KATACODA_HOST]].environments.katacoda.com/

Using Tabs can enhance the user experience and help users access the UI. You can find more examples at https://katacoda.com/scenario-examples/scenarios/dashboard-tabs and https://katacoda.com/scenario-examples/scenarios/dashboard-tabs-iframe