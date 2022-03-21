namespace :logos do
  desc "Seed the logos table with the Scalingo one"
  task seed_scalingo: :environment do
    Logo.find_or_create_by!(name: "Scalingo", file_path: "logo_scalingo.png")
    puts "Scalingo logo inserted"
  end
end
