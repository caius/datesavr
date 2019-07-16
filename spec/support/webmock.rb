# frozen_string_literal: true

require "webmock/rspec"

# Allow webdrivers to download drivers
driver_urls = Webdrivers::Common.subclasses.map(&:base_url)

# Disable external connections by default
WebMock.disable_net_connect!(allow_localhost: true, allow: driver_urls)
