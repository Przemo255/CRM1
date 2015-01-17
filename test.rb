#!/usr/bin/env ruby
require 'koala' # gem install koala --no-ri --no-rdoc

# create a facebook app and get access token from here
# https://developers.facebook.com/tools/explorer
# select "groups", "photos" when authenticating
oauth_access_token = 'CAACEdEose0cBAB4Bk4mBez7pgZCpk8ZBqqF0u5ZCI2YH3mPZAYbmQ4zZBD8nKe0smqfXdsNgGzGg7NKtoTZBB39N2faKbrduEfAHeZChRvRmqF4GTZCnKAUpzxRrni7RhB2BVRTNaGwbZCOCDZCdPr52U4xDuJZALg2qgvXLgu07ZC43oFZCrvOfkjtekY7BqLxrUnQ3e8lwsP9Kfyd6hqMn5mWuoHIvrZAXoA8sAZD'
group_filtering_words = ['ruby']
image_path = 'http://www.extremetech.com/wp-content/uploads/2012/01/linux.jpg' #change to your image path
message = 'My Cool image.' # your message

graph = Koala::Facebook::API.new(oauth_access_token)

# getting groups of interest
groups = graph.get_connections("me", "groups").select do |group|
    group_filtering_words.any? do |word|
        group["name"].downcase.include? word
    end
end

index = 0
groups.each do |group|
    index += 1
    puts "[#{index}/#{groups.size}] Posting to group #{group["name"]}."
    graph.put_picture(
        image_path, 
        {:message => message}, 
        group['id']
    )
end