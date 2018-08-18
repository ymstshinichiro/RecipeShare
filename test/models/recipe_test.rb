# == Schema Information
#
# Table name: recipes
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  summary    :text(65535)
#  material   :text(65535)
#  howtomake  :text(65535)
#  genre      :string(255)
#  madeit     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :string(255)
#  group      :integer
#  author     :integer          default(0), not null
#

require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
