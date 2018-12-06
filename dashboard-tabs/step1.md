Adding Dashboard tabs to a Katacoda scenario can improve the user experience by making commonly used websites, or ports, easily accessible.

Katacoda supports three types of Dashboard tabs.

1) **Displaying External Webpages**. This is useful when you require a link to an external service such as a Cloud Dashboard or Documentation.

2) **Rendering Proxied Port**. When running a service on a Port within the Environment, Katacoda provides a dynamic URL for the session. This tab will automatically create the correct URL based on the Port you want to display.

3) **Rendering Proxied URL**. Similar to Approach 2, the href parameter supports the standard Katacoda placeholder values, allowing you to direct users to a particular page within to the service running within the Katacoda environment.

The `index.json` used to create the scenarios is shown below. It is important to remember to set the "showdashboard" variable.

<pre>
"environment": {
    "showdashboard": true,
    "dashboards": [{"name": "URL", "href": "https://www.google.co.uk"},
        {"name": "Port 80", "port": 80},
        {"name": "Placeholder", "href": "https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com"}]
}
</pre>

The next step describes how to create additional Terminal tabs.