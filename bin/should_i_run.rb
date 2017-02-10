#!/usr/bin/env ruby

require 'travis'

# Thie is the current repository
repo = Travis::Repository.find(ENV['TRAVIS_REPO_SLUG'])

build = repo.last_build

p build.canceled?
p build.created?
p build.errored?
p build.failed?
p build.finished?
p build.green?
p build.passed?
p build.pending?
p build.queued?
p build.red?
p build.running?
p build.started?
p build.successful?
p build.unsuccessful?
p build.yellow?
p build.color

puts repo

time = Time.new

if build.started_at.wday == 0 && build.started_at.hour < 2 && build.started_at < 4
  # Build everything
  puts 'Today is Sunday'
elsif time.wday == 3 && 2 <= time.hour < 7
  puts 'Today is Wednesday'
end

puts build.commit
