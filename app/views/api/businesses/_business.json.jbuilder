json.extract! business, :id, :business_name, :address, :city, :state, :latitude, :longtitude, :rating, :website, :zip_code, :category
json.photoUrls business.photos.map { |photo| url_for(photo) }


