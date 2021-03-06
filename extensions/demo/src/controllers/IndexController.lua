ngx.say([[
<h1>Demo</h1>
<a href="/hello">Hello World</a>
<br/>
<a href="/product/1">Product with code 1</a>

<h1>Editor & Repository</h1>
<a href="/editor">Editor</a>

<h1>Database</h1>
<a href="/database">Database</a>, requires proper database credentials, see config_unix.lua



<h1>Shop</h1>
<a href="/shop/home">Shop</a>, requires import from <a href="/database">Database</a>, execute:
<pre>
db:dropAllTables()
db:createAllTables()
db:import("shopImport")
</pre>

<h1>Security</h1>
Requires setting requireSecurity=true in config_unix.lua and import from <a href="/database">Database</a>, execute:
<pre>
db:import("securityImport")
</pre>

]])