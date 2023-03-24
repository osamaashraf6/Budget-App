class EntitiesController < ApplicationController
  def new
    @entity = Entity.new
    @groups = Group.all.where(user_id: current_user.id)
  end

  def create
    @entity = Entity.create(entity_params)
    @entity.user_id = current_user.id
    respond_to do |format|
      if @entity.save
        format.html do
          redirect_to group_url(Group.find(@entity.group_id)), notice: 'Entity was successfully created.'
        end
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def entity_params
    params.require(:entity).permit(:name, :amount, :group_id)
  end
end
