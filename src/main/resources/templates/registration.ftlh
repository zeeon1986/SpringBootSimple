<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <h5>Registration page</h5>
    ${message!" " }
    <@l.login "/registration" true/>
</@c.page>