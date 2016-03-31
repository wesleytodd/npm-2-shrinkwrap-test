# NPM 2.x Shrinkwrap Reduced Test Case

This shows how local modules are broken when shrinkwrapping in npm `2.x`.  I tested specifically with `2.15.1`.

To see the error, run `make`.  The first time is a clean install which will get an error like this:

```
npm WARN package.json app1@1.0.0 No description
npm WARN package.json app1@1.0.0 No repository field.
npm WARN package.json app1@1.0.0 No README data
npm WARN package.json app1@1.0.0 license should be a valid SPDX license expression
npm ERR! addLocal Could not install /home/vagrant/mod2
npm ERR! Linux 3.16.0-4-amd64
npm ERR! argv "node" "/usr/local/bin/npm" "install"
npm ERR! node v0.10.32
npm ERR! npm  v2.15.1
npm ERR! path /home/vagrant/mod2
npm ERR! code ENOENT
npm ERR! errno 34

npm ERR! enoent ENOENT, open '/home/vagrant/mod2'
npm ERR! enoent This is most likely not a problem with npm itself
npm ERR! enoent and is related to npm not being able to find a file.
npm ERR! enoent

npm ERR! Please include the following file with any support request:
npm ERR!     /home/vagrant/npm-2-shrinkwrap-test/apps/app1/npm-debug.log
```

As you can see the install path for `mod2` reaches up further than it actually should: `/home/vagrant/mod2` => `/home/vagrant/npm2-shrinkwrap-test/mod2`.  The second time you run it, it sometimes succeeds, I havent pinpointed that yet, but it probably has something to do with running the re-doing the shrinkwrap.

`make shrinkwrap` will re-shrinkwrap which I used to test this in `npm@3.x` where it worked.

`make cleantest` will clear out the node modules so you can get a real test again.
