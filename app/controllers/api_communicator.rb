require 'rest-client'
require 'json'
require 'pry'

# response_string = RestClient.get('https://jobs.github.com/positions.json?page=2')
# response_hash = JSON.parse(response_string)
def bulk_import(response_hash)
     response_hash.map do |job|
        position_hours = job["type"]
        job_info = job["description"]
        job_uniq_id = job["id"]
        url = job["url"] 
        company = job["company"] 
        location = job["location"] 
        title = job["title"]  
        company_url = job["company_url"]
        how_to_apply = job["how_to_apply"]

    Job.find_or_create_by(job_uniq_id:"#{job_uniq_id}", url:"#{url}",company:"#{company}",location:"#{location}",title:"#{title}",company_url:"#{company_url}",how_to_apply:"#{how_to_apply}").save
    end
end

def get_all_jobs
    page_count = 1
    # r_string = RestClient.get('https://jobs.github.com/positions.json?page=1')
    # r_hash = JSON.parse(r_string)
    # bulk_import(r_hash)

    until page_count > 10
        r_string = RestClient.get("https://jobs.github.com/positions.json?page=#{page_count}")
        r_hash = JSON.parse(r_string)
        bulk_import(r_hash)
        page_count += 1
    end
end			
# binding.pry
