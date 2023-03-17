require 'open-uri'
require 'json'

result = JSON.load(OpenURI.open_uri("https://jekyll-blog-nagutabby.microcms.io/api/v1/",
  "X-MICROCMS-API-KEY" => ENV["X_MICROCMS_API_KEY"]
).read)

result["contents"].each do |content|
  created_at =  DateTime.parse(content["createdAt"]).strftime("%Y-%m-%d %H:%M:%S %z")
  id = content["id"]
  image = content["image"]["url"]
  title = content["title"]
  body = content["body"]

  file = File.open("_posts/#{Date.parse(created_at).strftime("%Y-%m-%d")}-#{id}.md", "w")
  file.puts("---")
  file.puts("layout: post")
  file.puts("image: #{image}")
  file.puts("title: #{title}")
  file.puts("date: #{created_at}")
  file.puts("---")
  file.puts("#{body}")
  file.close
end
