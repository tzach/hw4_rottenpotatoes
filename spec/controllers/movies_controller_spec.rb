require 'spec_helper'

describe MoviesController do
  describe 'searching movies by the same director' do
    it 'should call the model method that performs search by director' do
      Movie.should_receive(:search_by_director).with(1)
      get :search_by_director, {:search_terms => '1'}
    end
    it 'should select the Search Results template for rendering'
    it 'should make the search results available to that template'
  end
end
