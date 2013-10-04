Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "VyQP8G5R1iyJIzormN8qg", "20TPLZXWJ6P5u0xcdjQKjpKFK7HbUNtX58U1YZUZ0"
  provider :facebook, "	1423472471205168", "0a53630f4b99b7639dc1762a48d39966"
end

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE