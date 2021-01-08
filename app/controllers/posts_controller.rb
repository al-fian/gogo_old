class PostsController < ApplicationController
  def create
  end

  private

  def permitted_params
    params.require(:post).permit(
      :postable_type,
      :status_text
    )
  end
end
