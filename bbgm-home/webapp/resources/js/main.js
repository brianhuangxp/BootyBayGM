require.config({
    baseUrl: 'components',
    paths: {
        angular: '../resources/js/lib/angular/angular',
        'angular-route': '../resources/js/lib/angular/angular-route',
        'angular-cookies': '../resources/js/lib/angular/angular-cookies',
        'angular-sanitize': '../resources/js/lib/angular/angular-sanitize',
        'angular-locale_zh': '../resources/js/lib/angular/i18n/angular-locale_zh-cn',
        'jquery': '../resources/js/lib/jquery/jquery-2.0.3',
        'jqueryUI': '../resources/js/lib/jquery/jquery-ui.custom',
        config: '../resources/js/config',
        'angular-extend': '../resources/js/lib/angular-extend/angular-extend',
        app: '../resources/js/app',
        jqueryEislideshow: '../resources/js/lib/jquery/jquery.eislideshow'
    },
    shim: {
        'angular': {'exports': 'angular'},
        'jquery': {'exports': 'jquery'},
        'jqueryUI': {deps: ['jquery']},
        'jqueryEislideshow': {deps: ['jquery']},
        'angular-route': { deps: ['angular']},
        'angular-cookies': { deps: ['angular']},
        'angular-extend' : { deps: ['angular']},
        'angular-sanitize' : { deps: ['angular']},
        'angular-locale_zh': { deps: ['angular']}
    },
    urlArgs: 'v=gamehooHome-1.0'
});
require(['jquery', 'angular','config', 'app'], function (jquery, angular, config) {
    angular.element(document).ready(
        function () {
            angular.bootstrap(document, [config.appName]);
        }
    );
});