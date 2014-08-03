class JedisController < ApplicationController
  before_action :set_jedi, only: [:show, :edit, :update, :destroy]

  # GET /jedis
  # GET /jedis.json
  def index
    @jedis = Jedi.all
  end

  # GET /jedis/1
  # GET /jedis/1.json
  def show
  end

  # GET /jedis/new
  def new
    @jedi = Jedi.new
  end

  # GET /jedis/1/edit
  def edit
  end
    

  # POST /jedis
  # POST /jedis.json
  def create
    @jedi = Jedi.new(jedi_params)
    #@jedi.set_location(params['street_address'],params['street_address_2'])
    @jedi.set_location(params[:street_address],params[:street_address_2],params[:city],params[:postal_code],params[:county],params[:country])
      
    respond_to do |format|
      if @jedi.save
        format.html { redirect_to @jedi, notice: 'Jedi was successfully created.' }
        format.json { render :show, status: :created, location: @jedi }
      else
        format.html { render :new }
        format.json { render json: @jedi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jedis/1
  # PATCH/PUT /jedis/1.json
  def update
    respond_to do |format|
      if @jedi.update(jedi_editform_params)
        format.html { redirect_to @jedi, notice: 'Jedi was successfully updated.' }
        format.json { render :show, status: :ok, location: @jedi }
      else
        format.html { render :edit }
        format.json { render json: @jedi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jedis/1
  # DELETE /jedis/1.json
  def destroy
    @jedi.destroy
    respond_to do |format|
      format.html { redirect_to jedis_url, notice: 'Jedi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jedi
      @jedi = Jedi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jedi_params
      params.require(:jedi).permit(:first_name, :last_name, :sex, :picture, :street_address, :street_address_2, :city, :postal_code, :county, :country)
    end
  
  def jedi_editform_params
      params.require(:jedi).permit(:first_name, :last_name, :sex, :location, :picture)
    end
end
