class ItemsController < ApplicationController
  def new
   @user = User.find(params[:user_id])
   @item = Item.new
  end

  def create
     @item = Item.new
     @item.name = params[:item][:name]
     @user = User.find(params[:user_id])
     @item.user = @user

     if @item.save
       flash[:notice] = "Item was saved."
       redirect_to user_path(current_user)
     else
       flash.now[:alert] = "There was an error saving the item. Please try again."
       render :new
     end
   end

   def edit
     @item = Item.find(params[:id])
   end

   def update
     @item = Item.find(params[:id])
     @item.name = params[:item][:name]

     if @item.save
       flash[:notice] = "Item was updated."
       redirect_to user_path(current_user)
     else
       flash.now[:alert] = "There was an error saving the item. Please try again."
       render :edit
     end
   end

   def destroy

   @item = Item.find(params[:id])
   if @item.destroy
     flash[:notice] = "\"#{@item.name}\" was deleted successfully."
      #redirect_to user_path(current_user)
   else
     flash.now[:alert] = "There was an error deleting the item."
     #redirect_to user_path(current_user)
   end
   respond_to do |format|
    format.html
    format.js
  end
 end
end
