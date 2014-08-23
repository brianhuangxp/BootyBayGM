define(['app'], function (app) {
    app.register.controller('ServerSearchPanelController', function ($scope, routeResolver, componentOptions, $rootScope, ajaxService) {
        var parameters = componentOptions.parameters;
        var providerTopLabel = parameters.providerTopLabel || '全选';
        var serverTopLabel = parameters.serverTopLabel || '全选';
        $scope.searchPanelStyle = parameters.searchPanelStyle;
        var providers = {};
        var servers = {};
        RC.Config.providerServers = RC.Config.providerServers || [];
        RC.Config.providerServers.forEach(function (obj) {
            if (providers[obj.providerId]) {
                providers[obj.providerId].servers.push({value: obj.serverId, label: obj.serverName});
            } else {
                providers[obj.providerId] = {value: obj.providerId,
                    label: obj.providerName,
                    servers: [
                        {
                            value: '-1',
                            label: serverTopLabel
                        },
                        {
                            value: obj.serverId,
                            label: obj.serverName
                        }
                    ]};
            }
            servers[obj.serverId] = {value: obj.serverId, label: obj.serverName};
        });
        $scope.providerSelectors = buildSelectors(providers, buildSelectors(servers));
        $scope.serverSelectors = [];
        $scope.provider = $scope.providerSelectors[0];
        ajaxService.putCodeMapping('providerMappings', $scope.providerSelectors);
//    $rootScope.providerMappings = $scope.providerSelectors;
//    $rootScope.serversMappings = $scope.provider.servers;
        ajaxService.putCodeMapping('serversMappings', $scope.provider.servers);

        $scope.$watch('provider', function (provider) {
            $scope.serverSelectors = provider.servers;
            $scope.server = $scope.serverSelectors[0];
            $rootScope.provider = provider;
            ajaxService.cacheData('provider', provider);
        });

        $scope.$watch('server', function (server) {
            $rootScope.server = server;
            ajaxService.cacheData('server', server);
        });

        function buildSelectors(obj, servers) {
            var selectors = servers ? [
                {value: '-1', label: providerTopLabel, servers: servers}
            ] : [
                {value: '-1', label: serverTopLabel}
            ];
            for (var p in obj) {
                if (obj[p].hasOwnProperty("value") && obj[p].hasOwnProperty("label")) {
                    selectors.push(obj[p]);
                }
            }
            return selectors;
        }
    });
});