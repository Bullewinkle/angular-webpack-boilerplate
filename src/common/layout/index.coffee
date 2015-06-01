require './styles/layout.styl'
layout = require './markup/layout.jade'
body = document.body
body.innerHTML+= layout() if layout
