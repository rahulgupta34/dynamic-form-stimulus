class CsvDatum < ApplicationRecord
    
    def self.to_csv
        attributes = %w{name email age}
        CSV.generate(headers: true) do |csv|
            csv << attributes
            
            all.find_each do |user|
                csv << attributes.map{ |attr| user.send(attr) }
            end
        end
    end
end
