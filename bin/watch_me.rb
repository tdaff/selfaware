#!/usr/bin/env ruby

require 'travis'

selfaware = Travis::Repository.find('tdaff/selfaware')


Travis.listen(selfaware) do |stream|
  stream.on('build:started', 'build:finished') do |event|
    puts "#{event.repository.slug} just #{event.build.state}"
  end
end
