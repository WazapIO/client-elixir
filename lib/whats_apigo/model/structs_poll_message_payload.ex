# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WhatsAPIGo.Model.StructsPollMessagePayload do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :options,
    :selectable_options_count,
    :title,
    :to
  ]

  @type t :: %__MODULE__{
    :options => [String.t],
    :selectable_options_count => integer(),
    :title => String.t,
    :to => String.t
  }
end

defimpl Poison.Decoder, for: WhatsAPIGo.Model.StructsPollMessagePayload do
  def decode(value, _options) do
    value
  end
end

