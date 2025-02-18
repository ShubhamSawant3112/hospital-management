<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>

<style>
    .navbar {
         background: linear-gradient(45deg, #007bff, #0056b3);
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        font-family: 'Roboto', sans-serif;
    }

    .navbar-brand i {
        font-size: 1.5rem;
        margin-right: 0.5rem;
    }

    .navbar-nav .nav-link {
        color: #fff !important;
        padding: 10px 15px;
        transition: background 0.3s ease-in-out, transform 0.2s;
    }

    .navbar-nav .nav-link:hover {
        background-color: rgba(255, 255, 255, 0.2);
        border-radius: 5px;
        transform: scale(1.05);
    }

    .dropdown-menu {
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        overflow: hidden;
    }

    .dropdown-menu .dropdown-item {
        padding: 10px 20px;
        transition: background-color 0.3s ease;
    }

    .dropdown-menu .dropdown-item:hover {
        background-color: #28a745;
        color: #fff;
    }

    .navbar-toggler-icon {
        color: #fff;
    }

    .navbar-toggler {
        border: none;
    }

    .btn-success.dropdown-toggle {
        color: #fff;
        background-color: #28a745;
        border-color: transparent;
        padding: 10px 15px;
        transition: background-color 0.3s ease-in-out;
    }

    .btn-success.dropdown-toggle:hover {
        background-color: #218838;
    }

    .navbar-brand {
        font-size: 1.5rem;
        font-weight: bold;
        letter-spacing: 1px;
    }
</style>

<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp"><i class="fas fa-clinic-medical"></i> MEDI PLUS</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="search.jsp">Search</a></li>
            </ul>

            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <c:if test="${empty userObj }">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="admin_login.jsp"><i
                                class="fas fa-sign-in-alt"></i> ADMIN</a></li>
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="doctor_login.jsp"><i
                                class="fas fa-user-md"></i> DOCTOR</a></li>
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="user_appointment.jsp"><i
                                class="fas fa-calendar-alt"></i> APPOINTMENT</a></li>
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="user_login.jsp"><i
                                class="fas fa-user"></i> USER</a></li>
                </c:if>
            </ul>

            <c:if test="${not empty userObj }">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="user_appointment.jsp"><i
                                class="fas fa-calendar-check"></i> APPOINTMENT</a></li>
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="view_appointment.jsp"><i
                                class="fas fa-eye"></i> VIEW APPOINTMENT</a></li>

                    <div class="dropdown">
                        <button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenuButton1"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fa-solid fa-circle-user"></i> ${userObj.fullName }
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                            <li><a class="dropdown-item" href="change_password.jsp">Change Password</a></li>
                            <li><a class="dropdown-item" href="userLogout">Logout</a></li>
                        </ul>
                    </div>
                </ul>
            </c:if>
        </div>
    </div>
</nav>
