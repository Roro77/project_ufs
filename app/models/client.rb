class Client < ApplicationRecord
    before_save :set_code

    def set_code
        self.code = SecureRandom.alphanumeric(8)
    end
end
