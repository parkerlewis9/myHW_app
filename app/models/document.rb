class Document < ActiveRecord::Base

	belongs_to :user

  has_many :assignment_documents, dependent: :destroy
	has_many :assignments, through: :assignment_documents

end
