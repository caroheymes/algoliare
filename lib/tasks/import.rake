namespace :import do
    desc "imports data from a csv file"
    task :data => :environment do
        require 'csv'
        CSV.foreach("#{Rails.root}/lib/assets/donnee.csv", :encoding => 'windows-1251:utf-8') do |row|
                region = row[0]
                lat = row[1]
                lng  = row[2]
                company = row[3]
                adr = row[4]
                zip = row[5]
                city = row[6]
                couette = row[7]
                manteau = row[8]
                chemise = row[9]
                facebook = row[10]
                website = row[11]
                openinghours = row[12]
                clients = row[13]
                phone = row[14]
                phone2 = row[15]
                prestations = row[16]
                reqgeocode = row[17]
                chmap = row[18]
                Contact.create!(region: region, lat: lat, lng: lng, company: company, adr: adr, zip: zip, city: city, 
                couette: couette, manteau: manteau, chemise: chemise, facebook: facebook, website: website, openinghours: openinghours, clients: clients, phone: phone,
                phone2: phone2, prestations: prestations, reqgeocode: reqgeocode, chmap: chmap)
                puts row.inspect
            end
        end
                
end