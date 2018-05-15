(function() {
  return {
  	port: parseInt(process.env.STATSD_PORT) || 8125,
	anodotApiHost: process.env.ANODOT_HOST || "https://api.anodot.com",
  	anodotApiToken: process.env.ANODOT_API_TOKEN || "ANODOT_API_TOKEN",
  	backends: ["statsd-anodot-backend"],
  	flushInterval: 60000,
  	keyNameSanitize:false,
  	anodotMetricFormat: "2.0"
  };
})()
