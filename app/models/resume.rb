class Resume < ApplicationRecord
  belongs_to :user

  mount_uploader :attachment, AttachmentUploader

  validates :content, presence: true
end
