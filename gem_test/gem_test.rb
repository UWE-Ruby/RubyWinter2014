require 'open_exchange_rates_conversion'

new_currency = Converter.new
	puts new_currency.currency_exchange('DKK', 2, '912735b01e8143bf8dee944d7673ed06')
