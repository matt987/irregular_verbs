class VerbsController < ApplicationController
  respond_to :json
  def index
    @verbs = Verb.all
    respond_with @verbs
  end

  def create
  end

  def show
    @verb = Verb.find(params[:id])
    respond_with @verb.attributes.slice("infinitive", "past_tense", "past_participle")
  end

  def past_tense
    @verb = Verb.select([:infinitive, :past_tense, :past_participle]).find_by_past_tense(params[:description]) || "Not matches"
    respond_with @verb
  end

  def past_participle
    @verb = Verb.select([:infinitive, :past_tense, :past_participle]).find_by_past_participle(params[:description]) || "Not matches"
    respond_with @verb
  end

  def infinitive
    @verb = Verb.select([:infinitive, :past_tense, :past_participle]).find_by_infinitive(params[:description]) || "Not matches"
    respond_with @verb
  end

  def update
    @verb = Verb.find(params[:id])
    respond_with @verb
  end
end
