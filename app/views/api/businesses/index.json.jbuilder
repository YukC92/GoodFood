@businesses.map do |business|
    json.set! business.id do
      json.partial! 'api/businesses/business', business: business
      json.reviews business.reviews
  end
end

