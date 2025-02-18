<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@include file="component/allcss.jsp"%>
<style>
    .paint-card {
        border: none;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        border-radius: 10px;
        overflow: hidden;
        margin-bottom: 20px;
    }

    .paint-card:hover {
        transform: scale(1.05);
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
    }

    .paint-card img {
        width: 100%;
        height: auto;
        border-bottom: 2px solid #28a745;
    }

    .card-body {
        padding: 20px;
        background-color: #f8f9fa;
    }

    .fs-2 {
        font-size: 2rem;
        color: #28a745;
        font-weight: bold;
        margin-bottom: 30px;
    }

    .fw-bold {
        color: #333;
    }

    .fs-5 {
        font-size: 1.25rem;
        margin-top: 15px;
    }

    .fs-7 {
        font-size: 0.9rem;
        color: #6c757d;
    }

    /* Responsive design */
    @media (max-width: 767.98px) {
        .col-md-3 {
            flex: 0 0 100%;
            max-width: 100%;
            margin-bottom: 20px;
        }
    }
</style>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

<!-- Add Bootstrap, FontAwesome, and Custom CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	
	

	<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/hos.jpg" class="d-block w-100" alt="..." height="500px">
        </div>
        <div class="carousel-item">
            <img src="img/hos2.jpg" class="d-block w-100" alt="..." height="500px" >
        </div>
        <div class="carousel-item">
            <img src="img/hos3.jpg" class="d-block w-100" alt="..." height="500px">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<div class="container py-5">
    <h2 class="text-center mb-5 display-4 text-primary">Key Features of Our Hospital</h2>
    <div class="row justify-content-center">
        <!-- Card Columns -->
        <div class="col-md-8">
            <div class="row g-4">
                <!-- Card 1 -->
                <div class="col-md-6">
                    <div class="card h-100 shadow-lg border-0">
                        <div class="card-body text-center">
                            <div class="mb-3">
                                <i class="fas fa-shield-alt fa-3x text-primary"></i>
                            </div>
                            <h5 class="card-title fw-bold">100% Safety</h5>
                            <p class="card-text text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, inventore.</p>
                        </div>
                    </div>
                </div>
                <!-- Card 2 -->
                <div class="col-md-6">
                    <div class="card h-100 shadow-lg border-0">
                        <div class="card-body text-center">
                            <div class="mb-3">
                                <i class="fas fa-leaf fa-3x text-success"></i>
                            </div>
                            <h5 class="card-title fw-bold">Clean Environment</h5>
                            <p class="card-text text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, inventore.</p>
                        </div>
                    </div>
                </div>
                <!-- Card 3 -->
                <div class="col-md-6">
                    <div class="card h-100 shadow-lg border-0">
                        <div class="card-body text-center">
                            <div class="mb-3">
                                <i class="fas fa-user-md fa-3x text-info"></i>
                            </div>
                            <h5 class="card-title fw-bold">Friendly Doctors</h5>
                            <p class="card-text text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, inventore.</p>
                        </div>
                    </div>
                </div>
                <!-- Card 4 -->
                <div class="col-md-6">
                    <div class="card h-100 shadow-lg border-0">
                        <div class="card-body text-center">
                            <div class="mb-3">
                                <i class="fas fa-flask fa-3x text-warning"></i>
                            </div>
                            <h5 class="card-title fw-bold">Medical Research</h5>
                            <p class="card-text text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, inventore.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




		<!--  <div class="col-md-4">
				<img alt="" src="img/doct.jpg">
			</div>-->	

		</div>
	</div>

	<hr>

	<div class="container p-2">
    <p class="text-center fs-2">Our Team</p>

    <div class="row">
        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="img/doc1.jpg" alt="Samuani Simi">
                    <p class="fw-bold fs-5">Dr.Malvika Nair</p>
                    <p class="fs-7">(CEO & Chairman)</p>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="img/doc2.jpg" alt="Dr. Siva Kumar">
                    <p class="fw-bold fs-5">Dr. Aakash Shah</p>
                    <p class="fs-7">(Chief Doctor)</p>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="img/doc3.jpg" alt="Dr. Niuise Paule">
                    <p class="fw-bold fs-5">Dr. Paresh Jain</p>
                    <p class="fs-7">(Chief Doctor)</p>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="img/doc4.jpg" alt="Dr. Mathue Samuel">
                    <p class="fw-bold fs-5">Dr. Tara Sharma</p>
                    <p class="fs-7">(Chief Doctor)</p>
                </div>
            </div>
        </div>
    </div>
</div>


<%@include file="component/footer.jsp" %>

</body>
</html>