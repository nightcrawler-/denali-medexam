# Med Exam

[![CircleCI](https://circleci.com/gh/nightcrawler-/medexam.svg?style=shield&circle-token=0ad5ab3a7ed5a25b7125d9cd33e8a6cb19b3492a)](https://circleci.com/gh/nightcrawler-/medexam)

Reboot of the original MS Access based Med-Exam app. Automates collection, persistence and dissemination of medical records.

## Contribuion/Usage

### Setup

#### Install Ruby

The first step is to install dependencies for Ruby on Rails

```
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
```
Install `rbenv`

```
cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL
```
Then install `ruby-build`

```

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.7.0
rbenv global 2.7.0
ruby -v
```

Finally

```
gem install bundler
```

#### Install Rails

```
gem install rails -v 6.0.2.1

rbenv rehash
```

#### Setting Up PostgreSQL

Add a new repo to get the most recent version of pg (optional)

```
sudo apt install postgresql-11 libpq-dev
```
Create and user and set an optional password

```
sudo -u postgres createuser frederick -s

# If you would like to set a password for the user, you can do the following
sudo -u postgres psql
postgres=# \password frederick

```

##### The below are for creating a new rails app

```
#### If you want to use Postgres
# Note that this will expect a postgres user with the same username
# as your app, you may need to edit config/database.yml to match the
# user you created earlier
rails new myapp -d postgresql

# Move into the application directory
cd myapp

# If you setup MySQL or Postgres with a username/password, modify the
# config/database.yml file to contain the username/password that you specified

# Create the database
rake db:create

#You might encouter a db creation permissions related issue at this point, do the following:
sudo -u postgres psql
postgres=# alter user frederick createdb;


rails server
```
