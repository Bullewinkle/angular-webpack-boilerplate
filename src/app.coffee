require '../bower_components/angular'
require '../bower_components/angular-ui-router/release/angular-ui-router'

app = angular.module 'app', ['ui.router']
app.controller name, constructor for name, constructor of require './common/scripts/controllers.coffee'
app.config require './common/scripts/config.coffee'
app.run require './common/scripts/run.coffee'


#window.webWorker = new Worker require('common/scripts/worker.jsx')
#console.log require('common/scripts/worker.jsx')