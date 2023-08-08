class HomesController < ApplicationController
  def index
    photos = ["public/aaa.jpg", "public/sss.jpg", "public/car.jpeg", "public/cover.jpg", "public/pngwing1.png", "public/pngwing2.png"]
    photo = photos.sample
    extension = photo.match(/\.(.+)/)
    send_file photo, type: "image/#{extension[1]}", disposition: 'inline'
  end
end