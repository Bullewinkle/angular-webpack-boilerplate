logEvents = false

module.exports = [
	'$location',
	'$rootScope',
	($location, $rootScope, $state, $stateParams) ->
		console.info 'RUN!'

		warn = ->
			if logEvents then console.warn.apply console, arguments

		$rootScope.$state = $state

		$rootScope.$stateParams = $stateParams

		$rootScope.$on "$stateChangeStart", (event, toState, toParams, fromState, fromParams) ->
			warn '$stateChangeStart', arguments
			$rootScope.isLoading = true

		$rootScope.$on "$stateChangeSuccess", (event, next, current) ->
			warn '$routeChangeSuccess', arguments
			$rootScope.isLoading = false

		$rootScope.$on "$stateChangeError", (event, toState, toParams, fromState, fromParams, error) ->
			warn '$stateChangeError', arguments
			$rootScope.isLoading = false

		$rootScope.$on "$stateNotFound", (event, unfoundState, fromState, fromParams) ->
			$rootScope.isLoading = false
			warn '$stateNotFound', arguments

		$rootScope.$on "$viewContentLoading", (event, unfoundState, fromState, fromParams) ->
			$rootScope.isLoading = true
			warn '$viewContentLoading', arguments

		$rootScope.$on "viewContentLoaded", (event, unfoundState, fromState, fromParams) ->
			$rootScope.isLoading = false
			warn 'viewContentLoaded', arguments
]
