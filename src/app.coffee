require '../bower_components/angular'
require '../bower_components/angular-route'
config = require './config'

console.log 'app',__dirname
console.log 'config',config

app = angular.module 'app', ['ngRoute']
appTemplates = require './common/templates'
appControllers = require './common/scripts/controllers.coffee'
app.controller name, constructor for name, constructor of appControllers

