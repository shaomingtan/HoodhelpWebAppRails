require 'base64'
require 'openssl'
require 'digest/sha1'
require 'json'

print "\nEnter your secret key: "
aws_secret_key = gets.chomp
print "\n"

policy_document = 
{"expiration" => "2015-01-01T00:00:00Z",
  "conditions" => 
    [ 
      {"bucket" => "dare-submissions-img"}, 
      ["starts-with", "$key", ""],
      {"acl" => "public-read"},
      ["starts-with", "$Content-Type", ""],
      ["content-length-range", 0, 2097152]
    ]
}

policy = Base64.encode64(policy_document.to_json).gsub("\n","")
print "Policy (Base64):\n#{policy}\n\n"

signature = Base64.encode64(
    OpenSSL::HMAC.digest(
        OpenSSL::Digest::Digest.new('sha1'), 
        aws_secret_key, policy)
    ).gsub("\n","")
print "Signature:\n#{signature}\n\n"
