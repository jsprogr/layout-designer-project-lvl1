install:
	npm install

lint:
	npx stylelint ./src/static/css/*.css
	npx htmlhint ./src/*.html

deploy:
	npx surge ./src/

start: 
  sudo service webserver restart
  sudo service nginx restart

logs:
  sudo tail -f /var/log/upstart/webserver.log