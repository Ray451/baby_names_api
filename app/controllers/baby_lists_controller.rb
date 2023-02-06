class BabyListsController < ApplicationController
  require 'securerandom'
  def create
    if params[:list_id].present? && BabyList.exists?(list_id: params[:list_id])
      baby_list = BabyList.find_by(list_id: params[:list_id])
      baby_name_lists = baby_list.babies.map do |baby|
        baby.name
      end
      render json: { status: 'success', baby_name_lists: }, status: 200
    else
      list_id = SecureRandom.hex(6)
      baby_list = BabyList.create(list_id: list_id)
      if baby_list.save
        render json: { status: 'success', list_id: list_id }, status: 200
      else
        render json: { status: 'error' }, status: 400
      end
    end
  end
end
