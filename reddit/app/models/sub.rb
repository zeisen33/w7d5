# == Schema Information
#
# Table name: subs
#
#  id           :integer          not null, primary key
#  title        :string           not null
#  description  :text
#  moderator_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Sub < ApplicationRecord

    has_many :post_subs,
        foreign_key: :sub_id,
        class_name: :PostSub,
        dependent: :destroy

    has_many :cross_posts,
        through: :post_subs,
        source: :post

    belongs_to :moderator,
        foreign_key: :moderator_id,
        class_name: :User

    has_many :original_posts,
        foreign_key: :sub_id,
        class_name: :Post,
        dependent: :destroy
end
