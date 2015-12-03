module API
  module V1
    class Articles < Grape::API
      include API::V1::Defaults
      
      resource :articles do
        desc "Return all articles"
        get "", root: :articles do
          Article.all
        end
        
        desc "Return an article"
        params do
          requires :id, type: String, desc: "ID of the article"
        end

        get ":id", root: "article" do
          Article.where(id: permitted_params[:id]).first!
        end
      
      end

    end
  end
end