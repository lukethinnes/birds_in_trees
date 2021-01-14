class Tree < ApplicationRecord
    has_many :branches
    has_many :birds, through: :branches

    def index
        @trees = Tree.all
        render json: @trees
    end

    def show
        @tree = Tree.find(params[:id])
        render json: @tree
    end

    def create
        @tree = Tree.create(
            name: params[:name]
        )
        render json: @tree
    end

end
