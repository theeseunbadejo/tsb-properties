CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:                'AWS',
    aws_access_key_id:       '',
    aws_secret_access_key:   '',
    region:                   ''
  }
  config.storage = :fog
  config.permissions = 0666
  config.directory_permissions = 0777
  config.storage = :file
  config.cache_dir = "#{Rails.root}/tmp/"
  config.fog_directory = 'myproperties'
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}"}
end
