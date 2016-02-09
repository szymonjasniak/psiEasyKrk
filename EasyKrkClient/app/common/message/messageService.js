// messageService.js
// Message handler for the aplication. Captures the logic for the growl-module.

angular.module('application.message', ['angular-growl', 'ngAnimate'])
.factory('messageService', ['growl', function(growl) {
	
	return {
		logError: function (msg) {
			growl.error(msg);
        },
        // Error handler for http promises. To be used as it is.
        genericErrorHandler: function(data, status, headers, config) {
        	console.error("An error occured. ErrorID: " + data.errorId);
        	switch(data.status) {
        	case 401:
        		growl.error("unauthorized");
        		break;
        	case 404:
        		growl.error(i18n.t("errConnectionFailed"));
        		break;
        	case 500:
        		growl.error(i18n.t("errServerError") + (data.errorId ? "<br>ID: " + data.errorId : ""));
        		break;
        	default:
        		growl.error(i18n.t("errDefault"));
        		break;
        	}
        	
        },
        logInfo: function(msg) {
        	growl.info(msg);
        },
        logSuccess: function(msg) {
        	growl.success(msg);
        },
        logWarning: function(msg) {
        	growl.warning(msg);
        },
	}
}])
.config(['growlProvider', function (growlProvider) {
	// Growl-Error Messages do not fade out. All others fade out automatically
	growlProvider.globalTimeToLive({success: 2000, error: -1, warning: 4000, info: 4000});
	growlProvider.globalDisableCountDown(true);
}]);