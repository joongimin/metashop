module DeviceUrl
  extend ActiveSupport::Concerns

  def device_url(mobile: false)
    if mobile && mobile_url.present?
      mobile_url
    else
      url
    end
  end
end
