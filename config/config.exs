use Mix.Config

config :aroma, bots: [
  %{:server => "chat.freenode.net", :port => 6667,
    :nick => "temp_mate", :user => "temp_mate", :name => "Aroma",
    :channel => "##AromaElixir"}
]
