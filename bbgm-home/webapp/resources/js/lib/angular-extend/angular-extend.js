define(['angular', 'jquery', 'config', 'require'], function (angular, jquery, config, require) {
    (function (angular) {
        'use strict';
        var ghCommon = angular.module('ghCommon', ['ngRoute', 'ngSanitize', 'ngCookies']);
        ghCommon.constant('version', 'bbgm-1.0');
        ghCommon.factory('commonService', ['$log', '$cookies', 'version', function ($log, $cookies, version) {
            var consoleLogDebug = 'LOG_DEBUG';
            var resourceRaw = 'RAW_DEBUG';
            var sessionId = "JSESSIONID";
            var uidIdx = 0;
            return {
                appendSelectAll: function (selecteds, firstLabel, firstValue, valueColumn, labelColumn, childCodesColumn) {
                    firstValue = firstValue || -1;
                    firstLabel = firstLabel || '全选';
                    valueColumn = valueColumn || 'value';
                    labelColumn = labelColumn || 'label';
                    childCodesColumn = childCodesColumn || 'childCodes';
                    var selectedAll = {};
                    var childCodes = [];
                    var i, sel;
                    for (i = 0; i < selecteds.length; i++) {
                        sel = selecteds[i];
                        if (sel[valueColumn] == -1) {
                            $log.log('has -1');
                            return selecteds;
                        }
                        childCodes = childCodes.concat(selecteds[i][childCodesColumn]);
                    }
                    selectedAll[valueColumn] = firstValue;
                    selectedAll[labelColumn] = firstLabel;
                    selectedAll[childCodesColumn] = childCodes;
                    selecteds.unshift(selectedAll);
                    return selecteds;
                },
                selectCommonSort: function (selecteds, sortColumn) {
                    sortColumn = sortColumn || 'value';
                    selecteds.sort(function (c1, c2) {
                        return c1[sortColumn] - c2[sortColumn]
                    });
                    return selecteds;
                },
                enableLogDebug: function (days) {
                    this.putCookie(consoleLogDebug, 1, days);
                },
                disableLogDebug: function () {
                    this.putCookie(consoleLogDebug, 1, -1);
                },
                isEnableLogDebug: function () {
                    return $cookies[consoleLogDebug] === '1';
                },
                enableResourceRaw: function (days) {
                    this.putCookie(resourceRaw, 2, days);
                },
                disableResourceRaw: function () {
                    this.putCookie(resourceRaw, 2, -1);
                },
                isEnableResourceRaw: function () {
                    return $cookies[resourceRaw] === '2';
                },
                getSessionId: function () {
                    return  $cookies[sessionId];
                },
                getVersion: function () {
                    if (this.isEnableResourceRaw()) {
                        return this.getSessionId();
                    } else {
                        return version;
                    }
                },
                appendVersion: function (url) {
                    return url + (url.indexOf("?") > -1 ? '&' : '?') + 'v=' + this.getVersion();
                },
                putCookie: function (name, obj, days) {
                    var expire = days ? ("; expires=" + new Date((new Date()).getTime() + (days * 24 * 3600 * 1000)).toGMTString()) : '';
                    var cookie = name + "=" + escape(JSON.stringify(obj)) + expire;
                    document.cookie = cookie;
                },

                Number: {
                    /*
                     函数，加法函数，用来得到精确的加法结果
                     说明：javascript的加法结果会有误差，在两个浮点数相加的时候会比较明显。这个函数返回较为精确的加法结果。
                     参数：arg1：第一个加数；arg2第二个加数；d要保留的小数位数（可以不传此参数，如果不传则不处理小数位数）
                     调用：Calc.Add(arg1,arg2,d)
                     返回值：两数相加的结果
                     */
                    Add: function (arg1, arg2) {
                        arg1 = arg1.toString(), arg2 = arg2.toString();
                        var arg1Arr = arg1.split("."), arg2Arr = arg2.split("."), d1 = arg1Arr.length == 2 ? arg1Arr[1] : "", d2 = arg2Arr.length == 2 ? arg2Arr[1] : "";
                        var maxLen = Math.max(d1.length, d2.length);
                        var m = Math.pow(10, maxLen);
                        var result = Number(((arg1 * m + arg2 * m) / m).toFixed(maxLen));
                        var d = arguments[2];
                        return typeof d === "number" ? (result).toFixed(d) : result;
                    },
                    /*
                     函数：减法函数，用来得到精确的减法结果
                     说明：函数返回较为精确的减法结果。
                     参数：arg1：第一个加数；arg2第二个加数；d要保留的小数位数（可以不传此参数，如果不传则不处理小数位数
                     调用：Calc.Sub(arg1,arg2)
                     返回值：两数相减的结果
                     */
                    Sub: function (arg1, arg2) {
                        return this.Add(arg1, -Number(arg2), arguments[2]);
                    },
                    /*
                     函数：乘法函数，用来得到精确的乘法结果
                     说明：函数返回较为精确的乘法结果。
                     参数：arg1：第一个乘数；arg2第二个乘数；d要保留的小数位数（可以不传此参数，如果不传则不处理小数位数)
                     调用：Calc.Mul(arg1,arg2)
                     返回值：两数相乘的结果
                     */
                    Mul: function (arg1, arg2) {
                        var r1 = arg1.toString(), r2 = arg2.toString(), m, resultVal, d = arguments[2];
                        m = (r1.split(".")[1] ? r1.split(".")[1].length : 0) + (r2.split(".")[1] ? r2.split(".")[1].length : 0);
                        resultVal = Number(r1.replace(".", "")) * Number(r2.replace(".", "")) / Math.pow(10, m);
                        return typeof d !== "number" ? Number(resultVal) : resultVal.toFixed(parseInt(d));
                    },
                    /*
                     函数：除法函数，用来得到精确的除法结果
                     说明：函数返回较为精确的除法结果。
                     参数：arg1：除数；arg2被除数；d要保留的小数位数（可以不传此参数，如果不传则不处理小数位数)
                     调用：Calc.Div(arg1,arg2)
                     返回值：arg1除于arg2的结果
                     */
                    Div: function (arg1, arg2) {
                        var r1 = arg1.toString(), r2 = arg2.toString(), m, resultVal, d = arguments[2];
                        m = (r2.split(".")[1] ? r2.split(".")[1].length : 0) - (r1.split(".")[1] ? r1.split(".")[1].length : 0);
                        resultVal = Number(r1.replace(".", "")) / Number(r2.replace(".", "")) * Math.pow(10, m);
                        return typeof d !== "number" ? Number(resultVal) : resultVal.toFixed(parseInt(d));
                    }
                },
                StringUtils: {
                    placeHolder: function (obj, bitSize, isLeft, bitChar) {
                        isLeft = angular.isUndefined(isLeft) || isLeft;
                        bitChar = bitChar || '0';
                        bitSize = bitSize || 4;
                        var str = new String(obj);
                        if (str.length >= bitSize) {
                            return obj;
                        } else {
                            var less = bitSize - str.length;
                            var result = str;
                            for (; less > 0; less--) {
                                result = isLeft ? (bitChar + result) : (result + bitChar);
                            }
                            return result;
                        }
                    },
                    getUuid: function () {
                        uidIdx++;
                        return this.placeHolder(uidIdx, 4);
                    }
                }
            }
        }])
    })(angular);

//TODO split some smaller files, such as extendProvider, extendDirective
    (function (angular) {
        'use strict';
        var angularExtend = angular.module('angularExtend', ['ngRoute', 'ngSanitize', 'ngCookies', 'ghCommon', 'angularFieldExtend', 'pasvaz.bindonce' , 'ui.window']);

        angularExtend.provider('routeResolver', function () {
            var loadedComponents = {};
            var loadedCSSs = {};

            function registerCallbackFn(element, onLoaded) {
                onLoaded = onLoaded || angular.noop;
                if (element.onload !== undefined) {
                    element.onload = onLoaded;
                } else if (element.onreadystatechange !== undefined) {
                    element.onreadystatechange = function () {
                        if (element.readyState == 'loaded' || element.readyState == 'complete') {
                            element.onreadystatechange = null;
                            onLoaded();
                        }
                    }
                }
            }

            function loadJs($log, appendVersion, jsComp, onSuccess) {
                if (loadedComponents[jsComp]) {
                    $log.log('script:[' + jsComp + '] had be loaded.');
                    onSuccess && onSuccess(false);
                    return;
                }
                require([appendVersion(jsComp)], function () {
                    loadedComponents[jsComp] = true;
                    onSuccess && onSuccess(false);
                });
            }

            function loadCss($log, appendVersion, css, cssPath, onSuccess) {
                css = appendVersion(cssPath + css);

                if (loadedCSSs[css]) {
                    $log.log('css:[' + css + '] had be loaded.');
                    onSuccess && onSuccess(false);
                    return;
                }

                var link = document.createElement("link");
                link.setAttribute("rel", "stylesheet")
                link.setAttribute("type", "text/css")
                link.setAttribute("href", css);
                registerCallbackFn(link, onLoaded);
                document.getElementsByTagName("head")[0].appendChild(link);

                function onLoaded() {
                    loadedCSSs[css] = true;
                    $log.log('Successfully load css:[' + css + '].');
                    onSuccess && onSuccess(true);
                }
            }

            var config = {
                viewDirectory: '/app/views/',
                controllerDirectory: '/app/controllers',
                jsSuffix: 'js',
                htmlSuffix: 'html',
                cssSuffix: 'css',
                controllerSuffix: 'Controller'
            };

            /**
             *
             * @param jsSuffix: default 'js', allow ''
             * @param htmlSuffix: default 'html', allow ''
             * @param cssSuffix: default 'css', allow ''
             * @param controllerSuffix: default 'Controller', allow ''
             */
            function setDefaultFileSuffix(jsSuffix, htmlSuffix, cssSuffix, controllerSuffix) {
                (jsSuffix || jsSuffix === '') && (config.jsSuffix = jsSuffix);
                (htmlSuffix || htmlSuffix === '') && (config.htmlSuffix = htmlSuffix);
                (cssSuffix || cssSuffix === '') && (config.cssSuffix = cssSuffix);
                (controllerSuffix || controllerSuffix === '') && (config.controllerSuffix = controllerSuffix);
            }

            function setBaseDirectory(viewDir, controllerDir) {
                viewDir && (config.viewDirectory = viewDir);
                controllerDir && (config.controllerDirectory = controllerDir);
            }

            function getJsSuffix() {
                return config.jsSuffix;
            }

            function getHtmlSuffix() {
                return config.htmlSuffix;
            }

            function getCssSuffix() {
                return config.cssSuffix;
            }

            function getControllerSuffix() {
                return config.controllerSuffix;
            }

            function geViewDirectory() {
                return config.viewDirectory;
            }

            function getControllerDirectory() {
                return config.controllerDirectory;
            }

            var self = this;
            this.routeConfig = {
                setDefaultFileSuffix: setDefaultFileSuffix,
                setBaseDirectory: setBaseDirectory,
                geViewDirectory: geViewDirectory,
                getControllerDirectory: getControllerDirectory
            }

            this.route = (function (routeConfig) {
                function resolve(componentName, path, isLoadCss) {
                    path = path || '';
                    return {
                        templateUrl: self.appendVersion(routeConfig.geViewDirectory() + path + componentName + getExtensionName(getHtmlSuffix())),
                        controller: getControllerName(componentName),
                        resolve: {
                            load: ['$log', '$q', '$rootScope', function ($log, $q, $rootScope) {
                                var controllerJs = routeConfig.getControllerDirectory() + path + componentName + getControllerSuffix() + getExtensionName(getJsSuffix());
                                var defer = $q.defer();
                                var promise = defer.promise;
                                var controllerCss = routeConfig.getControllerDirectory() + path + componentName + getControllerSuffix() + getExtensionName(getCssSuffix());

                                var loadCssFn = function () {
                                    var deferred = $q.defer();
                                    if (isLoadCss) {

                                        loadCss($log, self.appendVersion, componentName + getExtensionName(getCssSuffix()), routeConfig.getControllerDirectory() + path, function (load) {
                                            load !== false && $rootScope.$apply();
                                            deferred.resolve();
                                        });
                                    } else {
                                        deferred.resolve();
                                    }
                                    return deferred.promise;
                                };

                                // after load css, then load js.
                                loadCssFn().then(function () {
                                    loadJs($log, self.appendVersion, controllerJs, function (load) {
                                        load !== false && $rootScope.$apply();
                                        defer.resolve();
                                        $rootScope.$emit('menuActive', path);
                                    });
                                })
                                return promise;
                            }]
                        }
                    }

                    function getControllerName(componentName) {
                        if (componentName.length > 0) {
                            return componentName.slice(0, 1).toUpperCase() + componentName.slice(1) + getControllerSuffix();
                        }
                        return componentName;
                    }

                    function getExtensionName(ext) {
                        if (ext === '') {
                            return ext;
                        }
                        return '.' + ext;
                    }
                }

                return {
                    resolve: resolve
                }

            })(this.routeConfig);

            this.$get = ['$log', 'commonService', function ($log, commonService) {
                var self = this;
                self.appendVersion = commonService.appendVersion.bind(commonService);
                return {
                    loadJs: function (jsComp, onSuccess) {
                        loadJs($log, self.appendVersion, jsComp, onSuccess)
                    },
                    /**
                     *
                     * @param css: css file path relative with viewDirectory Path. Like 'Component/component.css'
                     * @param defaultPath: viewDirectory Path
                     */
                    loadCss: function (css, cssPath, onSuccess) {
                        if (!cssPath) {
                            cssPath = this.routeConfig.geViewDirectory();
                        }
                        loadCss($log, self.appendVersion, css, cssPath, onSuccess);
                    },
                    routeConfig: this.routeConfig
                };
            }];
        });

        angularExtend.directive('treeModel', ['$compile', '$location', '$window', function ($compile, $location, $window) {
            return {
                restrict: 'A',
                link: function (scope, element, attrs) {
                    //tree id
                    var treeId = attrs.treeId;

                    //tree model
                    var treeModel = attrs.treeModel;

                    /**
                     *  folder label can fire select event
                     *  @param false: can't fire 'afterSelect' event, be equivalent to Expand or Collapse folder
                     *  @param true:  can fire 'afterSelect' event
                     */
                    var treeFolderSelect = attrs.treeFolderSelect || 'false';

                    //with cookie track expansionNodeIdList(collapsed == false) and activateNodeId
                    var treeCookie = attrs.treeCookie || 'true';

                    //node id
                    var nodeId = attrs.nodeId || 'id';

                    //node label
                    var nodeLabel = attrs.nodeLabel || 'label';

                    //children
                    var nodeChildren = attrs.nodeChildren || 'children';
                    var folderClickFun = treeFolderSelect == 'true' ? '.selectNodeLabel' : '.selectNodeHead';
                    var html = [];
                    html.push('<ul>');
                    html.push('     <li data-ng-repeat="node in ' + treeModel + '">');
                    html.push('         <i class="collapsed" data-ng-show="node.' + nodeChildren + '.length && node.collapsed != false" ');
                    html.push('             data-ng-click="' + treeId + '.selectNodeHead(node)"></i>');
                    html.push('         <i class="expanded" data-ng-show="node.' + nodeChildren + '.length && node.collapsed == false" ');
                    html.push('             data-ng-click="' + treeId + '.selectNodeHead(node)"></i>');
                    html.push('         <i class="normal" data-ng-hide="node.' + nodeChildren + '.length" ');
                    html.push('             data-ng-click="' + treeId + '.selectNodeLabel(node)"></i> ');
                    html.push('         <span data-ng-hide="node.' + nodeChildren + '.length" data-ng-class="node.selected" ');
                    html.push('             data-ng-click="' + treeId + '.selectNodeLabel(node)" ng-bind-html="node.' + nodeLabel + '"></span>');
                    html.push('         <span data-ng-show="node.' + nodeChildren + '.length" data-ng-class="node.selected" ');
                    html.push('             data-ng-click="' + treeId + folderClickFun + '(node)"');
                    html.push('             ng-bind-html="node.' + nodeLabel + '"></span>');
                    html.push('         <div data-ng-hide="node.collapsed != false" data-tree-id="' + treeId + '"');
                    html.push('             data-tree-folder-select=' + treeFolderSelect + ' data-tree-cookie="' + treeCookie + '"');
                    html.push('             data-tree-model="node.' + nodeChildren + '" data-node-id=' + nodeId + ' data-node-label=' + nodeLabel + ' data-node-children=' + nodeChildren + '></div>');
                    html.push('     </li>');
                    html.push('</ul>');

                    //tree template
                    var template = html.join('');

                    //check tree id, tree model
                    if (treeId && treeModel) {

                        //root node
                        if (attrs.angularTreeview) {
                            //create tree object if not exists
                            scope[treeId] = scope[treeId] || {};

                            //if node head clicks,
                            scope[treeId].selectNodeHead = scope[treeId].selectNodeHead || function (selectedNode) {
                                //Collapse or Expand
                                if (selectedNode.collapsed == undefined) {
                                    selectedNode.collapsed = 'true';
                                }

                                selectedNode.collapsed = !selectedNode.collapsed;
                            };

                            //if node label clicks,
                            scope[treeId].selectNodeLabel = scope[treeId].selectNodeLabel || function (selectedNode) {
                                //remove highlight from previous node
                                if (scope[treeId].currentNode && scope[treeId].currentNode.selected) {
                                    scope[treeId].currentNode.selected = undefined;
                                }

                                //set highlight to selected node
                                selectedNode.selected = 'selected';

                                //set currentNode
                                scope[treeId].currentNode = selectedNode;

                                if (this.currentNode.wHref) {
                                    $window.location.href = this.currentNode.wHref;
                                }
                                if (this.currentNode.href) {
                                    $location.path(this.currentNode.href);
                                }
                                scope.$broadcast('afterSelect', this.currentNode);

                                //todo set cookie

                                if (angular.isFunction(this.currentNode.handler)) {
                                    this.currentNode.handler();
                                }
                            };

                            scope.$watch(treeModel, function (treeModel) {
                                var activateNode;
                                var collapseNodes = [];
                                angular.forEach(treeModel, function (model) {
                                    nodeActivate(model, treeModel);
                                });
                                nodeCollapse(activateNode);
                                activateNode && scope[treeId].selectNodeLabel(activateNode);

                                function nodeActivate(node, parentNode) {
                                    node.parentNode = parentNode;
                                    if (node.collapsed == 'false') {
                                        nodeCollapse(node);
                                    }
                                    if (activateNode) {
                                        return;
                                    } else if (node.activate == true || node.activate == 'true') {
                                        activateNode = node;
                                    } else {
                                        angular.forEach(node.children, function (model) {
                                            nodeActivate(model, node);
                                        });
                                    }
                                }

                                function nodeCollapse(node) {
                                    if (node && node.collapsed != false) {
                                        scope[treeId].selectNodeHead(node);
                                    }
                                    if (node && node.parentNode) {
                                        nodeCollapse(node.parentNode);
                                    }
                                }
                            });
                        }

                        //Rendering template.
                        element.html('').append($compile(template)(scope));
                    }
                }
            };
        }]);

        /**
         * @param simpleTable: require 'true'
         * @param tableId: option
         * @param tableData: require.[Data Array]. Display data list.
         * @param columnName: require. Display data property.
         * @param columnWidths: option, [Array]. td width array.
         * @param tableHeader: option, [Array]. Display table header.
         * @param extraClass: option. Table extra class
         * @param rowClick: option. Data list click handler
         * @param orderBy: option, default 'sortorder'. Data list order by this column. Default order by first column.
         * @param orderSort: option, default 'false'. true: desc; false:'asc'
         * @param noDataText: option, default 'No Data'. No Data text.
         *
         * e.g.
         * <div simple-table="true" table-header='header' class="panel panel-default" table-data="dataSet" column-name="name,email,occupation,hobby"></div>
         */
        angularExtend.directive('simpleTable', ['$compile', function ($compile) {
            return {
                restrict: 'A',
                link: function (scope, element, attrs) {
                    var tableId = attrs.tableId || '';

                    var simpleTable = attrs.simpleTable || 'true';

                    var tableData = attrs.tableData || {};

                    var tableHeader = attrs.tableHeader || {};

                    var extraClass = attrs.extraClass || '';

                    var rowClick = attrs.rowClick;

                    var columnName = attrs.columnName || '';
                    var columns = columnName.split(',');
                    var columnWidths = attrs.columnWidths || '';
                    var tdWidths = columnWidths.split(',');
                    var orderBy = attrs.orderBy || 'sortorder';
                    //default order by ASC
                    var orderSort = attrs.orderSort || 'false';
                    var noDataText = attrs.noDataText || 'No Data';

                    var html = [];
                    html.push('<table ' + ( tableId ? 'id="' + tableId + '"' : '' ) + ' class="table table-striped table-hover ' + extraClass + '">');
                    if (tableHeader.length > 0) {
                        html.push('     <thead><tr>');
                        html.push('         <th ng-repeat="header in ' + tableHeader + '" ng-bind-html="header"></th>');
                        html.push('     </tr></thead>');
                    }

                    html.push('     <tbody>');
                    html.push('         <tr ng-repeat="data in matchedEntries = ' + tableData + (orderBy ? ' | orderBy:' + orderBy : '') + ':' + orderSort + '" ');
                    html.push((rowClick ? 'ng-click="' + rowClick + '(data,$index)"' : '') + '  >');
                    if (columnName != '') {
                        //Default order by first column.
                        if (!scope[orderBy]) {
                            scope[orderBy] = columns[0];
                        }
                        angular.forEach(columns, function (col, index) {
                            var tdWidth = '';
                            if (columnWidths != '' && tdWidths[index]) {
                                tdWidth = 'width="' + tdWidths[index] + '"';
                            }
//                        html.push('         <td ' + tdWidth + '><span ng-bind-html="data.' + col + '"></span></td>');
                            html.push('         <td ' + tdWidth + '><span>{{data.' + col + '}}</span></td>');
                        });
                    } else {
                        html.push('         <td ng-repeat="att in data" ><span ng-bind-html="att"></span></td>');
                    }
                    html.push('         </tr>');
                    html.push('     </tbody>');
                    html.push('     <tfoot>');
                    html.push('         <tr class="noData ng-hide">');
                    html.push('             <td colspan="' + columns.length + '">' + noDataText + '</td>');
                    html.push('         </tr>');
                    html.push('     </tfoot>');


                    html.push('</table>');

                    scope.$watch('matchedEntries', function (value) {
                        $(element).find('.noData').toggleClass('ng-hide', (value != undefined && value.length != 0 ));
                    });

                    if (simpleTable) {
                        element.append($compile(html.join(''))(scope));
                    }
                }
            };
        }]);

        /**
         *
         * componentOptions
         * {
 *    name: componentName, //required, template-file will be {componentName}.html, Controller will be {componentName}Controller
 *    location: location,  //optional
 *    CSS: true/false,     //optional, default is false, css file is {componentName}.css
 *    parameters: {}       //optional, default is empty object ({}), this parameter will be auto inject to $scope
 *    reload: true/false   //optional, default is false for best performance, when directive detect componentName are exactly the same with current value will not reload the component unless reload is true
**/
        angularExtend.directive('rcComponent', ['$http', '$templateCache', '$compile',
            '$sce', '$animate', '$controller', '$q', 'routeResolver', 'commonService', '$log',
            function ($http, $templateCache, $compile, $sce, $animate, $controller, $q, routeResolver, commonService, $log) {
                return {
                    restrict: 'EA',
                    priority: 400,
                    terminal: true,
                    transclude: 'element',
                    compile: function (element, attr, $transclude) {
                        var optionExp = attr.rcComponent || attr.options,
                            lastScope, currentElement;

                        return function (scope, $element, $attr, ctrl) {
                            scope.$watch(optionExp, function ngIncludeWatchAction() {
                                var componentOptions = scope.$eval(optionExp);
                                if (componentOptions && componentOptions.name) {
                                    $log.log('rc component=' + componentOptions.name);
                                    var location = componentOptions.location;
                                    var componentName = componentOptions.name;
                                    var viewPath = routeResolver.routeConfig.geViewDirectory() + location;
                                    var templateUrl = commonService.appendVersion(viewPath + componentName + '.html');
                                    var cssUrl = location + componentName + '.css';
                                    var loadCss = componentOptions.loadCss;
                                    var controllerName = componentName + 'Controller';
                                    var jsURL = routeResolver.routeConfig.getControllerDirectory() + location + controllerName + '.js';
                                    var componentParams = componentOptions.parameters || {};
                                    if (!lastScope || (lastScope.componentOptions.componentName != componentName)
                                        || !angular.equals(lastScope.componentOptions.parameters, componentParams)
                                        || lastScope.reload === true) {

                                        cleanupLastComponentContent();

                                        loadCss && routeResolver.loadCss(cssUrl);

                                        var loadTemplate = commonService.isEnableResourceRaw() ? $http.get(templateUrl, {cache: $templateCache}) : $http.get(templateUrl);
                                        var jsDefer = $q.defer();
                                        routeResolver.loadJs(jsURL, function () {
                                            jsDefer.resolve();
                                        });

                                        $q.all([loadTemplate, jsDefer.promise]).then(function (result) {
                                            if (componentOptions.preload == true) {
                                                return;
                                            }

                                            var response = result[0];

                                            var locals = {
                                                $scope: scope.$new(),
                                                componentOptions: {
                                                    componentName: componentName,
                                                    controllerName: controllerName,
                                                    parameters: componentParams
                                                }
                                            };
                                            var clone = $transclude(locals.$scope, angular.noop);

                                            currentElement = clone;

                                            currentElement.html(response.data);
//                                            currentElement.toggleClass('fill-width-height', true);

                                            $animate.enter(currentElement, null, $element, null);

                                            var link = $compile(currentElement.contents());

                                            if (controllerName) {
                                                var controllerInstance = $controller(controllerName, locals);

                                                //TODO waiting for re-brand.
//                                        try {
//                                            //inject re-brand controller and attach to $scope.
//                                            $controller('Brand' + controllerName, locals);
//                                        } catch(e) {}

                                                currentElement.data('$ngControllerController', controllerInstance);
                                                currentElement.children().data('$ngControllerController', controllerInstance);
                                            }

                                            link(locals.$scope);
                                            lastScope = locals;
                                            locals.$scope.$emit('$rcComponentContentLoaded');
                                        });
                                    }
                                } else {
                                    cleanupLastComponentContent();
                                }
                            });

                            function cleanupLastComponentContent() {
                                if (lastScope) {
                                    lastScope.$scope.$destroy();
                                    lastScope = null;
                                }
                                if (currentElement) {
                                    $animate.leave(currentElement);
                                    currentElement = null;
                                }
                            }
                        }
                    }
                }
            }]);

        angularExtend.directive('loadCss', ['routeResolver', function (routeResolver) {
            return{
                restrict: 'EA',
                link: function (scope, element, attrs, controller) {
                    attrs.loadCss && routeResolver.loadCss(attrs.loadCss);
                }
            }
        }]);

        angularExtend.provider('loader', function () {
            this.$get = function () {
                var counter = 0;
                var dom = null;
                return {
                    show: function () {
                        counter++;
                        counter == 1 && showLoader();
                    },
                    hide: function () {
                        counter && counter--;
                        counter || hideLoader();
                    },
                    hideAll: function () {
                        counter = 0;
                        hideLoader();
                    }
                };
                function hideLoader() {
                    dom && dom.remove();
                }

                function showLoader() {
                    var loaderHtml = [];
                    loaderHtml.push('<div id="x-loader" class="x-loader-static">');
                    loaderHtml.push('     <div class="x-loader-static-panel">');
                    loaderHtml.push('         <img src="resources/img/panel/loader_blue.gif" alt=""><div>Loading...</div>');
                    loaderHtml.push('     </div><div class="x-loader-fix"></div>');
                    loaderHtml.push('</div>');
                    dom = angular.element(loaderHtml.join(''));
                    angular.element(document.body).append(dom);
                }
            };
        });


        angularExtend.factory('ajaxService', ['$http', '$q', '$rootScope', '$log', 'loader' , 'windowUtils', function ($http, $q, $rootScope, $log, loader, windowUtils) {
            // todo add client cache.
            var cache = {
                provider: undefined,
                server: undefined,
                codeMappings: {}
            }
            return{
                send: function (option) {
                    $log.log(cache);
                    var deferred = $q.defer();
                    if (option.isServerSearch != false) {
                        option.requestData = option.requestData || {};
                        option.requestData.providerId = cache.provider.value;
                        option.requestData.serverId = cache.server.value;
                    }
                    var method = option.method || "post";
                    loader.show();
                    var requestData = {
                        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
                        url: option.url,
                        method: method,
                        data: option.requestData
                    };
                    if (method == 'post') {
                        requestData.transformRequest = function (obj) {
                            var str = [];
                            for (var p in obj)
                                str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
                            return str.join("&");
                        }
                    }
                    ;
                    $http(requestData).success(function (data, status, headers, config) {
                        if (data.status.statusCode == '-99') {
                            $rootScope.$emit('logOut', $rootScope);
                        } else if (data.status.statusCode == '-2') {
                            windowUtils.alterWindow(data.status.alertMsg, '警告');
                            deferred.reject(data, status, headers, config);
                        } else if (data.status.statusCode == '-3') {
                            windowUtils.alterWindow(data.status.alertMsg, '出错了');
                            deferred.reject(data, status, headers, config);
                        } else if (data.status.statusCode) {
                            deferred.resolve(data, status, headers, config);
                        } else {
                            deferred.reject(data, status, headers, config);
                        }
                        loader.hide();
                    }).error(function (data, status, headers, config) {
                            alert(status);
                            deferred.reject(data, status, headers, config);
                            loader.hideAll();
                        }
                    );
                    return deferred.promise;
                },
                getCodeMapping: function (codeType, cascade, displayValues) {
                    var deferred = $q.defer();
                    var codeMappings = cache.codeMappings;
                    codeType = codeType || '-1';
                    cascade = cascade || false;
                    if (codeMappings[codeType] && (codeMappings[codeType].cascade == true ||
                        codeMappings[codeType].cascade == cascade)) {
                        $log.log('getCache');
                        if (angular.isArray(displayValues)) {
                            var i, v, r;
                            var mapping = [];
                            for (i in displayValues) {
                                for (v in codeMappings[codeType].mappings) {
                                    r = codeMappings[codeType].mappings[v];
                                    if(displayValues[i] == r.value){
                                        mapping.push(r);
                                    }
                                }
                            }
                            deferred.resolve(mapping);
                        } else {
                            deferred.resolve(codeMappings[codeType].mappings);
                        }
                    } else {
                        var requestData = {
                            codeType: codeType,
                            cascade: cascade
                        }
                        if (angular.isArray(displayValues)) {
                            requestData.displayValues = displayValues.join(',');
                        }
                        this.send({
                            url: 'system/system.findCodeList',
                            requestData: requestData
                        }).then(function (data, status, headers, config) {
                                if (data.status.statusCode && displayValues) {
                                    deferred.resolve(data.result || []);
                                } else if (data.status.statusCode) {
                                    codeMappings[codeType] = {
                                        cascade: cascade,
                                        mappings: data.result || []
                                    }
                                    deferred.resolve(codeMappings[codeType].mappings);
                                } else {
                                    deferred.reject(data, status, headers, config);
                                }

                            }, function (data, status, headers, config) {
                                deferred.reject(data, status, headers, config);
                            }
                        );
                    }
                    return deferred.promise;
                },
                putCodeMapping: function (codeType, mappings) {
                    cache.codeMappings[codeType] = {
                        cascade: true,
                        mappings: mappings
                    }
                },
                cacheData: function (key, value) {
                    cache[key] = value;
                },
                getData: function (key) {
                    return cache[key];
                }
            }


        }]);

    })(angular);

    (function (angular) {
        var angularFieldExtend = angular.module('angularFieldExtend', []);

        angularFieldExtend.constant('uiDateConfig', {dateFormat: 'yy/mm/dd'});
        angularFieldExtend.directive('uiDate', ['uiDateConfig', function (uiDateConfig) {
            'use strict';
            var options;
            options = {};
            angular.extend(options, uiDateConfig);
            return {
                require: '?ngModel',
                link: function (scope, element, attrs, controller) {
                    element = $(element);
                    var getOptions = function () {
                        return angular.extend({}, uiDateConfig, scope.$eval(attrs.uiDate));
                    };
                    var initDateWidget = function () {
                        var showing = false;
                        var opts = getOptions();

                        // If we have a controller (i.e. ngModelController) then wire it up
                        if (controller) {

                            // Set the view value in a $apply block when users selects
                            // (calling directive user's function too if provided)
                            var _onSelect = opts.onSelect || angular.noop;
                            opts.onSelect = function (value, picker) {
                                scope.$apply(function () {
                                    showing = true;
                                    controller.$setViewValue(element.datepicker("getDate"));
                                    _onSelect(value, picker);
                                    element.blur();
                                });
                            };
                            opts.beforeShow = function () {
                                showing = true;
                            };
                            opts.onClose = function (value, picker) {
                                showing = false;
                            };
                            element.on('blur', function () {
                                if (!showing) {
                                    scope.$apply(function () {
                                        element.datepicker("setDate", element.datepicker("getDate"));
                                        controller.$setViewValue(element.datepicker("getDate"));
                                    });
                                }
                            });

                            // Update the date picker when the model changes
                            controller.$render = function () {
                                var date = controller.$viewValue;
                                if (angular.isDefined(date) && date !== null && !angular.isDate(date)) {
                                    throw new Error('ng-Model value must be a Date object - currently it is a ' + typeof date + ' - use ui-date-format to convert it from a string');
                                }
                                element.datepicker("setDate", date);
                            };
                        }
                        // If we don't destroy the old one it doesn't update properly when the config changes
                        element.datepicker('destroy');
                        // Create the new datepicker widget
                        element.datepicker(opts);
                        if (controller) {
                            // Force a render to override whatever is in the input text box
                            controller.$render();
                        }
                    };
                    // Watch for changes to the directives options
                    scope.$watch(getOptions, initDateWidget, true);
                }
            };
        }
        ]);
        angularFieldExtend.constant('uiDateFormatConfig', '');
        angularFieldExtend.directive('uiDateFormat', ['uiDateFormatConfig', 'commonService', function (uiDateFormatConfig) {
            var directive = {
                require: 'ngModel',
                link: function (scope, element, attrs, modelCtrl) {
                    var dateFormat = attrs.uiDateFormat || uiDateFormatConfig;
                    if (dateFormat) {
                        // Use the datepicker with the attribute value as the dateFormat string to convert to and from a string
                        modelCtrl.$formatters.push(function (value) {
                            if (angular.isString(value)) {
                                return jQuery.datepicker.parseDate(dateFormat, value);
                            }
                            return null;
                        });
                        modelCtrl.$parsers.push(function (value) {
                            if (value) {
                                return jQuery.datepicker.formatDate(dateFormat, value);
                            }
                            return null;
                        });
                    } else {
                        // Default to ISO formatting
                        modelCtrl.$formatters.push(function (value) {
                            if (angular.isString(value)) {
                                return new Date(value);
                            }
                            return null;
                        });
                        modelCtrl.$parsers.push(function (value) {
                            if (value) {
                                return value.toISOString();
                            }
                            return null;
                        });
                    }
                }
            };
            return directive;
        }]);

        angularFieldExtend.directive('onFinishRender', function ($parse) {
            return {
                restrict: 'A',
                link: function (scope, element, attr) {
                    if (scope.$last === true) {
                        element.ready(function () {
                            var fn = $parse(attr.onFinishRender) || angular.noop;
                            fn(scope, element);
                        });
                    }
                }
            }
        });

        angularFieldExtend.filter('startFrom', function () {
            return function (input, start) {
                return input && input.slice(start);
            }
        });

        angularFieldExtend.filter('division', ['commonService', function (commonService) {
            return function (data, divisorAttr, dividendAttr, decimalBit) {
                var divisor = data[divisorAttr];
                var dividend = data[dividendAttr];
                var decimalBit = decimalBit || 2;
                if (angular.isUndefined(divisor) || angular.isUndefined(dividend) || dividend == 0) {
                    return "-";
                } else {
                    return commonService.Number.Div(divisor, dividend, decimalBit);
                }
            }
        }]);

        angularFieldExtend.filter('percentage', ['commonService', function (commonService) {
            return function (data, decimal) {
                decimal = decimal || 2;
                return  !isNaN(data) ? commonService.Number.Mul(data, 100, decimal) + "%" : data;
            }
        }]);

        angularFieldExtend.filter('subtraction', ['commonService', function (commonService) {
            return function (data, subtrahendAttr, minuendAttr, decimalBit) {
                var subtrahend = data[subtrahendAttr] || 0;
                var minuend = data[minuendAttr] || 0;
                return commonService.Number.Sub(subtrahend, minuend, decimalBit);
            }
        }]);
        angularFieldExtend.filter('addition', ['commonService', function (commonService) {
            return function (data, decimalBit) {
                var result = data[arguments[2]] || 0;
                var newNum;
                var i = 3;
                for (; i < arguments.length; i++) {
                    newNum = data[arguments[i]] || 0;
                    result = commonService.Number.Add(result, newNum, decimalBit);
                }
                return result;
            }
        }]);

        angularFieldExtend.filter('codeMapping', function () {
            return function (field, mappingArray, codeAttr, labelAttr) {
                codeAttr = codeAttr || 'value';
                labelAttr = labelAttr || 'label';
                var i, mappingData;
                for (var i = 0; mappingArray && i < mappingArray.length; i++) {
                    var mappingData = mappingArray[i];
                    if (mappingData[codeAttr] == field) {
                        return mappingData[labelAttr];
                    }
                }
                ;
                return field;
            }
        });


    })(angular);

    (function (angular) {
        var bindonce = angular.module('pasvaz.bindonce', []);

        bindonce.directive('bindonce', function () {
            var toBoolean = function (value) {
                if (value && value.length !== 0) {
                    var v = angular.lowercase("" + value);
                    value = !(v === 'f' || v === '0' || v === 'false' || v === 'no' || v === 'n' || v === '[]');
                }
                else {
                    value = false;
                }
                return value;
            };

            var msie = parseInt((/msie (\d+)/.exec(angular.lowercase(navigator.userAgent)) || [])[1], 10);
            if (isNaN(msie)) {
                msie = parseInt((/trident\/.*; rv:(\d+)/.exec(angular.lowercase(navigator.userAgent)) || [])[1], 10);
            }

            var bindonceDirective = {
                restrict: "AM",
                controller: ['$scope', '$element', '$attrs', '$interpolate', function ($scope, $element, $attrs, $interpolate) {
                    var showHideBinder = function (elm, attr, value) {
                        var show = (attr === 'show') ? '' : 'none';
                        var hide = (attr === 'hide') ? '' : 'none';
                        elm.css('display', toBoolean(value) ? show : hide);
                    };
                    var classBinder = function (elm, value) {
                        if (angular.isObject(value) && !angular.isArray(value)) {
                            var results = [];
                            angular.forEach(value, function (value, index) {
                                if (value) results.push(index);
                            });
                            value = results;
                        }
                        if (value) {
                            elm.addClass(angular.isArray(value) ? value.join(' ') : value);
                        }
                    };

                    var ctrl = {
                        watcherRemover: undefined,
                        binders: [],
                        group: $attrs.boName,
                        element: $element,
                        ran: false,

                        addBinder: function (binder) {
                            this.binders.push(binder);

                            // In case of late binding (when using the directive bo-name/bo-parent)
                            // it happens only when you use nested bindonce, if the bo-children
                            // are not dom children the linking can follow another order
                            if (this.ran) {
                                this.runBinders();
                            }
                        },

                        setupWatcher: function (bindonceValue) {
                            var that = this;
                            this.watcherRemover = $scope.$watch(bindonceValue, function (newValue) {
                                if (newValue === undefined) return;
                                that.removeWatcher();
                                that.runBinders();
                            }, true);
                        },

                        removeWatcher: function () {
                            if (this.watcherRemover !== undefined) {
                                this.watcherRemover();
                                this.watcherRemover = undefined;
                            }
                        },

                        runBinders: function () {
                            var i, max;
                            for (i = 0, max = this.binders.length; i < max; i++) {
                                var binder = this.binders[i];
                                if (this.group && this.group !== binder.group) continue;
                                var value = binder.scope.$eval((binder.interpolate) ? $interpolate(binder.value) : binder.value);
                                switch (binder.attr) {
                                    case 'if':
                                        if (toBoolean(value)) {
                                            binder.transclude(binder.scope.$new(), function (clone) {
                                                var parent = binder.element.parent();
                                                var afterNode = binder.element && binder.element[binder.element.length - 1];
                                                var parentNode = parent && parent[0] || afterNode && afterNode.parentNode;
                                                var afterNextSibling = (afterNode && afterNode.nextSibling) || null;
                                                angular.forEach(clone, function (node) {
                                                    parentNode.insertBefore(node, afterNextSibling);
                                                });
                                            });
                                        }
                                        break;
                                    case 'hide':
                                    case 'show':
                                        showHideBinder(binder.element, binder.attr, value);
                                        break;
                                    case 'class':
                                        classBinder(binder.element, value);
                                        break;
                                    case 'text':
                                        binder.element.text(value);
                                        break;
                                    case 'html':
                                        binder.element.html(value);
                                        break;
                                    case 'style':
                                        binder.element.css(value);
                                        break;
                                    case 'src':
                                        binder.element.attr(binder.attr, value);
                                        if (msie) binder.element.prop('src', value);
                                        break;
                                    case 'attr':
                                        angular.forEach(binder.attrs, function (attrValue, attrKey) {
                                            var newAttr, newValue;
                                            if (attrKey.match(/^boAttr./) && binder.attrs[attrKey]) {
                                                newAttr = attrKey.replace(/^boAttr/, '').replace(/([a-z])([A-Z])/g, '$1-$2').toLowerCase();
                                                newValue = binder.scope.$eval(binder.attrs[attrKey]);
                                                binder.element.attr(newAttr, newValue);
                                            }
                                        });
                                        break;
                                    case 'href':
                                    case 'alt':
                                    case 'title':
                                    case 'id':
                                    case 'value':
                                        binder.element.attr(binder.attr, value);
                                        break;
                                }
                            }
                            this.ran = true;
                            this.binders = [];
                        }
                    };

                    return ctrl;
                }],

                link: function (scope, elm, attrs, bindonceController) {
                    var value = (attrs.bindonce) ? scope.$eval(attrs.bindonce) : true;
                    if (value !== undefined) {
                        bindonceController.runBinders();
                    }
                    else {
                        bindonceController.setupWatcher(attrs.bindonce);
                        elm.bind("$destroy", bindonceController.removeWatcher);
                    }
                }
            };
            return bindonceDirective;
        });
        angular.forEach(
            [
                { directiveName: 'boShow', attribute: 'show' },
                { directiveName: 'boIf', attribute: 'if', transclude: 'element', terminal: true, priority: 1000 },
                { directiveName: 'boHide', attribute: 'hide' },
                { directiveName: 'boClass', attribute: 'class' },
                { directiveName: 'boText', attribute: 'text' },
                { directiveName: 'boHtml', attribute: 'html' },
                { directiveName: 'boSrcI', attribute: 'src', interpolate: true },
                { directiveName: 'boSrc', attribute: 'src' },
                { directiveName: 'boHrefI', attribute: 'href', interpolate: true },
                { directiveName: 'boHref', attribute: 'href' },
                { directiveName: 'boAlt', attribute: 'alt' },
                { directiveName: 'boTitle', attribute: 'title' },
                { directiveName: 'boId', attribute: 'id' },
                { directiveName: 'boStyle', attribute: 'style' },
                { directiveName: 'boValue', attribute: 'value' },
                { directiveName: 'boAttr', attribute: 'attr' }
            ],
            function (boDirective) {
                var childPriority = 200;
                return angular.module('pasvaz.bindonce').directive(boDirective.directiveName, function () {
                    var bindonceDirective =
                    {
                        priority: boDirective.priority || childPriority,
                        transclude: boDirective.transclude || false,
                        terminal: boDirective.terminal || false,
                        require: '^bindonce',
                        compile: function (tElement, tAttrs, transclude) {
                            return function (scope, elm, attrs, bindonceController) {
                                var name = attrs.boParent;
                                if (name && bindonceController.group !== name) {
                                    var element = bindonceController.element.parent();
                                    bindonceController = undefined;
                                    var parentValue;

                                    while (element[0].nodeType !== 9 && element.length) {
                                        if ((parentValue = element.data('$bindonceController'))
                                            && parentValue.group === name) {
                                            bindonceController = parentValue;
                                            break;
                                        }
                                        element = element.parent();
                                    }
                                    if (!bindonceController) {
                                        throw new Error("No bindonce controller: " + name);
                                    }
                                }

                                bindonceController.addBinder(
                                    {
                                        element: elm,
                                        attr: boDirective.attribute,
                                        attrs: attrs,
                                        value: attrs[boDirective.directiveName],
                                        interpolate: boDirective.interpolate,
                                        group: name,
                                        transclude: transclude,
                                        scope: scope
                                    });
                            };
                        }
                    };

                    return bindonceDirective;
                });
            });
    })(angular);

    (function (angular) {
        var uiWindow = angular.module('ui.window', ['ghCommon']);

        uiWindow.directive('uiWindow', ['$compile', '$log', function ($compile, $log) {
            var windowType = {
                single: 'single',
                multiple: 'multiple'
            }
            var zIndex = 1000;
            return {
                restrict: 'A',
                scope: true,
                replace: true,
                priority: 1000,
                controller: ['$scope', '$element', '$attrs', function ($scope, $element, $attrs) {
                    var self = this;
                    var uiWidth = (angular.isNumber($attrs.uiWidth) ? $attrs.uiWidth + 'px' : $attrs.uiWidth) || '400px';
                    var uiWindow = $attrs.uiWindow || 'single';
                    var isMultipleWindow = uiWindow == windowType.multiple;
                    increaseZIndex();
                    $scope.winStyle = {
                        'z-index': zIndex
                    };
                    $scope.panelStyle = {
                        width: uiWidth,
                        'z-index': zIndex
                    };
                    $scope.maskStyle = {
                        'z-index': zIndex - 1
                    };
                    $scope.$on('$destroy', function (event) {
                        decreaseZIndex();
                        $element.remove();
                        $scope.$emit('destroy', event);
                    });
                    $scope.model = $scope.model || { };
                    $scope.model.validation = $scope.model.validation || function () {
                        return true
                    };
                    $scope.model.destroy = $scope.model.destroy || function () {
                        $scope.$emit('windowClose');
                        $scope.$destroy();
                    };
                    $scope.$watch($attrs.uiCmp, function (cmp) {
                        if (cmp) {
                            cmp.parameters = cmp.parameters || {};
                            cmp.parameters.model = $scope.model;
                        }
                    });
                    $scope.$watch($attrs.contentStyle, function (style) {
                        $scope.contentStyle = style;
                    });
                    this.switchWindow = function () {
                        if (isMultipleWindow && zIndex > $element.find('.x-' + uiWindow + '-window').css('z-index')) {
                            increaseZIndex();
                            $element.find('.x-' + uiWindow + '-window').css('z-index', zIndex);
                        }
                    }
                }],
                link: function (scope, el, attrs) {
                    var uiWindow = attrs.uiWindow || 'single';
                    var headerElem = el.find('ui-window-header')[0];
                    var windowHeader = !angular.isUndefined(headerElem) ? headerElem.outerHTML : '<ui-window-header ui-title="' + attrs.uiTitle + '">&nbsp;</ui-window-header>';
                    var bottomElem = el.find('ui-window-bottom')[0];
                    var windowBottom;
                    if (!angular.isUndefined(bottomElem)) {
                        windowBottom = bottomElem.outerHTML;
                    } else if (attrs.uiButtons) {
                        windowBottom = '<ui-window-bottom ui-buttons="' + attrs.uiButtons + '">&nbsp;</ui-window-bottom>';
                    }
                    var html = [];
                    html.push('<div>');
                    html.push('<div class="x-' + uiWindow + '-window" ng-mousedown="winCtrl.switchWindow($event)" ');
                    html.push((attrs.moveWindow == 'true' ? 'movable move-by=".x-window-title" move-toggle="true"' : '') + ' ng-style="winStyle">');
                    html.push('<div class="x-window-panel" ng-style="panelStyle">');
                    html.push(windowHeader);
                    html.push('<div class="x-window-content ' + (windowBottom ? '' : ' x-window-bottom') + '" ng-style="contentStyle">');
                    if (scope[attrs.contentHtml]) {
                        html.push('<div>' + scope.$eval(attrs.contentHtml) + '</div>');
                    }
                    html.push('<div rc-component="' + attrs.uiCmp + '"></div>');
                    html.push('</div>');
                    html.push(windowBottom);
                    html.push('</div>');
                    if (uiWindow != windowType.multiple) {
                        html.push('<div class="x-window-fix"></div>');
                        html.push('<div class="x-window-background" ng-style="maskStyle"></div>');
                    }
                    html.push('</div>');
                    el.html($compile(html.join(''))(scope));
                },
                controllerAs: 'winCtrl'
            };

            function increaseZIndex() {
                zIndex++;
            }

            function decreaseZIndex() {
                zIndex--;
            }
        }]);

        uiWindow.directive('uiWindowHeader', ['$compile', function ($compile) {
            return {
                restrict: 'E',
                priority: 100,
                controller: ['$scope', '$element', '$attrs', function ($scope, $element, $attrs) {
                    this.windowClose = function ($event, promise) {
                        angular.isObject(promise) ? promise.then(closeFn) : closeFn();
                        function closeFn() {
                            $scope.$emit('windowClose', $event);
                            $scope.$destroy();
                        }
                    };
                }],
                link: function (scope, el, attrs) {
                    var title = scope.$eval(attrs.uiTitle) || '&nbsp;';
                    var html = [];
                    html.push('<div>');
                    html.push('     <div class="x-window-title">');
                    html.push('           <span>' + title + '</span>');
                    html.push(el.html());
                    html.push('           <button type="button" class="x-window-close" ng-click="headerCtrl.windowClose($event)">&times;</button>');
                    html.push('     </div>');
                    html.push('</div>');
                    el.html($compile(html.join(''))(scope));
                },
                controllerAs: 'headerCtrl'
            };
        }]);

        uiWindow.directive('uiWindowBottom', ['$compile', 'commonService', function ($compile, commonService) {
            return {
                restrict: 'E',
                priority: 100,
                link: function (scope, el, attrs) {
                    var html = [];
                    scope.$watch(attrs.uiButtons, function (buttons) {
                        buttons = buttons || [ ];
                        html.push('<div>');
                        html.push('     <div class="x-window-bottom">');
                        if (el.html().trim() != '' && el.html().trim() != '&nbsp;') {
                            html.push(el.html());
                        } else {
                            var clickPrefix = 'ClickBtn';
                            angular.forEach(buttons, function (btn) {
                                var controller = clickPrefix + (btn.uuid ? btn.uuid : commonService.StringUtils.getUuid());
                                scope[controller] = function (event) {
                                    if (angular.isFunction(btn.clickEvent)) {
                                        if (btn.needVerify) {
                                            var verifyPromise = scope.model.validation();
                                            if (verifyPromise == true) {
                                                handleClickEvent(btn);
                                            } else if (verifyPromise) {
                                                verifyPromise.then(function () {
                                                    handleClickEvent(btn);
                                                });
                                            }
                                        } else {
                                            handleClickEvent(btn);
                                        }
                                    } else if (btn.closeable) {
                                        btn.closeable && scope.$destroy();
                                    }
                                    ;

                                    function handleClickEvent(btn) {
                                        var promise = btn.clickEvent(event, scope.model);
                                        if (promise) {
                                            promise.then(function () {
                                                btn.closeable && scope.$destroy();
                                            })
                                        } else {
                                            btn.closeable && scope.$destroy();
                                        }
                                    }
                                }
                                html.push('<div class="x-button" ng-click="' + controller + '($event)">' + btn.label + '</div>');
                            });
                            if (buttons.length == 0) {
                                html.push('&nbsp;');
                            }
                        }
                        html.push('     </div>');
                        html.push('</div>');
                        el.html($compile(html.join(''))(scope));
                    });
                }
            };
        }]);

        uiWindow.directive("movable", function () {
            return {
                link: function (scope, element, attr) {
                    var monitorMove = function (nValue) {
                        var movable = nValue == true || nValue == 'true';
                        var user_select = movable ? "none" : "inherit",
                            cursor = movable ? "move" : "auto",
                            ele;
                        if (movable) {
                            ele = element.find(attr.moveBy);
                            ele.css("-webkit-user-select", user_select);
                            ele.css("-moz-user-select", user_select);
                            ele.css("-o-user-select", user_select);
                            ele.css("cursor", cursor);
                            ele.on('mousedown',function () {
                                scope.mousedown = true;
                                element.css('transition', 'none');
                                scope.removeWatch = scope.$watch("mouseOffset", moveByMouse);
                            }).on('mouseup', function () {
                                    scope.mousedown = false;
                                    element.css('transition', '200ms');
                                    scope.removeWatch();
                                });
                            angular.element(document).on('mousemove', function (e) {
                                if (attr.moveToggle && scope.mousedown) {
                                    scope.mouseOffset = {top: e.clientY, left: e.clientX};
                                    scope.$digest();
                                } else {
                                    delete scope.mouseOffset;
                                }
                            });
                            angular.element(document).on('mouseleave', function (e) {
                                if (attr.moveToggle && scope.mousedown) {
                                    ele.mouseup();
                                    element.css("left", '20%');
                                    element.css("top", '20%');
                                }
                            });
                        }
                        function moveByMouse(nValue, oValue) {
                            if (nValue && oValue) {
                                var offset = element.offset();
                                element.css("left", offset.left + (nValue.left - oValue.left));
                                element.css("top", offset.top + (nValue.top - oValue.top));
                            }
                        }
                    }
                    if (attr.moveToggle == 'true') {
                        monitorMove(attr.moveToggle)
                    } else {
                        scope.$watch(attr.moveToggle, monitorMove);
                    }
                }
            };
        });

        uiWindow.factory('windowUtils', ['$log', '$compile', '$rootScope', function ($log, $compile, $rootScope) {
            return {
                openWindow: function (option) {
                    var scope = option.scope || $rootScope.$new();
                    if (angular.isFunction(option.windowClose)) {
                        scope.$on('windowClose', function (e, promise) {
                            option.windowClose(e, scope.model, promise);
                        });
                    }
                    if (angular.isFunction(option.destroy)) {
                        scope.$on('destroy', function () {
                            option.destroy(scope.model);
                        });
                    }
                    var directive = [];
                    directive.push('<div ui-window="' + (option.windowType ? option.windowType : '') + '"');
                    if (option.width) {
                        directive.push(' ui-width="' + option.width + '"');
                    }
                    if (option.buttons) {
                        scope.buttons = option.buttons;
                        directive.push(' ui-buttons="buttons"');
                    }
                    directive.push(' move-window="' + option.movable + '"');

                    scope.cmp = option.cmp;
                    scope.contentHtml = option.contentHtml;
                    scope.contentStyle = option.contentStyle;

                    scope.title = option.title;
                    directive.push(' ui-title="title" content-html="contentHtml" ui-cmp="cmp" content-style="contentStyle"> </div>');
                    compileAndAppendBody(directive.join(''), scope);
                },
                alterWindow: function (text, title, callback, movable) {
                    this.openWindow({
                        width: 'auto',
                        title: title || 'Alter',
                        contentHtml: text,
                        movable: movable,
                        destroy: function (event) {
                            angular.isFunction(callback) && callback('Destroy', event);
                        },
                        buttons: [
                            {
                                label: 'Ok',
                                closeable: true
                            }
                        ]
                    });
                },
                confirmWindow: function (text, title, callback, movable) {
                    this.openWindow({
                        width: 'auto',
                        title: title || 'Confirm',
                        contentHtml: text,
                        movable: movable,
                        destroy: function (event) {
                            angular.isFunction(callback) && callback('Destroy', event);
                        },
                        windowClose: function (event) {
                            angular.isFunction(callback) && callback('WindowClose', event);
                        },
                        buttons: [
                            {
                                label: 'OK',
                                closeable: true,
                                clickEvent: function (event) {
                                    angular.isFunction(callback) && callback('OK', event);
                                }
                            },
                            {
                                label: 'Cancel',
                                closeable: true,
                                clickEvent: function (event) {
                                    angular.isFunction(callback) && callback('Cancel', event);
                                }
                            }
                        ]
                    });
                }
            }

            function compileAndAppendBody(directive, scope) {
                var html = $compile(directive)(scope);
                angular.element(document.body).append(html);
            }
        }]);

        /*uiWindow.factory('uiFlow', ['$log', '$compile', '$rootScope', 'windowUtils', function ($log, $compile, $rootScope, windowUtils) {
         // todo add model cache data.
         var flowCache = {
         }
         var currentFlow = {
         target: 'window',
         targetElement: null,
         flowName: '',
         idx: 0
         }


         return {
         startFlow: function (option) {
         var scope = $rootScope.$new();
         option.preLoad = option.preLoad || [];
         angular.forEach(option.preLoad, function (cmp) {
         cmp.preLoad = true;
         scope.cmp = cmp;
         $compile('<div rc-component="cmp"></div>')(scope);
         scope.$destroy();
         });
         scope = $rootScope.$new();
         scope.model = {};





         scope.cmp = option.firstStep;

         option.initModel = option.initModel || angular.noop;
         if (angular.isFunction(option.initModel)) {
         scope.model = option.initModel();
         }
         if (angular.isFunction(option.firstStepRule)) {
         scope.cmp = option.firstStepRule(scope.initModel);
         }
         currentFlow.target = option.targetElement ? 'customTarget' : (option.target || 'window');
         currentFlow.targetElement = option.targetElement;
         if (!currentFlow.targetElement) {
         currentFlow.targetElement = (currentFlow.target == 'window' ? angular.element(document.body) : angular.element(document.body).find(currentFlow.target) );
         }
         display('<div rc-component="cmp"></div>', scope);
         },
         nextFlow: function (option) {

         },
         backFlow: function () {

         },
         cancelFlow: function () {

         },
         completeFlow: function () {

         }
         }

         function buildScope(){

         }

         function buildStep(step, scope){
         scope.model = scope.model || {};
         scope.model.validation = scope.model.validation || function(){ return true};
         scope.model.checkDisplayBackBtn = scope.model.validation || function(){ return true};
         }

         function cacheFlowData(flowName, idx, stepName, stepScope) {
         var stepKey = (flowName || '') + idx + (stepName || '');
         flowCache[stepKey] = (stepScope && stepScope.$new ? stepScope.$new() : stepScope);
         }

         function getFlowData(flowName, idx, stepName) {
         var stepKey = (flowName || '') + idx + (stepName || '');
         return flowCache[stepKey];
         }

         function display(directive, scope) {
         var html = $compile(directive)(scope);
         currentFlow.targetElement && currentFlow.targetElement.append(html);
         }
         }]);*/

        uiWindow.factory('uiFlow', ['$log', '$compile', '$rootScope', 'windowUtils', function ($log, $compile, $rootScope, windowUtils) {
            // todo add model cache data.
            var flowCache = {
            }
            var currentFlow = {
                target: 'window',
                targetElement: null,
                flowName: '',
                idx: 0
            }


            return {
                initFlow: function (option) {
                    var scope = $rootScope.$new();
                    var self = this;
                    option.preLoad = option.preLoad || [];
                    angular.forEach(option.preLoad, function (cmp) {
                        cmp.preLoad = true;
                        scope.cmp = cmp;
                        $compile('<div rc-component="cmp"></div>')(scope);
                        scope.$destroy();
                    });
                    scope = $rootScope.$new();
                    scope.model = {};
                    var firstSteps = option.steps.firstStep;
                    option.initModel = option.initModel || angular.noop;
                    if (angular.isFunction(option.initModel)) {
                        scope.model = option.initModel();
                    }
                    /*if (angular.isFunction(option.firstStepRule)) {
                     scope.cmp = option.firstStepRule(scope.initModel);
                     }*/
                    scope.currentFlow = angular.copy(currentFlow);
                    scope.currentFlow.target = option.targetElement ? 'customTarget' : (option.target || 'window');
                    scope.currentFlow.targetElement = option.targetElement;
                    if (!scope.currentFlow.targetElement) {
                        scope.currentFlow.targetElement = (scope.currentFlow.target == 'window' ? angular.element(document.body) : angular.element(document.body).find(scope.currentFlow.target) );
                    }
                    scope.currentFlow.step = firstSteps;
                    if (scope.currentFlow.target == 'window') {
                        firstSteps.scope = scope;
                        windowUtils.openWindow(firstSteps);
                    } else {
                        display('<div rc-component="cmp"></div>', scope);
                    }
                    scope.$on('nextFlow', function (event, option, model) {
                        scope.model = model;
                        self.nextFlow(option, scope);
                    });
                },
                nextFlow: function (step, currentScope) {
                    // cache current scope
                    flowCache[currentScope.currentFlow.idx] = {
//                        scope: currentScope,
//                        step: step,
                        currentFlow: currentScope.currentFlow,
                        model: currentScope.model
                    };
                    var self = this;
                    //get cache next scope
                    var scope = step.scope || $rootScope.$new();
                    scope.currentFlow = currentScope.currentFlow;
                    scope.currentFlow.idx++;
                    currentScope.$destroy();
                    if (scope.currentFlow.target == 'window') {
                        step.scope = scope;
                        windowUtils.openWindow(step);
                    } else {
                        display('<div rc-component="cmp"></div>', scope);
                    }
                    scope.$on('nextFlow', function (event, option) {
                        self.nextFlow(option, scope);
                    });
                    scope.$on('backFlow', function () {
                        self.backFlow(scope);
                    })
                },
                backFlow: function (currentScope) {
                    currentScope.currentFlow.idx--;
//                    var scope = flowCache[currentScope.currentFlow.idx].scope;
                    /*var step = flowCache[currentScope.currentFlow.idx].step;
                     var scope = step.scope ||  $rootScope.$new();
                     scope.model = flowCache[currentScope.currentFlow.idx].model;*/
//                    var step = flowCache[currentScope.currentFlow.idx].step;
                    var self = this;
                    var scope = $rootScope.$new();
                    scope.model = flowCache[currentScope.currentFlow.idx].model;
                    scope.currentFlow = flowCache[currentScope.currentFlow.idx].currentFlow
                    currentScope.$destroy();
                    if (scope.currentFlow.target == 'window') {
                        scope.currentFlow.step.scope = scope;
                        windowUtils.openWindow(scope.currentFlow.step);
                    } else {
                        display('<div rc-component="cmp"></div>', scope);
                    }
                    scope.$on('nextFlow', function (event, option) {
                        self.nextFlow(option, scope);
                    });
                    scope.$on('backFlow', function () {
                        self.backFlow(scope);
                    })
                },
                cancelFlow: function () {

                },
                completeFlow: function () {

                }
            }

            function buildScope() {

            }

            function buildStep(step, scope) {
                scope.model = scope.model || {};
                scope.model.validation = scope.model.validation || function () {
                    return true
                };
                scope.model.checkDisplayBackBtn = scope.model.validation || function () {
                    return true
                };
            }

            function cacheFlowData(flowName, idx, stepName, stepScope) {
                var stepKey = (flowName || '') + idx + (stepName || '');
                flowCache[stepKey] = (stepScope && stepScope.$new ? stepScope.$new() : stepScope);
            }

            function getFlowData(flowName, idx, stepName) {
                var stepKey = (flowName || '') + idx + (stepName || '');
                return flowCache[stepKey];
            }

            function display(directive, scope) {
                var html = $compile(directive)(scope);
                scope.currentFlow.targetElement && scope.currentFlow.targetElement.append(html);
            }
        }]);

    })(angular);
});