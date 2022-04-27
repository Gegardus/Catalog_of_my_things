require_relative '../classes/movie'
require_relative '../classes/item'

describe Movie do
  before(:all) do
    @movie = Movie.new(true, '2020/12/9', true)
  end

  it 'Create instance of Movie class' do
    expect(@movie).to be_an_instance_of(Movie)
  end

  it 'Check move_to_archive : @archived = true (can_be_archived? = true)' do
    @movie.publish_date = '2020/02/03'
    @movie.move_to_archive
    expect(@movie.archived).to eq true
  end
end