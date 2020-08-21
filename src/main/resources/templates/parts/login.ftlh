<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group">
            <label for="InputUsername">User Name :</label>
            <input type="text"  class="form-control" id="InputUsername" name="username" placeholder="Enter username"/>
        </div>
        <div class="form-group">
            <label for="InputPassword">Password</label>
            <input type="password" class="form-control" id="InputPassword" name="password" placeholder="Enter password"/>
        </div>
        <#if isRegisterForm>
        <div class="form-group">
            <label for="InputEmail">Email</label>
            <input type="email" class="form-control" id="InputEmail" name="email" placeholder="Enter email"/>
        </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-primary"><#if isRegisterForm>Create<#else>Sign In</#if></button>
        <#if !isRegisterForm><a class="btn btn-outline-primary" href="/registration">Add new user</a></#if>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary" type="submit">Sign out</button>
    </form>
</#macro>