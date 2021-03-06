require "yandex_market_api_client/version"

require 'weary'

module YandexMarketApiClient

  autoload :Config, 'yandex_market_api_client/config'
  autoload :Client, 'yandex_market_api_client/client'

  def self.get_client
    Client.new
  end

  def self.configure
    yield(config)
  end

  def self.config
    @config ||= Config.new
  end
end
