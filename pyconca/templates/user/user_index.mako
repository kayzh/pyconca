<%inherit file="pyconca:templates/base.mako"/>

<%block name="content">

<div class="row-fluid">
    <div class="span9">
        <br>
        <h1>users</h1>
        <br>
    </div>
    <div class="span3">
        <br>
        <a class="btn btn-primary pull-right" href='${create_url}'>New User</a>
    </div>
    <hr>
</div>

<div class="row-fluid">
    <div class="span12">
        <table class="table table-striped table-bordered">
            <tr>
                <th>Name</th>
                <th>Username</th>
                <th>Email</th>
            </tr>

            % for user in user_list:
                <div>
                    <tr>
                        <td>
                            <a href=${user.get_url}>
                                <span> ${user.first_name} </span>
                                <span> ${user.last_name} </span>
                            </a>
                        </td>
                        <td>
                            <span> ${user.username} </span>
                        </td>
                        <td>
                            <span> ${user.email} </span>
                        </td>
                    </tr>
                </div>
            % endfor
        </table>
    </div>
</div>

</%block>
