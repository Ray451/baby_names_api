class BabiesController < ApplicationController
  def create
    baby_list = BabyList.find_by(list_id: params[:listID])
    baby = baby_list.babies.create(name: params[:babyName])

    if baby.save
      render json: { status: 'success' }, status: 200
    else
      render json: { status: 'error', errors: baby.errors.full_messages }, status: 400
    end
  end
end
