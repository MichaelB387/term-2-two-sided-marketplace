class Message < ApplicationRecord
    belongs_to :user
    validates :content, presence: true
    validates :user_id, presence: true

    def self.most_recent
        # limits messages to 20
        order(:created_at).last(20)
    end

end