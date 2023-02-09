<%-- 
    Document   : Menu
    Created on : Feb 7, 2023, 3:11:59 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow-sm py-3 py-lg-0 px-3 px-lg-0">
        <a href="index.html" class="navbar-brand ms-lg-5">
            <h1 class="display-5 m-0 text-primary">Safe<span class="text-secondary">Cam</span></h1>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-0">
                <a href="Home" class="nav-item nav-link">Home</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Camera</a>
                    <div class="dropdown-menu m-0">
                        <a href="CameraInfo?camid=1" class="dropdown-item">Cam 1</a>
                        <a href="CameraInfo?camid=2" class="dropdown-item">Cam 2</a>
                        <a href="CameraInfo?camid=3" class="dropdown-item">Cam 3</a>
                        <a href="CameraInfo?camid=4" class="dropdown-item">Cam 4</a>
                        <a href="CameraInfo?camid=5" class="dropdown-item">Cam 5</a>
                    </div>
                </div>
                <a href="service.html" class="nav-item nav-link">History</a>
                <a href="Setting" class="nav-item nav-link">Settings</a>
                <a href="Help" class="nav-item nav-link">Help</a>
                <a href="" class="nav-item nav-link nav-contact bg-secondary text-white px-5 ms-lg-5"><i class=""></i>Login</a>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->
    
