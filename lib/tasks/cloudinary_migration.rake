namespace :active_storage do
  desc "Migrate existing ActiveStorage files to Cloudinary"
  task migrate_to_cloudinary: :environment do
    require "open-uri"

    Space.find_each do |space|
      next unless space.images.attached?

      space.images.each do |image|
        begin
          # Get a service URL for the image
          url = Rails.application.routes.url_helpers.rails_blob_url(image, only_path: false)
          puts "Migrating image for Space ##{space.id}, file: #{image.filename}"

          # Download the file
          file = URI.open(url)

          # Attach the file to Cloudinary (re-upload)
          space.images.attach(io: file, filename: image.filename.to_s, content_type: image.content_type)
          
          # Purge the original file from ActiveStorage
          image.purge
        rescue => e
          puts "Error migrating for Space ##{space.id}: #{e.message}"
        end
      end
    end
    puts "Migration complete!"
  end
end
