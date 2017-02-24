require 'test_helper'

class PlottrTest < Minitest::Test
  def setup
    @one_coord = [[1,1]]
    @mult_coords = [[1,1], [5,1], [5,6], [1,3]]
  end

  def test_that_it_can_draw_scatter_plot_for_one_coord
    scatter_plot = Plottr::Scatter.new(@one_coord)
    assert_equal " ", scatter_plot.gen_scatter_plot_as_string
  end

  def test_that_it_can_draw_scatter_plot_for_mult_coords
    scatter_plot = Plottr::Scatter.new(@mult_coords)
    assert_equal " ", scatter_plot.gen_scatter_plot_as_string
  end
end
