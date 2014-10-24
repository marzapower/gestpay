module Gestpay
  class Configuration

    CURRENCY_MAPPING = {
      'USD' => '1',
      'GBP' => '2',
      'CHF' => '3',
      'DKK' => '7',
      'NOK' => '8',
      'SEK' => '9',
      'CAD' => '12',
      'ITL' => '18',
      'JPY' => '71',
      'HKD' => '103',
      'BRL' => '234',
      'EUR' => '242'
    }

    LANGUAGE_MAPPING = {
      'ITA' => '1',
      'ENG' => '2',
      'SPA' => '3',
      'FRA' => '4',
      'FRE' => '4',
      'DEU' => '5',
      'GER' => '5',
      'IT' => '1',
      'EN' => '2',
      'ES' => '3',
      'FR' => '4',
      'DE' => '5'
    }

    attr_accessor :environment, :account, :currency, :language, :proxy, :savon_options
    def initialize
      @environment    = ENV['GESTPAY_ENVIRONMENT'] || :test
      @account        = ENV['GESTPAY_ACCOUNT']
      @currency       = 'EUR'
      @language       = 'ITA'
      @proxy          = ENV['GESTPAY_PROXY']
      @savon_options  = Hash.new
    end

    def currency_code
      CURRENCY_MAPPING[@currency.upcase]
    end

    def language_code
      LANGUAGE_MAPPING[@language.upcase]
    end

  end
end

