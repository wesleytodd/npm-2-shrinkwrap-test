default:
	cd apps/app1 && npm install

cleantest:
	cd apps/app1 && rm -rf node_modules && npm install

shrinkwrap:
	cd apps/app1 && rm -rf node_modules npm-shrinkwrap.json
	cd apps/app1 && npm install && npm shrinkwrap

