# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WhatsAPI.Model.StructsButtonMessageWithMediaPayload do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :buttons,
    :footer_text,
    :media_data,
    :text,
    :to
  ]

  @type t :: %__MODULE__{
    :buttons => [WhatsAPI.Model.StructsReplyButton.t] | nil,
    :footer_text => String.t | nil,
    :media_data => WhatsAPI.Model.StructsFileUpload.t | nil,
    :text => String.t | nil,
    :to => String.t | nil
  }
end

defimpl Poison.Decoder, for: WhatsAPI.Model.StructsButtonMessageWithMediaPayload do
  import WhatsAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:buttons, :list, WhatsAPI.Model.StructsReplyButton, options)
    |> deserialize(:media_data, :struct, WhatsAPI.Model.StructsFileUpload, options)
  end
end

