By default the Dashboard Tabs will open in a new window. When combined with the layout `terminal-iframe`, the Dashboard tabs can be embedded as an iframe.

This allows the user to keep a consistent view and allow the steps to explain actions that need to be performed within the UI.

<pre>
"environment": {
    "showdashboard": true,
    "dashboards": [{"name": "URL", "href": "https://www.google.co.uk"},
        {"name": "Port 80", "port": 80},
        {"name": "Placeholder", "href": "https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com"}],
    "uilayout": "terminal-iframe"
}
</pre>

**Note:** This approach uses iframes, as such, websites such as Google.co.uk will not load due to Browser Security and Google's iframe configuration. Look in your browser's console to view the errors.