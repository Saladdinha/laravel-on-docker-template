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
<p>If you have a database in microservice or elsewhere, you must remove the database as a compose service</p>

<h2>how to run:</h2>
<ul>
<li>1 - execute command: make compose-pre-setup</li>
<li>2 - config .env variables</li>
<li>3 - execute command: make compose-up (ignore if you do not meet the requirements of the important database notice)</li>
</ul>