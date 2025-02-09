
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">Home</a>
        <a class="navbar-brand" href="/ads">Adlister</a>

            <% if (session != null && session.getAttribute("user") != null) { %>
        <ul class="nav navbar-nav navbar-right">
            <li class="nav-item">
                <a class="nav-link" href="/profile">Welcome, ${sessionScope.user.username}!</a>
            </li>
        </ul>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
            Options
        </button>
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Options</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <a class="dropdown-item" href="/ads/create">Create Ad</a>
                        <a class="dropdown-item" href="/ads/edit">Edit Ad</a>
                        <a class="dropdown-item" href="/ads/delete">Delete Ad</a>
                        <a class="dropdown-item" href="/ads/accountDelete">Delete Account</a>
                        <a class="dropdown-item" href="/ads">View Ads</a>
                        <a class="dropdown-item" href="/user/editAccount">Edit Account</a>
                        <a class="dropdown-item" href="/logout">Logout</a>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
<%--        <div class="collapse navbar-collapse" id="navbarNavDropdown">--%>
<%--            <div class="nav-item dropdown">--%>
<%--                <a class="dropdown-item" href="/ads/create">Create Ad</a>--%>
<%--                <a class="dropdown-item" href="/ads">View Ads</a>--%>
<%--                <a class="dropdown-item" href="/logout">Logout</a>--%>
<%--            </div>--%>
            </ul>
            <% } else { %>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/login">Login</a>
                </li>
            </ul>
                <ul class="navbar-nav">
                    <li class="nav-item">
                    <a class="nav-link" href="/register">Register</a>
                </li>
            </ul>
            <% } %>
        </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</nav>