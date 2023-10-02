class PhotosController < ApplicationController
  def index
    @show_all_photos = Photo.all.order(:created_at => :desc)
    render({ :template => "photos_templates/index"})
  end

  def show
    photo_id = params.fetch("photo_id")

    matching_photos = Photo.where({ :id => photo_id})

    @the_photo = matching_photos.at(0)

    render({ :template => "photos_templates/show"})
  end

  def create
    the_photo = Photo.new

    the_photo.image = params.fetch("the_image")
    the_photo.caption = params.fetch("the_caption")
    the_photo.owner_id = params.fetch("the_owner_id")

    the_photo.save

    redirect_to("/photos/#{the_photo.id}")
  end

  def create_comment
    the_comment = Comment.new

    the_comment.photo_id = params.fetch("the_photo_id")
    the_comment.author_id = params.fetch("the_author_id")
    the_comment.body = params.fetch("the_comment")

    the_comment.save

    redirect_to("/photos/#{the_comment.photo_id}")
  end

  def update
    photo_id = params.fetch("photo_id")

    matching_photos = Photo.where({ :id => photo_id})

    the_photo = matching_photos.at(0)

    the_photo.image = params.fetch("the_image")
    the_photo.caption = params.fetch("the_caption")

    the_photo.save

    redirect_to("/photos/#{the_photo.id}")
  end

  def destroy
    photo_id = params.fetch("photo_id")

    the_photo = Photo.where({ :id => photo_id}).at(0)

    the_photo.destroy

    redirect_to("/photos")
  end
end
