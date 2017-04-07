Rails.application.routes.draw do
  get 'pictures' => 'pictures#index'
  get 'pictures/:id' => 'pictures#show', as: 'picture'
end

# # Explaining it for myself.
#
# takes the 'pictures' instruction and directs the view to the pictures index in views/pictures/index
#
# takes the 'pictures/:id' instruction and implements the ruby code to display the appropriate picture.
# These are examples of GETs, as in they GET information to display.
# This is the Rails Router, which is directing the controller (PicturesController) to display the view (index).
# The (index) is populated by information in the database that is interpreted by the model (picture.rb).

#... I think that sounds right. 
