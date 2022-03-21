class WelcomeController < ApplicationController
  def index
    @logo = Logo.find_by name: "Scalingo"
    @logo.image.attach(
      io: File.open(Rails.root+"app/assets/images/"+@logo.file_path),
      filename: "logo.png",
    )
  end
end
