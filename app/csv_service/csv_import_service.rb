class CsvImportService
   require 'csv'
   def call(file)
        csv_text = File.read(file)
        @data = CSV.parse(csv_text, headers: true)
        @data.each do |row|
          csv_data = CsvDatum.new
          csv_data.name = row["name"]
          csv_data.email = row["email"]
          csv_data.age = row["age"]
          csv_data.save
        end
        @count = CsvDatum.count
        flash[:notice] = "Total #{@count} has been imported."
   end
    
end