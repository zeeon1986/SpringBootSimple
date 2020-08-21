<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <h5>Login page</h5>
    ${message!" " }
    <@l.login "/login" false/>
</@c.page>