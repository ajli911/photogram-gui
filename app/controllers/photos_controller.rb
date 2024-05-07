class PhotosController < ApplicationController
  def index
    matching_photos = Photo.all
    @list_of_photos = matching_photos.order({ :created_at => :desc })

    render({ :template => "/photo_templates/index"})
  end

  def show
    url_id = params.fetch("path_id")
    matching_id = Photo.where({ :id => url_id})
    @the_photo = matching_id.first

    if @the_photo == nil
      redirect_to("/404")
    else 
      render({ :template => "photo_templates/show" })
    end
  end

  def insert
    input_image = params.fetch("input_image")
    input_caption = params.fetch("input_caption")
    input_owner_id = params.fetch("input_owner_id")

    new_photo = Photo.new
    new_photo.image = input_image
    new_photo.caption = 
  end

  def delete
    the_id = params.fetch("toast_id")
    matching_photos = Photo.where({ :id => the_id })
    the_photo = matching_photos.first
    the_photo.destroy

    redirect_to("/photos")
  end
end
