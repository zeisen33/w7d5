# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  url        :string
#  content    :text
#  sub_id     :integer          not null
#  author_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord

    has_many :post_subs,
        foreign_key: :post_id,
        class_name: :PostSub,
        dependent: :destroy

    has_many :subs_posted_to,
        through: :post_subs,
        source: :sub

    belongs_to :original_sub,
        foreign_key: :sub_id,
        class_name: :Sub

    belongs_to :author,
        foreign_key: :author_id,
        class_name: :User

end
