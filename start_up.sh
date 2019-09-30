#!/bin/bash
bundle exec sidekiq -C config/sidekiq.yml &
rails s -b 0.0.0.0
