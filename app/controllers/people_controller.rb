class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "3ik7pAYntKAWHI89hBtT2KudU"
  config.consumer_secret     = "rJuXBg1glT5WOSaSrLkVAMKBrf8dC5U9G4Sr70cvDnhUgr0CUa"
  config.access_token        = "2931904281-PkZFtZuXRxl57WgOfc8WucO9XpZnIdo06Kv6yYJ"
  config.access_token_secret = "396fV9KUEm3Znyzs3RLOgb98tgOBqxn4BTZVkCBHub73C"
end
  # GET /people
  def index
    @people = Person.all
  end

  # GET /people/1
  def show
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  def create
    @person = Person.new(person_params)

    if @person.save
      client.update("I'm tweeting with @gem!")
      redirect_to @person, notice: 'Person was successfully created.'
      Email.send_email(@person).deliver
    else
      render :new
    end
  end

  # PATCH/PUT /people/1
  def update
    if @person.update(person_params)
      redirect_to @person, notice: 'Person was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /people/1
  def destroy
    @person.destroy
    redirect_to people_url, notice: 'Person was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def person_params
      params.require(:person).permit(:name, :surname, :description, :email, :www, :phone, :adress, :city, :country)
    end
end
