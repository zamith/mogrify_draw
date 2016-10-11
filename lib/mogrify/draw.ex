defmodule Mogrify.Draw do
  @moduledoc """
  Functions for interacting with the draw functionality from imagemagick
  """
  import Mogrify

  def circle(image, originX, originY, perimX, perimY) do
    image
    |> custom("draw", "circle #{to_string(:io_lib.format("~g,~g ~g,~g", [originX/1, originY/1, perimX/1, perimY/1]))}")
  end

  def text(image, x, y, text) do
    image
    |> custom("draw", "text #{x},#{y} '#{text}'")
  end

  def rectangle(image, upper_left_x, upper_left_y, lower_right_x, lower_right_y) do
    image
    |> custom("draw", "rectangle #{to_string(:io_lib.format("~g,~g ~g,~g", [upper_left_x/1, upper_left_y/1, lower_right_x/1, lower_right_y/1]))}")
  end
end
