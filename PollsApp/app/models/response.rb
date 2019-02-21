class Response < ApplicationRecord

  belongs_to :answer_choice,
    class_name: :AnswerChoice,
    primary_key: :id, 
    foreign_key: :answer_choice_id

  belongs_to :respondent,
    class_name: :User,
    primary_key: :id, 
    foreign_key: :user_id

  belongs_to :question,
  class_name: :Question,
  primary_key: :id,
  foreign_key: :question_id

  # self.question.responses.exists?(id: self.id)
  def sibling_responses
    self.question.responses.where.not("responses.id = ?", self.id)
  end

  def respondent_already_answered?
    
  end
  
end