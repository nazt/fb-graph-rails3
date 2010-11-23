Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'suM6kRY4QiHco9UoyjBn7w', 'ho0GPOHpn7n2iiYmZtB9SyVtRUT9OnZGGe5ZZQInU78'
  provider :facebook, '125770127482918', 'b2babaf174e3d11519e94f0a2c9a9b94', {:scope => 'publish_stream,offline_access,email'}
end
