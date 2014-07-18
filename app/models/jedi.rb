class Jedi < ActiveRecord::Base
mount_uploader :picture, PictureUploader
attr_accessor :street_address, :street_address_2, :city, :postal_code, :county, :country
before_save :set_location

=begin
def set_location ()
    location = "#{street_address} #{street_address_2}"
  end
    
=end
    def set_location (*args)
        #puts "DEBUG, got here " + @street_address
        self.location = @street_address + " " + @street_address_2 + " " + @city + " " + @postal_code + " " + @county + " " + @country
 end
end
