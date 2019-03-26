class Job < ActiveRecord::Base
	has_many :user_jobs
	has_many :users, through: :user_jobs
		
		
	# def find_by_location

	# end

	# def find_by_title

	# end

	# def find_by_type

	# end

	
end

# #make the web request
# 		response_string = RestClient.get('https://jobs.github.com/positions.json?page=2')
# 		response_hash = JSON.parse(response_string)
		



# def bulk_import(response_hash)
				
			
# 	response_hash.each do |job|
# 		position_type = job["type"]
# 		description = job["description"]
# 		job_uniq_id = job["id"]
# 		url = job["url"] 
# 		company = job["company"] 
# 		location = job["location"] 
# 		title = job["title"]  
# 		company_url = job["company_url"]
# 		how_to_apply = job["how_to_apply"]

# 	Job.find_or_create_by(job_uniq_id: "#{job_uniq_id}", url: "#{url}", company: "#{company}", 
# 			location: "#{location}", title: "#{title}", job_info: "#{description}", 
# 			position_hours: "#{position_type}",company_url: "#{company_url}",how_to_apply:"#{how_to_apply}").save
# 	end
# end
# 		#bulk_import(response_hash)

# def get_all_jobs
# 	page_count = 1
# 	r_string = RestClient.get('https://jobs.github.com/positions.json?page=1')
# 	r_hash = JSON.parse(r_string)
# 	bulk_import(r_hash)

# 	until r_hash.length == 0
# 		r_string = RestClient.get("https://jobs.github.com/positions.json?page='#{page_count}'")
# 		r_hash = JSON.parse(r_string)
# 		bulk_import(r_hash)
# 		page_count += 1
# 	end
# end
# binding.pry
# get_all_jobs
			
