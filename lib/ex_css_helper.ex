defmodule ExCssHelper do
  @moduledoc """
  This module stores some EXPLO default Tachyons CSS class groups, named by keys, following the convention set here: <https://bitbucket.org/explo/workspace/snippets/EM6eA/explo-css-styles-classes>

  Generally, this is meant to be included in view helpers of web applications. See <https://bitbucket.org/explo/explo-css-helper-js/> for more details on the theory.
  """

  alias ExCssHelper.Definitions

  @doc """
  Return the CSS classnames associated with a key.

  ## Basic Examples

      iex> ExCssHelper.xc("link")
      "link x-orange x-hover-lightorange pointer"

      iex> ExCssHelper.xc("crapbag")
      nil

  ## Custom Classes

  It's possible to send custom classes that you want to interpret instead of the default set, by using the `:definitions` option:
      iex> ExCssHelper.xc("link", definitions: %{"classes" => %{"link" => "cool class"}})
      "cool class"

  """
  def xc(tag, opts \\ [definitions: Definitions.defaults()]) do
    Keyword.fetch!(opts, :definitions)
      |> Map.get("classes", %{})
      |> Map.get(tag)
  end

  @doc """
  Return the CSS styles associated with a key.

  ## Basic Examples

      iex> ExCssHelper.xs("select")
      "appearance: none; background:transparent; background: url(https://cdn.lab.explo.org/images/input_select_arrow.svg) 96% / 15% no-repeat #FFF;"

      iex> ExCssHelper.xs("crapbag")
      nil

  ## Custom Classes

  It's possible to send custom classes that you want to interpret instead of the default set:
      iex> ExCssHelper.xs("select", definitions: %{"styles" => %{"select" => "cool select tho"}})
      "cool select tho"

  """
  def xs(tag, opts \\ [definitions: Definitions.defaults()]) do
    Keyword.fetch!(opts, :definitions)
      |> Map.get("styles", %{})
      |> Map.get(tag)
  end
end
