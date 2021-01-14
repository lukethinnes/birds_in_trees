class BranchesController < ApplicationController

    def index
        @branches = Branch.all 
        render json: @branches
    end

    def create
        @branch = Branch.create(
            bird_id: params[:bird_id],
            tree_id: params[:tree_id]
        )
        render json: @branch
    end

    def show
        @branch = Branch.find(params[:id])
        render json: @branch, include: [:bird, :tree]
    end

    def update
        @branch = Branch.find(params[:id])
        @branch.update(
            bird_id: params[:bird_id],
            tree_id: params[:tree_id]
        )
        render json: @branch
    end

    def destroy
        @branch = Branch.find(params[:id])
        @branch.destroy
    end


end
