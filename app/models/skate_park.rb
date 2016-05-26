class SkatePark < ApplicationRecord

  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      skate_park_hash = row.to_hash
      skate_park = SkatePark.where(name: skate_park_hash["name"])

      if skate_park.count == 1
        skate_park.first.update_attributes(skate_park_hash)
      else
        SkatePark.create!(skate_park_hash)
      end # end if !product.nil?
    end # end CSV.foreach
  end # end self.import(file)
end
