class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  post "/addParty" do
    party = Party.create(
      party_name: params[:partyName],
      candidate_name: params[:candidateName],
      profile_image: params[:profileImage],
      party_logo: params[:partyLogo]
  )
  party.to_json(include: :votes)
end


  #GOOGLE SIGN IN OR SIGUP
  post "/sign_up_sign_in" do 
    if User.where(:googleId => params[:googleId]).any?
      message={
        message:"User already exists"      
      }
    message.to_json(include: message)
    else
      user =User.create(
        name: params[:name],
        email: params[:email],
        role: params[:role],
        googleId: params[:googleId],
        img_url: params[:img_url] )
        user.to_json


  end 
  end

  # POST VOTE
  post "/vote" do
    # binding.pry
    
    vote=Vote.create(
      party_id: params[:candidate_id]
    )
    count_parties=Party.count
    Party.all.each do |c|
      if c.id == params[:candidate_id]
      else
        votes =Vote.where(:party_id==params[:candidate_id]).limit(1)
        votes.destroy_all
      end
    end
    vote
end

# GET ALL CANDIDATES
get "/get_all_candidates" do
  candidates=Party.all
  candidates.to_json(include: :votes)
  end

  # GET ALL CANDIDATES
post "/account_details" do
  account=User.where(:googleid =>params[:googleId])
  account.to_json
  end


  


# DELETE CANDIDATE
delete "/delete_candidate/:id" do
  party=Party.find(params[:id]);
  party.destroy
  party.to_json
  end
  

  
# ADD Candidate
post "/add_votes" do 
  candidate= Vote.create(
     voters_id: params[:voters_id],
     candidate_id: params[:candidate_id]
   )
   candidate.to_json(include: :votes )
 end
 
# VOTE UP
post "/addVote" do
  to_js_v=[]
  random=rand 200..900
  vote=Vote.create(party_id:params[:candidateID],
  voters_id:random)
  message={message:"Success!"}
 message.to_json
end

 
# SUM VOTES
get "/getSome" do
to_js_v=[]
sum_votes={sum:Vote.count}
sum_votes.to_json
end

# VOTE DOWN
post "/removeVote" do
  # vote=Vote.where(id:params[:candidateID]).limit(1)
  vote = Vote.where(party_id:params[:candidateID]).take
  # delete the review

  vote.destroy
  # message={message:"Success!"}
  vote.to_json
end
end

