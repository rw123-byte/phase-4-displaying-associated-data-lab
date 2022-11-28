class User < ApplicationRecord
  has_many :items

  def show
    user = User.find(params[:id])
    render json: user, include: :items
  end
end
