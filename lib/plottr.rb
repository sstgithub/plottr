require "plottr/version"

module Plottr
  class Scatter
    def initialize(coords_array)
      gen_blank_graph(coords_array)
      add_coords_to_blank_graph(coords_array)
    end

    def gen_string_scatter_plot
      " ^\n" + @current_scatter_plot.reverse.join("\n") + "\n" +  @bottom_of_scatter_plot.join("\n")
    end

    private

    def add_coords_to_blank_graph(coords_array)
      coords_array.each do |coords|
        row = @current_scatter_plot[coords.last]
        cols = row.split("")
        first_space_index = cols.find_index(" ")
        initial_string = row[0..first_space_index-1]
        cols = cols[(first_space_index)..-1]
        cols[coords.first * 2] = "x"
        row = initial_string + cols.join("")
        @current_scatter_plot[coords.last] = row
      end
    end

    def gen_blank_graph(coords_array)
      highest_x_val = find_highest_x(coords_array)
      highest_y_val = find_highest_y(coords_array)
      @bottom_of_scatter_plot = gen_bottom_of_graph(highest_x_val)
      @current_scatter_plot = []
      (highest_y_val+1).times do |i|
        @current_scatter_plot << "#{i}|"+(" " * (highest_x_val*2))
      end
    end

    def find_highest_y(coords_array)
      coords_array.map(&:last).max
    end

    def find_highest_x(coords_array)
      coords_array.map(&:first).max
    end

    def gen_bottom_of_graph(highest_x_val)
      #each num on bottom for x vals should have be separated by a space
      numbering_for_x_vals = "  "
      (highest_x_val+1).times do |i|
        numbering_for_x_vals += "#{i} "
      end
      #two dashes for each number since nums are separated by a space
      total_dashes = "-"*(highest_x_val*2)
      line_above_numbering_for_x_vals = "  #{total_dashes}>"

      [line_above_numbering_for_x_vals, numbering_for_x_vals]
    end
  end
end
