require 'optparse'
require 'date'

params = ARGV.getopts('n:c:t:d:').each_with_object({}) { |(k, v), hash| hash[k.to_sym] = v }
date = Date.parse(params[:d] || Date.today.strftime('%Y-%m-%d'))
name = params[:n]
categories = params[:c]&.split(',')&.join(' ')
tags = params[:t]&.split(',')&.join("\n- ")&.insert(0, '- ')
unless date && name
  puts <<ERROR
Please refer to the following command.
ruby ./script/create_port -n filename (options: -d date -c category -t tag)

  ex.) When creating with minimum configuration
    ruby ./script/create_post.rb -n setup-network-postfix 

  ex.) When creating past and future articles
    ruby ./script/create_post.rb -n setup-network-postfix -d 2015-07-03 -c infra,network -t linux,postfix
ERROR
  exit
end

filename = "#{date}-#{name}.markdown"

content = <<CONTENT
---
layout: post
title:  "#{name}"
date:   #{date} 00:00:00 +0900
categories: articles #{categories}
tags:
#{tags}
---
CONTENT
File.open("site/_posts/#{filename}", "wx") do |f|
  f.puts content
end
puts "`#{filename}` is created."
puts content
