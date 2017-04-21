defmodule DialyzerBug do
  @moduledoc """
  Example of the bug where some unknown types are not found.
  """

  @spec hello(Type.t) :: String.t
  def hello(value) do
    inspect(value)
  end
end
