Omorphia
=====

Install
---
`bundle install --path vendor/bundle`
Install `jpegoptim` and `optipng` for your distro.

Development
---
`bundle exec guard` -- Automatic compilation every time you save a file
`bundle exec nanoc view` -- Starts a server on localhost

Deployment
---
`bundle exec rake optimize:images`
`cd output`
`git init`
`git checkout -b gh-pages`
`git add .`
`git commit`
`git remote add origin <repo-url>`
`git push -u origin gh-pages`
