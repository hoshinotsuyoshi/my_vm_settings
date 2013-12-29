include_recipe "ruby_build"
[
  #"1.8.7-p374", # openssl error occured
  "1.9.3-p484",
  "2.0.0-p353",
  "2.1.0",
].each do |version|
  ruby_build_ruby version
end
