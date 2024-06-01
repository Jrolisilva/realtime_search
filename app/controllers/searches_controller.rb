class SearchesController < ApplicationController
  def index
    @searches = Search.group(:term).order('count_id DESC').count('id')
  end

  def create
    term = search_params[:term].strip

    if find_term(term)
      search = find_term(term)
      update_term(search, search_params)
      flash[:notice] = 'Search updated successfully'
    else
      Search.create(search_params)
      flash[:success] = 'Search saved successfully'
    end
    redirect_to root_path
  end

  private

  def search_params
    params.require(:search).permit(:term).merge(ip: request.remote_ip)
  end

  def find_term(term)
    Search.where('? LIKE term || \'%\'', term).first
  end

  def update_term(search, search_params)
    search.update(term: search_params[:term], complete: true)
  end
end
