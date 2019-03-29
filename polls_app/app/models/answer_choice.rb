# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint(8)        not null, primary key
#  question_id :integer
#  text        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AnswerChoice < ApplicationRecord
    belongs_to :question,
        primary_key: :id,
        foreign_key: :question_id,
        class_name: :Question

    has_many :responses,
        primary_key: :id,
        foreign_key: :answerchoice_id,
        class_name: :Response    

end
