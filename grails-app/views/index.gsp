<%@ page import="userlist.UserEntry" %> 
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
    <title>Welcome to Grails</title>
</head>
<body>
    <content tag="nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Application Status <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Environment: ${grails.util.Environment.current.name}</a></li>
                <li><a href="#">App profile: ${grailsApplication.config.grails?.profile}</a></li>
                <li><a href="#">App version:
                    <g:meta name="info.app.version"/></a>
                </li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Grails version:
                    <g:meta name="info.app.grailsVersion"/></a>
                </li>
                <li><a href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>
                <li><a href="#">JVM version: ${System.getProperty('java.version')}</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Artefacts <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Controllers: ${grailsApplication.controllerClasses.size()}</a></li>
                <li><a href="#">Domains: ${grailsApplication.domainClasses.size()}</a></li>
                <li><a href="#">Services: ${grailsApplication.serviceClasses.size()}</a></li>
                <li><a href="#">Tag Libraries: ${grailsApplication.tagLibClasses.size()}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Installed Plugins <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                    <li><a href="#">${plugin.name} - ${plugin.version}</a></li>
                </g:each>
            </ul>
        </li>
    </content>

    <div id="content" role="main">
        <section class="row colset-2-its">          
            <h1>Тестовое задание</h1>
            <ul class="list-inline">
                <li>        
                    <g:form url="/da/eto/ochen/josskaya/ssilka" method="GET">
                        <input class="delete" type="submit" value="Get" />
                    </g:form>
                </li>
                <li>        
                    <g:form url="/da/eto/ochen/josskaya/ssilka" method="PUT">
                        <input class="delete" type="submit" value="Put" />
                    </g:form>
                </li>
                <li>
                    <g:form url="/da/eto/ochen/josskaya/ssilka" method="POST">
                        <input class="delete" type="submit" value="Post" />
                    </g:form>
                </li>
                <li>                    
                    <g:form url="/da/eto/ochen/josskaya/ssilka" method="DELETE">
                        <input class="delete" type="submit" value="Delete" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Очистить таблицу?')}');" />
                    </g:form>
                </li>
            </ul>
            <br>
            <table border="1">
                <thead>
                    <tr>
                        <td>User Ip</td>
                        <td>Entry Date</td>
                        <td>Method</td>
                    </tr>
                </thead>
                <g:each in="${UserEntry.list()}" var="entry">           
                    <tr>
                        <td>${entry.ipAddress}</td>
                        <td>${entry.entryDate}</td>
                        <td>${entry.method}</td>
                    </tr>
                </g:each>
            </table>    
        </section>
    </div>

</body>
</html>
