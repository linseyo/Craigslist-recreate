
cats = ["community", "housing", "jobs", "for_sale", "gigs"]

cats.each {|cat| Category.create!(title: cat)}
