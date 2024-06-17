class Free < ApplicationRecord

    mount_uploader :image, ImageUploader
    mount_uploader :images2, ImageUploader
    mount_uploader :images3, ImageUploader
    mount_uploader :images4, ImageUploader
    mount_uploader :images5, ImageUploader

end
