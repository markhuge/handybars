# Usage {{timeSince dateVariable}}
Handlebars.registerHelper 'timeSince', (date) ->
  seconds = Math.floor((new Date() - new Date(date)) / 1000)
  interval = Math.floor seconds / 31536000
  if interval > 1
      return new Handlebars.SafeString interval + " years"
  
  interval = Math.floor seconds / 2592000
  if interval > 1
      return new Handlebars.SafeString interval + " months"
  
  interval = Math.floor seconds / 86400
  if interval > 1
      return new Handlebars.SafeString interval + " days"
  
  interval = Math.floor seconds / 3600
  if interval > 1
      return new Handlebars.SafeString interval + " hours"
  
  interval = Math.floor seconds / 60
  if interval > 1
      return new Handlebars.SafeString interval + " minutes"

  return new Handlebars.SafeString Math.floor(seconds) + " seconds"