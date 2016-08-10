#! /bin/sh
#
# entrypoint.sh
# Copyleft (ɔ) 2016 Thiago Almeida <thiagoalmeidasa@gmail.com>
#
# Distributed under terms of the GPLv2 license.
#


rake db:create db:migrate
rails s -d
mailcatcher &
rake jobs:work
