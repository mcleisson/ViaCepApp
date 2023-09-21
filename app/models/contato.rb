class Contato < ApplicationRecord
  belongs_to :user
  geocoded_by :logradouro
  after_validation :geocode
  validates :cpf, presence: true, uniqueness: true, format: { with: /\A\d{11}\z/, message: "deve conter 11 dígitos numéricos" }
  validate :validar_formato_cpf

  def validar_formato_cpf
    unless cpf.to_s.match?(/\A\d{11}\z/)
      errors.add(:cpf, "deve conter apenas números")
    end
  end
  
end
