Rails.application.routes.draw do
  root 'pictures#index'
  get 'pictures' => 'pictures#index'

  post 'pictures' => 'pictures#create' # this is a new line of code
  get 'pictures/new' => 'pictures#new' # this is also a new line of code

  get 'pictures/:id' => 'pictures#show', as: 'picture'

  get 'pictures/:id/edit' => "pictures#edit", as: "edit_picture"
  patch 'pictures/:id' => "pictures#update" #PATCH! For updating?

  delete 'pictures/:id' => 'pictures#destroy', as: "delete_picture"

  root 'pictures#index' #Why the second root? CURIOUS.
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
#
# Writing my notes here seems to make sense, since the routes are kind of like the hub for all the comings and goings in the app.

# The POST protocol tells the server that we are GIVING it information to present. So posting a new picture, in this case.
# And then the subsequent GET displays the newly posted picture. Right?

# Work in this order = RCAV, Routes Controllers, Actions, Views.
