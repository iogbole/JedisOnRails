class Jedi < ActiveRecord::Base
mount_uploader :picture, PictureUploader
attr_accessor :street_address, :street_address_2, :city, :postal_code, :county, :country
#before_save :set_location
before_create :set_location
##########################################################################################################
#before_save is called every time an object is saved. So for new and existing objects. (create and update action)
#before_create only before creation. So only for new objects (create action)
########################################################################################################

=begin
def set_location ()
    location = "#{street_address} #{street_address_2}"
  end
    
=end

  #validates :first_name, :last_name, :presence => {:message => 'Name cannot be blank, Task not saved'}

validates :first_name, presence: true
validates :last_name, presence: true

    def set_location (*args)
        #puts "DEBUG, got here " + @street_address
        self.location = @street_address + " " + @street_address_2 + " " + @city + " " + @postal_code + " " + @county + " " + @country
 end
end
