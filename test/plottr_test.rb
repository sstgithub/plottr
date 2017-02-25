require 'test_helper'

class PlottrTest < Minitest::Test
  def setup
    @one_coord = [[1,1]]
    @mult_coords = [[1,1], [5,1], [5,6], [1,3]]
  end

  def test_that_it_can_draw_scatter_plot_for_one_coord
    scatter_plot = Plottr::Scatter.new(@one_coord)
    expected_string_scatter_plot = " ^\n1|  x\n0|  \n  -->\n  0 1 "
    assert_equal expected_string_scatter_plot, scatter_plot.gen_string_scatter_plot
  end

  def test_that_it_can_draw_scatter_plot_for_mult_coords
    scatter_plot = Plottr::Scatter.new(@mult_coords)
    expected_string_scatter_plot = " ^\n6|          x\n5|          \n4|          \n3|  x       \n2|          \n1|  x       x\n0|          \n  ---------->\n  0 1 2 3 4 5 "
    assert_equal expected_string_scatter_plot, scatter_plot.gen_string_scatter_plot
  end
end
