Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'suM6kRY4QiHco9UoyjBn7w', 'ho0GPOHpn7n2iiYmZtB9SyVtRUT9OnZGGe5ZZQInU78'
  provider :facebook, '125770127482918', 'e7f29e986d7570848c69257f3c03cb7e', {:scope => 'publish_stream,offline_access,email'}
end
