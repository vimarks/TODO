class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :address, :lat, :long
end
