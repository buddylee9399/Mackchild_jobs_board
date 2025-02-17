# == Schema Information
#
# Table name: jobs
#
#  id          :integer          not null, primary key
#  company     :string
#  description :text
#  title       :string
#  url         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer          not null
#
# Indexes
#
#  index_jobs_on_category_id  (category_id)
#
# Foreign Keys
#
#  category_id  (category_id => categories.id)
#
class Job < ApplicationRecord
  belongs_to :category
end
