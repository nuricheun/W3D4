# == Schema Information
#
# Table name: responses
#
#  id              :bigint(8)        not null, primary key
#  answerchoice_id :integer
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Response < ApplicationRecord
    belongs_to :answer_choice,
        primary_key: :id,
        foreign_key: :answerchoice_id,
        class_name: :AnswerChoice
    
    belongs_to :respondent,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User

end
