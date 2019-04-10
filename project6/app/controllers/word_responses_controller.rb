class WordResponsesController < ApplicationController
  before_action :set_word_response, only: [:show, :edit, :update, :destroy]

  # GET /word_responses
  # GET /word_responses.json
  def index
    @word_responses = WordResponse.all
  end

  # GET /word_responses/1
  # GET /word_responses/1.json
  def show
  end

  # GET /word_responses/new
  def new
    @word_response = WordResponse.new
  end

  # GET /word_responses/1/edit
  def edit
  end

  # POST /word_responses
  # POST /word_responses.json
  def create
    @word_response = WordResponse.new(word_response_params)

    respond_to do |format|
      if @word_response.save
        format.html { redirect_to @word_response, notice: 'Word response was successfully created.' }
        format.json { render :show, status: :created, location: @word_response }
      else
        format.html { render :new }
        format.json { render json: @word_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /word_responses/1
  # PATCH/PUT /word_responses/1.json
  def update
    respond_to do |format|
      if @word_response.update(word_response_params)
        format.html { redirect_to @word_response, notice: 'Word response was successfully updated.' }
        format.json { render :show, status: :ok, location: @word_response }
      else
        format.html { render :edit }
        format.json { render json: @word_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /word_responses/1
  # DELETE /word_responses/1.json
  def destroy
    @word_response.destroy
    respond_to do |format|
      format.html { redirect_to word_responses_url, notice: 'Word response was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word_response
      @word_response = WordResponse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_response_params
      params.fetch(:word_response, {})
    end
end