<h1>Laravel base setup</h1>
<h2>Laravel + nginx + postgres</h2>
<h2>Fast generate custom compose.yml and run containers using makefile</h2>

<h2>requisites:</h2>

<ul>
<li>docker & docker-compose</li>
<li>composer</li>
<li>git</li>
<li>gnu</li>
<li>chocolatey</li>
<li>makefile</li>
</ul>

<h2>database important:</h2>
<p>if you have a database in micro service or other local, you need remove db as a service compose</p>

<h2>how to run:</h2>
<ul>
<li>1 - execute command: composer create-project laravel/laravel app</li>
<li>2 - copy or cut docker paste to /app</li>
<li>3 - config .env variables</li>
<li>4 - execute command: make compose-generate</li>
<li>5 - execute command: make compose-up (ignore if you meet the database important)</li>
</ul>