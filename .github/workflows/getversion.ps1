$Headers = @{'Accept'='application/vnd.github.v3+json'}
$Response = ( Invoke-WebRequest "https://api.github.com/repos/RocketChat/Rocket.Chat.Electron/releases/latest" -Method GET -Headers $Headers) | ConvertFrom-Json
return $Response.tag_name