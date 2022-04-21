class ImageController < ApplicationController
    
    def index
        @images = Image.all
        render "images/index"
    end

    def create
        @image = Image.new(
            monkey_id: params["monkey_id"],
            image_url: params["image_url"],
        )
        if 
          @image.save
         render template: "images/show"
        else 
          render json: { errors: @image.errors.full_messages }, status: 422
        end
    end
    
    def show
        id = params[:id]
        @image = Image.find_by(id: id)
        render template: "images/show"
    end

    def update
        id = params[:id]
        @image = Image.find_by(id: id)
    
        @image.monkey_id = params["monkey_id"] || @image.monkey_id
        @image.image_url = params["image_url"] || @image.image_url
       
    
        @image.save
        render template: "images/show"
    end
    
    def destroy
        id = params[:id]
        image = Image.find_by(id: id)
        image.destroy
        render json: {message: "Image successfully destroyed!"}
    end
end
