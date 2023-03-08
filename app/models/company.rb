# == Schema Information
#
# Table name: companies
#
#  id                :integer          not null, primary key
#  founded_on        :date
#  industry          :string
#  last_year_revenue :integer
#  name              :string
#  structure         :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Company < ApplicationRecord
end
