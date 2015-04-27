class Post < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    belongs_to :user

    mount_uploader :picture, PictureUploader



    def date_published
        created_at.localtime.strftime("%A, %B %-d, %Y at %l:%M %p")
    end

    validate  :picture_size

    private

      def picture_size
        if picture.size > 5.megabytes
          errors.add(:picture, "should be less than 5MB")
        end
      end

end
