CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],     # required
    :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'], # required
    :region                 => 'Oregon',                     # optional, defaults to 'us-east-1'
    :host                   => 'codaccino.com',             # optional, defaults to nil
    :endpoint               => 'codaccino.s3-website-us-west-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'codaccino'                        # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
