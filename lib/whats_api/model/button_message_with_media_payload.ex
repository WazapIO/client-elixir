# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WhatsAPI.Model.ButtonMessageWithMediaPayload do
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
    :buttons => [WhatsAPI.Model.ReplyButton.t] | nil,
    :footer_text => String.t | nil,
    :media_data => WhatsAPI.Model.FileUpload.t | nil,
    :text => String.t | nil,
    :to => String.t | nil
  }
end

defimpl Poison.Decoder, for: WhatsAPI.Model.ButtonMessageWithMediaPayload do
  import WhatsAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:buttons, :list, WhatsAPI.Model.ReplyButton, options)
    |> deserialize(:media_data, :struct, WhatsAPI.Model.FileUpload, options)
  end
end
