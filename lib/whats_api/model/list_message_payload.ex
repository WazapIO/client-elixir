# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WhatsAPI.Model.ListMessagePayload do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :button_text,
    :description,
    :multi_select,
    :sections,
    :text,
    :title,
    :to
  ]

  @type t :: %__MODULE__{
    :button_text => String.t | nil,
    :description => String.t | nil,
    :multi_select => boolean() | nil,
    :sections => [WhatsAPI.Model.ListSection.t],
    :text => String.t | nil,
    :title => String.t | nil,
    :to => String.t
  }
end

defimpl Poison.Decoder, for: WhatsAPI.Model.ListMessagePayload do
  import WhatsAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:sections, :list, WhatsAPI.Model.ListSection, options)
  end
end

