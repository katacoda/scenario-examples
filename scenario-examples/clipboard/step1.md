This is an example of Katacoda's clipboard integration. 

The following will copy the text into the clipboard. This is useful if users need to interactive with a web UI.

`docker`{{copy}}

Within the Markdown step, you would write:
<pre>
`docker`{{copy}}
</pre>

Katacoda supports copying code snippets or longer text into the clipboard by adding the attribute `data-target`.

<pre class="file" data-target="clipboard">
Copy Me To The Clipboard!!
</pre>

This is created by embedded HTML into the Markdown.

<pre>
&#x3C;pre class=&#x22;file&#x22; data-target=&#x22;clipboard&#x22;&#x3E;
Copy Me To The Clipboard!!
&#x3C;/pre&#x3E;
</pre>

**Note** Without the class="file" it will not display the clipboard functionality. For example:

<pre data-target="clipboard">
Not a file
</pre>

This was created by the HTML:

<pre>
&#x3C;pre data-target=&#x22;clipboard&#x22;&#x3E;
Not a file
&#x3C;/pre&#x3E;
</pre>
