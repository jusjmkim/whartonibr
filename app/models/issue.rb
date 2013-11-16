# == Schema Information
#
# Table name: issues
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  volume           :integer
#  created_at       :datetime
#  updated_at       :datetime
#  pdf_file_name    :string(255)
#  pdf_content_type :string(255)
#  pdf_file_size    :integer
#  pdf_updated_at   :datetime
#
class Issue < ActiveRecord::Base
  attr_accessible :name, :pdf, :issue_img, :title
  has_many :highlights
  has_attached_file :pdf
end
