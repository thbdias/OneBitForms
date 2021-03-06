class Answer < ApplicationRecord
  # belongs_to :user
  belongs_to :form
  # quando se apagar uma answer, todas questions_answers devem ser apagadas
  has_many :questions_answers, dependent: :destroy
  # aceita atributos aninhados
  # accepts_nested_attributes_for :questions_answers
  validates :form, presence: true
  
 
  # self -> permite que uma classe chame direto o método como no exemplo:
  #               Answer.create_with_questions_answers
  def self.create_with_questions_answers form, questions_answers
    answer = nil
    ActiveRecord::Base.transaction do
      answer = Answer.create(form: form)
      questions_answers.each do |qa|
        answer.questions_answers.create(qa.permit(:question_id, :value))
      end
    end
    answer
  end
end
