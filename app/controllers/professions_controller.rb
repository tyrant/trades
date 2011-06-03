class ProfessionsController < ApplicationController

  before_filter :authenticate_user!

  def index
    @professions = Profession.all
  end
  
  def show
    @profession = Profession.find(params[:id])
  end
  
  def new
    @profession = Profession.new
  end
  
  def create
    @profession = Profession.new(params[:profession])
    respond_to do |format|
      if @profession.save
        format.html { redirect_to professions_path, :notice => 'New profession created!' }
      else
        format.html { render :action => :new }
      end
    end
  end
  
  def edit
    @profession = Profession.find(params[:id])
  end
  
  def update
    @profession = Profession.find(params[:id])
    respond_to do |format|
      if @profession.update_attributes(params[:profession])
        format.html { redirect_to @profession, :notice => "This profession's attributes have been updated" }
      else
        format.html { render :action => :edit }
      end
    end
  end
  
  def destroy
    @profession = Profession.find(params[:id])
    @profession.delete
    redirect_to index_path, :notice => 'Profession deleted'
  end
    
end
