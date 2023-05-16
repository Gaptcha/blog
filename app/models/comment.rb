class Comment < ApplicationRecord
    include Visible
    validates :commenter, :body, presence: true
    belongs_to :post
end
