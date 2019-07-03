use Mix.Config

config :nostrum,
  token: "NTk2MDYyNDkxMTQ3MjM5NDI0.XR0Feg.giDWRNCAqhtUE1_prDlFEUJInpY",
	num_shards: :auto

config :logger, :console, metadata: [:shard]
