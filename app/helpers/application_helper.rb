module ApplicationHelper
	def country_name_from_code(code)
    country = ISO3166::Country[code]
    country.translations[I18n.locale.to_s] || country.name if country
  end

  def country_with_code_select(object, method, priority_countries = nil, options = {}, html_options = {})
    country_options = country_options_for_select_with_code(priority_countries, options[:selected])
    select(object, method, country_options, options, html_options)
  end

  def country_options_for_select_with_code(priority_countries = nil, selected = nil)
    countries = ISO3166::Country.all
    country_options = countries.map do |country|
      ["#{country.continent}", country.alpha2]
    end
    options_for_select(country_options, selected)
  end
end
