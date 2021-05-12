class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to root_path
    else 
      render :new
    end
  end

  def show
    @pet =Pet.find(params[:id])
  end

  def edit
    @pet = Pet.find(params[:id])
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      redirect_to pet_path
    else render :edit
    end
  end

  def destroy
    pet = Pet.find(params[:id])
    if pet.destroy
    redirect_to root_path
    end
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :sex, :type_of_pet, :birthday, :color, :hospital, :medical_history, :medicine, :allergies, :walk_time, :character, :type_of_foods, :number_of_meals, :amount_of_food, :memo, :image).merge(user_id: current_user.id)
  end

end
